
module MathML.SimpleSyntax exposing (view)

import Html exposing (text, node)
import Html.Attributes exposing (attribute)

-- this code was generated by latex2elm

view = node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [ node "span" [ attribute "class" "base" ] [ node "span" [ attribute "class" "strut", attribute "style" "height:6em;vertical-align:-2.75em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mtable" ] [ node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:3.25em;" ] [ node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:2.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:3.25em;" ] [ node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal" ] [ text "t" ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "tt" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:2.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:3.25em;" ] [ node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "terms" ] ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "variable" ] ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "abstraction" ] ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "application" ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:2.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "vertical-separator", attribute "style" "height:6em;border-right-width:0.04em;border-right-style:solid;margin:0 -0.02em;vertical-align:-2.75em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:3.25em;" ] [ node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "::=" ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:2.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:3.25em;" ] [ node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.13889em;" ] [ text "T" ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:2.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:3.25em;" ] [ node "span" [ attribute "style" "top:-5.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "types" ] ] ] ], node "span" [ attribute "style" "top:-3.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "atomic type" ] ] ] ], node "span" [ attribute "style" "top:-2.25em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "function type" ] ] ] ], node "span" [ attribute "style" "top:-0.75em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.05em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:2.75em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ] ] ] ] ] ]
