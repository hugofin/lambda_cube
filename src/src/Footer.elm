module Footer exposing (..)

import Color exposing (..)
import Html exposing (Html, b, br, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import MathML.Glossary
import MathML.Guide
import System exposing (System(..))
import Utils exposing (px)


view : msg -> Int -> Html msg
view buttonclicked sys =
    if sys == 1 then
        div
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
            , style "display" "flex"
            , style "flex-direction" "row"
            , style "column-gap" "5%"
            ]
            [ div
                []
                [ MathML.Guide.view ]
            , div
                [ style "height" "200px"
                , style "width" "800px"
                , style "overflow" "auto"
                ]
                [ MathML.Glossary.view ]
            , div
                [ --style "position" "fixed"
                  --, style "left" "78%"
                  --, style "top" "83%"
                  style "width" (px 300)
                ]
                [ br [] [], text "beginners are recommended to start at with the untyped calculus, before moving on to simply typed calculus." ]
            , div
                [ style "position" "fixed"
                , style "left" "97%"
                ]
                [ close buttonclicked ]
            ]

    else
        div
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
            , style "display" "flex"
            , style "flex-direction" "row"
            , style "column-gap" "5%"
            ]
            [ div
                [ style "position" "fixed"
                , style "left" "97%"
                ]
                [ close buttonclicked ]
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


guide : msg -> Html msg
guide buttonclicked =
    div
        [ onClick buttonclicked
        , style "height" (px 30)
        , style "width" (px 140)
        , style "cursor" "pointer"
        , style "background-color" white
        , style "color" black
        , style "font-size" "30px"
        , style "border" "0px solid"
        , style "border-top" "2px solid"
        , style "cursor" "pointer"
        , style "font-size" "20px"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ text "guide" ]


settings : msg -> Html msg
settings buttonclicked =
    div
        [ onClick buttonclicked
        , style "height" (px 30)
        , style "width" (px 140)
        , style "cursor" "pointer"
        , style "background-color" white
        , style "color" black
        , style "font-size" "30px"
        , style "border" "0px solid"
        , style "cursor" "pointer"
        , style "font-size" "20px"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ text "settings" ]
