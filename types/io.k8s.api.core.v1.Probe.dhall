{ exec :
    Optional
      ./io.k8s.api.core.v1.ExecAction.dhall
        sha256:396f4b2d0f31f3358a31fee0939537d689c98b599e7c3b14e4df23a3476db259
, failureThreshold : Optional Natural
, httpGet :
    Optional
      ./io.k8s.api.core.v1.HTTPGetAction.dhall
        sha256:f357d36c6237b6f46528dede0bb2dcaec0a547dea569d7b57bd577f2a315b758
, initialDelaySeconds : Optional Natural
, periodSeconds : Optional Natural
, successThreshold : Optional Natural
, tcpSocket :
    Optional
      ./io.k8s.api.core.v1.TCPSocketAction.dhall
        sha256:0df72cafa500a545926aefafd161e0e67ef5bb7c8524b2656dd1ba251cd4bbab
, terminationGracePeriodSeconds : Optional Natural
, timeoutSeconds : Optional Natural
}
