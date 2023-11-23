module Home exposing (main)

{-
   Bored? Rotate a cube in your mind :3

    7 ----- L ----- 8            
    | K             | J
    |   5 ----- I ----- 6
    G   |           |   |
    |   |           H   |
    |   E           |   F
    3 --|-- D ----- 4   |
      C |             B |
        1 ----- A ----- 2
-}

import Browser
import Browser.Events exposing (onAnimationFrameDelta)
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (height, style, width)
import Json.Decode exposing (Value)
import Math.Matrix4 as Mat4 exposing (Mat4)
import Math.Vector3 as Vec3 exposing (Vec3, vec3)
import WebGL exposing (Mesh, Shader)
import Html.Events exposing (onClick)


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }

init : Flags -> (Model, Cmd Msg )
init _ = ( {theta = 0, eye = (vec3 -0.3  1.6 3 ), target  = (vec3 0.5 0.35 0.5)} , Cmd.none )

subscriptions : a -> Sub Msg
subscriptions _ = onAnimationFrameDelta Tick

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = case msg of 
    Tick dt -> ( { model | theta = model.theta + dt / 5000}, Cmd.none )
    SystemClicked Home   -> ( { model | eye = (vec3 -0.3 1.6 3 ), target  = (vec3 0.5 0.35 0.5)}, Cmd.none )
    SystemClicked Simple -> ( { model | eye = (vec3 -0.2 0.15 1.3 ), target  = (vec3 0 0 1 )}, Cmd.none )
    SystemClicked P      -> ( { model | eye = (vec3 0.8 0.15 1.3 ), target  = (vec3 1 0 1)}, Cmd.none )
    SystemClicked Two    -> ( { model | eye = (vec3 -0.2 1.15 1.3 ), target  = (vec3 0 1 1)}, Cmd.none )
    SystemClicked W_     -> ( { model | eye = (vec3 -0.2 0.15 0.3 ), target  = (vec3 0 0 0)}, Cmd.none )
    SystemClicked W      -> ( { model | eye = (vec3 -0.2 1.15 0.3 ), target  = (vec3 0 1 0)}, Cmd.none )
    SystemClicked PW_    -> ( { model | eye = (vec3 0.8 0.15 0.3 ), target  = (vec3 1 0 0)}, Cmd.none )
    SystemClicked P2     -> ( { model | eye = (vec3 0.8 1.15 1.3 ), target  = (vec3 1 1 1)}, Cmd.none )
    SystemClicked C      -> ( { model | eye = (vec3 0.8 1.15 0.3 ), target  = (vec3 1 1 0)}, Cmd.none )
    
type alias Model = 
    { theta   : Float
    , eye     : Vec3
    , target  : Vec3}

type Msg = Tick Float | SystemClicked System

type System = 
    Home 
    | Simple
    | P
    | Two
    | W_
    | W
    | PW_
    | P2
    | C

type alias Flags = Value

view : Model -> Html Msg
view model =
    div
        [ style "font-family" "TASA Orbiter Deck", style "display" "flex", style "flex-direction" "column" ]
        [ div [ style "margin" "50px", style "font-size" "50px", style "align-self" "center" ] [ text "Barendregt's Lambda Cube" ]
        , div [ style "display" "flex", style "flex-direction" "row", style "column-gap" "200px" ]
            [ div [ style "display" "flex", style "flex-direction" "column", style "row-gap" "10px" ]
                [ button [ onClick (SystemClicked Home  ), style "height" "55px", style "width" "150px", style "background-color" "#3c3c3c", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "home"   ]
                , button [ onClick (SystemClicked Simple), style "height" "55px", style "width" "150px", style "background-color" "#e0e0e0", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "λ→"  ]
                , button [ onClick (SystemClicked P     ), style "height" "55px", style "width" "150px", style "background-color" "#ff302d", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "P"   ]
                , button [ onClick (SystemClicked Two   ), style "height" "55px", style "width" "150px", style "background-color" "#6bff56", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "2"   ]
                , button [ onClick (SystemClicked W_    ), style "height" "55px", style "width" "150px", style "background-color" "#74c0ff", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "ω_"  ]
                , button [ onClick (SystemClicked W     ), style "height" "55px", style "width" "150px", style "background-color" "#00ffab", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "ω"   ]
                , button [ onClick (SystemClicked PW_   ), style "height" "55px", style "width" "150px", style "background-color" "#c66cc7", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "Pω_" ]
                , button [ onClick (SystemClicked P2    ), style "height" "55px", style "width" "150px", style "background-color" "#fff12e", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "P2"  ]
                , button [ onClick (SystemClicked C     ), style "height" "55px", style "width" "150px", style "background-color" "#3c3c3c", style "color" "#ffffff", style "font-size" "30px", style "border" "0px", style "border-top-right-radius"  "20px", style "border-bottom-right-radius"  "20px" ] [ text "C"   ]
                ]
            , div [style "display" "block"]
        [ div [style "position" "absolute", style "top" "0"][WebGL.toHtml
        [ width 1000, height 1000, style "display" "block"]
        [ WebGL.entity
            vertexShader
            fragmentShader
            linesMesh
            (uniforms model)
        ]]
        , div [style "position" "absolute", style "top" "0"][WebGL.toHtml
        [ width 1000, height 1000, style "display" "block"]
        [ WebGL.entity
            vertexShader
            fragmentShader
            pointsMesh
            (uniforms model)
        ]]]]]


type alias Uniforms =
    { rotation : Mat4
    , perspective : Mat4
    , camera : Mat4
    , shade : Float
    }

uniforms : Model -> Uniforms
uniforms {theta, eye, target} =
    { rotation = (Mat4.makeRotate (0.05 * sin theta) (vec3 1 1 1))
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
        one = vec3 0 0 1
        two = vec3 1 0 1
        three = vec3 0 0 0
        four = vec3 1 0 0
        five = vec3 0 1 1
        six = vec3 1 1 1
        seven = vec3 0 1 0
        eight = vec3 1 1 0

    in
    [ (line (vec3 128 128 128) one   two   ) -- A
    , (line (vec3 128 128 128) two   four  ) -- B
    , (line (vec3 128 128 128) one   three ) -- C
    , (line (vec3 128 128 128) three four  ) -- D
    , (line (vec3 128 128 128) one   five  ) -- E
    , (line (vec3 128 128 128) two   six   ) -- F
    , (line (vec3 128 128 128) three seven ) -- G
    , (line (vec3 128 128 128) four  eight ) -- H
    , (line (vec3 128 128 128) five  six   ) -- I
    , (line (vec3 128 128 128) six   eight ) -- J
    , (line (vec3 128 128 128) five  seven ) -- K
    , (line (vec3 128 128 128) seven eight ) -- L
    ]
        |> WebGL.lines

pointsMesh : Mesh Vertex
pointsMesh =
    -- coordinates are [ left, up, towards ]
    let
        one = vec3 0 0 1
        two = vec3 1 0 1
        three = vec3 0 0 0
        four = vec3 1 0 0
        five = vec3 0 1 1
        six = vec3 1 1 1
        seven = vec3 0 1 0
        eight = vec3 1 1 0

    in
    [ (point (vec3 238 238 238) one   )
    , (point (vec3 255  48  45) two   ) 
    , (point (vec3 166 192 255) three ) 
    , (point (vec3 198 108 199) four  )
    , (point (vec3 107 255  86) five  )
    , (point (vec3 255 241  46) six   )
    , (point (vec3   0 225 171) seven )
    , (point (vec3  80  80  80) eight )
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

point : Vec3 -> Vec3 -> ( Vertex )
point colour a =
    let
        vertex position =
            Vertex (Vec3.scale (1 / 255) colour) position
    in
    ( vertex a )


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
