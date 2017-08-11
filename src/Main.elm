module Main exposing (..)

import Html
import Messages exposing (Msg(..))
import Models exposing (Model)
import Update exposing (..)
import View exposing (..)
import Subscriptions exposing (..)
import Api exposing (getRandomGif)


-- Init


main : Program Never Model Msg
main =
    Html.program
        { init = init "cats"
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : String -> ( Model, Cmd Msg )
init topic =
    ( Model topic ""
    , getRandomGif topic
    )
