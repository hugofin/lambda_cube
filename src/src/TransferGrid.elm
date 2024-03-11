module TransferGrid exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, button, div)
import Html.WithContext.Attributes exposing (class, disabled, style)
import Html.WithContext.Events exposing (onClick)
import System exposing (System(..), toString)
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


view : Bool -> (System -> msg) -> Html msg
view isGrid systemClicked =
    div []
        [ button_trans isGrid C ( px 665, px 55 ) systemClicked
        , button_trans isGrid W ( px 310, px 73 ) systemClicked
        , button_trans isGrid P2 ( px 890, px 100 ) systemClicked
        , button_trans isGrid Two ( px 380, px 160 ) systemClicked
        , button_trans isGrid PW_ ( px 655, px 370 ) systemClicked
        , button_trans isGrid W_ ( px 340, px 425 ) systemClicked
        , button_trans isGrid P ( px 840, px 550 ) systemClicked
        , button_trans isGrid Simple ( px 410, px 650 ) systemClicked
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
        , style "height" (px 75)
        , style "width" (px 75)
        , style "background-color" "transparent"
        , Color.textColor col
        , style "border" (px 0)
        , style "position" "absolute"
        , style "top" y
        , style "left" x
        , style "font-size" (px 25)
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
