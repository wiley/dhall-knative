{ apiVersion = "v1"
, kind = "Service"
, spec =
    None
      { template :
          Optional
            { metadata :
                { annotations :
                    Optional (List { mapKey : Text, mapValue : Text })
                , finalizers : Optional (List Text)
                , labels : Optional (List { mapKey : Text, mapValue : Text })
                , name : Optional Text
                , namespace : Optional Text
                }
            , spec :
                Optional
                  { containers :
                      List
                        { args : Optional (List Text)
                        , command : Optional (List Text)
                        , env :
                            Optional
                              ( List
                                  { name : Text
                                  , value : Optional Text
                                  , valueFrom :
                                      Optional
                                        { configMapKeyRef :
                                            Optional
                                              { key : Text
                                              , name : Optional Text
                                              , optional : Optional Bool
                                              }
                                        , secretKeyRef :
                                            Optional
                                              { key : Text
                                              , name : Optional Text
                                              , optional : Optional Bool
                                              }
                                        }
                                  }
                              )
                        , envFrom :
                            Optional
                              ( List
                                  { configMapRef :
                                      Optional
                                        { name : Optional Text
                                        , optional : Optional Bool
                                        }
                                  , prefix : Optional Text
                                  , secretRef :
                                      Optional
                                        { name : Optional Text
                                        , optional : Optional Bool
                                        }
                                  }
                              )
                        , image : Optional Text
                        , imagePullPolicy : Optional Text
                        , livenessProbe :
                            Optional
                              { exec :
                                  Optional { command : Optional (List Text) }
                              , failureThreshold : Optional Integer
                              , httpGet :
                                  Optional
                                    { host : Optional Text
                                    , httpHeaders :
                                        Optional
                                          (List { name : Text, value : Text })
                                    , path : Optional Text
                                    , scheme : Optional Text
                                    }
                              , initialDelaySeconds : Optional Integer
                              , periodSeconds : Optional Integer
                              , successThreshold : Optional Integer
                              , tcpSocket : Optional { host : Optional Text }
                              , timeoutSeconds : Optional Integer
                              }
                        , name : Optional Text
                        , ports :
                            Optional
                              ( List
                                  { containerPort : Integer
                                  , name : Optional Text
                                  , protocol : Optional Text
                                  }
                              )
                        , readinessProbe :
                            Optional
                              { exec :
                                  Optional { command : Optional (List Text) }
                              , failureThreshold : Optional Integer
                              , httpGet :
                                  Optional
                                    { host : Optional Text
                                    , httpHeaders :
                                        Optional
                                          (List { name : Text, value : Text })
                                    , path : Optional Text
                                    , scheme : Optional Text
                                    }
                              , initialDelaySeconds : Optional Integer
                              , periodSeconds : Optional Integer
                              , successThreshold : Optional Integer
                              , tcpSocket : Optional { host : Optional Text }
                              , timeoutSeconds : Optional Integer
                              }
                        , resources :
                            Optional
                              { limits :
                                  Optional
                                    ( List
                                        { mapKey : Text
                                        , mapValue :
                                            < Int : Integer | String : Text >
                                        }
                                    )
                              , requests :
                                  Optional
                                    ( List
                                        { mapKey : Text
                                        , mapValue :
                                            < Int : Integer | String : Text >
                                        }
                                    )
                              }
                        , securityContext :
                            Optional
                              { capabilities :
                                  Optional { drop : Optional (List Text) }
                              , readOnlyRootFilesystem : Optional Bool
                              , runAsUser : Optional Integer
                              }
                        , terminationMessagePath : Optional Text
                        , terminationMessagePolicy : Optional Text
                        , volumeMounts :
                            Optional
                              ( List
                                  { mountPath : Text
                                  , name : Text
                                  , readOnly : Optional Bool
                                  , subPath : Optional Text
                                  }
                              )
                        , workingDir : Optional Text
                        }
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
                                  { defaultMode : Optional Integer
                                  , items :
                                      Optional
                                        ( List
                                            { key : Text
                                            , path : Text
                                            , mode : Optional Integer
                                            }
                                        )
                                  , name : Optional Text
                                  , optional : Optional Bool
                                  }
                            , projected :
                                Optional
                                  { defaultMode : Optional Integer
                                  , sources :
                                      Optional
                                        ( List
                                            { configMap :
                                                Optional
                                                  { items :
                                                      Optional
                                                        ( List
                                                            { key : Text
                                                            , path : Text
                                                            , mode :
                                                                Optional Integer
                                                            }
                                                        )
                                                  , name : Optional Text
                                                  , optional : Optional Bool
                                                  }
                                            , secret :
                                                Optional
                                                  { items :
                                                      Optional
                                                        ( List
                                                            { key : Text
                                                            , path : Text
                                                            , mode :
                                                                Optional Integer
                                                            }
                                                        )
                                                  , name : Optional Text
                                                  , optional : Optional Bool
                                                  }
                                            , serviceAccountToken :
                                                Optional
                                                  { path : Text
                                                  , audience : Optional Text
                                                  , expirationSeconds :
                                                      Optional Integer
                                                  }
                                            }
                                        )
                                  }
                            , secret :
                                Optional
                                  { defaultMode : Optional Integer
                                  , items :
                                      Optional
                                        ( List
                                            { key : Text
                                            , path : Text
                                            , mode : Optional Integer
                                            }
                                        )
                                  , optional : Optional Bool
                                  , secretName : Optional Text
                                  }
                            }
                        )
                  }
            }
      , traffic :
          Optional
            ( List
                { configurationName : Optional Text
                , latestRevision : Optional Bool
                , percent : Optional Integer
                , revisionName : Optional Text
                , tag : Optional Text
                , url : Optional Text
                }
            )
      }
, status =
    None
      { address : Optional { url : Optional Text }
      , annotations : Optional (List { mapKey : Text, mapValue : Text })
      , conditions :
          Optional
            ( List
                { status : Text
                , type : Text
                , lastTransitionTime : Optional Text
                , message : Optional Text
                , reason : Optional Text
                , severity : Optional Text
                }
            )
      , latestCreatedRevisionName : Optional Text
      , latestReadyRevisionName : Optional Text
      , observedGeneration : Optional Integer
      , traffic :
          Optional
            ( List
                { configurationName : Optional Text
                , latestRevision : Optional Bool
                , percent : Optional Integer
                , revisionName : Optional Text
                , tag : Optional Text
                , url : Optional Text
                }
            )
      , url : Optional Text
      }
}
