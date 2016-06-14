
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App
import Time exposing (Time)


main =
    App.beginnerProgram
        { model = model
        , view = view
        , update = update
        }


type alias Model =
    { name : String
    , carbohydrates : Int
    , timeConsumed : Time
    }


model = 
    { name = ""
    , carbohydrates = 0
    , timeConsumed = 0
    }


type Message =
    FoodName String |
    CarbCount Int |
    TimeConsumed Time


update msg model =
    case msg of

        FoodName name' ->
            { model | name = name' }

        CarbCount count ->
            { model | carbohydrates = count }

        TimeConsumed t ->
            { model | timeConsumed = t }


-- view model =
--     div []
--         [ input [ type' "text", placeholder "Name", onInput FoodName ] []
--         , input [ type' "number", placeholder "Carbohydrates", onInput CarbCount ] []
--         , input [ type' "number", placeholder "Time", onInput TimeConsumed ] []
--         ]
