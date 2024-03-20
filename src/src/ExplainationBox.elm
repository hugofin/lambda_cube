module ExplainationBox exposing (view)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, b, br, div, text, u)
import Html.WithContext.Attributes exposing (style)
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
        , Color.backgroundColor color
        , Color.textColor white
        , style "top" (px y)
        , style "left" (px x)
        , style "position" "absolute"
        , style "font-size" (px 20)
        , style "padding" (px 10)
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
            , text "Through abstraction, application and beta reduction we are able to compute any complex series of terms and end up with a value as our answer."
            , br [] []
            , br [] []
            , text "Untyped Lambda calculus is not a node on the cube, but is fundamental for understanding any of the systems in the Lambda cube."
            ]

        Simple ->
            [ text "The Simple type system allows terms to be defined using other terms.  Types are used to specify what data is given to a function (its domain) and what it outputs (its codomain).  By restricting inputs and defining outputs with simple types, we can make more specific and robust functions" ]

        P ->
            [ text "In the λP system, also named ΛΠ types are allowed to depend on terms. This is as powerful as the simply typed calculus, but can express more detailed types.  The arrow types from previous systems are generalised into Π-types (pi types).  This allows you to encode properties into types, that will be enforced by the type checker, making for a safer program.  Theories from this system were used to develop the formal language 'automath'.  This system is similar to the Edinburgh Logical Framework, 'LF'." ]

        Two ->
            [ b []
                [ text "In this system, parametric polymorphism is used, so that we can define a function once and use it on many different types. To do that, we substitute in a star (*) where the type would normally be in a term."
                , br [] []
                , br [] []
                , text "For instance, a polymorphic identity function would look like  λ α : * . λ x : α . x, where the star can be substituted for any type.  In system F, terms can depend on types. variable type - if α ∈ 𝕍, then α ∈ 𝕋2, arrow type - if σ,τ ∈ 𝕋2, then (σ→τ) ∈ 𝕋2, Π type - if α ∈ 𝕍 and σ ∈ 𝕋2, then (Πα : *. σ) ∈ 𝕋2"
                , br [] []
                , br [] []
                , text "Polymorphic lambda calculus is used as the basis for the programming language 'Haskell'"
                ]
            ]

        W_ ->
            [ text "In system F (pronounced weak omega), types can now depend on other types.  This doesn't make the calculus more powerful, just nicer to use.  This system introduces 'kinds', which are types for type abstractions.  A kind is a combination of stars and arrows, and only show the structure of a type, and not it's content."
            , br [] []
            , br [] []
            , text "For example, a type or constructor would have kind *, and a proper constructor would have kind * -> *"
            , br [] []
            , br [] []
            , text "the type of both a type and a type constructor is '□', pronounced 'sort'. We can put this as *: □ and (* -> *):□"
            ]

        W ->
            [ b [] [ text "In system Fω, kinds can have an arbitrary length. The Higher order polymorphic lambda calculus can be seen as the union of all lower order polymorphic lambda calculi.  In extending system F with type operators, we have a more computationally powerful system." ] ]

        PW_ ->
            [ text "This system has the notion of kinds and dependant types.  This means that we can express more detailed types, as well as abstractions over them using kinds."
            , br [] []
            , br [] []
            , text "P"
            , u [] [ text "ω" ]
            , text " is largely unexplored and unused, as it is as complex as the calculus of constructions without being as powerful."
            ]

        P2 ->
            [ b [] [ text "in second order dependent type theory, terms can bind types or types can bind terms. We can use this to inductively define types, such as the set of all natural numbers. The system is not often used, as it is broadly as powerful as system F while being more complex to use." ] ]

        C ->
            [ text "In the calculus of constructions, all three types are active, so both terms and types can depend on either terms or types.  This system is strongly normalising, meaning that all valid terms will terminate, while still being powerful."
            , br [] []
            , br [] []
            , text "The main application for the Calculus of Construction is for developing proof assistants, such as Coq or Matita.  These are programs which aid the user in developing formal proofs, with CoC being used as it is strongly normalising, and therefore consistent"
            ]


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
            { height = 285
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
            { height = 180
            , width = 770
            , y = -25
            , x = 660
            }

        Two ->
            { height = 380
            , width = 500
            , y = 250
            , x = 750
            }

        W_ ->
            { height = 335
            , width = 500
            , y = 0
            , x = 25
            }

        W ->
            { height = 160
            , width = 500
            , y = 0
            , x = 25
            }

        PW_ ->
            { height = 180
            , width = 500
            , y = 0
            , x = 725
            }

        P2 ->
            { height = 100
            , width = 770
            , y = 25
            , x = 660
            }

        C ->
            { height = 285
            , width = 500
            , y = 0
            , x = 25
            }
