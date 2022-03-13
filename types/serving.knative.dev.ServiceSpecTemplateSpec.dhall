{ containers :
    List
      ./io.k8s.api.core.v1.Container.dhall
        sha256:1cd2dd1ece916c5ee47700132aa0f210336f677d9da528892bbd1215bd1410b1
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
          , configMap :
              Optional
                ./io.k8s.api.core.v1.ConfigMapVolumeSource.dhall
                  sha256:ca17a0474608f919001f642901c11d3e60324a4245879c0bf540eca0ed22357d
          , projected :
              Optional
                ./io.k8s.api.core.v1.ProjectedVolumeSource.dhall
                  sha256:b90336940b65e45154c4528f1fdd509a43da18e8226aa597a274e1ac45d7d880
          , secret :
              Optional
                ./io.k8s.api.core.v1.SecretVolumeSource.dhall
                  sha256:e6c0e211be14b9d7339669546a704b14dfdf27fb0985921ee3378ac014db0831
          }
      )
}
