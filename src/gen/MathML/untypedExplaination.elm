module MathML.UntypedExplaination exposing (view)

import Html exposing (math)
import Html.Attributes exposing (attribute)
import VirtualDom exposing (nodeNS)



-- this code was generated by latex2elm


node =
    nodeNS "http://www.w3.org/1998/Math/MathML"


view =
    math [ Html.Attributes.attribute "display" "block" ] [ node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [] ] ]
