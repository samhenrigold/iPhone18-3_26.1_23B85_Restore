@interface STSSessionBase
- (STSSessionBase)init;
- (STSSessionBaseDelegate)delegate;
- (id)activateChildSession;
- (id)canStartSession;
- (id)createHandoffToken:(id *)token;
- (id)setActiveCredential:(id)credential;
- (id)setActiveCredentials:(id)credentials;
- (id)validateCredentials:(id)credentials;
- (id)waitForControlSessionToBeReady:(int)ready;
- (void)_tearDownOnQueue:(BOOL)queue completion:(id)completion;
- (void)clearSessionTimer;
- (void)dealloc;
- (void)endSessionWithCompletion:(id)completion;
- (void)fireSessionDidEndUnexpectedlyEventWithStatus:(unint64_t)status;
- (void)handleSessionResumed:(id)resumed;
- (void)handleSessionSuspended:(id)suspended withToken:(id)token;
- (void)secureElementManagerSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)setSessionTimeLimit:(double)limit;
- (void)startWithDelegate:(id)delegate isFirstInQueue:(BOOL *)queue;
- (void)startWithDelegate:(id)delegate isFirstInQueue:(BOOL *)queue completion:(id)completion;
@end

@implementation STSSessionBase

- (STSSessionBase)init
{
  v11.receiver = self;
  v11.super_class = STSSessionBase;
  v2 = [(STSSessionBase *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, -1);

    ClassName = object_getClassName(v2);
    v6 = dispatch_queue_create(ClassName, v4);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v6;

    v2->_sessionUpdateLock._os_unfair_lock_opaque = 0;
    v8 = objc_opt_new();
    nfHwManager = v2->_nfHwManager;
    v2->_nfHwManager = v8;
  }

  return v2;
}

- (void)dealloc
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase dealloc]", 48, self, &stru_2876E3E50, v2, v3, v5.receiver);
  [(STSSessionBase *)self clearSessionTimer];
  [(STSSessionBase *)self _tearDownOnQueue:0 completion:0];
  v5.receiver = self;
  v5.super_class = STSSessionBase;
  [(STSSessionBase *)&v5 dealloc];
}

- (void)startWithDelegate:(id)delegate isFirstInQueue:(BOOL *)queue
{
  delegateCopy = delegate;
  [(STSSessionBase *)self setDelegate:delegateCopy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_265372674;
  aBlock[3] = &unk_279B93820;
  aBlock[4] = self;
  v14 = delegateCopy;
  queueCopy = queue;
  v7 = delegateCopy;
  v8 = _Block_copy(aBlock);
  masterSESession = [(STSSessionBase *)self masterSESession];

  if (masterSESession)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:]", 113, self, @"Previous session exists, tear down now", v10, v11, v12);
    [(STSSessionBase *)self _tearDownOnQueue:1 completion:v8];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)startWithDelegate:(id)delegate isFirstInQueue:(BOOL *)queue completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  v10 = _os_activity_create(&dword_26536F000, "startWithDelegate:isFirstInQueue:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:completion:]", 124, self, &stru_2876E3E50, v11, v12, v15[0]);
  canStartSession = [(STSSessionBase *)self canStartSession];
  if (canStartSession)
  {
    callbackQueue = [(STSSessionBase *)self callbackQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_265372BA0;
    v15[3] = &unk_279B93848;
    v17 = completionCopy;
    v16 = canStartSession;
    dispatch_async(callbackQueue, v15);
  }

  else
  {
    [(STSSessionBase *)self setTheStartCallback:completionCopy];
    [(STSSessionBase *)self startWithDelegate:delegateCopy isFirstInQueue:queue];
  }
}

- (id)canStartSession
{
  v15[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase canStartSession]", 137, self, @"Subclass must implement this!", v2, v3, v13);
  v5 = MEMORY[0x277CCA9B8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v14[0] = *MEMORY[0x277CCA450];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v15[0] = v7;
  v15[1] = &unk_2876ECB70;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v8;
  v14[3] = *MEMORY[0x277CCA068];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 138];
  v15[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v11 = [v5 errorWithDomain:v6 code:10 userInfo:v10];

  return v11;
}

- (void)endSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_26536F000, "endSessionWithCompletion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase endSessionWithCompletion:]", 143, self, &stru_2876E3E50, v6, v7, v9);
  objc_initWeak(&state, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_265372EC0;
  v10[3] = &unk_279B93870;
  objc_copyWeak(&v12, &state);
  v8 = completionCopy;
  v10[4] = self;
  v11 = v8;
  [(STSSessionBase *)self _tearDownOnQueue:1 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&state);
}

- (id)activateChildSession
{
  v34[4] = *MEMORY[0x277D85DE8];
  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    activeChildSession = [handler2 activeChildSession];

    if (activeChildSession)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase activateChildSession]", 180, self, @"Child session previously activated", v7, v8, v29);
      v9 = 0;
    }

    else
    {
      handler3 = [(STSSessionBase *)self handler];
      masterSESession = [(STSSessionBase *)self masterSESession];
      v30 = 0;
      v18 = [handler3 createHandoffTokenFromSession:masterSESession outError:&v30];
      v19 = v30;

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        if ([v18 length])
        {
          sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase activateChildSession]", 196, self, @"activating new handler with token: %@", v20, v21, v18);
          handler4 = [(STSSessionBase *)self handler];
          v9 = [handler4 activateWithHandoffToken:v18];
        }

        else
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase activateChildSession]", 192, self, @"Invalid token", v20, v21, v29);
          v23 = MEMORY[0x277CCA9B8];
          handler4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v31[0] = *MEMORY[0x277CCA450];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
          v32[0] = v24;
          v32[1] = &unk_2876ECBA0;
          v31[1] = @"Line";
          v31[2] = @"Method";
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
          v32[2] = v25;
          v31[3] = *MEMORY[0x277CCA068];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 193];
          v32[3] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
          v9 = [v23 errorWithDomain:handler4 code:9 userInfo:v27];
        }
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v33[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v34[0] = v12;
    v34[1] = &unk_2876ECB88;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v34[2] = v13;
    v33[3] = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 176];
    v34[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v9 = [v10 errorWithDomain:v11 code:9 userInfo:v15];
  }

  return v9;
}

- (id)setActiveCredential:(id)credential
{
  v57[4] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v6 = _os_activity_create(&dword_26536F000, "setActiveCredential:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 205, self, @"%@", v7, v8, credentialCopy);
  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    if (!credentialCopy || (-[STSSessionBase handler](self, "handler"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 supportedCredentialType], v14 = objc_msgSend(credentialCopy, "type"), v12, v13 == v14))
    {
      v15 = 0;
      goto LABEL_11;
    }

    handler2 = [(STSSessionBase *)self handler];
    activeSTSCredential = [handler2 activeSTSCredential];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 217, self, @"new handler required, switching credential from %@ to %@", v19, v20, activeSTSCredential);

    v21 = [(STSSessionBase *)self createHandlerForCredential:credentialCopy];
    if (!v21)
    {
      v46 = MEMORY[0x277CCA9B8];
      handler7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v56[0] = *MEMORY[0x277CCA450];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v57[0] = v47;
      v57[1] = &unk_2876ECBB8;
      v56[1] = @"Line";
      v56[2] = @"Method";
      credentialCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), credentialCopy];
      v57[2] = credentialCopy;
      v56[3] = *MEMORY[0x277CCA068];
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 220];
      v57[3] = v49;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];
      activateChildSession = [v46 errorWithDomain:handler7 code:11 userInfo:v50];

LABEL_18:
      goto LABEL_19;
    }

    v16 = v21;
    handler3 = [(STSSessionBase *)self handler];
    [handler3 tearDownWithCompletion:0];

    [(STSSessionBase *)self setHandler:v16];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 226, self, @"Waiting for Control SE session ready", v23, v24, v52);
    v25 = [(STSSessionBase *)self waitForControlSessionToBeReady:1];
    v15 = v25;
    if (v25)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredential:]", 230, self, @"Control SE session not ready: %@", v26, v27, v25);
    }

LABEL_10:

LABEL_11:
    handler4 = [(STSSessionBase *)self handler];

    if (handler4)
    {
      handler5 = [(STSSessionBase *)self handler];
      activateChildSessionOnSetActiveCredential = [handler5 activateChildSessionOnSetActiveCredential];

      if (activateChildSessionOnSetActiveCredential)
      {
        activateChildSession = [(STSSessionBase *)self activateChildSession];

        if (activateChildSession)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredential:]", 240, self, @"Handler activation failure: %@", v36, v37, activateChildSession);
          handler6 = [(STSSessionBase *)self handler];
          [handler6 tearDownWithCompletion:0];

          [(STSSessionBase *)self setHandler:0];
          goto LABEL_19;
        }
      }

      else
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 247, self, @" Handoff not ready to be activated yet", v33, v34, v51);
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 250, self, @"Seting new activeCredential %@ on handler", v36, v37, credentialCopy);
      handler7 = [(STSSessionBase *)self handler];
      activateChildSession = [handler7 setActiveCredential:credentialCopy];
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredential:]", 253, self, @"Unable to find a valid handler", v29, v30, v51);
      v39 = MEMORY[0x277CCA9B8];
      handler7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v54[0] = *MEMORY[0x277CCA450];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v55[0] = v41;
      v55[1] = &unk_2876ECBD0;
      v54[1] = @"Line";
      v54[2] = @"Method";
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v55[2] = v42;
      v54[3] = *MEMORY[0x277CCA068];
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 254];
      v55[3] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
      activateChildSession = [v39 errorWithDomain:handler7 code:11 userInfo:v44];
    }

    goto LABEL_18;
  }

  if (credentialCopy)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredential:]", 213, self, @"Creating initial handler", v10, v11, v51);
    v16 = [(STSSessionBase *)self createHandlerForCredential:credentialCopy];
    [(STSSessionBase *)self setHandler:v16];
    v15 = 0;
    goto LABEL_10;
  }

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase setActiveCredential:]", 209, self, @"Handler does not exist for deactivation.", v10, v11, v51);
  activateChildSession = 0;
LABEL_19:

  return activateChildSession;
}

- (id)validateCredentials:(id)credentials
{
  v45[4] = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  if (![credentialsCopy count])
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase validateCredentials:]", 262, self, @"Empty credential array provided.", v6, v7, v33);
    v22 = MEMORY[0x277CCA9B8];
    firstObject = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v44[0] = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v45[0] = v13;
    v45[1] = &unk_2876ECBE8;
    v44[1] = @"Line";
    v44[2] = @"Method";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v45[2] = v23;
    v44[3] = *MEMORY[0x277CCA068];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 263];
    v45[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
    v21 = [v22 errorWithDomain:firstObject code:8 userInfo:v25];
LABEL_16:

    goto LABEL_17;
  }

  firstObject = [credentialsCopy firstObject];
  type = [firstObject type];
  if (!type)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase validateCredentials:]", 270, self, @"Invalid credential type.", v10, v11, v33);
    v31 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v42[0] = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v43[0] = v23;
    v43[1] = &unk_2876ECC00;
    v42[1] = @"Line";
    v42[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v43[2] = v24;
    v42[3] = *MEMORY[0x277CCA068];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 271];
    v43[3] = v25;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
    v21 = [v31 errorWithDomain:v13 code:8 userInfo:v29];
LABEL_15:

    goto LABEL_16;
  }

  v12 = type;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = credentialsCopy;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        type2 = [*(*(&v35 + 1) + 8 * i) type];
        if (v12 != type2)
        {
          v34 = v12;
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase validateCredentials:]", 279, self, @"Invalid or mismatching credential types; found %d, expects %d", v19, v20, type2);
          v26 = MEMORY[0x277CCA9B8];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v39[0] = *MEMORY[0x277CCA450];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
          v40[0] = v24;
          v40[1] = &unk_2876ECC18;
          v39[1] = @"Line";
          v39[2] = @"Method";
          v27 = MEMORY[0x277CCACA8];
          Name = sel_getName(a2);
          v25 = [v27 stringWithFormat:@"%s", Name, v34, v35];
          v40[2] = v25;
          v39[3] = *MEMORY[0x277CCA068];
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 280];
          v40[3] = v29;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
          v21 = [v26 errorWithDomain:v23 code:8 userInfo:v30];

          goto LABEL_15;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (id)setActiveCredentials:(id)credentials
{
  v58[4] = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v6 = _os_activity_create(&dword_26536F000, "setActiveCredentials:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 292, self, @"%@", v7, v8, credentialsCopy);
  if ([credentialsCopy count] != 1)
  {
    if (credentialsCopy)
    {
      activateChildSession = [(STSSessionBase *)self validateCredentials:credentialsCopy];
      if (activateChildSession)
      {
        goto LABEL_26;
      }

      firstObject = [credentialsCopy firstObject];
    }

    else
    {
      firstObject = 0;
    }

    handler = [(STSSessionBase *)self handler];

    if (handler)
    {
      if (!firstObject || (-[STSSessionBase handler](self, "handler"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 supportedCredentialType], v16 = objc_msgSend(firstObject, "type"), v14, v15 == v16))
      {
        v17 = 0;
        goto LABEL_17;
      }

      handler2 = [(STSSessionBase *)self handler];
      activeSTSCredential = [handler2 activeSTSCredential];
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 321, self, @"new handler required, switching credential from %@ to %@", v21, v22, activeSTSCredential);

      v23 = [(STSSessionBase *)self createHandlerForCredential:firstObject];
      if (!v23)
      {
        v47 = MEMORY[0x277CCA9B8];
        handler7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v57[0] = *MEMORY[0x277CCA450];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
        v58[0] = v48;
        v58[1] = &unk_2876ECC30;
        v57[1] = @"Line";
        v57[2] = @"Method";
        v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), firstObject];
        v58[2] = v49;
        v57[3] = *MEMORY[0x277CCA068];
        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 324];
        v58[3] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
        activateChildSession = [v47 errorWithDomain:handler7 code:11 userInfo:v51];

        goto LABEL_24;
      }

      v18 = v23;
      handler3 = [(STSSessionBase *)self handler];
      [handler3 tearDownWithCompletion:0];

      [(STSSessionBase *)self setHandler:v18];
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 330, self, @"Waiting for Control SE session ready", v25, v26, v53);
      v27 = [(STSSessionBase *)self waitForControlSessionToBeReady:1];
      v17 = v27;
      if (v27)
      {
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredentials:]", 334, self, @"Control SE session not ready: %@", v28, v29, v27);
      }
    }

    else
    {
      if (!credentialsCopy)
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 313, self, @"Handler does not exist for deactivation.", v12, v13, v52);
        activateChildSession = 0;
        goto LABEL_25;
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 317, self, @"Creating initial handler", v12, v13, v52);
      v18 = [(STSSessionBase *)self createHandlerForCredential:firstObject];
      [(STSSessionBase *)self setHandler:v18];
      v17 = 0;
    }

LABEL_17:
    handler4 = [(STSSessionBase *)self handler];

    if (handler4)
    {
      handler5 = [(STSSessionBase *)self handler];
      activateChildSessionOnSetActiveCredential = [handler5 activateChildSessionOnSetActiveCredential];

      if (activateChildSessionOnSetActiveCredential)
      {
        activateChildSession = [(STSSessionBase *)self activateChildSession];

        if (activateChildSession)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredentials:]", 344, self, @"Handler activation failure: %@", v37, v38, activateChildSession);
          handler6 = [(STSSessionBase *)self handler];
          [handler6 tearDownWithCompletion:0];

          [(STSSessionBase *)self setHandler:0];
          goto LABEL_25;
        }
      }

      else
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 350, self, @"Handler not ready to be activated yet", v35, v36, v52);
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase setActiveCredentials:]", 353, self, @"Setting new activeCredentials %@ on handler", v37, v38, credentialsCopy);
      handler7 = [(STSSessionBase *)self handler];
      activateChildSession = [handler7 setActiveCredentials:credentialsCopy];
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase setActiveCredentials:]", 356, self, @"Unable to find a valid handler", v31, v32, v52);
      v40 = MEMORY[0x277CCA9B8];
      handler7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v55[0] = *MEMORY[0x277CCA450];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
      v56[0] = v42;
      v56[1] = &unk_2876ECC48;
      v55[1] = @"Line";
      v55[2] = @"Method";
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v56[2] = v43;
      v55[3] = *MEMORY[0x277CCA068];
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 357];
      v56[3] = v44;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
      activateChildSession = [v40 errorWithDomain:handler7 code:11 userInfo:v45];
    }

LABEL_24:

    goto LABEL_25;
  }

  firstObject = [credentialsCopy firstObject];
  activateChildSession = [(STSSessionBase *)self setActiveCredential:firstObject];
LABEL_25:

LABEL_26:

  return activateChildSession;
}

- (id)createHandoffToken:(id *)token
{
  v55[4] = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_26536F000, "createHandoffToken:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];
  consumeHandoffToken = [handler consumeHandoffToken];

  if (consumeHandoffToken)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase createHandoffToken:]", 372, self, @"Consume existing token from handler", v9, v10, v46);
    v11 = consumeHandoffToken;
    v12 = 0;
    v13 = 0;
    *token = consumeHandoffToken;
    goto LABEL_13;
  }

  handler2 = [(STSSessionBase *)self handler];

  if (handler2)
  {
    handler3 = [(STSSessionBase *)self handler];
    activeChildSession = [handler3 activeChildSession];

    if (activeChildSession)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase createHandoffToken:]", 384, self, @"Fail to create session token; missing active session", v17, v18, v46);
    v24 = MEMORY[0x277CCA9B8];
    activeChildSession = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v54[0] = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v55[0] = v25;
    v55[1] = &unk_2876ECC60;
    v54[1] = @"Line";
    v54[2] = @"Method";
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v55[2] = v26;
    v54[3] = *MEMORY[0x277CCA068];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 385];
    v55[3] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
    v13 = [v24 errorWithDomain:activeChildSession code:9 userInfo:v28];

LABEL_10:
    v12 = 0;
    goto LABEL_13;
  }

  activeChildSession = [(STSSessionBase *)self masterSESession];
  if (!activeChildSession)
  {
    goto LABEL_9;
  }

LABEL_5:
  handler4 = [(STSSessionBase *)self handler];

  if (handler4)
  {
    handler5 = [(STSSessionBase *)self handler];
    v48 = 0;
    v21 = [handler5 createHandoffTokenFromSession:activeChildSession outError:&v48];
    v22 = v48;
    v23 = v21;
    *token = v21;

LABEL_7:
    v12 = v22;

    v13 = v12;
    goto LABEL_13;
  }

  v47 = 0;
  v29 = [activeChildSession createSessionHandoffToken:&v47];
  v12 = v47;
  v30 = v29;
  *token = v29;
  if (!v12)
  {
    if ([v29 length])
    {
      v22 = 0;
      goto LABEL_7;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase createHandoffToken:]", 397, self, @"Invalid token", v39, v40, v46);
    v41 = MEMORY[0x277CCA9B8];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v50[0] = *MEMORY[0x277CCA450];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v51[0] = v42;
    v51[1] = &unk_2876ECC90;
    v50[1] = @"Line";
    v50[2] = @"Method";
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v51[2] = v43;
    v50[3] = *MEMORY[0x277CCA068];
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 398];
    v51[3] = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
    v13 = [v41 errorWithDomain:v25 code:9 userInfo:v45];

    goto LABEL_10;
  }

  v31 = MEMORY[0x277CCA9B8];
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v52[0] = *MEMORY[0x277CCA450];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
  v34 = *MEMORY[0x277CCA7E8];
  v53[0] = v33;
  v53[1] = v12;
  v52[1] = v34;
  v52[2] = @"Line";
  v53[2] = &unk_2876ECC78;
  v52[3] = @"Method";
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v53[3] = v35;
  v52[4] = *MEMORY[0x277CCA068];
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 395];
  v53[4] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:5];
  v13 = [v31 errorWithDomain:v32 code:9 userInfo:v37];

LABEL_13:

  return v13;
}

- (void)setSessionTimeLimit:(double)limit
{
  v5 = _os_activity_create(&dword_26536F000, "setSessionTimeLimit:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  if (limit <= 0.0)
  {
    [(STSSessionBase *)self clearSessionTimer];
  }

  else
  {
    sessionKillSwitch = self->_sessionKillSwitch;
    if (!sessionKillSwitch)
    {
      objc_initWeak(&state, self);
      v7 = [STSTimer alloc];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = sub_265374D58;
      v13 = &unk_279B938C0;
      objc_copyWeak(v14, &state);
      v14[1] = *&limit;
      v8 = [(STSTimer *)v7 initSleepTimerWithCallback:&v10 queue:self->_callbackQueue];
      v9 = self->_sessionKillSwitch;
      self->_sessionKillSwitch = v8;

      objc_destroyWeak(v14);
      objc_destroyWeak(&state);
      sessionKillSwitch = self->_sessionKillSwitch;
    }

    [(STSTimer *)sessionKillSwitch startTimer:limit, v10, v11, v12, v13];
  }
}

- (void)clearSessionTimer
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase clearSessionTimer]", 438, self, @"Clearing session kill switch timer", v2, v3, v6);
  [(STSTimer *)self->_sessionKillSwitch stopTimer];
  sessionKillSwitch = self->_sessionKillSwitch;
  self->_sessionKillSwitch = 0;
}

- (void)_tearDownOnQueue:(BOOL)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase _tearDownOnQueue:completion:]", 449, self, &stru_2876E3E50, v7, v8, v17[0]);
  if (queueCopy)
  {
    v9 = dispatch_group_create();
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_lock(&self->_sessionUpdateLock);
  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    if (v9)
    {
      dispatch_group_enter(v9);
    }

    handler2 = [(STSSessionBase *)self handler];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2653752A8;
    v23[3] = &unk_279B938E8;
    v24 = v9;
    [handler2 tearDownWithCompletion:v23];

    [(STSSessionBase *)self setHandler:0];
  }

  masterSESession = [(STSSessionBase *)self masterSESession];

  if (masterSESession)
  {
    if (v9)
    {
      dispatch_group_enter(v9);
    }

    masterSESession2 = [(STSSessionBase *)self masterSESession];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2653752B8;
    v21[3] = &unk_279B93910;
    v22 = v9;
    [masterSESession2 endSessionWithCompletion:v21];

    [(STSSessionBase *)self setMasterSESession:0];
  }

  initiatingSession = [(STSSessionBase *)self initiatingSession];

  if (initiatingSession)
  {
    if (v9)
    {
      dispatch_group_enter(v9);
    }

    initiatingSession2 = [(STSSessionBase *)self initiatingSession];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2653752C8;
    v19[3] = &unk_279B93910;
    v20 = v9;
    [initiatingSession2 endSessionWithCompletion:v19];

    [(STSSessionBase *)self setInitiatingSession:0];
  }

  os_unfair_lock_unlock(&self->_sessionUpdateLock);
  if (completionCopy)
  {
    if (v9)
    {
      callbackQueue = [(STSSessionBase *)self callbackQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2653752D8;
      v17[3] = &unk_279B93938;
      v18 = completionCopy;
      dispatch_group_notify(v9, callbackQueue, v17);
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)handleSessionSuspended:(id)suspended withToken:(id)token
{
  suspendedCopy = suspended;
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase handleSessionSuspended:withToken:]", 493, selfCopy, @"Control SE session is suspended with token: %@", v8, v9, tokenCopy);
  selfCopy->_controlSessionSuspended = 1;
  v10 = dispatch_semaphore_create(0);
  controlSessionSem = selfCopy->_controlSessionSem;
  selfCopy->_controlSessionSem = v10;

  objc_sync_exit(selfCopy);
}

- (void)handleSessionResumed:(id)resumed
{
  resumedCopy = resumed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase handleSessionResumed:]", 501, selfCopy, @"Control SE session resumed", v5, v6, v8);
  selfCopy->_controlSessionSuspended = 0;
  controlSessionSem = selfCopy->_controlSessionSem;
  if (controlSessionSem)
  {
    dispatch_semaphore_signal(controlSessionSem);
  }

  objc_sync_exit(selfCopy);
}

- (id)waitForControlSessionToBeReady:(int)ready
{
  v3 = *&ready;
  v25[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  controlSessionSuspended = selfCopy->_controlSessionSuspended;
  objc_sync_exit(selfCopy);

  if (!controlSessionSuspended)
  {
    goto LABEL_6;
  }

  controlSessionSem = selfCopy->_controlSessionSem;
  v8 = dispatch_time(0, 1000000000 * v3);
  if (dispatch_semaphore_wait(controlSessionSem, v8))
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase waitForControlSessionToBeReady:]", 519, selfCopy, @"Control SE session failed to resume after %d seconds", v9, v10, v3);
  }

  v11 = selfCopy;
  objc_sync_enter(v11);
  v12 = selfCopy->_controlSessionSuspended;
  objc_sync_exit(v11);

  if (v12)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase waitForControlSessionToBeReady:]", 528, v11, @"Control SE session did not resume", v13, v14, v23);
    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v24[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v25[0] = v17;
    v25[1] = &unk_2876ECCA8;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v18;
    v24[3] = *MEMORY[0x277CCA068];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 529];
    v25[3] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v21 = [v15 errorWithDomain:v16 code:9 userInfo:v20];
  }

  else
  {
LABEL_6:
    v21 = 0;
  }

  return v21;
}

- (void)secureElementManagerSessionDidEndUnexpectedly:(id)unexpectedly
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSessionBase secureElementManagerSessionDidEndUnexpectedly:]", 538, self, @"Connection closed unexpectedly.", v3, v4, v6);

  [(STSSessionBase *)self fireSessionDidEndUnexpectedlyEventWithStatus:0];
}

- (STSSessionBaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fireSessionDidEndUnexpectedlyEventWithStatus:(unint64_t)status
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase(EVENTS) fireSessionDidEndUnexpectedlyEventWithStatus:]", 16, self, @"fireSessionDidEndUnexpectedlyEventWithStatus %d", v3, v4, status);
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSessionDidEndUnexpectedly:self errorCode:status];
  }
}

@end