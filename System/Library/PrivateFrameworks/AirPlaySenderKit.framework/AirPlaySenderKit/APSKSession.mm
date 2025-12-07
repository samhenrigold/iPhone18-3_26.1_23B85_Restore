@interface APSKSession
- (APSKSession)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (BOOL)active;
- (int)addAudioStream:(id)stream;
- (int)addVideoStream:(id)stream;
- (int)localSendAudioData:(id)data;
- (int)localSendAudioDataWithTimestamps:(id)timestamps forHostTime:(id *)time forSampleTime:(unint64_t)sampleTime forDiscontinuity:(BOOL)discontinuity;
- (int)localSendFrame:(__CVBuffer *)frame forTime:(int64_t)time;
- (int)localSetAuthString:(id)string;
- (int)localStartToDestination:(id)destination withOptions:(id)options;
- (int)remoteSendAudioData:(id)data;
- (int)remoteSendAudioDataWithTimestamps:(id)timestamps forHostTime:(id *)time forSampleTime:(unint64_t)sampleTime forDiscontinuity:(BOOL)discontinuity;
- (int)remoteSendFrame:(__CVBuffer *)frame forTime:(int64_t)time;
- (int)remoteSetAuthString:(id)string;
- (int)remoteStartToDestination:(id)destination withOptions:(id)options;
- (int)sendAudioData:(id)data;
- (int)sendAudioDataWithTimestamps:(id)timestamps forHostTime:(id *)time forSampleTime:(unint64_t)sampleTime forDiscontinuity:(BOOL)discontinuity;
- (int)sendFrame:(__CVBuffer *)frame forTime:(int64_t)time;
- (int)setAuthString:(id)string;
- (unsigned)usageModes;
- (void)dealloc;
- (void)handleAuthRequired:(int)required;
- (void)handleFailure:(int)failure;
- (void)handleStartCompletion:(int)completion;
- (void)handleUpdatedDisplayWidth:(int)width height:(int)height refreshRate:(int)rate;
- (void)handleVideoStreamErrorNotification:(int)notification;
- (void)localStop;
- (void)remoteStop;
- (void)startToDestination:(id)destination withOptions:(id)options;
- (void)stop;
@end

@implementation APSKSession

- (APSKSession)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = APSKSession;
  v8 = [(APSKSession *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_delegateQueue, queue);
    v9->_state = 0;
    v9->_remote = 1;
    v10 = dispatch_queue_create("com.apple.apsksession.stateq", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_delegate);
    if (WeakRetained)
    {
      delegateQueue = v9->_delegateQueue;

      if (!delegateQueue)
      {
        v16 = dispatch_queue_create("com.apple.apsksession.delegateq", 0);
        v17 = v9->_delegateQueue;
        v9->_delegateQueue = v16;
      }
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      [(APSKSession *)v9 initWithDelegate:v13 delegateQueue:v14];
    }
  }

  return v9;
}

- (void)dealloc
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    [(APSKSession *)self dealloc];
  }

  [(APSKSession *)self stop];
  v4.receiver = self;
  v4.super_class = APSKSession;
  [(APSKSession *)&v4 dealloc];
}

- (BOOL)active
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__APSKSession_active__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)addVideoStream:(id)stream
{
  streamCopy = stream;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__APSKSession_addVideoStream___block_invoke;
  block[3] = &unk_278C65A10;
  v9 = streamCopy;
  v10 = &v11;
  block[4] = self;
  v6 = streamCopy;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __30__APSKSession_addVideoStream___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    __30__APSKSession_addVideoStream___block_invoke_cold_1(a1);
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = (v2 + 32);
    if (v5)
    {
      __30__APSKSession_addVideoStream___block_invoke_cold_2(a1);
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = a1 + 40;
      objc_storeStrong(v4, v7);
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __30__APSKSession_addVideoStream___block_invoke_cold_3(v3, v6, v8);
      }
    }
  }
}

- (int)addAudioStream:(id)stream
{
  streamCopy = stream;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__APSKSession_addAudioStream___block_invoke;
  block[3] = &unk_278C65A10;
  v9 = streamCopy;
  v10 = &v11;
  block[4] = self;
  v6 = streamCopy;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __30__APSKSession_addAudioStream___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    __30__APSKSession_addAudioStream___block_invoke_cold_1(a1);
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = (v2 + 40);
    if (v5)
    {
      __30__APSKSession_addAudioStream___block_invoke_cold_2(a1);
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = a1 + 40;
      objc_storeStrong(v4, v7);
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __30__APSKSession_addAudioStream___block_invoke_cold_3(v3, v6, v8);
      }
    }
  }
}

- (int)setAuthString:(id)string
{
  stringCopy = string;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (gLogCategory_AirPlaySenderKit <= 30 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession setAuthString:]", 33554462, "[%{ptr}] session: setting auth string '%@'", self, stringCopy);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__APSKSession_setAuthString___block_invoke;
  block[3] = &unk_278C65A38;
  block[4] = self;
  v10 = stringCopy;
  v11 = &v12;
  v6 = stringCopy;
  dispatch_sync(queue, block);
  v7 = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __29__APSKSession_setAuthString___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  if (v3 == 1)
  {
    v6 = a1[5];
    if (*(v2 + 60) == 1)
    {
      v7 = [v2 remoteSetAuthString:v6];
    }

    else
    {
      v7 = [v2 localSetAuthString:v6];
    }

    *(*(a1[6] + 8) + 24) = v7;
  }

  else if (v3)
  {
    *(*(a1[6] + 8) + 24) = -6709;
  }

  else
  {
    v4 = a1[5];
    v5 = (v2 + 48);

    objc_storeStrong(v5, v4);
  }
}

- (void)startToDestination:(id)destination withOptions:(id)options
{
  destinationCopy = destination;
  optionsCopy = options;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__APSKSession_startToDestination_withOptions___block_invoke;
  block[3] = &unk_278C65A60;
  block[4] = self;
  v12 = optionsCopy;
  v13 = destinationCopy;
  v9 = destinationCopy;
  v10 = optionsCopy;
  dispatch_sync(queue, block);
}

void __46__APSKSession_startToDestination_withOptions___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit != -1)
      {
LABEL_4:
        LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession startToDestination:withOptions:]_block_invoke", 33554522, "[%{ptr}] session has already been started", v1);
        return;
      }

      if (_LogCategory_Initialize())
      {
        v1 = *v2;
        goto LABEL_4;
      }
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:@"_UseLocal"];
    *(*(a1 + 32) + 60) = [v4 BOOLValue] ^ 1;

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = (a1 + 48);
    v7 = v9;
    if (v5[60] == 1)
    {
      v10 = [v5 remoteStartToDestination:v7 withOptions:v6];
    }

    else
    {
      v10 = [v5 localStartToDestination:v7 withOptions:v6];
    }

    v11 = v10;
    *(*v2 + 56) = 1;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      __46__APSKSession_startToDestination_withOptions___block_invoke_cold_1(v2, v8);
      if (!v11)
      {
        return;
      }
    }

    else if (!v11)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((*v2 + 8));
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = *v2;
      v15 = *(*v2 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__APSKSession_startToDestination_withOptions___block_invoke_2;
      block[3] = &unk_278C659B8;
      block[4] = v14;
      v17 = v11;
      dispatch_async(v15, block);
    }
  }
}

void __46__APSKSession_startToDestination_withOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__APSKSession_stop__block_invoke;
  block[3] = &unk_278C65968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void *__19__APSKSession_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setFrameSender:0];
  [*(*(a1 + 32) + 40) setAudioSender:0];
  v2 = *(a1 + 32);
  if (v2[60] == 1)
  {
    result = [v2 remoteStop];
  }

  else
  {
    result = [v2 localStop];
  }

  v4 = *(a1 + 32);
  if (*(v4 + 56))
  {
    if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1 || (result = _LogCategory_Initialize(), v4 = *(a1 + 32), result))
      {
        result = LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession stop]_block_invoke", 33554482, "[%{ptr}] session stopped", v4);
        v4 = *(a1 + 32);
      }
    }

    *(v4 + 56) = 0;
  }

  return result;
}

- (int)sendFrame:(__CVBuffer *)frame forTime:(int64_t)time
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__APSKSession_sendFrame_forTime___block_invoke;
  v7[3] = &unk_278C65A88;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = frame;
  v7[7] = time;
  dispatch_sync(queue, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __33__APSKSession_sendFrame_forTime___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 32))
  {
    return __33__APSKSession_sendFrame_forTime___block_invoke_cold_2(a1);
  }

  if (*(v2 + 56) != 2)
  {
    return __33__APSKSession_sendFrame_forTime___block_invoke_cold_1(a1);
  }

  v3 = a1[6];
  v4 = a1[7];
  if (*(v2 + 60) == 1)
  {

    return [v2 remoteSendFrame:v3 forTime:v4];
  }

  else
  {

    return [v2 localSendFrame:v3 forTime:v4];
  }
}

- (int)sendAudioData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__APSKSession_sendAudioData___block_invoke;
  block[3] = &unk_278C65A10;
  v9 = dataCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dataCopy;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void *__29__APSKSession_sendAudioData___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 40))
  {
    return __29__APSKSession_sendAudioData___block_invoke_cold_2(a1);
  }

  if (*(v2 + 56) != 2)
  {
    return __29__APSKSession_sendAudioData___block_invoke_cold_1(a1);
  }

  v3 = a1[5];
  if (*(v2 + 60) == 1)
  {
    result = [v2 remoteSendAudioData:v3];
  }

  else
  {
    result = [v2 localSendAudioData:v3];
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (int)sendAudioDataWithTimestamps:(id)timestamps forHostTime:(id *)time forSampleTime:(unint64_t)sampleTime forDiscontinuity:(BOOL)discontinuity
{
  timestampsCopy = timestamps;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke;
  v14[3] = &unk_278C65AB0;
  v14[4] = self;
  v15 = timestampsCopy;
  v18 = *time;
  v16 = &v20;
  sampleTimeCopy = sampleTime;
  discontinuityCopy = discontinuity;
  v12 = timestampsCopy;
  dispatch_sync(queue, v14);
  LODWORD(sampleTime) = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return sampleTime;
}

void *__86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    return __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_cold_2(a1);
  }

  if (*(v2 + 56) != 2)
  {
    return __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 88);
  if (*(v2 + 60) == 1)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    result = [v2 remoteSendAudioDataWithTimestamps:v3 forHostTime:&v7 forSampleTime:v4 forDiscontinuity:v5];
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    result = [v2 localSendAudioDataWithTimestamps:v3 forHostTime:&v7 forSampleTime:v4 forDiscontinuity:v5];
  }

  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unsigned)usageModes
{
  videoStream = self->_videoStream;
  v3 = videoStream == 0;
  v4 = videoStream != 0;
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (self->_audioStream)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)handleAuthRequired:(int)required
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = required == 1;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleAuthRequired:]", 33554482, "[%{ptr}] session: calling auth delegate for auth type %d", self, v7);
    }

    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__APSKSession_handleAuthRequired___block_invoke;
    block[3] = &unk_278C65AD8;
    block[4] = self;
    block[5] = v7;
    dispatch_async(delegateQueue, block);
  }
}

void __34__APSKSession_handleAuthRequired___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionAuthRequired:*(a1 + 32) forAuthType:*(a1 + 40)];
}

- (void)handleStartCompletion:(int)completion
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__APSKSession_handleStartCompletion___block_invoke;
  v4[3] = &unk_278C659B8;
  v4[4] = self;
  completionCopy = completion;
  dispatch_sync(queue, v4);
}

void __37__APSKSession_handleStartCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 != 1)
  {
    if (gLogCategory_AirPlaySenderKit > 50)
    {
      return;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(a1 + 32);
      v3 = *(v2 + 56);
    }

    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleStartCompletion:]_block_invoke", 33554482, "[%{ptr}] session: got start completion status (%d) in unexpected state (%d), ignoring", v2, *(a1 + 40), v3);
    return;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    if (gLogCategory_AirPlaySenderKit > 100)
    {
      goto LABEL_15;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v5)
      {
LABEL_15:
        WeakRetained = objc_loadWeakRetained((v2 + 8));
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v8 = *(a1 + 32);
          v9 = *(v8 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __37__APSKSession_handleStartCompletion___block_invoke_2;
          block[3] = &unk_278C659B8;
          block[4] = v8;
          v13 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        return;
      }

      v4 = *(a1 + 40);
    }

    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleStartCompletion:]_block_invoke", 33554532, "[%{ptr}] session start failed, error: %#m", v2, v4);
    v2 = *(a1 + 32);
    goto LABEL_15;
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (v10 = _LogCategory_Initialize(), v2 = *(a1 + 32), v10))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleStartCompletion:]_block_invoke", 33554482, "[%{ptr}] session started", v2);
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 56) = 2;
  [*(*(a1 + 32) + 40) setAudioSender:?];
  v11 = *(*(a1 + 32) + 32);

  [v11 setFrameSender:?];
}

void __37__APSKSession_handleStartCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)handleFailure:(int)failure
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__APSKSession_handleFailure___block_invoke;
  v4[3] = &unk_278C659B8;
  v4[4] = self;
  failureCopy = failure;
  dispatch_sync(queue, v4);
}

void __29__APSKSession_handleFailure___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    if (gLogCategory_AirPlaySenderKit > 50)
    {
      return;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(a1 + 32);
      v3 = *(v2 + 56);
    }

    else
    {
      v3 = 0;
    }

    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleFailure:]_block_invoke", 33554482, "[%{ptr}] session: got failure notification (%d) in unexpected state (%d), ignoring", v2, *(a1 + 40), v3);
    return;
  }

  if (gLogCategory_AirPlaySenderKit <= 100)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleFailure:]_block_invoke", 33554532, "[%{ptr}] session failed, error: %#m", v2, *(a1 + 40));
      v2 = *(a1 + 32);
    }
  }

  WeakRetained = objc_loadWeakRetained((v2 + 8));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__APSKSession_handleFailure___block_invoke_2;
    block[3] = &unk_278C659B8;
    block[4] = v7;
    v10 = *(a1 + 40);
    dispatch_async(v8, block);
  }
}

void __29__APSKSession_handleFailure___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)handleUpdatedDisplayWidth:(int)width height:(int)height refreshRate:(int)rate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__APSKSession_handleUpdatedDisplayWidth_height_refreshRate___block_invoke;
  block[3] = &unk_278C659E0;
  block[4] = self;
  widthCopy = width;
  heightCopy = height;
  rateCopy = rate;
  dispatch_sync(queue, block);
}

- (void)handleVideoStreamErrorNotification:(int)notification
{
  v3 = *&notification;
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession handleVideoStreamErrorNotification:]", 33554522, "[%{ptr}] session got video stream failure notification, error: %#m", self, v3);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__APSKSession_handleVideoStreamErrorNotification___block_invoke;
  block[3] = &unk_278C659B8;
  block[4] = self;
  v7 = v3;
  dispatch_sync(queue, block);
}

- (int)localSetAuthString:(id)string
{
  stringCopy = string;
  sender = self->_sender;
  if (sender)
  {
    v6 = APMediaSenderSetAuthString(sender, stringCopy);
    v7 = v6;
    if (v6)
    {
      [APSKSession localSetAuthString:v6];
    }
  }

  else
  {
    [APSKSession localSetAuthString:];
    v7 = -6709;
  }

  return v7;
}

- (int)localStartToDestination:(id)destination withOptions:(id)options
{
  destinationCopy = destination;
  optionsCopy = options;
  usageModes = [(APSKSession *)self usageModes];
  v9 = [optionsCopy objectForKeyedSubscript:@"APSKSessionOptionsKeyTimeoutSeconds"];
  intValue = [v9 intValue];

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke;
  aBlock[3] = &unk_278C65B00;
  objc_copyWeak(&v41, location);
  v31 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_2;
  v38[3] = &unk_278C65B00;
  objc_copyWeak(&v39, location);
  v11 = _Block_copy(v38);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_3;
  v36[3] = &unk_278C65B00;
  objc_copyWeak(&v37, location);
  v12 = _Block_copy(v36);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_4;
  v34[3] = &unk_278C65B28;
  objc_copyWeak(&v35, location);
  v30 = _Block_copy(v34);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_5;
  v32[3] = &unk_278C65B50;
  objc_copyWeak(&v33, location);
  v13 = _Block_copy(v32);
  v15 = v13;
  if (!usageModes)
  {
    updated = 4294960591;
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (self->_sender)
  {
    updated = 4294960587;
    APSLogErrorAt();
    goto LABEL_27;
  }

  sender = APMediaSenderCreate(v13, v14);
  self->_sender = sender;
  if (!sender)
  {
    updated = 4294960534;
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (v17 = _LogCategory_Initialize(), sender = self->_sender, v17))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession localStartToDestination:withOptions:]", 33554482, "[%{ptr}] session: using media sender %{ptr}", self, sender);
      sender = self->_sender;
    }
  }

  passcode = self->_passcode;
  if (!passcode)
  {
    goto LABEL_11;
  }

  updated = APMediaSenderSetAuthString(sender, passcode);
  if (!updated)
  {
    sender = self->_sender;
LABEL_11:
    updated = APMediaSenderSetAuthBlock(sender, v31);
    if (!updated)
    {
      updated = APMediaSenderSetFailureBlock(self->_sender, v12);
      if (!updated)
      {
        audioStream = self->_audioStream;
        if (!audioStream || (updated = APMediaSenderSetAudioDescription(self->_sender, [(APSKStreamAudio *)audioStream asbd], [(APSKStreamAudio *)self->_audioStream useVideoLatency]), !updated))
        {
          if (!self->_videoStream)
          {
LABEL_21:
            APMediaSenderStart(self->_sender, [destinationCopy value], objc_msgSend(destinationCopy, "destinationType"), usageModes, intValue, v11);
            LODWORD(updated) = 0;
            goto LABEL_22;
          }

          updated = APMediaSenderSetDisplayInfoUpdateBlock(self->_sender, v30);
          if (!updated)
          {
            v21 = self->_sender;
            v22 = [optionsCopy objectForKeyedSubscript:@"_VideoOverrides"];
            updated = APMediaSenderSetVideoOverrides(v21, v22);

            if (!updated)
            {
              v23 = [optionsCopy objectForKeyedSubscript:@"_UseVideoPassthrough"];
              bOOLValue = [v23 BOOLValue];

              if (!bOOLValue || (updated = APMediaSenderSetVideoPassthroughMode(self->_sender), !updated))
              {
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v26 = [defaultCenter addObserverForName:0x285143258 object:self->_sender queue:0 usingBlock:v15];
                senderNotifObserver = self->_senderNotifObserver;
                self->_senderNotifObserver = v26;

                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  APSLogErrorAt();
LABEL_27:
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession localStartToDestination:withOptions:]", 33554522, "[%{ptr}] session local start failed, error: %#m", self, updated);
  }

  v29 = self->_sender;
  if (v29)
  {
    CFRelease(v29);
    self->_sender = 0;
  }

LABEL_22:

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);

  return updated;
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAuthRequired:a2];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStartCompletion:a2];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFailure:a2];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedDisplayWidth:a2 height:a3 refreshRate:a4];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:0x285143278];
  v6 = [v5 intValue];

  [WeakRetained handleVideoStreamErrorNotification:v6];
}

- (void)localStop
{
  if (self->_senderNotifObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_senderNotifObserver];

    senderNotifObserver = self->_senderNotifObserver;
    self->_senderNotifObserver = 0;
  }

  sender = self->_sender;
  if (sender)
  {
    APMediaSenderStop(sender, a2, v2);
    v7 = self->_sender;
    if (v7)
    {
      CFRelease(v7);
      self->_sender = 0;
    }
  }
}

- (int)localSendFrame:(__CVBuffer *)frame forTime:(int64_t)time
{
  sender = self->_sender;
  if (sender)
  {
    v5 = APMediaSenderSubmitPixelBuffer(sender, frame, time);
    v6 = v5;
    if (v5)
    {
      [APSKSession localSendFrame:v5 forTime:?];
    }
  }

  else
  {
    [APSKSession localSendFrame:forTime:];
    return -6709;
  }

  return v6;
}

- (int)localSendAudioData:(id)data
{
  dataCopy = data;
  sender = self->_sender;
  if (sender)
  {
    v6 = APMediaSenderEnqueueAudioData(sender, dataCopy);
    v7 = v6;
    if (v6)
    {
      [APSKSession localSendAudioData:v6];
    }
  }

  else
  {
    [APSKSession localSendAudioData:];
    v7 = -6709;
  }

  return v7;
}

- (int)localSendAudioDataWithTimestamps:(id)timestamps forHostTime:(id *)time forSampleTime:(unint64_t)sampleTime forDiscontinuity:(BOOL)discontinuity
{
  timestampsCopy = timestamps;
  sender = self->_sender;
  if (sender)
  {
    v15 = *&time->var0;
    var3 = time->var3;
    v12 = APMediaSenderEnqueueAudioDataWithTimestamps(sender, timestampsCopy, &v15, sampleTime, discontinuity);
    v13 = v12;
    if (v12)
    {
      [APSKSession localSendAudioDataWithTimestamps:v12 forHostTime:? forSampleTime:? forDiscontinuity:?];
    }
  }

  else
  {
    [APSKSession localSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
    v13 = -6709;
  }

  return v13;
}

- (int)remoteSetAuthString:(id)string
{
  stringCopy = string;
  if (self->_objectID && self->_client)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    if (v5)
    {
      [APSKSession remoteSetAuthString:v5];
    }

    else
    {
      if (stringCopy)
      {
        xpc_dictionary_set_string(v6, kAPSKServiceMsgParamC2S_AuthString, [stringCopy UTF8String]);
      }

      v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      LODWORD(v5) = v7;
      if (v7)
      {
        [APSKSession remoteSetAuthString:v7];
      }
    }
  }

  else
  {
    [APSKSession remoteSetAuthString:];
    v6 = 0;
    LODWORD(v5) = -6709;
  }

  FigXPCRelease();

  return v5;
}

- (int)remoteStartToDestination:(id)destination withOptions:(id)options
{
  destinationCopy = destination;
  optionsCopy = options;
  usageModes = [(APSKSession *)self usageModes];
  v9 = [optionsCopy objectForKeyedSubscript:@"APSKSessionOptionsKeyTimeoutSeconds"];
  intValue = [v9 intValue];

  if (!usageModes)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v15 = 0;
    v13 = 0;
    v12 = 4294960591;
    goto LABEL_48;
  }

  if (self->_objectID)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v15 = 0;
    v13 = 0;
    v12 = 4294960587;
    goto LABEL_48;
  }

  os_unfair_lock_lock(&sRemoteClientLock);
  if (!sRemoteClient)
  {
    v27 = FigXPCRemoteClientCreateWithXPCService();
    if (v27)
    {
      if (gLogCategory_AirPlaySenderKit <= 100)
      {
        v30 = v27;
        if (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize())
        {
          [APSKSession remoteStartToDestination:v30 withOptions:?];
        }
      }
    }

    else if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1 || (v27 = _LogCategory_Initialize(), v27))
      {
        [(APSKSession *)v27 remoteStartToDestination:v28 withOptions:v29];
      }
    }
  }

  os_unfair_lock_unlock(&sRemoteClientLock);
  v11 = sRemoteClient;
  self->_client = sRemoteClient;
  if (!v11)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v15 = 0;
    v13 = 0;
LABEL_42:
    v12 = 4294960534;
    goto LABEL_48;
  }

  v12 = FigXPCCreateBasicMessage();
  v13 = 0;
  if (v12)
  {
    [APSKSession remoteStartToDestination:v12 withOptions:?];
    v15 = 0;
    goto LABEL_48;
  }

  v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  v14 = 0;
  v15 = v14;
  if (v12)
  {
    [APSKSession remoteStartToDestination:v12 withOptions:?];
    goto LABEL_48;
  }

  uint64 = xpc_dictionary_get_uint64(v14, *MEMORY[0x277CC0990]);
  if (!uint64)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    goto LABEL_42;
  }

  v17 = uint64;
  v18 = FigXPCRemoteClientAssociateObject();
  if (v18)
  {
    v12 = v18;
    [APSKSession remoteStartToDestination:v18 withOptions:?];
  }

  else
  {
    self->_objectID = v17;
    FigXPCRelease();

    v12 = FigXPCCreateBasicMessage();
    v13 = 0;
    if (v12)
    {
      [APSKSession remoteStartToDestination:v12 withOptions:?];
    }

    else
    {
      [destinationCopy value];
      v19 = FigXPCMessageSetCFObject();
      if (v19)
      {
        v12 = v19;
        [APSKSession remoteStartToDestination:v19 withOptions:?];
      }

      else
      {
        xpc_dictionary_set_uint64(v13, kAPSKServiceMsgParamC2S_DestinationType, [destinationCopy destinationType]);
        xpc_dictionary_set_uint64(v13, kAPSKServiceMsgParamC2S_UsageModes, usageModes);
        xpc_dictionary_set_uint64(v13, kAPSKServiceMsgParamC2S_TimeoutSecs, intValue);
        passcode = self->_passcode;
        if (passcode)
        {
          xpc_dictionary_set_string(v13, kAPSKServiceMsgParamC2S_AuthString, [(NSString *)passcode UTF8String]);
        }

        audioStream = self->_audioStream;
        if (audioStream)
        {
          xpc_dictionary_set_data(v13, kAPSKServiceMsgParamC2S_ASBD, [(APSKStreamAudio *)audioStream asbd], 0x28uLL);
          xpc_dictionary_set_BOOL(v13, kAPSKServiceMsgParamC2S_UseVideoLatency, [(APSKStreamAudio *)self->_audioStream useVideoLatency]);
        }

        if (self->_videoStream)
        {
          v22 = [optionsCopy objectForKeyedSubscript:@"_VideoOverrides"];

          if (v22)
          {
            v23 = FigXPCMessageSetCFDictionary();
            if (v23)
            {
              v12 = v23;
              [APSKSession remoteStartToDestination:v23 withOptions:?];
              goto LABEL_48;
            }
          }

          v24 = [optionsCopy objectForKeyedSubscript:@"_UseVideoPassthrough"];
          bOOLValue = [v24 BOOLValue];

          if (bOOLValue)
          {
            xpc_dictionary_set_BOOL(v13, kAPSKServiceMsgParamC2S_VideoPassthru, 1);
          }
        }

        v26 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v26)
        {
          if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession remoteStartToDestination:withOptions:]", 33554482, "[%{ptr}] session: using object ID %{ptr}", self, self->_objectID);
          }

          LODWORD(v12) = 0;
          goto LABEL_31;
        }

        v12 = v26;
        [APSKSession remoteStartToDestination:v26 withOptions:?];
      }
    }
  }

LABEL_48:
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "[APSKSession remoteStartToDestination:withOptions:]", 33554522, "[%{ptr}] session remote start failed, error: %#m", self, v12);
  }

LABEL_31:
  FigXPCRelease();
  FigXPCRelease();

  return v12;
}

- (int)remoteSendFrame:(__CVBuffer *)frame forTime:(int64_t)time
{
  if (self->_objectID && self->_client)
  {
    v11[1] = 0;
    v6 = FigXPCCreateBasicMessage();
    v7 = 0;
    if (v6)
    {
      [APSKSession remoteSendFrame:v6 forTime:?];
      v8 = 0;
    }

    else
    {
      v11[0] = 0;
      v6 = APSKServiceSerializeFrame(frame, time, v11);
      v8 = v11[0];
      if (v6)
      {
        [APSKSession remoteSendFrame:v6 forTime:?];
      }

      else
      {
        xpc_dictionary_set_value(v7, kAPSKServiceMsgParamC2S_Frame, v8);
        v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        LODWORD(v6) = v9;
        if (v9)
        {
          [APSKSession remoteSendFrame:v9 forTime:?];
        }
      }
    }
  }

  else
  {
    [APSKSession remoteSendFrame:forTime:];
    v7 = 0;
    v8 = 0;
    LODWORD(v6) = -6709;
  }

  FigXPCRelease();
  FigXPCRelease();

  return v6;
}

- (int)remoteSendAudioData:(id)data
{
  dataCopy = data;
  if (self->_objectID && self->_client)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    if (v5)
    {
      [APSKSession remoteSendAudioData:v5];
    }

    else
    {
      if (dataCopy)
      {
        xpc_dictionary_set_data(v6, kAPSKServiceMsgParamC2S_AudioData, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
      }

      v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      LODWORD(v5) = v7;
      if (v7)
      {
        [APSKSession remoteSendAudioData:v7];
      }
    }
  }

  else
  {
    [APSKSession remoteSendAudioData:];
    v6 = 0;
    LODWORD(v5) = -6709;
  }

  FigXPCRelease();

  return v5;
}

- (int)remoteSendAudioDataWithTimestamps:(id)timestamps forHostTime:(id *)time forSampleTime:(unint64_t)sampleTime forDiscontinuity:(BOOL)discontinuity
{
  timestampsCopy = timestamps;
  if (self->_objectID && self->_client)
  {
    v10 = FigXPCCreateBasicMessage();
    v11 = 0;
    if (v10)
    {
      [APSKSession remoteSendAudioDataWithTimestamps:v10 forHostTime:? forSampleTime:? forDiscontinuity:?];
    }

    else
    {
      if (timestampsCopy)
      {
        xpc_dictionary_set_data(v11, kAPSKServiceMsgParamC2S_AudioData, [timestampsCopy bytes], objc_msgSend(timestampsCopy, "length"));
        v12 = FigXPCMessageSetCMTime();
        if (v12)
        {
          LODWORD(v10) = v12;
          [APSKSession remoteSendAudioDataWithTimestamps:v12 forHostTime:? forSampleTime:? forDiscontinuity:?];
          goto LABEL_9;
        }

        xpc_dictionary_set_uint64(v11, kAPSKServiceMsgParamC2S_AudioSampleTime, sampleTime);
        xpc_dictionary_set_BOOL(v11, kAPSKServiceMsgParamC2S_AudioDiscontinuity, discontinuity);
      }

      v13 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      LODWORD(v10) = v13;
      if (v13)
      {
        [APSKSession remoteSendAudioDataWithTimestamps:v13 forHostTime:? forSampleTime:? forDiscontinuity:?];
      }
    }
  }

  else
  {
    [APSKSession remoteSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
    v11 = 0;
    LODWORD(v10) = -6709;
  }

LABEL_9:
  FigXPCRelease();

  return v10;
}

- (void)remoteStop
{
  if (self->_objectID)
  {
    if (self->_client)
    {
      v3 = FigXPCCreateBasicMessage();
      v4 = 0;
      if (v3 || FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      v4 = 0;
    }

    if (self->_objectID && self->_client)
    {
      FigXPCRemoteClientDisassociateObject();
    }
  }

  else
  {
    v4 = 0;
  }

  self->_client = 0;
  self->_objectID = 0;
  FigXPCRelease();
}

@end