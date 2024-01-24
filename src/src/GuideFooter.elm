module GuideFooter exposing (..)

import Color exposing (..)
import Html exposing (Html, b, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import MathML.Guide
import System exposing (System(..))
import Utils exposing (px)


view : msg -> System -> Html msg
view buttonclicked sys =
    let
        color =
            System.color sys
    in
    div []
        [ div
            [ style "width" "100%"
            , style "background-color" steel
            , style "color" white
            , style "bottom" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            , style "font-size" (px 20)
            , style "padding" (px 10)
            , style "padding-bottom" (px 30)
            , style "text-align" "left"
            ]
            [ div []
                [ div
                    [ style "position" "fixed"
                    , style "left" "97%"
                    ]
                    [ close buttonclicked ]
                , div
                    [ style "display" "flex"
                    , style "flex-direction" "column"
                    ]
                    [ MathML.Guide.view ]
                ]
            ]
        ]


close : msg -> Html msg
close buttonclicked =
    b
        [ onClick buttonclicked
        , style "height" (px 20)
        , style "width" (px 20)
        , style "cursor" "pointer"
        ]
        [ text "⨉" ]


open : msg -> Html msg
open buttonclicked =
    div
        [ onClick buttonclicked
        , style "height" (px 80)
        , style "width" (px 140)
        , style "display" "flex"
        , style "flex-direction" "column"
        , style "row-gap" "10px"
        , style "align-items" "center"
        , style "text-align" "center"
        , style "position" "absolute"
        , style "top" (px 800)
        , style "left" (px 0)
        , style "cursor" "pointer"
        , style "background-color" steel
        , style "color" white
        , style "font-size" "30px"
        , style "border" "5px solid"
        , style "border-left" "0px solid"
        , style "border-top-right-radius" "10px"
        , style "border-bottom-right-radius" "10px"
        , style "cursor" "pointer"
        ]
        [ text "guide" ]
