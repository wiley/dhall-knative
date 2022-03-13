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
