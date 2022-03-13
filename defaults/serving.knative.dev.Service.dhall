{ apiVersion = "serving.knative.dev/v1"
, kind = "Service"
, spec =
    None
      { template :
          Optional
            { metadata : ./../types/serving.knative.dev.ServiceSpecTemplateMetadata.dhall
            , spec :
                Optional ./../types/serving.knative.dev.ServiceSpecTemplateSpec.dhall
            }
      , traffic :
          Optional
            ( List ./../types/serving.knative.dev.TrafficConfiguration.dhall )
      }
, status =
    None
      { address : Optional { url : Optional Text }
      , annotations : Optional (List { mapKey : Text, mapValue : Text })
      , conditions :
          Optional
            ( List
                { status : Text
                , type : Text
                , lastTransitionTime : Optional Text
                , message : Optional Text
                , reason : Optional Text
                , severity : Optional Text
                }
            )
      , latestCreatedRevisionName : Optional Text
      , latestReadyRevisionName : Optional Text
      , observedGeneration : Optional Integer
      , traffic :
          Optional
            ( List ./../types/serving.knative.dev.TrafficConfiguration.dhall )
      , url : Optional Text
      }
}
