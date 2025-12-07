@interface CMContinuityCaptureRapportServer
+ (id)rapportDeviceForSession:(id)session;
- (CMContinuityCaptureRapportServer)initWithRapportDisplaySession:(id)session queue:(id)queue voucher:(id)voucher incomingStreamRequestHandler:(id)handler;
- (CMContinuityCaptureTimeSyncClock)timeSyncClock;
- (ContinuityCaptureTaskDelegate)delegate;
- (NSDate)sessionActivationStartTime;
- (NSUUID)sessionUUID;
- (void)cancel;
- (void)createStreamWithIdentifier:(id)identifier isMediaStream:(BOOL)stream completion:(id)completion;
- (void)invalidateCurrentSession:(id)session;
- (void)parseAndActOnStreamsSetupInfo:(id)info;
- (void)parseAndNotifySessionStartInfo:(id)info transportInfo:(id)transportInfo;
- (void)relayTerminationComplete;
- (void)resetDisplaySession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)setupRemoteDisplaySession:(id)session;
@end

@implementation CMContinuityCaptureRapportServer

- (void)resetDisplaySession:(id)session
{
  sessionCopy = session;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureRapportServer resetDisplaySession:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CMContinuityCaptureRapportServer_resetDisplaySession___block_invoke;
  v8[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, buf);
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __56__CMContinuityCaptureRapportServer_resetDisplaySession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[10];
    v5 = WeakRetained;
    v4 = [*(a1 + 32) destinationDevice];
    [v3 resetDevice:?];

    [v5 setupRemoteDisplaySession:?];
    WeakRetained = v5;
  }
}

- (ContinuityCaptureTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CMContinuityCaptureRapportServer;
  delegateCopy = delegate;
  [(CMContinuityCaptureRapportTransportBase *)&v5 setTaskDelegate:delegateCopy];
  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (CMContinuityCaptureTimeSyncClock)timeSyncClock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timeSyncClock;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)invalidateCurrentSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    rpDisplaySession = self->_rpDisplaySession;
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = rpDisplaySession;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidate current session %{public}@", &v9, 0x16u);
  }

  [(CMContinuityCaptureTransportRapportDevice *)self->_device teardownActiveRapportStreams];
  [(NSMutableSet *)self->_createdIdentifiers removeAllObjects];
  [(CMContinuityCaptureRapportTransportBase *)self disposeTimeSyncClock];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  timeSyncClock = selfCopy2->_timeSyncClock;
  selfCopy2->_timeSyncClock = 0;

  objc_sync_exit(selfCopy2);
  if (sessionCopy)
  {
    sessionCopy[2](sessionCopy);
  }
}

- (NSDate)sessionActivationStartTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sessionActivationStartTime;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)rapportDeviceForSession:(id)session
{
  sessionCopy = session;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(v5);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureRapportServer_rapportDeviceForSession___block_invoke;
  block[3] = &unk_278D5C2B0;
  block[4] = &v23;
  dispatch_async_and_wait(v5, block);

  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  v8 = v24[5];
  if (!v8 && CFPreferenceBooleanWithDefault)
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ use default camera capabilities", &v20, 0xCu);
    }

    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
    v12 = [v11 pathForResource:? ofType:?];
    v13 = [v10 dictionaryWithContentsOfFile:?];

    v14 = [[CMContinuityCaptureCapabilities alloc] initWithDictionaryRepresentation:?];
    v15 = v24[5];
    v24[5] = v14;

    v8 = v24[5];
  }

  if (v8)
  {
    v16 = [CMContinuityCaptureTransportRapportDevice alloc];
    destinationDevice = [sessionCopy destinationDevice];
    v18 = [CMContinuityCaptureTransportRapportDevice initWithRapportDevice:v16 capabilities:"initWithRapportDevice:capabilities:remote:" remote:?];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v18;
}

uint64_t __60__CMContinuityCaptureRapportServer_rapportDeviceForSession___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];

  return MEMORY[0x2821F96F8]();
}

- (void)createStreamWithIdentifier:(id)identifier isMediaStream:(BOOL)stream completion:(id)completion
{
  streamCopy = stream;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(location, self);
  if ([(NSMutableSet *)self->_createdIdentifiers containsObject:?])
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v42 = 2114;
      v43 = identifierCopy;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ already created, skip", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    [(NSMutableSet *)self->_createdIdentifiers addObject:?];
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v42 = 2080;
      v43 = "[CMContinuityCaptureRapportServer createStreamWithIdentifier:isMediaStream:completion:]";
      v44 = 2114;
      v45 = identifierCopy;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D44210]);
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    [v12 setStreamID:?];
    [v12 setMessenger:?];
    [v12 setStreamType:?];
    [v12 setServiceType:?];
    [v12 setStreamFlags:?];
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    dispatch_assert_queue_not_V2(v13);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke;
    block[3] = &unk_278D5C120;
    objc_copyWeak(&v39, location);
    block[4] = self;
    v15 = v12;
    v38 = v15;
    dispatch_async_and_wait(v13, block);

    objc_destroyWeak(&v39);
    if (streamCopy)
    {
      CMContinuityCaptureGetMediaProcessUniqueID(0);
      [v15 setDelegatedProcessUPID:?];
    }

    objc_initWeak(buf, v15);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_27;
    v33[3] = &unk_278D5D6F8;
    objc_copyWeak(&v35, location);
    objc_copyWeak(&v36, buf);
    v16 = identifierCopy;
    v34 = v16;
    v17 = MEMORY[0x245D12020](v33);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_28;
    v29[3] = &unk_278D5D6F8;
    objc_copyWeak(&v31, location);
    objc_copyWeak(&v32, buf);
    v30 = v16;
    v18 = MEMORY[0x245D12020](v29);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_29;
    v25[3] = &unk_278D5D720;
    objc_copyWeak(&v27, location);
    objc_copyWeak(&v28, buf);
    v21 = completionCopy;
    v26 = completionCopy;
    v19 = MEMORY[0x245D12020](v25);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_31;
    v22[3] = &unk_278D5D748;
    objc_copyWeak(&v23, location);
    objc_copyWeak(&v24, buf);
    v20 = MEMORY[0x245D12020](v22);
    [v15 setDispatchQueue:?];
    [v15 setInvalidationHandler:?];
    [v15 setDisconnectHandler:?];
    [v15 setReceivedEventHandler:?];
    [v15 activateWithCompletion:?];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);

    completionCopy = v21;
  }

  objc_destroyWeak(location);
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[14];
    if (v4 < 2)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v9 = 138543362;
        v10 = v6;
        v7 = "%{public}@ register traffic flags for Mac: None";
LABEL_8:
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v4 == 2)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = 138543362;
        v10 = v8;
        v7 = "%{public}@ register traffic flags for ATV: None";
        goto LABEL_8;
      }

LABEL_9:

      [*(a1 + 40) setTrafficFlags:?];
    }
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = [WeakRetained currentSessionID];
      v6 = objc_loadWeakRetained((a1 + 48));
      v9 = 138543874;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stream [sessionID:%llx] %{public}@ invalidated", &v9, 0x20u);
    }

    dispatch_assert_queue_V2(*(WeakRetained + 11));
    v7 = *(WeakRetained + 10);
    v8 = objc_loadWeakRetained((a1 + 48));
    [v7 removeStream:?];

    [*(WeakRetained + 19) removeObject:?];
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = [WeakRetained currentSessionID];
      v6 = objc_loadWeakRetained((a1 + 48));
      v9 = 138543874;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stream [sessionID:%llx] %{public}@ disconnected", &v9, 0x20u);
    }

    dispatch_assert_queue_V2(*(WeakRetained + 11));
    v7 = *(WeakRetained + 10);
    v8 = objc_loadWeakRetained((a1 + 48));
    [v7 removeStream:?];

    [*(WeakRetained + 19) removeObject:?];
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    if (v5)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = objc_loadWeakRetained((a1 + 48));
        v9 = 138543874;
        v10 = v7;
        v11 = 2114;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ stream %{public}@ session activate completed with error %{public}@", &v9, 0x20u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_31(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (CMContinityCaptureDebugLogEnabled(v7, v8))
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = 138544130;
      v17 = WeakRetained;
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      _os_log_debug_impl(&dword_242545000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ StreamSession %{public}@ event %{public}@ options %{public}@", &v16, 0x2Au);
    }
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  if (v10)
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = v11;
    if (v11)
    {
      v13 = [v11 streamID];
      [v10 enqueueResponse:? identifier:?];
    }
  }
}

- (void)parseAndActOnStreamsSetupInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(location, self);
  dispatch_assert_queue_V2(self->_queue);
  v5 = [infoCopy objectForKeyedSubscript:?];
  if (v5)
  {
    v14 = v5;
    v15 = infoCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v26;
      do
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:{v14, v15}];
          v11 = [v9 objectForKeyedSubscript:?];
          [v11 BOOLValue];

          v12 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            currentSessionID = self->_currentSessionID;
            *buf = 138543874;
            selfCopy = self;
            v21 = 2048;
            v22 = currentSessionID;
            v23 = 2114;
            v24 = v10;
            _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Early setup for %{public}@", buf, 0x20u);
          }

          if (v10)
          {
            objc_copyWeak(&v18, location);
            v17 = v10;
            [CMContinuityCaptureRapportServer createStreamWithIdentifier:"createStreamWithIdentifier:isMediaStream:completion:" isMediaStream:? completion:?];

            objc_destroyWeak(&v18);
          }
        }

        v6 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    v5 = v14;
    infoCopy = v15;
  }

  objc_destroyWeak(location);
}

void __66__CMContinuityCaptureRapportServer_parseAndActOnStreamsSetupInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = v5[6];
      v9 = v5[8];
      v10 = *(a1 + 32);
      v11 = 138544386;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2112;
      v20 = a2;
      _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] create stream (display session %{public}@) for %{public}@ error %@", &v11, 0x34u);
    }
  }
}

- (void)parseAndNotifySessionStartInfo:(id)info transportInfo:(id)transportInfo
{
  infoCopy = info;
  transportInfoCopy = transportInfo;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (!infoCopy)
  {
    goto LABEL_18;
  }

  v8 = [infoCopy objectForKeyedSubscript:?];

  if (v8)
  {
    v9 = [infoCopy objectForKeyedSubscript:?];
    self->_currentSessionID = [v9 unsignedLongLongValue];

    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentSessionID = self->_currentSessionID;
      *buf = 138543618;
      selfCopy6 = self;
      v46 = 2048;
      v47 = currentSessionID;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] connected to host", buf, 0x16u);
    }
  }

  v12 = [infoCopy objectForKeyedSubscript:?];

  if (!v12)
  {
LABEL_18:
    if (transportInfoCopy)
    {
      v21 = [transportInfoCopy objectForKeyedSubscript:?];
      peerAddress = self->_peerAddress;
      self->_peerAddress = v21;

      v23 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_peerAddress;
        *buf = 138543619;
        selfCopy6 = self;
        v46 = 2113;
        v47 = v24;
        _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ peerAddress:%{private}@", buf, 0x16u);
      }

      v25 = [transportInfoCopy objectForKeyedSubscript:?];

      if (v25)
      {
        v26 = [transportInfoCopy objectForKeyedSubscript:?];
        unsignedIntegerValue = [v26 unsignedIntegerValue];

        v28 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy6 = self;
          v46 = 2048;
          v47 = unsignedIntegerValue;
          _os_log_impl(&dword_242545000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ dataLinkType:%lu", buf, 0x16u);
        }

        v29 = 1;
        if (unsignedIntegerValue - 7 < 3)
        {
          v29 = 2;
        }

        self->_currentTransport = v29;
        v30 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = self->_currentSessionID;
          currentTransport = self->_currentTransport;
          *buf = 138543874;
          selfCopy6 = self;
          v46 = 2048;
          v47 = v31;
          v48 = 1024;
          v49 = currentTransport;
          _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] connected over transport %d", buf, 0x1Cu);
        }
      }
    }

    if (infoCopy)
    {
      v33 = [infoCopy objectForKeyedSubscript:?];

      if (v33)
      {
        v34 = MEMORY[0x277CCAAC8];
        objc_opt_class();
        v35 = [infoCopy objectForKeyedSubscript:?];
        v43[1] = 0;
        v36 = [v34 unarchivedObjectOfClass:? fromData:? error:?];
        v37 = 0;

        if (v36)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (!WeakRetained)
          {

LABEL_39:
            goto LABEL_40;
          }

          v39 = WeakRetained;
          v40 = MEMORY[0x277D85DD0];
          objc_copyWeak(v43, &location);
          v41 = v37;
          v42 = v36;
          [v39 startStream:v40 option:3221225472 completion:__81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_35, &unk_278D5D770];

          objc_destroyWeak(v43);
        }

        else
        {
          v39 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [(CMContinuityCaptureRapportServer *)self parseAndNotifySessionStartInfo:v37 transportInfo:v39];
          }
        }
      }
    }

    v37 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v46 = 2112;
      v47 = transportInfoCopy;
      _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ TransportInfo %@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v13 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [infoCopy objectForKeyedSubscript:?];
    *buf = 138543618;
    selfCopy6 = self;
    v46 = 2114;
    v47 = v14;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ inActiveEntities on connection change %{public}@", buf, 0x16u);
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  if (v15)
  {
    v16 = v15;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = [infoCopy objectForKeyedSubscript:?];
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = *v51;
      do
      {
        v20 = 0;
        do
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v50 + 1) + 8 * v20) integerValue];
          [v16 stopStream:? option:? completion:?];
          v20 = (v20 + 1);
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v18);
    }

    goto LABEL_18;
  }

LABEL_40:
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_35(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 48));
        v7 = *(a1 + 40);
        *buf = 138543874;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        v16 = 2112;
        v17 = a2;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Pre-StartStream for configuration %@ error %@", buf, 0x20u);
      }
    }

    v8 = WeakRetained[11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_36;
    v9[3] = &unk_278D5C0A8;
    objc_copyWeak(&v11, (a1 + 48));
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained willChangeValueForKey:?];
    objc_storeStrong(v3 + 21, *(a1 + 32));
    [v3 didChangeValueForKey:?];
    WeakRetained = v3;
  }
}

- (void)relayTerminationComplete
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureRapportServer relayTerminationComplete]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke;
  v5[3] = &unk_278D5D798;
  v5[4] = self;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v4[1] = @"ContinuityCaptureRapportClientMessageTypeKey";
  v4[2] = &unk_2854ECA10;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  objc_copyWeak(v4, (a1 + 40));
  [v2 sendEventID:? event:? destinationID:? options:? completion:?];

  objc_destroyWeak(v4);
}

void __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = WeakRetained[8];
        v13 = 138543874;
        v14 = v7;
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = v3;
        v9 = "%{public}@ terminate display session %{public}@ send message error %{public}@";
        v10 = v5;
        v11 = 32;
LABEL_7:
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
      }
    }

    else if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v12 = WeakRetained[8];
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v12;
      v9 = "%{public}@ terminate display session %{public}@ send message success";
      v10 = v5;
      v11 = 22;
      goto LABEL_7;
    }
  }
}

- (void)setupRemoteDisplaySession:(id)session
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  objc_storeStrong(&self->_rpDisplaySession, session);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  sessionActivationStartTime = selfCopy->_sessionActivationStartTime;
  selfCopy->_sessionActivationStartTime = date;

  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionUUID = selfCopy->_sessionUUID;
  selfCopy->_sessionUUID = uUID;

  objc_sync_exit(selfCopy);
  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    device = selfCopy->_device;
    destinationDevice = [(RPRemoteDisplaySession *)self->_rpDisplaySession destinationDevice];
    *buf = 138544130;
    v22 = selfCopy;
    v23 = 2080;
    v24 = "[CMContinuityCaptureRapportServer setupRemoteDisplaySession:]";
    v25 = 2114;
    v26 = device;
    v27 = 2114;
    v28 = destinationDevice;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Device %{public}@ destinationDevice %{public}@ ", buf, 0x2Au);
  }

  v19[1] = MEMORY[0x277D85DD0];
  v19[2] = 3221225472;
  v19[3] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke;
  v19[4] = &unk_278D5C1E8;
  objc_copyWeak(&v20, &location);
  [sessionCopy setErrorHandler:?];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_41;
  v18 = &unk_278D5D7C0;
  objc_copyWeak(v19, &location);
  v14 = MEMORY[0x245D12020](&v15);
  [sessionCopy registerEventID:v15 options:v16 handler:{v17, v18}];

  objc_destroyWeak(v19);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = WeakRetained[8];
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ display session %{public}@ error %{public}@", &v8, 0x20u);
    }
  }
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (CMContinityCaptureDebugLogEnabled(v6, v7))
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *buf = 138543874;
      v53 = WeakRetained;
      v54 = 2114;
      v55 = v5;
      v56 = 2114;
      v57 = v6;
      _os_log_debug_impl(&dword_242545000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ DisplaySession event %{public}@ options %{public}@", buf, 0x20u);
    }
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = v9;
  if (v9)
  {
    v11 = [v9 queue];
    dispatch_assert_queue_V2(v11);

    v12 = [v5 objectForKeyedSubscript:?];
    if (v12 && (v13 = v12, [v5 objectForKeyedSubscript:?], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "integerValue"), v14, v13, !v15))
    {
      v46 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = objc_loadWeakRetained((a1 + 32));
        v48 = *(v10 + 8);
        *buf = 138543618;
        v53 = v47;
        v54 = 2114;
        v55 = v48;
        _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ display session %{public}@", buf, 0x16u);
      }

      [v10 parseAndNotifySessionStartInfo:? transportInfo:?];
      [v10 parseAndActOnStreamsSetupInfo:?];
      v49 = *(v10 + 8);
      v67[1] = @"ContinuityCaptureRapportClientMessageTypeKey";
      v67[2] = &unk_2854ECA28;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v66[1] = MEMORY[0x277D85DD0];
      v66[2] = 3221225472;
      v66[3] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_44;
      v66[4] = &unk_278D5C1E8;
      objc_copyWeak(v67, (a1 + 32));
      [v49 sendEventID:? event:? destinationID:? options:? completion:?];

      v65[1] = MEMORY[0x277D85DD0];
      v65[2] = 3221225472;
      v65[3] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_45;
      v65[4] = &unk_278D5CD58;
      objc_copyWeak(v66, (a1 + 32));
      [v10 createTimeSyncClockWithPeerAddress:? completion:?];
      objc_destroyWeak(v66);
      objc_destroyWeak(v67);
    }

    else
    {
      v16 = [v5 objectForKeyedSubscript:?];
      if (v16)
      {
        v17 = v16;
        v18 = v6;
        v19 = [v5 objectForKeyedSubscript:?];
        if ([v19 integerValue] == 2 && (objc_msgSend(v5, "objectForKeyedSubscript:"), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = v20;
          v22 = [v5 objectForKeyedSubscript:?];

          v6 = v18;
          if (v22)
          {
            v23 = [v5 objectForKeyedSubscript:?];
            v24 = [v5 objectForKeyedSubscript:?];
            [v24 BOOLValue];

            v60 = MEMORY[0x277D85DD0];
            v61 = 3221225472;
            v62 = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_47;
            v63 = &unk_278D5C660;
            objc_copyWeak(v65, (a1 + 32));
            v25 = v23;
            v64 = v25;
            [v10 createStreamWithIdentifier:? isMediaStream:? completion:?];

            objc_destroyWeak(v65);
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v26 = [v5 objectForKeyedSubscript:?];
      if (v26 && (v27 = v26, [v5 objectForKeyedSubscript:?], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "integerValue"), v28, v27, v29 == 4))
      {
        v30 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_loadWeakRetained((a1 + 32));
          v32 = *(v10 + 6);
          v33 = *(v10 + 8);
          *buf = 138543874;
          v53 = v31;
          v54 = 2048;
          v55 = v32;
          v56 = 2114;
          v57 = v33;
          _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx]  Terminate display session %{public}@", buf, 0x20u);
        }

        [*(v10 + 9) postEvent:? entity:? data:?];
      }

      else
      {
        v34 = [v5 objectForKeyedSubscript:?];
        if (v34)
        {
          v35 = v34;
          v36 = [v5 objectForKeyedSubscript:?];
          if ([v36 integerValue] == 3)
          {
            v37 = [v5 objectForKeyedSubscript:?];

            if (v37)
            {
              v38 = [v5 objectForKeyedSubscript:?];
              v39 = [*(v10 + 13) objectForKey:?];

              if (v39)
              {
                v40 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = objc_loadWeakRetained((a1 + 32));
                  v42 = *(v10 + 6);
                  v43 = *(v10 + 8);
                  *buf = 138544130;
                  v53 = v41;
                  v54 = 2048;
                  v55 = v42;
                  v56 = 2114;
                  v57 = v38;
                  v58 = 2114;
                  v59 = v43;
                  _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] stream %{public}@ (display session %{public}@) activate complete", buf, 0x2Au);
                }

                v44 = *(v10 + 10);
                v45 = [*(v10 + 13) objectForKeyedSubscript:?];
                [v44 addStream:?];

                [*(v10 + 13) removeObjectForKey:?];
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }

LABEL_31:
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = WeakRetained[8];
        v10 = 138543874;
        v11 = v7;
        v12 = 2114;
        v13 = v8;
        v14 = 2114;
        v15 = v3;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ display session %{public}@ send message error %{public}@", &v10, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v9 = WeakRetained[8];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ display session %{public}@ send message success", &v10, 0x16u);
      goto LABEL_7;
    }
  }
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_45(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained willChangeValueForKey:?];
    v7 = v6;
    objc_sync_enter(v7);
    objc_storeStrong(v7 + 12, a2);
    objc_sync_exit(v7);

    [v7 didChangeValueForKey:?];
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = v7[6];
      v11 = v7[12];
      v12 = 138543874;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] got timeSync clock %@", &v12, 0x20u);
    }
  }
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_47(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = v5[6];
      v9 = v5[8];
      v10 = *(a1 + 32);
      v11 = 138544386;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2112;
      v20 = a2;
      _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] create stream (display session %{public}@) for %{public}@ error %@", &v11, 0x34u);
    }
  }
}

- (NSUUID)sessionUUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sessionUUID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)cancel
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingActivateStreamsByIdentifier = self->_pendingActivateStreamsByIdentifier;
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = pendingActivateStreamsByIdentifier;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ _pendingActivateStreamsByIdentifier %{public}@", buf, 0x16u);
  }

  allValues = [(NSMutableDictionary *)self->_pendingActivateStreamsByIdentifier allValues];
  v6 = [allValues countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(8 * i) invalidate];
      }

      v7 = [allValues countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingActivateStreamsByIdentifier removeAllObjects];
  [(CMContinuityCaptureRapportServer *)self invalidateCurrentSession:?];
}

- (CMContinuityCaptureRapportServer)initWithRapportDisplaySession:(id)session queue:(id)queue voucher:(id)voucher incomingStreamRequestHandler:(id)handler
{
  sessionCopy = session;
  queueCopy = queue;
  voucherCopy = voucher;
  handlerCopy = handler;
  v14 = [CMContinuityCaptureRapportServer rapportDeviceForSession:?];
  if (v14 && (v30.receiver = self, v30.super_class = CMContinuityCaptureRapportServer, v15 = [(CMContinuityCaptureRapportTransportBase *)&v30 initWithRapportDevice:v14 queue:queueCopy taskDelegate:0], (self = v15) != 0))
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&self->_voucher, voucher);
    objc_storeStrong(&self->_device, v14);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    createdIdentifiers = self->_createdIdentifiers;
    self->_createdIdentifiers = v16;

    self->_clientDeviceModel = [v14 deviceModelType];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingActivateStreamsByIdentifier = self->_pendingActivateStreamsByIdentifier;
    self->_pendingActivateStreamsByIdentifier = v18;

    [(CMContinuityCaptureRapportTransportBase *)self setIncomingStreamRequestHandler:?];
    v20 = [CMContinuityCaptureRemoteCompositeDevice initWithTransportServer:"initWithTransportServer:videoPreviewLayer:" videoPreviewLayer:?];
    compositeDevice = self->_compositeDevice;
    self->_compositeDevice = v20;

    v22 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_compositeDevice;
      v26 = 138543618;
      selfCopy = self;
      v28 = 2114;
      v29 = v23;
      _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ composite device %{public}@", &v26, 0x16u);
    }

    [(CMContinuityCaptureRapportServer *)self setupRemoteDisplaySession:?];
    self = self;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)parseAndNotifySessionStartInfo:(os_log_t)log transportInfo:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%{public}@ error unarchivedObjectOfClass %@", &v3, 0x16u);
}

@end