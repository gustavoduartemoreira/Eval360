module Pages.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Pages.Menssages exposing (..)
import Pages.Models exposing (..)






view : Model -> Html Msg
view m =
    div []
        [ h1 [] [ text "360 Degree FeedBack" ]
        , inputElem m
        , button [ onClick Add ] [ text "Add Name" ]
        , button [ onClick Clear ] [ text "Clear all names" ]
        , showNames m.names
        , button [ onClick Add ] [ text "Submit" ]
        
        ]


showNames m =
    ul [] (List.map showName m)


showName st =
    li [] [ text st ]


inputElem m =
    input
        [ placeholder "Enter a name"
        , onInput Current
        , value m.current
        ]
        []