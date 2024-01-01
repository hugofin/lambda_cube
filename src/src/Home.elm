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
import Html exposing (Html, b, br, button, div, sub, sup, text, u)
import Html.Attributes exposing (disabled, style)
import Html.Events exposing (onClick)
import Json.Decode exposing (Value)
import Math.Vector3 exposing (Vec3, add, getX, getY, getZ, vec3)
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
    }


type Msg
    = Tick Float
    | SystemClicked System


type alias Flags =
    Value


button_side : System -> Html Msg
button_side sys =
    let
        msg =
            System.toString sys

        col =
            System.color sys
    in
    button
        [ onClick (SystemClicked sys)
        , style "height" "55px"
        , style "width" "150px"
        , style "background-color" col
        , style "color" white
        , style "font-size" "30px"
        , style "border" "0px"
        , style "border-top-right-radius" "20px"
        , style "border-bottom-right-radius" "20px"
        , style "cursor" "pointer"
        ]
        [ text msg ]


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


rules_box : System -> Html Msg
rules_box sys =
    case sys of
        Home ->
            div [] []

        None ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "200px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "Untyped lambda calculus is a system of computation which only has terms." ]

        Simple ->
            div
                [ style "height" "130px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "300px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "The Simple type system allows terms to be defined using other terms", br [] [], br [] [], text "variable type - if α ∈ 𝕍, then α ∈ 𝕋", br [] [], text "arrow type - if σ,τ ∈ 𝕋, then (σ→τ) ∈ 𝕋" ]

        P ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "75px"
                , style "left" "650px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "In the λP system, also named ΛΠ, types are allowed to depend on terms. This is as powerful as the simply typed calculus, but can express more detailed types" ]

        Two ->
            div
                [ style "height" "150px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "325px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "In system F, terms can depend on types.", br [] [], br [] [], text "variable type - if α ∈ 𝕍, then α ∈ 𝕋", sub [] [ text "2" ], br [] [], text "arrow type - if σ,τ ∈ 𝕋", sub [] [ text "2" ], text ", then (σ→τ) ∈ 𝕋", sub [] [ text "2" ], br [] [], text "Π type - if α ∈ 𝕍 and σ ∈ 𝕋", sub [] [ text "2" ], text ", then (Πα : *. σ) ∈ 𝕋", sub [] [ text "2" ] ]

        W_ ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "75px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "in system F"
                , u [] [ text "ω" ]
                , text " (pronounced weak omega), types can now depend on other types.  This doesn't make the calculus more powerful, just nicer to use."
                ]

        W ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "110px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "System Fω combines both the Λ constructor of System F and the type constructors from System F ω _ . Thus System Fω provides both terms that depend on types and types that depend on types" ]

        PW_ ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "75px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "as this system is a combination of types can bind both terms and types.  whats the point of having the kind system if there isnt any arrow types anymore" ]

        P2 ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "-40px"
                , style "left" "500px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "in the system P2, terms can bind types or types can bind terms.  Presumably this lets you have polymorphic generalised types" ]

        C ->
            div
                [ style "height" "125px"
                , style "width" "500px"
                , style "background-color" black
                , style "color" white
                , style "top" "-20px"
                , style "left" "230px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "In the calculus of constructions, all three types are active, so both terms and types can depend on either terms or types.  This system is strongly normalising, meaning that all valid terms will terminate, while still being powerful." ]


syntax_box : System -> Html Msg
syntax_box sys =
    case sys of
        Home ->
            div [] []

        None ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" leaf
                , style "color" white
                , style "top" "350px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "padding" "10px"
                , style "text-align" "left"
                ]
                [ b [] [ text "Syntax:" ], br [] [], text "a, b, c... are used for term variables", br [] [], text "L, M, N... are used to denote lambda terms", br [] [], text " ≡ is used to denote syntactic equivalence ", br [] [], text "as an example, the equation f(x) = x+1 could be represented as λ x . add x 1" ]

        Simple ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" mauve
                , style "color" white
                , style "top" "500px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ b [] [ text "Syntax:" ], br [] [], text "α, β, γ... are used for type variables", br [] [], text "σ, τ, ρ... are used to denote arbitrairy types", br [] [], text " arrow types are right associative, meaning that σ→(τ→ρ) ≡ σ→τ→ρ.", br [] [], text "as an example, the equation f(x) = x", sup [] [ text "2" ], text "+1 could be represented as λ x: ℕ . add (mult x x) 1 : ℕ → ℕ  " ]

        P ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" red
                , style "color" white
                , style "top" "500px"
                , style "left" "50px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "the arrow types from previous systems are generalised into Π-types.  This allows you to encode properties into types, that will be enforced by the type checker, making for a safer program." ]

        Two ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" green
                , style "color" white
                , style "top" "525px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "In this system, parametric polymorphism is used, so that we can define a function once and use it on many different types. To do that, we substitute in a star (*) where the type would normally be in a term.  For instance a polymorphic identity function would look like  λ α : * . λ x : α . x, where the star can be substituted for any type" ]

        W_ ->
            div
                [ style "height" "175px"
                , style "width" "500px"
                , style "background-color" sky
                , style "color" white
                , style "top" "-50px"
                , style "left" "525px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "this system introduces 'kinds', which are types for type abstractions.  A kind is a combination of stars and arrows, and only show the structure of a type, and not it's content."
                , br [] []
                , text "as an example, a type or constructor would have kind *, and a proper constructor would have kind * -> *"
                ]

        W ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" teal
                , style "color" white
                , style "top" "250px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "" ]

        PW_ ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" purple
                , style "color" white
                , style "top" "250px"
                , style "left" "625px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "" ]

        P2 ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" yellow
                , style "color" white
                , style "top" "400px"
                , style "left" "625px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "" ]

        C ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" steel
                , style "color" white
                , style "top" "150px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "" ]


view : Model -> Html Msg
view model =
    div
        [ style "font-family" "IBM Plex Sans", style "display" "flex", style "flex-direction" "column" ]
        [ div []
            [ Title.view model.system ]
        , div [ style "display" "flex", style "flex-direction" "row" ]
            [ div [ style "display" "flex", style "flex-direction" "column", style "row-gap" "10px" ]
                [ button_side Home
                , button_side None
                , button_side Simple
                , button_side P
                , button_side Two
                , button_side W_
                , button_side W
                , button_side PW_
                , button_side P2
                , button_side C
                ]
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
                                    [ rules_box sys
                                    , TermsBox.view sys
                                    , syntax_box sys
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
    let
        t =
            0.15
    in
    from + t * (to - from)
