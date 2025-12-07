@interface KTSetOptInStateOperation
- (KTSetOptInStateOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState optinStates:(id)states;
- (id)notificationKey;
- (id)optInKey;
- (id)verifyResponse:(id)response uri:(id)uri expectedState:(BOOL)state;
- (unint64_t)decodeAndVerifyOptInOutResponse:(id)response optInOutState:(BOOL)state optInOutTime:(id *)time error:(id *)error;
- (unint64_t)decodeAndVerifySMT:(id)t optInOutState:(BOOL)state optInOutTime:(id *)time error:(id *)error;
- (void)clearCoreFollowUp;
- (void)clearFailureEvents;
- (void)clearOptInStateAndPushToCloud;
- (void)groupStart;
- (void)notifyOptInStatusChanged;
- (void)processResponse:(id)response watcher:(id)watcher finishOp:(id)op;
- (void)setKVSSMTTime:(id)time forState:(BOOL)state;
@end

@implementation KTSetOptInStateOperation

- (KTSetOptInStateOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState optinStates:(id)states
{
  dependenicsCopy = dependenics;
  stateCopy = state;
  errorStateCopy = errorState;
  statesCopy = states;
  v18.receiver = self;
  v18.super_class = KTSetOptInStateOperation;
  v14 = [(KTGroupOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(KTSetOptInStateOperation *)v14 setDeps:dependenicsCopy];
    [(KTSetOptInStateOperation *)v15 setOptInStates:statesCopy];
    [(KTSetOptInStateOperation *)v15 setIntendedState:stateCopy];
    [(KTSetOptInStateOperation *)v15 setErrorState:errorStateCopy];
    [(KTSetOptInStateOperation *)v15 setOptInStates:statesCopy];
    v16 = v15;
  }

  return v15;
}

- (id)verifyResponse:(id)response uri:(id)uri expectedState:(BOOL)state
{
  stateCopy = state;
  v16 = 0;
  v17 = 0;
  uriCopy = uri;
  v9 = [(KTSetOptInStateOperation *)self decodeAndVerifyOptInOutResponse:response optInOutState:stateCopy optInOutTime:&v17 error:&v16];
  v10 = v17;
  v11 = v16;
  v12 = objc_alloc_init(KTSetOptInResult);
  [(KTSetOptInResult *)v12 setSuccess:v9 == 1];
  [(KTSetOptInResult *)v12 setUri:uriCopy];

  v13 = [NSNumber numberWithBool:stateCopy];
  [(KTSetOptInResult *)v12 setOptInStatus:v13];

  [(KTSetOptInResult *)v12 setOptInDate:v10];
  [(KTSetOptInResult *)v12 setError:v11];
  if (qword_10038BCD0 != -1)
  {
    sub_100248F20();
  }

  v14 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "verified response returned: %@", buf, 0xCu);
  }

  return v12;
}

- (void)groupStart
{
  errorState = [(KTSetOptInStateOperation *)self errorState];
  [(KTSetOptInStateOperation *)self setNextState:errorState];

  optInStates = [(KTSetOptInStateOperation *)self optInStates];
  currentTarget = [optInStates currentTarget];
  [(KTSetOptInStateOperation *)self setApplicationId:currentTarget];

  optInStates2 = [(KTSetOptInStateOperation *)self optInStates];
  targetOptInStates = [optInStates2 targetOptInStates];
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  v9 = [targetOptInStates objectForKeyedSubscript:applicationId];

  if (v9)
  {
    v10 = [NSBlockOperation blockOperationWithBlock:&stru_100319C18];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v10];
    v11 = objc_alloc_init(KTIDSOpsOptInOutData);
    applicationId2 = [(KTSetOptInStateOperation *)self applicationId];
    [(KTIDSOpsOptInOutData *)v11 setKtApplication:applicationId2];

    targetState = [v9 targetState];
    if (targetState <= 3)
    {
      v14 = *(&off_100319F48 + targetState);
      [(KTIDSOpsOptInOutData *)v11 setOptChangeReason:dword_1002D46D0[targetState]];
      [(KTIDSOpsOptInOutData *)v11 setOptInStatus:v14];
    }

    deps = [(KTSetOptInStateOperation *)self deps];
    cloudRecords = [deps cloudRecords];
    applicationId3 = [(KTSetOptInStateOperation *)self applicationId];
    optInStatus = [(KTIDSOpsOptInOutData *)v11 optInStatus];
    v52 = 0;
    v44 = [cloudRecords storeOptInIntentForApplication:applicationId3 state:objc_msgSend(optInStatus overwrite:"BOOLValue") error:{1, &v52}];
    v42 = v52;

    deps2 = [(KTSetOptInStateOperation *)self deps];
    cloudRecords2 = [deps2 cloudRecords];
    applicationId4 = [(KTSetOptInStateOperation *)self applicationId];
    v51 = 0;
    v22 = [cloudRecords2 deleteOptInIntentForApplication:applicationId4 error:&v51];
    v41 = v51;

    deps3 = [(KTSetOptInStateOperation *)self deps];
    accountKeyService = [deps3 accountKeyService];
    applicationId5 = [(KTSetOptInStateOperation *)self applicationId];
    v26 = [accountKeyService accountKeyService:applicationId5];

    v50 = 0;
    v27 = [v26 publicPublicKey:&v50];
    v43 = v50;
    [(KTIDSOpsOptInOutData *)v11 setPublicAccountKey:v27];

    publicAccountKey = [(KTIDSOpsOptInOutData *)v11 publicAccountKey];
    LODWORD(v27) = publicAccountKey == 0;

    if (v27)
    {
      if (qword_10038BCD0 != -1)
      {
        sub_100248F48();
      }

      v29 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v56 = v26;
        v57 = 2112;
        v58 = v43;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cloud not get account key from service %@, this is not going to end well: %@", buf, 0x16u);
      }
    }

    applicationId6 = [(KTSetOptInStateOperation *)self applicationId];
    v53 = applicationId6;
    v54 = v11;
    v31 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];

    v32 = [SendOptInUpdateRequestOperation alloc];
    deps4 = [(KTSetOptInStateOperation *)self deps];
    v34 = [(SendOptInUpdateRequestOperation *)v32 initWithDependenics:deps4 optInRequest:v31];

    objc_initWeak(buf, self);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10003BAF4;
    v45[3] = &unk_100319C60;
    objc_copyWeak(&v49, buf);
    v35 = v34;
    v46 = v35;
    v47 = v9;
    optInStates3 = v10;
    v48 = optInStates3;
    v37 = [KTResultOperation named:@"set-opt-io" withBlock:v45];
    [(KTResultOperation *)v35 addSuccessDependency:v44];
    [v37 addDependency:v35];
    [v22 addSuccessDependency:v37];
    [(KTGroupOperation *)self runBeforeGroupFinished:v44];
    [(KTGroupOperation *)self runBeforeGroupFinished:v35];
    [(KTGroupOperation *)self runBeforeGroupFinished:v37];
    [(KTGroupOperation *)self runBeforeGroupFinished:v22];

    objc_destroyWeak(&v49);
    objc_destroyWeak(buf);
  }

  else
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100248F70();
    }

    v38 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      applicationId7 = [(KTSetOptInStateOperation *)self applicationId];
      *buf = 138412290;
      v56 = applicationId7;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Warning: no target application available: %@", buf, 0xCu);
    }

    optInStates3 = [(KTSetOptInStateOperation *)self optInStates];
    [optInStates3 setCurrentTarget:0];
  }
}

- (void)processResponse:(id)response watcher:(id)watcher finishOp:(id)op
{
  responseCopy = response;
  watcherCopy = watcher;
  opCopy = op;
  v11 = +[NSMutableDictionary dictionary];
  if ([responseCopy success])
  {
    serverSMTByURI = [responseCopy serverSMTByURI];
    v13 = [serverSMTByURI count];

    if (v13)
    {
      serverSMTByURI2 = [responseCopy serverSMTByURI];
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_10003CAE0;
      v109[3] = &unk_100319CA8;
      v109[4] = self;
      v110 = watcherCopy;
      v111 = v11;
      [serverSMTByURI2 enumerateKeysAndObjectsUsingBlock:v109];
    }

    else
    {
      serverProvidedSMT = [responseCopy serverProvidedSMT];
      v25 = -[KTSetOptInStateOperation verifyResponse:uri:expectedState:](self, "verifyResponse:uri:expectedState:", serverProvidedSMT, 0, [watcherCopy targetState] != 0);

      [v11 setObject:v25 forKeyedSubscript:&stru_10032E8E8];
    }

    if (qword_10038BCD0 != -1)
    {
      sub_100248F98();
    }

    v95 = watcherCopy;
    v26 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v113 = v11;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "OptIn result: %@", buf, 0xCu);
    }

    [(KTSetOptInStateOperation *)self setOptInResult:v11];
    v96 = +[NSMutableArray array];
    v97 = +[NSMutableArray array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    objectEnumerator = [v11 objectEnumerator];
    v28 = [objectEnumerator countByEnumeratingWithState:&v105 objects:v119 count:16];
    selfCopy = self;
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v106;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v106 != v31)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v33 = *(*(&v105 + 1) + 8 * i);
          if (([v33 success] & 1) == 0)
          {
            error = [v33 error];

            if (error)
            {
              error2 = [v33 error];
              [v96 addObject:error2];
            }

            v36 = [v33 uri];

            if (v36)
            {
              v37 = [v33 uri];
              [v97 addObject:v37];
            }

            v30 = 1;
          }
        }

        v29 = [objectEnumerator countByEnumeratingWithState:&v105 objects:v119 count:16];
      }

      while (v29);

      self = selfCopy;
      if (v30)
      {
        v38 = +[NSMutableDictionary dictionary];
        error4 = v96;
        [v38 setObject:v96 forKeyedSubscript:NSMultipleUnderlyingErrorsKey];
        [v38 setObject:v97 forKeyedSubscript:@"uris"];
        deps6 = v38;
        v39 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-361 underlyingError:0 userinfo:v38 description:@"Failed validation uri"];
        [(KTResultOperation *)selfCopy setError:v39];

        watcherCopy = v95;
        if (qword_10038BCD0 != -1)
        {
          sub_100248FC0();
        }

        v40 = qword_10038BCD8;
        if (!os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        flagHandler2 = v40;
        error3 = [(KTResultOperation *)selfCopy error];
        *buf = 138412290;
        v113 = error3;
        _os_log_impl(&_mh_execute_header, flagHandler2, OS_LOG_TYPE_ERROR, "Failed to change opt-in state due to IDS opt-in failure: %@", buf, 0xCu);

LABEL_34:
LABEL_79:

        goto LABEL_80;
      }
    }

    else
    {
    }

    v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 targetState]);
    optInStates = [(KTSetOptInStateOperation *)self optInStates];
    currentStates = [optInStates currentStates];
    applicationId = [(KTSetOptInStateOperation *)self applicationId];
    [currentStates setObject:v42 forKeyedSubscript:applicationId];

    [(KTSetOptInStateOperation *)self clearCoreFollowUp];
    [(KTSetOptInStateOperation *)self clearFailureEvents];
    if (qword_10038BCD0 != -1)
    {
      sub_100248FE8();
    }

    v46 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 targetState]);
      applicationId2 = [(KTSetOptInStateOperation *)self applicationId];
      *buf = 138543618;
      v113 = v48;
      v114 = 2114;
      v115 = applicationId2;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "changing opt-in state to %{public}@ for %{public}@", buf, 0x16u);
    }

    v94 = opCopy;
    v92 = responseCopy;
    deps6 = +[NSMutableDictionary dictionary];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v93 = v11;
    objectEnumerator2 = [v11 objectEnumerator];
    v51 = [objectEnumerator2 countByEnumeratingWithState:&v101 objects:v118 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = *v102;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v102 != v54)
          {
            objc_enumerationMutation(objectEnumerator2);
          }

          v56 = *(*(&v101 + 1) + 8 * j);
          v57 = [v56 uri];

          if (v57)
          {
            applicationId3 = [(KTSetOptInStateOperation *)self applicationId];
            v59 = [v56 uri];
            v60 = [TransparencyApplication addApplicationPrefixForIdentifier:applicationId3 uri:v59];

            optInDate = [v56 optInDate];
            [deps6 setObject:optInDate forKeyedSubscript:v60];

            if (!v53 || ([v56 optInDate], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "compare:", v53), v62, v63 == -1))
            {
              optInDate2 = [v56 optInDate];

              v53 = optInDate2;
            }

            self = selfCopy;
          }
        }

        v52 = [objectEnumerator2 countByEnumeratingWithState:&v101 objects:v118 count:16];
      }

      while (v52);
    }

    else
    {
      v53 = 0;
    }

    deps = [(KTSetOptInStateOperation *)self deps];
    cloudRecords = [deps cloudRecords];

    responseCopy = v92;
    if (cloudRecords)
    {
      deps2 = [(KTSetOptInStateOperation *)self deps];
      cloudRecords2 = [deps2 cloudRecords];
      applicationId4 = [(KTSetOptInStateOperation *)self applicationId];
      watcherCopy = v95;
      v100 = 0;
      v70 = [cloudRecords2 storeOptInForApplication:applicationId4 uris:deps6 state:objc_msgSend(v95 error:{"targetState") != 0, &v100}];
      v71 = v100;

      if (v70)
      {
        [v94 addDependency:v70];
        [(KTGroupOperation *)self runBeforeGroupFinished:v70];
      }

      if (v71)
      {
        if (qword_10038BCD0 != -1)
        {
          sub_100249010();
        }

        v72 = qword_10038BCD8;
        if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v113 = v71;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "storeOptInForApplication failed %@", buf, 0xCu);
        }

        [(KTResultOperation *)self setError:v71];
      }
    }

    else
    {
      v71 = 0;
      watcherCopy = v95;
    }

    if (qword_10038BCD0 != -1)
    {
      sub_100249038();
    }

    v73 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v73;
      v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [watcherCopy targetState]);
      applicationId5 = [(KTSetOptInStateOperation *)self applicationId];
      allKeys = [deps6 allKeys];
      v78 = [allKeys componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v113 = v75;
      v114 = 2114;
      v115 = applicationId5;
      v116 = 2112;
      v117 = v78;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "changing peer opt-in state to %{public}@ for %{public}@ for %@", buf, 0x20u);

      self = selfCopy;
    }

    deps3 = [(KTSetOptInStateOperation *)self deps];
    dataStore = [deps3 dataStore];
    v81 = [watcherCopy targetState] != 0;
    allKeys2 = [deps6 allKeys];
    applicationId6 = [(KTSetOptInStateOperation *)self applicationId];
    [dataStore setCachedPeerOptInState:v81 uris:allKeys2 application:applicationId6];

    if ([watcherCopy targetState] == 1 || objc_msgSend(watcherCopy, "targetState") == 3)
    {
      deps4 = [(KTSetOptInStateOperation *)selfCopy deps];
      dataStore2 = [deps4 dataStore];
      applicationId7 = [(KTSetOptInStateOperation *)selfCopy applicationId];
      [dataStore2 removeFailuresOnOptIn:applicationId7];
    }

    if (v53)
    {
      -[KTSetOptInStateOperation setKVSSMTTime:forState:](selfCopy, "setKVSSMTTime:forState:", v53, [watcherCopy targetState] != 0);
    }

    else
    {
      if (qword_10038BCD0 != -1)
      {
        sub_100249060();
      }

      v87 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v113 = v93;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "no KVS smt timestamp: %@", buf, 0xCu);
      }
    }

    [(KTSetOptInStateOperation *)selfCopy notifyOptInStatusChanged];
    v88 = [[KTPendingFlag alloc] initWithFlag:@"StatusUpdate" delayInSeconds:0.0];
    deps5 = [(KTSetOptInStateOperation *)selfCopy deps];
    flagHandler = [deps5 flagHandler];
    [flagHandler handlePendingFlag:v88];

    intendedState = [(KTSetOptInStateOperation *)selfCopy intendedState];
    [(KTSetOptInStateOperation *)selfCopy setNextState:intendedState];

    v11 = v93;
    opCopy = v94;
    error4 = v96;
    goto LABEL_79;
  }

  error4 = [responseCopy error];
  if (qword_10038BCD0 != -1)
  {
    sub_100248F84();
  }

  v16 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    error5 = [responseCopy error];
    *buf = 138412290;
    v113 = error5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to change opt-in state due to IDS opt-in failure: %@", buf, 0xCu);
  }

  v19 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-290 underlyingError:error4 description:@"IDS failed to change opt-in state for KT"];
  [(KTResultOperation *)self setError:v19];

  if ([error4 code] == -8101)
  {
    domain = [error4 domain];
    v21 = [domain isEqual:IDSKeyTransparencyErrorDomain];

    if (v21)
    {
      v22 = [[KTPendingFlag alloc] initWithFlag:@"CheckAccountSignatures" conditions:2 delayInSeconds:1.0];
      deps6 = [(KTSetOptInStateOperation *)self deps];
      flagHandler2 = [deps6 flagHandler];
      v97 = v22;
      [flagHandler2 handlePendingFlag:v22];
      goto LABEL_34;
    }
  }

LABEL_80:
}

- (id)optInKey
{
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  v3 = [KTOptInManagerServer optInKeyForApplication:applicationId];

  return v3;
}

- (id)notificationKey
{
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  v3 = [KTOptInManager notificationKeyForApplication:applicationId];

  return v3;
}

- (void)clearOptInStateAndPushToCloud
{
  deps = [(KTSetOptInStateOperation *)self deps];
  cloudRecords = [deps cloudRecords];
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  v16 = 0;
  [cloudRecords clearOptInStateForURI:0 application:applicationId error:&v16];
  v6 = v16;

  if (v6)
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100249088();
    }

    v7 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Opt-in reset failed clear all states: error: %@", buf, 0xCu);
    }
  }

  v8 = [KTPendingFlag alloc];
  deps2 = [(KTSetOptInStateOperation *)self deps];
  cloudKitOutgoingNFS = [deps2 cloudKitOutgoingNFS];
  v11 = [(KTPendingFlag *)v8 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:cloudKitOutgoingNFS];

  deps3 = [(KTSetOptInStateOperation *)self deps];
  flagHandler = [deps3 flagHandler];
  [flagHandler handlePendingFlag:v11];

  deps4 = [(KTSetOptInStateOperation *)self deps];
  cloudKitOutgoingNFS2 = [deps4 cloudKitOutgoingNFS];
  [cloudKitOutgoingNFS2 trigger];
}

- (void)setKVSSMTTime:(id)time forState:(BOOL)state
{
  stateCopy = state;
  timeCopy = time;
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  deps = [(KTSetOptInStateOperation *)self deps];
  v9 = [deps kvs];
  v28 = 0;
  v10 = [KTOptInManagerServer getOptInHistory:applicationId store:v9 error:&v28];
  v11 = v28;

  if (v11)
  {
    deps2 = [(KTSetOptInStateOperation *)self deps];
    logger = [deps2 logger];
    [logger logResultForEvent:@"optInHistory" hardFailure:1 result:v11];

    if (qword_10038BCD0 != -1)
    {
      sub_1002490B0();
    }

    v14 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "getOptInHistory failed with %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = dispatch_semaphore_create(0);
    v16 = [NSMutableArray arrayWithArray:v10];
    v29[0] = timeCopy;
    v17 = [NSNumber numberWithBool:stateCopy];
    v29[1] = v17;
    v18 = [NSArray arrayWithObjects:v29 count:2];
    [v16 addObject:v18];

    deps3 = [(KTSetOptInStateOperation *)self deps];
    v20 = [deps3 kvs];
    optInKey = [(KTSetOptInStateOperation *)self optInKey];
    [v20 setObject:v16 forKey:optInKey];

    deps4 = [(KTSetOptInStateOperation *)self deps];
    v23 = [deps4 kvs];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10003D338;
    v26[3] = &unk_100317648;
    v26[4] = self;
    v27 = v15;
    v24 = v15;
    [v23 forceSync:v26];

    v25 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v24, v25);
  }
}

- (void)clearFailureEvents
{
  deps = [(KTSetOptInStateOperation *)self deps];
  dataStore = [deps dataStore];
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  v9 = 0;
  v6 = [dataStore clearAllFailureEvents:applicationId error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    if (qword_10038BCD0 != -1)
    {
      sub_1002490D8();
    }

    v8 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "failed to clear existing failure events: %@", buf, 0xCu);
    }
  }
}

- (void)clearCoreFollowUp
{
  deps = [(KTSetOptInStateOperation *)self deps];
  followup = [deps followup];
  v7 = 0;
  v4 = [followup clearAllFollowups:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100249100();
    }

    v6 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "failed to clear existing follow ups: %@", buf, 0xCu);
    }
  }
}

- (void)notifyOptInStatusChanged
{
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  notificationKey = [(KTSetOptInStateOperation *)self notificationKey];
  [v4 postNotificationName:notificationKey object:0 userInfo:0 deliverImmediately:1];
}

- (unint64_t)decodeAndVerifyOptInOutResponse:(id)response optInOutState:(BOOL)state optInOutTime:(id *)time error:(id *)error
{
  stateCopy = state;
  v29 = 0;
  v10 = [(TransparencyGPBMessage *)OptInOutResponse parseFromData:response error:&v29];
  v11 = v29;
  if (v10)
  {
    if ([v10 status] == 1 || objc_msgSend(v10, "status") == 3)
    {
      v12 = [v10 smt];
      v28 = 0;
      v13 = [(KTSetOptInStateOperation *)self decodeAndVerifySMT:v12 optInOutState:stateCopy optInOutTime:time error:&v28];
      v14 = v28;

      if (v13 != 1)
      {
        if (qword_10038BCD0 != -1)
        {
          sub_100249150();
        }

        v15 = qword_10038BCD8;
        if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          serverEventInfo = [v10 serverEventInfo];
          *buf = 138412546;
          *v31 = serverEventInfo;
          *&v31[8] = 2112;
          *&v31[10] = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "SMT verification failed for OptInOutResponse with %@: %@", buf, 0x16u);
        }

        if (error && v14)
        {
          v18 = v14;
          *error = v14;
        }
      }

      v19 = 0;
      goto LABEL_26;
    }

    if (qword_10038BCD0 != -1)
    {
      sub_100249128();
    }

    v22 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      status = [v10 status];
      serverEventInfo2 = [v10 serverEventInfo];
      *buf = 67109378;
      *v31 = status;
      *&v31[4] = 2112;
      *&v31[6] = serverEventInfo2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "optInOutResponse status failure: %d. ServerHint: %@", buf, 0x12u);
    }

    v21 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorServer, [v10 status], @"optInOutResponse status failure: %d", objc_msgSend(v10, "status"));
  }

  else
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100249178();
    }

    v20 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v31 = v11;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to parse optInOutResponse from directory server: %@", buf, 0xCu);
    }

    v21 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-318 underlyingError:v11 description:@"failed to parse optInOutResponse from directory server"];
  }

  v19 = v21;
  v13 = 0;
  if (error && v21)
  {
    v26 = v21;
    v13 = 0;
    *error = v19;
  }

LABEL_26:

  return v13;
}

- (unint64_t)decodeAndVerifySMT:(id)t optInOutState:(BOOL)state optInOutTime:(id *)time error:(id *)error
{
  stateCopy = state;
  tCopy = t;
  deps = [(KTSetOptInStateOperation *)self deps];
  publicKeyStore = [deps publicKeyStore];
  applicationId = [(KTSetOptInStateOperation *)self applicationId];
  v14 = [publicKeyStore applicationPublicKeyStore:applicationId];

  if (v14)
  {
    appSmtKeyStore = [v14 appSmtKeyStore];
    signatureVerifier = [appSmtKeyStore signatureVerifier];

    deps2 = [(KTSetOptInStateOperation *)self deps];
    dataStore = [deps2 dataStore];
    v19 = signatureVerifier;
    v20 = [SignedMutationTimestamp signedTypeWithObject:tCopy verifier:signatureVerifier dataStore:dataStore];

    v67 = 0;
    v21 = [v20 verifyWithError:&v67];
    v22 = v67;
    if (v21 != 1)
    {
      if (qword_10038BCD0 != -1)
      {
        sub_1002491A0();
      }

      v34 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v22;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "failed to verify optInOut SMT from directory server: %@", buf, 0xCu);
      }

      v35 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-316 underlyingError:v22 description:@"failed to verify optInOut SMT from directory server"];
      v36 = v35;
      v24 = 0;
      if (error && v35)
      {
        v37 = v35;
        v24 = 0;
        *error = v36;
      }

      goto LABEL_59;
    }

    v66 = 0;
    v23 = [v20 parsedMutationWithError:&v66];
    v24 = v66;
    v65 = v23;
    if (!v23)
    {
      if (qword_10038BCD0 != -1)
      {
        sub_100249268();
      }

      v38 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v24;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "failed to parse mutation from SMT from directory server: %@", buf, 0xCu);
      }

      v39 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-316 underlyingError:v24 description:@"failed to parse mutation from SMT from directory server"];
      v36 = v39;
      v21 = 0;
      if (error && v39)
      {
        v40 = v39;
        v21 = 0;
        *error = v36;
      }

      goto LABEL_58;
    }

    mutationType = [v23 mutationType];
    if (mutationType == 6)
    {
      v63 = v19;
      if (qword_10038BCD0 != -1)
      {
        sub_1002491C8();
      }

      v62 = v24;
      v41 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEBUG))
      {
        v42 = v41;
        optInOutMutation = [v23 optInOutMutation];
        v44 = [optInOutMutation description];
        *buf = 138412290;
        v71 = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "decodeAndVerifySMT OptInOut_Sync: %@", buf, 0xCu);

        v23 = v65;
      }

      [v23 optInOutMutation];
      v46 = v45 = v23;
      v64 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", ([v46 timestampMs] / 0x3E8));

      optInOutMutation2 = [v45 optInOutMutation];
    }

    else
    {
      if (mutationType != 3)
      {
        if (qword_10038BCD0 != -1)
        {
          sub_100249240();
        }

        v57 = qword_10038BCD8;
        if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "mutation from directory server not optInOut", buf, 2u);
        }

        v52 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-314 description:@"mutation from directory server not optInOut"];

        v55 = 0;
        if (error && v52)
        {
          v58 = v52;
          v55 = 0;
          v21 = 0;
          *error = v52;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_57;
      }

      v63 = v19;
      if (qword_10038BCD0 != -1)
      {
        sub_1002491F0();
      }

      v60 = v24;
      v26 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEBUG))
      {
        v27 = v26;
        optInOut = [v23 optInOut];
        v29 = [optInOut description];
        *buf = 138412290;
        v71 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "decodeAndVerifySMT OptInOutMutation: %@", buf, 0xCu);

        v23 = v65;
      }

      [v23 optInOut];
      v31 = v30 = v23;
      v64 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", ([v31 timestampMs] / 0x3E8));

      optInOutMutation2 = [v30 optInOut];
    }

    v47 = optInOutMutation2;
    optIn = [optInOutMutation2 optIn];

    v24 = v61;
    if (optIn == stateCopy)
    {
      v21 = 1;
      if (time)
      {
        v19 = v63;
        v55 = v64;
        if (v64)
        {
          v56 = v64;
          v55 = v64;
          *time = v64;
          v21 = 1;
        }

        v52 = v22;
      }

      else
      {
        v52 = v22;
        v19 = v63;
        v55 = v64;
      }
    }

    else
    {
      v68[0] = @"mutation";
      v49 = [NSNumber numberWithBool:optIn];
      v68[1] = @"expected";
      v69[0] = v49;
      v50 = [NSNumber numberWithBool:stateCopy];
      v69[1] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];

      v52 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-315 underlyingError:0 userinfo:v51 description:@"mutation from directory server has wrong optInOut state"];

      if (qword_10038BCD0 != -1)
      {
        sub_100249218();
      }

      v53 = qword_10038BCD8;
      v19 = v63;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v52;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "mutation from directory server has wrong optInOut %@", buf, 0xCu);
      }

      if (error && v52)
      {
        v54 = v52;
        *error = v52;
      }

      v21 = 0;
      v55 = v64;
    }

LABEL_57:

    v36 = 0;
    v22 = v52;
LABEL_58:

LABEL_59:
    goto LABEL_60;
  }

  if (qword_10038BCD0 != -1)
  {
    sub_100249290();
  }

  v33 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "could not get KTApplicationPublicKeyStore", buf, 2u);
  }

  v21 = 0;
LABEL_60:

  return v21;
}

@end