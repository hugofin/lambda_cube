module ReferenceFooter exposing (..)

import Color exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import System exposing (System(..))


view : msg -> System -> Html msg
view buttonclicked sys =
    let
        color =
            System.color sys
    in
    div []
        [ div
            [ onClick buttonclicked
            , style "height" "100%"
            , style "width" "100%"
            , style "background-color" steel
            , style "opacity" "70%"
            , style "top" "0px"
            , style "left" "0px"
            , style "position" "fixed"
            ]
            []
        , div
            [ style "width" "100%"
            , style "background-color" color
            , style "color" white
            , style "bottom" "0px"
            , style "left" "0px"
            , style "position" "fixed"
            , style "font-size" "20px"
            , style "padding" "10px"
            , style "padding-bottom" "30px"
            , style "text-align" "left"
            ]
            [ div []
                [ div
                    [ style "display" "flex"
                    , style "flex-direction" "row"
                    , style "column-gap" "90%"
                    ]
                    [ text "Citations: ", close buttonclicked ]
                , div [] (citation sys)
                ]
            ]
        ]


citation : System -> List (Html msg)
citation sys =
    case sys of
        Home ->
            []

        None ->
            [ text "[1] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ]

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


close : msg -> Html msg
close buttonclicked =
    div
        [ onClick buttonclicked
        , style "height" "20px"
        , style "width" "20px"
        , style "cursor" "pointer"
        ]
        [ text "⨉" ]
