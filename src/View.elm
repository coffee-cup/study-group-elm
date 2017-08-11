module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Messages exposing (Msg(..))
import Models exposing (Model)


view : Model -> Html Msg
view model =
    div []
        [ h2 [ class "f1 mb2" ] [ text model.topic ]
        , button [ onClick MorePlease, class "mv2" ] [ text "More Please!" ]
        , br [] []
        , img [ src model.gifUrl ] []
        ]
