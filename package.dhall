  ./schemas.dhall
    sha256:e80a2ad166e2328010709b2a419a1bddb99c558e52a568e5380c00760e623bc7
∧ { IntOrString =
      ( ./types.dhall
          sha256:43a7ee543008c0e1e0622c12ad6c2d796aad79e5c442e2ce814558c9c270c25b
      ).IntOrString
  , NatOrString =
      ( ./types.dhall
          sha256:43a7ee543008c0e1e0622c12ad6c2d796aad79e5c442e2ce814558c9c270c25b
      ).NatOrString
  , Resource =
      ./typesUnion.dhall
        sha256:398a5ce004d06821c63c795d39ea2d1bad141fcb077d1987a2991cc633b664ef
  }
