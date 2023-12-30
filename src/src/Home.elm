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
import Html exposing (Html, b, br, button, div, sub, sup, text, u)
import Html.Attributes exposing (disabled, style)
import Html.Events exposing (onClick)
import Json.Decode exposing (Value)
import Math.Vector3 exposing (Vec3, getX, getY, getZ, vec3)
import MathML.UntypedTerms
import System exposing (System(..))


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
    ( { theta = 0
      , system = Home
      , eye = vec3 -0.3 1.6 3
      , target = vec3 0.5 0.35 0.5
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
                { eye_n, target_n } =
                    f model.system
            in
            ( { model
                | theta = model.theta + dt / 5000
                , eye = vec3lerp model.eye eye_n
                , target = vec3lerp model.target target_n
              }
            , Cmd.none
            )

        SystemClicked sys ->
            ( { model | system = sys }, Cmd.none )


f system =
    case system of
        Home ->
            { eye_n = vec3 -0.3 1.6 3.0, target_n = vec3 0.5 0.35 0.5 }

        None ->
            { eye_n = vec3 -3.0 3.0 3.0, target_n = vec3 4.0 4.0 4.0 }

        Simple ->
            { eye_n = vec3 -0.2 0.15 1.3, target_n = vec3 0.0 0.0 1.0 }

        P ->
            { eye_n = vec3 0.8 0.15 1.3, target_n = vec3 1.0 0.0 1.0 }

        Two ->
            { eye_n = vec3 -0.2 1.15 1.3, target_n = vec3 0.0 1.0 1.0 }

        W_ ->
            { eye_n = vec3 -0.2 0.15 0.3, target_n = vec3 0.0 0.0 0.0 }

        W ->
            { eye_n = vec3 -0.2 1.15 0.3, target_n = vec3 0.0 1.0 0.0 }

        PW_ ->
            { eye_n = vec3 0.8 0.15 0.3, target_n = vec3 1.0 0.0 0.0 }

        P2 ->
            { eye_n = vec3 0.8 1.15 1.3, target_n = vec3 1.0 1.0 1.0 }

        C ->
            { eye_n = vec3 0.8 1.15 0.3, target_n = vec3 1.0 1.0 0.0 }


type alias Model =
    { theta : Float
    , system : System
    , eye : Vec3
    , target : Vec3
    }


type Msg
    = Tick Float
    | SystemClicked System


type alias Flags =
    Value


button_side : System -> String -> String -> Html Msg
button_side sys col msg =
    button
        [ onClick (SystemClicked sys)
        , style "height" "55px"
        , style "width" "150px"
        , style "background-color" col
        , style "color" "#ffffff"
        , style "font-size" "30px"
        , style "border" "0px"
        , style "border-top-right-radius" "20px"
        , style "border-bottom-right-radius" "20px"
        , style "cursor" "pointer"
        ]
        [ text msg ]


button_trans : System -> ( String, String ) -> Html Msg
button_trans sys ( x, y ) =
    let
        enabled =
            sys == None || sys == Home
    in
    button
        [ onClick (SystemClicked sys)
        , style "height" "75px"
        , style "width" "75px"
        , style "background-color" "#ff0000"
        , style "color" "#ffffff"
        , style "border" "0px"
        , style "position" "absolute"
        , style "top" y
        , style "left" x
        , style "opacity" "0"
        , style "display" "flex"
        , disabled enabled
        , style "cursor"
            (if enabled then
                "default"

             else
                "pointer"
            )
        ]
        [ text "" ]


title_box : System -> Html Msg
title_box sys =
    case sys of
        None ->
            div
                [ style "height" "50px"
                , style "width" "400px"
                , style "color" "#c5e8b7"
                , style "background-color" "transparent"
                , style "top" "50px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "UNTYPED LAMBDA CALCULUS" ]

        Simple ->
            div
                [ style "height" "50px"
                , style "width" "400px"
                , style "color" "#c0c0c0"
                , style "background-color" "transparent"
                , style "top" "175px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "SIMPLY TYPED LAMBDA CALCULUS" ]

        P ->
            div
                [ style "height" "50px"
                , style "width" "300px"
                , style "color" "#ff302d"
                , style "background-color" "transparent"
                , style "top" "0px"
                , style "left" "800px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "LAMBDA-P" ]

        Two ->
            div
                [ style "height" "50px"
                , style "width" "500px"
                , style "background-color" "transparent"
                , style "color" "#6bff56"
                , style "top" "150px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "SYSTEM F, or ", br [] [], text " THE POLYMORPHIC LAMBDA CALCULUS" ]

        W_ ->
            div
                [ style "height" "100px"
                , style "width" "300px"
                , style "background-color" "transparent"
                , style "color" "#74c0ff"
                , style "top" "0px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "SYSTEM F", u [] [ text "ω" ] ]

        W ->
            div
                [ style "height" "100px"
                , style "width" "700px"
                , style "background-color" "transparent"
                , style "color" "#00ffab"
                , style "top" "0px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "THE HIGHER ORDER POLYMORPHIC LAMBDA CALCULUS" ]

        PW_ ->
            div
                [ style "height" "100px"
                , style "width" "300px"
                , style "background-color" "transparent"
                , style "color" "#c66cc7"
                , style "top" "0px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "P", u [] [ text "ω" ] ]

        P2 ->
            div
                [ style "height" "100px"
                , style "width" "300px"
                , style "background-color" "transparent"
                , style "color" "#fff12e"
                , style "top" "0px"
                , style "left" "200px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "SYSTEM P2" ]

        C ->
            div
                [ style "height" "100px"
                , style "width" "300px"
                , style "background-color" "transparent"
                , style "color" "#3c3c3c"
                , style "top" "0px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "40px"
                , style "border" "0px"
                , style "font-weight" "bold"
                , style "vertical-align" "middle"
                ]
                [ text "CALCULUS OF CONSTRUCTIONS" ]

        Home ->
            div [ style "opacity" "0" ] [ text "" ]


rules_box : System -> Html Msg
rules_box sys =
    case sys of
        None ->
            div
                [ style "height" "100px"
                , style "width" "500px"
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
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
                , style "background-color" "#0f0f0f"
                , style "color" "#ffffff"
                , style "top" "-20px"
                , style "left" "230px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "0px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "In the calculus of constructions, all three types are active, so both terms and types can depend on either terms or types.  This system is strongly normalising, meaning that all valid terms will terminate, while still being powerful." ]

        Home ->
            button [ style "opacity" "0" ] [ text "" ]


terms_box : System -> Html Msg
terms_box sys =
    case sys of
        None ->
            div
                [ style "height" "190px"
                , style "width" "490px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "50px"
                , style "left" "425px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#c5e8b7"
                ]
                [ MathML.UntypedTerms.view ]

        Simple ->
            div
                [ style "height" "270px"
                , style "width" "600px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "375px"
                , style "left" "425px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#c0c0c0"
                ]
                [ b [] [ text "Pre-typed Terms:" ]
                , br [] []
                , text "Variable - if α ∈ V, then α ∈ Λ"
                , sup [] [ text "→" ]
                , br [] []
                , text "Application - if M,N ∈ Λ"
                , sup [] [ text "→" ]
                , text "then (MN) ∈Λ"
                , sup [] [ text "→" ]
                , br [] []
                , text "Abstraction - if x ∈ 𝕍, σ in 𝕋, and M ∈ Λ"
                , sup [] [ text "→" ]
                , text ", then (λ  x : σ . M). ∈ Λ"
                , sup [] [ text "→" ]
                , br [] []
                , b [] [ text "Derivation Rules:" ]
                , br [] []
                , text "variable - Γ ⊢ x : σ  if x : σ ∈ Γ"
                , br [] []
                , text "application - "
                , u [] [ text "Γ ⊢ M : σ → τ ⠀⠀ Γ ⊢ N : σ" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : τ"
                , br [] []
                , text "abstraction - "
                , u [] [ text "⠀⠀Γ,x : σ ⊢ M : τ⠀⠀" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : σ . M:σ→τ"
                ]

        P ->
            div
                [ style "height" "375px"
                , style "width" "490px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "225px"
                , style "left" "650px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#ff302d"
                ]
                [ b [] [ text "Derivation Rules:" ]
                , br [] []
                , text "sort - 0 ⊢ * : ☐"
                , br [] []
                , text "variable"
                , u [] [ text "⠀⠀⠀Γ ⊢ A : s⠀⠀⠀" ]
                , text "⠀⠀if x ∉Γ "
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀Γ,x : A ⊢ x : A"
                , br [] []
                , text "weak - "
                , u [] [ text "Γ ⊢ A : B ⠀⠀ Γ ⊢ C : s" ]
                , text "⠀⠀if x ∉Γ "
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
                , br [] []
                , text "formation - "
                , u [] [ text "Γ ⊢ A : * ⠀⠀ Γ,x : A ⊢ B : s" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ Πx : A. B : s"
                , br [] []
                , text "appliaction - "
                , u [] [ text "Γ ⊢ M : Πx :A . B ⠀⠀ Γ ⊢ N : A" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B[x:= N]"
                , br [] []
                , text "abstraction - "
                , u [] [ text "⠀⠀Γ,x : A ⊢ M : B⠀⠀Γ ⊢ Πx :A . B : s" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : A . M):Πx:A . B"
                , br [] []
                , text "conversion - "
                , u [] [ text "⠀⠀Γ ⊢ A : B⠀⠀Γ ⊢ B' : s" ]
                , text "⠀⠀if B ="
                , sub [] [ text "β" ]
                , text "B'"
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A : B'"
                ]

        Two ->
            div
                [ style "height" "490px"
                , style "width" "600px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "300px"
                , style "left" "575px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#6bff56"
                ]
                [ b [] [ text "Pre-typed Terms:" ]
                , br [] []
                , text "Variable - if α ∈ V, then α ∈ Λ"
                , sub [] [ text "2" ]
                , br [] []
                , text "Application A - if M,N ∈ Λ"
                , sub [] [ text "2" ]
                , text ", then (MN) ∈Λ"
                , sup [] [ text "2" ]
                , br [] []
                , text "Application B - if M ∈ Λ"
                , sub [] [ text "2" ]
                , text "and σ ∈𝕋, then (Mσ) ∈Λ"
                , sup [] [ text "2" ]
                , br [] []
                , text "Abstraction A - if x ∈ V, σ in 𝕋"
                , sub [] [ text "2" ]
                , text " and M ∈ Λ"
                , sub [] [ text "2" ]
                , text ", then (λ  x : σ . M). ∈ Λ"
                , sub [] [ text "2" ]
                , br [] []
                , text "Abstraction B - if σ ∈ 𝕍 and M in Λ"
                , sub [] [ text "2" ]
                , text ", then (λ  σ : * . M). ∈ Λ"
                , sub [] [ text "2" ]
                , br [] []
                , b [] [ text "Derivation Rules:" ]
                , br [] []
                , text "variable - Γ ⊢ x : σ  if Γ is λ2 context, and x : σ ∈ Γ"
                , br [] []
                , text "formation - Γ ⊢ B : *  if Γ is λ2 context, B ∈ 𝕋2, and every free type variable in B is in Γ"
                , br [] []
                , text "application 1 - "
                , u [] [ text "Γ ⊢ M : σ → τ ⠀⠀ Γ ⊢ N : σ" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : τ"
                , br [] []
                , text "application 2 - "
                , u [] [ text "Γ ⊢ M : (Πα : * .A ) ⠀⠀ Γ ⊢ B : *" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MB : A[α := B]"
                , br [] []
                , text "abstraction 1 - "
                , u [] [ text "⠀⠀Γ,x : σ ⊢ M : τ⠀⠀" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : σ . M:σ→τ"
                , br [] []
                , text "abstraction 2 - "
                , u [] [ text "⠀⠀Γ,α : * ⊢ M : A⠀⠀" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ (λ  α : * . M):(Πα : * .A )"
                ]

        W_ ->
            div
                [ style "height" "460px"
                , style "width" "550px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "210px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#74c0ff"
                ]
                [ text "The set of kinds (𝕂) is as follows:"
                , br [] []
                , text "Type Kind  - * ∈ 𝕂 "
                , br [] []
                , text "Abstraction Kind  - (* → *)  ∈ 𝕂 "
                , br [] []
                , b [] [ text "Derivation Rules:" ]
                , br [] []
                , text "sort - 0 ⊢ * : ☐"
                , br [] []
                , text "variable"
                , u [] [ text "⠀⠀⠀Γ ⊢ A : s⠀⠀⠀" ]
                , text "⠀⠀if x ∉Γ "
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀Γ,x : A ⊢ x : A"
                , br [] []
                , text "weak - "
                , u [] [ text "Γ ⊢ A : B ⠀⠀ Γ ⊢ C : s" ]
                , text "⠀⠀if x ∉Γ "
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
                , br [] []
                , text "formation - "
                , u [] [ text "Γ ⊢ A : s ⠀⠀ Γ ⊢ B : s" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A → B : s"
                , br [] []
                , text "appliaction - "
                , u [] [ text "Γ ⊢ M : A → B ⠀⠀ Γ ⊢ N : A" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
                , br [] []
                , text "abstraction - "
                , u [] [ text "⠀⠀Γ,x : A ⊢ M : B⠀⠀Γ ⊢ A → B : s" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : A . M):A → B"
                , br [] []
                , text "conversion - "
                , u [] [ text "⠀⠀Γ ⊢ A : B⠀⠀Γ ⊢ B' : s" ]
                , text "⠀⠀if B ="
                , sub [] [ text "β" ]
                , text "B'"
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A : B'"
                ]

        W ->
            div
                [ style "height" "190px"
                , style "width" "490px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "525px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#00ffab"
                ]
                [ text "" ]

        PW_ ->
            div
                [ style "height" "190px"
                , style "width" "490px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "0px"
                , style "left" "625px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#c66cc7"
                ]
                [ text "" ]

        P2 ->
            div
                [ style "height" "190px"
                , style "width" "490px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "150px"
                , style "left" "625px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#fff12e"
                ]
                [ text "" ]

        C ->
            div
                [ style "height" "400px"
                , style "width" "490px"
                , style "background-color" "#ffffff"
                , style "color" "#0f0f0f"
                , style "top" "-15px"
                , style "left" "775px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "border" "5px solid"
                , style "text-align" "left"
                , style "padding" "10px"
                , style "border-color" "#3c3c3c"
                ]
                [ b [] [ text "Derivation Rules:" ]
                , br [] []
                , text "sort - 0 ⊢ * : ☐"
                , br [] []
                , text "variable"
                , u [] [ text "⠀⠀⠀Γ ⊢ A : s⠀⠀⠀" ]
                , text "⠀⠀if x ∉Γ "
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀Γ,x : A ⊢ x : A"
                , br [] []
                , br [] []
                , text "weak - "
                , u [] [ text "Γ ⊢ A : B ⠀⠀ Γ ⊢ C : s" ]
                , text "⠀⠀if x ∉Γ "
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
                , br [] []
                , text "formation - "
                , u [] [ text "Γ ⊢ A : s", sub [] [ text "1" ], text " ⠀⠀ Γ,x : A ⊢ B : s" ]
                , sub [] [ text "2" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ Πx : A. B : s"
                , sub [] [ text "2" ]
                , br [] []
                , text "appliaction - "
                , u [] [ text "Γ ⊢ M : Πx :A . B ⠀⠀ Γ ⊢ N : A" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B[x:= N]"
                , br [] []
                , text "abstraction - "
                , u [] [ text "⠀⠀Γ,x : A ⊢ M : B⠀⠀Γ ⊢ Πx :A . B : s" ]
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : A . M):Πx:A . B"
                , br [] []
                , text "conversion - "
                , u [] [ text "⠀⠀Γ ⊢ A : B⠀⠀Γ ⊢ B' : s" ]
                , text "⠀⠀if B ="
                , sub [] [ text "β" ]
                , text "B'"
                , br [] []
                , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A : B'"
                ]

        Home ->
            button [ style "opacity" "0" ] [ text "" ]


syntax_box : System -> Html Msg
syntax_box sys =
    case sys of
        None ->
            div
                [ style "height" "200px"
                , style "width" "500px"
                , style "background-color" "#c5e8b7"
                , style "color" "#ffffff"
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
                , style "background-color" "#c0c0c0"
                , style "color" "#ffffff"
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
                , style "background-color" "#ff302d"
                , style "color" "#ffffff"
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
                , style "background-color" "#6bff56"
                , style "color" "#ffffff"
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
                , style "background-color" "#74c0ff"
                , style "color" "#ffffff"
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
                , style "background-color" "#00ffab"
                , style "color" "#ffffff"
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
                , style "background-color" "#c66cc7"
                , style "color" "#ffffff"
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
                , style "background-color" "#fff12e"
                , style "color" "#ffffff"
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
                , style "background-color" "#3c3c3c"
                , style "color" "#ffffff"
                , style "top" "150px"
                , style "left" "-125px"
                , style "position" "absolute"
                , style "font-size" "20px"
                , style "text-align" "left"
                , style "padding" "10px"
                ]
                [ text "" ]

        Home ->
            button [ style "opacity" "0" ] [ text "" ]


view : Model -> Html Msg
view model =
    div
        [ style "font-family" "IBM Plex Sans", style "display" "flex", style "flex-direction" "column" ]
        [ div [ style "margin" "50px", style "font-size" "40px", style "align-self" "Left", style "font-weight" "bold" ]
            [ text "Barendregt's Lambda Cube" ]
        , div [ style "display" "flex", style "flex-direction" "row", style "column-gap" "200px" ]
            [ div [ style "display" "flex", style "flex-direction" "column", style "row-gap" "10px" ]
                [ button_side Home "#3c3c3c" "home"
                , button_side None "#c5e8b7" "untyped"
                , button_side Simple "#c0c0c0" "λ→"
                , button_side P "#ff302d" "P"
                , button_side Two "#6bff56" "2"
                , button_side W_ "#74c0ff" "ω_"
                , button_side W "#00ffab" "ω"
                , button_side PW_ "#c66cc7" "Pω_"
                , button_side P2 "#fff12e" "P2"
                , button_side C "#3c3c3c" "C"
                ]
            , div [ style "display" "block" ]
                [ div [ style "position" "absolute", style "top" "0" ]
                    [ Cube.view { theta = model.theta, eye = model.eye, target = model.target }
                    ]
                , div [ style "display" "flex", style "flex-direction" "row", style "position" "absolute" ]
                    [ button_trans C ( "600px", "-5px" )
                    , button_trans W ( "220px", "20px" )
                    , button_trans P2 ( "780px", "80px" )
                    , button_trans Two ( "290px", "125px" )
                    , button_trans PW_ ( "580px", "320px" )
                    , button_trans W_ ( "240px", "350px" )
                    , button_trans P ( "740px", "490px" )
                    , button_trans Simple ( "300px", "580px" )
                    , Arrows.view SystemClicked model.system
                    , title_box model.system
                    , rules_box model.system
                    , terms_box model.system
                    , syntax_box model.system
                    ]
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
