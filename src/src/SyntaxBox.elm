module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, br, div, text)
import Html.Attributes exposing (style)
import MathML.CSyntax
import MathML.PSyntax
import MathML.SimpleSyntax
import MathML.TwoSyntax
import MathML.UntypedSyntax
import MathML.WeakWSyntax
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
            [ MathML.SimpleSyntax.view ]

        P ->
            [ MathML.PSyntax.view ]

        Two ->
            [ MathML.TwoSyntax.view ]

        W_ ->
            [ MathML.WeakWSyntax.view ]

        W ->
            [ text "" ]

        PW_ ->
            [ text "" ]

        P2 ->
            [ text "" ]

        C ->
            [ MathML.CSyntax.view ]


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
            { y = 425
            , x = 75
            }

        P ->
            { y = -100
            , x = 650
            }

        Two ->
            { y = 175
            , x = 750
            }

        W_ ->
            { y = 0
            , x = 25
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
            { y = -150
            , x = 700
            }
