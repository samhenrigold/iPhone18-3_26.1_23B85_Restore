@interface LBAudioCapture
- (LBAudioCapture)initWithQueue:(id)queue;
- (id)_stopStreamOptionWithReason:(unint64_t)reason forRequestId:(id)id;
- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect;
- (void)_startRequestWithAudioContext:(id)context streamOption:(id)option streamProvider:(id)provider completion:(id)completion;
- (void)startAudioCaptureWithRecordContext:(id)context startHostTime:(unint64_t)time siriSessionUUID:(id)d completion:(id)completion;
- (void)stopAudioCaptureWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion;
@end

@implementation LBAudioCapture

- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__LBAudioCapture_CSXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__LBAudioCapture_CSXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[LBAudioCapture CSXPCClient:didDisconnect:]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s Received xpc disconnection", &v6, 0xCu);
  }

  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 disconnect];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }
}

- (id)_stopStreamOptionWithReason:(unint64_t)reason forRequestId:(id)id
{
  if (reason == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D01698];
  idCopy = id;
  v7 = [[v5 alloc] initWithTimeout:8 clientIdentity:0 requireRecordModeLock:1 requireListeningMicIndicatorLock:1.0];
  v8 = [objc_alloc(MEMORY[0x277D01680]) initWithStopRecordingReason:v4 expectedStopHostTime:0 trailingSilenceDurationAtEndpoint:v7 holdRequest:1 supportsMagus:idCopy requestId:0.0];

  return v8;
}

- (void)stopAudioCaptureWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v10 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[LBAudioCapture stopAudioCaptureWithReason:requestId:completion:]";
    _os_log_impl(&dword_256130000, v10, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke;
  v18[3] = &unk_279823940;
  v11 = completionCopy;
  v19 = v11;
  v12 = MEMORY[0x259C5B300](v18);
  audioStream = [(LBAudioCapture *)self audioStream];

  if (audioStream)
  {
    v14 = [(LBAudioCapture *)self _stopStreamOptionWithReason:reason forRequestId:idCopy];
    audioStream2 = [(LBAudioCapture *)self audioStream];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke_5;
    v16[3] = &unk_279823990;
    v16[4] = self;
    v17 = v12;
    [audioStream2 stopAudioStreamWithOption:v14 completion:v16];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:202 userInfo:0];
    (v12)[2](v12, 0, v14);
  }
}

void __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v10 = 136315650;
    v11 = "[LBAudioCapture stopAudioCaptureWithReason:requestId:completion:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling didStop with result : %d, error : %{public}@", &v10, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke_2;
  block[3] = &unk_279823968;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_startRequestWithAudioContext:(id)context streamOption:(id)option streamProvider:(id)provider completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionCopy = option;
  providerCopy = provider;
  completionCopy = completion;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__LBAudioCapture__startRequestWithAudioContext_streamOption_streamProvider_completion___block_invoke;
  v28[3] = &unk_279823940;
  v14 = completionCopy;
  v29 = v14;
  v15 = MEMORY[0x259C5B300](v28);
  if (providerCopy)
  {
    v24 = optionCopy;
    v16 = [MEMORY[0x277D016A0] defaultRequestWithContext:contextCopy];
    [v16 setClientIdentity:4];
    [v16 setRequestListeningMicIndicatorLock:1];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v27 = 0;
    v19 = [providerCopy audioStreamWithRequest:v16 streamName:v18 error:&v27];
    v20 = v27;

    if (v19)
    {
      [(LBAudioCapture *)self setAudioStream:v19];
      [v19 setDelegate:0];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __87__LBAudioCapture__startRequestWithAudioContext_streamOption_streamProvider_completion___block_invoke_4;
      v25[3] = &unk_279823940;
      v26 = v15;
      optionCopy = v24;
      [v19 startAudioStreamWithOption:v24 completion:v25];
    }

    else
    {
      v21 = LBLogContextFacilityLocalSRBridge;
      optionCopy = v24;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        localizedDescription = [v20 localizedDescription];
        *buf = 136315394;
        v31 = "[LBAudioCapture _startRequestWithAudioContext:streamOption:streamProvider:completion:]";
        v32 = 2114;
        v33 = localizedDescription;
        _os_log_error_impl(&dword_256130000, v22, OS_LOG_TYPE_ERROR, "%s AudioStreamRequest has failed : %{public}@", buf, 0x16u);

        optionCopy = v24;
      }

      (v15)[2](v15, 0, v20);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:202 userInfo:0];
    (v15)[2](v15, 0, v20);
  }
}

void __87__LBAudioCapture__startRequestWithAudioContext_streamOption_streamProvider_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v10 = 136315650;
    v11 = "[LBAudioCapture _startRequestWithAudioContext:streamOption:streamProvider:completion:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling didStart with result : %d, error : %{public}@", &v10, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

- (void)startAudioCaptureWithRecordContext:(id)context startHostTime:(unint64_t)time siriSessionUUID:(id)d completion:(id)completion
{
  v39[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v13 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [contextCopy description];
    *buf = 136315906;
    *&buf[4] = "[LBAudioCapture startAudioCaptureWithRecordContext:startHostTime:siriSessionUUID:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    timeCopy = time;
    LOWORD(v39[0]) = 2112;
    *(v39 + 2) = dCopy;
    _os_log_impl(&dword_256130000, v14, OS_LOG_TYPE_DEFAULT, "%s start audio capture with recordContext : %{public}@, hostTime : %llu siriSessionUUID:%@", buf, 0x2Au);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __94__LBAudioCapture_startAudioCaptureWithRecordContext_startHostTime_siriSessionUUID_completion___block_invoke;
  v31[3] = &unk_279823940;
  v16 = completionCopy;
  v32 = v16;
  v17 = MEMORY[0x259C5B300](v31);
  xpcClient = self->_xpcClient;
  if (!xpcClient)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v19 = getCSXPCClientClass_softClass;
    v36 = getCSXPCClientClass_softClass;
    if (!getCSXPCClientClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSXPCClientClass_block_invoke;
      timeCopy = &unk_279823A60;
      v39[0] = &v33;
      __getCSXPCClientClass_block_invoke(buf);
      v19 = v34[3];
    }

    v20 = v19;
    _Block_object_dispose(&v33, 8);
    v21 = [[v19 alloc] initWithType:1];
    v22 = self->_xpcClient;
    self->_xpcClient = v21;

    [(CSXPCClient *)self->_xpcClient setDelegate:self];
    [(CSXPCClient *)self->_xpcClient connect];
    xpcClient = self->_xpcClient;
  }

  v30 = 0;
  v23 = [(CSXPCClient *)xpcClient prepareAudioProviderWithContext:contextCopy clientType:4 error:&v30];
  v24 = v30;
  if (v23)
  {
    v25 = self->_xpcClient;
    if (v25)
    {
      noAlertOption = [MEMORY[0x277D01678] noAlertOption];
      [noAlertOption setRequestHistoricalAudioDataWithHostTime:1];
      [noAlertOption setStartRecordingHostTime:time];
      [noAlertOption setSiriSessionUUID:dCopy];
      [noAlertOption setDisableRCSelection:1];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [noAlertOption setRequestMHUUID:uUIDString];
      v29 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[LBAudioCapture startAudioCaptureWithRecordContext:startHostTime:siriSessionUUID:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = uUIDString;
        *&buf[22] = 2112;
        timeCopy = dCopy;
        _os_log_impl(&dword_256130000, v29, OS_LOG_TYPE_DEFAULT, "%s Minting MHId %@ for requestId %@", buf, 0x20u);
      }

      [(LBAudioCapture *)self _startRequestWithAudioContext:contextCopy streamOption:noAlertOption streamProvider:v25 completion:v17];
    }

    else
    {
      noAlertOption = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:202 userInfo:0];
      (v17)[2](v17, 0, noAlertOption);
    }
  }

  else
  {
    (v17)[2](v17, 0, v24);
  }
}

void __94__LBAudioCapture_startAudioCaptureWithRecordContext_startHostTime_siriSessionUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v10 = 136315650;
    v11 = "[LBAudioCapture startAudioCaptureWithRecordContext:startHostTime:siriSessionUUID:completion:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s audio capture start with result : %d, error : %{public}@", &v10, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

- (LBAudioCapture)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LBAudioCapture;
  v6 = [(LBAudioCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end