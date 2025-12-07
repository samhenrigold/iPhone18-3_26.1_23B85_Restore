@interface STSReader
- (STSReader)initWithType:(unint64_t)type queue:(id)queue;
- (id)_translateNfcdXPCHelperError:(id)error;
- (id)_translateSTSXPCHelperError:(id)error;
- (id)_translateXPCClientNotificationStatus:(unint64_t)status;
- (id)startWithConfiguration:(id)configuration connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationHandler:(id)invalidationHandler completion:(id)completion;
- (id)startWithHandoverType:(unint64_t)type connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationErrorHandler:(id)errorHandler completion:(id)completion;
- (void)_activateInvalidationHandler:(id)handler;
- (void)_activateOnConnectCompletion;
- (void)_activateSendRequestCompletion:(id)completion terminationRequested:(BOOL)requested error:(id)error;
- (void)_activateSessionStartCompletion:(id)completion;
- (void)_activateTnepStatusHandler:(id)handler;
- (void)_seProxyCleanup:(id)cleanup;
- (void)alternativeCarrierConnectedWithStatus:(unint64_t)status;
- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)status;
- (void)connectionEstablishedWithSTSReaderCryptarch:(id)cryptarch sessionTranscript:(id)transcript;
- (void)connectionHandoverCompleted:(id)completed;
- (void)dealloc;
- (void)executeOnSEProxyWithBlock:(id)block;
- (void)invalidate;
- (void)invalidateWithCode:(unsigned int)code;
- (void)invalidateWithCodeSync:(unsigned int)sync;
- (void)receiveISO18013DeviceResponse:(id)response sessionDataStatus:(id)status mDocResponseStatus:(id)responseStatus error:(id)error;
- (void)relinquishSEProxy;
- (void)sendDocumentRequest:(id)request timeoutInterval:(double)interval sessionTermination:(BOOL)termination responseHandler:(id)handler;
- (void)session:(id)session connectionHandoverProcessFailure:(id)failure;
- (void)session:(id)session didEndUnexpectedly:(id)unexpectedly;
- (void)transactionStarted:(unint64_t)started;
- (void)xpcInterrupted;
- (void)xpcInvalidated;
@end

@implementation STSReader

- (STSReader)initWithType:(unint64_t)type queue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = STSReader;
  v7 = [(STSReader *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v7->_transmissionState = 0;
    v9 = objc_opt_new();
    nfHwManager = v8->_nfHwManager;
    v8->_nfHwManager = v9;

    if (queueCopy)
    {
      v11 = queueCopy;
      callbackQueue = v8->_callbackQueue;
      v8->_callbackQueue = v11;
    }

    else
    {
      callbackQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("STSReader", callbackQueue);
      v14 = v8->_callbackQueue;
      v8->_callbackQueue = v13;
    }

    dispatch_suspend(v8->_callbackQueue);
    v8->_queuePaused = 1;
    v8->_state = 0;
    v15 = [[STSXPCClientNotificationListener alloc] initWithDelegate:v8 queue:v8->_callbackQueue];
    stsNotificationListener = v8->_stsNotificationListener;
    v8->_stsNotificationListener = v15;

    v17 = objc_opt_new();
    caSessionStats = v8->_caSessionStats;
    v8->_caSessionStats = v17;
  }

  return v8;
}

- (void)dealloc
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader dealloc]", 191, self, &stru_2876E3E50, v2, v3, v10.receiver);
  caSessionStats = [(STSReader *)self caSessionStats];
  [caSessionStats postReaderSessionEvent];

  if ([(STSReader *)self state]!= 2)
  {
    responseTimeout = [(STSReader *)self responseTimeout];
    [responseTimeout stopTimer];

    handoverSession = [(STSReader *)self handoverSession];
    [handoverSession endSession];

    [(STSReader *)self _seProxyCleanup:0];
    stsHelper = [(STSReader *)self stsHelper];
    [stsHelper invalidate];

    stsNotificationListener = [(STSReader *)self stsNotificationListener];
    [stsNotificationListener invalidateXPCConnection];
  }

  v10.receiver = self;
  v10.super_class = STSReader;
  [(STSReader *)&v10 dealloc];
}

- (id)startWithHandoverType:(unint64_t)type connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationErrorHandler:(id)errorHandler completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  errorHandlerCopy = errorHandler;
  statusHandlerCopy = statusHandler;
  handlerCopy = handler;
  v16 = _os_activity_create(&dword_26536F000, "startWithHandoverType:tnepStatusHandler:connectionHandler:invalidationHandler:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  os_activity_scope_enter(v16, &v20);
  os_activity_scope_leave(&v20);

  v17 = [STSEngagementConfiguration configurationWithDeviceEngagementType:0 dataRetrievalType:typeCopy & 7 engagementData:0];
  v18 = [(STSReader *)self startWithConfiguration:v17 connectionHandler:handlerCopy tnepStatusHandler:statusHandlerCopy invalidationHandler:errorHandlerCopy completion:completionCopy];

  return v18;
}

- (id)startWithConfiguration:(id)configuration connectionHandler:(id)handler tnepStatusHandler:(id)statusHandler invalidationHandler:(id)invalidationHandler completion:(id)completion
{
  v100[4] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  statusHandlerCopy = statusHandler;
  invalidationHandlerCopy = invalidationHandler;
  completionCopy = completion;
  deviceEngagementType = [configurationCopy deviceEngagementType];
  dataRetrievalType = [configurationCopy dataRetrievalType];
  engagementData = [configurationCopy engagementData];
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 238, self, @"Start with deviceEngagementType = 0x%x, dataRetrievalType = 0x%x and engagementData = %@", v17, v18, deviceEngagementType);

  v19 = _os_activity_create(&dword_26536F000, "startWithHandoverType:tnepStatusHandler:connectionHandler:invalidationHandler:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  os_activity_scope_leave(&state);

  if ([(STSReader *)self queuePaused])
  {
    [(STSReader *)self setQueuePaused:0];
    callbackQueue = [(STSReader *)self callbackQueue];
    dispatch_resume(callbackQueue);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(STSReader *)selfCopy state]&& [(STSReader *)selfCopy state]!= 2)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 258, selfCopy, @"Unexpected state; invalidate existing sessions", v22, v23, v73);
    [(STSReader *)selfCopy invalidateWithCodeSync:17];
  }

  [(STSReader *)selfCopy setSessionStartCompletion:completionCopy];
  [(STSReader *)selfCopy setTnepStatusHandler:statusHandlerCopy];
  [(STSReader *)selfCopy setConnectionHandler:handlerCopy];
  [(STSReader *)selfCopy setState:1];
  [(STSReader *)selfCopy setInvalidationHandler:invalidationHandlerCopy];
  caSessionStats = [(STSReader *)selfCopy caSessionStats];
  [caSessionStats setTotalTransactionsInSession:{objc_msgSend(caSessionStats, "totalTransactionsInSession") + 1}];

  objc_sync_exit(selfCopy);
  v25 = objc_opt_new();
  [(STSReader *)selfCopy setStsHelper:v25];

  if (![configurationCopy deviceEngagementType])
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 273, selfCopy, @"NFC Engagement", v26, v27, v73);
    dataRetrievalType2 = [configurationCopy dataRetrievalType];
    dataRetrievalType3 = [configurationCopy dataRetrievalType];
    v38 = dataRetrievalType2 & 1 | (8 * ((dataRetrievalType3 >> 1) & 1)) & 0xFFFFFFFFFFFFFFEFLL | (16 * (([configurationCopy dataRetrievalType] >> 2) & 1));
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 287, selfCopy, @"Starting nfc handover session with handover Type=0x%lx", v39, v40, v38);
    v41 = selfCopy;
    objc_sync_enter(v41);
    nfHwManager = [(STSReader *)v41 nfHwManager];
    manager = [nfHwManager manager];

    if (!manager)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 292, v41, @"Hardware not available", v44, v45, v74);
      v76 = MEMORY[0x277CCA9B8];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v99[0] = *MEMORY[0x277CCA450];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
      v100[0] = v52;
      v100[1] = &unk_2876ECCD8;
      v99[1] = @"Line";
      v99[2] = @"Method";
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), dataRetrievalType, engagementData];
      v100[2] = v53;
      v99[3] = *MEMORY[0x277CCA068];
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 293];
      v100[3] = v54;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:4];
      v56 = [v76 errorWithDomain:v51 code:12 userInfo:v55];

      callbackQueue2 = [(STSReader *)v41 callbackQueue];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = sub_265376B64;
      v96[3] = &unk_279B93848;
      v98 = completionCopy;
      v58 = v56;
      v97 = v58;
      dispatch_async(callbackQueue2, v96);

      v59 = v97;
      v35 = v58;

      objc_sync_exit(v41);
      goto LABEL_19;
    }

    objc_sync_exit(v41);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_265376B78;
    aBlock[3] = &unk_279B93A30;
    aBlock[4] = v41;
    aBlock[5] = a2;
    v46 = _Block_copy(aBlock);
    state.opaque[0] = 0;
    state.opaque[1] = &state;
    v91 = 0x3032000000;
    v92 = sub_26537700C;
    v93 = sub_26537701C;
    v94 = 0;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_265377024;
    v87[3] = &unk_279B93A58;
    v87[4] = v41;
    v88 = v46;
    p_state = &state;
    v47 = v46;
    v48 = [manager startSecureTransactionServicesSessionWithRole:1 connectionHandoverCofig:v38 completion:v87];
    v49 = *(state.opaque[1] + 40);
    *(state.opaque[1] + 40) = v48;

    _Block_object_dispose(&state, 8);
LABEL_18:
    v35 = 0;
    goto LABEL_19;
  }

  if ([configurationCopy deviceEngagementType] != 1)
  {
    goto LABEL_18;
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 342, selfCopy, @"QR Code Engagement", v28, v29, v73);
  selfCopy->_engagementConfiguration = 64;
  if ([configurationCopy dataRetrievalType])
  {
    selfCopy->_engagementConfiguration |= 1uLL;
  }

  if (([configurationCopy dataRetrievalType] & 2) != 0)
  {
    selfCopy->_engagementConfiguration |= 2uLL;
  }

  if (([configurationCopy dataRetrievalType] & 4) != 0)
  {
    selfCopy->_engagementConfiguration |= 4uLL;
  }

  stsHelper = [(STSReader *)selfCopy stsHelper];
  v31 = [stsHelper startISO18013WithConnectionHandoverConfiguration:selfCopy->_engagementConfiguration type:1 credentialType:2 delegate:selfCopy];

  if (v31)
  {
    callbackQueue3 = [(STSReader *)selfCopy callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2653771B4;
    block[3] = &unk_279B93848;
    v86 = completionCopy;
    v33 = v31;
    v85 = v33;
    dispatch_async(callbackQueue3, block);

    v34 = v85;
    v35 = v33;

    goto LABEL_19;
  }

  stsHelper2 = [(STSReader *)selfCopy stsHelper];
  stsNotificationListener = [(STSReader *)selfCopy stsNotificationListener];
  xpcEndpoint = [stsNotificationListener xpcEndpoint];
  v63 = [stsHelper2 connectToNotificationListener:xpcEndpoint];

  if (!v63)
  {
    engagementData2 = [configurationCopy engagementData];
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]", 375, selfCopy, @"engagementData = %@", v68, v69, engagementData2);

    stsHelper3 = [(STSReader *)selfCopy stsHelper];
    engagementData3 = [configurationCopy engagementData];
    callbackQueue4 = [(STSReader *)selfCopy callbackQueue];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = sub_2653771DC;
    v80[3] = &unk_279B938E8;
    v80[4] = selfCopy;
    [stsHelper3 connectRemoteWithQRCodeHandoverData:engagementData3 callbackQueue:callbackQueue4 responseHandler:v80];

    goto LABEL_18;
  }

  callbackQueue5 = [(STSReader *)selfCopy callbackQueue];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_2653771C8;
  v81[3] = &unk_279B93848;
  v83 = completionCopy;
  v65 = v63;
  v82 = v65;
  dispatch_async(callbackQueue5, v81);

  v66 = v82;
  v35 = v65;

LABEL_19:

  return v35;
}

- (void)sendDocumentRequest:(id)request timeoutInterval:(double)interval sessionTermination:(BOOL)termination responseHandler:(id)handler
{
  terminationCopy = termination;
  v73[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_26536F000, "sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 403, self, @"timeoutInterval=%f", v14, v15, *&interval);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![requestCopy length])
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 405, self, @"Invalid parameter", v16, v17, v56);
    v27 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v72[0] = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v73[0] = v29;
    v72[1] = *MEMORY[0x277CCA470];
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid Parameter"];
    v73[1] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v32 = [v27 errorWithDomain:v28 code:8 userInfo:v31];

    callbackQueue = [(STSReader *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_265377A9C;
    block[3] = &unk_279B93848;
    v63 = v32;
    v64 = handlerCopy;
    v34 = v32;
    dispatch_async(callbackQueue, block);

    goto LABEL_6;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(STSReader *)selfCopy state]== 2)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 419, selfCopy, @"invalidated flag already set", v19, v20, v56);
    v21 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v70[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v71[0] = v23;
    v70[1] = *MEMORY[0x277CCA470];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Session invalidated"];
    v71[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
    v26 = [v21 errorWithDomain:v22 code:9 userInfo:v25];
    goto LABEL_9;
  }

  sendRequestCompletion = [(STSReader *)selfCopy sendRequestCompletion];

  if (sendRequestCompletion)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 422, selfCopy, @"sendRequestCompletion already set", v36, v37, v56);
    v38 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v68[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v69[0] = v23;
    v68[1] = *MEMORY[0x277CCA470];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Pending send exists"];
    v69[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
    v26 = [v38 errorWithDomain:v22 code:9 userInfo:v25];
    goto LABEL_9;
  }

  if ((selfCopy->_engagementConfiguration & 0x40) == 0)
  {
    handoverSession = [(STSReader *)selfCopy handoverSession];
    v43 = handoverSession == 0;

    if (v43)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]", 425, selfCopy, @"Not a QRCode session and handoverSession is not created", v44, v45, v56);
      v55 = MEMORY[0x277CCA9B8];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v66[0] = *MEMORY[0x277CCA450];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v67[0] = v23;
      v66[1] = *MEMORY[0x277CCA470];
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Session has not started"];
      v67[1] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
      v26 = [v55 errorWithDomain:v22 code:9 userInfo:v25];
LABEL_9:
      v39 = v26;

      if (v39)
      {
        callbackQueue2 = [(STSReader *)selfCopy callbackQueue];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = sub_265377AB4;
        v59[3] = &unk_279B93848;
        v60 = v39;
        v61 = handlerCopy;
        v41 = v39;
        dispatch_async(callbackQueue2, v59);

        objc_sync_exit(selfCopy);
        goto LABEL_6;
      }
    }
  }

  if (terminationCopy && ![(STSReader *)selfCopy transmissionState])
  {
    [(STSReader *)selfCopy setTransmissionState:1];
  }

  if ([(STSReader *)selfCopy transmissionState])
  {
    v46 = [(STSReader *)selfCopy transmissionState]== 1;
  }

  else
  {
    v46 = 1;
  }

  [(STSReader *)selfCopy setSendRequestCompletion:handlerCopy];
  objc_sync_exit(selfCopy);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265377ACC;
  aBlock[3] = &unk_279B938E8;
  aBlock[4] = selfCopy;
  v47 = _Block_copy(aBlock);
  stsNotificationListener = [(STSReader *)selfCopy stsNotificationListener];
  v49 = stsNotificationListener;
  if (v46)
  {
    [stsNotificationListener sendISO18013SessionEstablishment:requestCopy completion:v47];
  }

  else
  {
    if (terminationCopy)
    {
      v50 = &unk_2876ECD38;
    }

    else
    {
      v50 = 0;
    }

    [stsNotificationListener sendISO18013SessionData:requestCopy status:v50 completion:v47];
  }

  v51 = [STSTimer alloc];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_265377B8C;
  v57[3] = &unk_279B93A80;
  v57[4] = selfCopy;
  v57[5] = a2;
  callbackQueue3 = [(STSReader *)selfCopy callbackQueue];
  v53 = [(STSTimer *)v51 initWithCallback:v57 queue:callbackQueue3];
  [(STSReader *)selfCopy setResponseTimeout:v53];

  responseTimeout = [(STSReader *)selfCopy responseTimeout];
  [responseTimeout startTimer:interval];

LABEL_6:
}

- (void)invalidate
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader invalidate]", 480, self, &stru_2876E3E50, v2, v3, v5);

  MEMORY[0x2821F9670](self, sel_invalidateWithCode_);
}

- (void)invalidateWithCode:(unsigned int)code
{
  v3 = *&code;
  obj = self;
  objc_sync_enter(obj);
  [(STSReader *)obj invalidateWithCodeSync:v3];
  objc_sync_exit(obj);
}

- (void)invalidateWithCodeSync:(unsigned int)sync
{
  v3 = *&sync;
  v32[4] = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_26536F000, "invalidateWithCodeSync:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  if ([(STSReader *)self state]== 2)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader invalidateWithCodeSync:]", 497, self, @"Previously invalidated", v7, v8, v24);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader invalidateWithCodeSync:]", 501, self, @"code=%d", v7, v8, v3);
    responseTimeout = [(STSReader *)self responseTimeout];
    [responseTimeout stopTimer];

    [(STSReader *)self setResponseTimeout:0];
    [(STSReader *)self setSessionTranscriptBytes:0];
    handoverSession = [(STSReader *)self handoverSession];
    [handoverSession endSession];

    [(STSReader *)self setHandoverSession:0];
    [(STSReader *)self _seProxyCleanup:0];
    stsHelper = [(STSReader *)self stsHelper];
    [stsHelper invalidate];

    [(STSReader *)self setStsHelper:0];
    [(STSReader *)self setState:2];
    invalidationHandler = [(STSReader *)self invalidationHandler];
    [(STSReader *)self setInvalidationHandler:0];
    stsNotificationListener = [(STSReader *)self stsNotificationListener];
    [stsNotificationListener invalidateXPCConnection];

    [(STSReader *)self setTransmissionState:0];
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v31[0] = *MEMORY[0x277CCA450];
    if (v3 >= 0x19)
    {
      v16 = 25;
    }

    else
    {
      v16 = v3;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_279B93958[v16]];
    v32[0] = v17;
    v32[1] = &unk_2876ECD68;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v32[2] = v18;
    v31[3] = *MEMORY[0x277CCA068];
    v25 = a2;
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 517];
    v32[3] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
    v21 = [v14 errorWithDomain:v15 code:v3 userInfo:v20];
    [(STSReader *)self _activateSendRequestCompletion:0 terminationRequested:0 error:v21];

    if (invalidationHandler)
    {
      callbackQueue = [(STSReader *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2653781F4;
      block[3] = &unk_279B93AA8;
      v29 = v3;
      v27 = invalidationHandler;
      v28 = v25;
      v23 = invalidationHandler;
      dispatch_async(callbackQueue, block);
    }
  }
}

- (void)executeOnSEProxyWithBlock:(id)block
{
  blockCopy = block;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 528, self, &stru_2876E3E50, v6, v7, v58);
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265378C68;
  aBlock[3] = &unk_279B93898;
  aBlock[4] = self;
  v9 = v8;
  v95 = v9;
  v10 = _Block_copy(aBlock);
  initiatingSession = [(STSReader *)self initiatingSession];
  if (initiatingSession)
  {
  }

  else
  {
    proxyReaderSESession = [(STSReader *)self proxyReaderSESession];

    if (!proxyReaderSESession)
    {
      goto LABEL_5;
    }
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 557, self, @"initiatingSession or proxyReaderSESession already exists. Clean it up first", v12, v13, v59);
  [(STSReader *)self _seProxyCleanup:0];
LABEL_5:
  handoverSession = [(STSReader *)self handoverSession];

  if (!handoverSession)
  {
    proxyReaderSESession2 = [(STSReader *)self proxyReaderSESession];

    if (proxyReaderSESession2)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 594, self, @"Previous session exists, tear down now", v24, v25, v59);
      [(STSReader *)self _seProxyCleanup:v10];
    }

    else
    {
      v10[2](v10);
    }

LABEL_18:
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 601, self, @" Waiting for SE Proxy Session", v26, v27, v59);
    v38 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v9, v38);
    proxyReaderSESession3 = [(STSReader *)self proxyReaderSESession];

    if (!proxyReaderSESession3)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]", 606, self, @"Could not get the SE Proxy session", v40, v41, v61);
      callbackQueue = [(STSReader *)self callbackQueue];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_265378E84;
      v72[3] = &unk_279B93AF8;
      v73 = blockCopy;
      v74 = a2;
      dispatch_async(callbackQueue, v72);

      [(STSReader *)self _seProxyCleanup:0];
      v22 = v73;
      goto LABEL_24;
    }

    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 614, self, @" Create SE ProxyListener", v40, v41, v61);
    v42 = [[NFSecureElementReaderProxyListener alloc] initWithSTSReaderSession:self];
    [(STSReader *)self setSeProxyListener:v42];

    seProxyListener = [(STSReader *)self seProxyListener];

    if (!seProxyListener)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]", 619, self, @"Could not get the  Proxy Listener", v44, v45, v62);
      callbackQueue2 = [(STSReader *)self callbackQueue];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_265379038;
      v69[3] = &unk_279B93AF8;
      v70 = blockCopy;
      v71 = a2;
      dispatch_async(callbackQueue2, v69);

      [(STSReader *)self _seProxyCleanup:0];
      v22 = v70;
      goto LABEL_24;
    }

    v46 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v47 = dispatch_queue_create("STSXPCReader", v46);

    stsHelper = [(STSReader *)self stsHelper];
    seProxyListener2 = [(STSReader *)self seProxyListener];
    v50 = [stsHelper startReaderSEProxyListener:seProxyListener2 workQueue:v47];

    if (v50)
    {
      callbackQueue3 = [(STSReader *)self callbackQueue];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_2653791EC;
      v65[3] = &unk_279B93B20;
      v54 = &v68;
      v68 = blockCopy;
      v66 = v50;
      selfCopy = self;
      dispatch_async(callbackQueue3, v65);
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader executeOnSEProxyWithBlock:]", 639, self, @"Could not startReaderSEProxyListener", v51, v52, v62);
      callbackQueue4 = [(STSReader *)self callbackQueue];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_265379254;
      v63[3] = &unk_279B93AF8;
      v54 = v64;
      v64[0] = blockCopy;
      v64[1] = a2;
      dispatch_async(callbackQueue4, v63);

      [(STSReader *)self _seProxyCleanup:0];
    }

    goto LABEL_27;
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 562, self, @"Create a handoffToken", v16, v17, v59);
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = sub_26537700C;
  v92 = sub_26537701C;
  v93 = 0;
  handoverSession2 = [(STSReader *)self handoverSession];
  v19 = v89;
  v87 = v89[5];
  v20 = [handoverSession2 createSessionHandoffToken:&v87];
  objc_storeStrong(v19 + 5, v87);

  if (v89[5])
  {
    callbackQueue5 = [(STSReader *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_265378E44;
    block[3] = &unk_279B93AD0;
    v85 = blockCopy;
    v86 = &v88;
    dispatch_async(callbackQueue5, block);

    [(STSReader *)self _seProxyCleanup:0];
    _Block_object_dispose(&v88, 8);
    v22 = v93;
LABEL_24:

    goto LABEL_27;
  }

  proxyReaderSESession4 = [(STSReader *)self proxyReaderSESession];

  if (proxyReaderSESession4)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]", 575, self, @"Previous session exists, tear down now", v29, v30, v60);
    [(STSReader *)self _seProxyCleanup:v10];
  }

  else
  {
    v10[2](v10);
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSReader executeOnSEProxyWithBlock:]", 581, self, @"Activating session with token: %@", v31, v32, v20);
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_26537700C;
  v82 = sub_26537701C;
  initiatingSession2 = [(STSReader *)self initiatingSession];
  v83 = [initiatingSession2 activateWithToken:v20];

  v36 = v79[5];
  if (v36)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]", 584, self, @"Session switching error=%@", v34, v35, v79[5]);
    callbackQueue6 = [(STSReader *)self callbackQueue];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_265378E64;
    v75[3] = &unk_279B93AD0;
    v76 = blockCopy;
    v77 = &v78;
    dispatch_async(callbackQueue6, v75);

    [(STSReader *)self _seProxyCleanup:0];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSReader executeOnSEProxyWithBlock:]", 591, self, @"Activated session with token: %@", v34, v35, v20);
  }

  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v88, 8);
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_27:
}

- (void)relinquishSEProxy
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader relinquishSEProxy]", 650, self, &stru_2876E3E50, v2, v3, v6);
  stsHelper = [(STSReader *)self stsHelper];
  [stsHelper stopSEProxyListener];

  [(STSReader *)self setSeProxyListener:0];
}

- (void)transactionStarted:(unint64_t)started
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader transactionStarted:]", 658, self, @"status=%lu", v3, v4, started);
  if (started)
  {
    v7 = [(STSReader *)self _translateXPCClientNotificationStatus:started];
    [(STSReader *)self _activateInvalidationHandler:v7];
  }
}

- (void)receiveISO18013DeviceResponse:(id)response sessionDataStatus:(id)status mDocResponseStatus:(id)responseStatus error:(id)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  statusCopy = status;
  responseStatusCopy = responseStatus;
  errorCopy = error;
  v14 = [responseCopy length];
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 679, self, @"dataLen=%ld, SessionData.status=%@, mDocResponseStatus=%@, error=%@", v15, v16, v14);
  responseTimeout = [(STSReader *)self responseTimeout];
  [responseTimeout stopTimer];

  [(STSReader *)self setResponseTimeout:0];
  unsignedIntegerValue = [statusCopy unsignedIntegerValue];
  if ((unsignedIntegerValue - 10) < 2)
  {
    goto LABEL_4;
  }

  if (unsignedIntegerValue == 20)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 688, self, @"Session termination requested in session data status", v19, v20, v30);
LABEL_4:
    v21 = 1;
    goto LABEL_6;
  }

  v21 = 0;
LABEL_6:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(STSReader *)selfCopy transmissionState]== 1)
  {
    stsNotificationListener = [(STSReader *)selfCopy stsNotificationListener];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_26537988C;
    v31[3] = &unk_279B938E8;
    v31[4] = selfCopy;
    [stsNotificationListener sendISO18013SessionData:0 status:&unk_2876ECD38 completion:v31];
  }

  objc_sync_exit(selfCopy);

  if ([responseCopy length])
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 710, selfCopy, @"activating send request completion: terminationRequested: %d", v24, v25, v21);
    [(STSReader *)selfCopy _activateSendRequestCompletion:responseCopy terminationRequested:v21 error:0];
  }

  else if (v21)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]", 713, selfCopy, @"Session termination request received", v24, v25, v30);
    v26 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = off_2800174A8;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v28 = [v26 errorWithDomain:@"STSXPCHelperErrorDomain" code:17 userInfo:v27];

    v29 = [(STSReader *)selfCopy _translateSTSXPCHelperError:v28];

    [(STSReader *)selfCopy _activateInvalidationHandler:v29];
  }
}

- (void)alternativeCarrierConnectedWithStatus:(unint64_t)status
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader alternativeCarrierConnectedWithStatus:]", 730, self, @"status=%lu", v3, v4, status);
  if (status)
  {
    handoverSession = [(STSReader *)self _translateXPCClientNotificationStatus:status];
    [(STSReader *)self _activateInvalidationHandler:?];
  }

  else
  {
    [(STSReader *)self _activateOnConnectCompletion];
    handoverSession = [(STSReader *)self handoverSession];
    [handoverSession stopTNEPOperation];
  }
}

- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)status
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader alternativeCarrierDisconnectedWithStatus:]", 743, self, &stru_2876E3E50, v3, v4, v7);
  v8 = [(STSReader *)self _translateXPCClientNotificationStatus:status];
  [(STSReader *)self _activateInvalidationHandler:v8];
}

- (void)connectionEstablishedWithSTSReaderCryptarch:(id)cryptarch sessionTranscript:(id)transcript
{
  transcriptCopy = transcript;
  cryptarchCopy = cryptarch;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader connectionEstablishedWithSTSReaderCryptarch:sessionTranscript:]", 750, self, &stru_2876E3E50, v7, v8, v9);
  [(STSReader *)self setStsReaderCryptarch:cryptarchCopy];

  [(STSReader *)self setSessionTranscriptBytes:transcriptCopy];
}

- (void)xpcInvalidated
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader xpcInvalidated]", 756, self, &stru_2876E3E50, v2, v3, v5);

  MEMORY[0x2821F9670](self, sel_invalidateWithCode_);
}

- (void)xpcInterrupted
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader xpcInterrupted]", 761, self, &stru_2876E3E50, v2, v3, v5);

  MEMORY[0x2821F9670](self, sel_invalidateWithCode_);
}

- (void)session:(id)session connectionHandoverProcessFailure:(id)failure
{
  failureCopy = failure;
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader session:connectionHandoverProcessFailure:]", 778, self, @"error=%@", v6, v7, failureCopy);
  v14 = failureCopy;
  domain = [v14 domain];
  v9 = [domain isEqualToString:@"STSXPCHelperErrorDomain"];

  v10 = v14;
  if ((v9 & 1) == 0)
  {
    userInfo = [v14 userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v10 = v14;
    if (v12)
    {
      v10 = v12;
    }
  }

  v13 = [(STSReader *)self _translateSTSXPCHelperError:v10];

  [(STSReader *)self _activateTnepStatusHandler:v13];
  [(STSReader *)self _activateInvalidationHandler:v13];
}

- (void)connectionHandoverCompleted:(id)completed
{
  completedCopy = completed;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader connectionHandoverCompleted:]", 795, self, &stru_2876E3E50, v5, v6, v7);
  [completedCopy stopTNEPOperation];

  [(STSReader *)self _activateTnepStatusHandler:0];
}

- (void)session:(id)session didEndUnexpectedly:(id)unexpectedly
{
  v22[4] = *MEMORY[0x277D85DE8];
  unexpectedlyCopy = unexpectedly;
  code = [unexpectedlyCopy code];
  v9 = MEMORY[0x277CCA9B8];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  if (code == 47)
  {
    v21[0] = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reader mode protection enable"];
    v22[0] = v11;
    v22[1] = &unk_2876ECDE0;
    v21[1] = @"Line";
    v21[2] = @"Method";
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v22[2] = v4;
    v21[3] = *MEMORY[0x277CCA068];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 803];
    v22[3] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v14 = [v9 errorWithDomain:v10 code:20 userInfo:v13];

LABEL_6:
    goto LABEL_7;
  }

  v19[0] = *MEMORY[0x277CCA450];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Aborted"];
  v20[0] = v11;
  v19[1] = *MEMORY[0x277CCA7E8];
  v12 = unexpectedlyCopy;
  if (!unexpectedlyCopy)
  {
    v15 = MEMORY[0x277CCA9B8];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v12 = [v15 errorWithDomain:v4 code:5 userInfo:0];
  }

  v20[1] = v12;
  v20[2] = &unk_2876ECDF8;
  v19[2] = @"Line";
  v19[3] = @"Method";
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v20[3] = v16;
  v19[4] = *MEMORY[0x277CCA068];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 805];
  v20[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v14 = [v9 errorWithDomain:v10 code:3 userInfo:v18];

  if (!unexpectedlyCopy)
  {
    goto LABEL_6;
  }

LABEL_7:

  [(STSReader *)self _activateInvalidationHandler:v14];
}

- (void)_seProxyCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader _seProxyCleanup:]", 814, self, &stru_2876E3E50, v4, v5, v13);
  proxyReaderSESession = [(STSReader *)self proxyReaderSESession];

  if (proxyReaderSESession)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader _seProxyCleanup:]", 817, self, @"relinquish SE back", v7, v8, v14);
    proxyReaderSESession2 = [(STSReader *)self proxyReaderSESession];
    [proxyReaderSESession2 endSessionWithCompletion:&unk_2876E3CF0];

    [(STSReader *)self setProxyReaderSESession:0];
  }

  initiatingSession = [(STSReader *)self initiatingSession];

  if (initiatingSession)
  {
    initiatingSession2 = [(STSReader *)self initiatingSession];
    [initiatingSession2 endSessionWithCompletion:&unk_2876E3D10];

    [(STSReader *)self setInitiatingSession:0];
  }

  v12 = cleanupCopy;
  if (cleanupCopy)
  {
    (*(cleanupCopy + 2))(cleanupCopy);
    v12 = cleanupCopy;
  }
}

- (void)_activateSessionStartCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537A2F0;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_activateTnepStatusHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537A4A8;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_activateOnConnectCompletion
{
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26537A638;
  v4[3] = &unk_279B93B90;
  objc_copyWeak(&v5, &location);
  dispatch_async(callbackQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activateSendRequestCompletion:(id)completion terminationRequested:(BOOL)requested error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26537A7EC;
  v13[3] = &unk_279B93BB8;
  objc_copyWeak(&v17, &location);
  v14 = errorCopy;
  v15 = completionCopy;
  requestedCopy = requested;
  selfCopy = self;
  v11 = completionCopy;
  v12 = errorCopy;
  dispatch_async(callbackQueue, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_activateInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader _activateInvalidationHandler:]", 902, self, @"error=%@", v5, v6, handlerCopy);
  handoverSession = [(STSReader *)self handoverSession];
  [handoverSession endSession];

  objc_initWeak(&location, self);
  callbackQueue = [(STSReader *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537AA38;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v12, &location);
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)_translateXPCClientNotificationStatus:(unint64_t)status
{
  v4 = 0;
  v33[4] = *MEMORY[0x277D85DE8];
  if (status > 5)
  {
    if (status > 7)
    {
      if (status == 8)
      {
        v18 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v22[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Alternative Carrier transmission error"];
        v23[0] = v7;
        v23[1] = &unk_2876ECE88;
        v22[1] = @"Line";
        v22[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v23[2] = v8;
        v22[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 939];
        v23[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
        v11 = v18;
        v12 = v6;
        v13 = 19;
      }

      else
      {
        if (status != 9)
        {
          goto LABEL_18;
        }

        v15 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v20[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
        v21[0] = v7;
        v21[1] = &unk_2876ECEA0;
        v20[1] = @"Line";
        v20[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v21[2] = v8;
        v20[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 941];
        v21[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
        v11 = v15;
        v12 = v6;
        v13 = 9;
      }
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      if (status == 6)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v26[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Wifi power on"];
        v27[0] = v7;
        v27[1] = &unk_2876ECE58;
        v26[1] = @"Line";
        v26[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v27[2] = v8;
        v26[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 935];
        v27[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
        v11 = v14;
        v12 = v6;
        v13 = 15;
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v24[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Bluetooth power on"];
        v25[0] = v7;
        v25[1] = &unk_2876ECE70;
        v24[1] = @"Line";
        v24[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v25[2] = v8;
        v24[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 937];
        v25[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
        v11 = v14;
        v12 = v6;
        v13 = 16;
      }
    }
  }

  else
  {
    if (status <= 3)
    {
      if (status - 1 >= 2)
      {
        if (status != 3)
        {
          goto LABEL_18;
        }

        v5 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v30[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Timeout"];
        v31[0] = v7;
        v31[1] = &unk_2876ECE28;
        v30[1] = @"Line";
        v30[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v31[2] = v8;
        v30[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 931];
        v31[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
        v11 = v5;
        v12 = v6;
        v13 = 4;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (status == 4)
    {
LABEL_14:
      v17 = MEMORY[0x277CCA9B8];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v32[0] = *MEMORY[0x277CCA450];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Cancelled"];
      v33[0] = v7;
      v33[1] = &unk_2876ECE10;
      v32[1] = @"Line";
      v32[2] = @"Method";
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v33[2] = v8;
      v32[3] = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 929];
      v33[3] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
      v11 = v17;
      v12 = v6;
      v13 = 13;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v28[0] = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
    v29[0] = v7;
    v29[1] = &unk_2876ECE40;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v29[2] = v8;
    v28[3] = *MEMORY[0x277CCA068];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 933];
    v29[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    v11 = v16;
    v12 = v6;
    v13 = 14;
  }

LABEL_17:
  v4 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

LABEL_18:

  return v4;
}

- (id)_translateSTSXPCHelperError:(id)error
{
  v121[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (!errorCopy)
  {
    a2 = 0;
    goto LABEL_16;
  }

  domain = [errorCopy domain];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v9 = [domain isEqual:v8];

  if (v9)
  {
    v10 = v6;
LABEL_7:
    a2 = v10;
    goto LABEL_16;
  }

  domain2 = [v6 domain];
  v12 = [domain2 isEqual:@"nfcd"];

  if (v12)
  {
    v10 = [(STSReader *)self _translateNfcdXPCHelperError:v6];
    goto LABEL_7;
  }

  domain3 = [v6 domain];
  v14 = [domain3 isEqual:@"STSXPCHelperErrorDomain"];

  if ((v14 & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v120[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v24 = *MEMORY[0x277CCA7E8];
    v121[0] = v17;
    v121[1] = v6;
    v120[1] = v24;
    v120[2] = @"Line";
    v121[2] = &unk_2876ECEB8;
    v120[3] = @"Method";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v121[3] = v19;
    v120[4] = *MEMORY[0x277CCA068];
    1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 957];
    v121[4] = 1002;
    v21 = MEMORY[0x277CBEAC0];
    v22 = v121;
    v23 = v120;
LABEL_12:
    v25 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:5];
    v26 = v15;
    v27 = v16;
    v28 = 5;
LABEL_13:
    a2 = [v26 errorWithDomain:v27 code:v28 userInfo:v25];

    goto LABEL_14;
  }

  switch([v6 code])
  {
    case 0:
      v55 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v118[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v119[0] = v17;
      v119[1] = &unk_2876ECED0;
      v118[1] = @"Line";
      v118[2] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v119[2] = v19;
      v118[3] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 965];
      v119[3] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:4];
      v26 = v55;
      v27 = v16;
      v28 = 10;
      goto LABEL_13;
    case 1:
      v56 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v116[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v57 = *MEMORY[0x277CCA7E8];
      v117[0] = v17;
      v117[1] = v6;
      v116[1] = v57;
      v116[2] = @"Line";
      v117[2] = &unk_2876ECEE8;
      v116[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v117[3] = v19;
      v116[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 967];
      v117[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:5];
      v26 = v56;
      v27 = v16;
      v28 = 11;
      goto LABEL_13;
    case 2:
      v46 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v114[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v47 = *MEMORY[0x277CCA7E8];
      v115[0] = v17;
      v115[1] = v6;
      v114[1] = v47;
      v114[2] = @"Line";
      v115[2] = &unk_2876ECF00;
      v114[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v115[3] = v19;
      v114[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 969];
      v115[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:5];
      v26 = v46;
      v27 = v16;
      v28 = 9;
      goto LABEL_13;
    case 3:
    case 9:
    case 10:
    case 11:
    case 19:
    case 20:
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v102[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
      v18 = *MEMORY[0x277CCA7E8];
      v103[0] = v17;
      v103[1] = v6;
      v102[1] = v18;
      v102[2] = @"Line";
      v103[2] = &unk_2876ECF90;
      v102[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v103[3] = v19;
      v102[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 987];
      v103[4] = 1002;
      v21 = MEMORY[0x277CBEAC0];
      v22 = v103;
      v23 = v102;
      goto LABEL_12;
    case 4:
      v36 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v110[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
      v37 = *MEMORY[0x277CCA7E8];
      v111[0] = v17;
      v111[1] = v6;
      v110[1] = v37;
      v110[2] = @"Line";
      v111[2] = &unk_2876ECF30;
      v110[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v111[3] = v19;
      v110[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 973];
      v111[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:5];
      v26 = v36;
      v27 = v16;
      v28 = 6;
      goto LABEL_13;
    case 5:
      v53 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v108[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v54 = *MEMORY[0x277CCA7E8];
      v109[0] = v17;
      v109[1] = v6;
      v108[1] = v54;
      v108[2] = @"Line";
      v109[2] = &unk_2876ECF48;
      v108[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v109[3] = v19;
      v108[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 975];
      v109[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:5];
      v26 = v53;
      v27 = v16;
      v28 = 8;
      goto LABEL_13;
    case 6:
      v32 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v106[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
      v33 = *MEMORY[0x277CCA7E8];
      v107[0] = v17;
      v107[1] = v6;
      v106[1] = v33;
      v106[2] = @"Line";
      v107[2] = &unk_2876ECF60;
      v106[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v107[3] = v19;
      v106[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 977];
      v107[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:5];
      v26 = v32;
      v27 = v16;
      v28 = 12;
      goto LABEL_13;
    case 7:
      v34 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v104[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Timeout"];
      v35 = *MEMORY[0x277CCA7E8];
      v105[0] = v17;
      v105[1] = v6;
      v104[1] = v35;
      v104[2] = @"Line";
      v105[2] = &unk_2876ECF78;
      v104[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v105[3] = v19;
      v104[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 979];
      v105[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:5];
      v26 = v34;
      v27 = v16;
      v28 = 4;
      goto LABEL_13;
    case 8:
      v48 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v112[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
      v49 = *MEMORY[0x277CCA7E8];
      v113[0] = v17;
      v113[1] = v6;
      v112[1] = v49;
      v112[2] = @"Line";
      v113[2] = &unk_2876ECF18;
      v112[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v113[3] = v19;
      v112[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 971];
      v113[4] = 1002;
      v50 = MEMORY[0x277CBEAC0];
      v51 = v113;
      v52 = v112;
      goto LABEL_46;
    case 12:
      v38 = v6;
      domain4 = [v38 domain];
      if (![domain4 isEqualToString:@"STSXPCHelperErrorDomain"])
      {

        goto LABEL_37;
      }

      code = [v38 code];

      if (code != 12)
      {
LABEL_37:

        v16 = 0;
        goto LABEL_38;
      }

      userInfo = [v38 userInfo];
      v42 = *MEMORY[0x277CCA7E8];
      v43 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      domain5 = [v43 domain];
      v45 = [domain5 isEqualToString:@"BluetoothDomain"];

      if (v45)
      {
        v16 = v43;
      }

      else
      {
        v16 = 0;
      }

      if (v16 && ![v16 code])
      {
        v75 = MEMORY[0x277CCA9B8];
        v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v98[0] = *MEMORY[0x277CCA450];
        v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Bluetooth power on"];
        v99[0] = v77;
        v99[1] = v38;
        v98[1] = v42;
        v98[2] = @"Line";
        v99[2] = &unk_2876ECFC0;
        v98[3] = @"Method";
        v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v99[3] = v78;
        v98[4] = *MEMORY[0x277CCA068];
        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 993];
        v99[4] = v79;
        v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:5];
        a2 = [v75 errorWithDomain:v76 code:16 userInfo:v80];

        goto LABEL_15;
      }

LABEL_38:
      v66 = v38;
      domain6 = [v66 domain];
      if (![domain6 isEqualToString:@"WifiDomain"])
      {

        goto LABEL_43;
      }

      code2 = [v66 code];

      if (code2 != 12)
      {
LABEL_43:

        v17 = 0;
        goto LABEL_44;
      }

      userInfo2 = [v66 userInfo];
      v70 = *MEMORY[0x277CCA7E8];
      v71 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      domain7 = [v71 domain];
      v73 = [domain7 isEqualToString:@"WifiDomain"];

      if (v73)
      {
        v17 = v71;
      }

      else
      {
        v17 = 0;
      }

      if (!v17 || [v17 code] != 3)
      {
LABEL_44:

LABEL_45:
        v48 = MEMORY[0x277CCA9B8];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v94[0] = *MEMORY[0x277CCA450];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
        v74 = *MEMORY[0x277CCA7E8];
        v95[0] = v17;
        v95[1] = v6;
        v94[1] = v74;
        v94[2] = @"Line";
        v95[2] = &unk_2876ECFF0;
        v94[3] = @"Method";
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v95[3] = v19;
        v94[4] = *MEMORY[0x277CCA068];
        1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1002];
        v95[4] = 1002;
        v50 = MEMORY[0x277CBEAC0];
        v51 = v95;
        v52 = v94;
LABEL_46:
        v25 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:5];
        v26 = v48;
        v27 = v16;
        v28 = 14;
        goto LABEL_13;
      }

      v81 = MEMORY[0x277CCA9B8];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v96[0] = *MEMORY[0x277CCA450];
      v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Wifi power on"];
      v97[0] = v82;
      v97[1] = v66;
      v96[1] = v70;
      v96[2] = @"Line";
      v97[2] = &unk_2876ECFD8;
      v96[3] = @"Method";
      v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v97[3] = v83;
      v96[4] = *MEMORY[0x277CCA068];
      v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 998];
      v97[4] = v84;
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:5];
      a2 = [v81 errorWithDomain:v19 code:15 userInfo:v85];

LABEL_14:
LABEL_15:

LABEL_16:

      return a2;
    case 13:
      goto LABEL_45;
    case 14:
    case 15:
      v30 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v92[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Alternative Carrier transmission error"];
      v31 = *MEMORY[0x277CCA7E8];
      v93[0] = v17;
      v93[1] = v6;
      v92[1] = v31;
      v92[2] = @"Line";
      v93[2] = &unk_2876ED008;
      v92[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v93[3] = v19;
      v92[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1005];
      v93[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:5];
      v26 = v30;
      v27 = v16;
      v28 = 19;
      goto LABEL_13;
    case 16:
      v62 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v90[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Cancelled"];
      v63 = *MEMORY[0x277CCA7E8];
      v91[0] = v17;
      v91[1] = v6;
      v90[1] = v63;
      v90[2] = @"Line";
      v91[2] = &unk_2876ED020;
      v90[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v91[3] = v19;
      v90[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1007];
      v91[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:5];
      v26 = v62;
      v27 = v16;
      v28 = 13;
      goto LABEL_13;
    case 17:
      v64 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v88[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalidated"];
      v65 = *MEMORY[0x277CCA7E8];
      v89[0] = v17;
      v89[1] = v6;
      v88[1] = v65;
      v88[2] = @"Line";
      v89[2] = &unk_2876ED038;
      v88[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v89[3] = v19;
      v88[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1009];
      v89[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:5];
      v26 = v64;
      v27 = v16;
      v28 = 17;
      goto LABEL_13;
    case 18:
      v58 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v86[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"QRCode decoding error"];
      v59 = *MEMORY[0x277CCA7E8];
      v87[0] = v17;
      v87[1] = v6;
      v86[1] = v59;
      v86[2] = @"Line";
      v87[2] = &unk_2876ED050;
      v86[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v87[3] = v19;
      v86[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1011];
      v87[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:5];
      v26 = v58;
      v27 = v16;
      v28 = 21;
      goto LABEL_13;
    case 21:
      v60 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v100[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reader reported an error"];
      v61 = *MEMORY[0x277CCA7E8];
      v101[0] = v17;
      v101[1] = v6;
      v100[1] = v61;
      v100[2] = @"Line";
      v101[2] = &unk_2876ECFA8;
      v100[3] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v101[3] = v19;
      v100[4] = *MEMORY[0x277CCA068];
      1002 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 989];
      v101[4] = 1002;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:5];
      v26 = v60;
      v27 = v16;
      v28 = 24;
      goto LABEL_13;
    default:
      goto LABEL_16;
  }
}

- (id)_translateNfcdXPCHelperError:(id)error
{
  v40[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_7;
  }

  domain = [errorCopy domain];
  v8 = [domain isEqual:@"nfcd"];

  if ((v8 & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader _translateNfcdXPCHelperError:]", 1019, self, @"Wrong domain", v9, v10, v32);
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v39[0] = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v22 = *MEMORY[0x277CCA7E8];
    v40[0] = v14;
    v40[1] = v6;
    v39[1] = v22;
    v39[2] = @"Line";
    v40[2] = &unk_2876ED068;
    v39[3] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v40[3] = v16;
    v39[4] = *MEMORY[0x277CCA068];
    1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1020];
    v40[4] = 1020;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v40;
    v20 = v39;
    goto LABEL_9;
  }

  code = [v6 code];
  if (code > 14)
  {
    if (code == 21)
    {
      v29 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v35[0] = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TNEP connection error"];
      v30 = *MEMORY[0x277CCA7E8];
      v36[0] = v14;
      v36[1] = v6;
      v35[1] = v30;
      v35[2] = @"Line";
      v36[2] = &unk_2876ED098;
      v35[3] = @"Method";
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v36[3] = v16;
      v35[4] = *MEMORY[0x277CCA068];
      1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1033];
      v36[4] = 1020;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
      v24 = v29;
      v25 = v13;
      v26 = 23;
      goto LABEL_14;
    }

    if (code != 15)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v37[0] = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC tear"];
    v28 = *MEMORY[0x277CCA7E8];
    v38[0] = v14;
    v38[1] = v6;
    v37[1] = v28;
    v37[2] = @"Line";
    v38[2] = &unk_2876ED080;
    v37[3] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v38[3] = v16;
    v37[4] = *MEMORY[0x277CCA068];
    1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1031];
    v38[4] = 1020;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
    v24 = v27;
    v25 = v13;
    v26 = 22;
    goto LABEL_14;
  }

  if (!code)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_15;
  }

  if (code == 5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v12 = MEMORY[0x277CCA9B8];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v33[0] = *MEMORY[0x277CCA450];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
  v15 = *MEMORY[0x277CCA7E8];
  v34[0] = v14;
  v34[1] = v6;
  v33[1] = v15;
  v33[2] = @"Line";
  v34[2] = &unk_2876ED0B0;
  v33[3] = @"Method";
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v34[3] = v16;
  v33[4] = *MEMORY[0x277CCA068];
  1020 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 1035];
  v34[4] = 1020;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v34;
  v20 = v33;
LABEL_9:
  v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:5];
  v24 = v12;
  v25 = v13;
  v26 = 5;
LABEL_14:
  v21 = [v24 errorWithDomain:v25 code:v26 userInfo:v23];

LABEL_15:

  return v21;
}

@end