module ReferenceButtons exposing (..)

import Color exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import System exposing (System(..))
import Utils exposing (px)


view : msg -> System -> Html msg
view buttonclicked sys =
    div []
        (buttons buttonclicked sys)


open : msg -> Int -> Int -> String -> String -> String -> Html msg
open buttonclicked x y a tcol mcol =
    div
        [ onClick buttonclicked
        , style "height" "20px"
        , style "width" "20px"
        , style "position" "absolute"
        , style "top" (px y)
        , style "left" (px x)
        , style "cursor" "pointer"
        , style "background-color" mcol
        , style "color" tcol
        ]
        [ text "[", text a, text "]" ]


buttons : msg -> System -> List (Html msg)
buttons buttonclicked sys =
    case sys of
        Home ->
            []

        None ->
            [ open buttonclicked 922 300 "1" white black ]

        Simple ->
            []

        P ->
            []

        Two ->
            []

        W_ ->
            []

        W ->
            [ text "" ]

        PW_ ->
            [ text "" ]

        P2 ->
            [ text "" ]

        C ->
            []
