module Context exposing (..)


type alias Context =
    { theme : Theme }


type Theme
    = Normal
    | Colorblind


string2theme : String -> Theme
string2theme string =
    case string of
        "Normal" ->
            Normal

        "Colorblind" ->
            Colorblind

        _ ->
            Normal


theme2string : Theme -> String
theme2string theme =
    case theme of
        Normal ->
            "Normal"

        Colorblind ->
            "Colorblind"
