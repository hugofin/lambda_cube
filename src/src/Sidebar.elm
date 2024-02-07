module Sidebar exposing (view)

import Color exposing (..)
import Html exposing (Html, button, div)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import System exposing (System(..))


view : (System -> msg) -> System -> Html msg
view systemClicked sys =
    div [ style "display" "flex", style "flex-direction" "column", style "row-gap" "10px", style "align-items" "center" ]
        [ button_side Home sys systemClicked
        , button_side None sys systemClicked
        , button_side Simple sys systemClicked
        , button_side P sys systemClicked
        , button_side Two sys systemClicked
        , button_side W_ sys systemClicked
        , button_side W sys systemClicked
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
        , style "height" "50px"
        , style "width" "140px"
        , if sys == current then
            style "background-color" white

          else
            style "background-color" col
        , if sys == current then
            style "color" col

          else
            style "color" white
        , style "font-size" "30px"
        , style "border" "5px solid"
        , style "border-left" "0px solid"
        , style "border-top-right-radius" "10px"
        , style "border-bottom-right-radius" "10px"
        , style "cursor" "pointer"
        , style "border-color" col
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ msg ]
