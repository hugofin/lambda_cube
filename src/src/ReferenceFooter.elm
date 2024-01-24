module ReferenceFooter exposing (view)

import Color exposing (..)
import Html exposing (Html, b, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import System exposing (System(..))
import Utils exposing (px)


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
            , style "top" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            ]
            []
        , div
            [ style "width" "100%"
            , style "background-color" color
            , style "color" white
            , style "bottom" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            , style "font-size" (px 20)
            , style "padding" (px 10)
            , style "padding-bottom" (px 30)
            , style "text-align" "left"
            ]
            [ div []
                [ div
                    [ style "display" "flex"
                    , style "flex-direction" "row"
                    , style "column-gap" "90%"
                    ]
                    [ text "References: ", close buttonclicked ]
                , div
                    [ style "display" "flex"
                    , style "flex-direction" "column"
                    ]
                    (citation sys)
                ]
            ]
        ]


citation : System -> List (Html msg)
citation sys =
    case sys of
        Home ->
            []

        None ->
            [ div [] [ text "[1] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ]
            , div [] [ text "[2] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ]
            ]

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
    b
        [ onClick buttonclicked
        , style "height" (px 20)
        , style "width" (px 20)
        , style "cursor" "pointer"
        ]
        [ text "⨉" ]
