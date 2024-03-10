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
import Cube
import ExplainationBox
import Footer
import Html exposing (Html, div)
import Html.Attributes exposing (style)
import Json.Decode exposing (Value)
import Math.Vector3 exposing (Vec3, add, getX, getY, getZ, vec3)
import MathML.UntypedSyntax
import ProcessionButtons
import ReductionBox
import ReferenceButtons
import ReferenceFooter
import Sidebar
import SyntaxBox
import System exposing (..)
import Title
import TransferGrid


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
      , footer = 0
      , syntax = True
      , multiplier = 1
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
            ( { model | system = sys, syntax = True }, Cmd.none )

        ToggleReference ->
            ( { model | banner = not model.banner }, Cmd.none )

        FooterClicked int ->
            ( { model | footer = int }, Cmd.none )

        SetSyntax bool ->
            ( { model | syntax = bool }, Cmd.none )

        ToggleMultiplier ->
            ( if model.multiplier == 0 then
                { model | multiplier = 1 }

              else
                { model | multiplier = 0 }
            , Cmd.none
            )


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
    , footer : Int
    , syntax : Bool
    , multiplier : Int
    }


type Msg
    = Tick Float
    | SystemClicked System
    | ToggleReference
    | FooterClicked Int
    | SetSyntax Bool
    | ToggleMultiplier


type alias Flags =
    Value


view : Model -> Html Msg
view model =
    div
        [ style "display" "flex", style "flex-direction" "column" ]
        [ div [ style "display" "flex", style "flex-direction" "row", style "align-items" "center" ]
            [ Title.view model.system ]
        , div [ style "display" "flex", style "flex-direction" "row" ]
            [ div [ style "display" "flex", style "flex-direction" "column", style "row-gap" "20px" ]
                [ Sidebar.view SystemClicked model.system
                , Footer.guide (FooterClicked 1)
                , Footer.settings (FooterClicked 2)
                ]
            , div [ style "display" "block" ]
                [ div [ style "position" "absolute", style "top" "0" ]
                    [ Cube.view
                        { theta = model.theta
                        , eye = model.eye
                        , target = model.target
                        , system = model.system
                        , multiplier = model.multiplier
                        }
                    ]
                , div [ style "display" "flex", style "flex-direction" "row", style "position" "absolute" ] <|
                    let
                        isGrid =
                            model.system /= Home

                        trans_buttons =
                            [ TransferGrid.view isGrid SystemClicked
                            , Arrows.view SystemClicked model.system
                            , ProcessionButtons.view SystemClicked model.system
                            ]

                        overlays =
                            case model.system of
                                Home ->
                                    []

                                sys ->
                                    [ SyntaxBox.view sys SetSyntax model.syntax
                                    , ReductionBox.view sys
                                    , ExplainationBox.view sys
                                    , ReferenceButtons.view ToggleReference sys
                                    , if model.banner == True then
                                        ReferenceFooter.view ToggleReference sys

                                      else
                                        div [] []
                                    ]
                    in
                    trans_buttons ++ overlays
                ]
            , if model.footer /= 0 then
                Footer.view ToggleMultiplier (FooterClicked 0) model.footer

              else
                div [] []
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
