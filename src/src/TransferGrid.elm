module TransferGrid exposing (view)

import Color exposing (..)
import Html exposing (Html, button, div)
import Html.Attributes exposing (class, disabled, style)
import Html.Events exposing (onClick)
import System exposing (System(..), toString)


view : Bool -> (System -> msg) -> Html msg
view isGrid systemClicked =
    div []
        [ button_trans isGrid C ( "665px", "55px" ) systemClicked
        , button_trans isGrid W ( "310px", "73px" ) systemClicked
        , button_trans isGrid P2 ( "890px", "115px" ) systemClicked
        , button_trans isGrid Two ( "380px", "160px" ) systemClicked
        , button_trans isGrid PW_ ( "655px", "370px" ) systemClicked
        , button_trans isGrid W_ ( "340px", "425px" ) systemClicked
        , button_trans isGrid P ( "840px", "550px" ) systemClicked
        , button_trans isGrid Simple ( "410px", "650px" ) systemClicked
        ]


button_trans : Bool -> System -> ( String, String ) -> (System -> msg) -> Html msg
button_trans off sys ( x, y ) systemClicked =
    let
        col =
            System.color sys
    in
    button
        [ class "grid-container"
        , onClick (systemClicked sys)
        , style "height" "75px"
        , style "width" "75px"
        , style "background-color" "rgba(0, 0, 0, 0)"
        , style "color" col
        , style "border" "0px"
        , style "position" "absolute"
        , style "top" y
        , style "left" x
        , style "font-size" "25px"
        , disabled off
        , style "cursor"
            (if off then
                "default"

             else
                "pointer"
            )
        ]
        [ if not off then
            div [ class "grid-text" ] [ toString sys ]

          else
            div [ class "grid-text" ] []
        ]
