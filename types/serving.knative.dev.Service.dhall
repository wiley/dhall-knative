{ apiVersion : Text
, kind : Text
, metadata : ./io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
, spec :
    Optional
      { template :
          Optional
            ./serving.knative.dev.ServiceSpecTemplate.dhall
      , traffic :
          Optional
            ( List ./serving.knative.dev.TrafficConfiguration.dhall)
      }
, status :
    Optional
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
            ( List ./serving.knative.dev.TrafficConfiguration.dhall)
      , url : Optional Text
      }
}
