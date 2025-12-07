@interface NFCVASReaderSession
- (NFCVASReaderSession)initWithVASCommandConfigurations:(NSArray *)commandConfigurations delegate:(id)delegate queue:(dispatch_queue_t)queue;
- (id)_convertVASConfigToInternalRequest:(id)request;
- (id)_convertVASResponseToExternal:(id)external;
- (id)_sendVASRequests:(id)requests error:(id *)error;
- (void)_callbackDidBecomeActive;
- (void)beginSession;
- (void)dealloc;
- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index;
- (void)didTerminate:(id)terminate;
@end

@implementation NFCVASReaderSession

- (NFCVASReaderSession)initWithVASCommandConfigurations:(NSArray *)commandConfigurations delegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v8 = commandConfigurations;
  v21.receiver = self;
  v21.super_class = NFCVASReaderSession;
  v9 = [(NFCReaderSession *)&v21 initWithDelegate:delegate sessionDelegateType:6 queue:queue pollMethod:8 sessionType:4 sessionConfig:8];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&unk_284A4F470];
    v11 = [(NSArray *)v8 filteredArrayUsingPredicate:v10];
    vasConfig = v9->_vasConfig;
    v9->_vasConfig = v11;

    v13 = objc_alloc(MEMORY[0x277D82BA0]);
    v18 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v19, &location);
    v14 = [(NFCReaderSession *)v9 sessionQueue:v18];
    v15 = [v13 initWithCallback:&v18 queue:v14];
    presenceCheckTimer = v9->_presenceCheckTimer;
    v9->_presenceCheckTimer = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  [(NFTimer *)self->_presenceCheckTimer stopTimer];
  v3.receiver = self;
  v3.super_class = NFCVASReaderSession;
  [(NFCReaderSession *)&v3 dealloc];
}

- (void)beginSession
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_23728C000, "NFCVASReaderSession beginSessionWithConfig:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = selfCopy->_vasConfig;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = MEMORY[0x277D82BA8];
        mode = [v11 mode];
        passTypeIdentifier = [v11 passTypeIdentifier];
        v15 = [v12 passConfigWithMode:mode passIdentifier:passTypeIdentifier];
        [v5 addObject:v15];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = MEMORY[0x277D82B70];
  alertMessage = [(NFCReaderSession *)selfCopy alertMessage];
  v18 = [v16 sessionConfigWithUIMode:3 sessionType:4 initialScanText:alertMessage vasPass:v5];

  v19.receiver = selfCopy;
  v19.super_class = NFCVASReaderSession;
  [(NFCReaderSession *)&v19 beginSessionWithConfig:v18];

  objc_sync_exit(selfCopy);
}

- (void)_callbackDidBecomeActive
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(NFCReaderSession *)self delegateType]!= 6)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      delegateType = [(NFCReaderSession *)self delegateType];
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v12, ClassName, Name, 183, delegateType);
    }

    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v14 = object_getClass(self);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    *buf = 67110146;
    v31 = v15;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 183;
    v38 = 2048;
    delegateType2 = [(NFCReaderSession *)self delegateType];
    v16 = "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld";
    v17 = v13;
    v18 = 44;
    goto LABEL_22;
  }

  delegate = [(NFCReaderSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2372C44E4;
    v29[3] = &unk_278A29F00;
    v29[4] = self;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v29];
    return;
  }

  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(self);
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(self);
    v27 = sel_getName(a2);
    v24 = 45;
    if (v22)
    {
      v24 = 43;
    }

    v20(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSessionDidBecomeActive: method", v24, v23, v27, 180);
  }

  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    *buf = 67109890;
    v31 = v26;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 180;
    v16 = "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSessionDidBecomeActive: method";
    v17 = v13;
    v18 = 34;
LABEL_22:
    _os_log_impl(&dword_23728C000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
  }

LABEL_23:
}

- (id)_sendVASRequests:(id)requests error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2372C471C;
  v23 = sub_2372C472C;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2372C471C;
  v17 = sub_2372C472C;
  v18 = 0;
  requestsCopy = requests;
  readerProxy = [(NFCReaderSession *)self readerProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2372C4734;
  v12[3] = &unk_278A2A100;
  v12[4] = &v19;
  v8 = [readerProxy synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372C4744;
  v11[3] = &unk_278A2A128;
  v11[4] = &v19;
  v11[5] = &v13;
  [v8 performVAS:requestsCopy completion:v11];

  if (error)
  {
    *error = v20[5];
  }

  v9 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (id)_convertVASConfigToInternalRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_new();
  passTypeIdentifier = [requestCopy passTypeIdentifier];
  [v4 setObject:passTypeIdentifier forKeyedSubscript:@"MerchantId"];

  v6 = [requestCopy url];
  [v4 setObject:v6 forKeyedSubscript:@"SignupUrl"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [v4 setObject:v7 forKeyedSubscript:@"TerminalCap"];

  mode = [requestCopy mode];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:mode != 0];
  [v4 setObject:v9 forKeyedSubscript:@"TerminalProtocol"];

  return v4;
}

- (id)_convertVASResponseToExternal:(id)external
{
  externalCopy = external;
  v4 = [externalCopy objectForKeyedSubscript:@"PassData"];
  v5 = [externalCopy objectForKeyedSubscript:@"Token"];
  v6 = [externalCopy objectForKeyedSubscript:@"StatusCode"];

  v7 = -[NFCVASResponse initWithStatus:data:mobileToken:]([NFCVASResponse alloc], "initWithStatus:data:mobileToken:", [v6 unsignedShortValue], v4, v5);

  return v7;
}

- (void)didTerminate:(id)terminate
{
  presenceCheckTimer = self->_presenceCheckTimer;
  terminateCopy = terminate;
  [(NFTimer *)presenceCheckTimer stopTimer];
  v6.receiver = self;
  v6.super_class = NFCVASReaderSession;
  [(NFCReaderSession *)&v6 didTerminate:terminateCopy];
}

- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index
{
  v42 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v32.receiver = self;
  v32.super_class = NFCVASReaderSession;
  [(NFCReaderSession *)&v32 didDetectTags:tagsCopy connectedTagIndex:index];
  currentTag = [(NFCReaderSession *)self currentTag];
  if ([currentTag type] != 3)
  {

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = tagsCopy;
    currentTag = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (currentTag)
    {
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != currentTag; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 type] == 3)
          {
            currentTag = v12;
            goto LABEL_12;
          }
        }

        currentTag = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
        if (currentTag)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  if (currentTag)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2372C4D00;
    v25[3] = &unk_278A2A150;
    v25[4] = self;
    v26 = currentTag;
    v27 = a2;
    [(NFCReaderSession *)self submitBlockOnSessionQueue:v25];
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(4, "%c[%{public}s %{public}s]:%i Restart polling", v18, ClassName, Name, 297);
    }

    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      *buf = 67109890;
      v34 = v21;
      v35 = 2082;
      v36 = v22;
      v37 = 2082;
      v38 = v23;
      v39 = 1024;
      v40 = 297;
      _os_log_impl(&dword_23728C000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Restart polling", buf, 0x22u);
    }

    [(NFCReaderSession *)self restartPolling];
  }
}

@end