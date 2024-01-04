module MathML.UntypedTerms exposing (view)

import Html exposing (math, text)
import Html.Attributes exposing (attribute)
import VirtualDom exposing (nodeNS)



-- this code was generated by latex2elm


node =
    nodeNS "http://www.w3.org/1998/Math/MathML"


view =
    math [ Html.Attributes.attribute "display" "block" ] [ node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [ node "span" [ attribute "class" "base" ] [ node "span" [ attribute "class" "strut", attribute "style" "height:2.4em;vertical-align:-0.95em;" ] [], node "span" [ attribute "class" "minner" ] [ node "span" [ attribute "class" "mopen" ] [ node "span" [ attribute "class" "delimsizing mult" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.45em;" ] [ node "span" [ attribute "style" "top:-3.45em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:4.4em;" ] [], node "span" [ attribute "style" "width:0.333em;height:2.400em;" ] [ node "svg" [ attribute "xmlns" "http://www.w3.org/2000/svg", attribute "width" "0.333em", attribute "height" "2.400em", attribute "viewbox" "0 0 333 2400" ] [ node "path" [ attribute "d" "M145 15 v585 v1200 v585 c2.667,10,9.667,15,21,15 c10,0,16.667,-5,20,-15 v-585 v-1200 v-585 c-2.667,-10,-9.667,-15,-21,-15 c-10,0,-16.667,5,-20,15z M188 15 H145 v585 v1200 v585 h43z" ] [] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "\u{200B}" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.95em;" ] [ node "span" [] [] ] ] ] ] ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mtable" ] [ node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.45em;" ] [ node "span" [ attribute "style" "top:-3.61em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "a" ] ] ], node "span" [ attribute "style" "top:-2.41em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "c" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "\u{200B}" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.95em;" ] [ node "span" [] [] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.45em;" ] [ node "span" [ attribute "style" "top:-3.61em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "b" ] ] ], node "span" [ attribute "style" "top:-2.41em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "d" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "\u{200B}" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.95em;" ] [ node "span" [] [] ] ] ] ] ] ], node "span" [ attribute "class" "mclose" ] [ node "span" [ attribute "class" "delimsizing mult" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.45em;" ] [ node "span" [ attribute "style" "top:-3.45em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:4.4em;" ] [], node "span" [ attribute "style" "width:0.333em;height:2.400em;" ] [ node "svg" [ attribute "xmlns" "http://www.w3.org/2000/svg", attribute "width" "0.333em", attribute "height" "2.400em", attribute "viewbox" "0 0 333 2400" ] [ node "path" [ attribute "d" "M145 15 v585 v1200 v585 c2.667,10,9.667,15,21,15 c10,0,16.667,-5,20,-15 v-585 v-1200 v-585 c-2.667,-10,-9.667,-15,-21,-15 c-10,0,-16.667,5,-20,15z M188 15 H145 v585 v1200 v585 h43z" ] [] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "\u{200B}" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.95em;" ] [ node "span" [] [] ] ] ] ] ] ] ] ] ] ]
