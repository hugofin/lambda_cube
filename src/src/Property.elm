module Property exposing (..)

import Color exposing (..)


type Property
    = DependentTypes
    | Polymorphism
    | TypeOperators


color : Property -> String
color prop =
    case prop of
        DependentTypes ->
            red

        Polymorphism ->
            green

        TypeOperators ->
            sky
