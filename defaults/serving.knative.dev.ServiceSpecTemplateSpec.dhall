{ automountServiceAccountToken = None Bool
, containerConcurrency = None Integer
, enableServiceLinks = None Bool
, imagePullSecrets = None (List { name: Optional Text })
, serviceAccountName = None Text
, timeoutSeconds = None Integer
, volumes = None ( List
          { name : Text
          , configMap : Optional ./../types/io.k8s.api.core.v1.ConfigMapVolumeSource.dhall
          , projected : Optional ./../types/io.k8s.api.core.v1.ProjectedVolumeSource.dhall
          , secret : Optional ./../types/io.k8s.api.core.v1.SecretVolumeSource.dhall
          }
      )
}
