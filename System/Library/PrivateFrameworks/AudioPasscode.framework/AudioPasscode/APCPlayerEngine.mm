@interface APCPlayerEngine
+ (id)playerWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error;
- (APCPlayerEmbedInfo)embeddingInfo;
- (APCPlayerEngine)initWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error;
- (BOOL)startEngineAtTime:(unint64_t)time withBeginning:(id)beginning callbackTime:(unint64_t)callbackTime;
- (float)evaluateAsset;
- (id)createAU:(AudioComponentDescription *)u;
- (void)_playbackBufferLoopCompletionHdlr;
- (void)_stopAudioEngineAndSession;
- (void)createEngineAndAttachNodes;
- (void)endPasscodeEmbedding;
- (void)makeEngineConnections;
- (void)setDispatchQueue:(id)queue;
- (void)setupAudioSession;
- (void)startAPCPlayLoopAtTime:(unint64_t)time;
- (void)stopEngine:(BOOL)engine withCompletion:(id)completion;
- (void)stopEngineAfterMinimumLoops:(unint64_t)loops withCompletion:(id)completion;
- (void)stopEngineWithFadeOut:(float)out completion:(id)completion;
@end

@implementation APCPlayerEngine

- (id)createAU:(AudioComponentDescription *)u
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  buf = *u;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__APCPlayerEngine_createAU___block_invoke;
  v12[3] = &unk_278CE1CE0;
  v12[4] = &v13;
  v12[5] = &v25;
  v12[6] = &v19;
  [MEMORY[0x277CB8430] instantiateWithComponentDescription:&buf options:0 completionHandler:v12];
  v4 = v20[5];
  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v26[5] || v6)
  {
    v8 = APCLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v26[5];
      if (v9)
      {
        localizedDescription = [v26[5] localizedDescription];
      }

      else
      {
        localizedDescription = @"AVAudioUnit instantiateWithComponentDescription timed out";
      }

      buf.componentType = 138412290;
      *&buf.componentSubType = localizedDescription;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "AU instatiation failed with %@", &buf, 0xCu);
      if (v9)
      {
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v7;
}

void __28__APCPlayerEngine_createAU___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

+ (id)playerWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error
{
  lCopy = l;
  configCopy = config;
  payloadCopy = payload;
  v12 = [[APCPlayerEngine alloc] initWithAssetURL:lCopy codecConfig:configCopy payload:payloadCopy error:error];

  return v12;
}

- (APCPlayerEngine)initWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  lCopy = l;
  configCopy = config;
  payloadCopy = payload;
  v54.receiver = self;
  v54.super_class = APCPlayerEngine;
  v13 = [(APCPlayerEngine *)&v54 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_35;
  }

  if (lCopy && configCopy && payloadCopy)
  {
    v13->_isRunning = 0;
    v13->_prePlayVolume = 0.5;
    +[AUPasscodeEncoder registerAU];
    objc_msgSend_getAUDesc(AUPasscodeEncoder);
    v15 = [(APCPlayerEngine *)v14 createAU:buf];
    encoderAUNode = v14->_encoderAUNode;
    v14->_encoderAUNode = v15;

    v17 = v14->_encoderAUNode;
    if (v17)
    {
      aUAudioUnit = [(AVAudioUnit *)v17 AUAudioUnit];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v31 = APCLogObject(isKindOfClass);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138412290;
          v56 = v33;
          _os_log_impl(&dword_24158E000, v31, OS_LOG_TYPE_ERROR, "Encoder AU is not the expected class, it is a %@", buf, 0xCu);
        }

        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
        }

        goto LABEL_27;
      }

      aUAudioUnit2 = [(AVAudioUnit *)v14->_encoderAUNode AUAudioUnit];
      encoderAU = v14->_encoderAU;
      v14->_encoderAU = aUAudioUnit2;

      v53 = 0;
      v22 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:lCopy error:&v53];
      v23 = v53;
      if (v23)
      {
        v24 = v23;
        v25 = APCLogObject(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v56 = v24;
          _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_ERROR, "Failed to open the player asset: %@", buf, 0xCu);
        }

        if (error)
        {
          v26 = v24;
          *error = v24;
        }

LABEL_27:
        v30 = 0;
        goto LABEL_36;
      }

      v34 = objc_alloc(MEMORY[0x277CB83C8]);
      processingFormat = [v22 processingFormat];
      v36 = [v34 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v22, "length")];
      assetBuffer = v14->_assetBuffer;
      v14->_assetBuffer = v36;

      [configCopy setPayloadLengthBytes:{objc_msgSend(payloadCopy, "length")}];
      processingFormat2 = [v22 processingFormat];
      [processingFormat2 sampleRate];
      [configCopy setSampleRate:v39];

      [(AUPasscodeEncoder *)v14->_encoderAU setPayload:payloadCopy];
      [(AUPasscodeEncoder *)v14->_encoderAU setCodecConfig:configCopy];
      -[AUPasscodeEncoder setAssetLength:](v14->_encoderAU, "setAssetLength:", [v22 length]);
      objc_initWeak(&location, v14);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __62__APCPlayerEngine_initWithAssetURL_codecConfig_payload_error___block_invoke;
      v50[3] = &unk_278CE1D08;
      objc_copyWeak(&v51, &location);
      [(AUPasscodeEncoder *)v14->_encoderAU setAssetEndedAndSilencedHandler:v50];
      v40 = objc_alloc_init(MEMORY[0x277CB83E0]);
      player = v14->_player;
      v14->_player = v40;

      v42 = v14->_assetBuffer;
      v49 = 0;
      [v22 readIntoBuffer:v42 error:&v49];
      v43 = v49;
      v44 = v43;
      if (v43)
      {
        v45 = APCLogObject(v43);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v56 = v44;
          _os_log_impl(&dword_24158E000, v45, OS_LOG_TYPE_ERROR, "Failed to read the asset file into the PCM buffer (Error=%@)", buf, 0xCu);
        }

        if (error)
        {
          v46 = v44;
          *error = v44;
        }
      }

      else
      {
        [(APCPlayerEngine *)v14 setupAudioSession];
        [(APCPlayerEngine *)v14 createEngineAndAttachNodes];
        [(APCPlayerEngine *)v14 makeEngineConnections];
        callbackDispatchSrc = v14->_callbackDispatchSrc;
        v14->_callbackDispatchSrc = 0;
      }

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);

      if (v44)
      {
        goto LABEL_27;
      }

LABEL_35:
      v30 = v14;
      goto LABEL_36;
    }

    v29 = APCLogObject(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v29, OS_LOG_TYPE_ERROR, "Failed to create the encoder AU", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
  }

  else
  {
    v27 = APCLogObject(v13);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v27, OS_LOG_TYPE_ERROR, "Bad arguments to APCPlayerEngine", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:1 userInfo:0];
  }

  v30 = 0;
  *error = v28;
LABEL_36:

  return v30;
}

void __62__APCPlayerEngine_initWithAssetURL_codecConfig_payload_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopAudioEngineAndSession];

  v5 = objc_loadWeakRetained((a1 + 32));
  v2 = [v5 stopEngineCompletion];

  if (v2)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v3 = [v6 stopEngineCompletion];
    v3[2]();
  }
}

- (void)setupAudioSession
{
  v48 = *MEMORY[0x277D85DE8];
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  session = self->_session;
  self->_session = auxiliarySession;

  v5 = self->_session;
  v6 = *MEMORY[0x277CB8030];
  v43 = 0;
  [(AVAudioSession *)v5 setCategory:v6 error:&v43];
  v7 = v43;
  v8 = v7;
  if (v7)
  {
    v9 = APCLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v8;
      _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_ERROR, "Error setting session category to record: %@", buf, 0xCu);
    }
  }

  v10 = self->_session;
  v11 = *MEMORY[0x277CB80A8];
  v42 = 0;
  [(AVAudioSession *)v10 setMode:v11 error:&v42];
  v12 = v42;
  v13 = v12;
  if (v12)
  {
    v14 = APCLogObject(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v13;
      _os_log_impl(&dword_24158E000, v14, OS_LOG_TYPE_ERROR, "Error setting session mode to default: %@", buf, 0xCu);
    }
  }

  v15 = self->_session;
  codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
  v41 = 0;
  -[AVAudioSession setPreferredSampleRate:error:](v15, "setPreferredSampleRate:error:", &v41, [codecConfig sampleRate]);
  v17 = v41;

  if (v17)
  {
    v19 = APCLogObject(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      codecConfig2 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
      sampleRate = [codecConfig2 sampleRate];
      *buf = 134218242;
      v45 = llround(sampleRate);
      v46 = 2112;
      v47 = v17;
      _os_log_impl(&dword_24158E000, v19, OS_LOG_TYPE_ERROR, "Error setting preferred sample rate to %ld: %@", buf, 0x16u);
    }
  }

  outputNumberOfChannels = [(AVAudioSession *)self->_session outputNumberOfChannels];
  codecConfig3 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
  LOBYTE(outputNumberOfChannels) = outputNumberOfChannels == [codecConfig3 numChannels];

  if (outputNumberOfChannels)
  {
    v24 = v17;
  }

  else
  {
    v25 = self->_session;
    codecConfig4 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
    v40 = v17;
    -[AVAudioSession setPreferredOutputNumberOfChannels:error:](v25, "setPreferredOutputNumberOfChannels:error:", [codecConfig4 numChannels], &v40);
    v24 = v40;

    if (v24)
    {
      v28 = APCLogObject(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        codecConfig5 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
        numChannels = [codecConfig5 numChannels];
        *buf = 134218242;
        v45 = numChannels;
        v46 = 2112;
        v47 = v24;
        _os_log_impl(&dword_24158E000, v28, OS_LOG_TYPE_ERROR, "Could not set preferred number of output channels to %ld (AU will handle the mapping): %@", buf, 0x16u);
      }
    }
  }

  [(AVAudioSession *)self->_session sampleRate];
  v31 = self->_session;
  v39 = v24;
  v33 = 256.0 / v32;
  v34 = [(AVAudioSession *)v31 setPreferredIOBufferDuration:&v39 error:256.0 / v32];
  v35 = v39;

  if (!v34)
  {
    v37 = APCLogObject(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v35 localizedDescription];
      *buf = 134218242;
      v45 = *&v33;
      v46 = 2112;
      v47 = localizedDescription;
      _os_log_impl(&dword_24158E000, v37, OS_LOG_TYPE_ERROR, "Error setting preferred io buffer duration to %0.3f seconds: %@", buf, 0x16u);
    }
  }
}

- (void)createEngineAndAttachNodes
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8388]);
  engine = self->_engine;
  self->_engine = v3;

  [(AVAudioEngine *)self->_engine attachNode:self->_encoderAUNode];
  [(AVAudioEngine *)self->_engine attachNode:self->_player];
  outputNode = [(AVAudioEngine *)self->_engine outputNode];
  audioUnit = [outputNode audioUnit];

  inData = [(AVAudioSession *)self->_session opaqueSessionID];
  v7 = AudioUnitSetProperty(audioUnit, 0x7E7u, 0, 0, &inData, 4u);
  v8 = v7;
  if (v7)
  {
    v9 = APCLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v8;
      _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_ERROR, "Setting the audio session ID for the player's output node failed: %d", buf, 8u);
    }
  }
}

- (void)makeEngineConnections
{
  format = [(AVAudioPCMBuffer *)self->_assetBuffer format];
  [(AVAudioEngine *)self->_engine connect:self->_player to:self->_encoderAUNode format:?];
  engine = self->_engine;
  encoderAUNode = self->_encoderAUNode;
  outputNode = [(AVAudioEngine *)engine outputNode];
  [(AVAudioEngine *)engine connect:encoderAUNode to:outputNode format:format];
}

- (float)evaluateAsset
{
  codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
  assetBuffer = self->_assetBuffer;
  v20 = 0;
  [APCCodecFactory evaluateCarrierWithConfig:codecConfig carrier:assetBuffer embeddingResult:&v20];
  v6 = v5;
  v7 = v20;

  if (v7)
  {
    aUAudioUnit = [(AVAudioUnit *)self->_encoderAUNode AUAudioUnit];
    [aUAudioUnit setPasscodeEmbedInfo:v7];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:108];
    v10 = [v7 objectForKey:v9];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:1000];
    v13 = [v7 objectForKey:v12];
    unsignedIntegerValue2 = [v13 unsignedIntegerValue];

    codecConfig2 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
    sampleRate = [codecConfig2 sampleRate];

    v17 = [[APCPlayerEmbedInfo alloc] initWithPasscodeDurationNSec:((unsignedIntegerValue2 + unsignedIntegerValue) / sampleRate * 1000000000.0)];
    embeddingInfo = self->_embeddingInfo;
    self->_embeddingInfo = v17;
  }

  return v6;
}

- (BOOL)startEngineAtTime:(unint64_t)time withBeginning:(id)beginning callbackTime:(unint64_t)callbackTime
{
  v52 = *MEMORY[0x277D85DE8];
  beginningCopy = beginning;
  engine = self->_engine;
  if (!engine)
  {
    v10 = APCLogObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Audio engine is nil while trying to start it!";
LABEL_9:
      _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }

LABEL_10:
    v9 = 0;
LABEL_39:

    goto LABEL_40;
  }

  if (!self->_player)
  {
    v10 = APCLogObject(engine);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Encoded asset player is nil while trying to start the audio engine!";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (![(AVAudioEngine *)engine isRunning])
  {
    session = self->_session;
    v45 = 0;
    v9 = [(AVAudioSession *)session setActive:1 error:&v45];
    v13 = v45;
    if (((v13 == 0) & v9) == 0)
    {
      v10 = v13;
      mEMORY[0x277D26E58] = APCLogObject(v13);
      if (os_log_type_enabled(mEMORY[0x277D26E58], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        timeCopy = v10;
        _os_log_impl(&dword_24158E000, mEMORY[0x277D26E58], OS_LOG_TYPE_ERROR, "Error activating session: %@", buf, 0xCu);
      }

      goto LABEL_38;
    }

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    [mEMORY[0x277D26E58] getActiveCategoryVolume:&self->_prePlayVolume andName:0];
    [APCDefaults floatForDefault:0];
    [mEMORY[0x277D26E58] setActiveCategoryVolumeTo:?];
    v15 = self->_engine;
    v44 = 0;
    v9 = [(AVAudioEngine *)v15 startAndReturnError:&v44];
    v16 = v44;
    v10 = v16;
    if (((v16 == 0) & v9) == 0)
    {
      v22 = APCLogObject(v16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        *buf = 138412290;
        timeCopy = localizedDescription;
        _os_log_impl(&dword_24158E000, v22, OS_LOG_TYPE_ERROR, "Couldn't start audio engine, %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (beginningCopy)
    {
      v17 = __udivti3();
      v18 = mach_absolute_time();
      v19 = v18;
      if (time && v18 + v17 > time)
      {
        v20 = APCLogObject(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_24158E000, v20, OS_LOG_TYPE_ERROR, "APCPlayer start time is too early to set up a beginning callback", buf, 2u);
        }

        v22 = APCLogObject(v21);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 134218496;
        timeCopy = time;
        v48 = 2048;
        v49 = v19;
        v50 = 2048;
        v51 = v19 + v17;
        v23 = "- Input hostTime: %llu, Current Time: %llu, Min expected Time: %llu";
        v24 = v22;
        v25 = 32;
        goto LABEL_35;
      }

      v27 = __udivti3();
      if (time - v17 >= v19)
      {
        v28 = v27;
      }

      else
      {
        v28 = -v27;
      }

      dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
      if (dispatchQueue)
      {
        [(APCPlayerEngine *)self dispatchQueue];
      }

      else
      {
        dispatch_get_global_queue(0, 0);
      }
      v30 = ;
      v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v30);
      callbackDispatchSrc = self->_callbackDispatchSrc;
      self->_callbackDispatchSrc = v31;

      if (!self->_callbackDispatchSrc)
      {
        v22 = APCLogObject(v33);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
LABEL_36:
          v9 = 0;
LABEL_37:

          goto LABEL_38;
        }

        *buf = 0;
        v23 = "APCPlayer can't schedule the beginning callback timer";
        v24 = v22;
        v25 = 2;
LABEL_35:
        _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
        goto LABEL_36;
      }

      v34 = MEMORY[0x245CEABB0](beginningCopy);
      beginningCallback = self->_beginningCallback;
      self->_beginningCallback = v34;

      v36 = self->_callbackDispatchSrc;
      v37 = dispatch_time(0, v28 & ~(v28 >> 63));
      assetLength = [(AUPasscodeEncoder *)self->_encoderAU assetLength];
      codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
      dispatch_source_set_timer(v36, v37, 1000000000 * assetLength / [codecConfig sampleRate], 0);

      v40 = self->_callbackDispatchSrc;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __64__APCPlayerEngine_startEngineAtTime_withBeginning_callbackTime___block_invoke;
      handler[3] = &unk_278CE1D30;
      v43 = beginningCopy;
      dispatch_source_set_event_handler(v40, handler);
      dispatch_resume(self->_callbackDispatchSrc);
    }

    [(APCPlayerEngine *)self startAPCPlayLoopAtTime:time];
    [(AVAudioPlayerNode *)self->_player play];
    v9 = 1;
LABEL_38:

    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9;
}

- (void)_playbackBufferLoopCompletionHdlr
{
  if (self->_requestingStop)
  {
    [(APCPlayerEngine *)self _stopAudioEngineAndSession];
    self->_requestingStop = 0;
    if (self->_stopEngineCompletion)
    {
      dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
      if (dispatchQueue)
      {
        [(APCPlayerEngine *)self dispatchQueue];
      }

      else
      {
        dispatch_get_global_queue(0, 0);
      }
      v4 = ;

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__APCPlayerEngine__playbackBufferLoopCompletionHdlr__block_invoke;
      block[3] = &unk_278CE1D58;
      block[4] = self;
      dispatch_async(v4, block);
    }
  }

  else
  {

    [(APCPlayerEngine *)self startAPCPlayLoop];
  }
}

- (void)startAPCPlayLoopAtTime:(unint64_t)time
{
  timeCopy = time;
  if (time)
  {
    timeCopy = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:time];
  }

  player = self->_player;
  assetBuffer = self->_assetBuffer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__APCPlayerEngine_startAPCPlayLoopAtTime___block_invoke;
  v7[3] = &unk_278CE1D58;
  v7[4] = self;
  [(AVAudioPlayerNode *)player scheduleBuffer:assetBuffer atTime:timeCopy options:4 completionHandler:v7];
}

void __42__APCPlayerEngine_startAPCPlayLoopAtTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  if (v2)
  {
    v3 = [*(a1 + 32) dispatchQueue];
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__APCPlayerEngine_startAPCPlayLoopAtTime___block_invoke_2;
  block[3] = &unk_278CE1D58;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

- (void)_stopAudioEngineAndSession
{
  [(AVAudioPlayerNode *)self->_player pause];
  [(AVAudioEngine *)self->_engine pause];
  [(AUPasscodeEncoder *)self->_encoderAU reset];
  [(AVAudioPlayerNode *)self->_player reset];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  *&v4 = self->_prePlayVolume;
  v5 = mEMORY[0x277D26E58];
  [mEMORY[0x277D26E58] setActiveCategoryVolumeTo:v4];
  [(AVAudioSession *)self->_session setActive:0 error:0];
}

- (void)endPasscodeEmbedding
{
  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    encoderAU = self->_encoderAU;

    [(AUPasscodeEncoder *)encoderAU setEmbedPasscode:0];
  }
}

- (void)stopEngine:(BOOL)engine withCompletion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  if (engineCopy)
  {
    self->_requestingStop = 1;
  }

  else
  {
    [(AUPasscodeEncoder *)self->_encoderAU setSilenceOutputOnNextAssetEnding:1];
  }

  v6 = MEMORY[0x245CEABB0](completionCopy);
  stopEngineCompletion = self->_stopEngineCompletion;
  self->_stopEngineCompletion = v6;

  callbackDispatchSrc = self->_callbackDispatchSrc;
  if (callbackDispatchSrc)
  {
    dispatch_source_cancel(callbackDispatchSrc);
    v9 = self->_callbackDispatchSrc;
    self->_callbackDispatchSrc = 0;
  }
}

- (void)stopEngineWithFadeOut:(float)out completion:(id)completion
{
  v6 = MEMORY[0x245CEABB0](completion, a2);
  stopEngineCompletion = self->_stopEngineCompletion;
  self->_stopEngineCompletion = v6;

  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    *&v8 = out;
    [(AUPasscodeEncoder *)self->_encoderAU setFadeOutTimeSeconds:v8];
    [(AUPasscodeEncoder *)self->_encoderAU setTriggerFadeOut:1];
  }

  else if (self->_stopEngineCompletion)
  {
    dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
    if (dispatchQueue)
    {
      [(APCPlayerEngine *)self dispatchQueue];
    }

    else
    {
      dispatch_get_global_queue(0, 0);
    }
    v10 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__APCPlayerEngine_stopEngineWithFadeOut_completion___block_invoke;
    block[3] = &unk_278CE1D58;
    block[4] = self;
    dispatch_async(v10, block);
  }

  callbackDispatchSrc = self->_callbackDispatchSrc;
  if (callbackDispatchSrc)
  {
    dispatch_source_cancel(callbackDispatchSrc);
    v12 = self->_callbackDispatchSrc;
    self->_callbackDispatchSrc = 0;
  }
}

- (void)stopEngineAfterMinimumLoops:(unint64_t)loops withCompletion:(id)completion
{
  v6 = MEMORY[0x245CEABB0](completion, a2);
  stopEngineCompletion = self->_stopEngineCompletion;
  self->_stopEngineCompletion = v6;

  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    [(AUPasscodeEncoder *)self->_encoderAU setNumLoopsToStopAfter:loops];
  }

  else if (self->_stopEngineCompletion)
  {
    dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
    if (dispatchQueue)
    {
      [(APCPlayerEngine *)self dispatchQueue];
    }

    else
    {
      dispatch_get_global_queue(0, 0);
    }
    v9 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__APCPlayerEngine_stopEngineAfterMinimumLoops_withCompletion___block_invoke;
    block[3] = &unk_278CE1D58;
    block[4] = self;
    dispatch_async(v9, block);
  }

  callbackDispatchSrc = self->_callbackDispatchSrc;
  if (callbackDispatchSrc)
  {
    dispatch_source_cancel(callbackDispatchSrc);
    v11 = self->_callbackDispatchSrc;
    self->_callbackDispatchSrc = 0;
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  objc_storeStrong(&self->_dispatchQueue, queue);
  encoderAU = self->_encoderAU;
  if (encoderAU)
  {
    [(AUPasscodeEncoder *)encoderAU setDispatchQueue:queueCopy];
  }
}

- (APCPlayerEmbedInfo)embeddingInfo
{
  if (self->_embeddingInfo)
  {
    aUAudioUnit = [(AVAudioUnit *)self->_encoderAUNode AUAudioUnit];
    passcodeEmbedInfo = [aUAudioUnit passcodeEmbedInfo];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:1001];
    v6 = [passcodeEmbedInfo objectForKey:v5];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    [(APCPlayerEmbedInfo *)self->_embeddingInfo setMeasPasscodeDuration:unsignedIntegerValue];
    embeddingInfo = self->_embeddingInfo;
  }

  else
  {
    embeddingInfo = 0;
  }

  return embeddingInfo;
}

@end