module ReferenceFooter exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, b, div, text)
import Html.WithContext.Attributes exposing (style)
import Html.WithContext.Events exposing (onClick)
import System exposing (System(..))
import Utils exposing (px)


type alias Html msg =
    Html.WithContext.Html Context msg


view : msg -> System -> Html msg
view buttonclicked sys =
    let
        color =
            System.color sys
    in
    div []
        [ div
            [ onClick buttonclicked
            , style "height" "100%"
            , style "width" "100%"
            , Color.backgroundColor steel
            , style "opacity" "70%"
            , style "top" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            ]
            []
        , div
            [ style "width" "100%"
            , Color.backgroundColor color
            , Color.textColor white
            , style "bottom" (px 0)
            , style "left" (px 0)
            , style "position" "fixed"
            , style "font-size" (px 20)
            , style "padding" (px 10)
            , style "padding-bottom" (px 30)
            , style "text-align" "left"
            ]
            [ div []
                [ div
                    [ style "display" "flex"
                    , style "flex-direction" "row"
                    , style "column-gap" "90%"
                    ]
                    [ text "References: ", close buttonclicked ]
                , div
                    [ style "display" "flex"
                    , style "flex-direction" "column"
                    ]
                    (citation sys)
                ]
            ]
        ]


citation : System -> List (Html msg)
citation sys =
    case sys of
        Home ->
            []

        None ->
            [ div [] [ text "[1] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ]
            , div [] [ text "[2] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ]
            ]

        Simple ->
            [ div [] [ text "[1] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ]
            , div [] [ text "[2] - Chris Hankin. 1994. Lambda calculi: a guide for computer scientists. Clarendon Press, Oxford." ]
            ]

        P ->
            [ div [] [ text "[1] - Chris Hankin. 1994. Lambda calculi: a guide for computer scientists. Clarendon Press, Oxford." ] ]

        Two ->
            [ div [] [ text "[1] - Benjamin C. Pierce. 2002. Types and programming languages. MIT Press, Cambridge, Mass." ] ]

        W_ ->
            [ div [] [ text "[1] - Henk Barendregt. 1991. Introduction to generalized type systems. J. Funct. Prog. 1, 2 (April 1991), 125–154. https://doi.org/10.1017/S0956796800020025" ]
            , div [] [ text "[2] - Chris Hankin. 1994. Lambda calculi: a guide for computer scientists. Clarendon Press, Oxford." ]
            ]

        W ->
            [ div [] [ text "[2] - Chris Hankin. 1994. Lambda calculi: a guide for computer scientists. Clarendon Press, Oxford." ] ]

        PW_ ->
            [ div [] [ text "[1] - Henk Barendregt. 1991. Introduction to generalized type systems. J. Funct. Prog. 1, 2 (April 1991), 125–154. https://doi.org/10.1017/S0956796800020025" ] ]

        P2 ->
            [ b [] [ text "[1] - Herman Geuvers. 2001, Induction is not derivable in seond order dependent type theory. LNCS,volume 2044" ]
            , b [] [ text "[2] - Giuseppe Longo, Eugenio Moggi. Constructive natural deduction and its ”omega-set” interpretation. Mathematical Structures in Computer Science, 1991, 1 (2), pp.215-253. \u{FFFF}10.1017/S0960129500001298\u{FFFF}. \u{FFFF}hal-03316282\u{FFFF}" ]
            ]

        C ->
            [ div [] [ text "[2] - Chris Hankin. 1994. Lambda calculi: a guide for computer scientists. Clarendon Press, Oxford." ] ]


close : msg -> Html msg
close buttonclicked =
    b
        [ onClick buttonclicked
        , style "height" (px 20)
        , style "width" (px 20)
        , style "cursor" "pointer"
        ]
        [ text "⨉" ]
