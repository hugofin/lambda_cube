module GuideFooter exposing (open, view)

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
        _ =
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
                , div
                    [ style "position" "fixed"
                    , style "left" "78%"
                    , style "top" "83%"
                    ]
                    [ text "beginners are recommended to start at with the untyped calculus, before moving on to simply typed calculus." ]
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
        , style "height" (px 50)
        , style "width" (px 140)
        , style "display" "flex"
        , style "flex-direction" "column"
        , style "row-gap" "10px"
        , style "text-align" "center"
        , style "position" "absolute"
        , style "top" (px 800)
        , style "left" (px 0)
        , style "cursor" "pointer"
        , style "background-color" white
        , style "color" black
        , style "font-size" "30px"
        , style "border" "1px solid"
        , style "border-left" "0px solid"
        , style "border-top-right-radius" "10px"
        , style "border-bottom-right-radius" "10px"
        , style "cursor" "pointer"
        , style "font-size" "20px"
        ]
        [ text "guide" ]
