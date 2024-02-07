module SyntaxBox exposing (view)

import Color exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import MathML.CRules
import MathML.CSyntax
import MathML.P2Rules
import MathML.P2Syntax
import MathML.PRules
import MathML.PSyntax
import MathML.SimpleRules
import MathML.SimpleSyntax
import MathML.TwoRules
import MathML.TwoSyntax
import MathML.UntypedSyntax
import MathML.WRules
import MathML.WSyntax
import MathML.WeakWRules
import MathML.WeakWSyntax
import System exposing (System(..))
import Utils exposing (px)


view : System -> (Bool -> msg) -> Bool -> Html msg
view sys which a =
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
        , style "display" "inline-block"
        , style "display" "flex"
        , style "flex-direction" "column"
        ]
        [ div
            [ style "display" "flex"
            , style "flex-direction" "row"
            ]
            [ div
                [ onClick (which True)
                , style "width" (px (width // 2))
                , style "text-align" "center"
                , if a then
                    style "background-color" black

                  else
                    style "background-color" steel
                ]
                [ text "syntax" ]
            , div
                [ onClick (which False)
                , style "width" (px (width // 2))
                , style "text-align" "center"
                , if a then
                    style "background-color" steel

                  else
                    style "background-color" black
                ]
                [ text "explaination" ]
            ]
        , div [ style "padding" "10px" ] (syntax sys a)
        ]


syntax : System -> Bool -> List (Html msg)
syntax sys a =
    case sys of
        Home ->
            []

        None ->
            [ MathML.UntypedSyntax.view ]

        Simple ->
            if a then
                [ MathML.SimpleSyntax.view ]

            else
                [ MathML.SimpleRules.view ]

        P ->
            if a then
                [ MathML.PSyntax.view ]

            else
                [ MathML.PRules.view ]

        Two ->
            if a then
                [ MathML.TwoSyntax.view ]

            else
                [ MathML.TwoRules.view ]

        W_ ->
            if a then
                [ MathML.WeakWSyntax.view ]

            else
                [ MathML.WeakWRules.view ]

        W ->
            if a then
                [ MathML.WSyntax.view ]

            else
                [ MathML.WRules.view ]

        PW_ ->
            if a then
                [ MathML.PSyntax.view ]

            else
                [ MathML.PRules.view ]

        P2 ->
            if a then
                [ MathML.P2Syntax.view ]

            else
                [ MathML.PRules.view ]

        C ->
            if a then
                [ MathML.CSyntax.view ]

            else
                [ MathML.CRules.view ]


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
            , y = 450
            , x = 100
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
