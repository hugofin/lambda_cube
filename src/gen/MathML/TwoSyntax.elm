
module MathML.TwoSyntax exposing (view)

import Html exposing (math, text)
import VirtualDom exposing (nodeNS)
import Html.Attributes exposing (attribute)

-- this code was generated by latex2elm

node = nodeNS "http://www.w3.org/1998/Math/MathML"

view = math [Html.Attributes.attribute "display" "block"] [node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [ node "span" [ attribute "class" "base" ] [ node "span" [ attribute "class" "strut", attribute "style" "height:21em;vertical-align:-10.25em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mtable" ] [ node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:10.75em;" ] [ node "span" [ attribute "style" "top:-12.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03148em;" ] [ text "k" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-11.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-9.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:10.25em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:10.75em;" ] [ node "span" [ attribute "style" "top:-12.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-11.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "∗" ] ] ], node "span" [ attribute "style" "top:-9.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ] ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "tt" ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03148em;" ] [ text "k" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ] ] ], node "span" [ attribute "style" "top:3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "p" ] ] ], node "span" [ attribute "style" "top:5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ] ] ], node "span" [ attribute "style" "top:6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.03148em;" ] [ text "k" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:10.25em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:10.75em;" ] [ node "span" [ attribute "style" "top:-12.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "kinds" ] ] ] ], node "span" [ attribute "style" "top:-11.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "kind type" ] ] ] ], node "span" [ attribute "style" "top:-9.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-8.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "terms" ] ] ] ], node "span" [ attribute "style" "top:-6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "variable" ] ] ] ], node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "abstraction" ] ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "application" ] ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "term abstraction" ] ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "types" ] ] ] ], node "span" [ attribute "style" "top:2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "atomic type" ] ] ] ], node "span" [ attribute "style" "top:3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "polymorphic type" ] ] ] ], node "span" [ attribute "style" "top:5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "type of a function" ] ] ] ], node "span" [ attribute "style" "top:6.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "abstraction" ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:10.25em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ] ] ] ] ] ]]
