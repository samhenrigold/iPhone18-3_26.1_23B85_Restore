@interface ASDDSPStream
- (ASDDSPGraph)hardwareDSP;
- (ASDDSPStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (ASDDSPStream)initWithOwningDevice:(id)device underlyingStreams:(id)streams direction:(unsigned int)direction plugin:(id)plugin;
- (BOOL)_allocateStreamingResources;
- (BOOL)addClientDSP:(id)p withKey:(unint64_t)key;
- (BOOL)addHardwareDSP:(id)p;
- (BOOL)enableBasicDSPCaptureOnGraph:(id)graph withLevel:(id)level andDebugType:(int64_t)type andMode:(int64_t)mode;
- (BOOL)graphStructureIsValid:(id)valid clientID:(unint64_t)d;
- (BOOL)removeClientDSPwithKey:(unint64_t)key;
- (BOOL)removeHardwareDSP;
- (NSArray)underlyingStreams;
- (id).cxx_construct;
- (id)_hardwareDSP;
- (id)clientDSPForClient:(unsigned int)client;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)processOutputBlock;
- (id)readInputBlock;
- (id)readIsolatedInputBlock;
- (id)writeMixBlock;
- (int64_t)getAudioCaptureRingBufferModeWithDict:(id)dict;
- (int64_t)getAudioDebugTypeWithDict:(id)dict;
- (int64_t)getDSPCaptureTypeFromDefault;
- (int64_t)graphAudioValidationMode;
- (int64_t)maximumFramesPerIOCycle;
- (void)_allocateStreamingResourcesForGraphHelper:(void *)helper;
- (void)_deallocateStreamingResources;
- (void)_resumeProcessing;
- (void)_suspendProcessing;
- (void)_updateLatency;
- (void)_updateMaximumFramesPerIOCycle;
- (void)dealloc;
- (void)doSetUnderlyingStreams:(id)streams;
- (void)enableDSPCaptureByType:(int64_t)type withGraph:(id)graph;
- (void)enableDSPCaptureInAction;
- (void)enableDSPFileInjectionOnGraph:(id)graph withFormat:(id)format;
- (void)resumeProcessing;
- (void)setBypassMode:(BOOL)mode;
- (void)setGraphAudioValidationMode:(int64_t)mode;
- (void)setIsActive:(BOOL)active;
- (void)setUnderlyingStreams:(id)streams;
- (void)sleepForNumberOfSamples:(unint64_t)samples;
- (void)startStream;
- (void)stopStream;
- (void)suspendProcessing;
- (void)updateLatency;
@end

@implementation ASDDSPStream

- (int64_t)getDSPCaptureTypeFromDefault
{
  defaults = self->_defaults;
  if (!defaults)
  {
    return 0;
  }

  v4 = [(NSUserDefaults *)defaults valueForKey:@"EnableDSPCapture"];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSPCaptureTypeBasic enabled!", buf, 2u);
    }

    v4 = 1;
  }

  v5 = [(NSUserDefaults *)self->_defaults valueForKey:@"EnableDSPCaptureOnPluginDevice"];

  if (v5)
  {
    v4 |= 2uLL;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSPCaptureTypePluginDevice enabled!", v10, 2u);
    }
  }

  v6 = [(NSUserDefaults *)self->_defaults valueForKey:@"EnableDSPCaptureOnDSPGraph"];

  if (!v6)
  {
    if (v4)
    {
      return v4;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NO DSP capture is enabled!", v8, 2u);
    }

    return 0;
  }

  v4 |= 4uLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSPCaptureTypeDSPGraph enabled!", v9, 2u);
  }

  return v4;
}

- (int64_t)getAudioDebugTypeWithDict:(id)dict
{
  dictCopy = dict;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting Audio Debug Type...", buf, 2u);
  }

  v4 = [dictCopy valueForKey:@"DebugType"];
  v5 = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v6 = 1;
      goto LABEL_15;
    }

    v11 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Using default Audio Debug Type: ReinitializeGraph!";
    v9 = &v11;
LABEL_13:
    _os_log_impl(&dword_2415D8000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_14;
  }

  if (![v4 isEqualToString:@"KeepGraphInitialized"])
  {
    if (![v5 isEqualToString:@"ReinitializeGraph"] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v12 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Using Audio Debug Type: ReinitializeGraph!";
    v9 = v12;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Debug Type: KeepGraphInitialized!", v13, 2u);
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (int64_t)getAudioCaptureRingBufferModeWithDict:(id)dict
{
  dictCopy = dict;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting Audio Capture Ring Buffer Mode...", buf, 2u);
  }

  v4 = [dictCopy valueForKey:@"RingBufferMode"];
  v5 = v4;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: None!", v8, 2u);
    }

    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"Short"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: Short!", v11, 2u);
    }

    v6 = 1;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Normal"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v6 = 2;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: Normal!", v10, 2u);
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_18;
  }

  if (![v5 isEqualToString:@"Long"])
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: Long!", v9, 2u);
  }

  v6 = 3;
LABEL_18:

  return v6;
}

- (void)enableDSPCaptureInAction
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "enableDSPCaptureInAction!", buf, 2u);
  }

  hardwareDSP = [(ASDDSPStream *)self hardwareDSP];
  if (hardwareDSP)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found graph, enabling DSP Capture in action!", v5, 2u);
    }

    getDSPCaptureTypeFromDefault = [(ASDDSPStream *)self getDSPCaptureTypeFromDefault];
    self->_DSPCaptureType = getDSPCaptureTypeFromDefault;
    [(ASDDSPStream *)self enableDSPCaptureByType:getDSPCaptureTypeFromDefault withGraph:hardwareDSP];
  }
}

- (ASDDSPStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[ASDDSPStream initWithDirection:withPlugin:]", plugin}];
  [v5 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v6}];

  return 0;
}

- (void)doSetUnderlyingStreams:(id)streams
{
  v20 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  objc_storeStrong(&self->_underlyingStreams, streams);
  self->_underlyingInputStreamCount = 0;
  self->_underlyingOutputStreamCount = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_underlyingStreams;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        direction = [*(*(&v15 + 1) + 8 * v8) direction];
        p_underlyingInputStreamCount = &self->_underlyingInputStreamCount;
        if (direction == 1869968496)
        {
          direction2 = [(ASDStream *)self direction];
          p_underlyingInputStreamCount = &self->_underlyingOutputStreamCount;
          if (direction2 == 1768845428)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"ASDDSPStream.mm" lineNumber:248 description:@"Underlying stream has a different direction than the DSP stream"];

            p_underlyingInputStreamCount = &self->_underlyingOutputStreamCount;
          }
        }

        ++*p_underlyingInputStreamCount;
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (ASDDSPStream)initWithOwningDevice:(id)device underlyingStreams:(id)streams direction:(unsigned int)direction plugin:(id)plugin
{
  v7 = *&direction;
  deviceCopy = device;
  streamsCopy = streams;
  pluginCopy = plugin;
  if (DSPGraph::ABIVersion(pluginCopy) != 4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASDDSPStream.mm" lineNumber:261 description:@"DSPGraph ABI runtime/compile-time mismatch"];
  }

  v30.receiver = self;
  v30.super_class = ASDDSPStream;
  v14 = [(ASDStream *)&v30 initWithDirection:v7 withPlugin:pluginCopy];
  v15 = v14;
  if (v14)
  {
    mHUPSource = v14->mHUPSource;
    v14->mHUPSource = 0;

    objc_storeWeak(&v15->_owningDevice, deviceCopy);
    [(ASDDSPStream *)v15 doSetUnderlyingStreams:streamsCopy];
    v15->_ioReferenceCount = 0;
    [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [objc_claimAutoreleasedReturnValue() bundleIdentifier];
    v18 = MEMORY[0x277CCACA8];
    streamName = [(ASDStream *)v15 streamName];
    v20 = [v18 stringWithFormat:@"%@.dspStream.%@.dspQueue", bundleIdentifier, streamName];
    v21 = dispatch_queue_create([v20 UTF8String], 0);
    dspQueue = v15->_dspQueue;
    v15->_dspQueue = v21;

    v23 = MEMORY[0x277CCACA8];
    streamName2 = [(ASDStream *)v15 streamName];
    v25 = [v23 stringWithFormat:@"%@.dspStream.%@.propertyQueue", bundleIdentifier, streamName2];
    v26 = dispatch_queue_create([v25 UTF8String], 0);
    propertyQueue = v15->_propertyQueue;
    v15->_propertyQueue = v26;

    [(ASDDSPStream *)v15 _updateMaximumFramesPerIOCycle];
    operator new();
  }

  return 0;
}

void __72__ASDDSPStream_initWithOwningDevice_underlyingStreams_direction_plugin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enableDSPCaptureInAction];
}

- (void)setUnderlyingStreams:(id)streams
{
  streamsCopy = streams;
  dspQueue = self->_dspQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ASDDSPStream_setUnderlyingStreams___block_invoke;
  v7[3] = &unk_278CE3BE8;
  v7[4] = self;
  v8 = streamsCopy;
  v6 = streamsCopy;
  dispatch_sync(dspQueue, v7);
}

- (NSArray)underlyingStreams
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dspQueue = self->_dspQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ASDDSPStream_underlyingStreams__block_invoke;
  v5[3] = &unk_278CE3C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dspQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setGraphAudioValidationMode:(int64_t)mode
{
  dspQueue = self->_dspQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ASDDSPStream_setGraphAudioValidationMode___block_invoke;
  v4[3] = &unk_278CE3C60;
  v4[4] = self;
  v4[5] = mode;
  dispatch_sync(dspQueue, v4);
}

uint64_t __44__ASDDSPStream_setGraphAudioValidationMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 384) = v1;
  result = *(*(a1 + 32) + 288);
  if (result)
  {
    return ASDDSPStreamHelper::setGraphAudioValidationMode(result, v1);
  }

  return result;
}

- (int64_t)graphAudioValidationMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dspQueue = self->_dspQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASDDSPStream_graphAudioValidationMode__block_invoke;
  v5[3] = &unk_278CE3C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dspQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startStream
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ASDDSPStream_startStream__block_invoke;
  block[3] = &unk_278CE3C60;
  block[4] = self;
  block[5] = a2;
  dispatch_sync(dspQueue, block);
  v4.receiver = self;
  v4.super_class = ASDDSPStream;
  [(ASDStream *)&v4 startStream];
}

uint64_t __27__ASDDSPStream_startStream__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _hardwareDSP];

  if (!v2)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ASDDSPStream.mm" lineNumber:348 description:@"DSPStreams must have hardware DSP"];
  }

  result = *(a1 + 32);
  if (!*(result + 392))
  {
    [result _updateMaximumFramesPerIOCycle];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(*(a1 + 32) + 376);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v7++) startStream];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    if (([*(a1 + 32) _allocateStreamingResources] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ASDDSPStream.mm" lineNumber:360 description:@"Couldn't allocate streaming resources"];
    }

    ++*(*(a1 + 32) + 392);
    result = *(a1 + 32);
  }

  *(result + 408) = 1;
  return result;
}

- (void)sleepForNumberOfSamples:(unint64_t)samples
{
  physicalFormat = [(ASDStream *)self physicalFormat];
  [physicalFormat sampleRate];
  v6 = samples / v5 * 1000000.0;

  usleep(v6);
}

- (void)stopStream
{
  v5.receiver = self;
  v5.super_class = ASDDSPStream;
  [(ASDStream *)&v5 stopStream];
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ASDDSPStream_stopStream__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

void *__26__ASDDSPStream_stopStream__block_invoke(void *result)
{
  v18 = *MEMORY[0x277D85DE8];
  *(result[4] + 408) = 0;
  v1 = result[4];
  v2 = *(v1 + 392);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    v5 = result;
    *(v1 + 392) = v4;
    v6 = result[4];
    if (!*(v6 + 392))
    {
      v7 = v6 + 296;
      v8 = *(v6 + 304);
      if (v8 != v6 + 296)
      {
        do
        {
          ASDDSPGraphHelper::resetGraph((v8 + 16));
          v8 = *(v8 + 8);
        }

        while (v8 != v7);
        v6 = v5[4];
      }

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v9 = *(v6 + 376);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v10)
      {
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v13 + 1) + 8 * v12++) stopStream];
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }

      return [v5[4] _deallocateStreamingResources];
    }
  }

  return result;
}

- (BOOL)_allocateStreamingResources
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ASDDSPStream__allocateStreamingResources__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

void __43__ASDDSPStream__allocateStreamingResources__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) physicalFormat];
  v3 = v2;
  if (v2)
  {
    objc_msgSend_audioStreamBasicDescription(v2);
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  CAStreamBasicDescription::CAStreamBasicDescription(v25, &v24);

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(*(a1 + 32) + 376);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v16 = [v8 direction];
        v9 = [v8 physicalFormat];
        v10 = v9;
        if (v9)
        {
          objc_msgSend_audioStreamBasicDescription(v9);
        }

        else
        {
          memset(&v24, 0, sizeof(v24));
        }

        v15 = [v8 readInputBlock];
        v14 = [v8 writeMixBlock];
        v13 = [v8 readIsolatedInputBlock];
        v11 = v22;
        if (v22 >= v23)
        {
          v12 = std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDStreamDirection,AudioStreamBasicDescription,int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned long long,unsigned int,AudioServerPlugInIOCycleInfo const*)>(&v21, &v16, &v24, &v15, &v14, &v13);
        }

        else
        {
          std::vector<ASDDSPStreamHelper::DSPStream>::__construct_one_at_end[abi:ne200100]<ASDStreamDirection,AudioStreamBasicDescription,int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned long long,unsigned int,AudioServerPlugInIOCycleInfo const*)>(&v21, &v16, &v24, &v15, &v14, &v13);
          v12 = v11 + 80;
        }

        v22 = v12;
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) direction];
  operator new();
}

- (void)_deallocateStreamingResources
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__ASDDSPStream__deallocateStreamingResources__block_invoke;
  v2[3] = &unk_278CE39D0;
  v2[4] = self;
  v3[0] = &unk_285344558;
  v3[3] = v3;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

ASDDSPStreamHelper *__45__ASDDSPStream__deallocateStreamingResources__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 296;
  v4 = *(v2 + 304);
  if (v4 != v2 + 296)
  {
    do
    {
      ASDDSPGraphHelper::deallocateStreamingResources((v4 + 16));
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v2 = *(a1 + 32);
  }

  ASDDSPStreamHelper::deallocateStreamingResources(*(v2 + 288));
  v5 = (*(a1 + 32) + 288);

  return std::unique_ptr<ASDDSPStreamHelper>::reset[abi:ne200100](v5, 0);
}

- (void)_allocateStreamingResourcesForGraphHelper:(void *)helper
{
  v4[4] = *MEMORY[0x277D85DE8];
  if (!helper)
  {
    [ASDDSPStream _allocateStreamingResourcesForGraphHelper:];
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__ASDDSPStream__allocateStreamingResourcesForGraphHelper___block_invoke;
  v3[3] = &unk_278CE3C60;
  v3[4] = self;
  v3[5] = helper;
  v4[0] = &unk_285344558;
  v4[3] = v4;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void __58__ASDDSPStream__allocateStreamingResourcesForGraphHelper___block_invoke(uint64_t a1)
{
  *&v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 288);
  if (*(v2 + 32) == -1)
  {
    v11 = ASDDSPStreamHelper::dspInStreamFormats(v3);
    v12 = ASDDSPStreamHelper::dspOutStreamFormats(*(*(a1 + 32) + 288));
    v13 = [*(a1 + 32) maximumFramesPerIOCycle];
    v14 = [*(a1 + 32) keepGraphInitialized];

    ASDDSPGraphHelper::allocateStreamingResources(v2, v11, v12, v13, v14);
  }

  else
  {
    ASDDSPStreamHelper::dspFormat(v3);
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = *v4;
    v8 = *(v4 + 16);
    v25 = *(v4 + 32);
    v24[0] = v7;
    v24[1] = v8;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription const*,CAStreamBasicDescription const*>(&v18, v24, &v26, 1uLL);
    v9 = *v5;
    v10 = *(v5 + 16);
    v22 = *(v5 + 32);
    v21[0] = v9;
    v21[1] = v10;
    v16 = 0;
    v17 = 0;
    __p = 0;
    std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription const*,CAStreamBasicDescription const*>(&__p, v21, &v23, 1uLL);
    ASDDSPGraphHelper::allocateStreamingResources(v6, &v18, &__p, [*(a1 + 32) maximumFramesPerIOCycle], objc_msgSend(*(a1 + 32), "keepGraphInitialized"));
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

- (BOOL)enableBasicDSPCaptureOnGraph:(id)graph withLevel:(id)level andDebugType:(int64_t)type andMode:(int64_t)mode
{
  v29 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  levelCopy = level;
  if (!levelCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream enableBasicDSPCaptureOnGraph:withLevel:andDebugType:andMode:];
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    name = [graphCopy name];
    *buf = 138412546;
    *&buf[4] = name;
    *&buf[12] = 2112;
    *&buf[14] = levelCopy;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling basic DSP Capture on dsp graph: %@ with level: %@", buf, 0x16u);
  }

  if ([levelCopy isEqualToString:@"Light"])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = objc_opt_new();
    inputs = [graphCopy inputs];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke;
    v22[3] = &unk_278CE3C88;
    v22[4] = buf;
    [inputs enumerateObjectsUsingBlock:v22];

    outputs = [graphCopy outputs];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke_2;
    v21[3] = &unk_278CE3C88;
    v21[4] = buf;
    [outputs enumerateObjectsUsingBlock:v21];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v23 = 138412290;
      v24 = v15;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling basic DSP Capture on dsp graph box names:%@", v23, 0xCu);
    }

    v16 = [ASDDSPGraphUtilities startRecordingBoxes:*(*&buf[8] + 40) inGraph:graphCopy fromStream:self toDirectory:self->_DSPCaptureDirectory withType:type andMode:mode error:0];
    _Block_object_dispose(buf, 8);

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (![levelCopy isEqualToString:@"Heavy"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDDSPStream enableBasicDSPCaptureOnGraph:withLevel:andDebugType:andMode:];
      }

      goto LABEL_18;
    }

    if (![ASDDSPGraphUtilities startRecordingAllBoxesInGraph:graphCopy fromStream:self toDirectory:self->_DSPCaptureDirectory withType:type error:0])
    {
LABEL_18:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        name2 = [graphCopy name];
        [ASDDSPStream enableBasicDSPCaptureOnGraph:name2 withLevel:buf andDebugType:? andMode:?];
      }

LABEL_20:
      v18 = 0;
      goto LABEL_21;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    name3 = [graphCopy name];
    *buf = 138412290;
    *&buf[4] = name3;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully enabled DSP Capture on dsp graph: %@", buf, 0xCu);
  }

  v18 = 1;
LABEL_21:

  return v18;
}

void __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 name];
  [v2 addObject:?];
}

void __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 name];
  [v2 addObject:?];
}

- (void)enableDSPCaptureByType:(int64_t)type withGraph:(id)graph
{
  v40 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  if (type)
  {
    if (type)
    {
      v7 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"EnableDSPCapture"];
      v8 = [v7 valueForKey:@"Level"];
      [(ASDDSPStream *)self enableBasicDSPCaptureOnGraph:graphCopy withLevel:v8 andDebugType:[(ASDDSPStream *)self getAudioDebugTypeWithDict:v7] andMode:[(ASDDSPStream *)self getAudioCaptureRingBufferModeWithDict:v7]];
    }

    if ((type & 2) != 0)
    {
      v9 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"EnableDSPCaptureOnPluginDevice"];
      v10 = [v9 valueForKey:@"PluginDevice"];
      v11 = [v9 valueForKey:@"Level"];
      v34 = [v9 valueForKey:@"Boxes"];
      v12 = [(ASDDSPStream *)self getAudioDebugTypeWithDict:v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
        deviceUID = [WeakRetained deviceUID];
        *buf = 138412546;
        v37 = deviceUID;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "OwningDeviceUID: %@, tagetPluginDeviceUID: %@", buf, 0x16u);
      }

      v15 = objc_loadWeakRetained(&self->_owningDevice);
      deviceUID2 = [v15 deviceUID];
      v17 = [deviceUID2 isEqualToString:v10];

      if (v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          name = [graphCopy name];
          *buf = 138412546;
          v37 = name;
          v38 = 2112;
          v39 = v10;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling DSP capture on dsp graph: %@ within Plugin Device: %@", buf, 0x16u);
        }

        if (v11)
        {
          v19 = [(ASDDSPStream *)self enableBasicDSPCaptureOnGraph:graphCopy withLevel:v11 andDebugType:v12];
        }

        else
        {
          v19 = [ASDDSPGraphUtilities startRecordingBoxes:v34 inGraph:graphCopy fromStream:self toDirectory:self->_DSPCaptureDirectory withType:v12 error:0];
        }

        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            name2 = [graphCopy name];
            *buf = 138412290;
            v37 = name2;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully enabled DSP Capture on dsp graph: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          name3 = [graphCopy name];
          [ASDDSPStream enableBasicDSPCaptureOnGraph:name3 withLevel:v35 andDebugType:? andMode:?];
        }
      }
    }

    if ((type & 4) != 0)
    {
      v22 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"EnableDSPCaptureOnDSPGraph"];
      v23 = [v22 valueForKey:@"DSPGraph"];
      v24 = [v22 valueForKey:@"Level"];
      v25 = [v22 valueForKey:@"Boxes"];
      v26 = [(ASDDSPStream *)self getAudioDebugTypeWithDict:v22];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        name4 = [graphCopy name];
        *buf = 138412546;
        v37 = name4;
        v38 = 2112;
        v39 = v23;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP graph name: %@, targetGraphName: %@", buf, 0x16u);
      }

      name5 = [graphCopy name];
      v29 = [name5 isEqualToString:v23];

      if (v29)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          name6 = [graphCopy name];
          *buf = 138412290;
          v37 = name6;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling DSP Capture on dsp graph: %@", buf, 0xCu);
        }

        if (v24)
        {
          v31 = [(ASDDSPStream *)self enableBasicDSPCaptureOnGraph:graphCopy withLevel:v24 andDebugType:v26];
        }

        else
        {
          v31 = [ASDDSPGraphUtilities startRecordingBoxes:v25 inGraph:graphCopy fromStream:self toDirectory:self->_DSPCaptureDirectory withType:v26 error:0];
        }

        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            name7 = [graphCopy name];
            *buf = 138412290;
            v37 = name7;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully enabled DSP Capture on dsp graph: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          name8 = [graphCopy name];
          [ASDDSPStream enableBasicDSPCaptureOnGraph:name8 withLevel:buf andDebugType:? andMode:?];
        }
      }
    }
  }

  else
  {
    [ASDDSPGraphUtilities stopRecordingBoxesInGraph:graphCopy];
  }
}

- (void)enableDSPFileInjectionOnGraph:(id)graph withFormat:(id)format
{
  v10[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  formatCopy = format;
  v10[0] = formatCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  if (![ASDDSPGraphUtilities startInjectingBoxes:v7 inGraph:graphCopy error:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    name = [graphCopy name];
    [(ASDDSPStream *)name enableDSPFileInjectionOnGraph:formatCopy withFormat:v9];
  }
}

- (BOOL)addClientDSP:(id)p withKey:(unint64_t)key
{
  pCopy = p;
  v7 = pCopy;
  if (pCopy)
  {
    [pCopy uninitialize];
    [v7 unconfigure];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    dspQueue = self->_dspQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__ASDDSPStream_addClientDSP_withKey___block_invoke;
    v11[3] = &unk_278CE3CB0;
    v11[4] = self;
    v13 = &v15;
    keyCopy = key;
    v12 = v7;
    dispatch_sync(dspQueue, v11);
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream addClientDSP:withKey:];
    }

    v9 = 0;
  }

  return v9 & 1;
}

void __37__ASDDSPStream_addClientDSP_withKey___block_invoke(void *a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2;
  v5[3] = &unk_278CE3CB0;
  v2 = a1[5];
  v5[4] = a1[4];
  v3 = v2;
  v4 = a1[7];
  v7 = a1[6];
  v8 = v4;
  v6 = v3;
  v9[0] = &unk_285344558;
  v9[3] = v9;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
}

void __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) graphStructureIsValid:*(a1 + 40) clientID:*(a1 + 56)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  [WeakRetained samplingRate];
  v5 = v4;

  v6 = [*(a1 + 32) physicalFormat];
  v7 = [*(a1 + 32) maximumFramesPerIOCycle];
  if (v5 <= 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2_cold_1();
    }
  }

  else if (v6)
  {
    v8 = v7;
    if (v7 <= 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2_cold_2();
      }
    }

    else
    {
      if (v2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 40) name];
          v10 = [*(a1 + 32) streamName];
          *buf = 138412546;
          *&buf[4] = v9;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "configuring graph %@ for stream %@", buf, 0x16u);
        }

        v11 = *(a1 + 40);
        [v6 sampleRate];
        [v11 setVariableSliceDuration:v8 forSampleRate:v12];
        [*(a1 + 40) configure];
        v13 = *(a1 + 40);
        if (v13)
        {
          objc_msgSend_graph(v13);
        }

        else
        {
          v38 = 0;
          v39 = 0;
        }

        ASDDSPGraphHelper::ASDDSPGraphHelper(buf, &v38, *(a1 + 56));
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        [*(a1 + 32) enableDSPCaptureByType:*(*(a1 + 32) + 344) withGraph:*(a1 + 40)];
        v20 = [*(*(a1 + 32) + 368) valueForKey:@"EnableDSPFileInjectionOnDSPGraph"];
        v21 = v20 == 0;

        if (!v21)
        {
          v22 = [*(*(a1 + 32) + 368) dictionaryForKey:@"EnableDSPFileInjectionOnDSPGraph"];
          v23 = [v22 valueForKey:@"DSPGraph"];
          v24 = [*(a1 + 40) name];
          v25 = [v24 isEqualToString:v23];

          if (v25)
          {
            v26 = [v22 valueForKey:@"InjectionFormat"];
            [*(a1 + 32) enableDSPFileInjectionOnGraph:*(a1 + 40) withFormat:v26];
          }
        }

        v27 = *(a1 + 32);
        if (*(v27 + 408) == 1)
        {
          [v27 _allocateStreamingResourcesForGraphHelper:buf];
          v27 = *(a1 + 32);
        }

        v28 = *(v27 + 320);
        v29 = *(a1 + 56);
        v30 = (v28 + 16);
        atomic_fetch_add((v28 + 16), 1u);
        v31 = atomic_load((v28 + 8));
        if (v31)
        {
          caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v31, v29);
          if (v32)
          {
            atomic_fetch_add(v32, 1u);
            v33 = *(v32 + 16);
            atomic_fetch_add((v28 + 16), 0xFFFFFFFF);
            atomic_fetch_add(v32, 0xFFFFFFFF);
            caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::remove(*(*(a1 + 32) + 320), *(a1 + 56));
            v34 = *(a1 + 32) + 296;
            v40[0] = v40;
            v40[1] = v40;
            v40[2] = 0;
            v35 = *(v34 + 8);
            if (v35 != v34)
            {
              do
              {
                v36 = v35[1];
                if (v35 + 2 == v33)
                {
                  while (v36 != v34 && v36 + 2 == v33)
                  {
                    v36 = v36[1];
                  }

                  std::list<ASDDSPGraphHelper>::splice(v40, v40, v34, v35, v36);
                  if (v36 != v34)
                  {
                    v36 = v36[1];
                  }
                }

                v35 = v36;
              }

              while (v36 != v34);
            }

            std::__list_imp<ASDDSPGraphHelper>::clear(v40);
LABEL_42:
            operator new();
          }

          v30 = (v28 + 16);
        }

        atomic_fetch_add(v30, 0xFFFFFFFF);
        goto LABEL_42;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 40) name];
        v15 = [*(a1 + 40) numberOfInputs];
        v16 = [*(a1 + 40) numberOfOutputs];
        v17 = *(a1 + 32);
        v18 = *(v17 + 416);
        v19 = *(v17 + 424);
        *buf = 138413314;
        *&buf[4] = v14;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        v42 = 2048;
        v43 = v16;
        v44[0] = 2048;
        *&v44[1] = v18;
        v44[5] = 2048;
        v45 = v19;
        _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@ graph structure isn't valid. numGraphInputs = %ld, numGraphOutputs = %ld, numUnderlyingInputStreams = %ld, numUnderlyingOutputStreams = %ld", buf, 0x34u);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2_cold_3();
  }
}

- (BOOL)removeClientDSPwithKey:(unint64_t)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  dspQueue = self->_dspQueue;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDDSPStream_removeClientDSPwithKey___block_invoke;
  block[3] = &unk_278CE3CF8;
  block[5] = &v7;
  block[6] = key;
  block[4] = self;
  dispatch_sync(dspQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __39__ASDDSPStream_removeClientDSPwithKey___block_invoke(void *a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 320);
  v3 = a1[6];
  v4 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v5 = atomic_load((v2 + 8));
  if (!v5)
  {
    goto LABEL_18;
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v5, v3);
  if (!v6)
  {
    v4 = (v2 + 16);
LABEL_18:
    atomic_fetch_add(v4, 0xFFFFFFFF);
    goto LABEL_19;
  }

  atomic_fetch_add(v6, 1u);
  v7 = *(v6 + 16);
  atomic_fetch_add((v2 + 16), 0xFFFFFFFF);
  atomic_fetch_add(v6, 0xFFFFFFFF);
  v8 = a1[4];
  if (*(v8 + 408) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__ASDDSPStream_removeClientDSPwithKey___block_invoke_2;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = v7;
    v14 = 1;
    v15[0] = *v16;
    *(v15 + 3) = *&v16[3];
    v17[0] = &unk_285344558;
    v17[3] = v17;
    ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v13);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
    v8 = a1[4];
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::remove(*(v8 + 320), a1[6]);
  v9 = a1[4] + 296;
  v17[0] = v17;
  v17[1] = v17;
  v17[2] = 0;
  v10 = *(v9 + 8);
  if (v10 != v9)
  {
    do
    {
      v11 = v10[1];
      if (v10 + 2 == v7)
      {
        while (v11 != v9 && v11 + 2 == v7)
        {
          v11 = v11[1];
        }

        std::list<ASDDSPGraphHelper>::splice(v17, v17, v9, v10, v11);
        if (v11 != v9)
        {
          v11 = v11[1];
        }
      }

      v10 = v11;
    }

    while (v11 != v9);
  }

  std::__list_imp<ASDDSPGraphHelper>::clear(v17);
LABEL_19:
  *(*(a1[5] + 8) + 24) = 1;
}

- (BOOL)graphStructureIsValid:(id)valid clientID:(unint64_t)d
{
  validCopy = valid;
  v7 = validCopy;
  if (d == -1)
  {
    if ([(ASDStream *)self direction]== 1768845428)
    {
      numberOfInputs = [v7 numberOfInputs];
      v12 = [(NSArray *)self->_underlyingStreams count];
      v10 = [v7 numberOfOutputs] == 1 && numberOfInputs == v12;
    }

    else
    {
      if ([(ASDStream *)self direction]!= 1869968496)
      {
        v15 = 1;
        goto LABEL_16;
      }

      numberOfOutputs = [v7 numberOfOutputs];
      underlyingOutputStreamCount = self->_underlyingOutputStreamCount;
      v10 = [v7 numberOfInputs] == self->_underlyingInputStreamCount + 1 && numberOfOutputs == underlyingOutputStreamCount;
    }
  }

  else
  {
    numberOfInputs2 = [validCopy numberOfInputs];
    numberOfOutputs2 = [v7 numberOfOutputs];
    v10 = [v7 numberOfInputs] == 1 && numberOfInputs2 == numberOfOutputs2;
  }

  v15 = v10;
LABEL_16:

  return v15;
}

- (void)suspendProcessing
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDDSPStream_suspendProcessing__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

- (void)_suspendProcessing
{
  ptr = self->_streamHelper.__ptr_;
  if (ptr)
  {
    ASDDSPStreamHelper::suspendProcessing(ptr);
  }
}

- (void)resumeProcessing
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASDDSPStream_resumeProcessing__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

- (void)_resumeProcessing
{
  ptr = self->_streamHelper.__ptr_;
  if (ptr)
  {
    ASDDSPStreamHelper::resumeProcessing(ptr);
  }
}

- (void)updateLatency
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDDSPStream_updateLatency__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

- (void)_updateMaximumFramesPerIOCycle
{
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  self->_maximumFramesPerIOCycle = [WeakRetained timestampPeriod];
}

- (int64_t)maximumFramesPerIOCycle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ASDDSPStream_maximumFramesPerIOCycle__block_invoke;
  v5[3] = &unk_278CE3D20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__39__ASDDSPStream_maximumFramesPerIOCycle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateMaximumFramesPerIOCycle];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 360);
  return result;
}

- (void)_updateLatency
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_underlyingStreams;
  latency = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if ([v8 latency] > latency)
        {
          latency = [v8 latency];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  p_graphHelpers = &self->_graphHelpers;
  next = self->_graphHelpers.__end_.__next_;
  if (next != &self->_graphHelpers)
  {
    v16 = 0;
    v11 = 0;
    while (1)
    {
      customPropertyQueue = next->super.super._customPropertyQueue;
      if (!customPropertyQueue)
      {
        [ASDDSPStream _updateLatency];
      }

      stateDumpHandler = next->super.super._stateDumpHandler;
      v23 = next->super.super._customPropertyQueue;
      v24 = stateDumpHandler;
      if (stateDumpHandler)
      {
        atomic_fetch_add_explicit(&stateDumpHandler->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(customPropertyQueue + 762);
      v17 = *(customPropertyQueue + 761);
      DSPGraph::Graph::configure(customPropertyQueue);
      DSPGraph::Graph::initialize(v23);
      if (next->super.super._plugin == -1)
      {
        for (j = 0; j < DSPGraph::Graph::numOutputs(v23); ++j)
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __30__ASDDSPStream__updateLatency__block_invoke;
          v20[3] = &__block_descriptor_48_e5_I8__0l;
          v20[4] = &v23;
          v21 = j;
          v22 = v11;
          v30 = &unk_285344480;
          v31 = 0;
          v32 = &v30;
          v11 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v20);
          std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v30);
        }

        p_graphHelpers = &self->_graphHelpers;
        if (v14)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __30__ASDDSPStream__updateLatency__block_invoke_2;
        v18[3] = &__block_descriptor_44_e5_I8__0l;
        v18[4] = &v23;
        v19 = v16;
        v30 = &unk_285344480;
        v31 = 0;
        v32 = &v30;
        v16 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v18);
        std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v30);
        if (v14)
        {
          goto LABEL_23;
        }
      }

      DSPGraph::Graph::uninitialize(v23);
LABEL_23:
      if ((v17 & 1) == 0)
      {
        DSPGraph::Graph::unconfigure(v23);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      next = next->super.super._customProperties;
      if (next == p_graphHelpers)
      {
        goto LABEL_30;
      }
    }
  }

  v11 = 0;
  v16 = 0;
LABEL_30:
  [(ASDStream *)self setLatency:v11 + latency + v16, self];
}

uint64_t __30__ASDDSPStream__updateLatency__block_invoke(uint64_t a1)
{
  v2 = DSPGraph::Graph::out(**(a1 + 32));
  v3 = DSPGraph::Box::totalLatencyInSamples(v2);
  result = *(a1 + 44);
  if (v3 > result)
  {
    v5 = DSPGraph::Graph::out(**(a1 + 32));

    return DSPGraph::Box::totalLatencyInSamples(v5);
  }

  return result;
}

uint64_t __30__ASDDSPStream__updateLatency__block_invoke_2(uint64_t a1)
{
  v2 = DSPGraph::Graph::out(**(a1 + 32));
  v3 = DSPGraph::Box::totalLatencyInSamples(v2);
  result = *(a1 + 40);
  if (v3 > result)
  {
    v5 = DSPGraph::Graph::out(**(a1 + 32));

    return DSPGraph::Box::totalLatencyInSamples(v5);
  }

  return result;
}

- (BOOL)addHardwareDSP:(id)p
{
  pCopy = p;
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  isRunning = [WeakRetained isRunning];

  if (isRunning)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream addHardwareDSP:];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(ASDDSPStream *)self addClientDSP:pCopy withKey:-1];
  }

  return v7;
}

- (BOOL)removeHardwareDSP
{
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  isRunning = [WeakRetained isRunning];

  if (isRunning)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream removeHardwareDSP];
    }

    return 0;
  }

  else
  {

    return [(ASDDSPStream *)self removeClientDSPwithKey:-1];
  }
}

- (ASDDSPGraph)hardwareDSP
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dspQueue = self->_dspQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ASDDSPStream_hardwareDSP__block_invoke;
  v5[3] = &unk_278CE3C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dspQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __27__ASDDSPStream_hardwareDSP__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _hardwareDSP];

  return MEMORY[0x2821F96F8]();
}

- (id)_hardwareDSP
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__ASDDSPStream__hardwareDSP__block_invoke;
  v4[3] = &unk_278CE3D88;
  v4[4] = self;
  v5[0] = &unk_285344510;
  v5[1] = 0;
  v5[3] = v5;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v5);

  return v2;
}

ASDDSPGraph *__28__ASDDSPStream__hardwareDSP__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 320);
  v2 = (v1 + 16);
  atomic_fetch_add((v1 + 16), 1u);
  v3 = atomic_load((v1 + 8));
  if (!v3)
  {
    v10 = 0;
LABEL_11:
    atomic_fetch_add(v2, 0xFFFFFFFF);
    goto LABEL_12;
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v3, -1);
  if (!v4)
  {
    v10 = 0;
    v2 = (v1 + 16);
    goto LABEL_11;
  }

  v5 = v4;
  atomic_fetch_add(v4, 1u);
  v6 = *(v4 + 16);
  atomic_fetch_add((v1 + 16), 0xFFFFFFFF);
  v7 = [ASDDSPGraph alloc];
  if (!*v6)
  {
    __assert_rtn("providedGraph", "ASDDSPGraphHelper.h", 45, "mProvidedGraph");
  }

  v8 = v6[1];
  v12 = *v6;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = [(ASDDSPGraph *)v7 initWithDSPGraph:&v12];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v10 = v9;
  atomic_fetch_add(v5, 0xFFFFFFFF);

LABEL_12:

  return v10;
}

- (id)clientDSPForClient:(unsigned int)client
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  dspQueue = self->_dspQueue;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDDSPStream_clientDSPForClient___block_invoke;
  block[3] = &unk_278CE3DB0;
  clientCopy = client;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(dspQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __35__ASDDSPStream_clientDSPForClient___block_invoke(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__ASDDSPStream_clientDSPForClient___block_invoke_2;
  v2[3] = &unk_278CE3DB0;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  v5[0] = &unk_285344558;
  v5[3] = v5;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v2);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

void __35__ASDDSPStream_clientDSPForClient___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 320);
  v3 = *(a1 + 48);
  v4 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v5 = atomic_load((v2 + 8));
  if (v5)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v5, v3);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add(v6, 1u);
      v8 = *(v6 + 16);
      atomic_fetch_add(v4, 0xFFFFFFFF);
      v9 = [ASDDSPGraph alloc];
      if (!*v8)
      {
        __assert_rtn("providedGraph", "ASDDSPGraphHelper.h", 45, "mProvidedGraph");
      }

      v10 = v8[1];
      v14 = *v8;
      v15 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = [(ASDDSPGraph *)v9 initWithDSPGraph:&v14];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v4 = v7;
    }
  }

  atomic_fetch_add(v4, 0xFFFFFFFF);
}

- (id)readInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ASDDSPStream_readInputBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __30__ASDDSPStream_readInputBlock__block_invoke(uint64_t a1, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v7 = **(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    __30__ASDDSPStream_readInputBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::readInput(v7, a2, a3, a4, a5);
}

- (id)readIsolatedInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASDDSPStream_readIsolatedInputBlock__block_invoke;
  v4[3] = &unk_278CE3E00;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __38__ASDDSPStream_readIsolatedInputBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = **(*(*(a1 + 32) + 8) + 24);
  if (!v5)
  {
    __38__ASDDSPStream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::readIsolatedInput(v5, a2, a3, a4);
}

- (id)processOutputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__ASDDSPStream_processOutputBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __34__ASDDSPStream_processOutputBlock__block_invoke(uint64_t a1, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v7 = **(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    __34__ASDDSPStream_processOutputBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::processOutput(v7, a2, a3, a4, a5, a6);
}

- (id)writeMixBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ASDDSPStream_writeMixBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __29__ASDDSPStream_writeMixBlock__block_invoke(uint64_t a1, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v7 = **(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    __29__ASDDSPStream_writeMixBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::writeMix(v7, a2, a3, a4, a5);
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v26 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v24.receiver = self;
  v24.super_class = ASDDSPStream;
  v7 = [(ASDStream *)&v24 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  [v7 appendFormat:@"%@|    DSP Configuration:\n", indentCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  currentDSPConfiguration = [(ASDDSPStream *)self currentDSPConfiguration];
  hardwareDSP = [currentDSPConfiguration hardwareDSP];
  dspItems = [hardwareDSP dspItems];

  v11 = [dspItems countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(dspItems);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          path = [v14 path];
          v16 = path;
          [v7 appendFormat:@"%@|         - Graph: %s\n", indentCopy, objc_msgSend(path, "UTF8String")];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            path = [v14 path];
            v17 = path;
            [v7 appendFormat:@"%@|         - Strip: %s\n", indentCopy, objc_msgSend(path, "UTF8String")];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            path = [v14 path];
            v18 = path;
            [v7 appendFormat:@"%@|         - Property strip: %s\n", indentCopy, objc_msgSend(path, "UTF8String")];
          }
        }
      }

      v11 = [dspItems countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v11);
  }

  return v7;
}

- (void)dealloc
{
  mHUPSource = self->mHUPSource;
  if (mHUPSource)
  {
    dispatch_source_cancel(mHUPSource);
    v4 = self->mHUPSource;
    self->mHUPSource = 0;
  }

  v5.receiver = self;
  v5.super_class = ASDDSPStream;
  [(ASDObject *)&v5 dealloc];
}

- (void)setBypassMode:(BOOL)mode
{
  self->_bypassMode = mode;
  ptr = self->_streamHelper.__ptr_;
  if (ptr)
  {
    ASDDSPStreamHelper::setBypassGraphMode(ptr, mode);
  }
}

- (void)setIsActive:(BOOL)active
{
  activeCopy = active;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  underlyingStreams = [(ASDDSPStream *)self underlyingStreams];
  v6 = [underlyingStreams countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(underlyingStreams);
        }

        [*(*(&v10 + 1) + 8 * v8++) setIsActive:activeCopy];
      }

      while (v6 != v8);
      v6 = [underlyingStreams countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = ASDDSPStream;
  [(ASDStream *)&v9 setIsActive:activeCopy];
}

- (id).cxx_construct
{
  *(self + 36) = 0;
  *(self + 37) = self + 296;
  *(self + 38) = self + 296;
  *(self + 39) = 0;
  *(self + 40) = 0;
  return self;
}

- (void)enableBasicDSPCaptureOnGraph:(void *)a1 withLevel:(uint8_t *)buf andDebugType:andMode:.cold.2(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to enable DSP Capture on dsp graph: %@", buf, 0xCu);
}

- (void)enableDSPFileInjectionOnGraph:(uint8_t *)buf withFormat:.cold.1(void *a1, uint64_t a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to enable DSP file injection on dsp graph: %@, with format %@", buf, 0x16u);
}

@end