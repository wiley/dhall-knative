let kn = ./../package.dhall

let gitHash = "foo"

let knService =
      \(gitHash : Text) ->
        kn.Service::{
        , metadata = kn.ObjectMeta::{ name = Some "taina" }
        , spec = Some kn.ServiceSpec::{
          , template = Some kn.ServiceSpecTemplate::{
            , spec = Some kn.ServiceSpecTemplateSpec::{
              , containers =
                [ kn.Container::{
                  , name = "taina"
                  , image = Some ("docker.io/fatcatsart/taina:" ++ gitHash)
                  , env = Some
                    [ kn.EnvVar::{
                      , name = "TARGET"
                      , value = Some "Rust Sample v1"
                      }
                    ]
                  }
                ]
              }
            }
          }
        }

in  knService gitHash
