
module MathML.SimpleRules exposing (view)

import Html exposing (math, text)
import VirtualDom exposing (nodeNS)
import Html.Attributes exposing (attribute)

-- this code was generated by latex2elm

node = nodeNS "http://www.w3.org/1998/Math/MathML"

view = math [Html.Attributes.attribute "display" "block"] [node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [ node "span" [ attribute "class" "base" ] [ node "span" [ attribute "class" "strut", attribute "style" "height:13.854em;vertical-align:-6.677em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mtable" ] [ node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:7.177em;" ] [ node "span" [ attribute "style" "top:-9.177em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-7.191em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-5.151em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.415em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-1.375em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:0.361em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:2.401em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.677em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:7.177em;" ] [ node "span" [ attribute "style" "top:-9.177em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen" ] [ text "(" ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.1132em;" ] [ text "τ" ], node "span" [ attribute "class" "mclose" ] [ text ")" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "∈" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathbb" ] [ text "T" ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mpunct" ] [ text "," ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.1667em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.1132em;" ] [ text "τ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "∈" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathbb" ] [ text "T" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.936em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:-5.151em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Γ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "⊢" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "∈" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ text "Γ" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.686em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:-1.375em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Γ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "⊢" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "MN" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.1132em;" ] [ text "τ" ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Γ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "⊢" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "M" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.1132em;" ] [ text "τ" ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord" ] [ text "Γ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "⊢" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "N" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.686em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:2.401em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Γ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "⊢" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "M" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.1132em;" ] [ text "τ" ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Γ" ], node "span" [ attribute "class" "mpunct" ] [ text "," ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.1667em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03588em;" ] [ text "σ" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "⊢" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "M" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.1132em;" ] [ text "τ" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.686em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.677em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:7.177em;" ] [ node "span" [ attribute "style" "top:-9.177em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "type of functions" ] ] ] ], node "span" [ attribute "style" "top:-5.151em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "variable" ] ] ] ], node "span" [ attribute "style" "top:-1.375em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "abstraction" ] ] ] ], node "span" [ attribute "style" "top:2.401em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "application" ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.677em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ] ] ] ] ] ]]