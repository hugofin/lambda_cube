module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, br, div, sub, text)
import Html.Attributes exposing (style)
import MathML.UntypedSyntax
import System exposing (System(..))
import Utils exposing (px)


view : System -> Html msg
view sys =
    let
        { height, width, y, x } =
            position sys
    in
    div
        [ style "height" (px height)
        , style "width" (px width)
        , style "background-color" black
        , style "color" white
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" "20px"
        , style "border" "0px"
        , style "text-align" "left"
        , style "padding" "10px"
        ]
        (syntax sys)


syntax : System -> List (Html msg)
syntax sys =
    case sys of
        Home ->
            [ MathML.UntypedSyntax.view ]

        None ->
            [ text "Untyped lambda calculus is a system of computation which only has terms." ]

        Simple ->
            [ text "The Simple type system allows terms to be defined using other terms", br [] [], br [] [], text "variable type - if α ∈ 𝕍, then α ∈ 𝕋", br [] [], text "arrow type - if σ,τ ∈ 𝕋, then (σ→τ) ∈ 𝕋" ]

        P ->
            [ text "In the λP system, also named ΛΠ, types are allowed to depend on terms. This is as powerful as the simply typed calculus, but can express more detailed types" ]

        Two ->
            [ text "In system F, terms can depend on types.", br [] [], br [] [], text "variable type - if α ∈ 𝕍, then α ∈ 𝕋", sub [] [ text "2" ], br [] [], text "arrow type - if σ,τ ∈ 𝕋", sub [] [ text "2" ], text ", then (σ→τ) ∈ 𝕋", sub [] [ text "2" ], br [] [], text "Π type - if α ∈ 𝕍 and σ ∈ 𝕋", sub [] [ text "2" ], text ", then (Πα : *. σ) ∈ 𝕋", sub [] [ text "2" ] ]

        W_ ->
            [ text "in system F"
            , text " (pronounced weak omega), types can now depend on other types.  This doesn't make the calculus more powerful, just nicer to use."
            ]

        W ->
            [ text "System Fω combines both the Λ constructor of System F and the type constructors from System F ω _ . Thus System Fω provides both terms that depend on types and types that depend on types" ]

        PW_ ->
            [ text "as this system is a combination of types can bind both terms and types.  whats the point of having the kind system if there isnt any arrow types anymore" ]

        P2 ->
            [ text "in the system P2, terms can bind types or types can bind terms.  Presumably this lets you have polymorphic generalised types" ]

        C ->
            [ text "In the calculus of constructions, all three types are active, so both terms and types can depend on either terms or types.  This system is strongly normalising, meaning that all valid terms will terminate, while still being powerful." ]


position : System -> { x : Int, y : Int, height : Int, width : Int }
position sys =
    case sys of
        Home ->
            { height = 0
            , width = 0
            , y = 0
            , x = 0
            }

        None ->
            { height = 100
            , width = 500
            , y = 50
            , x = 425
            }

        Simple ->
            { height = 130
            , width = 500
            , y = 375
            , x = 425
            }

        P ->
            { height = 100
            , width = 500
            , y = 225
            , x = 650
            }

        Two ->
            { height = 150
            , width = 500
            , y = 300
            , x = 575
            }

        W_ ->
            { height = 100
            , width = 500
            , y = 210
            , x = -125
            }

        W ->
            { height = 100
            , width = 500
            , y = 525
            , x = -125
            }

        PW_ ->
            { height = 100
            , width = 500
            , y = 0
            , x = 625
            }

        P2 ->
            { height = 100
            , width = 500
            , y = 150
            , x = 625
            }

        C ->
            { height = 125
            , width = 500
            , y = 15
            , x = 775
            }
