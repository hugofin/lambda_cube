module TermsBox exposing (view)

import Color exposing (..)
import Html exposing (Html, b, br, div, sub, sup, text, u)
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
            [ b [] [ text "Derivation Rules:" ]
            , br [] []
            , text "variable - Γ ⊢ x : σ  if x : σ ∈ Γ"
            , br [] []
            , text "application - "
            , u [] [ text "Γ ⊢ M : σ → τ ⠀⠀ Γ ⊢ N : σ" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : τ"
            , br [] []
            , text "abstraction - "
            , u [] [ text "⠀⠀Γ,x : σ ⊢ M : τ⠀⠀" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : σ . M:σ→τ"
            ]

        P ->
            [ b [] [ text "Derivation Rules:" ]
            , br [] []
            , text "sort - 0 ⊢ * : ☐"
            , br [] []
            , text "variable"
            , u [] [ text "⠀⠀⠀Γ ⊢ A : s⠀⠀⠀" ]
            , text "⠀⠀if x ∉Γ "
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀Γ,x : A ⊢ x : A"
            , br [] []
            , text "weak - "
            , u [] [ text "Γ ⊢ A : B ⠀⠀ Γ ⊢ C : s" ]
            , text "⠀⠀if x ∉Γ "
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
            , br [] []
            , text "formation - "
            , u [] [ text "Γ ⊢ A : * ⠀⠀ Γ,x : A ⊢ B : s" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ Πx : A. B : s"
            , br [] []
            , text "appliaction - "
            , u [] [ text "Γ ⊢ M : Πx :A . B ⠀⠀ Γ ⊢ N : A" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B[x:= N]"
            , br [] []
            , text "abstraction - "
            , u [] [ text "⠀⠀Γ,x : A ⊢ M : B⠀⠀Γ ⊢ Πx :A . B : s" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : A . M):Πx:A . B"
            , br [] []
            , text "conversion - "
            , u [] [ text "⠀⠀Γ ⊢ A : B⠀⠀Γ ⊢ B' : s" ]
            , text "⠀⠀if B ="
            , sub [] [ text "β" ]
            , text "B'"
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A : B'"
            ]

        Two ->
            [ b [] [ text "Derivation Rules:" ]
            , br [] []
            , text "variable - Γ ⊢ x : σ  if Γ is λ2 context, and x : σ ∈ Γ"
            , br [] []
            , text "formation - Γ ⊢ B : *  if Γ is λ2 context, B ∈ 𝕋2, and every free type variable in B is in Γ"
            , br [] []
            , text "application 1 - "
            , u [] [ text "Γ ⊢ M : σ → τ ⠀⠀ Γ ⊢ N : σ" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : τ"
            , br [] []
            , text "application 2 - "
            , u [] [ text "Γ ⊢ M : (Πα : * .A ) ⠀⠀ Γ ⊢ B : *" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MB : A[α := B]"
            , br [] []
            , text "abstraction 1 - "
            , u [] [ text "⠀⠀Γ,x : σ ⊢ M : τ⠀⠀" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : σ . M:σ→τ"
            , br [] []
            , text "abstraction 2 - "
            , u [] [ text "⠀⠀Γ,α : * ⊢ M : A⠀⠀" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ (λ  α : * . M):(Πα : * .A )"
            ]

        W_ ->
            [ text "The set of kinds (𝕂) is as follows:"
            , br [] []
            , text "Type Kind  - * ∈ 𝕂 "
            , br [] []
            , text "Abstraction Kind  - (* → *)  ∈ 𝕂 "
            , br [] []
            , b [] [ text "Derivation Rules:" ]
            , br [] []
            , text "sort - 0 ⊢ * : ☐"
            , br [] []
            , text "variable"
            , u [] [ text "⠀⠀⠀Γ ⊢ A : s⠀⠀⠀" ]
            , text "⠀⠀if x ∉Γ "
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀Γ,x : A ⊢ x : A"
            , br [] []
            , text "weak - "
            , u [] [ text "Γ ⊢ A : B ⠀⠀ Γ ⊢ C : s" ]
            , text "⠀⠀if x ∉Γ "
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
            , br [] []
            , text "formation - "
            , u [] [ text "Γ ⊢ A : s ⠀⠀ Γ ⊢ B : s" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A → B : s"
            , br [] []
            , text "appliaction - "
            , u [] [ text "Γ ⊢ M : A → B ⠀⠀ Γ ⊢ N : A" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
            , br [] []
            , text "abstraction - "
            , u [] [ text "⠀⠀Γ,x : A ⊢ M : B⠀⠀Γ ⊢ A → B : s" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : A . M):A → B"
            , br [] []
            , text "conversion - "
            , u [] [ text "⠀⠀Γ ⊢ A : B⠀⠀Γ ⊢ B' : s" ]
            , text "⠀⠀if B ="
            , sub [] [ text "β" ]
            , text "B'"
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A : B'"
            ]

        W ->
            [ text "" ]

        PW_ ->
            [ text "" ]

        P2 ->
            [ text "" ]

        C ->
            [ b [] [ text "Derivation Rules:" ]
            , br [] []
            , text "sort - 0 ⊢ * : ☐"
            , br [] []
            , text "variable"
            , u [] [ text "⠀⠀⠀Γ ⊢ A : s⠀⠀⠀" ]
            , text "⠀⠀if x ∉Γ "
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀Γ,x : A ⊢ x : A"
            , br [] []
            , br [] []
            , text "weak - "
            , u [] [ text "Γ ⊢ A : B ⠀⠀ Γ ⊢ C : s" ]
            , text "⠀⠀if x ∉Γ "
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B"
            , br [] []
            , text "formation - "
            , u [] [ text "Γ ⊢ A : s", sub [] [ text "1" ], text " ⠀⠀ Γ,x : A ⊢ B : s" ]
            , sub [] [ text "2" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ Πx : A. B : s"
            , sub [] [ text "2" ]
            , br [] []
            , text "appliaction - "
            , u [] [ text "Γ ⊢ M : Πx :A . B ⠀⠀ Γ ⊢ N : A" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ MN : B[x:= N]"
            , br [] []
            , text "abstraction - "
            , u [] [ text "⠀⠀Γ,x : A ⊢ M : B⠀⠀Γ ⊢ Πx :A . B : s" ]
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ λ  x : A . M):Πx:A . B"
            , br [] []
            , text "conversion - "
            , u [] [ text "⠀⠀Γ ⊢ A : B⠀⠀Γ ⊢ B' : s" ]
            , text "⠀⠀if B ="
            , sub [] [ text "β" ]
            , text "B'"
            , br [] []
            , text "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Γ ⊢ A : B'"
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
            { height = 190
            , width = 490
            , y = 50
            , x = 425
            }

        Simple ->
            { height = 270
            , width = 600
            , y = 375
            , x = 425
            }

        P ->
            { height = 375
            , width = 490
            , y = 225
            , x = 650
            }

        Two ->
            { height = 490
            , width = 600
            , y = 300
            , x = 575
            }

        W_ ->
            { height = 460
            , width = 550
            , y = 210
            , x = -125
            }

        W ->
            { height = 190
            , width = 490
            , y = 525
            , x = -125
            }

        PW_ ->
            { height = 190
            , width = 490
            , y = 0
            , x = 625
            }

        P2 ->
            { height = 190
            , width = 490
            , y = 150
            , x = 625
            }

        C ->
            { height = 400
            , width = 490
            , y = 15
            , x = 775
            }
