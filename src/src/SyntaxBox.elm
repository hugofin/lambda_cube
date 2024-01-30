module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import MathML.CSyntax
import MathML.PSyntax
import MathML.SimpleSyntax
import MathML.TwoSyntax
import MathML.UntypedSyntax
import MathML.WSyntax
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
            [ MathML.WSyntax.view ]

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
            { height = 410
            , width = 600
            , y = 300
            , x = 650
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
            { height = 400
            , width = 650
            , y = 300
            , x = 25
            }

        W ->
            { height = 200
            , width = 500
            , y = 250
            , x = 25
            }

        PW_ ->
            { height = 300
            , width = 750
            , y = -100
            , x = 725
            }

        P2 ->
            { height = 300
            , width = 750
            , y = 200
            , x = 725
            }

        C ->
            { height = 475
            , width = 775
            , y = -100
            , x = 675
            }
