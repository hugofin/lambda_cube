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
import Browser.Events       exposing (onAnimationFrameDelta)
import Html                 exposing (Html, button, div, text)
import Html.Attributes      exposing (height, style, width)
import Json.Decode          exposing (Value)
import Math.Matrix4 as Mat4 exposing (Mat4)
import Math.Vector3 as Vec3 exposing (Vec3, vec3)
import WebGL                exposing (Mesh, Shader)
import Html.Events          exposing (onClick)
import Html.Attributes      exposing (disabled)


main : Program Flags Model Msg
main =
    Browser.element
        { init          = init
        , view          = view
        , subscriptions = subscriptions
        , update        = update
        }

init : Flags -> (Model, Cmd Msg )
init _ = ( {theta = 0, eye = (vec3 -0.3 1.6 3 ), target  = (vec3 0.5 0.35 0.5), gridOn = False, arrows = ((Hid, False), (Hid, False), (Hid, False))} , Cmd.none )

subscriptions : a -> Sub Msg
subscriptions _ = onAnimationFrameDelta Tick

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = case msg of 
    Tick dt              -> ( { model | theta = model.theta + dt / 5000}, Cmd.none )
    SystemClicked Home   -> ( { model | eye = (vec3 -0.3 1.60 3.0 ), target  = (vec3 0.5 0.35 0.5), gridOn = False, arrows = ((Hid, False), (Hid, False), (Hid, False))}, Cmd.none )
    SystemClicked Simple -> ( { model | eye = (vec3 -0.2 0.15 1.3 ), target  = (vec3 0.0 0.00 1.0), gridOn =  True, arrows = ((  A,  True), (E  ,  True), ( C_,  True))}, Cmd.none )
    SystemClicked P      -> ( { model | eye = (vec3  0.8 0.15 1.3 ), target  = (vec3 1.0 0.00 1.0), gridOn =  True, arrows = ((  A, False), (F  ,  True), (  B,  True))}, Cmd.none )
    SystemClicked Two    -> ( { model | eye = (vec3 -0.2 1.15 1.3 ), target  = (vec3 0.0 1.00 1.0), gridOn =  True, arrows = ((  I,  True), (E  , False), (  K,  True))}, Cmd.none )
    SystemClicked W_     -> ( { model | eye = (vec3 -0.2 0.15 0.3 ), target  = (vec3 0.0 0.00 0.0), gridOn =  True, arrows = ((  D,  True), (G  ,  True), ( C_, False))}, Cmd.none )
    SystemClicked W      -> ( { model | eye = (vec3 -0.2 1.15 0.3 ), target  = (vec3 0.0 1.00 0.0), gridOn =  True, arrows = ((  L,  True), (G  , False), (  K, False))}, Cmd.none )
    SystemClicked PW_    -> ( { model | eye = (vec3  0.8 0.15 0.3 ), target  = (vec3 1.0 0.00 0.0), gridOn =  True, arrows = ((  D, False), (H  ,  True), (  B, False))}, Cmd.none )
    SystemClicked P2     -> ( { model | eye = (vec3  0.8 1.15 1.3 ), target  = (vec3 1.0 1.00 1.0), gridOn =  True, arrows = ((  I, False), (F  , False), (  J,  True))}, Cmd.none )
    SystemClicked C      -> ( { model | eye = (vec3  0.8 1.15 0.3 ), target  = (vec3 1.0 1.00 0.0), gridOn =  True, arrows = ((  L, False), (H  , False), (  J, False))}, Cmd.none )
    
type alias Model = 
    { theta   : Float
    , eye     : Vec3
    , target  : Vec3
    , gridOn  : Bool 
    , arrows  : ((Arrow, Bool), (Arrow, Bool), (Arrow, Bool))}

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

type Arrow = 
    Hid 
    | A
    | B
    | C_
    | D
    | E
    | F
    | G
    | H
    | I
    | J
    | K
    | L

type alias Flags = Value

button_side : System -> String -> String -> Html Msg
button_side sys col msg = button 
    [ onClick (SystemClicked sys)
    , style "height" "55px"
    , style "width" "150px"
    , style "background-color" col
    , style "color" "#ffffff"
    , style "font-size" "30px"
    , style "border" "0px"
    , style "border-top-right-radius"  "20px"
    , style "border-bottom-right-radius"  "20px"
    , style "cursor" "pointer"
    ] [ text msg ]

button_trans : System -> (String, String) -> Bool -> Html Msg
button_trans sys (x, y) enabled = button 
    [ onClick (SystemClicked sys)
    , style "height"           "75px"
    , style "width"            "75px"
    , style "background-color" "#ff0000"
    , style "color"            "#ffffff"
    , style "border"           "0px"
    , style "position"         "absolute"
    , style "top"              y
    , style "left"             x
    , style "opacity"          "0"
    , style "display"          "flex"
    , disabled                 enabled
    , style "cursor"           (if enabled then "default" else "pointer")
    ] [ text "" ]

button_arrow : (Arrow, Bool) -> Html Msg
button_arrow (arrow, forwards) = case arrow of 
    Hid ->
        button
        [ style "position" "absolute", style "top" "0", style "left" "0"
        , style  "opacity" "0", style "display" "flex", disabled True
        ] [ text ""]

    A -> 
        button [onClick (SystemClicked (if forwards then P else Simple))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "225px" else "440px") 
        , style "left"             (if forwards then "850px" else "50px")
        , style "background-color" (if forwards then "#ff302d" else "#ffffff")
        , style "border-width"     (if forwards then "0px" else "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#ff302d")
        ] [ text ""]

    B -> 
        button [onClick (SystemClicked (if forwards then PW_ else P))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "75px"    else   "580px") 
        , style "left"             (if forwards then "25px"    else   "900px")
        , style "background-color" (if forwards then "#74c0ff" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#74c0ff")
        ] [ text ""]

    C_ -> 
        button [onClick (SystemClicked (if forwards then W_ else Simple))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "75px"    else   "580px") 
        , style "left"             (if forwards then "25px"    else   "900px")
        , style "background-color" (if forwards then "#74c0ff" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#74c0ff")
        ] [ text ""]

    D -> 
        button [onClick (SystemClicked (if forwards then PW_ else W_))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then   "225px" else   "440px") 
        , style "left"             (if forwards then   "850px" else    "50px")
        , style "background-color" (if forwards then "#ff302d" else "#ffffff")
        , style "border-width"     (if forwards then     "0px" else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#ff302d")
        ] [ text ""]

    E -> 
        button [onClick (SystemClicked (if forwards then Two else Simple))
        , style "height"           "75px"  , style "width"              "25px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "0px"     else   "550px") 
        , style "left" "488px"
        , style "background-color" (if forwards then "#6bff56" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#6bff56")
        ] [ text ""]

    F -> 
        button [onClick (SystemClicked (if forwards then P2 else P))
        , style "height"           "75px"  , style "width"              "25px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "0px"     else   "550px") 
        , style "left" "488px"
        , style "background-color" (if forwards then "#6bff56" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#6bff56")
        ] [ text ""]

    G -> 
        button [onClick (SystemClicked (if forwards then W else W_))
        , style "height"           "75px"  , style "width"              "25px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "0px"     else   "550px") 
        , style "left" "488px"
        , style "background-color" (if forwards then "#6bff56" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#6bff56")
        ] [ text ""]

    H -> 
        button [onClick (SystemClicked (if forwards then C else PW_))
        , style "height"           "75px"  , style "width"              "25px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "0px"     else   "550px") 
        , style "left" "488px"  
        , style "background-color" (if forwards then "#6bff56" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#6bff56")
        ] [ text ""]

    I -> 
        button [onClick (SystemClicked (if forwards then P2 else Two))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "225px"   else   "440px") 
        , style "left"             (if forwards then "850px"   else    "50px")
        , style "background-color" (if forwards then "#ff302d" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#ff302d")
        ] [ text ""]

    J -> 
        button [onClick (SystemClicked (if forwards then C else P2))
        , style "height"           "25px"  , style "width"            "75px"
        , style "display"          "flex"  , style "position"         "absolute"
        , style "top"              (if forwards then "75px" else "580px") 
        , style "left"             (if forwards then "25px" else "900px")
        , style "background-color" (if forwards then "#74c0ff" else "#ffffff")
        , style "border-width"     (if forwards then "0px" else "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#74c0ff")
        ] [ text ""]

    K -> 
        button [onClick (SystemClicked (if forwards then W else Two))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "75px"    else   "580px") 
        , style "left"             (if forwards then "25px"    else   "900px")
        , style "background-color" (if forwards then "#74c0ff" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#74c0ff")
        ] [ text ""]

    L -> 
        button [onClick (SystemClicked (if forwards then C else W))
        , style "height"           "25px"  , style "width"              "75px"
        , style "display"          "flex"  , style "position"       "absolute"
        , style "top"              (if forwards then "225px"   else   "440px") 
        , style "left"             (if forwards then "850px"   else    "50px")
        , style "background-color" (if forwards then "#ff302d" else "#ffffff")
        , style "border-width"     (if forwards then "0px"     else     "5px")
        , style "border-color"     (if forwards then "#ffffff" else "#ff302d")
        ] [ text ""]                    

make_arrows : ((Arrow, Bool), (Arrow, Bool), (Arrow, Bool)) -> Html Msg
make_arrows (one, two, three) = 
    div [] [button_arrow one, button_arrow two, button_arrow three]

view : Model -> Html Msg
view model =
    div
        [ style "font-family" "TASA Orbiter Deck", style "display" "flex", style "flex-direction" "column" ]
        [ div [ style "margin" "50px", style "font-size" "50px", style "align-self" "center" ]
        [ text "Barendregt's Lambda Cube" ]
        , div [ style "display" "flex", style "flex-direction" "row", style "column-gap" "200px" ]
            [ div [ style "display" "flex", style "flex-direction" "column", style "row-gap" "10px" ]
                [ button_side Home   "#3c3c3c" "home"
                , button_side Simple "#e0e0e0" "λ→"
                , button_side P      "#ff302d" "P"
                , button_side Two    "#6bff56" "2"
                , button_side W_     "#74c0ff" "ω_"
                , button_side W      "#00ffab" "ω"
                , button_side PW_    "#c66cc7" "Pω_"
                , button_side P2     "#fff12e" "P2"
                , button_side C      "#3c3c3c" "C"
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
        ]]
        , div [style "display" "flex", style "flex-direction" "row", style "position" "absolute"] 
            [ button_trans C      ("600px",  "-5px") model.gridOn
            , button_trans W      ("220px",  "20px") model.gridOn
            , button_trans P2     ("780px",  "80px") model.gridOn
            , button_trans Two    ("290px", "125px") model.gridOn
            , button_trans PW_    ("580px", "320px") model.gridOn
            , button_trans W_     ("240px", "350px") model.gridOn
            , button_trans P      ("740px", "490px") model.gridOn
            , button_trans Simple ("300px", "580px") model.gridOn
            , make_arrows  model.arrows 
            ]
        ]]]


type alias Uniforms =
    { rotation    : Mat4
    , perspective : Mat4
    , camera      : Mat4
    , shade       : Float
    }

uniforms : Model -> Uniforms
uniforms {theta, eye, target} =
    { rotation    = Mat4.makeRotate (0.00 * sin theta) (vec3 1 1 1)
    , perspective = Mat4.makePerspective 45 1 0.01 10
    , camera      = Mat4.makeLookAt eye target (vec3 0 1 0)
    , shade       = 1
    }



-- Mesh


type alias Vertex =
    { color    : Vec3
    , position : Vec3
    }

linesMesh : Mesh Vertex
linesMesh =
    -- coordinates are [ left, up, towards ]
    let
        one   = vec3 0 0 1
        two   = vec3 1 0 1
        three = vec3 0 0 0
        four  = vec3 1 0 0
        five  = vec3 0 1 1
        six   = vec3 1 1 1
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
