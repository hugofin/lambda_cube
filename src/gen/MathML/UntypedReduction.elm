
module MathML.UntypedReduction exposing (view)

import Html exposing (math, text)
import VirtualDom exposing (nodeNS)
import Html.Attributes exposing (attribute)

-- this code was generated by latex2elm

node = nodeNS "http://www.w3.org/1998/Math/MathML"

view = math [Html.Attributes.attribute "display" "block"] [node "span" [ attribute "class" "katex" ] [ node "span" [ attribute "class" "katex-html", attribute "aria-hidden" "true" ] [ node "span" [ attribute "class" "base" ] [ node "span" [ attribute "class" "strut", attribute "style" "height:24.8611em;vertical-align:-12.1805em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:12.6805em;" ] [ node "span" [ attribute "style" "top:-14.6805em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:14.6805em;" ] [  ], node "span" [ attribute "class" "mtable" ] [ node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:12.6805em;" ] [ node "span" [ attribute "style" "top:-15.5761em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05278em;" ] [ text "β" ], node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text " Reduction" ] ] ] ], node "span" [ attribute "style" "top:-14.6161em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-13.5781em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen" ] [ text "(" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "M" ], node "span" [ attribute "class" "mclose" ] [ text ")" ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "N" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "M" ], node "span" [ attribute "class" "mopen" ] [ text "[" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":=" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.10903em;" ] [ text "N" ], node "span" [ attribute "class" "mclose" ] [ text "]" ] ] ], node "span" [ attribute "style" "top:-12.6181em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-10.7401em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.6779em;" ] [ node "span" [ attribute "style" "top:-2.989em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.7519em;" ] [ node "span" [ attribute "style" "top:-3.063em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.9721em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:-9.096em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-7.218em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "λ" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.6779em;" ] [ node "span" [ attribute "style" "top:-2.989em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.7519em;" ] [ node "span" [ attribute "style" "top:-3.063em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.9721em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:-5.5739em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.6959em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Π" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ text "Π" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.6779em;" ] [ node "span" [ attribute "style" "top:-2.989em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.7519em;" ] [ node "span" [ attribute "style" "top:-3.063em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.9721em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:-2.0518em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.1738em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mopen nulldelimiter" ] [  ], node "span" [ attribute "class" "mfrac" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:1.59em;" ] [ node "span" [ attribute "style" "top:-2.314em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord" ] [ text "Π" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ text "Π" ], node "span" [ attribute "class" "mord mathnormal" ] [ text "x" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ text ":" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.6779em;" ] [ node "span" [ attribute "style" "top:-2.989em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "mord" ] [ text "." ], node "span" [ attribute "class" "mspace" ] [ text " " ], node "span" [ attribute "class" "mord mathnormal", attribute "style" "margin-right:0.05017em;" ] [ text "B" ] ] ], node "span" [ attribute "style" "top:-3.23em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "frac-line", attribute "style" "border-bottom-width:0.04em;" ] [  ] ], node "span" [ attribute "style" "top:-3.74em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ], node "span" [ attribute "class" "mspace", attribute "style" "margin-right:0.2778em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord mathnormal" ] [ text "A" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.7519em;" ] [ node "span" [ attribute "style" "top:-3.063em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ node "span" [ attribute "class" "mord mtight" ] [ text "′" ] ] ] ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.9721em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [  ] [  ] ] ] ], node "span" [ attribute "style" "top:1.4703em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:2.4528em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "Beta Reduction takes a " ] ] ] ], node "span" [ attribute "style" "top:3.4352em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "reducible expression, and" ] ] ] ], node "span" [ attribute "style" "top:4.3952em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "converts it into a contraction" ] ] ] ], node "span" [ attribute "style" "top:5.3777em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "as seen in the basis rule." ] ] ] ], node "span" [ attribute "style" "top:6.3377em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:7.3201em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "Beta Reduction is shown by" ] ] ] ], node "span" [ attribute "style" "top:8.3025em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "Beta Conversion is shown by" ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:12.1805em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ], node "span" [ attribute "class" "col-align-c" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:12.6805em;" ] [ node "span" [ attribute "style" "top:-15.5761em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-13.5781em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [ node "span" [ attribute "class" "mord" ] [ text "basis" ] ] ] ], node "span" [ attribute "style" "top:-10.7401em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-7.218em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-3.6959em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:-0.1738em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:2.4528em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mord text" ] [  ] ] ], node "span" [ attribute "style" "top:3.4352em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:4.3952em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:5.3777em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [  ] ], node "span" [ attribute "style" "top:7.3201em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "→" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ] ] ], node "span" [ attribute "style" "top:8.3025em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:3.59em;" ] [  ], node "span" [ attribute "class" "mord" ] [ node "span" [ attribute "class" "mrel" ] [ node "span" [ attribute "class" "mrel" ] [ text "=" ], node "span" [ attribute "class" "msupsub" ] [ node "span" [ attribute "class" "vlist-t vlist-t2" ] [ node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.3361em;" ] [ node "span" [ attribute "style" "top:-2.55em;margin-left:0em;margin-right:0.05em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:2.7em;" ] [  ], node "span" [ attribute "class" "sizing reset-size6 size3 mtight" ] [ node "span" [ attribute "class" "mord mathnormal mtight", attribute "style" "margin-right:0.05278em;" ] [ text "β" ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:0.2861em;" ] [ node "span" [  ] [  ] ] ] ] ] ] ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:12.1805em;" ] [ node "span" [  ] [  ] ] ] ] ], node "span" [ attribute "class" "arraycolsep", attribute "style" "width:0.5em;" ] [  ] ] ], node "span" [ attribute "style" "top:-26.3786em;" ] [ node "span" [ attribute "class" "pstrut", attribute "style" "height:14.6805em;" ] [  ], node "span" [ attribute "class" "hline", attribute "style" "border-bottom-width:0.04em;" ] [  ] ] ], node "span" [ attribute "class" "vlist-s" ] [ text "​" ] ], node "span" [ attribute "class" "vlist-r" ] [ node "span" [ attribute "class" "vlist", attribute "style" "height:12.1805em;" ] [ node "span" [  ] [  ] ] ] ] ] ] ] ]]
