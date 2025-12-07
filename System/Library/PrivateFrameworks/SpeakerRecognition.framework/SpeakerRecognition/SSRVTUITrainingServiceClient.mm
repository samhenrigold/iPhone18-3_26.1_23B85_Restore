@interface SSRVTUITrainingServiceClient
- (SSRVTUITrainingServiceClient)initWithDelegate:(id)delegate;
- (SSRVTUITrainingServiceDelegate)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)CSVTUIRemoteTrainingSessionRMSAvailable:(float)available;
- (void)_handleXPCDisconnectedUnexpectedlyWithError:(id)error;
- (void)_resetupIfNeeded;
- (void)audioSourceWithCompletion:(id)completion;
- (void)cancelTrainingViaXPCForID:(int64_t)d;
- (void)cleanupViaXPCWithCompletion:(id)completion;
- (void)didDetectForceEndPoint;
- (void)getAudioSessionID:(id)d;
- (void)invalidate;
- (void)playSoundEffectWithAudioTone:(int)tone;
- (void)prepareWithCompletion:(id)completion;
- (void)reset;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setRecordingStartHostTime:(unint64_t)time;
- (void)setupWithLocaleID:(id)d appDomain:(id)domain siriSharedUserId:(id)id;
- (void)startRMS;
- (void)stopRMS;
- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r completion:(id)completion;
- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r mhUUID:(id)d completionWithResult:(id)result;
- (void)voiceProfileWithCompletion:(id)completion;
@end

@implementation SSRVTUITrainingServiceClient

- (SSRVTUITrainingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleXPCDisconnectedUnexpectedlyWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SSRVTUITrainingServiceClient _handleXPCDisconnectedUnexpectedlyWithError:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  prepareCompletion = self->_prepareCompletion;
  if (prepareCompletion)
  {
    prepareCompletion[2](prepareCompletion, 0);
    v7 = self->_prepareCompletion;
    self->_prepareCompletion = 0;
  }

  cleanupCompletion = self->_cleanupCompletion;
  if (cleanupCompletion)
  {
    cleanupCompletion[2]();
    v9 = self->_cleanupCompletion;
    self->_cleanupCompletion = 0;
  }

  trainCompletion = self->_trainCompletion;
  if (trainCompletion)
  {
    v18 = errorCopy;
    (*(trainCompletion + 2))(trainCompletion, 0, 5, 0, &v18);
    v11 = v18;

    v12 = self->_trainCompletion;
    self->_trainCompletion = 0;

    errorCopy = v11;
  }

  if (self->_trainCompletionWithResult)
  {
    v13 = [[CSVTUITrainingResult alloc] initWithSessionId:0 sessionStatus:5 audioStatus:2];
    trainCompletionWithResult = self->_trainCompletionWithResult;
    v17 = errorCopy;
    trainCompletionWithResult[2]();
    v15 = v17;

    v16 = self->_trainCompletionWithResult;
    self->_trainCompletionWithResult = 0;

    errorCopy = v15;
  }

  self->_requireResetup = 1;
}

- (id)_service
{
  _connection = [(SSRVTUITrainingServiceClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[SSRVTUITrainingServiceClient _connection]";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating new xpc connection...", buf, 0xCu);
    }

    _newConnection = [(SSRVTUITrainingServiceClient *)self _newConnection];
    v6 = self->_xpcConnection;
    self->_xpcConnection = _newConnection;

    objc_initWeak(buf, self);
    v7 = self->_xpcConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__SSRVTUITrainingServiceClient__connection__block_invoke;
    v15[3] = &unk_278578C88;
    objc_copyWeak(&v16, buf);
    [(NSXPCConnection *)v7 setInterruptionHandler:v15];
    v8 = self->_xpcConnection;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __43__SSRVTUITrainingServiceClient__connection__block_invoke_10;
    v13 = &unk_278578C88;
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)v8 setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_xpcConnection resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __43__SSRVTUITrainingServiceClient__connection__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVTUITrainingServiceClient _connection]_block_invoke";
    v9 = 2112;
    v10 = @"com.apple.siri.ssrvtuitrainingservice.xpc";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Interrupted", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] setInvalidationHandler:0];
    [v4[6] invalidate];
    v5 = v4[6];
    v4[6] = 0;

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1151 userInfo:0];
    [v4 _handleXPCDisconnectedUnexpectedlyWithError:v6];
  }
}

void __43__SSRVTUITrainingServiceClient__connection__block_invoke_10(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVTUITrainingServiceClient _connection]_block_invoke";
    v9 = 2112;
    v10 = @"com.apple.siri.ssrvtuitrainingservice.xpc";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Invalidated", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1152 userInfo:0];
    [v4 _handleXPCDisconnectedUnexpectedlyWithError:v6];
  }
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.ssrvtuitrainingservice.xpc" options:0];
  v4 = SSRVTUITrainingServiceGetXPCInterface();
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283937040];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  [v3 _setQueue:self->_queue];
  return v3;
}

- (void)CSVTUIRemoteTrainingSessionRMSAvailable:(float)available
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    *&v7 = available;
    [v8 CSVTUIRemoteTrainingSessionRMSAvailable:v7];
  }
}

- (void)setRecordingStartHostTime:(unint64_t)time
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SSRVTUITrainingServiceClient_setRecordingStartHostTime___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = time;
  dispatch_async(queue, v4);
}

void __58__SSRVTUITrainingServiceClient_setRecordingStartHostTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 setRecordingStartHostTime:*(a1 + 40)];
}

- (void)getAudioSessionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SSRVTUITrainingServiceClient_getAudioSessionID___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __50__SSRVTUITrainingServiceClient_getAudioSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 getAudioSessionID:*(a1 + 40)];
}

- (void)_resetupIfNeeded
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_requireResetup)
  {
    self->_requireResetup = 0;
    v3 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SSRVTUITrainingServiceClient _resetupIfNeeded]";
      _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Re-setup training service due to xpc rebuilt", &v5, 0xCu);
    }

    _service = [(SSRVTUITrainingServiceClient *)self _service];
    [_service setupWithLocaleID:self->_localeIdentifier appDomain:self->_appDomain siriSharedUserId:self->_siriSharedUserId];
  }
}

- (void)audioSourceWithCompletion:(id)completion
{
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 6;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SSRVTUITrainingServiceClient_audioSourceWithCompletion___block_invoke;
  block[3] = &unk_278579530;
  block[4] = self;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  dispatch_async_and_wait(queue, block);
  v8 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v7, v8);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13[3]);
  }

  _Block_object_dispose(&v12, 8);
}

void __58__SSRVTUITrainingServiceClient_audioSourceWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SSRVTUITrainingServiceClient_audioSourceWithCompletion___block_invoke_2;
  v5[3] = &unk_278577F40;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 audioSourceWithCompletion:v5];
}

- (void)voiceProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__995;
  v16 = __Block_byref_object_dispose__996;
  v17 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SSRVTUITrainingServiceClient_voiceProfileWithCompletion___block_invoke;
  block[3] = &unk_278579530;
  block[4] = self;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  dispatch_async(queue, block);
  v8 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v7, v8);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13[5]);
  }

  _Block_object_dispose(&v12, 8);
}

void __59__SSRVTUITrainingServiceClient_voiceProfileWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SSRVTUITrainingServiceClient_voiceProfileWithCompletion___block_invoke_2;
  v5[3] = &unk_278577F18;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 voiceProfileWithCompletion:v5];
}

void __59__SSRVTUITrainingServiceClient_voiceProfileWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)cancelTrainingViaXPCForID:(int64_t)d
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SSRVTUITrainingServiceClient_cancelTrainingViaXPCForID___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(queue, v4);
}

void __58__SSRVTUITrainingServiceClient_cancelTrainingViaXPCForID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 cancelTrainingViaXPCForID:*(a1 + 40)];
}

- (void)playSoundEffectWithAudioTone:(int)tone
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SSRVTUITrainingServiceClient_playSoundEffectWithAudioTone___block_invoke;
  v4[3] = &unk_278579190;
  v4[4] = self;
  toneCopy = tone;
  dispatch_async(queue, v4);
}

void __61__SSRVTUITrainingServiceClient_playSoundEffectWithAudioTone___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 playSoundEffectWithAudioTone:*(a1 + 40)];
}

- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r mhUUID:(id)d completionWithResult:(id)result
{
  dCopy = d;
  resultCopy = result;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_mhUUID_completionWithResult___block_invoke;
  block[3] = &unk_278578120;
  v17 = resultCopy;
  cCopy = c;
  rCopy = r;
  block[4] = self;
  v16 = dCopy;
  v13 = dCopy;
  v14 = resultCopy;
  dispatch_async(queue, block);
}

void __94__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_mhUUID_completionWithResult___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x22AA71400](*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  [*(a1 + 32) _resetupIfNeeded];
  v5 = [*(a1 + 32) _service];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_mhUUID_completionWithResult___block_invoke_2;
  v9[3] = &unk_278577EF0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  [v5 trainUtteranceViaXPC:v6 shouldUseASR:v7 mhUUID:v8 completionWithResult:v9];
}

void __94__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_mhUUID_completionWithResult___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = 0;
  }
}

- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_completion___block_invoke;
  v11[3] = &unk_2785780F8;
  v11[4] = self;
  v12 = completionCopy;
  cCopy = c;
  rCopy = r;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

void __77__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x22AA71400](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  [*(a1 + 32) _resetupIfNeeded];
  v5 = [*(a1 + 32) _service];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_completion___block_invoke_2;
  v8[3] = &unk_278577EC8;
  v8[4] = *(a1 + 32);
  [v5 trainUtteranceViaXPC:v6 shouldUseASR:v7 completion:v8];
}

void __77__SSRVTUITrainingServiceClient_trainUtteranceViaXPC_shouldUseASR_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

- (void)cleanupViaXPCWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SSRVTUITrainingServiceClient cleanupViaXPCWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Cleaning up training service client", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SSRVTUITrainingServiceClient_cleanupViaXPCWithCompletion___block_invoke;
  v8[3] = &unk_278579618;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

void __60__SSRVTUITrainingServiceClient_cleanupViaXPCWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x22AA71400](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  [*(a1 + 32) _resetupIfNeeded];
  v5 = [*(a1 + 32) _service];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SSRVTUITrainingServiceClient_cleanupViaXPCWithCompletion___block_invoke_2;
  v6[3] = &unk_2785797A8;
  v6[4] = *(a1 + 32);
  [v5 cleanupViaXPCWithCompletion:v6];
}

void __60__SSRVTUITrainingServiceClient_cleanupViaXPCWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;
  }
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SSRVTUITrainingServiceClient_prepareWithCompletion___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __54__SSRVTUITrainingServiceClient_prepareWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x22AA71400](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  [*(a1 + 32) _resetupIfNeeded];
  v5 = [*(a1 + 32) _service];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SSRVTUITrainingServiceClient_prepareWithCompletion___block_invoke_2;
  v6[3] = &unk_278577EA0;
  v6[4] = *(a1 + 32);
  [v5 prepareWithCompletion:v6];
}

void __54__SSRVTUITrainingServiceClient_prepareWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = 0;
  }
}

- (void)didDetectForceEndPoint
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SSRVTUITrainingServiceClient_didDetectForceEndPoint__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__SSRVTUITrainingServiceClient_didDetectForceEndPoint__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 didDetectForceEndPoint];
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SSRVTUITrainingServiceClient_setLocaleIdentifier___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __52__SSRVTUITrainingServiceClient_setLocaleIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 setLocaleIdentifier:*(a1 + 40)];
}

- (void)stopRMS
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SSRVTUITrainingServiceClient_stopRMS__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__SSRVTUITrainingServiceClient_stopRMS__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 stopRMS];
}

- (void)startRMS
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SSRVTUITrainingServiceClient_startRMS__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__SSRVTUITrainingServiceClient_startRMS__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 startRMS];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SSRVTUITrainingServiceClient_reset__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__SSRVTUITrainingServiceClient_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetupIfNeeded];
  v2 = [*(a1 + 32) _service];
  [v2 reset];
}

- (void)setupWithLocaleID:(id)d appDomain:(id)domain siriSharedUserId:(id)id
{
  dCopy = d;
  domainCopy = domain;
  idCopy = id;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__SSRVTUITrainingServiceClient_setupWithLocaleID_appDomain_siriSharedUserId___block_invoke;
  v15[3] = &unk_278577E78;
  v16 = dCopy;
  v17 = domainCopy;
  selfCopy = self;
  v19 = idCopy;
  v12 = idCopy;
  v13 = domainCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __77__SSRVTUITrainingServiceClient_setupWithLocaleID_appDomain_siriSharedUserId___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 136315650;
    v7 = "[SSRVTUITrainingServiceClient setupWithLocaleID:appDomain:siriSharedUserId:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s localeIdentifier : %{public}@, appDomain : %{public}@", &v6, 0x20u);
  }

  objc_storeStrong(a1[6] + 1, a1[4]);
  objc_storeStrong(a1[6] + 2, a1[5]);
  objc_storeStrong(a1[6] + 3, a1[7]);
  v5 = [a1[6] _service];
  [v5 setupWithLocaleID:a1[4] appDomain:a1[5] siriSharedUserId:a1[7]];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SSRVTUITrainingServiceClient_invalidate__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__SSRVTUITrainingServiceClient_invalidate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SSRVTUITrainingServiceClient invalidate]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  [*(*(a1 + 32) + 48) setInvalidationHandler:0];
  [*(*(a1 + 32) + 48) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;
}

- (SSRVTUITrainingServiceClient)initWithDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SSRVTUITrainingServiceClient;
  v5 = [(SSRVTUITrainingServiceClient *)&v10 init];
  if (v5)
  {
    SSRLogInitIfNeeded();
    v6 = dispatch_queue_create("com.apple.VoiceTriggerUI.TrainingService", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v5->_requireResetup = 0;
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[SSRVTUITrainingServiceClient initWithDelegate:]";
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  return v5;
}

@end