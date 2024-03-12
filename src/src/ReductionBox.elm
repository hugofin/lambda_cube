module ReductionBox exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, br, div, text)
import Html.WithContext.Attributes exposing (style)
import MathML.CReduction
import MathML.SimpleReduction
import MathML.UntypedReduction
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


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
        , Color.backgroundColor white
        , Color.textColor black
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" (px 20)
        , style "border-width" (px 5)
        , style "border-style" "solid"
        , style "text-align" "left"
        , style "padding" (px 10)
        , Color.borderColor color
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
            { height = 605
            , width = 415
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
            , y = -20
            , x = 800
            }

        Two ->
            { height = 180
            , width = 490
            , y = 550
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
            , y = 0
            , x = 25
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
            , y = 30
            , x = 725
            }

        C ->
            { height = 300
            , width = 490
            , y = 450
            , x = 25
            }
