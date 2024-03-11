module Sidebar exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, button, div)
import Html.WithContext.Attributes exposing (style)
import Html.WithContext.Events exposing (onClick)
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


view : (System -> msg) -> System -> Html msg
view systemClicked sys =
    div [ style "display" "flex", style "flex-direction" "column", style "row-gap" (px 10), style "align-items" "center" ]
        [ button_side Home sys systemClicked
        , button_side None sys systemClicked
        , button_side Simple sys systemClicked
        , button_side Two sys systemClicked
        , button_side W_ sys systemClicked
        , button_side W sys systemClicked
        , button_side P sys systemClicked
        , button_side PW_ sys systemClicked
        , button_side P2 sys systemClicked
        , button_side C sys systemClicked
        ]


button_side : System -> System -> (System -> msg) -> Html msg
button_side sys current systemClicked =
    let
        msg =
            System.toString sys

        col =
            System.color sys
    in
    button
        [ onClick (systemClicked sys)
        , style "height" (px 50)
        , style "width" (px 140)
        , if sys == current then
            Color.backgroundColor white

          else
            Color.backgroundColor col
        , if sys == current then
            Color.textColor col

          else
            Color.textColor white
        , style "font-size" (px 30)
        , style "border" "solid"
        , style "border-width" (px 5)
        , style "border-left-width" (px 0)
        , style "border-top-right-radius" (px 10)
        , style "border-bottom-right-radius" (px 10)
        , style "cursor" "pointer"
        , Color.borderColor col
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ msg ]
