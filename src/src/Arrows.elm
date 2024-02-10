module Arrows exposing (view)

import Color exposing (..)
import Html exposing (Html, b, div)
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

        ( ( top_a, left_a ), turn, ( top_t, left_t, label ) ) =
            case ( property, adding ) of
                ( DependentTypes, False ) ->
                    ( ( 340, 50 )
                    , "rotate(166 10 38) translate(-53 20)"
                    , ( 0, 100, "Remove Dependent Types" )
                    )

                ( DependentTypes, True ) ->
                    ( ( 95, 1000 )
                    , "rotate(-15 10 38) translate(0 40)"
                    , ( 0, -50, "Add Dependent Types" )
                    )

                ( Polymorphism, False ) ->
                    ( ( 550, 562 )
                    , "rotate(90 10 38) translate(-25 0)"
                    , ( 100, 0, "Remove Polymorphism" )
                    )

                ( Polymorphism, True ) ->
                    ( ( -80, 562 )
                    , "rotate(270 10 38) translate(-30 56)"
                    , ( 60, -15, "Add Polymorphism" )
                    )

                ( TypeOperators, False ) ->
                    ( ( 535, 1100 )
                    , "rotate(30 10 38) translate(0 0)"
                    , ( -30, -100, "Remove Type Operators" )
                    )

                ( TypeOperators, True ) ->
                    ( ( 4, 205 )
                    , "rotate(211 10 38) translate(-55 40)"
                    , ( 50, 100, "Add Type Operators" )
                    )
    in
    div
        [ Html.Attributes.style "position" "absolute"
        , Html.Attributes.style "top" (px top_a)
        , Html.Attributes.style "left" (px left_a)
        , Html.Attributes.class "arrow-container"
        ]
        [ svg
            [ onClick (systemClicked newSystem)
            , width "80"
            , height "80"
            , viewBox " 0 0 80 80"
            , Html.Attributes.style "cursor" "pointer"
            ]
            [ Svg.polygon
                [ Svg.Attributes.points "0,0 55,0 76,10 55,20, 0,20"
                , Svg.Attributes.style ("fill:" ++ col)
                , Svg.Attributes.transform turn
                ]
                []
            , if not adding then
                Svg.polygon
                    [ Svg.Attributes.points "5,5 55,5 66,10 55,15, 5,15"
                    , Svg.Attributes.style ("fill:" ++ white)
                    , Svg.Attributes.transform turn
                    ]
                    []

              else
                div [] []
            ]
        , b
            [ Html.Attributes.class "arrow-text"
            , Html.Attributes.style "position" "absolute"
            , Html.Attributes.style "top" (px top_t)
            , Html.Attributes.style "left" (px left_t)
            , Html.Attributes.style "color" col
            ]
            [ text label ]
        ]
