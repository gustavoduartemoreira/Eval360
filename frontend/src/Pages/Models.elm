module Pages.Models exposing (..)



type alias Model =
    { names : List String, current : String }
    


init : () -> ( Model, Cmd msg )
init _ =(
    { names = [], current = "" }
    , Cmd.none
    )