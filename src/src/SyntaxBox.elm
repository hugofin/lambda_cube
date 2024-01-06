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
        { y, x } =
            position sys
    in
    div
        [ style "background-color" black
        , style "color" white
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" "20px"
        , style "border" "0px"
        , style "text-align" "left"
        , style "padding" "10px"
        , style "display" "inline-block"
        ]
        (syntax sys)


syntax : System -> List (Html msg)
syntax sys =
    case sys of
        Home ->
            []

        None ->
            [ MathML.UntypedSyntax.view ]

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


position : System -> { x : Int, y : Int }
position sys =
    case sys of
        Home ->
            { y = 0
            , x = 0
            }

        None ->
            { y = 375
            , x = 25
            }

        Simple ->
            { y = 375
            , x = 425
            }

        P ->
            { y = 225
            , x = 650
            }

        Two ->
            { y = 300
            , x = 575
            }

        W_ ->
            { y = 210
            , x = -125
            }

        W ->
            { y = 525
            , x = -125
            }

        PW_ ->
            { y = 0
            , x = 625
            }

        P2 ->
            { y = 150
            , x = 625
            }

        C ->
            { y = 15
            , x = 775
            }
