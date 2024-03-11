module Arrows exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, b, div, html, text, withContext)
import Html.WithContext.Attributes as HtmlAttributes
import Property exposing (Property(..))
import Svg
import Svg.Attributes
import Svg.Events
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


view : (System -> msg) -> System -> Html msg
view systemClicked system =
    case system of
        Home ->
            div [] []

        None ->
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
                    ( ( 390, 50 )
                    , "rotate(166 10 38) translate(-53 20)"
                    , ( 0, 100, "Remove Dependent Types" )
                    )

                ( DependentTypes, True ) ->
                    ( ( 145, 1000 )
                    , "rotate(-15 10 38) translate(0 40)"
                    , ( 0, -50, "Add Dependent Types" )
                    )

                ( Polymorphism, False ) ->
                    ( ( 600, 562 )
                    , "rotate(90 10 38) translate(-25 0)"
                    , ( 100, 0, "Remove Polymorphism" )
                    )

                ( Polymorphism, True ) ->
                    ( ( -30, 562 )
                    , "rotate(270 10 38) translate(-30 56)"
                    , ( 60, -15, "Add Polymorphism" )
                    )

                ( TypeOperators, False ) ->
                    ( ( 585, 1100 )
                    , "rotate(30 10 38) translate(0 0)"
                    , ( -30, -100, "Remove Type Operators" )
                    )

                ( TypeOperators, True ) ->
                    ( ( 54, 205 )
                    , "rotate(211 10 38) translate(-55 40)"
                    , ( 50, 100, "Add Type Operators" )
                    )
    in
    withContext
        (\context ->
            div
                [ HtmlAttributes.style "position" "absolute"
                , HtmlAttributes.style "top" (px top_a)
                , HtmlAttributes.style "left" (px left_a)
                , HtmlAttributes.class "arrow-container"
                ]
                [ html <|
                    Svg.svg
                        [ Svg.Events.onClick (systemClicked newSystem)
                        , Svg.Attributes.width "80"
                        , Svg.Attributes.height "80"
                        , Svg.Attributes.viewBox " 0 0 80 80"
                        , Svg.Attributes.cursor "pointer"
                        ]
                        [ Svg.polygon
                            [ Svg.Attributes.points "0,0 55,0 76,10 55,20, 0,20"
                            , Svg.Attributes.fill (Color.colorForTheme context.theme col)
                            , Svg.Attributes.transform turn
                            ]
                            []
                        , if not adding then
                            Svg.polygon
                                [ Svg.Attributes.points "5,5 55,5 66,10 55,15, 5,15"
                                , Svg.Attributes.fill "white"
                                , Svg.Attributes.transform turn
                                ]
                                []

                          else
                            Svg.polygon [] []
                        ]
                , b
                    [ HtmlAttributes.class "arrow-text"
                    , HtmlAttributes.style "position" "absolute"
                    , HtmlAttributes.style "top" (px top_t)
                    , HtmlAttributes.style "left" (px left_t)
                    , Color.textColor col
                    ]
                    [ text label ]
                ]
        )
