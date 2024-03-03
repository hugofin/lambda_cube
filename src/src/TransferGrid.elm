module TransferGrid exposing (view)

import Color exposing (..)
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (disabled, style)
import Html.Events exposing (onClick, onMouseEnter, onMouseLeave)
import System exposing (System(..), toString)


view : Bool -> (System -> msg) -> (System -> msg) -> System -> Html msg
view isGrid systemClicked systemOver over =
    div []
        [ button_trans isGrid C ( "665px", "5px" ) systemClicked systemOver over
        , button_trans isGrid W ( "310px", "23px" ) systemClicked systemOver over
        , button_trans isGrid P2 ( "890px", "65px" ) systemClicked systemOver over
        , button_trans isGrid Two ( "380px", "110px" ) systemClicked systemOver over
        , button_trans isGrid PW_ ( "655px", "320px" ) systemClicked systemOver over
        , button_trans isGrid W_ ( "340px", "375px" ) systemClicked systemOver over
        , button_trans isGrid P ( "840px", "500px" ) systemClicked systemOver over
        , button_trans isGrid Simple ( "410px", "600px" ) systemClicked systemOver over
        ]


button_trans : Bool -> System -> ( String, String ) -> (System -> msg) -> (System -> msg) -> System -> Html msg
button_trans off sys ( x, y ) systemClicked systemOver over =
    let
        col =
            System.color sys
    in
    button
        [ onClick (systemClicked sys)
        , onMouseEnter (systemOver sys)
        , onMouseLeave (systemOver None)
        , style "height" "75px"
        , style "width" "75px"
        , style "background-color" "rgba(0, 0, 0, 0)"
        , style "color" col
        , style "border" "0px"
        , style "position" "absolute"
        , style "top" y
        , style "left" x
        , style "display" "flex"
        , style "font-size" "25px"
        , disabled off
        , style "cursor"
            (if off then
                "default"

             else
                "pointer"
            )
        ]
        [ if not off && over == sys then
            toString sys

          else
            text ""
        ]
