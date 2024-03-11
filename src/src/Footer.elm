module Footer exposing (..)

import Color exposing (..)
import Context exposing (Context, Theme(..))
import Html.WithContext exposing (Html, b, br, div, text)
import Html.WithContext.Attributes exposing (style)
import Html.WithContext.Events exposing (onClick)
import MathML.Glossary
import MathML.Guide
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


type Footer
    = Closed
    | Settings
    | Guide


view : msg -> msg -> msg -> Footer -> Bool -> Theme -> Html msg
view togglemult toggletheme exitclicked mode reducedMotion theme =
    if mode == Guide then
        div
            [ style "width" "100%"
            , Color.backgroundColor steel
            , Color.textColor white
            , style "bottom" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            , style "font-size" (px 20)
            , style "padding" (px 10)
            , style "padding-bottom" (px 30)
            , style "text-align" "left"
            , style "display" "flex"
            , style "flex-direction" "row"
            , style "column-gap" "5%"
            ]
            [ div
                []
                [ MathML.Guide.view ]
            , div
                [ style "height" (px 200)
                , style "width" (px 800)
                , style "overflow" "auto"
                ]
                [ MathML.Glossary.view ]
            , div
                [ --style "position" "fixed"
                  --, style "left" "78%"
                  --, style "top" "83%"
                  style "width" (px 300)
                ]
                [ br [] [], text "beginners are recommended to start at with the untyped calculus, before moving on to simply typed calculus." ]
            , div
                [ style "position" "fixed"
                , style "left" "97%"
                ]
                [ close exitclicked ]
            ]

    else
        div
            [ style "width" "100%"
            , style "height" (px 100)
            , Color.backgroundColor steel
            , Color.textColor white
            , style "bottom" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            , style "font-size" (px 20)
            , style "padding" (px 30)
            , style "padding-right" (px 10)
            , style "text-align" "left"
            , style "display" "flex"
            , style "flex-direction" "row"
            , style "column-gap" "5%"
            ]
            [ div
                [ onClick togglemult
                , Color.backgroundColor
                    (if reducedMotion then
                        white

                     else
                        steel
                    )
                , Color.textColor
                    (if reducedMotion then
                        steel

                     else
                        white
                    )
                , style "width" (px 250)
                , style "height" (px 100)
                , style "display" "flex"
                , style "flex-direction" "row"
                , style "align-items" "center"
                , style "justify-content" "center"
                , style "border-style" "solid"
                , style "cursor" "pointer"
                , style "border-width" (px 3)
                ]
                [ if reducedMotion then
                    text "turn off reduced motion"

                  else
                    text "turn on reduced motion"
                ]
            , div
                [ onClick toggletheme
                , Color.backgroundColor
                    (if theme == Normal then
                        steel

                     else
                        white
                    )
                , Color.textColor
                    (if theme == Normal then
                        white

                     else
                        steel
                    )
                , style "width" (px 250)
                , style "height" (px 100)
                , style "display" "flex"
                , style "flex-direction" "row"
                , style "align-items" "center"
                , style "cursor" "pointer"
                , style "justify-content" "center"
                , style "border-style" "solid"
                , style "border-width" (px 3)
                ]
                [ if theme == Normal then
                    text "turn colour blind mode on"

                  else
                    text "turn colour blind mode off"
                ]
            , div
                [ style "position" "fixed"
                , style "left" "97%"
                ]
                [ close exitclicked ]
            ]


close : msg -> Html msg
close buttonclicked =
    b
        [ onClick buttonclicked
        , style "height" (px 20)
        , style "width" (px 20)
        , style "cursor" "pointer"
        ]
        [ text "⨉" ]


guide : msg -> Html msg
guide buttonclicked =
    div
        [ onClick buttonclicked
        , style "height" (px 30)
        , style "width" (px 140)
        , style "cursor" "pointer"
        , Color.backgroundColor white
        , Color.textColor black
        , style "font-size" (px 30)
        , style "border-width" (px 0)
        , style "border-top-style" "solid"
        , style "border-top-width" (px 2)
        , style "font-size" (px 20)
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ text "guide" ]


settings : msg -> Html msg
settings buttonclicked =
    div
        [ onClick buttonclicked
        , style "height" (px 30)
        , style "width" (px 140)
        , style "cursor" "pointer"
        , Color.backgroundColor white
        , Color.textColor black
        , style "font-size" (px 30)
        , style "border-width" (px 0)
        , style "font-size" (px 20)
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ text "settings" ]
