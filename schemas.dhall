{ Service =
    ./schemas/serving.knative.dev.Service.dhall
      sha256:ebdd5e3993635233ad1409e4f8b023ec125f0b901c950d08dc87581b535e8c72
, ObjectMeta =
    ./schemas/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
      sha256:eab3ae7addd17b93053a7cbd7690928061ada1bcddf153e542a1add9a14f6c2d
, Container =
    ./schemas/io.k8s.api.core.v1.Container.dhall
      sha256:6d83541d49ee3e75ccc36595ee2477a9172195b96bc46d32b7209ab3638fd728
, EnvVar =
    ./schemas/io.k8s.api.core.v1.EnvVar.dhall
      sha256:94ea00566409bc470cd81ca29903066714557826c723dad8c25a282897c7acb3
, TrafficConfiguration =
    ./schemas/serving.knative.dev.TrafficConfiguration.dhall
      sha256:a6e04d52074e67eaf8cdbe00449e4cfced23939b6b2d50746c7d95eba6c6265e
, ServiceSpec =
    ./schemas/serving.knative.dev.ServiceSpec.dhall
      sha256:f2dd9b1ee810dfcf9f27ade24ee5b07dd67ba8c8b6087d102b2cc1dba3fd4a7d
, ServiceSpecTemplateSpec =
    ./schemas/serving.knative.dev.ServiceSpecTemplateSpec.dhall
      sha256:1765aa12889b800285cca23957d458a0d07dcbe19845ff844c6cbb78cfe784a1
, ServiceSpecTemplate =
    ./schemas/serving.knative.dev.ServiceSpecTemplate.dhall
      sha256:97e90ecfb4d2f42e5b316eef5e61b86952ded471fa69487611c80d7159a07928
}
