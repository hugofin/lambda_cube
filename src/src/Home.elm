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

import Arrows
import Browser
import Browser.Events exposing (onAnimationFrameDelta)
import Color exposing (..)
import Cube
import ExplainationBox
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (disabled, style)
import Html.Events exposing (onClick)
import Json.Decode exposing (Value)
import Math.Vector3 exposing (Vec3, add, getX, getY, getZ, vec3)
import ReferenceButtons
import ReferenceFooter
import Sidebar
import SyntaxBox
import System exposing (System(..))
import TermsBox
import Title


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }


init : Flags -> ( Model, Cmd Msg )
init _ =
    let
        { target, eye } =
            targetAndEyeFromSystem Home
    in
    ( { theta = 0
      , system = Home
      , target = target
      , eye = eye
      , banner = False
      }
    , Cmd.none
    )


subscriptions : a -> Sub Msg
subscriptions _ =
    onAnimationFrameDelta Tick


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick dt ->
            let
                { target, eye } =
                    targetAndEyeFromSystem model.system
            in
            ( { model
                | theta = model.theta + dt / 5000
                , target = vec3lerp model.target target
                , eye = vec3lerp model.eye eye
              }
            , Cmd.none
            )

        SystemClicked sys ->
            ( { model | system = sys }, Cmd.none )

        ToggleReference ->
            ( { model | banner = not model.banner }, Cmd.none )


targetAndEyeFromSystem : System -> { target : Vec3, eye : Vec3 }
targetAndEyeFromSystem system =
    let
        target =
            case system of
                Home ->
                    vec3 0.5 0.6 0.5

                None ->
                    vec3 -2 0.5 0.5

                Simple ->
                    vec3 0.0 0.0 1.0

                P ->
                    vec3 1.0 0.0 1.0

                Two ->
                    vec3 0.0 1.0 1.0

                W_ ->
                    vec3 0.0 0.0 0.0

                W ->
                    vec3 0.0 1.0 0.0

                PW_ ->
                    vec3 1.0 0.0 0.0

                P2 ->
                    vec3 1.0 1.0 1.0

                C ->
                    vec3 1.0 1.0 0.0
    in
    { target = target
    , eye =
        if system == Home then
            vec3 -0.255 1.36 2.55

        else
            add target (vec3 -0.2 0.15 0.3)
    }


type alias Model =
    { theta : Float
    , system : System
    , target : Vec3
    , eye : Vec3
    , banner : Bool
    }


type Msg
    = Tick Float
    | SystemClicked System
    | ToggleReference


type alias Flags =
    Value


button_trans : Bool -> System -> ( String, String ) -> Html Msg
button_trans off sys ( x, y ) =
    button
        [ onClick (SystemClicked sys)
        , style "height" "75px"
        , style "width" "75px"
        , style "background-color" "#ff0000"
        , style "color" red
        , style "border" "0px"
        , style "position" "absolute"
        , style "top" y
        , style "left" x
        , style "opacity" "0%"
        , style "display" "flex"
        , disabled off
        , style "cursor"
            (if off then
                "default"

             else
                "pointer"
            )
        ]
        [ text "" ]


view : Model -> Html Msg
view model =
    div
        [ style "font-family" "IBM Plex Sans", style "display" "flex", style "flex-direction" "column" ]
        [ div []
            [ Title.view model.system ]
        , div [ style "display" "flex", style "flex-direction" "row" ]
            [ Sidebar.view SystemClicked model.system
            , div [ style "display" "block" ]
                [ div [ style "position" "absolute", style "top" "0" ]
                    [ Cube.view
                        { theta = model.theta
                        , eye = model.eye
                        , target = model.target
                        }
                    ]
                , div [ style "display" "flex", style "flex-direction" "row", style "position" "absolute" ] <|
                    let
                        isGrid =
                            model.system /= Home

                        trans_buttons =
                            [ button_trans isGrid C ( "665px", "5px" )
                            , button_trans isGrid W ( "310px", "23px" )
                            , button_trans isGrid P2 ( "890px", "65px" )
                            , button_trans isGrid Two ( "380px", "110px" )
                            , button_trans isGrid PW_ ( "655px", "320px" )
                            , button_trans isGrid W_ ( "340px", "375px" )
                            , button_trans isGrid P ( "840px", "500px" )
                            , button_trans isGrid Simple ( "410px", "600px" )
                            , Arrows.view SystemClicked model.system
                            ]

                        overlays =
                            case model.system of
                                Home ->
                                    []

                                sys ->
                                    [ SyntaxBox.view sys
                                    , TermsBox.view sys
                                    , ExplainationBox.view sys
                                    , if model.banner == True then
                                        ReferenceFooter.view ToggleReference sys

                                      else
                                        ReferenceButtons.view ToggleReference sys
                                    ]
                    in
                    trans_buttons ++ overlays
                ]
            ]
        ]


vec3lerp : Vec3 -> Vec3 -> Vec3
vec3lerp from to =
    let
        newX =
            lerp (getX from) (getX to)

        newY =
            lerp (getY from) (getY to)

        newZ =
            lerp (getZ from) (getZ to)
    in
    vec3 newX newY newZ


lerp : Float -> Float -> Float
lerp from to =
    from + 0.15 * (to - from)
