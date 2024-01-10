module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, div, text)
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
        { height, width, y, x } =
            position sys
    in
    div
        [ style "background-color" black
        , style "width" (px width)
        , style "height" (px height)
        , style "overflow" "auto"
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


position : System -> { height : Int, width : Int, x : Int, y : Int }
position sys =
    case sys of
        Home ->
            { height = 300
            , width = 500
            , y = 0
            , x = 0
            }

        None ->
            { height = 400
            , width = 900
            , y = 300
            , x = 25
            }

        Simple ->
            { height = 300
            , width = 550
            , y = 425
            , x = 25
            }

        P ->
            { height = 500
            , width = 775
            , y = -100
            , x = 650
            }

        Two ->
            { height = 500
            , width = 625
            , y = 175
            , x = 750
            }

        W_ ->
            { height = 500
            , width = 800
            , y = 280
            , x = 25
            }

        W ->
            { height = 300
            , width = 500
            , y = 250
            , x = 25
            }

        PW_ ->
            { height = 300
            , width = 500
            , y = 0
            , x = 625
            }

        P2 ->
            { height = 300
            , width = 500
            , y = 150
            , x = 625
            }

        C ->
            { height = 500
            , width = 775
            , y = -100
            , x = 675
            }
