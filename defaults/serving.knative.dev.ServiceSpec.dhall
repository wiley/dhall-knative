{ template =
    None
      { metadata :
          ./../types/serving.knative.dev.ServiceSpecTemplateMetadata.dhall
            sha256:8c3ebcdf646a54a5ed0d154067606c5009c4e39decfead74729820af25b4d95d
      , spec :
          Optional
            ./../types/serving.knative.dev.ServiceSpecTemplateSpec.dhall
              sha256:b08046fcf866682762ffd99545ff87aadfaf5298ff88e337846bb2b78f0a8bf8
      }
, traffic =
    None
      ( List
          ./../types/serving.knative.dev.TrafficConfiguration.dhall
            sha256:9fcbadcf01a64a257bf05bf1684e76affa2fbb9debc536e4621c420094516f8f
      )
}
