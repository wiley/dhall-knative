{ template :
    Optional
      ./serving.knative.dev.ServiceSpecTemplate.dhall
        sha256:0b0bb7632a736973495cdf386364ed6e4e9d694c37a72b65f8276db628ae4acc
, traffic :
    Optional
      ( List
          ./serving.knative.dev.TrafficConfiguration.dhall
            sha256:9fcbadcf01a64a257bf05bf1684e76affa2fbb9debc536e4621c420094516f8f
      )
}
