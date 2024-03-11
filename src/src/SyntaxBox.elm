module SyntaxBox exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, div, text)
import Html.WithContext.Attributes exposing (style)
import Html.WithContext.Events exposing (onClick)
import MathML.CRules
import MathML.CSyntax
import MathML.P2Syntax
import MathML.PRules
import MathML.PSyntax
import MathML.PWeakWSyntax
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


type alias Html msg =
    Html.WithContext.Html Context msg


view : System -> (Bool -> msg) -> Bool -> Html msg
view sys which a =
    let
        { height, width, y, x } =
            position sys
    in
    div
        [ Color.backgroundColor black
        , style "width" (px width)
        , style "height" (px height)
        , Color.textColor white
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" (px 20)
        , style "border" (px 0)
        , style "text-align" "center"
        , style "display" "flex"
        , style "flex-direction" "column"
        ]
        [ if sys /= None then
            div
                [ style "display" "flex"
                , style "flex-direction" "row"
                , style "height" (px 80)
                ]
                [ div
                    [ onClick (which True)
                    , style "width" (px (width // 2))
                    , style "height" (px 40)
                    , style "display" "flex"
                    , style "align-items" "center"
                    , style "justify-content" "center"
                    , if a then
                        Color.backgroundColor black

                      else
                        Color.backgroundColor steel
                    ]
                    [ text "syntax" ]
                , div
                    [ onClick (which False)
                    , style "width" (px (width // 2))
                    , style "height" (px 40)
                    , style "display" "flex"
                    , style "align-items" "center"
                    , style "justify-content" "center"
                    , if a then
                        Color.backgroundColor steel

                      else
                        Color.backgroundColor black
                    ]
                    [ text "explanation" ]
                ]

          else
            div [] []
        , div [ style "padding" (px 10), style "overflow" "auto" ] (syntax sys a)
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
                [ MathML.PWeakWSyntax.view ]

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
            , y = 315
            , x = 25
            }

        Simple ->
            { height = 275
            , width = 700
            , y = 300
            , x = 650
            }

        P ->
            { height = 400
            , width = 790
            , y = 175
            , x = 660
            }

        Two ->
            { height = 350
            , width = 550
            , y = 175
            , x = 25
            }

        W_ ->
            { height = 400
            , width = 735
            , y = 325
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
            , width = 780
            , y = 450
            , x = 100
            }

        P2 ->
            { height = 400
            , width = 790
            , y = 175
            , x = 660
            }

        C ->
            { height = 500
            , width = 815
            , y = -100
            , x = 675
            }
