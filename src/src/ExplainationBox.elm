module ExplainationBox exposing (view)

import Color exposing (..)
import Html exposing (Html, b, br, div, text)
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
            [ text "Untyped Lambda calculus is a computational theory that an entire programming system can be represented using only functions."
            , br [] []
            , br [] []
            , text " Through abstraction, application and beta reduction we are able to compute any complex series of terms and end up with a value as our answer."
            ]

        Simple ->
            [ text "The Simple type system allows terms to be defined using other terms.  Types are used to specify what data is given to a function (its domain) and what it outputs (its codomain).  Be restricting inputs and defining outputs with simple types, we can make more specific and robust functions" ]

        P ->
            [ text "In the λP system, also named ΛΠ, types are allowed to depend on terms. This is as powerful as the simply typed calculus, but can express more detailed types.  The arrow types from previous systems are generalised into Π-types.  This allows you to encode properties into types, that will be enforced by the type checker, making for a safer program." ]

        Two ->
            [ b []
                [ text "In this system, parametric polymorphism is used, so that we can define a function once and use it on many different types. To do that, we substitute in a star (*) where the type would normally be in a term."
                , br [] []
                , br [] []
                , text "For instance, a polymorphic identity function would look like  λ α : * . λ x : α . x, where the star can be substituted for any type.  In system F, terms can depend on types. variable type - if α ∈ 𝕍, then α ∈ 𝕋2, arrow type - if σ,τ ∈ 𝕋2, then (σ→τ) ∈ 𝕋2, Π type - if α ∈ 𝕍 and σ ∈ 𝕋2, then (Πα : *. σ) ∈ 𝕋2"
                ]
            ]

        W_ ->
            [ text "in system F"
            , text " (pronounced weak omega), types can now depend on other types.  This doesn't make the calculus more powerful, just nicer to use."
            , text "this system introduces 'kinds', which are types for type abstractions.  A kind is a combination of stars and arrows, and only show the structure of a type, and not it's content."
            , br [] []
            , text "as an example, a type or constructor would have kind *, and a proper constructor would have kind * -> *"
            ]

        W ->
            [ b [] [ text "In system Fω, kinds can have an arbitrairy length. The Higher order polymorphic lambda calculus can be seen as the union of all lower order polymorphic lambda calculi.  In extending system F with type operators, we have a more computationally powerful system." ] ]

        PW_ ->
            [ text "This system has type operators and types that can depend on terms.  This means that we can express the more detailed types, and we can have type abstactions using kinds." ]

        P2 ->
            [ b [] [ text "in the system P2 (standing for second order predicate logic), terms can bind types or types can bind terms.  " ] ]

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
            { height = 160
            , width = 500
            , y = 200
            , x = 25
            }

        P ->
            { height = 200
            , width = 500
            , y = 500
            , x = 25
            }

        Two ->
            { height = 300
            , width = 500
            , y = 150
            , x = 25
            }

        W_ ->
            { height = 210
            , width = 500
            , y = 0
            , x = 25
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
            , y = -100
            , x = 25
            }

        P2 ->
            { height = 190
            , width = 750
            , y = -100
            , x = 725
            }

        C ->
            { height = 150
            , width = 490
            , y = 0
            , x = 25
            }
