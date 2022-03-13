{ port :
    ./io.k8s.apimachinery.pkg.util.intstr.NatOrString.dhall
      sha256:eb2751b0aa2aeabb5c529c870663ceeffceb1c825c8cec02baa08492a58bc697
, host : Optional Text
, httpHeaders :
    Optional
      ( List
          ./io.k8s.api.core.v1.HTTPHeader.dhall
            sha256:b8c3c0c4ceb36ba4e6674df5de20ad1d97e120b93b9ce9914a41d0036770dcc4
      )
, path : Optional Text
, scheme : Optional Text
}
