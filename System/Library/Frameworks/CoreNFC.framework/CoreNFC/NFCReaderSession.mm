@interface NFCReaderSession
+ (BOOL)featureAvailable:(unint64_t)available;
- (BOOL)_connectTag:(id)tag error:(id *)error;
- (BOOL)checkPresenceWithError:(id *)error;
- (BOOL)connectTag:(id)tag error:(id *)error;
- (BOOL)disconnectTagWithError:(id *)error;
- (BOOL)isInvalidated;
- (BOOL)isReady;
- (BOOL)validateDelegate:(id)delegate expectedType:(int64_t)type;
- (BOOL)writeNdefMessage:(id)message error:(id *)error;
- (NFCReaderSession)initWithDelegate:(id)delegate sessionDelegateType:(int64_t)type queue:(id)queue pollMethod:(unint64_t)method sessionType:(unint64_t)sessionType sessionConfig:(unint64_t)config;
- (NFReaderSessionInterface)readerProxy;
- (NFTag)currentTag;
- (NSString)alertMessage;
- (id)_convertMessageToInternal:(id)internal;
- (id)delegate;
- (id)ndefStatus:(int64_t *)status maxMessageLength:(unint64_t *)length;
- (id)readNdefMessageWithError:(id *)error;
- (id)transceive:(id)transceive tagUpdate:(id *)update error:(id *)error;
- (id)writeLockNdef;
- (void)_callbackDidBecomeActive;
- (void)_callbackDidInvalidateWithError:(id)error;
- (void)_invalidateSessionWithCode:(int64_t)code message:(id)message finalUIState:(int64_t)state activateCallback:(BOOL)callback;
- (void)_restartPollingWithCompletionHandler:(id)handler;
- (void)_resumeDelegateQueue;
- (void)_startPollingWithMethod:(unint64_t)method sessionConfig:(unint64_t)config completionHandler:(id)handler;
- (void)_stopPollingWithCompletionHandler:(id)handler;
- (void)beginSession;
- (void)beginSessionWithConfig:(id)config;
- (void)cleanupNFCHardwareManagerRegistration;
- (void)connectTag:(id)tag completionHandler:(id)handler;
- (void)dealloc;
- (void)didDetectExternalReader;
- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index;
- (void)didInvalidate;
- (void)didStartSession:(id)session;
- (void)didTerminate:(id)terminate;
- (void)didUIControllerInvalidate:(id)invalidate;
- (void)handleSessionResumed;
- (void)handleSessionSuspended:(id)suspended;
- (void)hwStateDidChange:(unsigned int)change;
- (void)invalidateSession;
- (void)invalidateSessionWithErrorMessage:(id)message;
- (void)restartPolling;
- (void)setAlertMessage:(id)message;
- (void)submitBlockOnDelegateQueue:(id)queue;
- (void)submitBlockOnSessionQueue:(id)queue;
- (void)submitBlockOnSessionQueueWithDelay:(unint64_t)delay block:(id)block;
@end

@implementation NFCReaderSession

- (void)dealloc
{
  if (self->_sessionId)
  {
    [(NFCReaderSession *)self cleanupNFCHardwareManagerRegistration];
  }

  v3.receiver = self;
  v3.super_class = NFCReaderSession;
  [(NFCReaderSession *)&v3 dealloc];
}

- (BOOL)isReady
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (selfCopy->_sessionState - 2) < 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (selfCopy->_sessionState - 5) < 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)alertMessage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_alertMessage;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAlertMessage:(id)message
{
  messageCopy = message;
  v6 = _os_activity_create(&dword_23728C000, "NFCReaderSession setAlertMessage:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [messageCopy copy];

  alertMessage = selfCopy->_alertMessage;
  selfCopy->_alertMessage = v8;

  proxy = selfCopy->_proxy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2372C598C;
  v14[3] = &unk_278A2A2A8;
  v14[4] = selfCopy;
  v14[5] = a2;
  v11 = [(NFReaderSessionInterface *)proxy synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12 = selfCopy->_alertMessage;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2372C5B14;
  v13[3] = &unk_278A2A2A8;
  v13[4] = selfCopy;
  v13[5] = a2;
  [v11 updateSharingUIScanText:v12 completion:v13];

  objc_sync_exit(selfCopy);
}

- (void)invalidateSession
{
  v3 = _os_activity_create(&dword_23728C000, "NFCReaderSession invalidateSession", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  os_activity_scope_leave(&v4);

  [(NFCReaderSession *)self invalidateSessionWithReason:200];
}

- (void)invalidateSessionWithErrorMessage:(id)message
{
  messageCopy = message;
  v5 = _os_activity_create(&dword_23728C000, "NFCReaderSession invalidateSessionWithErrorMessage:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  os_activity_scope_leave(&v6);

  [(NFCReaderSession *)self _invalidateSessionWithCode:200 message:messageCopy finalUIState:2 activateCallback:0];
}

- (void)_callbackDidBecomeActive
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_delegateType == 1 && ([(NFCReaderSession *)self delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2372C5FDC;
    v17[3] = &unk_278A29F00;
    v17[4] = self;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v17];
  }

  else
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

      v7(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v12, ClassName, Name, 145, delegateType);
    }

    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
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
      v19 = v15;
      v20 = 2082;
      v21 = object_getClassName(self);
      v22 = 2082;
      v23 = sel_getName(a2);
      v24 = 1024;
      v25 = 145;
      v26 = 2048;
      delegateType2 = [(NFCReaderSession *)self delegateType];
      _os_log_impl(&dword_23728C000, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", buf, 0x2Cu);
    }
  }
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2372C6170;
  aBlock[3] = &unk_278A2A2D0;
  v5 = sessionCopy;
  v11 = v5;
  selfCopy = self;
  v6 = _Block_copy(aBlock);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (v5)
  {
    v6[2](v6, v5);
  }

  else
  {
    selfCopy2->_sessionState = 2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2372C625C;
    v8[3] = &unk_278A29DC0;
    v8[4] = selfCopy2;
    v9 = v6;
    [(NFCReaderSession *)selfCopy2 submitBlockOnSessionQueue:v8];
  }

  objc_sync_exit(selfCopy2);
}

- (void)handleSessionResumed
{
  v22 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(4, "%c[%{public}s %{public}s]:%i Not implemented", v9, ClassName, Name, 197);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 197;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not implemented", buf, 0x22u);
  }
}

- (void)handleSessionSuspended:(id)suspended
{
  v23 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(4, "%c[%{public}s %{public}s]:%i Not implemented", v10, ClassName, Name, 203);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v16 = v13;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 203;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not implemented", buf, 0x22u);
  }
}

- (void)didTerminate:(id)terminate
{
  v38 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(selfCopy);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    if (selfCopy->_proxy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = 43;
    if (!isMetaClass)
    {
      v14 = 45;
    }

    v8(5, "%c[%{public}s %{public}s]:%i sessionState=%ld, proxy=%@, error=%@", v14, ClassName, Name, 209, selfCopy->_sessionState, v13, terminateCopy);
  }

  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(selfCopy);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(selfCopy);
    v19 = sel_getName(a2);
    sessionState = selfCopy->_sessionState;
    if (selfCopy->_proxy)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 67110658;
    v25 = v17;
    v26 = 2082;
    v27 = v18;
    v28 = 2082;
    v29 = v19;
    v30 = 1024;
    v31 = 209;
    v32 = 2048;
    v33 = sessionState;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = terminateCopy;
    _os_log_impl(&dword_23728C000, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sessionState=%ld, proxy=%@, error=%@", buf, 0x40u);
  }

  if ([terminateCopy code] == 64)
  {
    v22 = 203;
  }

  else if ([terminateCopy code] == 5)
  {
    v22 = 201;
  }

  else
  {
    v22 = 202;
  }

  selfCopy->_invalidationCode = v22;
  proxy = selfCopy->_proxy;
  selfCopy->_proxy = 0;
  selfCopy->_sessionState = 7;

  [(NFCReaderSession *)selfCopy cleanupNFCHardwareManagerRegistration];
  objc_sync_exit(selfCopy);
}

- (void)didUIControllerInvalidate:(id)invalidate
{
  v37 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(selfCopy);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    if (selfCopy->_proxy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(5, "%c[%{public}s %{public}s]:%i sessionState=%ld, proxy=%@", v14, ClassName, Name, 230, selfCopy->_sessionState, v13);
  }

  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(selfCopy);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(selfCopy);
    v19 = sel_getName(a2);
    sessionState = selfCopy->_sessionState;
    if (selfCopy->_proxy)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 67110402;
    v26 = v17;
    v27 = 2082;
    v28 = v18;
    v29 = 2082;
    v30 = v19;
    v31 = 1024;
    v32 = 230;
    v33 = 2048;
    v34 = sessionState;
    v35 = 2112;
    v36 = v21;
    _os_log_impl(&dword_23728C000, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sessionState=%ld, proxy=%@", buf, 0x36u);
  }

  if ((selfCopy->_sessionState | 2) != 7)
  {
    code = [invalidateCopy code];
    v23 = 202;
    if (code == 48)
    {
      v23 = 200;
    }

    selfCopy->_invalidationCode = v23;
  }

  [(NFCReaderSession *)selfCopy _invalidateSessionAndActivateCallbackWithCode:selfCopy->_invalidationCode];
  [(NFCReaderSession *)selfCopy cleanupNFCHardwareManagerRegistration];
  proxy = selfCopy->_proxy;
  selfCopy->_proxy = 0;

  objc_sync_exit(selfCopy);
}

- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index
{
  v66 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(selfCopy);
    if (class_isMetaClass(Class))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    currentTag = selfCopy->_currentTag;
    if (currentTag)
    {
      v16 = [(NFTag *)currentTag description];
      v10(6, "%c[%{public}s %{public}s]:%i Current connectedTag: %@", v12, ClassName, Name, 251, v16);
    }

    else
    {
      v10(6, "%c[%{public}s %{public}s]:%i Current connectedTag: %@", v12, ClassName, Name, 251, @"None");
    }
  }

  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(selfCopy);
    v19 = class_isMetaClass(v18) ? 43 : 45;
    v20 = object_getClassName(selfCopy);
    v21 = sel_getName(a2);
    v22 = selfCopy->_currentTag;
    if (v22)
    {
      v23 = [(NFTag *)selfCopy->_currentTag description];
    }

    else
    {
      v23 = @"None";
    }

    *buf = 67110146;
    v55 = v19;
    v56 = 2082;
    v57 = v20;
    v58 = 2082;
    v59 = v21;
    v60 = 1024;
    v61 = 251;
    v62 = 2112;
    indexCopy2 = v23;
    _os_log_impl(&dword_23728C000, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Current connectedTag: %@", buf, 0x2Cu);
    if (v22)
    {
    }
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([tagsCopy count] <= index)
    {
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(v45);
        v52 = object_getClassName(selfCopy);
        v53 = sel_getName(a2);
        v47 = 45;
        if (isMetaClass)
        {
          v47 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i Invalid tag index: %ld", v47, v52, v53, 257, index);
      }

      v33 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      v48 = object_getClass(selfCopy);
      if (class_isMetaClass(v48))
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      v50 = object_getClassName(selfCopy);
      v51 = sel_getName(a2);
      *buf = 67110146;
      v55 = v49;
      v56 = 2082;
      v57 = v50;
      v58 = 2082;
      v59 = v51;
      v60 = 1024;
      v61 = 257;
      v62 = 2048;
      indexCopy2 = index;
      v39 = "%c[%{public}s %{public}s]:%i Invalid tag index: %ld";
      v40 = v33;
      v41 = OS_LOG_TYPE_ERROR;
      v42 = 44;
    }

    else
    {
      v24 = [tagsCopy objectAtIndex:index];
      v25 = selfCopy->_currentTag;
      selfCopy->_currentTag = v24;

      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(selfCopy);
        v29 = class_isMetaClass(v28);
        v30 = object_getClassName(selfCopy);
        v31 = sel_getName(a2);
        v32 = 45;
        if (v29)
        {
          v32 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i ConnectedTag[%ld]: %@", v32, v30, v31, 255, index, selfCopy->_currentTag);
      }

      v33 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v34 = object_getClass(selfCopy);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(selfCopy);
      v37 = sel_getName(a2);
      v38 = selfCopy->_currentTag;
      *buf = 67110402;
      v55 = v35;
      v56 = 2082;
      v57 = v36;
      v58 = 2082;
      v59 = v37;
      v60 = 1024;
      v61 = 255;
      v62 = 2048;
      indexCopy2 = index;
      v64 = 2112;
      v65 = v38;
      v39 = "%c[%{public}s %{public}s]:%i ConnectedTag[%ld]: %@";
      v40 = v33;
      v41 = OS_LOG_TYPE_DEFAULT;
      v42 = 54;
    }

    _os_log_impl(&dword_23728C000, v40, v41, v39, buf, v42);
LABEL_38:
  }

  selfCopy->_sessionState = 4;
  objc_sync_exit(selfCopy);
}

- (void)didDetectExternalReader
{
  v22 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(5, "%c[%{public}s %{public}s]:%i External reader detected", v9, ClassName, Name, 274);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 274;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i External reader detected", buf, 0x22u);
  }

  [(NFCReaderSession *)self _invalidateSessionWithCode:203];
}

- (void)hwStateDidChange:(unsigned int)change
{
  obj = self;
  objc_sync_enter(obj);
  if (change == 4)
  {
    [(NFCReaderSession *)obj _invalidateSessionWithCode:1];
  }

  objc_sync_exit(obj);
}

- (void)didInvalidate
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionState = selfCopy->_sessionState;
  Logger = NFLogGetLogger();
  v6 = Logger;
  if (sessionState == 6)
  {
    if (Logger)
    {
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(5, "%c[%{public}s %{public}s]:%i Drop XPC interrupt callback", v10, ClassName, Name, 303);
    }

    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(selfCopy);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67109890;
      v31 = v13;
      v32 = 2082;
      v33 = object_getClassName(selfCopy);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 303;
      _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Drop XPC interrupt callback", buf, 0x22u);
    }
  }

  else
  {
    if (Logger)
    {
      v14 = object_getClass(selfCopy);
      v15 = class_isMetaClass(v14);
      v16 = object_getClassName(selfCopy);
      v17 = sel_getName(a2);
      if (selfCopy->_proxy)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v19 = 45;
      if (v15)
      {
        v19 = 43;
      }

      v6(5, "%c[%{public}s %{public}s]:%i sessionState=%ld, proxy=%@", v19, v16, v17, 307, selfCopy->_sessionState, v18);
    }

    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(selfCopy);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(selfCopy);
      v24 = sel_getName(a2);
      v25 = selfCopy->_sessionState;
      if (selfCopy->_proxy)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      *buf = 67110402;
      v31 = v22;
      v32 = 2082;
      v33 = v23;
      v34 = 2082;
      v35 = v24;
      v36 = 1024;
      v37 = 307;
      v38 = 2048;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_23728C000, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sessionState=%ld, proxy=%@", buf, 0x36u);
    }

    proxy = selfCopy->_proxy;
    selfCopy->_proxy = 0;

    if (selfCopy->_invalidationCode)
    {
      invalidationCode = selfCopy->_invalidationCode;
    }

    else
    {
      invalidationCode = 202;
    }

    [(NFCReaderSession *)selfCopy _invalidateSessionAndActivateCallbackWithCode:invalidationCode];
    selfCopy->_sessionState = 6;
    [(NFCReaderSession *)selfCopy cleanupNFCHardwareManagerRegistration];
  }

  objc_sync_exit(selfCopy);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)submitBlockOnSessionQueue:(id)queue
{
  v27 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  sessionQueue = self->_sessionQueue;
  if (sessionQueue || ([MEMORY[0x277CCA890] currentHandler], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"NFCReaderSession.m", 333, @"Session queue is nil"), v7, (sessionQueue = self->_sessionQueue) != 0))
  {
    dispatch_async(sessionQueue, queueCopy);
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Session queue is nil", v13, ClassName, Name, 335);
    }

    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v20 = v16;
      v21 = 2082;
      v22 = object_getClassName(self);
      v23 = 2082;
      v24 = sel_getName(a2);
      v25 = 1024;
      v26 = 335;
      _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session queue is nil", buf, 0x22u);
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCReaderSession.m" lineNumber:336 description:@"Session queue is nil"];
  }
}

- (void)submitBlockOnSessionQueueWithDelay:(unint64_t)delay block:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  sessionQueue = self->_sessionQueue;
  if (sessionQueue || ([MEMORY[0x277CCA890] currentHandler], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"NFCReaderSession.m", 344, @"Session queue is nil"), v9, (sessionQueue = self->_sessionQueue) != 0))
  {
    dispatch_after(delay, sessionQueue, blockCopy);
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Session queue is nil", v15, ClassName, Name, 346);
    }

    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v22 = v18;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 346;
      _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session queue is nil", buf, 0x22u);
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCReaderSession.m" lineNumber:347 description:@"Session queue is nil"];
  }
}

- (void)submitBlockOnDelegateQueue:(id)queue
{
  v27 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  delegateQueue = self->_delegateQueue;
  if (delegateQueue || ([MEMORY[0x277CCA890] currentHandler], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"NFCReaderSession.m", 355, @"Delegate queue is nil"), v7, (delegateQueue = self->_delegateQueue) != 0))
  {
    dispatch_group_notify(self->_sessionStartInProgress, delegateQueue, queueCopy);
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Session queue is nil", v13, ClassName, Name, 357);
    }

    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v20 = v16;
      v21 = 2082;
      v22 = object_getClassName(self);
      v23 = 2082;
      v24 = sel_getName(a2);
      v25 = 1024;
      v26 = 357;
      _os_log_impl(&dword_23728C000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session queue is nil", buf, 0x22u);
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCReaderSession.m" lineNumber:358 description:@"Session queue is nil"];
  }
}

- (void)beginSession
{
  v41 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 367);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v34 = v12;
    v35 = 2082;
    v36 = object_getClassName(self);
    v37 = 2082;
    v38 = sel_getName(a2);
    v39 = 1024;
    v40 = 367;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  delegateType = selfCopy->_delegateType;
  if (delegateType <= 3)
  {
    if ((delegateType - 2) < 2)
    {
      if ([(NFCReaderSession *)selfCopy sessionType]!= 3 && [(NFCReaderSession *)selfCopy sessionType]!= 5)
      {
        __assert_rtn("[NFCReaderSession beginSession]", "NFCReaderSession.m", 377, "(self.sessionType == CoreNFCSessionTypeTagReader) || (self.sessionType == CoreNFCSessionTypePaymentReader)");
      }

      goto LABEL_34;
    }

    if (delegateType == 1)
    {
      if ([(NFCReaderSession *)selfCopy sessionType]!= 2)
      {
        __assert_rtn("[NFCReaderSession beginSession]", "NFCReaderSession.m", 383, "self.sessionType == CoreNFCSessionTypeISO15693Reader");
      }

      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if ((delegateType - 4) >= 2)
  {
    if (delegateType != 6)
    {
LABEL_24:
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(selfCopy);
        v18 = class_isMetaClass(v17);
        v19 = object_getClassName(selfCopy);
        v32 = sel_getName(a2);
        v20 = 45;
        if (v18)
        {
          v20 = 43;
        }

        v16(4, "%c[%{public}s %{public}s]:%i Defaulting to CoreNFCSessionTypeUnknown", v20, v19, v32, 385);
      }

      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = object_getClass(selfCopy);
        if (class_isMetaClass(v22))
        {
          v23 = 43;
        }

        else
        {
          v23 = 45;
        }

        v24 = object_getClassName(selfCopy);
        v25 = sel_getName(a2);
        *buf = 67109890;
        v34 = v23;
        v35 = 2082;
        v36 = v24;
        v37 = 2082;
        v38 = v25;
        v39 = 1024;
        v40 = 385;
        _os_log_impl(&dword_23728C000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Defaulting to CoreNFCSessionTypeUnknown", buf, 0x22u);
      }

      goto LABEL_34;
    }

    if ([(NFCReaderSession *)selfCopy sessionType]!= 4)
    {
      __assert_rtn("[NFCReaderSession beginSession]", "NFCReaderSession.m", 374, "self.sessionType == CoreNFCSessionTypeVASReader");
    }
  }

  else if ([(NFCReaderSession *)selfCopy sessionType]!= 1)
  {
    __assert_rtn("[NFCReaderSession beginSession]", "NFCReaderSession.m", 380, "self.sessionType == CoreNFCSessionTypeNDEFReader");
  }

LABEL_34:
  pollOption = selfCopy->_pollOption;
  if ((pollOption & 2) != 0)
  {
    sessionConfig = selfCopy->_sessionConfig;
    v29 = 1;
    if ((sessionConfig & 0x40) == 0)
    {
      v29 = 2;
    }

    if ((sessionConfig & 0x10) != 0)
    {
      v27 = 3;
    }

    else
    {
      v27 = v29;
    }
  }

  else if ((pollOption & 0x1C) != 0)
  {
    v27 = 3;
  }

  else
  {
    v27 = 0;
  }

  v30 = [MEMORY[0x277D82B70] sessionConfigWithUIMode:v27 sessionType:-[NFCReaderSession sessionType](selfCopy initialScanText:"sessionType") vasPass:{selfCopy->_alertMessage, 0}];
  [(NFCReaderSession *)selfCopy beginSessionWithConfig:v30];

  objc_sync_exit(selfCopy);
}

- (void)beginSessionWithConfig:(id)config
{
  configCopy = config;
  v6 = _os_activity_create(&dword_23728C000, "NFCReaderSession beginSessionWithConfig:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  if ((self->_sessionState - 5) > 1)
  {
    if ((self->_pollOption & 0xFFFFFFFFFFFFFFC1) != 0 || (v8 = [configCopy sessionType], pollOption = self->_pollOption, v8 == 5) && (pollOption & 8) == 0 || (pollOption & 0x1C) != 0 && (pollOption & 2) != 0)
    {
      [(NFCReaderSession *)self _resumeDelegateQueue];
      [(NFCReaderSession *)self _invalidateSessionAndActivateCallbackWithCode:1];
    }

    else if (!self->_proxy)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_2372C8068;
      v10[3] = &unk_278A2A150;
      v10[4] = self;
      v12 = a2;
      v11 = configCopy;
      [(NFCReaderSession *)self submitBlockOnSessionQueue:v10];
    }
  }

  else
  {
    v7 = [NFCError errorWithCode:self->_invalidationCode];
    [(NFCReaderSession *)self _callbackDidInvalidateWithError:v7];
  }
}

- (NFCReaderSession)initWithDelegate:(id)delegate sessionDelegateType:(int64_t)type queue:(id)queue pollMethod:(unint64_t)method sessionType:(unint64_t)sessionType sessionConfig:(unint64_t)config
{
  v54 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  v45.receiver = self;
  v45.super_class = NFCReaderSession;
  v17 = [(NFCReaderSession *)&v45 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  if (![(NFCReaderSession *)v17 validateDelegate:delegateCopy expectedType:type])
  {
LABEL_21:
    v31 = 0;
    goto LABEL_22;
  }

  v19 = +[NFCHardwareManager sharedHardwareManager];
  hardwareManager = v18->_hardwareManager;
  v18->_hardwareManager = v19;

  v18->_delegateType = type;
  objc_storeWeak(&v18->_delegate, delegateCopy);
  v21 = MEMORY[0x277D82BB0];
  if (queueCopy)
  {
    objc_storeStrong(&v18->_delegateQueue, queue);
  }

  else
  {
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.corenfc.readersession.delegate", v22);
    delegateQueue = v18->_delegateQueue;
    v18->_delegateQueue = v23;

    dispatch_queue_set_specific(v18->_delegateQueue, *v21, 1, 0);
  }

  v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v26 = dispatch_queue_create("com.apple.corenfc.readersession", v25);
  sessionQueue = v18->_sessionQueue;
  v18->_sessionQueue = v26;

  dispatch_queue_set_specific(v18->_sessionQueue, *v21, 1, 0);
  v18->_sessionType = sessionType;
  v18->_pollOption = method;
  v18->_sessionConfig = config;
  v28 = dispatch_group_create();
  sessionStartInProgress = v18->_sessionStartInProgress;
  v18->_sessionStartInProgress = v28;

  if (!v18->_delegateQueue || !v18->_sessionQueue || (v30 = v18->_sessionStartInProgress) == 0)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v33 = Logger;
      Class = object_getClass(v18);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v18);
      Name = sel_getName(a2);
      v37 = 45;
      if (isMetaClass)
      {
        v37 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Dispatch resource init failed", v37, ClassName, Name, 537);
    }

    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(v18);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(v18);
      v42 = sel_getName(a2);
      *buf = 67109890;
      v47 = v40;
      v48 = 2082;
      v49 = v41;
      v50 = 2082;
      v51 = v42;
      v52 = 1024;
      v53 = 537;
      _os_log_impl(&dword_23728C000, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Dispatch resource init failed", buf, 0x22u);
    }

    goto LABEL_21;
  }

  dispatch_group_enter(v30);
  v18->_sessionState = 0;
LABEL_10:
  v31 = v18;
LABEL_22:

  return v31;
}

- (void)_resumeDelegateQueue
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_delegateQueueStarted)
  {
    dispatch_group_leave(obj->_sessionStartInProgress);
    obj->_delegateQueueStarted = 1;
  }

  objc_sync_exit(obj);
}

- (void)cleanupNFCHardwareManagerRegistration
{
  hardwareManager = [(NFCReaderSession *)self hardwareManager];
  [hardwareManager dequeueSession:self];
}

- (BOOL)validateDelegate:(id)delegate expectedType:(int64_t)type
{
  v33 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v8 = delegateCopy;
  if (type == 1)
  {
    v9 = &unk_284A5A270;
  }

  else
  {
    if ((type & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      goto LABEL_7;
    }

    v9 = &unk_284A546A8;
  }

  if ([delegateCopy conformsToProtocol:v9])
  {
LABEL_6:
    v10 = 1;
    goto LABEL_35;
  }

LABEL_7:
  v11 = 0;
  if ([v8 conformsToProtocol:&unk_284A5A210])
  {
    if (type <= 3)
    {
      if ((type - 2) >= 2)
      {
        if (type)
        {
          goto LABEL_11;
        }

LABEL_16:
        v11 = @"UNKNOWN";
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if ((type - 4) < 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (type <= 3)
    {
      if ((type - 2) >= 2)
      {
        if (type)
        {
LABEL_11:
          if (type == 1)
          {
            v11 = @"NFCReaderSessionDelegate";
          }

          goto LABEL_25;
        }

        goto LABEL_16;
      }

LABEL_17:
      v11 = @"NFCTagReaderSessionDelegate";
      goto LABEL_25;
    }

    if ((type - 4) < 2)
    {
      v11 = @"NFCNDEFReaderSessionDelegate";
      goto LABEL_25;
    }
  }

  if (type == 6)
  {
    if ([v8 conformsToProtocol:&unk_284A5A2D0])
    {
      goto LABEL_6;
    }

    v11 = @"NFCVASReaderSessionDelegate";
  }

LABEL_25:
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v13(3, "%c[%{public}s %{public}s]:%i Delegate object does not conform to %@ protocol", v16, ClassName, Name, 606, v11);
  }

  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    *buf = 67110146;
    v24 = v19;
    v25 = 2082;
    v26 = object_getClassName(self);
    v27 = 2082;
    v28 = sel_getName(a2);
    v29 = 1024;
    v30 = 606;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_23728C000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Delegate object does not conform to %@ protocol", buf, 0x2Cu);
  }

  v10 = 0;
LABEL_35:

  return v10;
}

- (void)_startPollingWithMethod:(unint64_t)method sessionConfig:(unint64_t)config completionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  if (!handlerCopy || proxy)
  {
    v12 = proxy;
    objc_sync_exit(selfCopy);

    if ((method & 0x1C) != 0)
    {
      selfCopy = [(NFReaderSessionInterface *)v12 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
      [(NFCReaderSession *)selfCopy startPollingForTags:method sessionConfig:config completion:handlerCopy];
    }

    else if ((method & 2) != 0)
    {
      selfCopy = [(NFReaderSessionInterface *)v12 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
      [(NFCReaderSession *)selfCopy startPollingForNDEFMessagesWithSessionConfig:config completion:handlerCopy];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"NFCReaderSession.m" lineNumber:627 description:@"Unsupported poll mode"];

      selfCopy = [NFCError errorWithCode:1];
      handlerCopy[2](handlerCopy, selfCopy);
    }
  }

  else
  {
    v11 = [NFCError errorWithCode:202];
    handlerCopy[2](handlerCopy, v11);

    objc_sync_exit(selfCopy);
  }
}

- (void)_stopPollingWithCompletionHandler:(id)handler
{
  selfCopy = self;
  handlerCopy = handler;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  v9 = proxy;
  if (!handlerCopy || proxy)
  {
    v8 = proxy;
    objc_sync_exit(selfCopy);

    selfCopy = [(NFReaderSessionInterface *)v8 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
    [(NFCReaderSession *)selfCopy stopPollingWithCompletion:handlerCopy];
  }

  else
  {
    v7 = [NFCError errorWithCode:202];
    (*(handlerCopy + 2))(handlerCopy, v7);

    objc_sync_exit(selfCopy);
  }
}

- (void)_restartPollingWithCompletionHandler:(id)handler
{
  selfCopy = self;
  handlerCopy = handler;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  v10 = proxy;
  if (!handlerCopy || proxy)
  {
    v8 = proxy;
    currentTag = selfCopy->_currentTag;
    selfCopy->_currentTag = 0;

    selfCopy->_sessionState = 3;
    objc_sync_exit(selfCopy);

    selfCopy = [(NFReaderSessionInterface *)v8 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
    [(NFCReaderSession *)selfCopy restartPollingWithCompletion:handlerCopy];
  }

  else
  {
    v7 = [NFCError errorWithCode:202];
    (*(handlerCopy + 2))(handlerCopy, v7);

    objc_sync_exit(selfCopy);
  }
}

- (NFTag)currentTag
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentTag;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)connectTag:(id)tag completionHandler:(id)handler
{
  tagCopy = tag;
  handlerCopy = handler;
  if ([(NFCReaderSession *)self isInvalidated])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372C9268;
    v14[3] = &unk_278A29C38;
    v15 = handlerCopy;
    v8 = handlerCopy;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v14];
    v9 = v15;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2372C92D0;
    v11[3] = &unk_278A29DE8;
    v11[4] = self;
    v12 = tagCopy;
    v13 = handlerCopy;
    v10 = handlerCopy;
    [(NFCReaderSession *)self submitBlockOnSessionQueue:v11];

    v9 = v12;
  }
}

- (BOOL)connectTag:(id)tag error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionState = selfCopy->_sessionState;
  if (sessionState == 4)
  {
    if (([tagCopy isEqualToNFTag:selfCopy->_currentTag] & 1) == 0 && selfCopy->_currentTag)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(6, "%c[%{public}s %{public}s]:%i Disconnecting previous tag", v15, ClassName, Name, 699);
      }

      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = object_getClass(selfCopy);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v41 = v18;
        v42 = 2082;
        v43 = object_getClassName(selfCopy);
        v44 = 2082;
        v45 = sel_getName(a2);
        v46 = 1024;
        v47 = 699;
        _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disconnecting previous tag", buf, 0x22u);
      }

      [(NFCReaderSession *)selfCopy disconnectTagWithError:0];
    }

    v39 = 0;
    [(NFCReaderSession *)selfCopy _connectTag:tagCopy error:&v39];
    v19 = v39;
    v20 = v19;
    if (error)
    {
      v21 = v19;
LABEL_27:
      *error = v21;
    }
  }

  else
  {
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(selfCopy);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(selfCopy);
      v27 = sel_getName(a2);
      v28 = 45;
      if (v25)
      {
        v28 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Invalid state, %ld", v28, v26, v27, 692, selfCopy->_sessionState);
    }

    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(selfCopy);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(selfCopy);
      v33 = sel_getName(a2);
      v34 = selfCopy->_sessionState;
      *buf = 67110146;
      v41 = v31;
      v42 = 2082;
      v43 = v32;
      v44 = 2082;
      v45 = v33;
      v46 = 1024;
      v47 = 692;
      v48 = 2048;
      v49 = v34;
      _os_log_impl(&dword_23728C000, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid state, %ld", buf, 0x2Cu);
    }

    if (error)
    {
      v21 = [NFCError errorWithCode:100];
      v20 = 0;
      goto LABEL_27;
    }

    v20 = 0;
  }

  objc_sync_exit(selfCopy);

  v36 = sessionState == 4 && v20 == 0;
  return v36;
}

- (BOOL)_connectTag:(id)tag error:(id *)error
{
  v59[2] = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  if (proxy)
  {
    v10 = proxy;
    objc_sync_exit(selfCopy);

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_2372C9BDC;
    v46 = sub_2372C9BEC;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_2372C9BDC;
    v40 = sub_2372C9BEC;
    v41 = 0;
    if (error)
    {
      *error = 0;
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2372C9BF4;
    v35[3] = &unk_278A2A100;
    v35[4] = &v42;
    v11 = [(NFReaderSessionInterface *)v10 synchronousRemoteObjectProxyWithErrorHandler:v35];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2372C9C04;
    v34[3] = &unk_278A2A370;
    v34[4] = &v42;
    v34[5] = &v36;
    [v11 connect:tagCopy completion:v34];

    v12 = v43[5];
    v13 = v12 == 0;
    if (v12)
    {
      domain = [v12 domain];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
      v16 = [domain isEqualToString:v15];

      if (v16)
      {
        v17 = [NFCError errorWithNFCDError:v43[5] defaultNFCErrorCode:100];
        if ([v17 code] == 203)
        {
          -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v17 code]);
        }
      }

      else
      {
        [(NFCReaderSession *)selfCopy _invalidateSessionWithCode:202];
        v58[0] = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
        v58[1] = *MEMORY[0x277CCA7E8];
        v59[0] = v18;
        v59[1] = v43[5];
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
        v17 = [NFCError errorWithCode:202 userInfo:v19];
      }

      Logger = NFLogGetLogger();
      if (Logger)
      {
        v21 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v21(4, "%c[%{public}s %{public}s]:%i %@", v24, ClassName, Name, 750, v17);
      }

      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = object_getClass(selfCopy);
        if (class_isMetaClass(v26))
        {
          v27 = 43;
        }

        else
        {
          v27 = 45;
        }

        v28 = object_getClassName(selfCopy);
        v29 = sel_getName(a2);
        *buf = 67110146;
        v49 = v27;
        v50 = 2082;
        v51 = v28;
        v52 = 2082;
        v53 = v29;
        v54 = 1024;
        v55 = 750;
        v56 = 2112;
        v57 = v17;
        _os_log_impl(&dword_23728C000, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
      }

      if (error)
      {
        v30 = v17;
        *error = v17;
      }
    }

    else
    {
      v17 = selfCopy;
      objc_sync_enter(v17);
      objc_storeStrong(v17 + 8, v37[5]);
      objc_sync_exit(v17);
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
  }

  else
  {
    if (error)
    {
      *error = [NFCError errorWithCode:103];
    }

    objc_sync_exit(selfCopy);

    v13 = 0;
  }

  return v13;
}

- (BOOL)disconnectTagWithError:(id *)error
{
  v56[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  if (proxy)
  {
    v7 = proxy;
    objc_sync_exit(selfCopy);

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_2372C9BDC;
    v41 = sub_2372C9BEC;
    v42 = 0;
    if (error)
    {
      *error = 0;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2372CA12C;
    v36[3] = &unk_278A2A100;
    v36[4] = &v37;
    v8 = [(NFReaderSessionInterface *)v7 synchronousRemoteObjectProxyWithErrorHandler:v36];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2372CA13C;
    v35[3] = &unk_278A2A100;
    v35[4] = &v37;
    [v8 disconnectWithCardRemoval:0 completion:v35];

    v9 = v38[5];
    v10 = v9 == 0;
    if (v9)
    {
      domain = [v9 domain];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
      v13 = [domain isEqualToString:v12];

      if (v13)
      {
        v55[0] = *MEMORY[0x277CCA450];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Stack Error"];
        v55[1] = *MEMORY[0x277CCA7E8];
        v56[0] = v14;
        v56[1] = v38[5];
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
        v16 = 100;
      }

      else
      {
        [(NFCReaderSession *)selfCopy _invalidateSessionWithCode:202];
        v53[0] = *MEMORY[0x277CCA450];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
        v53[1] = *MEMORY[0x277CCA7E8];
        v54[0] = v14;
        v54[1] = v38[5];
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
        v16 = 202;
      }

      v18 = [NFCError errorWithCode:v16 userInfo:v15];

      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v20(4, "%c[%{public}s %{public}s]:%i %@", v23, ClassName, Name, 798, v18);
      }

      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(selfCopy);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(selfCopy);
        v28 = sel_getName(a2);
        *buf = 67110146;
        v44 = v26;
        v45 = 2082;
        v46 = v27;
        v47 = 2082;
        v48 = v28;
        v49 = 1024;
        v50 = 798;
        v51 = 2112;
        v52 = v18;
        _os_log_impl(&dword_23728C000, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
      }

      if (error)
      {
        v29 = v18;
        *error = v18;
      }
    }

    v30 = selfCopy;
    objc_sync_enter(v30);
    currentTag = v30->_currentTag;
    v30->_currentTag = 0;

    objc_sync_exit(v30);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    if (error)
    {
      *error = [NFCError errorWithCode:103];
    }

    v17 = selfCopy->_currentTag;
    selfCopy->_currentTag = 0;

    objc_sync_exit(selfCopy);
    v10 = 0;
  }

  return v10;
}

- (BOOL)checkPresenceWithError:(id *)error
{
  v54[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  if (proxy)
  {
    v7 = proxy;
    objc_sync_exit(selfCopy);

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_2372C9BDC;
    v41 = sub_2372C9BEC;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    if (error)
    {
      *error = 0;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2372CA5B8;
    v32[3] = &unk_278A2A100;
    v32[4] = &v37;
    v8 = [(NFReaderSessionInterface *)v7 synchronousRemoteObjectProxyWithErrorHandler:v32];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2372CA5C8;
    v31[3] = &unk_278A2A398;
    v31[4] = &v33;
    v31[5] = &v37;
    [v8 checkPresenceWithCompletion:v31];

    v9 = v38[5];
    if (v9)
    {
      domain = [v9 domain];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
      v12 = [domain isEqualToString:v11];

      if (v12)
      {
        v13 = [NFCError errorWithNFCDError:v38[5] defaultNFCErrorCode:100];
        if ([v13 code] == 203)
        {
          -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v13 code]);
        }
      }

      else
      {
        [(NFCReaderSession *)selfCopy _invalidateSessionWithCode:202];
        v53[0] = *MEMORY[0x277CCA450];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
        v53[1] = *MEMORY[0x277CCA7E8];
        v54[0] = v15;
        v54[1] = v38[5];
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
        v13 = [NFCError errorWithCode:202 userInfo:v16];
      }

      Logger = NFLogGetLogger();
      if (Logger)
      {
        v18 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v21 = 45;
        if (isMetaClass)
        {
          v21 = 43;
        }

        v18(4, "%c[%{public}s %{public}s]:%i %@", v21, ClassName, Name, 847, v13);
      }

      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = object_getClass(selfCopy);
        if (class_isMetaClass(v23))
        {
          v24 = 43;
        }

        else
        {
          v24 = 45;
        }

        v25 = object_getClassName(selfCopy);
        v26 = sel_getName(a2);
        *buf = 67110146;
        v44 = v24;
        v45 = 2082;
        v46 = v25;
        v47 = 2082;
        v48 = v26;
        v49 = 1024;
        v50 = 847;
        v51 = 2112;
        v52 = v13;
        _os_log_impl(&dword_23728C000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
      }

      if (error)
      {
        v27 = v13;
        *error = v13;
      }
    }

    v14 = *(v34 + 24);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    if (error)
    {
      *error = [NFCError errorWithCode:103];
    }

    objc_sync_exit(selfCopy);

    v14 = 0;
  }

  return v14 & 1;
}

- (id)transceive:(id)transceive tagUpdate:(id *)update error:(id *)error
{
  v76[2] = *MEMORY[0x277D85DE8];
  transceiveCopy = transceive;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  if (proxy)
  {
    v12 = proxy;
    objc_sync_exit(selfCopy);

    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_2372C9BDC;
    v61 = sub_2372C9BEC;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_2372C9BDC;
    v55 = sub_2372C9BEC;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_2372C9BDC;
    v49 = sub_2372C9BEC;
    v50 = 0;
    if (error)
    {
      *error = 0;
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2372CABF0;
    v44[3] = &unk_278A2A100;
    v44[4] = &v57;
    v13 = [(NFReaderSessionInterface *)v12 synchronousRemoteObjectProxyWithErrorHandler:v44];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2372CAC00;
    v43[3] = &unk_278A2A3C0;
    v43[4] = &v51;
    v43[5] = &v57;
    v43[6] = &v45;
    [v13 transceive:transceiveCopy completion:v43];

    v14 = v58[5];
    if (v14)
    {
      domain = [v14 domain];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
      v17 = [domain isEqualToString:v16];

      if (v17)
      {
        if ([v58[5] code] == 10)
        {
          v75[0] = *MEMORY[0x277CCA450];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Stack Error"];
          v75[1] = *MEMORY[0x277CCA7E8];
          v76[0] = v18;
          v76[1] = v58[5];
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
          v20 = [NFCError errorWithCode:102 userInfo:v19];
        }

        else
        {
          v20 = [NFCError errorWithNFCDError:v58[5] defaultNFCErrorCode:100];
        }

        if ([v20 code] == 203)
        {
          -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v20 code]);
        }
      }

      else
      {
        [(NFCReaderSession *)selfCopy _invalidateSessionWithCode:202];
        v73[0] = *MEMORY[0x277CCA450];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
        v73[1] = *MEMORY[0x277CCA7E8];
        v74[0] = v22;
        v74[1] = v58[5];
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
        v20 = [NFCError errorWithCode:202 userInfo:v23];
      }

      Logger = NFLogGetLogger();
      if (Logger)
      {
        v25 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName(a2);
        v28 = 45;
        if (isMetaClass)
        {
          v28 = 43;
        }

        v25(4, "%c[%{public}s %{public}s]:%i %@", v28, ClassName, Name, 899, v20);
      }

      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(selfCopy);
        errorCopy = error;
        v32 = proxy;
        v33 = transceiveCopy;
        updateCopy = update;
        if (class_isMetaClass(v30))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(selfCopy);
        v37 = sel_getName(a2);
        *buf = 67110146;
        v64 = v35;
        update = updateCopy;
        transceiveCopy = v33;
        proxy = v32;
        error = errorCopy;
        v65 = 2082;
        v66 = v36;
        v67 = 2082;
        v68 = v37;
        v69 = 1024;
        v70 = 899;
        v71 = 2112;
        v72 = v20;
        _os_log_impl(&dword_23728C000, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
      }

      if (error)
      {
        v38 = v20;
        *error = v20;
      }
    }

    v39 = selfCopy;
    objc_sync_enter(v39);
    objc_storeStrong(v39 + 8, v46[5]);
    objc_sync_exit(v39);

    if (update)
    {
      *update = v46[5];
    }

    v21 = v52[5];
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v57, 8);
  }

  else
  {
    if (error)
    {
      *error = [NFCError errorWithCode:103];
    }

    objc_sync_exit(selfCopy);

    v21 = 0;
  }

  return v21;
}

- (void)restartPolling
{
  if (![(NFCReaderSession *)self isInvalidated])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_2372CAD40;
    v3[3] = &unk_278A29F00;
    v3[4] = self;
    [(NFCReaderSession *)self submitBlockOnSessionQueue:v3];
  }
}

- (void)_callbackDidInvalidateWithError:(id)error
{
  v52 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (!self->_sessionState)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(5, "%c[%{public}s %{public}s]:%i Session has not begun", v13, ClassName, Name, 929);
    }

    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67109890;
    v43 = v16;
    v44 = 2082;
    v45 = object_getClassName(self);
    v46 = 2082;
    v47 = sel_getName(a2);
    v48 = 1024;
    v49 = 929;
    v17 = "%c[%{public}s %{public}s]:%i Session has not begun";
    v18 = v14;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 34;
    goto LABEL_13;
  }

  if (self->_delegateType == 1)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2372CB260;
    v40[3] = &unk_278A29E60;
    v40[4] = self;
    v41 = errorCopy;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v40];
    v7 = v41;
LABEL_18:

    goto LABEL_19;
  }

  if ([(NFCReaderSession *)self delegateType]== 2 || [(NFCReaderSession *)self delegateType]== 3)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2372CB2B4;
    v38[3] = &unk_278A29E60;
    v38[4] = self;
    v39 = v6;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v38];
    v7 = v39;
    goto LABEL_18;
  }

  if ([(NFCReaderSession *)self delegateType]== 4 || [(NFCReaderSession *)self delegateType]== 5)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2372CB308;
    v36[3] = &unk_278A29E60;
    v36[4] = self;
    v37 = v6;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v36];
    v7 = v37;
    goto LABEL_18;
  }

  if ([(NFCReaderSession *)self delegateType]== 6)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2372CB35C;
    v34[3] = &unk_278A29E60;
    v34[4] = self;
    v35 = v6;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v34];
    v7 = v35;
    goto LABEL_18;
  }

  v21 = NFLogGetLogger();
  if (v21)
  {
    v22 = v21;
    v23 = object_getClass(self);
    v24 = class_isMetaClass(v23);
    v25 = object_getClassName(self);
    v26 = sel_getName(a2);
    v27 = 45;
    if (v24)
    {
      v27 = 43;
    }

    v22(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v27, v25, v26, 950, self->_delegateType);
  }

  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v28 = object_getClass(self);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(self);
    v31 = sel_getName(a2);
    delegateType = self->_delegateType;
    *buf = 67110146;
    v43 = v29;
    v44 = 2082;
    v45 = v30;
    v46 = 2082;
    v47 = v31;
    v48 = 1024;
    v49 = 950;
    v50 = 2048;
    v51 = delegateType;
    v17 = "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld";
    v18 = v14;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 44;
LABEL_13:
    _os_log_impl(&dword_23728C000, v18, v19, v17, buf, v20);
  }

LABEL_14:

LABEL_19:
}

- (void)_invalidateSessionWithCode:(int64_t)code message:(id)message finalUIState:(int64_t)state activateCallback:(BOOL)callback
{
  callbackCopy = callback;
  v61 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_sessionState - 5) >= 2)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v17 = 43;
      if (!isMetaClass)
      {
        v17 = 45;
      }

      v14(6, "%c[%{public}s %{public}s]:%i code=%ld, finalUIState=%ld, activateCallback=%ld", v17, ClassName, Name, 977, code, state, callbackCopy);
    }

    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(selfCopy);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67110658;
      v48 = v20;
      v49 = 2082;
      v50 = object_getClassName(selfCopy);
      v51 = 2082;
      v52 = sel_getName(a2);
      v53 = 1024;
      v54 = 977;
      v55 = 2048;
      codeCopy = code;
      v57 = 2048;
      stateCopy = state;
      v59 = 2048;
      v60 = callbackCopy;
      _os_log_impl(&dword_23728C000, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i code=%ld, finalUIState=%ld, activateCallback=%ld", buf, 0x40u);
    }

    if (selfCopy->_sessionState > 2uLL)
    {
      if (messageCopy)
      {
        proxy = selfCopy->_proxy;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = sub_2372CB8CC;
        v46[3] = &unk_278A2A2A8;
        v46[4] = selfCopy;
        v46[5] = a2;
        v22 = [(NFReaderSessionInterface *)proxy synchronousRemoteObjectProxyWithErrorHandler:v46];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = sub_2372CBA54;
        v45[3] = &unk_278A2A2A8;
        v45[4] = selfCopy;
        v45[5] = a2;
        [v22 updateSharingUIScanText:messageCopy completion:v45];
      }

      if (state == 2)
      {
        delegateType = selfCopy->_delegateType;
        if (delegateType <= 6)
        {
          if (((1 << delegateType) & 0x6C) != 0)
          {
            v24 = selfCopy->_proxy;
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = sub_2372CBBE0;
            v44[3] = &unk_278A2A2A8;
            v44[4] = selfCopy;
            v44[5] = a2;
            v25 = [(NFReaderSessionInterface *)v24 synchronousRemoteObjectProxyWithErrorHandler:v44];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = sub_2372CBD68;
            v43[3] = &unk_278A2A2A8;
            v43[4] = selfCopy;
            v43[5] = a2;
            [v25 updateSharingUIStateOnInvalidation:2 completion:v43];
          }

          else
          {
            v26 = NFLogGetLogger();
            if (v26)
            {
              v27 = v26;
              v28 = object_getClass(selfCopy);
              v29 = class_isMetaClass(v28);
              v30 = object_getClassName(selfCopy);
              v42 = sel_getName(a2);
              v31 = 45;
              if (v29)
              {
                v31 = 43;
              }

              v27(4, "%c[%{public}s %{public}s]:%i Session does not support invalidation with error", v31, v30, v42, 1004);
            }

            v25 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v32 = object_getClass(selfCopy);
              if (class_isMetaClass(v32))
              {
                v33 = 43;
              }

              else
              {
                v33 = 45;
              }

              v34 = object_getClassName(selfCopy);
              v35 = sel_getName(a2);
              *buf = 67109890;
              v48 = v33;
              v49 = 2082;
              v50 = v34;
              v51 = 2082;
              v52 = v35;
              v53 = 1024;
              v54 = 1004;
              _os_log_impl(&dword_23728C000, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session does not support invalidation with error", buf, 0x22u);
            }
          }
        }
      }
    }

    else
    {
      [(NFCReaderSession *)selfCopy cleanupNFCHardwareManagerRegistration];
    }

    remoteObjectProxy = [(NFReaderSessionInterface *)selfCopy->_proxy remoteObjectProxy];
    [remoteObjectProxy endSession:&unk_284A4F490];

    sessionId = selfCopy->_sessionId;
    selfCopy->_sessionId = 0;

    currentTag = selfCopy->_currentTag;
    selfCopy->_currentTag = 0;

    selfCopy->_sessionState = 5;
    selfCopy->_invalidationCode = code;
  }

  if (callbackCopy)
  {
    v39 = [NFCError errorWithCode:selfCopy->_invalidationCode];
    [(NFCReaderSession *)selfCopy _callbackDidInvalidateWithError:v39];
  }

  objc_sync_exit(selfCopy);
}

- (NFReaderSessionInterface)readerProxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_proxy;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (BOOL)featureAvailable:(unint64_t)available
{
  v4 = +[NFCHardwareManager sharedHardwareManager];
  LOBYTE(available) = [v4 areFeaturesSupported:available outError:0];

  return available;
}

- (id)ndefStatus:(int64_t *)status maxMessageLength:(unint64_t *)length
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proxy = selfCopy->_proxy;
  if (proxy)
  {
    v8 = proxy;
    objc_sync_exit(selfCopy);

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_2372C9BDC;
    v23 = sub_2372C9BEC;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2372CC200;
    v18[3] = &unk_278A2A100;
    v18[4] = &v19;
    v9 = [(NFReaderSessionInterface *)v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2372CC210;
    v17[3] = &unk_278A2A410;
    v17[4] = &v19;
    v17[5] = &v25;
    v17[6] = length;
    [v9 checkNdefSupportWithCompletion:v17];

    if (status)
    {
      *status = v26[3];
    }

    v10 = [NFCError errorWithNFCDError:v20[5] defaultNFCErrorCode:104];
    v11 = v20[5];
    v20[5] = v10;

    v12 = v20;
    v13 = v20[5];
    if (v13)
    {
      code = [v13 code];
      v12 = v20;
      if (code == 203)
      {
        -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v20[5] code]);
        v12 = v20;
      }
    }

    v15 = v12[5];
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (status)
    {
      *status = 0;
    }

    v15 = [NFCError errorWithCode:103];
    objc_sync_exit(selfCopy);
  }

  return v15;
}

- (id)readNdefMessageWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_currentTag)
  {
    if (error)
    {
      v10 = 104;
LABEL_13:
      *error = [NFCError errorWithCode:v10];
    }

LABEL_14:
    objc_sync_exit(selfCopy);

    v9 = 0;
    goto LABEL_15;
  }

  proxy = selfCopy->_proxy;
  if (!proxy)
  {
    if (error)
    {
      v10 = 103;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v6 = proxy;
  objc_sync_exit(selfCopy);

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2372C9BDC;
  v24 = sub_2372C9BEC;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_2372C9BDC;
  v18 = sub_2372C9BEC;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2372CC508;
  v13[3] = &unk_278A2A100;
  v13[4] = &v14;
  v7 = [(NFReaderSessionInterface *)v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2372CC518;
  v12[3] = &unk_278A2A438;
  v12[4] = &v14;
  v12[5] = &v20;
  [v7 ndefReadWithCompletion:v12];

  if (error)
  {
    *error = v15[5];
  }

  v8 = v15[5];
  if (v8 && [v8 code] == 203)
  {
    -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v15[5] code]);
  }

  v9 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
LABEL_15:

  return v9;
}

- (id)_convertMessageToInternal:(id)internal
{
  v24 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v16 = objc_alloc_init(MEMORY[0x277D82B60]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [internalCopy records];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v8 = MEMORY[0x277D82B68];
        typeNameFormat = [v7 typeNameFormat];
        type = [v7 type];
        identifier = [v7 identifier];
        payload = [v7 payload];
        v13 = [v8 recordsWithTNF:typeNameFormat type:type identifier:identifier payload:payload chunkSize:objc_msgSend(v7 outError:{"chunkSize"), &v18}];

        if (!v18)
        {
          [v16 addRecordArray:v13];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  return v16;
}

- (BOOL)writeNdefMessage:(id)message error:(id *)error
{
  messageCopy = message;
  if (!messageCopy)
  {
    if (error)
    {
      [NFCError errorWithCode:403];
      *error = v12 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_currentTag)
  {
    if (error)
    {
      v14 = 104;
LABEL_16:
      *error = [NFCError errorWithCode:v14];
    }

LABEL_17:
    objc_sync_exit(selfCopy);

    goto LABEL_18;
  }

  proxy = selfCopy->_proxy;
  if (!proxy)
  {
    if (error)
    {
      v14 = 103;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = proxy;
  objc_sync_exit(selfCopy);

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2372C9BDC;
  v22 = sub_2372C9BEC;
  v23 = 0;
  v10 = [(NFCReaderSession *)selfCopy _convertMessageToInternal:messageCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2372CCA00;
  v17[3] = &unk_278A2A100;
  v17[4] = &v18;
  v11 = [(NFReaderSessionInterface *)v9 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2372CCA10;
  v16[3] = &unk_278A2A100;
  v16[4] = &v18;
  [v11 ndefWrite:v10 completion:v16];

  v12 = error == 0;
  if (error)
  {
    *error = v19[5];
  }

  v13 = v19[5];
  if (v13 && [v13 code] == 203)
  {
    -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v19[5] code]);
  }

  _Block_object_dispose(&v18, 8);
LABEL_19:

  return v12;
}

- (id)writeLockNdef
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_currentTag)
  {
    v12 = 104;
LABEL_9:
    v11 = [NFCError errorWithCode:v12];
    objc_sync_exit(selfCopy);

    goto LABEL_10;
  }

  proxy = selfCopy->_proxy;
  if (!proxy)
  {
    v12 = 103;
    goto LABEL_9;
  }

  v4 = proxy;
  objc_sync_exit(selfCopy);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2372C9BDC;
  v20 = sub_2372C9BEC;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2372CCC78;
  v15[3] = &unk_278A2A100;
  v15[4] = &v16;
  v5 = [(NFReaderSessionInterface *)v4 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2372CCC88;
  v14[3] = &unk_278A2A100;
  v14[4] = &v16;
  [v5 writeProtectNDEFTagWithCompletion:v14];

  v6 = [NFCError errorWithNFCDError:v17[5] defaultNFCErrorCode:401];
  v7 = v17[5];
  v17[5] = v6;

  v8 = v17;
  v9 = v17[5];
  if (v9)
  {
    code = [v9 code];
    v8 = v17;
    if (code == 203)
    {
      -[NFCReaderSession _invalidateSessionWithCode:](selfCopy, "_invalidateSessionWithCode:", [v17[5] code]);
      v8 = v17;
    }
  }

  v11 = v8[5];
  _Block_object_dispose(&v16, 8);

LABEL_10:

  return v11;
}

@end