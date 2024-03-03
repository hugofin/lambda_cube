module ProcessionButtons exposing (view)

import Color exposing (..)
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import System exposing (System(..))
import Utils exposing (px)


view : (System -> msg) -> System -> Html msg
view systemClicked sys =
    div []
        [ forwards sys systemClicked
        , backward sys systemClicked
        ]


forwards : System -> (System -> msg) -> Html msg
forwards sys systemClicked =
    button
        [ case sys of
            Home ->
                onClick (systemClicked None)

            None ->
                onClick (systemClicked Simple)

            Simple ->
                onClick (systemClicked Two)

            Two ->
                onClick (systemClicked W_)

            W_ ->
                onClick (systemClicked W)

            W ->
                onClick (systemClicked P)

            P ->
                onClick (systemClicked C)

            PW_ ->
                onClick (systemClicked C)

            P2 ->
                onClick (systemClicked C)

            C ->
                onClick (systemClicked C)
        , style "height" (px 75)
        , style "width" (px 75)
        , style "background-color" white
        , style "color" steel
        , style "color-color" steel
        , style "border" "5px solid"
        , style "border-radius" "10px"
        , style "position" "absolute"
        , style "top" (px 700)
        , style "left" (px 1300)
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        , style "font-size" (px 35)
        , style "cursor" "pointer"
        ]
        [ text "→" ]


backward : System -> (System -> msg) -> Html msg
backward sys systemClicked =
    button
        [ case sys of
            Home ->
                onClick (systemClicked Home)

            None ->
                onClick (systemClicked None)

            Simple ->
                onClick (systemClicked None)

            Two ->
                onClick (systemClicked Simple)

            W_ ->
                onClick (systemClicked Two)

            W ->
                onClick (systemClicked W_)

            P ->
                onClick (systemClicked W)

            PW_ ->
                onClick (systemClicked P)

            P2 ->
                onClick (systemClicked P)

            C ->
                onClick (systemClicked P)
        , style "height" (px 75)
        , style "width" (px 75)
        , style "color" steel
        , style "background-color" white
        , style "color-color" steel
        , style "border" "5px solid"
        , style "border-radius" "10px"
        , style "position" "absolute"
        , style "top" (px 700)
        , style "left" (px 1200)
        , style "font-size" (px 35)
        , style "cursor" "pointer"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ text "←" ]
