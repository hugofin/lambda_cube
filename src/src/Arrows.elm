module Arrows exposing (view)

import Color exposing (..)
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Property exposing (Property(..))
import System exposing (System(..))
import Utils exposing (px)


view : (System -> msg) -> System -> Html msg
view systemClicked system =
    case system of
        Home ->
            div [] []

        None ->
            div [] []

        sys ->
            div [] <|
                List.map (button_arrow systemClicked sys)
                    [ DependentTypes, Polymorphism, TypeOperators ]


button_arrow : (System -> msg) -> System -> Property -> Html msg
button_arrow systemClicked system property =
    let
        newSystem =
            System.toggleProperty property system

        adding =
            System.hasProperty property newSystem

        col =
            Property.color property

        ( height, width ) =
            case property of
                Polymorphism ->
                    ( 75, 25 )

                _ ->
                    ( 25, 75 )

        ( y, x ) =
            case ( property, adding ) of
                ( DependentTypes, False ) ->
                    ( 440, 50 )

                ( DependentTypes, True ) ->
                    ( 225, 850 )

                ( Polymorphism, False ) ->
                    ( 550, 488 )

                ( Polymorphism, True ) ->
                    ( 0, 488 )

                ( TypeOperators, False ) ->
                    ( 580, 900 )

                ( TypeOperators, True ) ->
                    ( 75, 25 )
    in
    button
        [ onClick (systemClicked newSystem)
        , style "height" (px height)
        , style "width" (px width)
        , style "display" "flex"
        , style "position" "absolute"
        , style "top" (px y)
        , style "left" (px x)
        , style "background-color"
            (if adding then
                col

             else
                white
            )
        , style "border-style" "solid"
        , style "border-width" "5px"
        , style "border-color" col
        ]
        [ text "" ]
