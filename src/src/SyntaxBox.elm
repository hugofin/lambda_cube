module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, b, br, div, sup, text)
import Html.Attributes exposing (style)
import MathML.UntypedSyntax
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
        , style "background-color" color
        , style "color" white
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
            { height = 400
            , width = 1000
            , y = 350
            , x = 25
            }

        Simple ->
            { height = 270
            , width = 500
            , y = 500
            , x = 25
            }

        P ->
            { height = 200
            , width = 500
            , y = 500
            , x = 175
            }

        Two ->
            { height = 200
            , width = 500
            , y = 300
            , x = 575
            }

        W_ ->
            { height = 175
            , width = 500
            , y = -50
            , x = 650
            }

        W ->
            { height = 200
            , width = 500
            , y = 250
            , x = 25
            }

        PW_ ->
            { height = 200
            , width = 500
            , y = 250
            , x = 750
            }

        P2 ->
            { height = 190
            , width = 490
            , y = 400
            , x = 750
            }

        C ->
            { height = 400
            , width = 490
            , y = 150
            , x = 900
            }
