module ExplainationBox exposing (view)

import Color exposing (..)
import Html exposing (Html, br, div, text)
import Html.Attributes exposing (style)
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
        , style "background-color" color
        , style "color" white
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" "20px"
        , style "padding" "10px"
        , style "text-align" "left"
        ]
        (syntax sys)


syntax : System -> List (Html msg)
syntax sys =
    case sys of
        Home ->
            []

        None ->
            [ text "Untyped Lambda calculus is a computational theory that an entire programming system can be represented using only functions." ]

        Simple ->
            [ text "The Simple type system allows terms to be defined using other terms", br [] [], br [] [], text "variable type - if α ∈ 𝕍, then α ∈ 𝕋", br [] [], text "arrow type - if σ,τ ∈ 𝕋, then (σ→τ) ∈ 𝕋" ]

        P ->
            [ text "In the λP system, also named ΛΠ, types are allowed to depend on terms. This is as powerful as the simply typed calculus, but can express more detailed types", text "the arrow types from previous systems are generalised into Π-types.  This allows you to encode properties into types, that will be enforced by the type checker, making for a safer program." ]

        Two ->
            []

        W_ ->
            [ text "in system F"
            , text " (pronounced weak omega), types can now depend on other types.  This doesn't make the calculus more powerful, just nicer to use."
            ]

        W ->
            [ text "In system Fω, kinds can have an arbitrairy length, and it can be seen as the union of all lower order polymorphic lambda calculi.  In extending system F with type operators, we have a more computationally powerful system." ]

        PW_ ->
            [ text "as this system is a combination of types can bind both terms and types.  whats the point of having the kind system if there isnt any arrow types anymore" ]

        P2 ->
            [ text "in the system P2, terms can bind types or types can bind terms.  Presumably this lets you have polymorphic generalised types" ]

        C ->
            [ text "In the calculus of constructions, all three types are active, so both terms and types can depend on either terms or types.  This system is strongly normalising, meaning that all valid terms will terminate, while still being powerful." ]


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
            { height = 200
            , width = 500
            , y = 0
            , x = 25
            }

        Simple ->
            { height = 270
            , width = 500
            , y = 100
            , x = 25
            }

        P ->
            { height = 200
            , width = 500
            , y = 500
            , x = 25
            }

        Two ->
            { height = 10
            , width = 10
            , y = 475
            , x = 25
            }

        W_ ->
            { height = 75
            , width = 500
            , y = -50
            , x = 925
            }

        W ->
            { height = 200
            , width = 500
            , y = 0
            , x = 25
            }

        PW_ ->
            { height = 200
            , width = 500
            , y = 250
            , x = 750
            }

        P2 ->
            { height = 190
            , width = 490
            , y = 400
            , x = 750
            }

        C ->
            { height = 150
            , width = 490
            , y = 0
            , x = 25
            }
