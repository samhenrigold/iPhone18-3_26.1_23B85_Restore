@interface AVHapticPlayer
+ (BOOL)isSupported;
+ (BOOL)supportsHaptics;
- (AVHapticPlayer)initWithOptions:(id)options error:(id *)error;
- (AVHapticPlayer)initWithSessionID:(unsigned int)d error:(id *)error;
- (BOOL)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply;
- (BOOL)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply;
- (BOOL)doInitWithOptions:(id)options error:(id *)error;
- (BOOL)enableSequenceLooping:(unint64_t)looping enable:(BOOL)enable error:(id *)error;
- (BOOL)finishWithCompletionHandler:(id)handler;
- (BOOL)loadAndPrepareHapticSequenceFromData:(id)data reply:(id)reply;
- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)events reply:(id)reply;
- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)pattern reply:(id)reply;
- (BOOL)loadHapticEvent:(id)event reply:(id)reply;
- (BOOL)prepareHapticSequence:(unint64_t)sequence error:(id *)error;
- (BOOL)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (BOOL)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (BOOL)removeChannel:(id)channel error:(id *)error;
- (BOOL)setBehavior:(unint64_t)behavior error:(id *)error;
- (BOOL)setNumberOfChannels:(unint64_t)channels error:(id *)error;
- (BOOL)setSequenceLoopLength:(unint64_t)length length:(float)a4 error:(id *)error;
- (BOOL)setSequencePlaybackRate:(unint64_t)rate rate:(float)a4 error:(id *)error;
- (NSArray)channels;
- (id)addChannel:(id *)channel;
- (id)connectionErrorHandler;
- (id)createOptionsFromAudioSessionID:(unsigned int)d shared:(BOOL)shared bypassAudioSession:(BOOL)session;
- (void)allocateRenderResourcesWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deallocateRenderResources;
- (void)invalidateChannels;
- (void)prewarmWithCompletionHandler:(id)handler;
- (void)queryServerCapabilities:(id)capabilities reply:(id)reply;
- (void)releaseChannels;
- (void)setConnectionErrorHandler:(id)handler;
- (void)startRunningWithCompletionHandler:(id)handler;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunningWithCompletionHandler:(id)handler;
@end

@implementation AVHapticPlayer

+ (BOOL)supportsHaptics
{
  if (+[AVHapticPlayer supportsHaptics]::sCheckServer_Once != -1)
  {
    +[AVHapticPlayer supportsHaptics];
  }

  return +[AVHapticPlayer supportsHaptics]::sHapticsSupported;
}

uint64_t __33__AVHapticPlayer_supportsHaptics__block_invoke(PlatformUtilities_iOS *a1)
{
  result = PlatformUtilities_iOS::ProductSupportsClosedLoopHaptics(a1);
  +[AVHapticPlayer supportsHaptics]::sHapticsSupported = result;
  return result;
}

- (void)stopPrewarm
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136315906;
    v11 = "AVHapticPlayer.mm";
    v12 = 1024;
    v13 = 665;
    v14 = 2080;
    v15 = "[AVHapticPlayer stopPrewarm]";
    v16 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop prewarm: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v8 = [client2 clientID] == -1;

  if (v8)
  {
    v9 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 666, "[AVHapticPlayer stopPrewarm]", "self.client.clientID != kInvalidClientID", -4812, &v9);
  }

  else
  {
    [(AVHapticClient *)selfCopy->_client stopPrewarm];
  }

  objc_sync_exit(selfCopy);
}

+ (BOOL)isSupported
{
  if (+[AVHapticPlayer supportsHaptics])
  {
    return 1;
  }

  return +[AVHapticPlayer supportsAudio];
}

- (id)createOptionsFromAudioSessionID:(unsigned int)d shared:(BOOL)shared bypassAudioSession:(BOOL)session
{
  sessionCopy = session;
  sharedCopy = shared;
  v7 = MEMORY[0x277CBEB38];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&d];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:sharedCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:sessionCopy];
  v11 = [v7 dictionaryWithObjectsAndKeys:{v8, @"AudioSessionID", v9, @"AudioSessionIsShared", v10, @"BypassAudioSession", 0}];

  return v11;
}

- (BOOL)doInitWithOptions:(id)options error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  stopRunningHandler = self->_stopRunningHandler;
  self->_stopRunningHandler = 0;

  self->_resourcesAllocated = 0;
  self->_behavior = 0;
  v8 = [[AVHapticClient alloc] initWithOptions:optionsCopy error:error];
  client = self->_client;
  self->_client = v8;

  v10 = self->_client;
  if (v10)
  {
    [(AVHapticClient *)v10 setConnectionCallback:&__block_literal_global_67_0];
  }

  else
  {
    if (kAVHCScope)
    {
      v11 = *kAVHCScope;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "AVHapticPlayer.mm";
      v16 = 1024;
      v17 = 249;
      v18 = 2080;
      v19 = "[AVHapticPlayer doInitWithOptions:error:]";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: exited with nil", &v14, 0x1Cu);
    }
  }

LABEL_10:

  return v10 != 0;
}

void __42__AVHapticPlayer_doInitWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "AVHapticPlayer.mm";
    v7 = 1024;
    v8 = 253;
    v9 = 2080;
    v10 = "[AVHapticPlayer doInitWithOptions:error:]_block_invoke";
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Connection error", &v5, 0x1Cu);
  }

LABEL_8:
}

- (AVHapticPlayer)initWithSessionID:(unsigned int)d error:(id *)error
{
  v5 = *&d;
  v21 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 259;
    v19 = 2080;
    v20 = "[AVHapticPlayer initWithSessionID:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: initWithSessionID entered", buf, 0x1Cu);
  }

LABEL_8:
  v14.receiver = self;
  v14.super_class = AVHapticPlayer;
  v9 = [(AVHapticPlayer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v11 = [(AVHapticPlayer *)v9 createOptionsFromAudioSessionID:v5 shared:0 bypassAudioSession:0];
    if ([(AVHapticPlayer *)v10 doInitWithOptions:v11 error:error])
    {
LABEL_18:

      return v10;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
LABEL_15:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "AVHapticPlayer.mm";
      v17 = 1024;
      v18 = 268;
      v19 = 2080;
      v20 = "[AVHapticPlayer initWithSessionID:error:]";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithSessionID exited", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v11 = *kAVHCScope;
  if (v11)
  {
    goto LABEL_15;
  }

  return 0;
}

- (AVHapticPlayer)initWithOptions:(id)options error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 275;
    v18 = 2080;
    v19 = "[AVHapticPlayer initWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: initWithOptions entered", buf, 0x1Cu);
  }

LABEL_8:
  v13.receiver = self;
  v13.super_class = AVHapticPlayer;
  v9 = [(AVHapticPlayer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    if ([(AVHapticPlayer *)v9 doInitWithOptions:optionsCopy error:error])
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (kAVHCScope)
    {
      v10 = *kAVHCScope;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "AVHapticPlayer.mm";
      v16 = 1024;
      v17 = 283;
      v18 = 2080;
      v19 = "[AVHapticPlayer initWithOptions:error:]";
      _os_log_impl(&dword_21569A000, &v10->super, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithOptions exited", buf, 0x1Cu);
    }
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 290;
    v19 = 2080;
    v20 = "[AVHapticPlayer dealloc]";
    v21 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc entered for player %p", buf, 0x26u);
  }

LABEL_8:
  [(AVHapticPlayer *)self releaseChannels];
  client = [(AVHapticPlayer *)self client];
  objc_sync_enter(client);
  client2 = [(AVHapticPlayer *)self client];
  v7 = [client2 clientID] == -1;

  if (!v7)
  {
    client3 = [(AVHapticPlayer *)self client];
    [client3 stopRunning];
  }

  objc_sync_exit(client);

  if (self->_resourcesAllocated)
  {
    self->_resourcesAllocated = 0;
    client4 = [(AVHapticPlayer *)self client];
    v10 = [client4 clientID] == -1;

    if (!v10)
    {
      [(AVHapticClient *)self->_client releaseResources];
    }

    [(AVHapticPlayer *)self invalidateChannels];
  }

  [(AVHapticClient *)self->_client disconnect];
  client = self->_client;
  self->_client = 0;

  if (kAVHCScope)
  {
    v12 = *kAVHCScope;
    if (!v12)
    {
      goto LABEL_21;
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
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 308;
    v19 = 2080;
    v20 = "[AVHapticPlayer dealloc]";
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc exited", buf, 0x1Cu);
  }

LABEL_21:
  v14.receiver = self;
  v14.super_class = AVHapticPlayer;
  [(AVHapticPlayer *)&v14 dealloc];
}

- (void)queryServerCapabilities:(id)capabilities reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  replyCopy = reply;
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
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)self client];
    *buf = 136315906;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 313;
    v20 = 2080;
    v21 = "[AVHapticPlayer queryServerCapabilities:reply:]";
    v22 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client = self->_client;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__AVHapticPlayer_queryServerCapabilities_reply___block_invoke;
  v14[3] = &unk_2781C9958;
  v14[4] = self;
  v13 = replyCopy;
  v15 = v13;
  [(AVHapticClient *)client queryServerCapabilities:capabilitiesCopy reply:v14];
}

void __48__AVHapticPlayer_queryServerCapabilities_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
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

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) client];
      v11 = 136315906;
      v12 = "AVHapticPlayer.mm";
      v13 = 1024;
      v14 = 315;
      v15 = 2080;
      v16 = "[AVHapticPlayer queryServerCapabilities:reply:]_block_invoke";
      v17 = 2048;
      v18 = [v10 clientID];
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: clientID: 0x%lx: call failed", &v11, 0x26u);
    }
  }

LABEL_9:
  (*(*(a1 + 40) + 16))();
}

- (BOOL)setBehavior:(unint64_t)behavior error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136316162;
    v19 = "AVHapticPlayer.mm";
    v20 = 1024;
    v21 = 323;
    v22 = 2080;
    v23 = "[AVHapticPlayer setBehavior:error:]";
    v24 = 2048;
    clientID = [client clientID];
    v26 = 1024;
    behaviorCopy = behavior;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx behavior: %u", buf, 0x2Cu);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v12 = [client2 clientID] == -1;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 324, "[AVHapticPlayer setBehavior:error:]", "self.client.clientID != kInvalidClientID", -4812, error);
    LOBYTE(v13) = 0;
  }

  else if (selfCopy->_behavior == behavior)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    client = selfCopy->_client;
    v17 = 0;
    v13 = [(AVHapticClient *)client setPlayerBehavior:behavior error:&v17];
    v15 = v17;
    if (v13)
    {
      selfCopy->_behavior = behavior;
    }

    else
    {
      v15 = v15;
      *error = v15;
    }
  }

  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)setNumberOfChannels:(unint64_t)channels error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136316162;
    v36 = "AVHapticPlayer.mm";
    v37 = 1024;
    v38 = 382;
    v39 = 2080;
    v40 = "[AVHapticPlayer setNumberOfChannels:error:]";
    v41 = 2048;
    clientID = [client clientID];
    v43 = 1024;
    channelsCopy = channels;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: clientID: 0x%lx numberOfChannels: %u", buf, 0x2Cu);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v12 = [client2 clientID] == -1;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 383, "[AVHapticPlayer setNumberOfChannels:error:]", "self.client.clientID != kInvalidClientID", -4812, error);
    objc_sync_exit(selfCopy);
    v14 = 0;
    v15 = selfCopy;
    goto LABEL_31;
  }

  if (![(AVHapticClient *)selfCopy->_client running])
  {
    [(AVHapticClient *)selfCopy->_client clearAssignedChannels];
    client = selfCopy->_client;
    v33 = 0;
    v17 = [(AVHapticClient *)client requestAssignedChannels:channels error:&v33];
    v15 = v33;
    if (v17)
    {
      channelKeys = [(AVHapticClient *)selfCopy->_client channelKeys];
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = channelKeys;
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v20)
      {
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [[AVHapticPlayerChannel alloc] initWithChannelID:*(*(&v29 + 1) + 8 * i) client:selfCopy->_client];
            [(NSMutableArray *)v18 addObject:v23];
          }

          v20 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v20);
      }

      [(AVHapticPlayer *)selfCopy releaseChannels];
      channelArray = selfCopy->_channelArray;
      selfCopy->_channelArray = v18;
    }

    goto LABEL_28;
  }

  if (!kAVHCScope)
  {
    v13 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v13 = *kAVHCScope;
  if (v13)
  {
LABEL_24:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "AVHapticPlayer.mm";
      v37 = 1024;
      v38 = 398;
      v39 = 2080;
      v40 = "[AVHapticPlayer setNumberOfChannels:error:]";
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Can't set channel count while player is running", buf, 0x1Cu);
    }
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4806 userInfo:0];
LABEL_28:
  objc_sync_exit(selfCopy);

  if (error)
  {
    v26 = v15;
    *error = v15;
  }

  v14 = v15 == 0;
LABEL_31:

  return v14;
}

- (id)addChannel:(id *)channel
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136316162;
    v52 = "AVHapticPlayer.mm";
    v53 = 1024;
    v54 = 411;
    v55 = 2080;
    v56 = "[AVHapticPlayer addChannel:]";
    v57 = 2048;
    *v58 = selfCopy;
    *&v58[8] = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: player %p, clientID: 0x%lx", buf, 0x30u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v9 = [client2 clientID] == -1;

  if (v9)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 413, "[AVHapticPlayer addChannel:]", "clientID invalid", -4812, channel);
    goto LABEL_13;
  }

  location = &selfCopy->_channelArray;
  if (![(AVHapticClient *)selfCopy->_client requestAssignedChannels:[(NSMutableArray *)selfCopy->_channelArray count]+ 1 error:channel])
  {
LABEL_13:
    v12 = 0;
    goto LABEL_56;
  }

  channelKeys = [(AVHapticClient *)selfCopy->_client channelKeys];
  if (*location)
  {
    v11 = *location;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v13 = v11;
  v14 = [v11 count];
  v37 = [channelKeys count];
  if (kAVHCScope)
  {
    v15 = *kAVHCScope;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v52 = "AVHapticPlayer.mm";
    v54 = 422;
    v55 = 2080;
    v53 = 1024;
    v56 = "[AVHapticPlayer addChannel:]";
    v57 = 1024;
    *v58 = v14;
    *&v58[4] = 1024;
    *&v58[6] = v37;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Total channels was %u, now %u", buf, 0x28u);
  }

LABEL_22:
  if (v37 != v14 + 1)
  {
    [AVHapticPlayer addChannel:];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = channelKeys;
  v17 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v17)
  {
    v18 = *v46;
    while (1)
    {
      v19 = 0;
LABEL_26:
      if (*v46 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v45 + 1) + 8 * v19);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v21 = v13;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (!v23)
      {
        break;
      }

      v24 = *v42;
LABEL_30:
      v25 = 0;
      while (1)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v22);
        }

        chanID = [*(*(&v41 + 1) + 8 * v25) chanID];
        if (chanID == [v20 unsignedIntegerValue])
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v23)
          {
            goto LABEL_30;
          }

          goto LABEL_40;
        }
      }

      v13 = v21;
      if (++v19 != v17)
      {
        goto LABEL_26;
      }

      v17 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v17)
      {
        goto LABEL_48;
      }
    }

LABEL_40:

    v13 = v21;
    v27 = [[AVHapticPlayerChannel alloc] initWithChannelID:v20 client:selfCopy->_client];
    if (kAVHCScope)
    {
      v28 = *kAVHCScope;
      if (!v28)
      {
LABEL_47:
        [v22 addObject:v27];

        goto LABEL_48;
      }
    }

    else
    {
      v28 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    v30 = v28;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      unsignedIntegerValue = [v20 unsignedIntegerValue];
      *buf = 136316162;
      v52 = "AVHapticPlayer.mm";
      v53 = 1024;
      v54 = 438;
      v55 = 2080;
      v56 = "[AVHapticPlayer addChannel:]";
      v57 = 2048;
      *v58 = v27;
      *&v58[8] = 1024;
      LODWORD(clientID) = unsignedIntegerValue;
      _os_log_impl(&dword_21569A000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding new AVHapticPlayerChannel %p to end of array with channel ID %u", buf, 0x2Cu);
    }

    goto LABEL_47;
  }

LABEL_48:

  objc_storeStrong(location, v13);
  v12 = [*location objectAtIndex:v37 - 1];
  if (!kAVHCScope)
  {
    v32 = MEMORY[0x277D86220];
    v33 = MEMORY[0x277D86220];
    goto LABEL_52;
  }

  v32 = *kAVHCScope;
  if (v32)
  {
LABEL_52:
    v34 = v32;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      chanID2 = [v12 chanID];
      *buf = 136316162;
      v52 = "AVHapticPlayer.mm";
      v53 = 1024;
      v54 = 444;
      v55 = 2080;
      v56 = "[AVHapticPlayer addChannel:]";
      v57 = 2048;
      *v58 = v12;
      *&v58[8] = 1024;
      LODWORD(clientID) = chanID2;
      _os_log_impl(&dword_21569A000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Returning channel %p (ID %u)", buf, 0x2Cu);
    }
  }

LABEL_56:
  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)removeChannel:(id)channel error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    client = [(AVHapticPlayer *)selfCopy client];
    v16 = 136316674;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 455;
    v20 = 2080;
    v21 = "[AVHapticPlayer removeChannel:error:]";
    v22 = 2048;
    v23 = selfCopy;
    v24 = 2048;
    clientID = [client clientID];
    v26 = 2048;
    v27 = channelCopy;
    v28 = 1024;
    chanID = [channelCopy chanID];
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: player %p, clientID: 0x%lx channel %p (ID %u)", &v16, 0x40u);
  }

LABEL_8:
  if ([(NSMutableArray *)selfCopy->_channelArray indexOfObject:channelCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)selfCopy->_channelArray removeObject:channelCopy];
    v13 = -[AVHapticClient removeAssignedChannelID:error:](selfCopy->_client, "removeAssignedChannelID:error:", [channelCopy chanID], error);
    [channelCopy invalidate];
    objc_sync_exit(selfCopy);

    goto LABEL_20;
  }

  objc_sync_exit(selfCopy);

  if (!kAVHCScope)
  {
    v12 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v12 = *kAVHCScope;
  if (v12)
  {
LABEL_14:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "AVHapticPlayer.mm";
      v18 = 1024;
      v19 = 463;
      v20 = 2080;
      v21 = "[AVHapticPlayer removeChannel:error:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Channel not found on player", &v16, 0x1Cu);
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4804 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_20:

  return v13;
}

- (NSArray)channels
{
  if (self->_channelArray)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConnectionErrorHandler:(id)handler
{
  v4 = MEMORY[0x21606F540](handler, a2);
  connectionErrorHandler = self->_connectionErrorHandler;
  self->_connectionErrorHandler = v4;

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__AVHapticPlayer_setConnectionErrorHandler___block_invoke;
  v6[3] = &unk_2781C8FE0;
  objc_copyWeak(&v7, &location);
  [(AVHapticClient *)self->_client setConnectionCallback:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__AVHapticPlayer_setConnectionErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained connectionErrorHandler];

    if (v5)
    {
      v6 = [v4 connectionErrorHandler];
      (v6)[2](v6, v7);
    }
  }
}

- (id)connectionErrorHandler
{
  v2 = MEMORY[0x21606F540](self->_connectionErrorHandler, a2);

  return v2;
}

- (void)invalidateChannels
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = selfCopy->_channelArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)releaseChannels
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = selfCopy->_channelArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  channelArray = selfCopy->_channelArray;
  selfCopy->_channelArray = 0;

  objc_sync_exit(selfCopy);
}

- (void)allocateRenderResourcesWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136315906;
    v20 = "AVHapticPlayer.mm";
    v21 = 1024;
    v22 = 521;
    v23 = 2080;
    v24 = "[AVHapticPlayer allocateRenderResourcesWithCompletionHandler:]";
    v25 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: allocating resources: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v11 = [client2 clientID] == -1;

  if (!v11)
  {
    if (!selfCopy->_resourcesAllocated)
    {
      client = selfCopy->_client;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __63__AVHapticPlayer_allocateRenderResourcesWithCompletionHandler___block_invoke;
      v16[3] = &unk_2781C9980;
      v16[4] = selfCopy;
      v17 = handlerCopy;
      [(AVHapticClient *)client allocateResources:v16];

      goto LABEL_23;
    }

    if (kAVHCScope)
    {
      v12 = *kAVHCScope;
      if (!v12)
      {
LABEL_21:
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, 0);
        }

        goto LABEL_23;
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
      v20 = "AVHapticPlayer.mm";
      v21 = 1024;
      v22 = 532;
      v23 = 2080;
      v24 = "[AVHapticPlayer allocateRenderResourcesWithCompletionHandler:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resources already allocated -- just call completion handler", buf, 0x1Cu);
    }

    goto LABEL_21;
  }

  v18 = 0;
  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 522, "[AVHapticPlayer allocateRenderResourcesWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v18);
  v13 = v18;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v13);
  }

LABEL_23:
  objc_sync_exit(selfCopy);
}

void __63__AVHapticPlayer_allocateRenderResourcesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    *(*(a1 + 32) + 16) = 1;
  }

  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)deallocateRenderResources
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    client = [(AVHapticPlayer *)selfCopy client];
    v9 = 136315906;
    v10 = "AVHapticPlayer.mm";
    v11 = 1024;
    v12 = 543;
    v13 = 2080;
    v14 = "[AVHapticPlayer deallocateRenderResources]";
    v15 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: deallocating resources: clientID: 0x%lx", &v9, 0x26u);
  }

LABEL_8:
  if (selfCopy->_resourcesAllocated)
  {
    selfCopy->_resourcesAllocated = 0;
    [(AVHapticClient *)selfCopy->_client releaseResources];
    [(AVHapticPlayer *)selfCopy invalidateChannels];
  }

  else
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_17;
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
      v10 = "AVHapticPlayer.mm";
      v11 = 1024;
      v12 = 550;
      v13 = 2080;
      v14 = "[AVHapticPlayer deallocateRenderResources]";
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resources already deallocated -- noop", &v9, 0x1Cu);
    }
  }

LABEL_17:
  objc_sync_exit(selfCopy);
}

- (BOOL)loadHapticEvent:(id)event reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  replyCopy = reply;
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
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)self client];
    v14 = 136315906;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 557;
    v18 = 2080;
    v19 = "[AVHapticPlayer loadHapticEvent:reply:]";
    v20 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: loading haptic event: clientID: 0x%lx", &v14, 0x26u);
  }

LABEL_8:
  v12 = [(AVHapticClient *)self->_client loadHapticEvent:eventCopy reply:replyCopy];

  return v12;
}

- (BOOL)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  formatCopy = format;
  optionsCopy = options;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)self client];
    v22 = 136316162;
    v23 = "AVHapticPlayer.mm";
    v24 = 1024;
    v25 = 563;
    v26 = 2080;
    v27 = "[AVHapticPlayer createCustomAudioEvent:format:frames:options:reply:]";
    v28 = 2048;
    clientID = [client clientID];
    v30 = 2048;
    framesCopy = frames;
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: creating custom audio event: clientID: 0x%lx, frameCount: %lu", &v22, 0x30u);
  }

LABEL_8:
  v20 = [(AVHapticClient *)self->_client createCustomAudioEvent:eventCopy format:formatCopy frames:frames options:optionsCopy reply:replyCopy];

  return v20;
}

- (BOOL)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
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
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)self client];
    v16 = 136316162;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 569;
    v20 = 2080;
    v21 = "[AVHapticPlayer copyCustomAudioEvent:options:reply:]";
    v22 = 2048;
    clientID = [client clientID];
    v24 = 1024;
    eventCopy = event;
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: copying custom audio event: clientID: 0x%lx, eventID: %u", &v16, 0x2Cu);
  }

LABEL_8:
  v14 = [(AVHapticClient *)self->_client copyCustomAudioEvent:event options:optionsCopy reply:replyCopy];

  return v14;
}

- (BOOL)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
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
    client = [(AVHapticPlayer *)self client];
    v13 = 136315906;
    v14 = "AVHapticPlayer.mm";
    v15 = 1024;
    v16 = 575;
    v17 = 2080;
    v18 = "[AVHapticPlayer referenceCustomAudioEvent:reply:]";
    v19 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: referencing custom audio event: clientID: 0x%lx", &v13, 0x26u);
  }

LABEL_8:
  v11 = [(AVHapticClient *)self->_client referenceCustomAudioEvent:event reply:replyCopy];

  return v11;
}

- (BOOL)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
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
    client = [(AVHapticPlayer *)self client];
    v13 = 136315906;
    v14 = "AVHapticPlayer.mm";
    v15 = 1024;
    v16 = 581;
    v17 = 2080;
    v18 = "[AVHapticPlayer releaseCustomAudioEvent:reply:]";
    v19 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: releasing custom audio event: clientID: 0x%lx", &v13, 0x26u);
  }

LABEL_8:
  v11 = [(AVHapticClient *)self->_client releaseCustomAudioEvent:event reply:replyCopy];

  return v11;
}

- (BOOL)loadAndPrepareHapticSequenceFromData:(id)data reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    v15 = 136315906;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 589;
    v19 = 2080;
    v20 = "[AVHapticPlayer loadAndPrepareHapticSequenceFromData:reply:]";
    v21 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loading haptic sequence from NSData: clientID: 0x%lx", &v15, 0x26u);
  }

LABEL_8:
  v13 = [(AVHapticClient *)selfCopy->_client loadAndPrepareHapticSequenceFromData:dataCopy reply:replyCopy];
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)events reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    v15 = 136315906;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 599;
    v19 = 2080;
    v20 = "[AVHapticPlayer loadAndPrepareHapticSequenceFromEvents:reply:]";
    v21 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loading and preparing haptic sequence from NSArray: clientID: 0x%lx", &v15, 0x26u);
  }

LABEL_8:
  v13 = [(AVHapticClient *)selfCopy->_client loadAndPrepareHapticSequenceFromEvents:eventsCopy reply:replyCopy];
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)pattern reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    v15 = 136315906;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 609;
    v19 = 2080;
    v20 = "[AVHapticPlayer loadAndPrepareHapticSequenceFromVibePattern:reply:]";
    v21 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loading and preparing haptic pattern: clientID: 0x%lx", &v15, 0x26u);
  }

LABEL_8:
  v13 = [(AVHapticClient *)selfCopy->_client loadAndPrepareHapticSequenceFromVibePattern:patternCopy reply:replyCopy];
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)prepareHapticSequence:(unint64_t)sequence error:(id *)error
{
  sequenceCopy = sequence;
  v21 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    client = [(AVHapticPlayer *)self client];
    v11 = 136316162;
    v12 = "AVHapticPlayer.mm";
    v13 = 1024;
    v14 = 618;
    v15 = 2080;
    v16 = "[AVHapticPlayer prepareHapticSequence:error:]";
    v17 = 1024;
    v18 = sequenceCopy;
    v19 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: sequence %u already prepared for clientID: 0x%lx - NOOP", &v11, 0x2Cu);
  }

  return 1;
}

- (BOOL)enableSequenceLooping:(unint64_t)looping enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v18 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      return [(AVHapticClient *)self->_client enableSequenceLooping:looping enable:enableCopy error:error];
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "AVHapticPlayer.mm";
    v14 = 1024;
    v15 = 632;
    v16 = 2080;
    v17 = "[AVHapticPlayer enableSequenceLooping:enable:error:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: enable sequence looping: entered", &v12, 0x1Cu);
  }

  return [(AVHapticClient *)self->_client enableSequenceLooping:looping enable:enableCopy error:error];
}

- (BOOL)setSequenceLoopLength:(unint64_t)length length:(float)a4 error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
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
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "AVHapticPlayer.mm";
    v15 = 1024;
    v16 = 638;
    v17 = 2080;
    v18 = "[AVHapticPlayer setSequenceLoopLength:length:error:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: set sequence loop length: entered", &v13, 0x1Cu);
  }

LABEL_8:
  *&v10 = a4;
  return [(AVHapticClient *)self->_client setSequenceLoopLength:length length:error error:v10];
}

- (BOOL)setSequencePlaybackRate:(unint64_t)rate rate:(float)a4 error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
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
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "AVHapticPlayer.mm";
    v15 = 1024;
    v16 = 644;
    v17 = 2080;
    v18 = "[AVHapticPlayer setSequencePlaybackRate:rate:error:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: set sequence playback rate: entered", &v13, 0x1Cu);
  }

LABEL_8:
  *&v10 = a4;
  return [(AVHapticClient *)self->_client setSequencePlaybackRate:rate rate:error error:v10];
}

- (void)prewarmWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136315906;
    v18 = "AVHapticPlayer.mm";
    v19 = 1024;
    v20 = 651;
    v21 = 2080;
    v22 = "[AVHapticPlayer prewarmWithCompletionHandler:]";
    v23 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: prewarm: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v11 = [client2 clientID] == -1;

  if (v11)
  {
    v16 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 652, "[AVHapticPlayer prewarmWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v16);
    v13 = v16;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v13);
    }
  }

  else
  {
    client = selfCopy->_client;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__AVHapticPlayer_prewarmWithCompletionHandler___block_invoke;
    v14[3] = &unk_2781C9330;
    v15 = handlerCopy;
    [(AVHapticClient *)client prewarm:v14];
    v13 = v15;
  }

  objc_sync_exit(selfCopy);
}

void __47__AVHapticPlayer_prewarmWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v4 = *kAVHCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315906;
          v8 = "AVHapticPlayer.mm";
          v9 = 1024;
          v10 = 654;
          v11 = 2080;
          v12 = "[AVHapticPlayer prewarmWithCompletionHandler:]_block_invoke";
          v13 = 2112;
          v14 = v3;
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: reply block for _client prewarm: replyError: %@", &v7, 0x26u);
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)startRunningWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  client = [(AVHapticPlayer *)selfCopy client];
  clientID = [client clientID];

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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v23 = "AVHapticPlayer.mm";
    v24 = 1024;
    v25 = 675;
    v26 = 2080;
    v27 = "[AVHapticPlayer startRunningWithCompletionHandler:]";
    v28 = 2048;
    v29 = clientID;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: start running: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v11 = [client2 clientID] == -1;

  if (!v11)
  {
    if (selfCopy->_resourcesAllocated)
    {
      objc_initWeak(buf, selfCopy);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke;
      v19[3] = &unk_2781C99A8;
      v20[1] = clientID;
      objc_copyWeak(v20, buf);
      [(AVHapticClient *)selfCopy->_client setAsyncStopCallback:v19];
      client = selfCopy->_client;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke_77;
      v17[3] = &unk_2781C9330;
      v18 = handlerCopy;
      [(AVHapticClient *)client startRunning:v17];

      objc_destroyWeak(v20);
      objc_destroyWeak(buf);
      goto LABEL_24;
    }

    if (kAVHCScope)
    {
      v14 = *kAVHCScope;
      if (!v14)
      {
LABEL_21:
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4807 userInfo:0];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v16);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "AVHapticPlayer.mm";
      v24 = 1024;
      v25 = 715;
      v26 = 2080;
      v27 = "[AVHapticPlayer startRunningWithCompletionHandler:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot start without allocating resources", buf, 0x1Cu);
    }

    goto LABEL_21;
  }

  v21 = 0;
  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 676, "[AVHapticPlayer startRunningWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v21);
  v13 = v21;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v13);
  }

LABEL_24:
  objc_sync_exit(selfCopy);
}

void __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v10 = 136316162;
    v11 = "AVHapticPlayer.mm";
    v12 = 1024;
    v13 = 681;
    v14 = 2080;
    v15 = "[AVHapticPlayer startRunningWithCompletionHandler:]_block_invoke";
    v16 = 2048;
    v17 = v6;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%lx asynchronously stopped for reason %d", &v10, 0x2Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained stopRunningHandler];

  if (v8)
  {
    if ((a2 + 1) >= 5)
    {
      v9 = -2;
    }

    else
    {
      v9 = qword_2156F3A60[a2 + 1];
    }

    v8[2](v8, v9);
  }
}

void __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke_77(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v4 = *kAVHCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315906;
          v8 = "AVHapticPlayer.mm";
          v9 = 1024;
          v10 = 707;
          v11 = 2080;
          v12 = "[AVHapticPlayer startRunningWithCompletionHandler:]_block_invoke";
          v13 = 2112;
          v14 = v3;
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: reply block for _client startRunning: replyError: %@", &v7, 0x26u);
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)stopRunning
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136315906;
    v11 = "AVHapticPlayer.mm";
    v12 = 1024;
    v13 = 727;
    v14 = 2080;
    v15 = "[AVHapticPlayer stopRunning]";
    v16 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop running: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v8 = [client2 clientID] == -1;

  if (v8)
  {
    v9 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 728, "[AVHapticPlayer stopRunning]", "self.client.clientID != kInvalidClientID", -4812, &v9);
  }

  else if (selfCopy->_resourcesAllocated)
  {
    [(AVHapticClient *)selfCopy->_client stopRunning];
  }

  objc_sync_exit(selfCopy);
}

- (void)stopRunningWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  client = [(AVHapticPlayer *)selfCopy client];
  clientID = [client clientID];

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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "AVHapticPlayer.mm";
    v21 = 1024;
    v22 = 739;
    v23 = 2080;
    v24 = "[AVHapticPlayer stopRunningWithCompletionHandler:]";
    v25 = 2048;
    v26 = clientID;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop running: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  v11 = [client2 clientID] == -1;

  if (v11)
  {
    v18 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 740, "[AVHapticPlayer stopRunningWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v18);
    v13 = v18;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v13);
    }

    goto LABEL_13;
  }

  if ([(AVHapticClient *)selfCopy->_client running])
  {
    client = selfCopy->_client;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__AVHapticPlayer_stopRunningWithCompletionHandler___block_invoke;
    v16[3] = &unk_2781C9330;
    v17 = handlerCopy;
    [(AVHapticClient *)client stopRunning:v16];
    v13 = v17;
LABEL_13:

    goto LABEL_23;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_18;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_18:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "AVHapticPlayer.mm";
      v21 = 1024;
      v22 = 750;
      v23 = 2080;
      v24 = "[AVHapticPlayer stopRunningWithCompletionHandler:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client was not running - calling completion handler immediately", buf, 0x1Cu);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_23:
  objc_sync_exit(selfCopy);
}

void __51__AVHapticPlayer_stopRunningWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v4 = *kAVHCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v7 = 136315906;
          v8 = "AVHapticPlayer.mm";
          v9 = 1024;
          v10 = 743;
          v11 = 2080;
          v12 = "[AVHapticPlayer stopRunningWithCompletionHandler:]_block_invoke";
          v13 = 2112;
          v14 = v3;
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: reply block for _client stopRunning: replyError: %@", &v7, 0x26u);
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (BOOL)finishWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayer *)selfCopy client];
    *buf = 136315906;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 762;
    v20 = 2080;
    v21 = "[AVHapticPlayer finishWithCompletionHandler:]";
    v22 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: finish with comp handler: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client2 = [(AVHapticPlayer *)selfCopy client];
  clientID2 = [client2 clientID];

  if (clientID2 == -1)
  {
    v15 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 763, "[AVHapticPlayer finishWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v15);
    v13 = v15;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v13);
    }

    v12 = 0;
  }

  else
  {
    v12 = [(AVHapticClient *)selfCopy->_client finish:handlerCopy];
  }

  objc_sync_exit(selfCopy);

  return clientID2 != -1 && v12;
}

- (void)addChannel:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AVHapticPlayer.mm";
    v2 = 1024;
    v3 = 423;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(newChannelCount == oldChannelCount + 1) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
  AudioConverterPrepare();
}

@end