module Title exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, div, text, u)
import Html.WithContext.Attributes exposing (style)
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


view : System -> Html msg
view sys =
    case sys of
        Home ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                ]
                [ text "Barendregt's Lambda Cube" ]

        None ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor leaf
                ]
                [ text "UNTYPED LAMBDA CALCULUS" ]

        Simple ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor mauve
                ]
                [ text "SIMPLY TYPED LAMBDA CALCULUS" ]

        P ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor red
                ]
                [ text "LAMBDA-P" ]

        Two ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor green
                ]
                [ text "SYSTEM F, or THE POLYMORPHIC LAMBDA CALCULUS" ]

        W_ ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor sky
                ]
                [ text "SYSTEM F", u [] [ text "ω" ] ]

        W ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor teal
                ]
                [ text "THE HIGHER ORDER POLYMORPHIC LAMBDA CALCULUS" ]

        PW_ ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor purple
                ]
                [ text "P", u [] [ text "ω" ] ]

        P2 ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor yellow
                ]
                [ text "SYSTEM P2" ]

        C ->
            div
                [ style "margin" (px 50)
                , style "font-size" (px 40)
                , style "align-self" "Left"
                , style "font-weight" "bold"
                , Color.textColor steel
                ]
                [ text "CALCULUS OF CONSTRUCTIONS" ]
