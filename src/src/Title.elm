module Title exposing (view)

import Color exposing (..)
import Html exposing (Html, div, text, u)
import Html.Attributes exposing (style)
import System exposing (System(..))


view : System -> Html msg
view sys =
    case sys of
        Home ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                ]
                [ text "Barendregt's Lambda Cube" ]

        None ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" leaf
                ]
                [ text "UNTYPED LAMBDA CALCULUS" ]

        Simple ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" mauve
                ]
                [ text "SIMPLY TYPED LAMBDA CALCULUS" ]

        P ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" red
                ]
                [ text "LAMBDA-P" ]

        Two ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" green
                ]
                [ text "SYSTEM F, or THE POLYMORPHIC LAMBDA CALCULUS" ]

        W_ ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" sky
                ]
                [ text "SYSTEM F", u [] [ text "ω" ] ]

        W ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" teal
                ]
                [ text "THE HIGHER ORDER POLYMORPHIC LAMBDA CALCULUS" ]

        PW_ ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" purple
                ]
                [ text "P", u [] [ text "ω" ] ]

        P2 ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" yellow
                ]
                [ text "SYSTEM P2" ]

        C ->
            div
                [ style "margin" "50px"
                , style "font-size" "40px"
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , style "color" steel
                ]
                [ text "CALCULUS OF CONSTRUCTIONS" ]
