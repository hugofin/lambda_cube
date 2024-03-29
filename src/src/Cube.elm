module Cube exposing (view)

import Color
import Context exposing (Context)
import Html.Attributes exposing (height, style, width)
import Html.WithContext exposing (Html, html, withContext)
import Math.Matrix4 as Mat4 exposing (Mat4)
import Math.Vector3 as Vec3 exposing (Vec3, vec3)
import String exposing (slice)
import System exposing (System(..))
import Utils exposing (px)
import WebGL exposing (Mesh, Shader)


type alias Html msg =
    Html.WithContext.Html Context msg


type alias Uniforms =
    { rotation : Mat4
    , perspective : Mat4
    , camera : Mat4
    , shade : Float
    }


view : { theta : Float, eye : Vec3, target : Vec3, system : System, reducedMotion : Bool } -> Html msg
view model =
    withContext
        (\context ->
            let
                sides =
                    WebGL.entity
                        vertexShader
                        fragmentShader
                        linesMesh
                        (uniforms model)

                corners =
                    WebGL.entity
                        vertexShader
                        fragmentShader
                        (pointsMesh context)
                        (uniforms model)
            in
            html
                (WebGL.toHtml
                    [ width 2400, height 1800, style "display" "block", style "width" (px 1200), style "height" (px 900) ]
                    [ sides
                    , corners
                    ]
                )
        )


uniforms : { theta : Float, eye : Vec3, target : Vec3, system : System, reducedMotion : Bool } -> Uniforms
uniforms { theta, eye, target, system, reducedMotion } =
    let
        scale =
            case system of
                Home ->
                    0.05

                None ->
                    0.0

                Simple ->
                    0.01

                P ->
                    0.02

                Two ->
                    0.01

                W_ ->
                    0.02

                W ->
                    0.02

                PW_ ->
                    0.01

                P2 ->
                    0.01

                C ->
                    0.01
    in
    { rotation =
        Mat4.makeRotate
            ((if reducedMotion then
                0

              else
                1
             )
                * scale
                * sin theta
            )
            (vec3 0.5 0.5 0.5)
    , perspective = Mat4.makePerspective 50 1.3333333333333333 0.01 20
    , camera = Mat4.makeLookAt eye target (vec3 0 1 0)
    , shade = 1
    }



-- Mesh


type alias Vertex =
    { color : Vec3
    , position : Vec3
    }


linesMesh : Mesh Vertex
linesMesh =
    -- coordinates are [ left, up, towards ]
    let
        one =
            vec3 0 0 1

        two =
            vec3 1 0 1

        three =
            vec3 0 0 0

        four =
            vec3 1 0 0

        five =
            vec3 0 1 1

        six =
            vec3 1 1 1

        seven =
            vec3 0 1 0

        eight =
            vec3 1 1 0
    in
    [ line (vec3 128 128 128) one two -- A
    , line (vec3 128 128 128) two four -- B
    , line (vec3 128 128 128) one three -- C
    , line (vec3 128 128 128) three four -- D
    , line (vec3 128 128 128) one five -- E
    , line (vec3 128 128 128) two six -- F
    , line (vec3 128 128 128) three seven -- G
    , line (vec3 128 128 128) four eight -- H
    , line (vec3 128 128 128) five six -- I
    , line (vec3 128 128 128) six eight -- J
    , line (vec3 128 128 128) five seven -- K
    , line (vec3 128 128 128) seven eight -- L
    ]
        |> WebGL.lines


pointsMesh : Context -> Mesh Vertex
pointsMesh context =
    -- coordinates are [ left, up, towards ]
    let
        zero =
            vec3 -2 0.5 0.5

        one =
            vec3 0 0 1

        two =
            vec3 1 0 1

        three =
            vec3 0 0 0

        four =
            vec3 1 0 0

        five =
            vec3 0 1 1

        six =
            vec3 1 1 1

        seven =
            vec3 0 1 0

        eight =
            vec3 1 1 0
    in
    [ point (hex2vec (Color.colorForTheme context.theme Color.leaf)) zero
    , point (hex2vec (Color.colorForTheme context.theme Color.mauve)) one
    , point (hex2vec (Color.colorForTheme context.theme Color.red)) two
    , point (hex2vec (Color.colorForTheme context.theme Color.sky)) three
    , point (hex2vec (Color.colorForTheme context.theme Color.purple)) four
    , point (hex2vec (Color.colorForTheme context.theme Color.green)) five
    , point (hex2vec (Color.colorForTheme context.theme Color.yellow)) six
    , point (hex2vec (Color.colorForTheme context.theme Color.teal)) seven
    , point (hex2vec (Color.colorForTheme context.theme Color.steel)) eight
    ]
        |> WebGL.points



-- Shaders


line : Vec3 -> Vec3 -> Vec3 -> ( Vertex, Vertex )
line colour a b =
    let
        vertex position =
            Vertex (Vec3.scale (1 / 255) colour) position
    in
    ( vertex a, vertex b )


point : Vec3 -> Vec3 -> Vertex
point colour a =
    let
        vertex position =
            Vertex (Vec3.scale (1 / 255) colour) position
    in
    vertex a


vertexShader : Shader Vertex Uniforms { vcolor : Vec3 }
vertexShader =
    [glsl|

        attribute vec3 position ;
        attribute vec3 color    ;
        uniform mat4 perspective;
        uniform mat4 camera     ;
        uniform mat4 rotation   ;
        varying vec3 vcolor     ;

        void main () {
            gl_Position = perspective *  camera * rotation * vec4(position, 1.0);
            gl_PointSize = 20.0;
            vcolor = color;
        }

    |]


fragmentShader : Shader {} Uniforms { vcolor : Vec3 }
fragmentShader =
    [glsl|

        precision mediump float;
        uniform float shade;
        varying vec3 vcolor;
        void main () {
            gl_FragColor = shade * vec4(vcolor, 1.0);
        }

    |]


hex2vec : String -> Vec3
hex2vec input_string =
    let
        r =
            toFloat (string2num (slice 1 3 input_string))

        g =
            toFloat (string2num (slice 3 5 input_string))

        b =
            toFloat (string2num (slice 5 7 input_string))
    in
    vec3 r g b


string2num : String -> Int
string2num string_input =
    case String.toList string_input of
        [ a, b ] ->
            (16 * char2num a) + char2num b

        _ ->
            0


char2num : Char -> Int
char2num a =
    case a of
        '1' ->
            1

        '2' ->
            2

        '3' ->
            3

        '4' ->
            4

        '5' ->
            5

        '6' ->
            6

        '7' ->
            7

        '8' ->
            8

        '9' ->
            9

        'a' ->
            10

        'b' ->
            11

        'c' ->
            12

        'd' ->
            13

        'e' ->
            14

        'f' ->
            15

        _ ->
            0
