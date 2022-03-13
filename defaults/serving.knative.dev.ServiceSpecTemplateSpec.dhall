{ automountServiceAccountToken = None Bool
, containerConcurrency = None Integer
, enableServiceLinks = None Bool
, imagePullSecrets = None (List { name : Optional Text })
, serviceAccountName = None Text
, timeoutSeconds = None Integer
, volumes =
    None
      ( List
          { name : Text
          , configMap :
              Optional
                ./../types/io.k8s.api.core.v1.ConfigMapVolumeSource.dhall
                  sha256:ca17a0474608f919001f642901c11d3e60324a4245879c0bf540eca0ed22357d
          , projected :
              Optional
                ./../types/io.k8s.api.core.v1.ProjectedVolumeSource.dhall
                  sha256:b90336940b65e45154c4528f1fdd509a43da18e8226aa597a274e1ac45d7d880
          , secret :
              Optional
                ./../types/io.k8s.api.core.v1.SecretVolumeSource.dhall
                  sha256:e6c0e211be14b9d7339669546a704b14dfdf27fb0985921ee3378ac014db0831
          }
      )
}
