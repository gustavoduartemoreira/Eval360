module Pages.Menssages exposing (Msg(..), update)

import Pages.Models exposing (..)

type Msg
    = Clear
    | Add
    {- | Submit -}
    | Current String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg m =
    case msg of
        Clear ->
           ( { names = []
            , current = ""
            }, Cmd.none)

        Add ->
            ({ names = m.current :: m.names
            , current = ""
            }, Cmd.none)

       {-  Submit ->
            ({}, Cmd.none)
 -}
        Current st ->
            ({ m | current = st }, Cmd.none)