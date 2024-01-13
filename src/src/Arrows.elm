module Arrows exposing (view)

import Color exposing (..)
import Html exposing (Html, div)
import Html.Attributes
import Html.Events exposing (onClick)
import Property exposing (Property(..))
import Svg exposing (..)
import Svg.Attributes exposing (..)
import System exposing (System(..))
import Utils exposing (px)


view : (System -> msg) -> System -> Html msg
view systemClicked system =
    case system of
        Home ->
            div [] []

        None ->
            div
                [ onClick (systemClicked Simple)
                , Html.Attributes.style "position" "absolute"
                , Html.Attributes.style "top" (px 0)
                , Html.Attributes.style "left" (px 730)
                , Html.Attributes.style "display" "flex"
                , Html.Attributes.style "flex-direction" "row"
                ]
                [ text "add the simple type system!"
                , svg
                    [ width "120"
                    , height "120"
                    , viewBox " 0 0 80 80"
                    ]
                    [ Svg.polygon
                        [ Svg.Attributes.points "0,0 55,0 76,10 55,20, 0,20"
                        , Svg.Attributes.style "fill:#c0c0c0"
                        , Svg.Attributes.transform "rotate(330 10 38) translate(15 10)"
                        ]
                        []
                    ]
                ]

        sys ->
            div [] <|
                List.map (svg_arrow systemClicked sys)
                    [ DependentTypes, Polymorphism, TypeOperators ]


svg_arrow : (System -> msg) -> System -> Property -> Html msg
svg_arrow systemClicked system property =
    let
        newSystem =
            System.toggleProperty property system

        adding =
            System.hasProperty property newSystem

        col =
            Property.color property

        ( top, left, turn ) =
            case ( property, adding ) of
                ( DependentTypes, False ) ->
                    ( 340, 50, "rotate(166 10 38) translate(-53 20)" )

                ( DependentTypes, True ) ->
                    ( 95, 1000, "rotate(-15 10 38) translate(0 40)" )

                ( Polymorphism, False ) ->
                    ( 550, 562, "rotate(90 10 38) translate(-25 0)" )

                ( Polymorphism, True ) ->
                    ( -80, 562, "rotate(270 10 38) translate(-30 56)" )

                ( TypeOperators, False ) ->
                    ( 535, 1100, "rotate(30 10 38) translate(0 0)" )

                ( TypeOperators, True ) ->
                    ( 4, 205, "rotate(211 10 38) translate(-55 40)" )
    in
    svg
        [ onClick (systemClicked newSystem)
        , width "80"
        , height "80"
        , viewBox " 0 0 80 80"
        , Html.Attributes.style "position" "absolute"
        , Html.Attributes.style "top" (px top)
        , Html.Attributes.style "left" (px left)
        ]
        [ Svg.polygon
            [ Svg.Attributes.points "0,0 55,0 76,10 55,20, 0,20"
            , Svg.Attributes.style ("fill:" ++ col)
            , Svg.Attributes.transform turn
            ]
            []
        ]
