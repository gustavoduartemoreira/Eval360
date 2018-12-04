module Pages.Index exposing (..)

import Browser
import Pages.Menssages exposing (..)
import Pages.Models exposing (..)
import Pages.View exposing (..)



main =
    Browser.element
        { view = view
        , update = update
        , subscriptions = subscriptions
        , init = init
        }


-- SUBSCRIPTIONS -----------------------------------------


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
