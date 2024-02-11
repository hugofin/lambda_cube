module ReferenceButtons exposing (open, view)

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
        , style "height" (px 20)
        , style "width" (px 20)
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
            [ open buttonclicked 922 300 "1" white black, open buttonclicked 1360 10 "2" black white ]

        Simple ->
            [ open buttonclicked 1300 350 "1" white black, open buttonclicked 517 406 "2" black white ]

        P ->
            [ open buttonclicked 1410 215 "1" white black ]

        Two ->
            [ open buttonclicked 1345 215 "1" white black ]

        W_ ->
            [ open buttonclicked 705 340 "1" white black ]

        W ->
            [ open buttonclicked 495 290 "1" white black ]

        PW_ ->
            [ open buttonclicked 840 490 "2" white black, open buttonclicked 1220 0 "1" white purple ]

        P2 ->
            [ open buttonclicked 1410 215 "1" white black ]

        C ->
            [ open buttonclicked 1445 -60 "1" white black ]
