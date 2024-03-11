module ProcessionButtons exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, button, div, text)
import Html.WithContext.Attributes exposing (style)
import Html.WithContext.Events exposing (onClick)
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


view : (System -> msg) -> System -> Html msg
view systemClicked sys =
    div []
        [ if sys /= C then
            forwards sys systemClicked

          else
            div [] []
        , if sys /= Home && sys /= None then
            backward sys systemClicked

          else
            div [] []
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
        , Color.backgroundColor white
        , Color.textColor steel
        , Color.borderColor steel
        , style "border-width" (px 5)
        , style "border-radius" (px 10)
        , style "border-radius" (px 10)
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
        , Color.textColor steel
        , Color.backgroundColor white
        , Color.borderColor steel
        , style "border-style" "solid"
        , style "border-width" (px 5)
        , style "border-radius" (px 10)
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
