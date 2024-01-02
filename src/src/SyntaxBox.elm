module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, b, br, div, sup, text)
import Html.Attributes exposing (style)
import System exposing (System(..))
import Utils exposing (px)


view : System -> Html msg
view sys =
    let
        { height, width, y, x } =
            position sys

        color =
            System.color sys
    in
    div
        [ style "height" (px height)
        , style "width" (px width)
        , style "background-color" leaf
        , style "color" color
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" "20px"
        , style "padding" "10px"
        , style "text-align" "left"
        ]
        (syntax sys)


syntax : System -> List (Html msg)
syntax sys =
    case sys of
        Home ->
            [ b [] [ text "Syntax:" ], br [] [], text "a, b, c... are used for term variables", br [] [], text "L, M, N... are used to denote lambda terms", br [] [], text " ≡ is used to denote syntactic equivalence ", br [] [], text "as an example, the equation f(x) = x+1 could be represented as λ x . add x 1" ]

        None ->
            [ b [] [ text "Syntax:" ], br [] [], text "α, β, γ... are used for type variables", br [] [], text "σ, τ, ρ... are used to denote arbitrairy types", br [] [], text " arrow types are right associative, meaning that σ→(τ→ρ) ≡ σ→τ→ρ.", br [] [], text "as an example, the equation f(x) = x", sup [] [ text "2" ], text "+1 could be represented as λ x: ℕ . add (mult x x) 1 : ℕ → ℕ  " ]

        Simple ->
            [ text "the arrow types from previous systems are generalised into Π-types.  This allows you to encode properties into types, that will be enforced by the type checker, making for a safer program." ]

        P ->
            [ text "the arrow types from previous systems are generalised into Π-types.  This allows you to encode properties into types, that will be enforced by the type checker, making for a safer program." ]

        Two ->
            [ text "In this system, parametric polymorphism is used, so that we can define a function once and use it on many different types. To do that, we substitute in a star (*) where the type would normally be in a term.  For instance a polymorphic identity function would look like  λ α : * . λ x : α . x, where the star can be substituted for any type" ]

        W_ ->
            [ text "this system introduces 'kinds', which are types for type abstractions.  A kind is a combination of stars and arrows, and only show the structure of a type, and not it's content."
            , br [] []
            , text "as an example, a type or constructor would have kind *, and a proper constructor would have kind * -> *"
            ]

        W ->
            [ text "" ]

        PW_ ->
            [ text "" ]

        P2 ->
            [ text "" ]

        C ->
            [ text "" ]


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
            { height = 190
            , width = 490
            , y = 50
            , x = 425
            }

        Simple ->
            { height = 270
            , width = 600
            , y = 375
            , x = 425
            }

        P ->
            { height = 375
            , width = 490
            , y = 225
            , x = 650
            }

        Two ->
            { height = 490
            , width = 600
            , y = 300
            , x = 575
            }

        W_ ->
            { height = 460
            , width = 550
            , y = 210
            , x = -125
            }

        W ->
            { height = 190
            , width = 490
            , y = 525
            , x = -125
            }

        PW_ ->
            { height = 190
            , width = 490
            , y = 0
            , x = 625
            }

        P2 ->
            { height = 190
            , width = 490
            , y = 150
            , x = 625
            }

        C ->
            { height = 400
            , width = 490
            , y = 15
            , x = 775
            }
