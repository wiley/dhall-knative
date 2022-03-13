{ apiVersion : Text
, kind : Text
, metadata : ./io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
, spec :
    Optional
      { template :
          Optional
            { metadata :
                { annotations :
                    Optional (List { mapKey : Text, mapValue : Text })
                , finalizers : Optional (List Text)
                , labels : Optional (List { mapKey : Text, mapValue : Text })
                , name : Optional Text
                , namespace : Optional Text
                }
            , spec :
                Optional
                  { containers :
                      List ./io.k8s.api.core.v1.Container.dhall
                  , automountServiceAccountToken : Optional Bool
                  , containerConcurrency : Optional Integer
                  , enableServiceLinks : Optional Bool
                  , imagePullSecrets : Optional (List { name : Optional Text })
                  , serviceAccountName : Optional Text
                  , timeoutSeconds : Optional Integer
                  , volumes :
                      Optional
                        ( List
                            { name : Text
                            , configMap : Optional ./io.k8s.api.core.v1.ConfigMapVolumeSource.dhall
                            , projected : Optional ./io.k8s.api.core.v1.ProjectedVolumeSource.dhall
                            , secret : Optional ./io.k8s.api.core.v1.SecretVolumeSource.dhall
                            }
                        )
                  }
            }
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
            ( List
                { configurationName : Optional Text
                , latestRevision : Optional Bool
                , percent : Optional Integer
                , revisionName : Optional Text
                , tag : Optional Text
                , url : Optional Text
                }
            )
      , url : Optional Text
      }
}
