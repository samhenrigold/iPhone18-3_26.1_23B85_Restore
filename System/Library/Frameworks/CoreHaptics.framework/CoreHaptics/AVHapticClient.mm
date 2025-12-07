@interface AVHapticClient
- (AVHapticClient)initWithOptions:(id)options error:(id *)error;
- (BOOL)clearEventsFromTime:(double)time channel:(unint64_t)channel;
- (BOOL)clearSequenceEvents:(unint64_t)events atTime:(double)time;
- (BOOL)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply;
- (BOOL)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply;
- (BOOL)doScheduleParamCurve:(unint64_t)curve atTime:(double)time channel:(unint64_t)channel paramCurve:(id)paramCurve error:(id *)error;
- (BOOL)doScheduleParamCurveWithMemoryReserve:(unint64_t)reserve atTime:(double)time channel:(unint64_t)channel memoryReserve:(HapticSharedMemoryAddressReserve *)memoryReserve paramCurve:(id)curve error:(id *)error;
- (BOOL)doSendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel sorted:(BOOL)sorted outToken:(unint64_t *)token error:(id *)error;
- (BOOL)enableSequenceLooping:(unint64_t)looping enable:(BOOL)enable error:(id *)error;
- (BOOL)finish:(id)finish;
- (BOOL)loadAndPrepareHapticSequenceFromData:(id)data reply:(id)reply;
- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)events reply:(id)reply;
- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)pattern reply:(id)reply;
- (BOOL)loadHapticEvent:(id)event reply:(id)reply;
- (BOOL)pauseHapticSequence:(unint64_t)sequence atTime:(double)time;
- (BOOL)prepareHapticSequence:(unint64_t)sequence error:(id *)error;
- (BOOL)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (BOOL)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (BOOL)removeAssignedChannelID:(unint64_t)d error:(id *)error;
- (BOOL)requestAssignedChannels:(unint64_t)channels error:(id *)error;
- (BOOL)resetChannel:(unint64_t)channel atTime:(double)time;
- (BOOL)resetHapticSequence:(unint64_t)sequence atTime:(double)time;
- (BOOL)resumeHapticSequence:(unint64_t)sequence atTime:(double)time;
- (BOOL)scheduleParameterCurve:(unint64_t)curve curve:(id)a4 atTime:(double)time channel:(unint64_t)channel error:(id *)error;
- (BOOL)seekHapticSequence:(unint64_t)sequence toTime:(double)time;
- (BOOL)sendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel outToken:(unint64_t *)token error:(id *)error;
- (BOOL)sendUnduckAudioCommand:(unint64_t)command atTime:(double)time;
- (BOOL)setChannelEventBehavior:(unint64_t)behavior channel:(unint64_t)channel;
- (BOOL)setParameter:(unint64_t)parameter atTime:(double)time value:(float)value channel:(unint64_t)channel;
- (BOOL)setPlayerBehavior:(unint64_t)behavior error:(id *)error;
- (BOOL)setSequenceChannelParameter:(unint64_t)parameter atTime:(double)time value:(float)value sequenceID:(unint64_t)d channel:(unint64_t)channel;
- (BOOL)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channel:(unint64_t)channel;
- (BOOL)setSequenceLoopLength:(unint64_t)length length:(float)a4 error:(id *)error;
- (BOOL)setSequencePlaybackRate:(unint64_t)rate rate:(float)a4 error:(id *)error;
- (BOOL)setupConnectionWithOptions:(id)options error:(id *)error;
- (BOOL)startHapticSequence:(unint64_t)sequence atTime:(double)time withOffset:(double)offset;
- (BOOL)stopHapticSequence:(unint64_t)sequence atTime:(double)time;
- (double)hapticLatency;
- (id).cxx_construct;
- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (id)getSequenceFinishedHandlerForID:(unint64_t)d;
- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (int)state;
- (uint64_t)doInit;
- (unsigned)calculateHapticCommandParamCurveMemorySize:(unsigned int)size;
- (void)allocateResources:(id)resources;
- (void)callSequenceFinishedHandlersWithError:(id)error;
- (void)clearAssignedChannels;
- (void)clientCompletedWithError:(id)error;
- (void)clientDisconnectingForReason:(unint64_t)reason error:(id)error;
- (void)clientStoppedForReason:(unint64_t)reason error:(id)error;
- (void)dealloc;
- (void)destroySharedMemory;
- (void)detachHapticSequence:(unint64_t)sequence;
- (void)detachSequenceEntryforID:(unint64_t)d;
- (void)disconnect;
- (void)doInit;
- (void)handleServerConnectionInterruption;
- (void)handleServerConnectionInvalidation;
- (void)prewarm:(id)prewarm;
- (void)queryServerCapabilities:(id)capabilities reply:(id)reply;
- (void)releaseResources;
- (void)sequenceFinished:(unint64_t)finished error:(id)error;
- (void)setChannelKeys:(id)keys;
- (void)setRunStateForSequenceEntryWithID:(unint64_t)d running:(BOOL)running;
- (void)setSequenceFinishedHandlerForID:(unint64_t)d finishedHandler:(id)handler;
- (void)setState:(int)state;
- (void)startRunning:(id)running;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunning:(id)running;
@end

@implementation AVHapticClient

- (void)stopPrewarm
{
  v16 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 353;
    v12 = 2080;
    v13 = "[AVHapticClient stopPrewarm]";
    v14 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x stopping prewarm", &v8, 0x22u);
  }

LABEL_8:
  v7 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_53];
  [v7 stopPrewarm];
  *(self + 192) = 0;
}

- (id).cxx_construct
{
  *(self + 6) = 850045863;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 16) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 14) = self + 120;
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory((self + 152));
  return self;
}

- (void)doInit
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    if (kAVHCScope)
    {
      v2 = *kAVHCScope;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "AVHapticClient.mm";
      v6 = 1024;
      v7 = 1160;
      v8 = 2080;
      v9 = "operator()";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Initial XPC call to server timed out. Invalidating connection to prevent hang", &v4, 0x1Cu);
    }
  }

LABEL_9:
  [WeakRetained disconnect];
}

- (void)setState:(int)state
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(self + 36) != state)
  {
    if (kAVHSScope)
    {
      v5 = *kAVHSScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136316162;
      v9 = "AVHapticClient.mm";
      v11 = 107;
      v12 = 2080;
      v10 = 1024;
      v13 = "[AVHapticClient setState:]";
      v14 = 1024;
      clientID = [(AVHapticClient *)self clientID];
      v16 = 1024;
      stateCopy = state;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x EngineState -> %d", &v8, 0x28u);
    }
  }

LABEL_9:
  *(self + 36) = state;
}

- (int)state
{
  v18 = *MEMORY[0x277D85DE8];
  if (kAVHSScope)
  {
    if (*(kAVHSScope + 8))
    {
      v3 = *kAVHSScope;
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          clientID = [(AVHapticClient *)self clientID];
          v6 = *(self + 36);
          v8 = 136316162;
          v9 = "AVHapticClient.mm";
          v11 = 113;
          v12 = 2080;
          v10 = 1024;
          v13 = "[AVHapticClient state]";
          v14 = 1024;
          v15 = clientID;
          v16 = 1024;
          v17 = v6;
          _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: (Client 0x%x returning EngineState %d)", &v8, 0x28u);
        }
      }
    }
  }

  return *(self + 36);
}

- (AVHapticClient)initWithOptions:(id)options error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (setupClientLogScopes(void)::once != -1)
  {
    setupClientLogScopes();
  }

  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 140;
    v22 = 2080;
    v23 = "[AVHapticClient initWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initializing with options", buf, 0x1Cu);
  }

LABEL_10:
  v17.receiver = self;
  v17.super_class = AVHapticClient;
  v9 = [(AVHapticClient *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(AVHapticClient *)v9 doInit];
    if (![(AVHapticClient *)v10 setupConnectionWithOptions:optionsCopy error:error])
    {
      if (kAVHCScope)
      {
        v12 = *kAVHCScope;
        if (!v12)
        {
LABEL_27:
          [(AVHapticClient *)v10 disconnect];
          v14 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v12 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "AVHapticClient.mm";
        v20 = 1024;
        v21 = 145;
        v22 = 2080;
        v23 = "[AVHapticClient initWithOptions:error:]";
        _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Init calling disconnect on self", buf, 0x1Cu);
      }

      goto LABEL_27;
    }
  }

  if (!kAVHCScope)
  {
    v11 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  v11 = *kAVHCScope;
  if (v11)
  {
LABEL_19:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "AVHapticClient.mm";
      v20 = 1024;
      v21 = 150;
      v22 = 2080;
      v23 = "[AVHapticClient initWithOptions:error:]";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Init exited", buf, 0x1Cu);
    }
  }

  v14 = v10;
LABEL_28:

  return v14;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 156;
    v13 = 2080;
    v14 = "[AVHapticClient dealloc]";
    v15 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Deallocating HapticClient 0x%x", buf, 0x22u);
  }

LABEL_8:
  [(AVHapticClient *)self disconnect];
  [(AVHapticClient *)self destroySharedMemory];
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 159;
    v13 = 2080;
    v14 = "[AVHapticClient dealloc]";
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc of HapticClient exited", buf, 0x1Cu);
  }

LABEL_15:
  v8.receiver = self;
  v8.super_class = AVHapticClient;
  [(AVHapticClient *)&v8 dealloc];
}

- (void)queryServerCapabilities:(id)capabilities reply:(id)reply
{
  capabilitiesCopy = capabilities;
  replyCopy = reply;
  v8 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_38];
  [v8 queryCapabilities:capabilitiesCopy reply:replyCopy];
}

void __48__AVHapticClient_queryServerCapabilities_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v7 = 136315906;
    v8 = "AVHapticClient.mm";
    v9 = 1024;
    v10 = 167;
    v11 = 2080;
    v12 = "[AVHapticClient queryServerCapabilities:reply:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to get server capabilities: %@", &v7, 0x26u);
  }

LABEL_8:
}

- (double)hapticLatency
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__1;
  v10[4] = __Block_byref_object_dispose__1;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_40];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__AVHapticClient_hapticLatency__block_invoke_41;
  v5[3] = &unk_2781C9308;
  v5[4] = &v6;
  v5[5] = v10;
  [v2 getHapticLatency:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);

  return v3;
}

void __31__AVHapticClient_hapticLatency__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v7 = 136315906;
    v8 = "AVHapticClient.mm";
    v9 = 1024;
    v10 = 177;
    v11 = 2080;
    v12 = "[AVHapticClient hapticLatency]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to get latency: %@", &v7, 0x26u);
  }

LABEL_8:
}

void __31__AVHapticClient_hapticLatency__block_invoke_41(uint64_t a1, void *a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  *(*(*(a1 + 32) + 8) + 24) = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = 136315906;
      v11 = "AVHapticClient.mm";
      v12 = 1024;
      v13 = 182;
      v14 = 2080;
      v15 = "[AVHapticClient hapticLatency]_block_invoke";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v10, 0x26u);
    }
  }

LABEL_9:
}

- (void)allocateResources:(id)resources
{
  v28 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "AVHapticClient.mm";
    v22 = 1024;
    v23 = 189;
    v24 = 2080;
    v25 = "[AVHapticClient allocateResources:]";
    v26 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x allocating", buf, 0x22u);
  }

LABEL_8:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__AVHapticClient_allocateResources___block_invoke;
  v18[3] = &unk_2781C9330;
  v9 = resourcesCopy;
  v19 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v18];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__AVHapticClient_allocateResources___block_invoke_2;
  v14[3] = &unk_2781C9358;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v15 = v11;
  [v10 allocateClientResources:v14];
  if (kAVHCScope)
  {
    v12 = *kAVHCScope;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "AVHapticClient.mm";
    v22 = 1024;
    v23 = 217;
    v24 = 2080;
    v25 = "[AVHapticClient allocateResources:]";
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done allocating", buf, 0x1Cu);
  }

LABEL_15:
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __36__AVHapticClient_allocateResources___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if (kAVHCScope)
    {
      v9 = *kAVHCScope;
      if (!v9)
      {
LABEL_12:
        v14 = v8;
        goto LABEL_37;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    v12 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 localizedDescription];
      v24 = 136315906;
      v25 = "AVHapticClient.mm";
      v26 = 1024;
      v27 = 197;
      v28 = 2080;
      v29 = "[AVHapticClient allocateResources:]_block_invoke_2";
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to set up client: %@", &v24, 0x26u);
    }

    goto LABEL_12;
  }

  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315906;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 201;
    v28 = 2080;
    v29 = "[AVHapticClient allocateResources:]_block_invoke";
    v30 = 1024;
    LODWORD(v31) = v5;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Server returned shared buffer of size %u", &v24, 0x22u);
  }

LABEL_17:
  if (!v5)
  {
    __36__AVHapticClient_allocateResources___block_invoke_2_cold_1();
  }

  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315650;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 203;
    v28 = 2080;
    v29 = "[AVHapticClient allocateResources:]_block_invoke";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting up shared memory on client", &v24, 0x1Cu);
  }

LABEL_25:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    HapticCommandWriter = createHapticCommandWriter();
    WeakRetained[2] = HapticCommandWriter;
    if (!HapticCommandWriter)
    {
      if (kAVHCScope)
      {
        v20 = *kAVHCScope;
        if (!v20)
        {
LABEL_35:
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
          goto LABEL_36;
        }
      }

      else
      {
        v20 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315650;
        v25 = "AVHapticClient.mm";
        v26 = 1024;
        v27 = 208;
        v28 = 2080;
        v29 = "[AVHapticClient allocateResources:]_block_invoke";
        _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to access shared memory", &v24, 0x1Cu);
      }

      goto LABEL_35;
    }
  }

  v14 = 0;
LABEL_36:

LABEL_37:
  if (kAVHCScope)
  {
    v22 = *kAVHCScope;
    if (!v22)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315650;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 213;
    v28 = 2080;
    v29 = "[AVHapticClient allocateResources:]_block_invoke";
    _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Notifying caller via completion callback", &v24, 0x1Cu);
  }

LABEL_44:
  (*(*(a1 + 32) + 16))();
}

- (BOOL)loadHapticEvent:(id)event reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 222;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadHapticEvent:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 2048;
    *&buf[36] = eventCopy;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading dictionary: %p", buf, 0x2Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  *&buf[40] = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_46];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __40__AVHapticClient_loadHapticEvent_reply___block_invoke_2;
  v21[3] = &unk_2781C9380;
  v21[4] = buf;
  v21[5] = &v22;
  [v12 loadHapticEvent:eventCopy reply:v21];
  v13 = *(*&buf[8] + 40);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*&buf[8] + 40);
      *v26 = 136315906;
      v27 = "AVHapticClient.mm";
      v28 = 1024;
      v29 = 234;
      v30 = 2080;
      v31 = "[AVHapticClient loadHapticEvent:reply:]";
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v26, 0x26u);
    }
  }

  v15 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v23[3], v15);
  if (kAVHCScope)
  {
    v18 = *kAVHCScope;
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v26 = 136315650;
    v27 = "AVHapticClient.mm";
    v28 = 1024;
    v29 = 240;
    v30 = 2080;
    v31 = "[AVHapticClient loadHapticEvent:reply:]";
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading event", v26, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  return v13 == 0;
}

void __40__AVHapticClient_loadHapticEvent_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = "AVHapticClient.mm";
      v11 = 1024;
      v12 = 229;
      v13 = 2080;
      v14 = "[AVHapticClient loadHapticEvent:reply:]_block_invoke_2";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v9, 0x26u);
    }
  }

LABEL_9:
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  formatCopy = format;
  optionsCopy = options;
  replyCopy = reply;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v17 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_49];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__AVHapticClient_createCustomAudioEvent_format_frames_options_reply___block_invoke_2;
  v26[3] = &unk_2781C9380;
  v26[4] = &v31;
  v26[5] = &v27;
  [v17 createCustomAudioEvent:eventCopy format:formatCopy frames:frames options:optionsCopy reply:v26];
  v18 = v32[5];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v19 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v19 = *kAVHCScope;
  if (v19)
  {
LABEL_7:
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v32[5];
      *buf = 136315906;
      v38 = "AVHapticClient.mm";
      v39 = 1024;
      v40 = 257;
      v41 = 2080;
      v42 = "[AVHapticClient createCustomAudioEvent:format:frames:options:reply:]";
      v43 = 2112;
      v44 = v22;
      _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v20 = v32[5];
LABEL_11:
  replyCopy[2](replyCopy, v28[3], v20);
  if (kAVHCScope)
  {
    v23 = *kAVHCScope;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "AVHapticClient.mm";
    v39 = 1024;
    v40 = 263;
    v41 = 2080;
    v42 = "[AVHapticClient createCustomAudioEvent:format:frames:options:reply:]";
    _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done creating event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v18 == 0;
}

void __69__AVHapticClient_createCustomAudioEvent_format_frames_options_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = "AVHapticClient.mm";
      v11 = 1024;
      v12 = 252;
      v13 = 2080;
      v14 = "[AVHapticClient createCustomAudioEvent:format:frames:options:reply:]_block_invoke_2";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v9, 0x26u);
    }
  }

LABEL_9:
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_51];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__AVHapticClient_copyCustomAudioEvent_options_reply___block_invoke_2;
  v20[3] = &unk_2781C9380;
  v20[4] = &v25;
  v20[5] = &v21;
  [v11 copyCustomAudioEvent:event options:optionsCopy reply:v20];
  v12 = v26[5];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v13 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v13 = *kAVHCScope;
  if (v13)
  {
LABEL_7:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v26[5];
      *buf = 136315906;
      v32 = "AVHapticClient.mm";
      v33 = 1024;
      v34 = 280;
      v35 = 2080;
      v36 = "[AVHapticClient copyCustomAudioEvent:options:reply:]";
      v37 = 2112;
      v38 = v16;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v14 = v26[5];
LABEL_11:
  replyCopy[2](replyCopy, v22[3], v14);
  if (kAVHCScope)
  {
    v17 = *kAVHCScope;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v32 = "AVHapticClient.mm";
    v33 = 1024;
    v34 = 286;
    v35 = 2080;
    v36 = "[AVHapticClient copyCustomAudioEvent:options:reply:]";
    _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done copying event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v12 == 0;
}

void __53__AVHapticClient_copyCustomAudioEvent_options_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = "AVHapticClient.mm";
      v11 = 1024;
      v12 = 275;
      v13 = 2080;
      v14 = "[AVHapticClient copyCustomAudioEvent:options:reply:]_block_invoke_2";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v9, 0x26u);
    }
  }

LABEL_9:
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__AVHapticClient_referenceCustomAudioEvent_reply___block_invoke;
  v18[3] = &unk_2781C93A8;
  v18[4] = &v19;
  v8 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__AVHapticClient_referenceCustomAudioEvent_reply___block_invoke_2;
  v17[3] = &unk_2781C93A8;
  v17[4] = &v19;
  [v8 referenceCustomAudioEvent:event reply:v17];
  v9 = v20[5];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v10 = *kAVHCScope;
  if (v10)
  {
LABEL_7:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v20[5];
      *buf = 136315906;
      v26 = "AVHapticClient.mm";
      v27 = 1024;
      v28 = 302;
      v29 = 2080;
      v30 = "[AVHapticClient referenceCustomAudioEvent:reply:]";
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v11 = v20[5];
LABEL_11:
  replyCopy[2](replyCopy, v11);
  if (kAVHCScope)
  {
    v14 = *kAVHCScope;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 308;
    v29 = 2080;
    v30 = "[AVHapticClient referenceCustomAudioEvent:reply:]";
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done referencing event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v19, 8);

  return v9 == 0;
}

void __50__AVHapticClient_referenceCustomAudioEvent_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 298;
      v11 = 2080;
      v12 = "[AVHapticClient referenceCustomAudioEvent:reply:]_block_invoke_2";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v7, 0x26u);
    }
  }

LABEL_9:
}

- (BOOL)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__AVHapticClient_releaseCustomAudioEvent_reply___block_invoke;
  v18[3] = &unk_2781C93A8;
  v18[4] = &v19;
  v8 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__AVHapticClient_releaseCustomAudioEvent_reply___block_invoke_2;
  v17[3] = &unk_2781C93A8;
  v17[4] = &v19;
  [v8 releaseCustomAudioEvent:event reply:v17];
  v9 = v20[5];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v10 = *kAVHCScope;
  if (v10)
  {
LABEL_7:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v20[5];
      *buf = 136315906;
      v26 = "AVHapticClient.mm";
      v27 = 1024;
      v28 = 324;
      v29 = 2080;
      v30 = "[AVHapticClient releaseCustomAudioEvent:reply:]";
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v11 = v20[5];
LABEL_11:
  replyCopy[2](replyCopy, v11);
  if (kAVHCScope)
  {
    v14 = *kAVHCScope;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 330;
    v29 = 2080;
    v30 = "[AVHapticClient releaseCustomAudioEvent:reply:]";
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done releasing event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v19, 8);

  return v9 == 0;
}

void __48__AVHapticClient_releaseCustomAudioEvent_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 320;
      v11 = 2080;
      v12 = "[AVHapticClient releaseCustomAudioEvent:reply:]_block_invoke_2";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v7, 0x26u);
    }
  }

LABEL_9:
}

- (void)prewarm:(id)prewarm
{
  v25 = *MEMORY[0x277D85DE8];
  prewarmCopy = prewarm;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "AVHapticClient.mm";
    v19 = 1024;
    v20 = 336;
    v21 = 2080;
    v22 = "[AVHapticClient prewarm:]";
    v23 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x starting prewarm", buf, 0x22u);
  }

LABEL_8:
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __26__AVHapticClient_prewarm___block_invoke;
  v15[3] = &unk_2781C9330;
  v9 = prewarmCopy;
  v16 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v15];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__AVHapticClient_prewarm___block_invoke_2;
  v12[3] = &unk_2781C9058;
  objc_copyWeak(&v14, buf);
  v11 = v9;
  v13 = v11;
  [v10 prewarm:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __26__AVHapticClient_prewarm___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 192) = v3 == 0;
  }

  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 346;
    v12 = 2080;
    v13 = "[AVHapticClient prewarm:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Server called client-side prewarm completionCallback", &v8, 0x1Cu);
  }

LABEL_10:
  (*(*(a1 + 32) + 16))();
}

void __29__AVHapticClient_stopPrewarm__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v7 = 136315906;
    v8 = "AVHapticClient.mm";
    v9 = 1024;
    v10 = 355;
    v11 = 2080;
    v12 = "[AVHapticClient stopPrewarm]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to stop prewarm: %@", &v7, 0x26u);
  }

LABEL_8:
}

- (void)startRunning:(id)running
{
  v30 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v23 = "AVHapticClient.mm";
    v24 = 1024;
    v25 = 363;
    v26 = 2080;
    v27 = "[AVHapticClient startRunning:]";
    v28 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x starting", buf, 0x22u);
  }

LABEL_8:
  [(AVHapticClient *)self setState:1];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__AVHapticClient_startRunning___block_invoke;
  v18[3] = &unk_2781C9058;
  objc_copyWeak(&v20, &location);
  v9 = runningCopy;
  v19 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__AVHapticClient_startRunning___block_invoke_2;
  v15[3] = &unk_2781C9058;
  objc_copyWeak(&v17, &location);
  v11 = v9;
  v16 = v11;
  [v10 startRunning:v15];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v12 = *kAVHCScope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)self clientID];
          *buf = 136315906;
          v23 = "AVHapticClient.mm";
          v24 = 1024;
          v25 = 380;
          v26 = 2080;
          v27 = "[AVHapticClient startRunning:]";
          v28 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x done with startRunning:", buf, 0x22u);
        }
      }
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __31__AVHapticClient_startRunning___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __31__AVHapticClient_startRunning___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setState:2 * (v4 == 0)];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopRunning
{
  v17 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 387;
    v13 = 2080;
    v14 = "[AVHapticClient stopRunning]";
    v15 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x stopping", &v9, 0x22u);
  }

LABEL_8:
  [(AVHapticClient *)self setState:0];
  v7 = *(self + 27);
  *(self + 27) = 0;

  v8 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_55];
  [v8 stopRunning];
}

void __29__AVHapticClient_stopRunning__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v7 = 136315906;
    v8 = "AVHapticClient.mm";
    v9 = 1024;
    v10 = 391;
    v11 = 2080;
    v12 = "[AVHapticClient stopRunning]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to stop running: %@", &v7, 0x26u);
  }

LABEL_8:
}

- (void)stopRunning:(id)running
{
  v30 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v23 = "AVHapticClient.mm";
    v24 = 1024;
    v25 = 398;
    v26 = 2080;
    v27 = "[AVHapticClient stopRunning:]";
    v28 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x stopping", buf, 0x22u);
  }

LABEL_8:
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__AVHapticClient_stopRunning___block_invoke;
  v18[3] = &unk_2781C9058;
  objc_copyWeak(&v20, &location);
  v9 = runningCopy;
  v19 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v18];
  [(AVHapticClient *)self setState:3];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__AVHapticClient_stopRunning___block_invoke_2;
  v15[3] = &unk_2781C9058;
  objc_copyWeak(&v17, &location);
  v11 = v9;
  v16 = v11;
  [v10 stopRunning:v15];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v12 = *kAVHCScope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)self clientID];
          *buf = 136315906;
          v23 = "AVHapticClient.mm";
          v24 = 1024;
          v25 = 415;
          v26 = 2080;
          v27 = "[AVHapticClient stopRunning:]";
          v28 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x done with stopRunning:", buf, 0x22u);
        }
      }
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __30__AVHapticClient_stopRunning___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __30__AVHapticClient_stopRunning___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:0];
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)finish:(id)finish
{
  v45 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  clientID = [(AVHapticClient *)self clientID];
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *v39 = "AVHapticClient.mm";
    *&v39[8] = 1024;
    *&v39[10] = 421;
    *&v39[14] = 2080;
    *&v39[16] = "[AVHapticClient finish:]";
    *&v39[24] = 1024;
    *&v39[26] = clientID;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x finishing", buf, 0x22u);
  }

LABEL_8:
  if (![(AVHapticClient *)self running])
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4805 userInfo:0];
    if (kAVHCScope)
    {
      v17 = *kAVHCScope;
      if (!v17)
      {
LABEL_27:
        v21 = *(self + 17);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __25__AVHapticClient_finish___block_invoke_57;
        v28[3] = &unk_2781C93D0;
        v31 = finishCopy;
        v15 = v16;
        v29 = v15;
        selfCopy = self;
        dispatch_sync(v21, v28);

        v22 = &v31;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *v39 = "AVHapticClient.mm";
      *&v39[8] = 1024;
      *&v39[10] = 447;
      *&v39[14] = 2080;
      *&v39[16] = "[AVHapticClient finish:]";
      *&v39[24] = 2112;
      *&v39[26] = v16;
      *&v39[34] = 1024;
      LODWORD(v40) = clientID;
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player was not running - bailing with error %@ for client 0x%x", buf, 0x2Cu);
    }

    goto LABEL_27;
  }

  v8 = *(self + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__AVHapticClient_finish___block_invoke;
  block[3] = &unk_2781C9030;
  v9 = finishCopy;
  block[4] = self;
  v37 = v9;
  dispatch_sync(v8, block);
  v10 = mach_absolute_time();
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          *v39 = "AVHapticClient.mm";
          *&v39[8] = 1024;
          *&v39[10] = 431;
          *&v39[14] = 2080;
          *&v39[16] = "[AVHapticClient finish:]";
          *&v39[24] = 2048;
          *&v39[26] = v10 * 0.0000000416666667;
          *&v39[34] = 2048;
          *&v40 = v10;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing FinalEvent with time %f [host time was %llu]", buf, 0x30u);
        }
      }
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  *&v39[20] = 0u;
  *buf = 327792;
  *&v39[4] = v10 * 0.0000000416666667;
  *&v39[12] = -1;
  v14 = writeCommand();
  objc_sync_exit(selfCopy2);

  if ((v14 & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
    if (kAVHCScope)
    {
      v19 = *kAVHCScope;
      if (!v19)
      {
LABEL_32:
        v24 = *(self + 17);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __25__AVHapticClient_finish___block_invoke_56;
        v32[3] = &unk_2781C93D0;
        v35 = v9;
        v15 = v18;
        v33 = v15;
        v34 = selfCopy2;
        dispatch_sync(v24, v32);

        goto LABEL_33;
      }
    }

    else
    {
      v19 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *v39 = "AVHapticClient.mm";
      *&v39[8] = 1024;
      *&v39[10] = 438;
      *&v39[14] = 2080;
      *&v39[16] = "[AVHapticClient finish:]";
      *&v39[24] = 2112;
      *&v39[26] = v18;
      *&v39[34] = 1024;
      LODWORD(v40) = clientID;
      _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Attempt to write FinalEvent failed - bailing by calling completionCallback with error %@ for client 0x%x", buf, 0x2Cu);
    }

    goto LABEL_32;
  }

  v15 = 0;
LABEL_33:
  v22 = &v37;
LABEL_34:

  if (kAVHCScope)
  {
    v25 = *kAVHCScope;
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *v39 = "AVHapticClient.mm";
    *&v39[8] = 1024;
    *&v39[10] = 453;
    *&v39[14] = 2080;
    *&v39[16] = "[AVHapticClient finish:]";
    *&v39[24] = 1024;
    *&v39[26] = clientID;
    _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x done with finish", buf, 0x22u);
  }

LABEL_41:
  return v15 == 0;
}

uint64_t __25__AVHapticClient_finish___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v2 = *kAVHCScope;
    if (!v2)
    {
      return [*(a1 + 32) setCompletionCallback:*(a1 + 40)];
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x21606F540](*(a1 + 40));
    v7 = 136315906;
    v8 = "AVHapticClient.mm";
    v9 = 1024;
    v10 = 426;
    v11 = 2080;
    v12 = "[AVHapticClient finish:]_block_invoke";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: completionCallback set to %p", &v7, 0x26u);
  }

  return [*(a1 + 32) setCompletionCallback:*(a1 + 40)];
}

uint64_t __25__AVHapticClient_finish___block_invoke_56(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 setCompletionCallback:0];
}

uint64_t __25__AVHapticClient_finish___block_invoke_57(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 setCompletionCallback:0];
}

- (BOOL)setChannelEventBehavior:(unint64_t)behavior channel:(unint64_t)channel
{
  v31 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[14] = 465;
    *&buf[18] = 2080;
    *&buf[12] = 1024;
    *&buf[20] = "[AVHapticClient setChannelEventBehavior:channel:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 1024;
    *&buf[36] = behavior;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x, behavior %u", buf, 0x28u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v30 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__AVHapticClient_setChannelEventBehavior_channel___block_invoke;
  v20[3] = &unk_2781C93A8;
  v20[4] = buf;
  v11 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__AVHapticClient_setChannelEventBehavior_channel___block_invoke_2;
  v19[3] = &unk_2781C93A8;
  v19[4] = buf;
  [v11 setChannelEventBehavior:channel behavior:behavior reply:v19];
  v12 = *(*&buf[8] + 40);
  if (!v12)
  {
    goto LABEL_16;
  }

  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*&buf[8] + 40);
    *v21 = 136315906;
    v22 = "AVHapticClient.mm";
    v23 = 1024;
    v24 = 476;
    v25 = 2080;
    v26 = "[AVHapticClient setChannelEventBehavior:channel:]";
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v21, 0x26u);
  }

LABEL_16:
  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315650;
    v22 = "AVHapticClient.mm";
    v23 = 1024;
    v24 = 481;
    v25 = 2080;
    v26 = "[AVHapticClient setChannelEventBehavior:channel:]";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done setting behavior", v21, 0x1Cu);
  }

LABEL_23:
  _Block_object_dispose(buf, 8);

  return v12 == 0;
}

void __50__AVHapticClient_setChannelEventBehavior_channel___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 472;
      v11 = 2080;
      v12 = "[AVHapticClient setChannelEventBehavior:channel:]_block_invoke_2";
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %p", &v7, 0x26u);
    }
  }

LABEL_9:
}

- (BOOL)resetChannel:(unint64_t)channel atTime:(double)time
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *&v12[0] = "AVHapticClient.mm";
          WORD4(v12[0]) = 1024;
          *(v12 + 10) = 490;
          HIWORD(v12[0]) = 2080;
          *&v12[1] = "[AVHapticClient resetChannel:atTime:]";
          WORD4(v12[1]) = 1024;
          *(&v12[1] + 10) = [(AVHapticClient *)selfCopy clientID];
          HIWORD(v12[1]) = 2048;
          *&v12[2] = time;
          WORD4(v12[2]) = 1024;
          *(&v12[2] + 10) = channel;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing reset event: time: %.3f channelID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(&v12[1] + 4, 0, 84);
  v11 = 786544;
  *(v12 + 4) = time;
  *(v12 + 12) = channel;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)doSendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel sorted:(BOOL)sorted outToken:(unint64_t *)token error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  parametersCopy = parameters;
  v86 = eventsCopy;
  v82 = [eventsCopy count];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v13 = *kAVHCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *v93 = "AVHapticClient.mm";
          *&v93[8] = 1024;
          *&v93[10] = 562;
          *&v93[14] = 2080;
          *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          *&v93[24] = 1024;
          *&v93[26] = [(AVHapticClient *)self clientID];
          *&v93[30] = 1024;
          *&v93[32] = v82;
          *&v93[36] = 2048;
          *&v93[38] = time;
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing %u events from passed-in event array at time: %.3f", buf, 0x32u);
        }
      }
    }
  }

  v91 = 0;
  if (v82)
  {
    v15 = 0;
    v16 = 336;
    do
    {
      v17 = [eventsCopy objectAtIndexedSubscript:v15];
      eventCategory = [v17 eventCategory];
      if (eventCategory)
      {
        if (eventCategory == 1)
        {
          v22 = 168;
        }

        else
        {
          if (eventCategory != 2)
          {
            if (kAVHCScope)
            {
              v64 = *kAVHCScope;
              if (!v64)
              {
LABEL_110:
                if (error)
                {
                  *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4821 userInfo:0];
                }

                goto LABEL_154;
              }
            }

            else
            {
              v64 = MEMORY[0x277D86220];
              v70 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *v93 = "AVHapticClient.mm";
              *&v93[8] = 1024;
              *&v93[10] = 588;
              *&v93[14] = 2080;
              *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
              _os_log_impl(&dword_21569A000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event is none of haptic/audio event, parameter, or parameter curve. returning", buf, 0x1Cu);
            }

            goto LABEL_110;
          }

          parameterCurve = [v17 parameterCurve];
          controlPoints = [parameterCurve controlPoints];
          v21 = [controlPoints count];

          v22 = [(AVHapticClient *)self calculateHapticCommandParamCurveMemorySize:v21];
        }
      }

      else
      {
        [v17 duration];
        if (v23 == 0.0)
        {
          v22 = 168;
        }

        else
        {
          v22 = 336;
        }
      }

      v16 += v22;
      ++v15;
    }

    while (v82 != v15);
  }

  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  if ((reserveForWrite() & 1) == 0)
  {
    if ([eventsCopy count] < 3)
    {
      if (!kAVHCScope || (*(kAVHCScope + 8) & 1) == 0)
      {
        goto LABEL_154;
      }

      v62 = *kAVHCScope;
      v61 = v62;
      if (v62)
      {
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *v93 = "AVHapticClient.mm";
          *&v93[8] = 1024;
          *&v93[10] = 618;
          *&v93[14] = 2080;
          *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          _os_log_impl(&dword_21569A000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Bailing out on recursion because event array cannot be split further", buf, 0x1Cu);
        }

        goto LABEL_154;
      }

      goto LABEL_155;
    }

    if (!sorted)
    {
      eventsCopy = [eventsCopy sortedArrayUsingComparator:&__block_literal_global_353];
    }

    v86 = eventsCopy;
    v65 = [eventsCopy subarrayWithRange:{0, HapticClientUtil::getIndexOfSplitPoint<AVHapticEvent>(eventsCopy)}];
    if (kAVHCScope && (*(kAVHCScope + 8) & 1) != 0)
    {
      v66 = *kAVHCScope;
      v61 = v66;
      if (!v66)
      {
LABEL_96:

        goto LABEL_155;
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *v93 = "AVHapticClient.mm";
        *&v93[8] = 1024;
        *&v93[10] = 609;
        *&v93[14] = 2080;
        *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
        *&v93[24] = 1024;
        *&v93[26] = v91;
        _os_log_impl(&dword_21569A000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Bailing out on recursion (availableSize = %u)", buf, 0x22u);
      }
    }

    LOBYTE(v61) = 0;
    goto LABEL_96;
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v24 = *kAVHCScope;
      if (v24)
      {
        v25 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *v93 = "AVHapticClient.mm";
          *&v93[8] = 1024;
          *&v93[10] = 622;
          *&v93[14] = 2080;
          *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          *&v93[24] = 2048;
          *&v93[26] = time;
          _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: ====>> StartEventList at time: %f", buf, 0x26u);
        }
      }
    }
  }

  memset(&v93[20], 0, 84);
  *buf = 393328;
  *&v93[4] = time;
  *&v93[12] = channel;
  if (!writeCommandToReserved())
  {
    if (kAVHCScope)
    {
      v63 = *kAVHCScope;
      if (!v63)
      {
LABEL_101:
        if (!error)
        {
          goto LABEL_154;
        }

        v68 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
LABEL_119:
        LOBYTE(v61) = 0;
        *error = v68;
        goto LABEL_155;
      }
    }

    else
    {
      v63 = MEMORY[0x277D86220];
      v67 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v93 = "AVHapticClient.mm";
      *&v93[8] = 1024;
      *&v93[10] = 623;
      *&v93[14] = 2080;
      *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
      _os_log_impl(&dword_21569A000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

    goto LABEL_101;
  }

  if (!v82)
  {
LABEL_65:
    if (kAVHCScope)
    {
      if (*(kAVHCScope + 8))
      {
        v59 = *kAVHCScope;
        if (v59)
        {
          v60 = v59;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *v93 = "AVHapticClient.mm";
            *&v93[8] = 1024;
            *&v93[10] = 655;
            *&v93[14] = 2080;
            *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
            *&v93[24] = 2048;
            *&v93[26] = time;
            _os_log_impl(&dword_21569A000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <<==== EndEventList at time: %f", buf, 0x26u);
          }
        }
      }
    }

    memset(&v93[20], 0, 84);
    *buf = 458864;
    *&v93[4] = time;
    *&v93[12] = channel;
    if (writeCommandToReserved())
    {
      updateReservedWriteIndex();
      LOBYTE(v61) = 1;
      goto LABEL_155;
    }

    if (kAVHCScope)
    {
      v69 = *kAVHCScope;
      if (!v69)
      {
LABEL_117:
        if (!error)
        {
          goto LABEL_154;
        }

        v68 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
        goto LABEL_119;
      }
    }

    else
    {
      v69 = MEMORY[0x277D86220];
      v71 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v93 = "AVHapticClient.mm";
      *&v93[8] = 1024;
      *&v93[10] = 656;
      *&v93[14] = 2080;
      *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
      _os_log_impl(&dword_21569A000, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

    goto LABEL_117;
  }

  v26 = 0;
  while (1)
  {
    v27 = [eventsCopy objectAtIndexedSubscript:v26];
    eventCategory2 = [v27 eventCategory];
    if (!eventCategory2)
    {
      break;
    }

    if (eventCategory2 != 1)
    {
      if (eventCategory2 == 2)
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v29 = *kAVHCScope;
            if (v29)
            {
              v30 = v29;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                [v27 time];
                *buf = 136315906;
                *v93 = "AVHapticClient.mm";
                *&v93[8] = 1024;
                *&v93[10] = 645;
                *&v93[14] = 2080;
                *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
                *&v93[24] = 2048;
                *&v93[26] = v31;
                _os_log_impl(&dword_21569A000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Param curve: relative time %f", buf, 0x26u);
              }
            }
          }
        }

        paramType = [v27 paramType];
        [v27 time];
        v34 = v33;
        parameterCurve2 = [v27 parameterCurve];
        controlPoints2 = [parameterCurve2 controlPoints];
        v37 = [controlPoints2 sortedArrayUsingComparator:&__block_literal_global_356];
        [(AVHapticClient *)self doScheduleParamCurveWithMemoryReserve:paramType atTime:channel channel:&v87 memoryReserve:v37 paramCurve:error error:v34];

        goto LABEL_64;
      }

      if (kAVHCScope)
      {
        v72 = *kAVHCScope;
        if (!v72)
        {
LABEL_136:
          if (!error)
          {
            goto LABEL_153;
          }

          v75 = -4821;
          goto LABEL_152;
        }
      }

      else
      {
        v72 = MEMORY[0x277D86220];
        v74 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v93 = "AVHapticClient.mm";
        *&v93[8] = 1024;
        *&v93[10] = 650;
        *&v93[14] = 2080;
        *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
        _os_log_impl(&dword_21569A000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event is none of haptic/audio event, parameter, or parameter curve. returning", buf, 0x1Cu);
      }

      goto LABEL_136;
    }

    if (kAVHCScope)
    {
      if (*(kAVHCScope + 8))
      {
        v38 = *kAVHCScope;
        if (v38)
        {
          v39 = v38;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [v27 time];
            *buf = 136315906;
            *v93 = "AVHapticClient.mm";
            *&v93[8] = 1024;
            *&v93[10] = 640;
            *&v93[14] = 2080;
            *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
            *&v93[24] = 2048;
            *&v93[26] = v40;
            _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Param event: relative time %f", buf, 0x26u);
          }
        }
      }
    }

    [v27 time];
    v42 = v41;
    paramType2 = [v27 paramType];
    [v27 value];
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    memset(&v93[32], 0, 80);
    *buf = 196644;
    *&v93[4] = v42;
    *&v93[12] = channel;
    *&v93[20] = paramType2;
    *&v93[28] = v44;
    if ((writeCommandToReserved() & 1) == 0)
    {
      if (kAVHCScope)
      {
        v73 = *kAVHCScope;
        if (!v73)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v73 = MEMORY[0x277D86220];
        v77 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v93 = "AVHapticClient.mm";
        *&v93[8] = 1024;
        *&v93[10] = 641;
        *&v93[14] = 2080;
        *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
        _os_log_impl(&dword_21569A000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
      }

      goto LABEL_149;
    }

LABEL_64:

    if (v82 == ++v26)
    {
      goto LABEL_65;
    }
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v45 = *kAVHCScope;
      if (v45)
      {
        v46 = v45;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          [v27 time];
          *buf = 136315906;
          *v93 = "AVHapticClient.mm";
          *&v93[8] = 1024;
          *&v93[10] = 628;
          *&v93[14] = 2080;
          *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          *&v93[24] = 2048;
          *&v93[26] = v47;
          _os_log_impl(&dword_21569A000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Start event: relative time %f", buf, 0x26u);
        }
      }
    }
  }

  startEventFromEvent(v27, parametersCopy, channel, *(self + 3), buf);
  if (writeCommandToReserved())
  {
    [v27 duration];
    if (v48 != 0.0)
    {
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v49 = *kAVHCScope;
          if (v49)
          {
            v50 = v49;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              [v27 time];
              v52 = v51;
              [v27 duration];
              *buf = 136315906;
              *v93 = "AVHapticClient.mm";
              *&v93[8] = 1024;
              *&v93[10] = 631;
              *&v93[14] = 2080;
              *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
              *&v93[24] = 2048;
              *&v93[26] = v52 + v53;
              _os_log_impl(&dword_21569A000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Stop event added: relative time %f", buf, 0x26u);
            }
          }
        }
      }

      [v27 time];
      v55 = v54;
      [v27 duration];
      v56 = *(self + 3);
      memset(&v93[36], 0, 68);
      *buf = 131184;
      *&v93[4] = v55 + v57;
      *&v93[12] = channel;
      *&v93[20] = 0;
      *&v93[28] = v56;
      if ((writeCommandToReserved() & 1) == 0)
      {
        if (kAVHCScope)
        {
          v73 = *kAVHCScope;
          if (!v73)
          {
            goto LABEL_150;
          }
        }

        else
        {
          v73 = MEMORY[0x277D86220];
          v78 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v93 = "AVHapticClient.mm";
          *&v93[8] = 1024;
          *&v93[10] = 632;
          *&v93[14] = 2080;
          *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          _os_log_impl(&dword_21569A000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
        }

        goto LABEL_149;
      }
    }

    v58 = *(self + 3);
    if (token)
    {
      *token = v58;
    }

    *(self + 3) = v58 + 1;
    goto LABEL_64;
  }

  if (kAVHCScope)
  {
    v73 = *kAVHCScope;
    if (!v73)
    {
      goto LABEL_150;
    }
  }

  else
  {
    v73 = MEMORY[0x277D86220];
    v76 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *v93 = "AVHapticClient.mm";
    *&v93[8] = 1024;
    *&v93[10] = 629;
    *&v93[14] = 2080;
    *&v93[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
    _os_log_impl(&dword_21569A000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
  }

LABEL_149:

LABEL_150:
  if (!error)
  {
    goto LABEL_153;
  }

  v75 = -4899;
LABEL_152:
  *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:v75 userInfo:0];
LABEL_153:

LABEL_154:
  LOBYTE(v61) = 0;
LABEL_155:

  return v61;
}

- (BOOL)doScheduleParamCurve:(unint64_t)curve atTime:(double)time channel:(unint64_t)channel paramCurve:(id)paramCurve error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  paramCurveCopy = paramCurve;
  v13 = [paramCurveCopy count];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v14 = *kAVHCScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = "AVHapticClient.mm";
          v23 = 1024;
          *v24 = 669;
          *&v24[4] = 2080;
          *&v24[6] = "[AVHapticClient doScheduleParamCurve:atTime:channel:paramCurve:error:]";
          *&v24[14] = 1024;
          *&v24[16] = [(AVHapticClient *)self clientID];
          v25 = 1024;
          v26 = v13;
          v27 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing %u param curve control points from passed-in param curve array at time: %.3f", buf, 0x32u);
        }
      }
    }
  }

  [(AVHapticClient *)self calculateHapticCommandParamCurveMemorySize:v13];
  memset(buf, 0, sizeof(buf));
  *&v24[2] = 0;
  *&v24[10] = 0;
  if (reserveForWrite())
  {
    v16 = [(AVHapticClient *)self doScheduleParamCurveWithMemoryReserve:curve atTime:channel channel:buf memoryReserve:paramCurveCopy paramCurve:error error:time];
    v17 = paramCurveCopy;
  }

  else
  {
    v17 = [paramCurveCopy sortedArrayUsingComparator:&__block_literal_global_356];

    IndexOfSplit = HapticClientUtil::getIndexOfSplitPoint<AVHapticEvent>(v17);
    v19 = [v17 subarrayWithRange:{0, IndexOfSplit}];
    if ([(AVHapticClient *)self doScheduleParamCurve:curve atTime:channel channel:v19 paramCurve:error error:time])
    {
      v20 = [v17 subarrayWithRange:{IndexOfSplit, v13 - IndexOfSplit}];

      v16 = [(AVHapticClient *)self doScheduleParamCurve:curve atTime:channel channel:v20 paramCurve:error error:time];
      v19 = v20;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)doScheduleParamCurveWithMemoryReserve:(unint64_t)reserve atTime:(double)time channel:(unint64_t)channel memoryReserve:(HapticSharedMemoryAddressReserve *)memoryReserve paramCurve:(id)curve error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  v11 = [curveCopy objectAtIndexedSubscript:0];
  [v11 time];
  v13 = v12;

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v14 = *kAVHCScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *v63 = "AVHapticClient.mm";
          *&v63[8] = 1024;
          *&v63[10] = 716;
          *&v63[14] = 2080;
          *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
          *&v63[24] = 1024;
          *&v63[26] = reserve;
          *&v63[30] = 2048;
          *&v63[32] = time;
          *&v63[40] = 2048;
          *&v63[42] = v13;
          *&v63[50] = 2048;
          *&v63[52] = v13 + time;
          _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: => StartParamCurveList (paramID %u) at (relative-to-event-list) original time %.3f + firstPointTimeOffset %.3f = adjusted time %.3f", buf, 0x40u);
        }
      }
    }
  }

  v16 = [curveCopy count];
  v52 = v16;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v17 = *kAVHCScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *v63 = "AVHapticClient.mm";
          *&v63[8] = 1024;
          *&v63[10] = 719;
          *&v63[14] = 2080;
          *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
          *&v63[24] = 1024;
          *&v63[26] = v16;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: %u curve points", buf, 0x22u);
        }
      }
    }
  }

  *buf = 589936;
  *&v63[4] = v13 + time;
  *&v63[12] = channel;
  *&v63[20] = reserve;
  memset(&v63[28], 0, 76);
  if (!writeCommandToReserved())
  {
    if (kAVHCScope)
    {
      v41 = *kAVHCScope;
      if (!v41)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v41 = MEMORY[0x277D86220];
      v42 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v63 = "AVHapticClient.mm";
      *&v63[8] = 1024;
      *&v63[10] = 722;
      *&v63[14] = 2080;
      *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
      _os_log_impl(&dword_21569A000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

LABEL_53:
    if (error)
    {
      v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
LABEL_67:
      v40 = 0;
      *error = v43;
      goto LABEL_75;
    }

LABEL_74:
    v40 = 0;
    goto LABEL_75;
  }

  if (v16)
  {
    v20 = 0;
    v21 = 0.0;
    *&v19 = 136316162;
    v49 = v19;
    while (1)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      if (v20 + 16 <= v16)
      {
        v22 = 16;
      }

      else
      {
        v22 = v16 - v20;
      }

      v53 = 0uLL;
      v54 = 0uLL;
      if (v22)
      {
        v23 = 0;
        v24 = v20;
        v25 = &v53 + 2;
        do
        {
          v26 = [curveCopy objectAtIndexedSubscript:{v24, v49}];
          [v26 time];
          *&v27 = v27 - v21 - v13;
          *(v25 - 1) = *&v27;
          [v26 value];
          clientParamToSynthParam();
          if (kAVHCScope)
          {
            if (*(kAVHCScope + 8))
            {
              v28 = *kAVHCScope;
              if (v28)
              {
                v29 = v28;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  v30 = *(v25 - 1);
                  v31 = *v25;
                  *buf = 136316674;
                  *v63 = "AVHapticClient.mm";
                  *&v63[8] = 1024;
                  *&v63[10] = 747;
                  *&v63[14] = 2080;
                  *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
                  *&v63[24] = 1024;
                  *&v63[26] = v24;
                  *&v63[30] = 1024;
                  *&v63[32] = 0;
                  *&v63[36] = 2048;
                  *&v63[38] = v30;
                  *&v63[46] = 2048;
                  *&v63[48] = v31;
                  _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Point #%u for synth param[%u]: adjusted rel time: %.3f, converted value: %f", buf, 0x3Cu);
                }
              }
            }
          }

          ++v23;
          v25 += 2;
          ++v24;
        }

        while (v23 < v22);
      }

      LODWORD(v53) = v22;
      v32 = v21;
      v16 = v52;
      if (v20 + 16 <= v52)
      {
        v33 = [curveCopy objectAtIndexedSubscript:v20 + 15];
        [v33 time];
        v35 = v34;

        v32 = v35 - v13;
        v16 = v52;
      }

      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v36 = *kAVHCScope;
          if (v36)
          {
            v37 = v36;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = v49;
              *v63 = "AVHapticClient.mm";
              *&v63[8] = 1024;
              *&v63[10] = 757;
              *&v63[14] = 2080;
              *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
              *&v63[24] = 1024;
              *&v63[26] = reserve;
              *&v63[30] = 2048;
              *&v63[32] = v21;
              _os_log_impl(&dword_21569A000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: == AddParamCurve (paramID %u) rel time %.3f", buf, 0x2Cu);
            }

            v16 = v52;
          }
        }
      }

      v65 = v59;
      v66 = v60;
      v67 = v61;
      *&v63[60] = v55;
      *&v63[76] = v56;
      *&v63[92] = v57;
      v64 = v58;
      *&v63[28] = v53;
      *&v63[44] = v54;
      *buf = 655524;
      *&v63[4] = v21;
      *&v63[12] = channel;
      *&v63[20] = reserve;
      if ((writeCommandToReserved() & 1) == 0)
      {
        break;
      }

      v20 += 15;
      v21 = v32;
      if (v20 >= v16)
      {
        goto LABEL_38;
      }
    }

    if (kAVHCScope)
    {
      v45 = *kAVHCScope;
      if (!v45)
      {
LABEL_72:
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
        }

        goto LABEL_74;
      }
    }

    else
    {
      v45 = MEMORY[0x277D86220];
      v47 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v63 = "AVHapticClient.mm";
      *&v63[8] = 1024;
      *&v63[10] = 758;
      *&v63[14] = 2080;
      *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
      _os_log_impl(&dword_21569A000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

    goto LABEL_72;
  }

LABEL_38:
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v38 = *kAVHCScope;
      if (v38)
      {
        v39 = v38;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *v63 = "AVHapticClient.mm";
          *&v63[8] = 1024;
          *&v63[10] = 763;
          *&v63[14] = 2080;
          *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
          *&v63[24] = 1024;
          *&v63[26] = reserve;
          *&v63[30] = 2048;
          *&v63[32] = time;
          *&v63[40] = 2048;
          *&v63[42] = v13;
          *&v63[50] = 2048;
          *&v63[52] = v13 + time;
          _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <= EndParamCurveList (paramID %u) at  original time %f + firstPointTimeOffset %.3f = adjusted time %.3f", buf, 0x40u);
        }
      }
    }
  }

  memset(&v63[28], 0, 76);
  *buf = 721008;
  *&v63[4] = v13 + time;
  *&v63[12] = channel;
  *&v63[20] = reserve;
  if ((writeCommandToReserved() & 1) == 0)
  {
    if (kAVHCScope)
    {
      v44 = *kAVHCScope;
      if (!v44)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v44 = MEMORY[0x277D86220];
      v46 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v63 = "AVHapticClient.mm";
      *&v63[8] = 1024;
      *&v63[10] = 764;
      *&v63[14] = 2080;
      *&v63[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
      _os_log_impl(&dword_21569A000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

LABEL_65:
    if (error)
    {
      v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
      goto LABEL_67;
    }

    goto LABEL_74;
  }

  v40 = 1;
LABEL_75:

  return v40;
}

- (BOOL)sendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel outToken:(unint64_t *)token error:(id *)error
{
  selfCopy = self;
  parametersCopy = parameters;
  eventsCopy = events;
  objc_sync_enter(selfCopy);
  LOBYTE(error) = [(AVHapticClient *)selfCopy doSendEvents:eventsCopy withImmediateParameters:parametersCopy atTime:channel channel:0 sorted:token outToken:error error:time];

  objc_sync_exit(selfCopy);
  return error;
}

- (BOOL)clearEventsFromTime:(double)time channel:(unint64_t)channel
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *&v12[0] = "AVHapticClient.mm";
          WORD4(v12[0]) = 1024;
          *(v12 + 10) = 778;
          HIWORD(v12[0]) = 2080;
          *&v12[1] = "[AVHapticClient clearEventsFromTime:channel:]";
          WORD4(v12[1]) = 1024;
          *(&v12[1] + 10) = [(AVHapticClient *)selfCopy clientID];
          HIWORD(v12[1]) = 2048;
          *&v12[2] = time;
          WORD4(v12[2]) = 1024;
          *(&v12[2] + 10) = 4;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing command: time: %.3f type: %hu", &v11, 0x32u);
        }
      }
    }
  }

  memset(&v12[1] + 4, 0, 84);
  v11 = 262256;
  *(v12 + 4) = time;
  *(v12 + 12) = channel;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)setParameter:(unint64_t)parameter atTime:(double)time value:(float)value channel:(unint64_t)channel
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136316930;
          *v16 = "AVHapticClient.mm";
          *&v16[8] = 1024;
          *&v16[10] = 786;
          *&v16[14] = 2080;
          *&v16[16] = "[AVHapticClient setParameter:atTime:value:channel:]";
          *&v16[24] = 1024;
          *&v16[26] = [(AVHapticClient *)selfCopy clientID];
          *&v16[30] = 2048;
          *&v17 = time;
          WORD4(v17) = 1024;
          *(&v17 + 10) = 3;
          HIWORD(v17) = 1024;
          LODWORD(v18) = parameter;
          WORD2(v18) = 2048;
          *(&v18 + 6) = value;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing command: time: %.3f type: %hu ID: %u, value: %f", &v15, 0x42u);
        }
      }
    }
  }

  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v15 = 196644;
  *&v16[4] = time;
  *&v16[12] = channel;
  *&v16[20] = parameter;
  *&v16[28] = value;
  v13 = writeCommand();
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)scheduleParameterCurve:(unint64_t)curve curve:(id)a4 atTime:(double)time channel:(unint64_t)channel error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(AVHapticClient *)selfCopy doScheduleParamCurve:curve atTime:channel channel:v12 paramCurve:error error:time])
  {
    if (kAVHCScope)
    {
      v15 = *kAVHCScope;
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AVHapticClient scheduleParameterCurve:v18 curve:v17 atTime:? channel:? error:?];
    }

LABEL_9:
    [AVHapticClient scheduleParameterCurve:curve:atTime:channel:error:];
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (BOOL)loadAndPrepareHapticSequenceFromData:(id)data reply:(id)reply
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 808;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 2048;
    *&buf[36] = dataCopy;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading sequence: %p", buf, 0x2Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  *&buf[40] = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__AVHapticClient_loadAndPrepareHapticSequenceFromData_reply___block_invoke;
  v25[3] = &unk_2781C93A8;
  v25[4] = buf;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__AVHapticClient_loadAndPrepareHapticSequenceFromData_reply___block_invoke_2;
  v24[3] = &unk_2781C93F8;
  v24[4] = &v34;
  v24[5] = &v30;
  v24[6] = &v26;
  v24[7] = buf;
  [v12 loadHapticSequenceFromData:dataCopy reply:v24];
  v13 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v15 = v35[3];
    obj = 0;
    [(AVHapticClient *)self prepareHapticSequence:v15 error:&obj];
    objc_storeStrong(v13, obj);
    v16 = *(*&buf[8] + 40);
    v17 = v16 == 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 40);
      *v38 = 136315906;
      v39 = "AVHapticClient.mm";
      v40 = 1024;
      v41 = 826;
      v42 = 2080;
      v43 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]";
      v44 = 2048;
      v45 = v19;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %p", v38, 0x26u);
    }
  }

  v17 = 0;
  v16 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v35[3], v27[3], v16, v31[3]);
  if (kAVHCScope)
  {
    v20 = *kAVHCScope;
    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v38 = 136315650;
    v39 = "AVHapticClient.mm";
    v40 = 1024;
    v41 = 834;
    v42 = 2080;
    v43 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]";
    _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading sequence", v38, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __61__AVHapticClient_loadAndPrepareHapticSequenceFromData_reply___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136315650;
          v16 = "AVHapticClient.mm";
          v17 = 1024;
          v18 = 817;
          v19 = 2080;
          v20 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loadAndPrepareHapticSequenceFromData:reply: top of [serverDelegate loadHapticSequenceFromData] reply block", &v15, 0x1Cu);
        }
      }
    }
  }

  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  if (v10)
  {
    if (kAVHCScope)
    {
      v13 = *kAVHCScope;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = "AVHapticClient.mm";
      v17 = 1024;
      v18 = 822;
      v19 = 2080;
      v20 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]_block_invoke";
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %p", &v15, 0x26u);
    }
  }

LABEL_15:
}

- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)events reply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 841;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading sequence from event array", buf, 0x22u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v47 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__AVHapticClient_loadAndPrepareHapticSequenceFromEvents_reply___block_invoke;
  v25[3] = &unk_2781C93A8;
  v25[4] = buf;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__AVHapticClient_loadAndPrepareHapticSequenceFromEvents_reply___block_invoke_2;
  v24[3] = &unk_2781C93F8;
  v24[4] = &v34;
  v24[5] = &v30;
  v24[6] = &v26;
  v24[7] = buf;
  [v12 loadHapticSequenceFromEvents:eventsCopy reply:v24];
  v13 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v15 = v35[3];
    obj = 0;
    [(AVHapticClient *)self prepareHapticSequence:v15 error:&obj];
    objc_storeStrong(v13, obj);
    v16 = *(*&buf[8] + 40);
    v17 = v16 == 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 40);
      *v38 = 136315906;
      v39 = "AVHapticClient.mm";
      v40 = 1024;
      v41 = 859;
      v42 = 2080;
      v43 = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]";
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v38, 0x26u);
    }
  }

  v17 = 0;
  v16 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v35[3], v27[3], v16, v31[3]);
  if (kAVHCScope)
  {
    v20 = *kAVHCScope;
    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v38 = 136315650;
    v39 = "AVHapticClient.mm";
    v40 = 1024;
    v41 = 867;
    v42 = 2080;
    v43 = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]";
    _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading sequence", v38, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __63__AVHapticClient_loadAndPrepareHapticSequenceFromEvents_reply___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136315650;
          v16 = "AVHapticClient.mm";
          v17 = 1024;
          v18 = 850;
          v19 = 2080;
          v20 = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loadAndPrepareHapticSequenceFromEvents:reply: top of [serverDelegate loadHapticSequenceFromEvents] reply block", &v15, 0x1Cu);
        }
      }
    }
  }

  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  if (v10)
  {
    if (kAVHCScope)
    {
      v13 = *kAVHCScope;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "AVHapticClient.mm";
      v17 = 1024;
      v18 = 855;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Got error from server: %@", &v15, 0x1Cu);
    }
  }

LABEL_15:
}

- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)pattern reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 873;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 2048;
    *&buf[36] = patternCopy;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading pattern: %p", buf, 0x2Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  *&buf[40] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__AVHapticClient_loadAndPrepareHapticSequenceFromVibePattern_reply___block_invoke;
  v25[3] = &unk_2781C93A8;
  v25[4] = buf;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __68__AVHapticClient_loadAndPrepareHapticSequenceFromVibePattern_reply___block_invoke_2;
  v24[3] = &unk_2781C9380;
  v24[4] = &v26;
  v24[5] = buf;
  [v12 loadVibePattern:patternCopy reply:v24];
  v13 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v15 = v27[3];
    obj = 0;
    [(AVHapticClient *)self prepareHapticSequence:v15 error:&obj];
    objc_storeStrong(v13, obj);
    v16 = *(*&buf[8] + 40);
    v17 = v16 == 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 40);
      *v30 = 136315906;
      v31 = "AVHapticClient.mm";
      v32 = 1024;
      v33 = 887;
      v34 = 2080;
      v35 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]";
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v30, 0x26u);
    }
  }

  v17 = 0;
  v16 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v27[3], v16);
  if (kAVHCScope)
  {
    v20 = *kAVHCScope;
    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v30 = 136315650;
    v31 = "AVHapticClient.mm";
    v32 = 1024;
    v33 = 895;
    v34 = 2080;
    v35 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]";
    _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading pattern", v30, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __68__AVHapticClient_loadAndPrepareHapticSequenceFromVibePattern_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136315650;
          v12 = "AVHapticClient.mm";
          v13 = 1024;
          v14 = 880;
          v15 = 2080;
          v16 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loadAndPrepareHapticSequenceFromVibePattern:reply: top of [serverDelegate loadVibePattern] reply block", &v11, 0x1Cu);
        }
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v9 = *kAVHCScope;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "AVHapticClient.mm";
      v13 = 1024;
      v14 = 883;
      v15 = 2080;
      v16 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]_block_invoke";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v11, 0x26u);
    }
  }

LABEL_15:
}

- (BOOL)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channel:(unint64_t)channel
{
  v33 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 901;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 1024;
    *&buf[36] = behavior;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = a4;
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x, seqID %u, behavior %u", buf, 0x2Eu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v32 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__AVHapticClient_setSequenceEventBehavior_behavior_channel___block_invoke;
  v22[3] = &unk_2781C93A8;
  v22[4] = buf;
  v13 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__AVHapticClient_setSequenceEventBehavior_behavior_channel___block_invoke_2;
  v21[3] = &unk_2781C93A8;
  v21[4] = buf;
  [v13 setSequenceEventBehavior:behavior behavior:a4 channelIndex:channel reply:v21];
  v14 = *(*&buf[8] + 40);
  if (!v14)
  {
    goto LABEL_16;
  }

  if (kAVHCScope)
  {
    v15 = *kAVHCScope;
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*&buf[8] + 40);
    *v23 = 136315906;
    v24 = "AVHapticClient.mm";
    v25 = 1024;
    v26 = 912;
    v27 = 2080;
    v28 = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]";
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v23, 0x26u);
  }

LABEL_16:
  if (kAVHCScope)
  {
    v18 = *kAVHCScope;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v23 = 136315650;
    v24 = "AVHapticClient.mm";
    v25 = 1024;
    v26 = 917;
    v27 = 2080;
    v28 = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]";
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done setting behavior", v23, 0x1Cu);
  }

LABEL_23:
  _Block_object_dispose(buf, 8);

  return v14 == 0;
}

void __60__AVHapticClient_setSequenceEventBehavior_behavior_channel___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 908;
      v11 = 2080;
      v12 = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]_block_invoke_2";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v7, 0x26u);
    }
  }

LABEL_9:
}

- (void)setSequenceFinishedHandlerForID:(unint64_t)d finishedHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  std::mutex::lock((self + 48));
  v7 = *(self + 15);
  if (v7)
  {
    v8 = self + 120;
    do
    {
      v9 = *(v7 + 4);
      v10 = v9 >= d;
      v11 = v9 < d;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *&v7[8 * v11];
    }

    while (v7);
    if (v8 != self + 120 && *(v8 + 4) <= d)
    {
      std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(self + 14, v8);
    }
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v12 = *kAVHCScope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = MEMORY[0x21606F540](handlerCopy);
          *buf = 136316162;
          v18 = "AVHapticClient.mm";
          v19 = 1024;
          v20 = 929;
          v21 = 2080;
          v22 = "[AVHapticClient setSequenceFinishedHandlerForID:finishedHandler:]";
          v23 = 2048;
          v24 = v14;
          v25 = 1024;
          dCopy2 = d;
          _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Caching sequence finished handler block %p for seqID %u", buf, 0x2Cu);
        }
      }
    }
  }

  v15 = [[AVHapticSequenceEntry alloc] initWithHandler:handlerCopy];
  std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::__emplace_unique_key_args<unsigned long,unsigned long &,AVHapticSequenceEntry * {__strong}>(self + 112, &dCopy, &dCopy, &v15);

  std::mutex::unlock((self + 48));
}

- (id)getSequenceFinishedHandlerForID:(unint64_t)d
{
  std::mutex::lock((self + 48));
  v5 = *(self + 15);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = (self + 120);
  do
  {
    v7 = *(v5 + 4);
    v8 = v7 >= d;
    v9 = v7 < d;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 != (self + 120) && v6[4] <= d)
  {
    handler = [v6[5] handler];
    v10 = MEMORY[0x21606F540]();
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  std::mutex::unlock((self + 48));

  return v10;
}

- (void)callSequenceFinishedHandlersWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "AVHapticClient.mm";
    v16 = 1024;
    v17 = 942;
    v18 = 2080;
    v19 = "[AVHapticClient callSequenceFinishedHandlersWithError:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling completion handlers on any active sequences", &v14, 0x1Cu);
  }

LABEL_8:
  std::mutex::lock((self + 48));
  v7 = *(self + 14);
  v8 = self + 120;
  if (v7 != self + 120)
  {
    do
    {
      v9 = *(v7 + 5);
      handler = [v9 handler];
      (handler)[2](handler, errorCopy);

      v11 = *(v7 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v7 + 2);
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }

  std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::destroy(self + 112, *(self + 15));
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = v8;
  std::mutex::unlock((self + 48));
}

- (void)setRunStateForSequenceEntryWithID:(unint64_t)d running:(BOOL)running
{
  runningCopy = running;
  std::mutex::lock((self + 48));
  v7 = *(self + 15);
  if (v7)
  {
    v8 = (self + 120);
    do
    {
      v9 = *(v7 + 4);
      v10 = v9 >= d;
      v11 = v9 < d;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *&v7[8 * v11];
    }

    while (v7);
    if (v8 != (self + 120) && v8[4] <= d)
    {
      [v8[5] setRunning:runningCopy];
    }
  }

  std::mutex::unlock((self + 48));
}

- (void)detachSequenceEntryforID:(unint64_t)d
{
  v22 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 48));
  v5 = *(self + 15);
  if (v5)
  {
    v6 = (self + 120);
    do
    {
      v7 = *(v5 + 4);
      v8 = v7 >= d;
      v9 = v7 < d;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *&v5[8 * v9];
    }

    while (v5);
    if (v6 != (self + 120) && v6[4] <= d)
    {
      if ([v6[5] running])
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v10 = *kAVHCScope;
            if (v10)
            {
              v11 = v10;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v14 = 136315906;
                v15 = "AVHapticClient.mm";
                v16 = 1024;
                v17 = 965;
                v18 = 2080;
                v19 = "[AVHapticClient detachSequenceEntryforID:]";
                v20 = 1024;
                dCopy2 = d;
                _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sequence %u is running - setting entry to detached", &v14, 0x22u);
              }
            }
          }
        }

        [v6[5] setDetached:1];
      }

      else
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v12 = *kAVHCScope;
            if (v12)
            {
              v13 = v12;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v14 = 136315906;
                v15 = "AVHapticClient.mm";
                v16 = 1024;
                v17 = 969;
                v18 = 2080;
                v19 = "[AVHapticClient detachSequenceEntryforID:]";
                v20 = 1024;
                dCopy2 = d;
                _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sequence %u is not running - deleting entry", &v14, 0x22u);
              }
            }
          }
        }

        std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(self + 14, v6);
      }
    }
  }

  std::mutex::unlock((self + 48));
}

- (BOOL)prepareHapticSequence:(unint64_t)sequence error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[14] = 977;
    *&buf[18] = 2080;
    *&buf[12] = 1024;
    *&buf[20] = "[AVHapticClient prepareHapticSequence:error:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 1024;
    *&buf[36] = sequence;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x preparing sequenceID: %u", buf, 0x28u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v30 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__AVHapticClient_prepareHapticSequence_error___block_invoke;
  v20[3] = &unk_2781C93A8;
  v20[4] = buf;
  v11 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__AVHapticClient_prepareHapticSequence_error___block_invoke_2;
  v19[3] = &unk_2781C93A8;
  v19[4] = buf;
  [v11 prepareHapticSequence:sequence reply:v19];
  v12 = *(*&buf[8] + 40);
  if (!v12)
  {
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
    goto LABEL_13;
  }

  v13 = *kAVHCScope;
  if (v13)
  {
LABEL_13:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v21 = 136315906;
      v22 = "AVHapticClient.mm";
      v23 = 1024;
      v24 = 989;
      v25 = 2080;
      v26 = "[AVHapticClient prepareHapticSequence:error:]";
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v21, 0x26u);
    }
  }

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

LABEL_18:
  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315650;
    v22 = "AVHapticClient.mm";
    v23 = 1024;
    v24 = 997;
    v25 = 2080;
    v26 = "[AVHapticClient prepareHapticSequence:error:]";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done preparing", v21, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(buf, 8);

  return v12 == 0;
}

void __46__AVHapticClient_prepareHapticSequence_error___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v5 = *kAVHCScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v9 = 136315650;
          v10 = "AVHapticClient.mm";
          v11 = 1024;
          v12 = 983;
          v13 = 2080;
          v14 = "[AVHapticClient prepareHapticSequence:error:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: prepareHapticSequence:error: top of [serverDelegate prepareHapticSequence] reply block", &v9, 0x1Cu);
        }
      }
    }
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = "AVHapticClient.mm";
      v11 = 1024;
      v12 = 985;
      v13 = 2080;
      v14 = "[AVHapticClient prepareHapticSequence:error:]_block_invoke";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v9, 0x26u);
    }
  }

LABEL_15:
}

- (BOOL)enableSequenceLooping:(unint64_t)looping enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v14 = 136316418;
          *v15 = "AVHapticClient.mm";
          *&v15[8] = 1024;
          *&v15[10] = 1006;
          *&v15[14] = 2080;
          *&v15[16] = "[AVHapticClient enableSequenceLooping:enable:error:]";
          *&v15[24] = 1024;
          *&v15[26] = 22;
          *&v15[30] = 1024;
          v16 = *&looping;
          LOWORD(v17) = 1024;
          *(&v17 + 2) = enableCopy;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: (time 0) type: %hu sequenceID: %u looping: %d", &v14, 0x2Eu);
        }
      }
    }
  }

  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v14 = 1441832;
  *&v15[4] = 0;
  *&v15[12] = looping;
  *&v15[20] = looping;
  *&v15[28] = 101;
  v16 = enableCopy;
  v11 = writeCommand();
  objc_sync_exit(selfCopy);

  if (error)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-4811 userInfo:0];
  }

  return v11;
}

- (BOOL)setSequenceLoopLength:(unint64_t)length length:(float)a4 error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v14 = 136316418;
          *v15 = "AVHapticClient.mm";
          *&v15[8] = 1024;
          *&v15[10] = 1021;
          *&v15[14] = 2080;
          *&v15[16] = "[AVHapticClient setSequenceLoopLength:length:error:]";
          *&v15[24] = 1024;
          *&v15[26] = 22;
          *&v15[30] = 1024;
          v16 = *&length;
          LOWORD(v17) = 2048;
          *(&v17 + 2) = a4;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: (time 0) type: %hu sequenceID: %u loop length: %f", &v14, 0x32u);
        }
      }
    }
  }

  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v14 = 1441832;
  *&v15[4] = 0;
  *&v15[12] = length;
  *&v15[20] = length;
  *&v15[28] = 102;
  v16 = a4;
  v11 = writeCommand();
  objc_sync_exit(selfCopy);

  if (error)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-4811 userInfo:0];
  }

  return v11;
}

- (BOOL)setSequencePlaybackRate:(unint64_t)rate rate:(float)a4 error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v14 = 136316418;
          *v15 = "AVHapticClient.mm";
          *&v15[8] = 1024;
          *&v15[10] = 1036;
          *&v15[14] = 2080;
          *&v15[16] = "[AVHapticClient setSequencePlaybackRate:rate:error:]";
          *&v15[24] = 1024;
          *&v15[26] = 22;
          *&v15[30] = 1024;
          v16 = *&rate;
          LOWORD(v17) = 2048;
          *(&v17 + 2) = a4;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: (time 0) type: %hu sequenceID: %u rate: %f", &v14, 0x32u);
        }
      }
    }
  }

  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v14 = 1441832;
  *&v15[4] = 0;
  *&v15[12] = rate;
  *&v15[20] = rate;
  *&v15[28] = 103;
  v16 = a4;
  v11 = writeCommand();
  objc_sync_exit(selfCopy);

  if (error)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-4811 userInfo:0];
  }

  return v11;
}

- (BOOL)startHapticSequence:(unint64_t)sequence atTime:(double)time withOffset:(double)offset
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316674;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1049;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient startHapticSequence:atTime:withOffset:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15[0]) = 20;
          WORD2(v15[0]) = 1024;
          *(v15 + 6) = sequence;
          WORD5(v15[0]) = 2048;
          *(v15 + 12) = offset;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f type: %hu sequenceID: %u offset: %f", &v13, 0x3Cu);
        }
      }
    }
  }

  memset(v15, 0, 124);
  v13 = 1310760;
  *&v14[4] = time;
  *&v14[12] = sequence;
  *&v14[20] = 51;
  *&v14[28] = offset;
  v11 = writeCommand();
  if (v11)
  {
    [(AVHapticClient *)selfCopy setRunStateForSequenceEntryWithID:sequence running:1];
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (BOOL)stopHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1063;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient stopHapticSequence:atTime:]";
          *&v12[24] = 2048;
          *&v12[26] = time;
          *&v12[34] = 1024;
          LODWORD(v13) = 20;
          WORD2(v13) = 1024;
          *(&v13 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = 1310760;
  *&v12[4] = time;
  *&v12[12] = sequence;
  *&v12[20] = 52;
  *&v12[28] = 0xBFF0000000000000;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)pauseHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1071;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient pauseHapticSequence:atTime:]";
          *&v12[24] = 2048;
          *&v12[26] = time;
          *&v12[34] = 1024;
          LODWORD(v13) = 20;
          WORD2(v13) = 1024;
          *(&v13 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = 1310760;
  *&v12[4] = time;
  *&v12[12] = sequence;
  *&v12[20] = 53;
  *&v12[28] = 0xBFF0000000000000;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)resumeHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1079;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient resumeHapticSequence:atTime:]";
          *&v12[24] = 2048;
          *&v12[26] = time;
          *&v12[34] = 1024;
          LODWORD(v13) = 20;
          WORD2(v13) = 1024;
          *(&v13 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = 1310760;
  *&v12[4] = time;
  *&v12[12] = sequence;
  *&v12[20] = 54;
  *&v12[28] = 0xBFF0000000000000;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)seekHapticSequence:(unint64_t)sequence toTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1088;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient seekHapticSequence:toTime:]";
          *&v12[24] = 2048;
          *&v12[26] = 0;
          *&v12[34] = 1024;
          LODWORD(v13) = 20;
          WORD2(v13) = 1024;
          *(&v13 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = 1310760;
  *&v12[4] = 0;
  *&v12[12] = sequence;
  *&v12[20] = 55;
  *&v12[28] = time;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)resetHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1096;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient resetHapticSequence:atTime:]";
          *&v12[24] = 2048;
          *&v12[26] = time;
          *&v12[34] = 1024;
          LODWORD(v13) = 20;
          WORD2(v13) = 1024;
          *(&v13 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = 1310760;
  *&v12[4] = time;
  *&v12[12] = sequence;
  *&v12[20] = 56;
  *&v12[28] = 0xBFF0000000000000;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)sendUnduckAudioCommand:(unint64_t)command atTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1104;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient sendUnduckAudioCommand:atTime:]";
          *&v12[24] = 2048;
          *&v12[26] = time;
          *&v12[34] = 1024;
          LODWORD(v13) = 20;
          WORD2(v13) = 1024;
          *(&v13 + 6) = command;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = 1310760;
  *&v12[4] = time;
  *&v12[12] = command;
  *&v12[20] = 57;
  *&v12[28] = 0xBFF0000000000000;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)setSequenceChannelParameter:(unint64_t)parameter atTime:(double)time value:(float)value sequenceID:(unint64_t)d channel:(unint64_t)channel
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v13 = *kAVHCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v17 = 136317186;
          *v18 = "AVHapticClient.mm";
          *&v18[8] = 1024;
          *&v18[10] = 1112;
          *&v18[14] = 2080;
          *&v18[16] = "[AVHapticClient setSequenceChannelParameter:atTime:value:sequenceID:channel:]";
          *&v18[24] = 2048;
          *&v18[26] = time;
          *&v18[34] = 1024;
          *v19 = 21;
          *&v19[4] = 1024;
          *&v19[6] = d;
          *&v19[10] = 1024;
          LODWORD(v20[0]) = channel;
          WORD2(v20[0]) = 1024;
          *(v20 + 6) = parameter;
          WORD5(v20[0]) = 2048;
          *(v20 + 12) = value;
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f type: %hu sequenceID: %u channel: %u param: %u value: %.3f", &v17, 0x48u);
        }
      }
    }
  }

  memset(v20, 0, sizeof(v20));
  v17 = 1376312;
  *&v18[4] = time;
  *&v18[12] = d;
  *&v18[20] = 0;
  *&v18[28] = channel;
  *v19 = parameter;
  *&v19[8] = value;
  v15 = writeCommand();
  objc_sync_exit(selfCopy);

  return v15;
}

- (BOOL)clearSequenceEvents:(unint64_t)events atTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136316418;
          *v12 = "AVHapticClient.mm";
          *&v12[8] = 1024;
          *&v12[10] = 1120;
          *&v12[14] = 2080;
          *&v12[16] = "[AVHapticClient clearSequenceEvents:atTime:]";
          *&v12[24] = 2048;
          *&v12[26] = time;
          *&v12[34] = 1024;
          LODWORD(v13) = 23;
          WORD2(v13) = 1024;
          *(&v13 + 6) = events;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f cmd type: %hu sequenceID: %u", &v11, 0x32u);
        }
      }
    }
  }

  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  *&v12[20] = 0u;
  v11 = 1507440;
  *&v12[4] = time;
  *&v12[12] = events;
  v9 = writeCommand();
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)detachHapticSequence:(unint64_t)sequence
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136316162;
    v11 = "AVHapticClient.mm";
    v13 = 1128;
    v14 = 2080;
    v12 = 1024;
    v15 = "[AVHapticClient detachHapticSequence:]";
    v16 = 1024;
    clientID = [(AVHapticClient *)selfCopy clientID];
    v18 = 1024;
    sequenceCopy = sequence;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x detaching sequenceID %u", &v10, 0x28u);
  }

LABEL_8:
  v9 = [(AVHapticClient *)selfCopy getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_67];
  [(AVHapticClient *)selfCopy detachSequenceEntryforID:sequence];
  [v9 detachSequence:sequence];

  objc_sync_exit(selfCopy);
}

- (void)releaseResources
{
  v15 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 1139;
    v13 = 2080;
    v14 = "[AVHapticClient releaseResources]";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: releasing resources", &v9, 0x1Cu);
  }

LABEL_8:
  [(AVHapticClient *)self destroySharedMemory];
  v6 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_69];
  [v6 releaseClientResources];
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 1144;
    v13 = 2080;
    v14 = "[AVHapticClient releaseResources]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: done releasing", &v9, 0x1Cu);
  }

LABEL_15:
}

- (BOOL)setupConnectionWithOptions:(id)options error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1167;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient setupConnectionWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Connecting...", buf, 0x1Cu);
  }

LABEL_8:
  v10 = [optionsCopy objectForKey:@"MachServiceName"];
  v11 = objc_alloc(MEMORY[0x277CCAE80]);
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"com.apple.audio.hapticd";
  }

  v13 = [v11 initWithMachServiceName:v12 options:4096];
  v14 = *(self + 1);
  *(self + 1) = v13;

  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827A07E0];
  [*(self + 1) setExportedInterface:v15];

  [*(self + 1) setExportedObject:self];
  v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827A4690];
  [*(self + 1) setRemoteObjectInterface:v16];

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v17 = *kAVHCScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(self + 1);
          *buf = 136315906;
          *&buf[4] = "AVHapticClient.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1176;
          *&buf[18] = 2080;
          *&buf[20] = "[AVHapticClient setupConnectionWithOptions:error:]";
          *&buf[28] = 2112;
          *&buf[30] = v19;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: [xpc] Connection: %@", buf, 0x26u);
        }
      }
    }
  }

  remoteObjectInterface = [*(self + 1) remoteObjectInterface];
  [remoteObjectInterface setXPCType:MEMORY[0x277D864B8] forSelector:sel_allocateClientResources_ argumentIndex:0 ofReply:1];

  objc_initWeak(&location, self);
  v21 = *(self + 1);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke;
  v57[3] = &unk_2781C9420;
  objc_copyWeak(&v58, &location);
  [v21 setInterruptionHandler:v57];
  v22 = *(self + 1);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2;
  v55[3] = &unk_2781C9420;
  objc_copyWeak(&v56, &location);
  [v22 setInvalidationHandler:v55];
  [(AVHapticClient *)self setConnected:1];
  [*(self + 1) resume];
  [(AVHapticClient *)self setServerProcessID:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v71 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (kAVHCScope)
  {
    v23 = *kAVHCScope;
    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v60 = 136315906;
    v61 = "AVHapticClient.mm";
    v62 = 1024;
    v63 = 1196;
    v64 = 2080;
    v65 = "[AVHapticClient setupConnectionWithOptions:error:]";
    v66 = 2112;
    v67 = optionsCopy;
    _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling configureWithOptions:reply on server with dictionary: '%@'", v60, 0x26u);
  }

LABEL_24:
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_142;
  v50[3] = &unk_2781C93A8;
  v50[4] = buf;
  v25 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v50];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2_143;
  v49[3] = &unk_2781C9448;
  v49[4] = &v51;
  v26 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<unsigned long>((self + 152), v49, 0);
  [v25 configureWithOptions:optionsCopy reply:v26];
  -[AVHapticClient setServerProcessID:](self, "setServerProcessID:", [*(self + 1) processIdentifier]);
  if (kAVHCScope)
  {
    v27 = *kAVHCScope;
    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v27 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
  }

  v29 = v27;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *(self + 1);
    processIdentifier = [v30 processIdentifier];
    *v60 = 136316162;
    v61 = "AVHapticClient.mm";
    v62 = 1024;
    v63 = 1209;
    v64 = 2080;
    v65 = "[AVHapticClient setupConnectionWithOptions:error:]";
    v66 = 2112;
    v67 = v30;
    v68 = 1024;
    v69 = processIdentifier;
    _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Server connection: %@, PID: %d", v60, 0x2Cu);
  }

LABEL_31:
  if (*(*&buf[8] + 40))
  {
    if (kAVHCScope)
    {
      v32 = *kAVHCScope;
      if (!v32)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v32 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(*&buf[8] + 40);
      *v60 = 136315906;
      v61 = "AVHapticClient.mm";
      v62 = 1024;
      v63 = 1212;
      v64 = 2080;
      v65 = "[AVHapticClient setupConnectionWithOptions:error:]";
      v66 = 2112;
      v67 = v35;
      v36 = "%25s:%-5d %s: [xpc] Got error during transaction: %@";
      v37 = v32;
      v38 = OS_LOG_TYPE_DEFAULT;
LABEL_48:
      _os_log_impl(&dword_21569A000, v37, v38, v36, v60, 0x26u);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v33 = v52[3];
  if (!v33)
  {
    if (kAVHCScope)
    {
      v39 = *kAVHCScope;
      if (!v39)
      {
LABEL_53:
        v43 = *&buf[8];
        v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4810 userInfo:0];
        v32 = *(v43 + 40);
        *(v43 + 40) = v44;
        goto LABEL_54;
      }
    }

    else
    {
      v39 = MEMORY[0x277D86220];
      v42 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v60 = 136315650;
      v61 = "AVHapticClient.mm";
      v62 = 1024;
      v63 = 1215;
      v64 = 2080;
      v65 = "[AVHapticClient setupConnectionWithOptions:error:]";
      _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: [xpc] ERROR: Failed retrieving client ID", v60, 0x1Cu);
    }

    goto LABEL_53;
  }

  *(self + 25) = v33;
  if (!kAVHCScope)
  {
    v32 = MEMORY[0x277D86220];
    v40 = MEMORY[0x277D86220];
LABEL_46:
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v41 = *(self + 25);
      *v60 = 136315906;
      v61 = "AVHapticClient.mm";
      v62 = 1024;
      v63 = 1220;
      v64 = 2080;
      v65 = "[AVHapticClient setupConnectionWithOptions:error:]";
      v66 = 2048;
      v67 = v41;
      v36 = "%25s:%-5d %s: Client ID: 0x%lx";
      v37 = v32;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_48;
    }

LABEL_54:

    goto LABEL_55;
  }

  v32 = *kAVHCScope;
  if (v32)
  {
    goto LABEL_46;
  }

LABEL_55:
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  if (kAVHCScope)
  {
    v45 = *kAVHCScope;
    if (!v45)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v45 = MEMORY[0x277D86220];
    v46 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *v60 = 136315650;
    v61 = "AVHapticClient.mm";
    v62 = 1024;
    v63 = 1226;
    v64 = 2080;
    v65 = "[AVHapticClient setupConnectionWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v45, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done connecting", v60, 0x1Cu);
  }

LABEL_64:
  v47 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);

  return v47;
}

void __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleServerConnectionInterruption];
}

void __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleServerConnectionInvalidation];
}

void __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2_143(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "AVHapticClient.mm";
      v8 = 1024;
      v9 = 1201;
      v10 = 2080;
      v11 = "[AVHapticClient setupConnectionWithOptions:error:]_block_invoke_2";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Failed setting options / retrieving client ID from server", &v6, 0x1Cu);
    }
  }

LABEL_9:
  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7 = *(self + 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__AVHapticClient_getAsyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_2781C9470;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __57__AVHapticClient_getAsyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v11 = 136316418;
      v12 = "AVHapticClient.mm";
      v13 = 1024;
      v14 = 1235;
      v15 = 2080;
      v16 = "[AVHapticClient getAsyncDelegateForMethod:errorHandler:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Async XPC call for '%@' (client ID 0x%x) failed: %@", &v11, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7 = *(self + 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__AVHapticClient_getSyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_2781C9470;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __56__AVHapticClient_getSyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v11 = 136316418;
      v12 = "AVHapticClient.mm";
      v13 = 1024;
      v14 = 1246;
      v15 = 2080;
      v16 = "[AVHapticClient getSyncDelegateForMethod:errorHandler:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Sync XPC call for '%@' (client ID 0x%x) failed: %@", &v11, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

- (void)disconnect
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(AVHapticClient *)self connected])
  {
    return;
  }

  [(AVHapticClient *)self setConnected:0];
  if (!kAVHCScope)
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
    goto LABEL_6;
  }

  v3 = *kAVHCScope;
  if (v3)
  {
LABEL_6:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 1257;
      v11 = 2080;
      v12 = "[AVHapticClient disconnect]";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Invalidating...", &v7, 0x1Cu);
    }
  }

  [*(self + 1) invalidate];
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "AVHapticClient.mm";
    v9 = 1024;
    v10 = 1259;
    v11 = 2080;
    v12 = "[AVHapticClient disconnect]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done disconnecting", &v7, 0x1Cu);
  }
}

- (void)setChannelKeys:(id)keys
{
  keysCopy = keys;
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:keysCopy copyItems:1];
  v5 = *(self + 26);
  *(self + 26) = v4;
}

- (BOOL)setPlayerBehavior:(unint64_t)behavior error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v24 = "AVHapticClient.mm";
    v25 = 1024;
    v26 = 1289;
    v27 = 2080;
    v28 = "[AVHapticClient setPlayerBehavior:error:]";
    v29 = 1024;
    behaviorCopy = behavior;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling server with player behavior %u", buf, 0x22u);
  }

LABEL_8:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__AVHapticClient_setPlayerBehavior_error___block_invoke;
  v16[3] = &unk_2781C93A8;
  v16[4] = &v17;
  v10 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__AVHapticClient_setPlayerBehavior_error___block_invoke_2;
  v15[3] = &unk_2781C93A8;
  v15[4] = &v17;
  [v10 setPlayerBehavior:behavior reply:v15];
  if (error)
  {
    *error = v18[5];
  }

  if (kAVHCScope)
  {
    v11 = *kAVHCScope;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "AVHapticClient.mm";
    v25 = 1024;
    v26 = 1298;
    v27 = 2080;
    v28 = "[AVHapticClient setPlayerBehavior:error:]";
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Exited", buf, 0x1Cu);
  }

LABEL_17:
  v13 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v13;
}

void __42__AVHapticClient_setPlayerBehavior_error___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 1295;
      v11 = 2080;
      v12 = "[AVHapticClient setPlayerBehavior:error:]_block_invoke_2";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v7, 0x26u);
    }
  }

LABEL_9:
}

- (void)clearAssignedChannels
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__1;
  v4[4] = __Block_byref_object_dispose__1;
  v5 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__AVHapticClient_clearAssignedChannels__block_invoke;
  v3[3] = &unk_2781C93A8;
  v3[4] = v4;
  v2 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v3];
  [v2 releaseChannels];

  _Block_object_dispose(v4, 8);
}

- (BOOL)requestAssignedChannels:(unint64_t)channels error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1313;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient requestAssignedChannels:error:]";
    *&buf[28] = 1024;
    *&buf[30] = channels;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling server with request for %u channels", buf, 0x22u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__AVHapticClient_requestAssignedChannels_error___block_invoke;
  v19[3] = &unk_2781C93A8;
  v19[4] = buf;
  v10 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v19];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__AVHapticClient_requestAssignedChannels_error___block_invoke_2;
  v16[3] = &unk_2781C9498;
  v16[4] = buf;
  objc_copyWeak(&v17, &location);
  [v10 requestChannels:channels reply:v16];
  v11 = *(*&buf[8] + 40);
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v20 = 136315650;
    v21 = "AVHapticClient.mm";
    v22 = 1024;
    v23 = 1331;
    v24 = 2080;
    v25 = "[AVHapticClient requestAssignedChannels:error:]";
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done requesting channels", v20, 0x1Cu);
  }

LABEL_17:
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  return v11 == 0;
}

void __48__AVHapticClient_requestAssignedChannels_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315906;
    v12 = "AVHapticClient.mm";
    v13 = 1024;
    v14 = 1321;
    v15 = 2080;
    v16 = "[AVHapticClient requestAssignedChannels:error:]_block_invoke_2";
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Server returned count of %u", &v11, 0x22u);
  }

LABEL_8:
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setChannelKeys:v5];
  }
}

- (BOOL)removeAssignedChannelID:(unint64_t)d error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1337;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient removeAssignedChannelID:error:]";
    *&buf[28] = 1024;
    *&buf[30] = d;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling server with request to remove channelID %u", buf, 0x22u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__AVHapticClient_removeAssignedChannelID_error___block_invoke;
  v17[3] = &unk_2781C93A8;
  v17[4] = buf;
  v10 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__AVHapticClient_removeAssignedChannelID_error___block_invoke_2;
  v16[3] = &unk_2781C93A8;
  v16[4] = buf;
  [v10 removeChannel:d reply:v16];
  v11 = *(*&buf[8] + 40);
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v18 = 136315650;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 1349;
    v22 = 2080;
    v23 = "[AVHapticClient removeAssignedChannelID:error:]";
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done removing channel", v18, 0x1Cu);
  }

LABEL_17:
  _Block_object_dispose(buf, 8);

  return v11 == 0;
}

- (void)handleServerConnectionInterruption
{
  v32 = *MEMORY[0x277D85DE8];
  clientID = [(AVHapticClient *)self clientID];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 1356;
    v28 = 2080;
    v29 = "[AVHapticClient handleServerConnectionInterruption]";
    v30 = 1024;
    v31 = clientID;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: [xpc] Entered (due to connection interruption) for client ID 0x%x", buf, 0x22u);
  }

LABEL_8:
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4811 userInfo:0];
  v7 = *(self + 5);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  [(AVHapticClient *)self callSequenceFinishedHandlersWithError:v6];
  objc_initWeak(&location, self);
  v8 = *(self + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AVHapticClient_handleServerConnectionInterruption__block_invoke;
  block[3] = &unk_2781C94C0;
  objc_copyWeak(&v22, &location);
  v9 = v6;
  v21 = v9;
  dispatch_async(v8, block);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(AVHapticClient *)selfCopy running])
  {
    asyncStopCallback = [(AVHapticClient *)selfCopy asyncStopCallback];
    v12 = asyncStopCallback == 0;

    if (!v12)
    {
      if (kAVHCScope)
      {
        v13 = *kAVHCScope;
        if (!v13)
        {
LABEL_19:
          asyncStopCallback2 = [(AVHapticClient *)selfCopy asyncStopCallback];
          if ([(AVHapticClient *)selfCopy disconnecting])
          {
            v16 = 3;
          }

          else
          {
            v16 = -1;
          }

          asyncStopCallback2[2](asyncStopCallback2, v16);

          v17 = *(selfCopy + 27);
          *(selfCopy + 27) = 0;

          goto LABEL_23;
        }
      }

      else
      {
        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v25 = "AVHapticClient.mm";
        v26 = 1024;
        v27 = 1375;
        v28 = 2080;
        v29 = "[AVHapticClient handleServerConnectionInterruption]";
        _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: We were running, so call async stopped callback", buf, 0x1Cu);
      }

      goto LABEL_19;
    }
  }

LABEL_23:
  objc_sync_exit(selfCopy);

  *(selfCopy + 25) = -1;
  *(selfCopy + 148) = 0;
  [(AVHapticClient *)selfCopy setState:0];
  if (kAVHCScope)
  {
    v18 = *kAVHCScope;
    if (!v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 1383;
    v28 = 2080;
    v29 = "[AVHapticClient handleServerConnectionInterruption]";
    v30 = 1024;
    v31 = clientID;
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done handling crash for client ID 0x%x", buf, 0x22u);
  }

LABEL_30:
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __52__AVHapticClient_handleServerConnectionInterruption__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained completionCallback];

  if (v3)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
LABEL_9:
        v6 = [WeakRetained completionCallback];
        v6[2](v6, *(a1 + 32));

        [WeakRetained setCompletionCallback:0];
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 1367;
      v11 = 2080;
      v12 = "[AVHapticClient handleServerConnectionInterruption]_block_invoke";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: We were waiting for a completion callback, so call it now", &v7, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)handleServerConnectionInvalidation
{
  v19 = *MEMORY[0x277D85DE8];
  clientID = [(AVHapticClient *)self clientID];
  if ([(AVHapticClient *)self connected])
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
LABEL_12:
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4811 userInfo:0];
        v7 = *(self + 5);
        if (v7)
        {
          (*(v7 + 16))(v7, v5);
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "AVHapticClient.mm";
      v13 = 1024;
      v14 = 1390;
      v15 = 2080;
      v16 = "[AVHapticClient handleServerConnectionInvalidation]";
      v17 = 1024;
      v18 = clientID;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: [xpc] Entered (due to connection invalidation) for client ID 0x%x", &v11, 0x22u);
    }

    goto LABEL_12;
  }

  if (!kAVHCScope)
  {
    v5 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
LABEL_15:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315906;
      v12 = "AVHapticClient.mm";
      v13 = 1024;
      v14 = 1398;
      v15 = 2080;
      v16 = "[AVHapticClient handleServerConnectionInvalidation]";
      v17 = 1024;
      v18 = clientID;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Entered (due to client disconnect) for client ID 0x%x", &v11, 0x22u);
    }

    goto LABEL_17;
  }

  v5 = *kAVHCScope;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315906;
    v12 = "AVHapticClient.mm";
    v13 = 1024;
    v14 = 1400;
    v15 = 2080;
    v16 = "[AVHapticClient handleServerConnectionInvalidation]";
    v17 = 1024;
    v18 = clientID;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done handling disconnect for client ID 0x%x", &v11, 0x22u);
  }
}

- (unsigned)calculateHapticCommandParamCurveMemorySize:(unsigned int)size
{
  v23 = *MEMORY[0x277D85DE8];
  if (size < 0x11)
  {
    v5 = 1;
  }

  else
  {
    v3 = (size - 16) / 0xF;
    if (size - 16 == 15 * v3)
    {
      v4 = (size - 16) / 0xF;
    }

    else
    {
      v4 = v3 + 1;
    }

    v5 = v4 + 1;
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v6 = *kAVHCScope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v9 = 136316674;
          v10 = "AVHapticClient.mm";
          v11 = 1024;
          v12 = 1426;
          v13 = 2080;
          v14 = "[AVHapticClient calculateHapticCommandParamCurveMemorySize:]";
          v15 = 1024;
          v16 = v5;
          v17 = 1024;
          v18 = v5 + 2;
          v19 = 1024;
          v20 = 168;
          v21 = 1024;
          v22 = 168 * (v5 + 2);
          _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: %u sub curves, %u HapticCommands in total, sizeof(HapticCommand):%u, total size:%u bytes ", &v9, 0x34u);
        }
      }
    }
  }

  return 168 * (v5 + 2);
}

- (void)destroySharedMemory
{
  obj = self;
  objc_sync_enter(obj);
  destroyHapticCommandWriter();
  *(obj + 2) = 0;
  objc_sync_exit(obj);
}

- (void)sequenceFinished:(unint64_t)finished error:(id)error
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136316162;
    v26 = "AVHapticClient.mm";
    v28 = 1443;
    v29 = 2080;
    v27 = 1024;
    v30 = "[AVHapticClient sequenceFinished:error:]";
    v31 = 1024;
    *v32 = [(AVHapticClient *)self clientID];
    v32[2] = 1024;
    *&v32[3] = finished;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side sequence finish callback for client 0x%x, seq %u", &v25, 0x28u);
  }

LABEL_8:
  std::mutex::lock((self + 48));
  v10 = *(self + 15);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = (self + 120);
  do
  {
    v12 = *(v10 + 4);
    v13 = v12 >= finished;
    v14 = v12 < finished;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *&v10[8 * v14];
  }

  while (v10);
  if (v11 != (self + 120) && v11[4] <= finished)
  {
    handler = [v11[5] handler];
    [v11[5] setRunning:0];
    if ([v11[5] detached])
    {
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v17 = *kAVHCScope;
          if (v17)
          {
            v18 = v17;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v25 = 136315650;
              v26 = "AVHapticClient.mm";
              v27 = 1024;
              v28 = 1452;
              v29 = 2080;
              v30 = "[AVHapticClient sequenceFinished:error:]";
              _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Deleting finished handler block for detached sequence", &v25, 0x1Cu);
            }
          }
        }
      }

      std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(self + 14, v11);
    }

    std::mutex::unlock((self + 48));
    if (handler)
    {
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v19 = *kAVHCScope;
          if (v19)
          {
            v20 = v19;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v21 = MEMORY[0x21606F540](handler);
              v25 = 136315906;
              v26 = "AVHapticClient.mm";
              v27 = 1024;
              v28 = 1458;
              v29 = 2080;
              v30 = "[AVHapticClient sequenceFinished:error:]";
              v31 = 2048;
              *v32 = v21;
              _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling cached sequence finished handler block %p", &v25, 0x26u);
            }
          }
        }
      }

      (*(handler + 16))(handler, errorCopy);
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v22 = *kAVHCScope;
          if (v22)
          {
            v23 = v22;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              clientID = [(AVHapticClient *)self clientID];
              v25 = 136315906;
              v26 = "AVHapticClient.mm";
              v27 = 1024;
              v28 = 1460;
              v29 = 2080;
              v30 = "[AVHapticClient sequenceFinished:error:]";
              v31 = 1024;
              *v32 = clientID;
              _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client-side sequence finish callback done for client 0x%x", &v25, 0x22u);
            }
          }
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
LABEL_16:
    std::mutex::unlock((self + 48));
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v15 = *kAVHCScope;
      if (v15)
      {
        handler = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v25 = 136315906;
          v26 = "AVHapticClient.mm";
          v27 = 1024;
          v28 = 1463;
          v29 = 2080;
          v30 = "[AVHapticClient sequenceFinished:error:]";
          v31 = 1024;
          *v32 = finished;
          _os_log_impl(&dword_21569A000, handler, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No cached sequence finished handler block for seq %u", &v25, 0x22u);
        }

LABEL_43:
      }
    }
  }
}

- (void)clientCompletedWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "AVHapticClient.mm";
    v19 = 1024;
    v20 = 1472;
    v21 = 2080;
    v22 = "[AVHapticClient clientCompletedWithError:]";
    v23 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side (async) finish completion callback for client 0x%x called from server", buf, 0x22u);
  }

LABEL_8:
  objc_initWeak(&location, self);
  v8 = *(self + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__AVHapticClient_clientCompletedWithError___block_invoke;
  block[3] = &unk_2781C94C0;
  objc_copyWeak(&v15, &location);
  v9 = errorCopy;
  v14 = v9;
  dispatch_async(v8, block);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v10 = *kAVHCScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)self clientID];
          *buf = 136315906;
          v18 = "AVHapticClient.mm";
          v19 = 1024;
          v20 = 1491;
          v21 = 2080;
          v22 = "[AVHapticClient clientCompletedWithError:]";
          v23 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client-side finish completionCallback done for client 0x%x", buf, 0x22u);
        }
      }
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __43__AVHapticClient_clientCompletedWithError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v18 = 136315650;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 1488;
    v22 = 2080;
    v23 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
    v16 = "%25s:%-5d %s: AVHapticClient 'strongSelf' is nil";
    goto LABEL_30;
  }

  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 1477;
    v22 = 2080;
    v23 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
    v24 = 1024;
    LODWORD(v25) = [WeakRetained clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Async dispatch: preparing to call completionCallback for client 0x%x", &v18, 0x22u);
  }

LABEL_12:
  v7 = [WeakRetained completionCallback];
  v8 = v7 == 0;

  if (v8)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v18 = 136315650;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 1484;
    v22 = 2080;
    v23 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
    v16 = "%25s:%-5d %s: strongSelf.completionCallback is nil";
LABEL_30:
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, v16, &v18, 0x1Cu);
LABEL_31:

    goto LABEL_32;
  }

  if (!kAVHCScope)
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    goto LABEL_20;
  }

  v9 = *kAVHCScope;
  if (v9)
  {
LABEL_20:
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained completionCallback];
      v13 = MEMORY[0x21606F540]();
      v18 = 136315906;
      v19 = "AVHapticClient.mm";
      v20 = 1024;
      v21 = 1479;
      v22 = 2080;
      v23 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling completionCallback %p and then setting to nil", &v18, 0x26u);
    }
  }

  v14 = [WeakRetained completionCallback];
  v14[2](v14, *(a1 + 32));

  [WeakRetained setCompletionCallback:0];
LABEL_32:
}

- (void)clientStoppedForReason:(unint64_t)reason error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136316162;
    v21 = "AVHapticClient.mm";
    v23 = 1496;
    v24 = 2080;
    v22 = 1024;
    v25 = "[AVHapticClient clientStoppedForReason:error:]";
    v26 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    v28 = 1024;
    reasonCopy = reason;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side (async) stop callback for client 0x%x, reason %d", &v20, 0x28u);
  }

LABEL_8:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  asyncStopCallback = [(AVHapticClient *)selfCopy asyncStopCallback];
  v12 = asyncStopCallback == 0;

  if (!v12)
  {
    if (![(AVHapticClient *)selfCopy running])
    {
      if (kAVHCScope)
      {
        v13 = *kAVHCScope;
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315650;
        v21 = "AVHapticClient.mm";
        v22 = 1024;
        v23 = 1499;
        v24 = 2080;
        v25 = "[AVHapticClient clientStoppedForReason:error:]";
        _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client thinks it is not running.  Did we just get a call to stop?", &v20, 0x1Cu);
      }
    }

LABEL_17:
    [(AVHapticClient *)selfCopy setState:0];
    asyncStopCallback2 = [(AVHapticClient *)selfCopy asyncStopCallback];
    asyncStopCallback2[2](asyncStopCallback2, reason);

    v16 = *(selfCopy + 27);
    *(selfCopy + 27) = 0;
  }

  objc_sync_exit(selfCopy);

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v17 = *kAVHCScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)selfCopy clientID];
          v20 = 136315906;
          v21 = "AVHapticClient.mm";
          v22 = 1024;
          v23 = 1505;
          v24 = 2080;
          v25 = "[AVHapticClient clientStoppedForReason:error:]";
          v26 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client-side (async) stop callback done for client 0x%x", &v20, 0x22u);
        }
      }
    }
  }
}

- (void)clientDisconnectingForReason:(unint64_t)reason error:(id)error
{
  reasonCopy = reason;
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136316162;
    v11 = "AVHapticClient.mm";
    v13 = 1510;
    v14 = 2080;
    v12 = 1024;
    v15 = "[AVHapticClient clientDisconnectingForReason:error:]";
    v16 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    v18 = 1024;
    v19 = reasonCopy;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side call for client 0x%x with disconnect reason %d", &v10, 0x28u);
  }

LABEL_8:
  *(self + 148) = 1;
}

- (uint64_t)doInit
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

void __36__AVHapticClient_allocateResources___block_invoke_2_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AVHapticClient.mm";
    v2 = 1024;
    v3 = 202;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(sharedBufferSize > 0) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

- (void)scheduleParameterCurve:(os_log_t)log curve:atTime:channel:error:.cold.1(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "AVHapticClient.mm";
  *(buf + 6) = 1024;
  *(buf + 14) = 796;
  *(buf + 9) = 2080;
  *(buf + 20) = "[AVHapticClient scheduleParameterCurve:curve:atTime:channel:error:]";
  *(buf + 14) = 1024;
  *(buf + 30) = a1;
  _os_log_impl(&dword_21569A000, log, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Client 0x%x: doScheduleParamCurve failed!", buf, 0x22u);
}

- (void)scheduleParameterCurve:curve:atTime:channel:error:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AVHapticClient.mm";
    v2 = 1024;
    v3 = 798;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(result) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

@end