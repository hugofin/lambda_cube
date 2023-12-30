module Cube exposing (view)

import Math.Matrix4 as Mat4 exposing (Mat4)
import Math.Vector3 as Vec3 exposing (Vec3, vec3)
import WebGL exposing (Mesh, Shader)
import Html exposing (Html)
import Html.Attributes exposing (height, style, width)

type alias Uniforms =
    { rotation : Mat4
    , perspective : Mat4
    , camera : Mat4
    , shade : Float
    }

view : { theta : Float, eye : Vec3, target : Vec3 } -> Html msg

view model = WebGL.toHtml
                        [ width 2000, height 2000, style "display" "block", style "width" "1000px", style "height" "1000px" ]
                        [ WebGL.entity
                            vertexShader
                            fragmentShader
                            linesMesh
                            (uniforms model)
                        , WebGL.entity
                            vertexShader
                            fragmentShader
                            pointsMesh
                            (uniforms model)
                        ]


uniforms :  { theta: Float, eye : Vec3, target : Vec3}  -> Uniforms
uniforms { theta, eye, target } =
    { rotation = Mat4.makeRotate (0 * sin theta) (vec3 1 1 1)
    , perspective = Mat4.makePerspective 45 1 0.01 10
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


pointsMesh : Mesh Vertex
pointsMesh =
    -- coordinates are [ left, up, towards ]
    let
        zero =
            vec3 4 4 4

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
    [ point (vec3 197 232 183) zero
    , point (vec3 238 238 238) one
    , point (vec3 255 48 45) two
    , point (vec3 116 192 255) three
    , point (vec3 198 108 199) four
    , point (vec3 107 255 86) five
    , point (vec3 255 241 46) six
    , point (vec3 0 225 171) seven
    , point (vec3 80 80 80) eight
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
            gl_PointSize = 15.0;
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



