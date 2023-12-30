module Arrows exposing (view)

import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import System exposing (System(..))
import Color exposing (..)

type Arrow
    = Hid
    | A
    | B
    | C_
    | D
    | E
    | F
    | G
    | H
    | I
    | J
    | K
    | L


button_arrow : (System -> msg) -> ( Arrow, Bool ) -> Html msg
button_arrow systemClicked ( arrow, forwards ) =
    case arrow of
        Hid ->
            button
                [ style "opacity" "0" ]
                [ text "" ]

        A ->
            button
                [ onClick ( systemClicked (
                    (if forwards then
                            P

                         else
                            Simple
                        )))

                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "225px"

                     else
                        "440px"
                    )
                , style "left"
                    (if forwards then
                        "850px"

                     else
                        "50px"
                    )
                , style "background-color"
                    (if forwards then
                        red

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        red
                    )
                ]
                [ text "" ]

        B ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            PW_

                         else
                            P
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "75px"

                     else
                        "580px"
                    )
                , style "left"
                    (if forwards then
                        "25px"

                     else
                        "900px"
                    )
                , style "background-color"
                    (if forwards then
                        sky

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        sky
                    )
                ]
                [ text "" ]

        C_ ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            W_

                         else
                            Simple
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "75px"

                     else
                        "580px"
                    )
                , style "left"
                    (if forwards then
                        "25px"

                     else
                        "900px"
                    )
                , style "background-color"
                    (if forwards then
                        sky

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        sky
                    )
                ]
                [ text "" ]

        D ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            PW_

                         else
                            W_
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "225px"

                     else
                        "440px"
                    )
                , style "left"
                    (if forwards then
                        "850px"

                     else
                        "50px"
                    )
                , style "background-color"
                    (if forwards then
                        red

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        red
                    )
                ]
                [ text "" ]

        E ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            Two

                         else
                            Simple
                        )
                    )
                , style "height" "75px"
                , style "width" "25px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "0px"

                     else
                        "550px"
                    )
                , style "left" "488px"
                , style "background-color"
                    (if forwards then
                        green

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        green
                    )
                ]
                [ text "" ]

        F ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            P2

                         else
                            P
                        )
                    )
                , style "height" "75px"
                , style "width" "25px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "0px"

                     else
                        "550px"
                    )
                , style "left" "488px"
                , style "background-color"
                    (if forwards then
                        green

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        green
                    )
                ]
                [ text "" ]

        G ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            W

                         else
                            W_
                        )
                    )
                , style "height" "75px"
                , style "width" "25px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "0px"

                     else
                        "550px"
                    )
                , style "left" "488px"
                , style "background-color"
                    (if forwards then
                        green

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        green
                    )
                ]
                [ text "" ]

        H ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            C

                         else
                            PW_
                        )
                    )
                , style "height" "75px"
                , style "width" "25px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "0px"

                     else
                        "550px"
                    )
                , style "left" "488px"
                , style "background-color"
                    (if forwards then
                        green

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        green
                    )
                ]
                [ text "" ]

        I ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            P2

                         else
                            Two
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "225px"

                     else
                        "440px"
                    )
                , style "left"
                    (if forwards then
                        "850px"

                     else
                        "50px"
                    )
                , style "background-color"
                    (if forwards then
                        red

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        red
                    )
                ]
                [ text "" ]

        J ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            C

                         else
                            P2
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "75px"

                     else
                        "580px"
                    )
                , style "left"
                    (if forwards then
                        "25px"

                     else
                        "900px"
                    )
                , style "background-color"
                    (if forwards then
                        sky

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        sky
                    )
                ]
                [ text "" ]

        K ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            W

                         else
                            Two
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "75px"

                     else
                        "580px"
                    )
                , style "left"
                    (if forwards then
                        "25px"

                     else
                        "900px"
                    )
                , style "background-color"
                    (if forwards then
                        sky

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        sky
                    )
                ]
                [ text "" ]

        L ->
            button
                [ onClick
                    (systemClicked
                        (if forwards then
                            C

                         else
                            W
                        )
                    )
                , style "height" "25px"
                , style "width" "75px"
                , style "display" "flex"
                , style "position" "absolute"
                , style "top"
                    (if forwards then
                        "225px"

                     else
                        "440px"
                    )
                , style "left"
                    (if forwards then
                        "850px"

                     else
                        "50px"
                    )
                , style "background-color"
                    (if forwards then
                        red

                     else
                        white
                    )
                , style "border"
                    (if forwards then
                        "0px solid"

                     else
                        "5px solid"
                    )
                , style "border-color"
                    (if forwards then
                        white

                     else
                        red
                    )
                ]
                [ text "" ]


view :  (System -> msg) -> System -> Html msg
view systemClicked system  =
  let (one, two, three) = f system in
  div [] [ button_arrow systemClicked one, button_arrow systemClicked two, button_arrow systemClicked three ]


f system =
    case system of

         Home -> ( ( Hid, False ), ( Hid, False ), ( Hid, False ) ) 

         None -> ( ( Hid, False ), ( Hid, False ), ( Hid, False ) ) 

         Simple -> ( ( A, True ), ( E, True ), ( C_, True ) ) 

         P -> ( ( A, False ), ( F, True ), ( B, True ) ) 

         Two -> ( ( I, True ), ( E, False ), ( K, True ) ) 

         W_ -> ( ( D, True ), ( G, True ), ( C_, False ) ) 

         W -> ( ( L, True ), ( G, False ), ( K, False ) ) 

         PW_ -> ( ( D, False ), ( H, True ), ( B, False ) ) 

         P2 -> ( ( I, False ), ( F, False ), ( J, True ) ) 

         C -> ( ( L, False ), ( H, False ), ( J, False ) ) 
