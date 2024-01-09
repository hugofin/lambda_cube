module TermsBox exposing (view)

import Color exposing (..)
import Html exposing (Html, b, br, div, sub, text, u)
import Html.Attributes exposing (style)
import MathML.UntypedTerms
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
        , style "background-color" white
        , style "color" black
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" "20px"
        , style "border" "5px solid"
        , style "text-align" "left"
        , style "padding" "10px"
        , style "border-color" color
        ]
        (terms sys)


terms : System -> List (Html msg)
terms sys =
    case sys of
        Home ->
            []

        None ->
            [ MathML.UntypedTerms.view ]

        Simple ->
            []

        P ->
            []

        Two ->
            [ text "In this system, parametric polymorphism is used, so that we can define a function once and use it on many different types. To do that, we substitute in a star (*) where the type would normally be in a term.  For instance a polymorphic identity function would look like  λ α : * . λ x : α . x, where the star can be substituted for any type"
            , text "In system F, terms can depend on types. variable type - if α ∈ 𝕍, then α ∈ 𝕋2, arrow type - if σ,τ ∈ 𝕋2, then (σ→τ) ∈ 𝕋2, Π type - if α ∈ 𝕍 and σ ∈ 𝕋2, then (Πα : *. σ) ∈ 𝕋2"
            ]

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
            []


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
            { height = 0
            , width = 490
            , y = 50
            , x = 425
            }

        Simple ->
            { height = 270
            , width = 600
            , y = 275
            , x = 750
            }

        P ->
            { height = 10
            , width = 10
            , y = 600
            , x = 800
            }

        Two ->
            { height = 300
            , width = 500
            , y = 150
            , x = 25
            }

        W_ ->
            { height = 125
            , width = 550
            , y = 210
            , x = 925
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
            { height = 10
            , width = 10
            , y = 15
            , x = 25
            }
