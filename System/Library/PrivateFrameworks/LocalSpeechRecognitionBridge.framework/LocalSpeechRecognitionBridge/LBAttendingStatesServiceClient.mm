@interface LBAttendingStatesServiceClient
- (LBAttendingStatesServiceClient)initWithDelegate:(id)delegate;
- (LBAttendingStatesServiceDelegate)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)_invalidate;
- (void)dealloc;
- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)id;
- (void)dismissAttending;
- (void)invalidate;
- (void)localAttendingStartedWithRootRequestId:(id)id;
- (void)localAttendingStopped;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)error;
- (void)localAttendingWillStartWithRootRequestId:(id)id;
- (void)requestDismissed;
- (void)siriDidPrompt;
- (void)siriDidPromptWithRootRequestId:(id)id;
- (void)siriPromptWillStart;
- (void)siriPromptWillStartWithRootRequestId:(id)id;
- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)s;
- (void)startUpdateStates;
@end

@implementation LBAttendingStatesServiceClient

- (void)startUpdateStates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__LBAttendingStatesServiceClient_startUpdateStates__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__LBAttendingStatesServiceClient_startUpdateStates__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[LBAttendingStatesServiceClient startUpdateStates]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 startUpdateStates];
}

- (id)_service
{
  _connection = [(LBAttendingStatesServiceClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
    self->_xpcConnectionUUIDString = uUIDString;

    v7 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_xpcConnectionUUIDString;
      *buf = 136315394;
      v27 = "[LBAttendingStatesServiceClient _connection]";
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s Creating new xpc connection %{public}@...", buf, 0x16u);
    }

    _newConnection = [(LBAttendingStatesServiceClient *)self _newConnection];
    v10 = self->_xpcConnection;
    self->_xpcConnection = _newConnection;

    objc_initWeak(buf, self);
    v11 = self->_xpcConnectionUUIDString;
    v12 = self->_xpcConnection;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__LBAttendingStatesServiceClient__connection__block_invoke;
    v23[3] = &unk_279823918;
    v13 = v11;
    v24 = v13;
    objc_copyWeak(&v25, buf);
    [(NSXPCConnection *)v12 setInterruptionHandler:v23];
    v14 = self->_xpcConnection;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __45__LBAttendingStatesServiceClient__connection__block_invoke_16;
    v20 = &unk_279823918;
    v15 = v13;
    v21 = v15;
    objc_copyWeak(&v22, buf);
    [(NSXPCConnection *)v14 setInvalidationHandler:&v17];
    [(NSXPCConnection *)self->_xpcConnection resume:v17];
    objc_destroyWeak(&v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.attendingstates.xpc" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286833858];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868336C8];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  [v3 _setQueue:self->_queue];
  return v3;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__LBAttendingStatesServiceClient_invalidate__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[LBAttendingStatesServiceClient _invalidate]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  remoteObjectProxy = self->_remoteObjectProxy;
  self->_remoteObjectProxy = 0;

  xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
  self->_xpcConnectionUUIDString = 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[LBAttendingStatesServiceClient dealloc]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(LBAttendingStatesServiceClient *)self _invalidate];
  v4.receiver = self;
  v4.super_class = LBAttendingStatesServiceClient;
  [(LBAttendingStatesServiceClient *)&v4 dealloc];
}

- (LBAttendingStatesServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__LBAttendingStatesServiceClient__connection__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained xpcConnectionUUIDString];
    v17 = 136315906;
    v18 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
    v19 = 2112;
    v20 = @"com.apple.siri.attendingstates.xpc";
    v21 = 2114;
    v22 = v3;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@(%{public}@) Interrupted (current connection: %{public}@", &v17, 0x2Au);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 xpcConnectionUUIDString];
    LOBYTE(v9) = [v9 isEqualToString:v10];

    if (v9)
    {
      [v8[3] setInvalidationHandler:0];
      [v8[3] invalidate];
      v11 = v8[3];
      v8[3] = 0;

      if (*(v8 + 8) == 1)
      {
        *(v8 + 8) = 0;
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:501 userInfo:0];
        v13 = objc_loadWeakRetained(v8 + 5);
        [v13 localAttendingStoppedUnexpectedlyWithError:v12];
LABEL_9:

        goto LABEL_10;
      }

      v16 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        _os_log_impl(&dword_256130000, v16, OS_LOG_TYPE_DEFAULT, "%s Skip reporting unexpected stop due to xpc interruption, since Siri is not in attending state", &v17, 0xCu);
      }
    }

    else
    {
      v14 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v12 = v14;
        v13 = [v8 xpcConnectionUUIDString];
        v17 = 136315650;
        v18 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        v19 = 2112;
        v20 = v15;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_256130000, v12, OS_LOG_TYPE_INFO, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v17, 0x20u);
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

void __45__LBAttendingStatesServiceClient__connection__block_invoke_16(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained xpcConnectionUUIDString];
    v17 = 136315906;
    v18 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
    v19 = 2112;
    v20 = @"com.apple.siri.attendingstates.xpc";
    v21 = 2112;
    v22 = v3;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@(%@) Invalidated (current connection: %{public}@", &v17, 0x2Au);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 xpcConnectionUUIDString];
    LOBYTE(v9) = [v9 isEqualToString:v10];

    if (v9)
    {
      v11 = *(v8 + 3);
      *(v8 + 3) = 0;

      if (*(v8 + 8) == 1)
      {
        *(v8 + 8) = 0;
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:501 userInfo:0];
        v13 = objc_loadWeakRetained(v8 + 5);
        [v13 localAttendingStoppedUnexpectedlyWithError:v12];
LABEL_9:

        goto LABEL_10;
      }

      v16 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        _os_log_impl(&dword_256130000, v16, OS_LOG_TYPE_DEFAULT, "%s Skip reporting unexpected stop due to xpc invalidation, since Siri is not in attending state", &v17, 0xCu);
      }
    }

    else
    {
      v14 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v12 = v14;
        v13 = [v8 xpcConnectionUUIDString];
        v17 = 136315650;
        v18 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        v19 = 2112;
        v20 = v15;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_256130000, v12, OS_LOG_TYPE_INFO, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v17, 0x20u);
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  v9 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[LBAttendingStatesServiceClient speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:audioRecordType:audioRecordDeviceId:]";
    v15 = 2048;
    timeCopy = time;
    v17 = 2048;
    typeCopy = type;
    v19 = 2114;
    v20 = idCopy;
    _os_log_impl(&dword_256130000, v9, OS_LOG_TYPE_DEFAULT, "%s hostTime : %llu, audioRecordType : %lld, deviceId : %{public}@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:time audioRecordType:type audioRecordDeviceId:idCopy];
  }
}

- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)s
{
  sCopy = s;
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[LBAttendingStatesServiceClient speechStartDetectedWithShouldDuckTTS:]";
    v11 = 1026;
    v12 = sCopy;
    _os_log_impl(&dword_256130000, v5, OS_LOG_TYPE_DEFAULT, "%s shouldDuckTTS: %{public}d", &v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 speechStartDetectedWithShouldDuckTTS:sCopy];
  }
}

- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  v9 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[LBAttendingStatesServiceClient speechStartDetectedWithHostTime:audioRecordType:audioRecordDeviceId:]";
    v15 = 2048;
    timeCopy = time;
    v17 = 2048;
    typeCopy = type;
    v19 = 2114;
    v20 = idCopy;
    _os_log_impl(&dword_256130000, v9, OS_LOG_TYPE_DEFAULT, "%s hostTime : %llu, audioRecordType : %lld, deviceId : %{public}@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 speechStartDetectedWithHostTime:time audioRecordType:type audioRecordDeviceId:idCopy];
  }
}

- (void)localAttendingStopped
{
  v6 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[LBAttendingStatesServiceClient localAttendingStopped]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  self->_isAttending = 0;
}

- (void)localAttendingStoppedUnexpectedlyWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  errorCopy = error;
  dispatch_assert_queue_V2(queue);
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[LBAttendingStatesServiceClient localAttendingStoppedUnexpectedlyWithError:]";
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localAttendingStoppedUnexpectedlyWithError:errorCopy];
}

- (void)localAttendingStartedWithRootRequestId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[LBAttendingStatesServiceClient localAttendingStartedWithRootRequestId:]";
    v11 = 2112;
    v12 = idCopy;
    _os_log_impl(&dword_256130000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  self->_isAttending = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 localAttendingStartedWithRootRequestId:idCopy];
  }
}

- (void)localAttendingWillStartWithRootRequestId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[LBAttendingStatesServiceClient localAttendingWillStartWithRootRequestId:]";
    v11 = 2112;
    v12 = idCopy;
    _os_log_impl(&dword_256130000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 localAttendingWillStartWithRootRequestId:idCopy];
  }
}

- (void)requestDismissed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__LBAttendingStatesServiceClient_requestDismissed__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__LBAttendingStatesServiceClient_requestDismissed__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[LBAttendingStatesServiceClient requestDismissed]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 requestDismissed];
}

- (void)dismissAttending
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__LBAttendingStatesServiceClient_dismissAttending__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__LBAttendingStatesServiceClient_dismissAttending__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[LBAttendingStatesServiceClient dismissAttending]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 dismissAttending];
}

- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__LBAttendingStatesServiceClient_directActionJarvisAnnounceMessageTriggerWithDeviceId___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __87__LBAttendingStatesServiceClient_directActionJarvisAnnounceMessageTriggerWithDeviceId___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[LBAttendingStatesServiceClient directActionJarvisAnnounceMessageTriggerWithDeviceId:]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 directActionJarvisAnnounceMessageTriggerWithDeviceId:*(a1 + 40)];
}

- (void)siriDidPromptWithRootRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__LBAttendingStatesServiceClient_siriDidPromptWithRootRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __65__LBAttendingStatesServiceClient_siriDidPromptWithRootRequestId___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[LBAttendingStatesServiceClient siriDidPromptWithRootRequestId:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) _service];
  [v4 siriDidPromptWithRootRequestId:*(a1 + 32)];
}

- (void)siriPromptWillStartWithRootRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__LBAttendingStatesServiceClient_siriPromptWillStartWithRootRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __71__LBAttendingStatesServiceClient_siriPromptWillStartWithRootRequestId___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[LBAttendingStatesServiceClient siriPromptWillStartWithRootRequestId:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) _service];
  [v4 siriPromptWillStartWithRootRequestId:*(a1 + 32)];
}

- (void)siriDidPrompt
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__LBAttendingStatesServiceClient_siriDidPrompt__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__LBAttendingStatesServiceClient_siriDidPrompt__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 siriDidPrompt];
}

- (void)siriPromptWillStart
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__LBAttendingStatesServiceClient_siriPromptWillStart__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__LBAttendingStatesServiceClient_siriPromptWillStart__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 siriPromptWillStart];
}

- (LBAttendingStatesServiceClient)initWithDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = LBAttendingStatesServiceClient;
  v5 = [(LBAttendingStatesServiceClient *)&v11 init];
  if (v5)
  {
    if (LBLogInitIfNeeded_once != -1)
    {
      dispatch_once(&LBLogInitIfNeeded_once, &__block_literal_global);
    }

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("LBAttendingStatesServiceClient Queue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  v9 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[LBAttendingStatesServiceClient initWithDelegate:]";
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&dword_256130000, v9, OS_LOG_TYPE_DEFAULT, "%s created %p", buf, 0x16u);
  }

  return v5;
}

@end