{ name : Text
, args : Optional (List Text)
, command : Optional (List Text)
, env :
    Optional
      ( List
          ./io.k8s.api.core.v1.EnvVar.dhall
            sha256:f65fc60c0ee435d1e9e9fb0023420d8286ff27b3a50aa520dbe6b0a22b266783
      )
, envFrom :
    Optional
      ( List
          ./io.k8s.api.core.v1.EnvFromSource.dhall
            sha256:dfcc1bb473c7306a41d254589fbc657b21a06c0bae47a411c9d9b7f1b3b07f5d
      )
, image : Optional Text
, imagePullPolicy : Optional Text
, lifecycle :
    Optional
      ./io.k8s.api.core.v1.Lifecycle.dhall
        sha256:c0c3665b67dce843b89d4235033b42569d447c8ce2f7584f09f02cac84e246a0
, livenessProbe :
    Optional
      ./io.k8s.api.core.v1.Probe.dhall
        sha256:12486d77c420e806989eb5ba64dd4031019097fdd6d3190ad9df90f86647122c
, ports :
    Optional
      ( List
          ./io.k8s.api.core.v1.ContainerPort.dhall
            sha256:4e77a1c7092e5ef28542406404e3f44234fa81dea270e09f468e79ba428a575c
      )
, readinessProbe :
    Optional
      ./io.k8s.api.core.v1.Probe.dhall
        sha256:12486d77c420e806989eb5ba64dd4031019097fdd6d3190ad9df90f86647122c
, resources :
    Optional
      ./io.k8s.api.core.v1.ResourceRequirements.dhall
        sha256:e6a52f46fab854b0ba0f7267cbea09584e22585481acfc0959e205dd5f1cb30a
, securityContext :
    Optional
      ./io.k8s.api.core.v1.SecurityContext.dhall
        sha256:231eb05121199a5bbd5e8f8d7af96d5ef99b6f0bef3fa28bf50955d00feb452d
, startupProbe :
    Optional
      ./io.k8s.api.core.v1.Probe.dhall
        sha256:12486d77c420e806989eb5ba64dd4031019097fdd6d3190ad9df90f86647122c
, stdin : Optional Bool
, stdinOnce : Optional Bool
, terminationMessagePath : Optional Text
, terminationMessagePolicy : Optional Text
, tty : Optional Bool
, volumeDevices :
    Optional
      ( List
          ./io.k8s.api.core.v1.VolumeDevice.dhall
            sha256:41d225bedf28907d18bcf746b630ad52788af8ae1a1d1236798fdf439727ad32
      )
, volumeMounts :
    Optional
      ( List
          ./io.k8s.api.core.v1.VolumeMount.dhall
            sha256:250e19fec8a11c0b0f74114cbf2d1e0730b25a9bfbaf74902f3a15c5e1867c13
      )
, workingDir : Optional Text
}
