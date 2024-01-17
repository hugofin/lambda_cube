module TermsBox exposing (view)

import Color exposing (..)
import Html exposing (Html, br, div, text)
import Html.Attributes exposing (style)
import MathML.UntypedTerms
import System exposing (System(..))
import Utils exposing (px)


view : System -> Html msg
view sys =
    let
        { height, width, y, x } =
            position sys

        color =
            System.color sys
    in
    div
        [ style "height" (px height)
        , style "width" (px width)
        , style "background-color" white
        , style "color" black
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" "20px"
        , style "border" "5px solid"
        , style "text-align" "left"
        , style "padding" "10px"
        , style "border-color" color
        ]
        (terms sys)


terms : System -> List (Html msg)
terms sys =
    case sys of
        Home ->
            []

        None ->
            [ MathML.UntypedTerms.view ]

        Simple ->
            []

        P ->
            []

        Two ->
            []

        W_ ->
            [ text "this system introduces 'kinds', which are types for type abstractions.  A kind is a combination of stars and arrows, and only show the structure of a type, and not it's content."
            , br [] []
            , text "as an example, a type or constructor would have kind *, and a proper constructor would have kind * -> *"
            ]

        W ->
            [ text "" ]

        PW_ ->
            [ text "" ]

        P2 ->
            [ text "" ]

        C ->
            []


position : System -> { x : Int, y : Int, height : Int, width : Int }
position sys =
    case sys of
        Home ->
            { height = 0
            , width = 0
            , y = 0
            , x = 0
            }

        None ->
            { height = 600
            , width = 400
            , y = 0
            , x = 960
            }

        Simple ->
            { height = 10
            , width = 10
            , y = 300
            , x = 25
            }

        P ->
            { height = 200
            , width = 625
            , y = 450
            , x = 670
            }

        Two ->
            { height = 10
            , width = 10
            , y = 150
            , x = 25
            }

        W_ ->
            { height = 150
            , width = 490
            , y = 95
            , x = 25
            }

        W ->
            { height = 0
            , width = 0
            , y = 0 --225
            , x = 25 --825
            }

        PW_ ->
            { height = 10
            , width = 10
            , y = -100
            , x = 25
            }

        P2 ->
            { height = 10
            , width = 10
            , y = -100
            , x = 725
            }

        C ->
            { height = 10
            , width = 10
            , y = 15
            , x = 25
            }
