module ReductionBox exposing (view)

import Color exposing (..)
import Html exposing (Html, br, div, text)
import Html.Attributes exposing (style)
import MathML.CReduction
import MathML.SimpleReduction
import MathML.UntypedReduction
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
        , style "overflow" "auto"
        ]
        (terms sys)


terms : System -> List (Html msg)
terms sys =
    case sys of
        Home ->
            []

        None ->
            [ MathML.UntypedReduction.view ]

        Simple ->
            [ text "Beta reduction works in a similar way to the untyped calculus, with the expansion that a redex can have a type", br [] [], br [] [], MathML.SimpleReduction.view ]

        P ->
            []

        Two ->
            [ text "In the polymorphic calculus, the rules for β reduction are the same as in simply typed calculus.", br [] [], br [] [], MathML.SimpleReduction.view ]

        W_ ->
            []

        W ->
            [ text "" ]

        PW_ ->
            [ text "" ]

        P2 ->
            [ text "" ]

        C ->
            [ MathML.CReduction.view ]


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
            { height = 300
            , width = 490
            , y = 400
            , x = 25
            }

        P ->
            { height = 0
            , width = 0
            , y = 520
            , x = 100
            }

        Two ->
            { height = 230
            , width = 490
            , y = 500
            , x = 25
            }

        W_ ->
            { height = 0
            , width = 0
            , y = 0
            , x = 25
            }

        W ->
            { height = 0
            , width = 0
            , y = 0 --225
            , x = 25 --825
            }

        PW_ ->
            { height = 0
            , width = 0
            , y = 0
            , x = 800
            }

        P2 ->
            { height = 10
            , width = 10
            , y = -100
            , x = 725
            }

        C ->
            { height = 300
            , width = 490
            , y = 425
            , x = 25
            }
