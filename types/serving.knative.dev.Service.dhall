{ apiVersion : Text
, kind : Text
, metadata :
    ./io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
      sha256:f9bd9acb6fbfb26b6484870f1d07fa85535bd6e55e790181e89dcc64d63e7bfe
, spec :
    Optional
      ./serving.knative.dev.ServiceSpec.dhall
        sha256:5b4385eab79ca4aee4c5e8c9ec36f83c3c79ba3fb9dfe5f4cc279d6054891a1b
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
            ( List
                ./serving.knative.dev.TrafficConfiguration.dhall
                  sha256:9fcbadcf01a64a257bf05bf1684e76affa2fbb9debc536e4621c420094516f8f
            )
      , url : Optional Text
      }
}
