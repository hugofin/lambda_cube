module Color exposing (..)

import Context exposing (Context, Theme(..))
import Html.WithContext
import Html.WithContext.Attributes as Attributes


type alias Html msg =
    Html.WithContext.Html Context msg


type alias Attribute msg =
    Html.WithContext.Attribute Context msg


type alias Color =
    { normal : String
    , safe : String
    }


colorForTheme : Theme -> Color -> String
colorForTheme theme color =
    case theme of
        Normal ->
            color.normal

        Colorblind ->
            color.safe


backgroundColor : Color -> Attribute msg
backgroundColor color =
    Html.WithContext.withContextAttribute
        (\{ theme } ->
            Attributes.style "background-color" (colorForTheme theme color)
        )


textColor : Color -> Attribute msg
textColor color =
    Html.WithContext.withContextAttribute
        (\{ theme } ->
            Attributes.style "color" (colorForTheme theme color)
        )


borderColor : Color -> Attribute msg
borderColor color =
    Html.WithContext.withContextAttribute
        (\{ theme } ->
            Attributes.style "border-color" (colorForTheme theme color)
        )


white : Color
white =
    { normal = "#ffffff", safe = "#ffffff" }


yellow : Color
yellow =
    { normal = "#ffee00", safe = "#ccbb44" }


green : Color
green =
    { normal = "#6bff56", safe = "#228833" }


teal : Color
teal =
    { normal = "#00ffab", safe = "#66ccee" }


leaf : Color
leaf =
    { normal = "#c5e8b7", safe = "#ddcc77" }


mauve : Color
mauve =
    { normal = "#c0c0c0", safe = "#c0c0c0" }


sky : Color
sky =
    { normal = "#74c0ff", safe = "#0077bb" }


purple : Color
purple =
    { normal = "#c66cc7", safe = "#ee3377" }


red : Color
red =
    { normal = "#ff302d", safe = "#cc3311" }


steel : Color
steel =
    { normal = "#3c3c3c", safe = "#3c3c3c" }


black : Color
black =
    { normal = "#0f0f0f", safe = "#0f0f0f" }


orange : Color
orange =
    { normal = "#ff8e42", safe = "#ee7733" }
