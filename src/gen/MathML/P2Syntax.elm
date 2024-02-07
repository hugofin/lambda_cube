
module MathML.P2Syntax exposing (view)

import Html exposing (math, text)
import VirtualDom exposing (nodeNS)
import Html.Attributes exposing (attribute)

-- this code was generated by latex2elm

node = nodeNS "http://www.w3.org/1998/Math/MathML"

view = math [Html.Attributes.attribute "display" "block"] [node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [ node "span" [ attribute "class" "base" ] [ node "span" [ attribute "class" "strut", attribute "style" "height:12em;vertical-align:-5.75em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mtable" ] [ node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.25em;" ] [ node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03148em;" ] [ text "k" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:5.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.25em;" ] [ node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "∗" ] ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Π" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03148em;" ] [ text "k" ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ] ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ] ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "tt" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:5.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.25em;" ] [ node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "kinds" ] ] ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "kind type" ] ] ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "type operator" ] ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "terms" ] ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "variable" ] ] ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "abstraction" ] ] ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "application" ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:5.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "vertical-separator", attribute "style" "height:12em;border-right-width:0.04em;border-right-style:solid;margin:0 -0.02em;vertical-align:-5.75em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.25em;" ] [ node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:5.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.25em;" ] [ node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ] ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "p" ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Π" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "∀" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03148em;" ] [ text "k" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ] ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ], node "span" [ attribute "class" "mopen" ] [ text "[" ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mclose" ] [ text "]" ] ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:5.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:6.25em;" ] [ node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "types" ] ] ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "atomic type" ] ] ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "polymorphic type" ] ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "function" ] ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.9301em;" ] [ node "span" [ attribute "style" "top:-2.355em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord text mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "formation" ] ] ] ] ], node "span" [ attribute "style" "top:-3.144em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord text mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "polymorphic" ] ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.345em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "mclose nulldelimiter" ] [  ] ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "abstraction" ] ] ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "application" ] ] ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:5.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ] ] ] ] ] ]]