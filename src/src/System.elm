module System exposing (System(..), color, hasProperty, toString, toggleProperty)

import Color exposing (..)
import Context exposing (Context)
import Html.WithContext exposing (Html, b, text, u)
import Property exposing (..)


type alias Html msg =
    Html.WithContext.Html Context msg


type System
    = Home
    | None
    | Simple
    | P
    | Two
    | W_
    | W
    | PW_
    | P2
    | C


color : System -> Color
color sys =
    case sys of
        None ->
            leaf

        Simple ->
            mauve

        P ->
            red

        Two ->
            green

        W_ ->
            sky

        W ->
            teal

        PW_ ->
            purple

        P2 ->
            yellow

        C ->
            steel

        Home ->
            steel


toString : System -> Html msg
toString sys =
    case sys of
        None ->
            b [] [ text "untyped" ]

        Simple ->
            b [] [ text "λ→" ]

        P ->
            b [] [ text "P" ]

        Two ->
            b [] [ text "2" ]

        W_ ->
            b [] [ u [] [ text "ω" ] ]

        W ->
            b [] [ text "ω" ]

        PW_ ->
            b [] [ text "P", u [] [ text "ω" ] ]

        P2 ->
            b [] [ text "P2" ]

        C ->
            b [] [ text "C" ]

        Home ->
            b [] [ text "home" ]


toggleProperty : Property -> System -> System
toggleProperty property system =
    case ( system, property ) of
        ( None, _ ) ->
            None

        ( Home, _ ) ->
            Home

        ( Simple, DependentTypes ) ->
            P

        ( Simple, Polymorphism ) ->
            Two

        ( Simple, TypeOperators ) ->
            W_

        ( P, DependentTypes ) ->
            Simple

        ( P, Polymorphism ) ->
            P2

        ( P, TypeOperators ) ->
            PW_

        ( Two, DependentTypes ) ->
            P2

        ( Two, Polymorphism ) ->
            Simple

        ( Two, TypeOperators ) ->
            W

        ( W_, DependentTypes ) ->
            PW_

        ( W_, Polymorphism ) ->
            W

        ( W_, TypeOperators ) ->
            Simple

        ( W, DependentTypes ) ->
            C

        ( W, Polymorphism ) ->
            W_

        ( W, TypeOperators ) ->
            Two

        ( PW_, DependentTypes ) ->
            W_

        ( PW_, Polymorphism ) ->
            C

        ( PW_, TypeOperators ) ->
            P

        ( P2, DependentTypes ) ->
            Two

        ( P2, Polymorphism ) ->
            P

        ( P2, TypeOperators ) ->
            C

        ( C, DependentTypes ) ->
            W

        ( C, Polymorphism ) ->
            PW_

        ( C, TypeOperators ) ->
            P2


hasProperty : Property -> System -> Bool
hasProperty property system =
    case ( system, property ) of
        ( None, _ ) ->
            False

        ( Home, _ ) ->
            False

        ( Simple, DependentTypes ) ->
            False

        ( Simple, Polymorphism ) ->
            False

        ( Simple, TypeOperators ) ->
            False

        ( P, DependentTypes ) ->
            True

        ( P, Polymorphism ) ->
            False

        ( P, TypeOperators ) ->
            False

        ( Two, DependentTypes ) ->
            False

        ( Two, Polymorphism ) ->
            True

        ( Two, TypeOperators ) ->
            False

        ( W_, DependentTypes ) ->
            False

        ( W_, Polymorphism ) ->
            False

        ( W_, TypeOperators ) ->
            True

        ( W, DependentTypes ) ->
            False

        ( W, Polymorphism ) ->
            True

        ( W, TypeOperators ) ->
            True

        ( PW_, DependentTypes ) ->
            True

        ( PW_, Polymorphism ) ->
            False

        ( PW_, TypeOperators ) ->
            True

        ( P2, DependentTypes ) ->
            True

        ( P2, Polymorphism ) ->
            True

        ( P2, TypeOperators ) ->
            False

        ( C, DependentTypes ) ->
            True

        ( C, Polymorphism ) ->
            True

        ( C, TypeOperators ) ->
            True
