module Utils exposing (..)


px : Int -> String
px n =
    String.fromFloat (toFloat n / 17) ++ "vw"
