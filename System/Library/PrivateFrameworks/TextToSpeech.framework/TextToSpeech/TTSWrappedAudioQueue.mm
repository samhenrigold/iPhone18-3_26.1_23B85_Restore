@interface TTSWrappedAudioQueue
- (AudioStreamBasicDescription)queueStreamDescription;
- (BOOL)_attemptQueueStart;
- (BOOL)_startQueueWithRetry;
- (BOOL)audioQueueActive;
- (BOOL)play;
- (TTSWrappedAudioQueue)init;
- (id)convertBufferIfNecessary:(id)necessary;
- (unint64_t)_minimumBufferByteSize;
- (void)_configureEffects;
- (void)_initializeDSPGraphAU;
- (void)_rebuildAudioQueue;
- (void)_reconfigureQueueFormatForMultiChannelOutputIfNecessary;
- (void)_selectChannels:(OpaqueAudioQueue *)channels;
- (void)_syncGraphParameters;
- (void)_syncGraphProperties;
- (void)_tearDownAudioQueue;
- (void)_tearDownDSPGraphAU;
- (void)bufferCallback:(AudioQueueBuffer *)callback;
- (void)dealloc;
- (void)handleMediaServicesReset;
- (void)playBuffer:(id)buffer completionHandler:(id)handler;
- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler;
- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler lastBuffer:(BOOL)lastBuffer;
- (void)setAudioQueueFlags:(unsigned int)flags;
- (void)setAudioSession:(id)session;
- (void)setChannels:(id)channels;
- (void)setDspGraph:(id)graph;
- (void)setGraphParameters:(id)parameters;
- (void)setGraphProperties:(id)properties;
- (void)setOutputFormat:(id)format;
- (void)stop;
@end

@implementation TTSWrappedAudioQueue

- (TTSWrappedAudioQueue)init
{
  v19.receiver = self;
  v19.super_class = TTSWrappedAudioQueue;
  v2 = [(TTSWrappedAudioQueue *)&v19 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_bufferLock._os_unfair_lock_opaque = 0;
    v17[0] = xmmword_1A95862E0;
    v17[1] = unk_1A95862F0;
    v18 = 32;
    v4 = [[TTSAudioFormat alloc] initWithStreamDescription:v17];
    outputFormat = v3->_outputFormat;
    v3->_outputFormat = v4;

    queueFormat = v3->_queueFormat;
    v3->_queueFormat = 0;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    inflightBuffers = v3->_inflightBuffers;
    v3->_inflightBuffers = orderedSet;

    cachedAudioConverter = v3->_cachedAudioConverter;
    v3->_cachedAudioConverter = 0;

    v3->_audioQueueFlags = 0;
    audioSession = v3->_audioSession;
    v3->_audioSession = 0;

    channels = v3->_channels;
    v3->_channels = MEMORY[0x1E695E0F0];

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
    v13 = dispatch_queue_create("TTSAQ.callback", v12);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v13;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_handleMediaServicesReset name:*MEMORY[0x1E6958120] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TTSWrappedAudioQueue *)self _tearDownAudioQueue];
  v4.receiver = self;
  v4.super_class = TTSWrappedAudioQueue;
  [(TTSWrappedAudioQueue *)&v4 dealloc];
}

- (id)convertBufferIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queueFormat = [(TTSWrappedAudioQueue *)self queueFormat];
  format = [necessaryCopy format];
  avFormat = [format avFormat];
  if ([queueFormat isEqual:avFormat])
  {

LABEL_8:
    v18 = necessaryCopy;
    goto LABEL_12;
  }

  queueFormat2 = [(TTSWrappedAudioQueue *)self queueFormat];

  if (!queueFormat2)
  {
    goto LABEL_8;
  }

  cachedAudioConverter = [(TTSWrappedAudioQueue *)self cachedAudioConverter];
  if (cachedAudioConverter)
  {
    v10 = cachedAudioConverter;
    cachedAudioConverter2 = [(TTSWrappedAudioQueue *)self cachedAudioConverter];
    inputFormat = [cachedAudioConverter2 inputFormat];
    format2 = [necessaryCopy format];
    avFormat2 = [format2 avFormat];
    if ([inputFormat isEqual:avFormat2])
    {
      cachedAudioConverter3 = [(TTSWrappedAudioQueue *)self cachedAudioConverter];
      outputFormat = [cachedAudioConverter3 outputFormat];
      queueFormat3 = [(TTSWrappedAudioQueue *)self queueFormat];
      v38 = [outputFormat isEqual:queueFormat3];

      if (v38)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v19 = objc_alloc(MEMORY[0x1E69583E8]);
  format3 = [necessaryCopy format];
  avFormat3 = [format3 avFormat];
  queueFormat4 = [(TTSWrappedAudioQueue *)self queueFormat];
  v23 = [v19 initFromFormat:avFormat3 toFormat:queueFormat4];
  [(TTSWrappedAudioQueue *)self setCachedAudioConverter:v23];

  channels = [(TTSWrappedAudioQueue *)self channels];
  v25 = [channels ax_mappedArrayUsingBlock:&unk_1F1CEDA88];
  cachedAudioConverter4 = [(TTSWrappedAudioQueue *)self cachedAudioConverter];
  [cachedAudioConverter4 setChannelMap:v25];

LABEL_11:
  queueFormat5 = [(TTSWrappedAudioQueue *)self queueFormat];
  [queueFormat5 sampleRate];
  v29 = v28;
  format4 = [necessaryCopy format];
  [format4 sampleRate];
  *&v29 = v29 / v31;

  v32 = objc_alloc(MEMORY[0x1E6958438]);
  queueFormat6 = [(TTSWrappedAudioQueue *)self queueFormat];
  v34 = [v32 initWithPCMFormat:queueFormat6 frameCapacity:(*&v29 * objc_msgSend(necessaryCopy, "frameLength"))];

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  cachedAudioConverter5 = [(TTSWrappedAudioQueue *)self cachedAudioConverter];
  v41 = v43;
  v42 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1A9330538;
  v39[3] = &unk_1E787FDF8;
  v40 = necessaryCopy;
  [cachedAudioConverter5 convertToBuffer:v34 error:&v42 withInputFromBlock:v39];
  v36 = v42;

  v18 = [[TTSAudioBuffer alloc] initWithAVBuffer:v34];
  _Block_object_dispose(v43, 8);

LABEL_12:

  return v18;
}

- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler lastBuffer:(BOOL)lastBuffer
{
  lastBufferCopy = lastBuffer;
  [(TTSWrappedAudioQueue *)self scheduleBuffer:buffer completionHandler:handler];
  if (lastBufferCopy)
  {
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler
{
  bufferCopy = buffer;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A9330724;
    aBlock[3] = &unk_1E787FE48;
    v11 = handlerCopy;
    v9 = _Block_copy(aBlock);
  }

  else
  {
    v9 = 0;
  }

  [(TTSWrappedAudioQueue *)self playBuffer:bufferCopy completionHandler:v9];
}

- (void)playBuffer:(id)buffer completionHandler:(id)handler
{
  v67 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  handlerCopy = handler;
  if ([(TTSWrappedAudioQueue *)self state])
  {
    v8 = [(TTSWrappedAudioQueue *)self convertBufferIfNecessary:bufferCopy];

    frameLength = [v8 frameLength];
    format = [v8 format];
    v11 = format;
    if (format)
    {
      objc_msgSend_streamDescription(format);
      v12 = DWORD2(v62);
    }

    else
    {
      v12 = 0;
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
    }

    outBuffer = 0;
    v15 = AudioQueueAllocateBuffer([(TTSWrappedAudioQueue *)self aqRef], [(TTSWrappedAudioQueue *)self _minimumBufferByteSize], &outBuffer);
    v16 = objc_alloc_init(TTSWrappedAudioQueueBuffer);
    [(TTSWrappedAudioQueueBuffer *)v16 setAqBuffer:outBuffer];
    if (v15)
    {
      v17 = AXTTSLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1A9577124(v15);
      }

      v59[1] = MEMORY[0x1E69E9820];
      v59[2] = 3221225472;
      v59[3] = sub_1A9330DFC;
      v59[4] = &unk_1E787FE20;
      v59[5] = self;
      AX_PERFORM_WITH_LOCK();
      if (!handlerCopy)
      {
        goto LABEL_36;
      }

      callbackQueue = [(TTSWrappedAudioQueue *)self callbackQueue];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = sub_1A9330E38;
      v58[3] = &unk_1E787FE70;
      v59[0] = handlerCopy;
      dispatch_async(callbackQueue, v58);

      v19 = v59;
    }

    else
    {
      [(TTSWrappedAudioQueueBuffer *)v16 setCompletionHandler:handlerCopy];
      v20 = (v12 * frameLength);
      *([(TTSWrappedAudioQueueBuffer *)v16 aqBuffer]+ 16) = v20;
      if ([v8 frameLength] == 1)
      {
        objc_msgSend_queueStreamDescription(self);
        aqBuffer = [(TTSWrappedAudioQueueBuffer *)v16 aqBuffer];
        if (v57 << 8 >= aqBuffer->mAudioDataBytesCapacity)
        {
          mAudioDataBytesCapacity = aqBuffer->mAudioDataBytesCapacity;
        }

        else
        {
          mAudioDataBytesCapacity = (v57 << 8);
        }

        bzero([(TTSWrappedAudioQueueBuffer *)v16 aqBuffer][8], mAudioDataBytesCapacity);
        *([(TTSWrappedAudioQueueBuffer *)v16 aqBuffer]+ 16) = mAudioDataBytesCapacity;
      }

      else
      {
        memcpy(-[TTSWrappedAudioQueueBuffer aqBuffer](v16, "aqBuffer")[8], *([v8 mutableAudioBufferList] + 16), v20);
      }

      *([(TTSWrappedAudioQueueBuffer *)v16 aqBuffer]+ 24) = v16;
      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = sub_1A9330E4C;
      v54 = &unk_1E787FE98;
      selfCopy = self;
      v56 = v16;
      AX_PERFORM_WITH_LOCK();
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = sub_1A9330EA0;
      v43 = &unk_1E787FEC0;
      selfCopy2 = self;
      v23 = v56;
      v45 = v23;
      v46 = &v47;
      AX_PERFORM_WITH_LOCK();
      if (*(v48 + 6))
      {
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = sub_1A9330F78;
        v37 = &unk_1E787FE98;
        selfCopy3 = self;
        v39 = v23;
        AX_PERFORM_WITH_LOCK();
        if (*(v48 + 6) == -66671)
        {
          v29 = MEMORY[0x1E69E9820];
          v30 = 3221225472;
          v31 = sub_1A9330FCC;
          v32 = &unk_1E787FE20;
          selfCopy4 = self;
          AX_PERFORM_WITH_LOCK();
          v24 = AXTTSLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            sub_1A957720C();
          }
        }

        else
        {
          v24 = AXTTSLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = [MEMORY[0x1E696AD98] numberWithInt:*(v48 + 6)];
            sub_1A95771BC(v25, v66, v24);
          }
        }

        if (handlerCopy)
        {
          callbackQueue2 = [(TTSWrappedAudioQueue *)self callbackQueue];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = sub_1A9331008;
          v27[3] = &unk_1E787FE70;
          v28 = handlerCopy;
          dispatch_async(callbackQueue2, v27);
        }
      }

      else if ([(TTSWrappedAudioQueue *)self state]== 2 || ![(TTSWrappedAudioQueue *)self state])
      {
        AX_PERFORM_WITH_LOCK();
      }

      else
      {
        [(TTSWrappedAudioQueue *)self _attemptQueueStart];
      }

      v19 = &v56;
      _Block_object_dispose(&v47, 8);
    }

LABEL_36:
    bufferCopy = v8;
    goto LABEL_37;
  }

  v13 = AXTTSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577240();
  }

  if (handlerCopy)
  {
    callbackQueue3 = [(TTSWrappedAudioQueue *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9330DE8;
    block[3] = &unk_1E787FE70;
    v65 = handlerCopy;
    dispatch_async(callbackQueue3, block);
  }

LABEL_37:
}

- (BOOL)play
{
  if ([(TTSWrappedAudioQueue *)self shouldRebuildAudioQueue])
  {
    [(TTSWrappedAudioQueue *)self _tearDownAudioQueue];
    [(TTSWrappedAudioQueue *)self setShouldRebuildAudioQueue:0];
  }

  [(TTSWrappedAudioQueue *)self _buildAudioQueue];
  if ([(TTSWrappedAudioQueue *)self state]== 2 && ![(TTSWrappedAudioQueue *)self _startQueueWithRetry])
  {
    return 0;
  }

  v3 = 1;
  [(TTSWrappedAudioQueue *)self setState:1];
  return v3;
}

- (void)stop
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577274();
  }

  if ([(TTSWrappedAudioQueue *)self state]|| [(TTSWrappedAudioQueue *)self audioQueueActive])
  {
    [(TTSWrappedAudioQueue *)self setState:0];
    AX_PERFORM_WITH_LOCK();
  }

  [(TTSWrappedAudioQueue *)self setState:0];
}

- (void)setAudioSession:(id)session
{
  sessionCopy = session;
  audioSession = [(TTSWrappedAudioQueue *)self audioSession];
  opaqueSessionID = [audioSession opaqueSessionID];

  objc_storeStrong(&self->_audioSession, session);
  if (opaqueSessionID != [sessionCopy opaqueSessionID])
  {
    v8 = AXTTSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A9324000, v8, OS_LOG_TYPE_INFO, "TTSAQ: Audio session changed, rebuilding audio queue.", v11, 2u);
    }

    [(TTSWrappedAudioQueue *)self _tearDownAudioQueue];
    opaqueSessionID2 = [sessionCopy opaqueSessionID];
    mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
    -[TTSWrappedAudioQueue setUsingSharedSession:](self, "setUsingSharedSession:", opaqueSessionID2 == [mEMORY[0x1E6958468] opaqueSessionID]);
  }
}

- (void)setChannels:(id)channels
{
  channelsCopy = channels;
  if (([channelsCopy isEqualToArray:self->_channels] & 1) == 0)
  {
    objc_storeStrong(&self->_channels, channels);
    [(TTSWrappedAudioQueue *)self _reconfigureQueueFormatForMultiChannelOutputIfNecessary];
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9324000, v6, OS_LOG_TYPE_INFO, "TTSAQ: Audio channels changed, rebuilding audio queue.", v7, 2u);
    }

    [(TTSWrappedAudioQueue *)self setShouldRebuildAudioQueue:1];
  }
}

- (void)setOutputFormat:(id)format
{
  formatCopy = format;
  outputFormat = [(TTSWrappedAudioQueue *)self outputFormat];
  v7 = [formatCopy isEqual:outputFormat];

  if ((v7 & 1) == 0)
  {
    v8 = AXTTSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A9324000, v8, OS_LOG_TYPE_INFO, "TTSAQ: Audio format changed, rebuilding audio queue.", v9, 2u);
    }

    objc_storeStrong(&self->_outputFormat, format);
    [(TTSWrappedAudioQueue *)self setShouldRebuildAudioQueue:1];
  }

  [(TTSWrappedAudioQueue *)self _reconfigureQueueFormatForMultiChannelOutputIfNecessary];
}

- (void)setAudioQueueFlags:(unsigned int)flags
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_audioQueueFlags != flags)
  {
    v3 = *&flags;
    v5 = AXTTSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A9324000, v5, OS_LOG_TYPE_INFO, "TTSAQ: Audio queue flags changed to %@, rebuilding audio queue.", &v7, 0xCu);
    }

    self->_audioQueueFlags = v3;
    [(TTSWrappedAudioQueue *)self setShouldRebuildAudioQueue:1];
  }
}

- (void)handleMediaServicesReset
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9324000, v3, OS_LOG_TYPE_INFO, "TTSAQ: Media services reset", buf, 2u);
  }

  callbackQueue = [(TTSWrappedAudioQueue *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93316E8;
  block[3] = &unk_1E787FE20;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (BOOL)audioQueueActive
{
  aqRef = [(TTSWrappedAudioQueue *)self aqRef];
  if (aqRef)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioQueueGetProperty([(TTSWrappedAudioQueue *)self aqRef], 0x6171726Eu, &outData, &ioDataSize))
    {
      v4 = 1;
    }

    else
    {
      v4 = outData == 0;
    }

    LOBYTE(aqRef) = !v4;
  }

  return aqRef;
}

- (void)bufferCallback:(AudioQueueBuffer *)callback
{
  outBuffer[3] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1A9331CB0;
  v50 = sub_1A9331CDC;
  v51 = 0;
  v5 = callback->mUserData;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1A9331CE4;
  v44 = sub_1A9331CF4;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  audioQueueActive = [(TTSWrappedAudioQueue *)self audioQueueActive];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = sub_1A9331CFC;
  v31 = &unk_1E787FEE8;
  v7 = v5;
  v32 = v7;
  selfCopy = self;
  v34 = &v40;
  v35 = &v36;
  AX_PERFORM_WITH_LOCK();
  if (v7)
  {
    completionHandler = [v41[5] completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [v41[5] completionHandler];
      v10 = v47[5];
      v47[5] = completionHandler2;

      [v41[5] setCompletionHandler:0];
    }

    AudioQueueFreeBuffer([(TTSWrappedAudioQueue *)self aqRef], callback);
    if (v47[5])
    {
      state = [(TTSWrappedAudioQueue *)self state];
      callbackQueue = [(TTSWrappedAudioQueue *)self callbackQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1A9331D94;
      v26[3] = &unk_1E787FF10;
      v26[4] = &v46;
      v27 = state == 0;
      dispatch_async(callbackQueue, v26);
    }

    if (v37[3] & audioQueueActive)
    {
      _minimumBufferByteSize = [(TTSWrappedAudioQueue *)self _minimumBufferByteSize];
      outBuffer[0] = 0;
      AudioQueueAllocateBuffer([(TTSWrappedAudioQueue *)self aqRef], _minimumBufferByteSize, outBuffer);
      v14 = outBuffer[0];
      outBuffer[0]->mUserData = 0;
      v14->mAudioDataByteSize = _minimumBufferByteSize;
      bzero(v14->mAudioData, _minimumBufferByteSize);
      [(TTSWrappedAudioQueue *)self setCurrentSilenceBufferCount:&unk_1F1D0F780];
      aqRef = [(TTSWrappedAudioQueue *)self aqRef];
      AudioQueueEnqueueBuffer(aqRef, outBuffer[0], 0, 0);
    }

    goto LABEL_18;
  }

  currentSilenceBufferCount = [(TTSWrappedAudioQueue *)self currentSilenceBufferCount];
  unsignedIntValue = [currentSilenceBufferCount unsignedIntValue];

  v18 = unsignedIntValue * 0.1;
  if (v18 > 0.5)
  {
    v21 = 1;
    goto LABEL_12;
  }

  audioSession = [(TTSWrappedAudioQueue *)self audioSession];
  isActive = [audioSession isActive];

  v21 = isActive ^ 1;
  if ((v37[3] & isActive & audioQueueActive & 1) == 0)
  {
LABEL_12:
    AudioQueueFreeBuffer([(TTSWrappedAudioQueue *)self aqRef], callback);
    goto LABEL_13;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue + 1];
  [(TTSWrappedAudioQueue *)self setCurrentSilenceBufferCount:v22];

  AudioQueueEnqueueBuffer([(TTSWrappedAudioQueue *)self aqRef], callback, 0, 0);
LABEL_13:
  if (v21 && *(v37 + 24) == 1)
  {
    v23 = AXTTSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *&v24 = unsignedIntValue * 0.1;
      v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
      sub_1A9577344(v25, outBuffer, v23);
    }

    AudioQueueStop([(TTSWrappedAudioQueue *)self aqRef], 1u);
  }

LABEL_18:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
}

- (BOOL)_startQueueWithRetry
{
  *&v9[5] = *MEMORY[0x1E69E9840];
  [(TTSWrappedAudioQueue *)self _buildAudioQueue];
  if ([(TTSWrappedAudioQueue *)self _attemptQueueStart])
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A957739C(v8, v5 + 1, v9, v6);
    }

    [(TTSWrappedAudioQueue *)self _tearDownAudioQueue];
    if (v5)
    {
      [MEMORY[0x1E696AF00] sleepForTimeInterval:0.1];
    }

    if (v5 == 2)
    {
      break;
    }

    [(TTSWrappedAudioQueue *)self _buildAudioQueue];
    _attemptQueueStart = [(TTSWrappedAudioQueue *)self _attemptQueueStart];
    v4 = v5 + 1;
  }

  while (!_attemptQueueStart);
  return v5 < 2;
}

- (BOOL)_attemptQueueStart
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  AX_PERFORM_WITH_LOCK();
  _Block_object_dispose(v3, 8);
  return 1;
}

- (unint64_t)_minimumBufferByteSize
{
  outputFormat = [(TTSWrappedAudioQueue *)self outputFormat];
  [outputFormat sampleRate];
  v5 = v4;
  outputFormat2 = [(TTSWrappedAudioQueue *)self outputFormat];
  v7 = outputFormat2;
  if (outputFormat2)
  {
    objc_msgSend_streamDescription(outputFormat2);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 * (v5 * 0.1);

  return v9;
}

- (void)_tearDownAudioQueue
{
  if ([(TTSWrappedAudioQueue *)self aqRef])
  {
    v3 = AXTTSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1A957741C(self);
    }

    AudioQueueRemovePropertyListener([(TTSWrappedAudioQueue *)self aqRef], 0x6171726Eu, sub_1A9332340, self);
    AudioQueueStop([(TTSWrappedAudioQueue *)self aqRef], 1u);
    [(TTSWrappedAudioQueue *)self procNodeRef];
    ATAudioProcessingNodeDispose();
    AudioQueueDispose([(TTSWrappedAudioQueue *)self aqRef], 1u);
    [(TTSWrappedAudioQueue *)self setState:0];
    [(TTSWrappedAudioQueue *)self setAqRef:0];
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = sub_1A9331CE4;
    v6[4] = sub_1A9331CF4;
    array = [MEMORY[0x1E695DF70] array];
    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = sub_1A93323DC;
    block[8] = &unk_1E787FF38;
    block[9] = self;
    block[10] = v6;
    AX_PERFORM_WITH_LOCK();
    callbackQueue = [(TTSWrappedAudioQueue *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9332544;
    block[3] = &unk_1E787FF60;
    block[4] = v6;
    dispatch_async(callbackQueue, block);

    _Block_object_dispose(v6, 8);
  }
}

- (AudioStreamBasicDescription)queueStreamDescription
{
  queueFormat = [(TTSWrappedAudioQueue *)self queueFormat];

  if (queueFormat)
  {
    queueFormat2 = [(TTSWrappedAudioQueue *)self queueFormat];
    v6 = objc_msgSend_streamDescription(queueFormat2);
    v7 = *(v6 + 32);
    v9 = *v6;
    v8 = *(v6 + 16);
    outputFormat = queueFormat2;
    *&retstr->mSampleRate = v9;
    *&retstr->mBytesPerPacket = v8;
    *&retstr->mBitsPerChannel = v7;
  }

  else
  {
    outputFormat = [(TTSWrappedAudioQueue *)self outputFormat];
    if (outputFormat)
    {
      v13 = outputFormat;
      objc_msgSend_streamDescription(outputFormat);
      outputFormat = v13;
    }

    else
    {
      *&retstr->mBitsPerChannel = 0;
      *&retstr->mSampleRate = 0u;
      *&retstr->mBytesPerPacket = 0u;
    }
  }

  return result;
}

- (void)_rebuildAudioQueue
{
  v6 = 0;
  objc_msgSend_queueStreamDescription(self, a2, 0, 0, 0, 0, 0);
  if ([(TTSWrappedAudioQueue *)self usingSharedSession])
  {
    [MEMORY[0x1E6958468] sharedInstance];
  }

  else
  {
    [(TTSWrappedAudioQueue *)self audioSession];
  }
  v3 = ;
  [v3 opaqueSessionID];

  [(TTSWrappedAudioQueue *)self audioQueueFlags];
  AudioQueueNewOutputWithAudioSession();
  audioSession = [(TTSWrappedAudioQueue *)self audioSession];
  [audioSession setPreferredIOBufferDuration:0 error:0.003];

  [(TTSWrappedAudioQueue *)self _selectChannels:v6];
  self->_aqRef = v6;
  [(TTSWrappedAudioQueue *)self _configureEffects];
  AudioQueueAddPropertyListener(self->_aqRef, 0x6171726Eu, sub_1A9332340, self);
  v5 = AXTTSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1A95775D8(self);
  }
}

- (void)_reconfigureQueueFormatForMultiChannelOutputIfNecessary
{
  outputFormat = [(TTSWrappedAudioQueue *)self outputFormat];

  if (outputFormat)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    outputFormat2 = [(TTSWrappedAudioQueue *)self outputFormat];
    v5 = outputFormat2;
    if (outputFormat2)
    {
      objc_msgSend_streamDescription(outputFormat2);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    if ([(NSArray *)self->_channels count])
    {
      v7 = [(NSArray *)self->_channels count];
    }

    else
    {
      v7 = 1;
    }

    if (HIDWORD(v20) == v7)
    {
      outputFormat3 = [(TTSWrappedAudioQueue *)self outputFormat];
      avFormat = [outputFormat3 avFormat];
      queueFormat = self->_queueFormat;
      self->_queueFormat = avFormat;
    }

    else
    {
      DWORD2(v20) *= v7;
      HIDWORD(v20) = v7;
      HIDWORD(v19) &= ~0x20u;
      LODWORD(v20) = v20 * v7;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LODWORD(v15) = v7 | 0x930000;
      HIDWORD(v15) = 15;
      v11 = objc_alloc(MEMORY[0x1E6958420]);
      v12 = [objc_alloc(MEMORY[0x1E69583C8]) initWithLayout:&v15];
      v13 = [v11 initWithStreamDescription:&v19 channelLayout:{v12, v15, v16, v17, v18}];
      v14 = self->_queueFormat;
      self->_queueFormat = v13;
    }
  }

  else
  {
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A9577670();
    }
  }
}

- (void)_selectChannels:(OpaqueAudioQueue *)channels
{
  v48 = *MEMORY[0x1E69E9840];
  queueFormat = [(TTSWrappedAudioQueue *)self queueFormat];

  if (queueFormat)
  {
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      channels = self->_channels;
      *buf = 138412290;
      *v44 = channels;
      _os_log_impl(&dword_1A9324000, v6, OS_LOG_TYPE_INFO, "TTSAQ: Selecting channels %@", buf, 0xCu);
    }

    p_channels = &self->_channels;
    if ([(NSArray *)self->_channels count])
    {
      queueFormat2 = [(TTSWrappedAudioQueue *)self queueFormat];
      v10 = *(objc_msgSend_streamDescription(queueFormat2) + 28);

      queueFormat3 = [(TTSWrappedAudioQueue *)self queueFormat];
      channelCount = [queueFormat3 channelCount];
      v13 = [(NSArray *)self->_channels count];

      if (v13 == channelCount)
      {
        v14 = &v35 - 2 * v10;
        v15 = 16 * v10;
        bzero(v14, v15);
        v42 = 0u;
        v41 = 0u;
        v40 = 0u;
        v39 = 0u;
        v16 = *p_channels;
        v17 = [(NSArray *)v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v17)
        {
          v18 = v17;
          v36 = v15;
          *&v37 = channels;
          v38 = &v35;
          v19 = 0;
          v20 = *v40;
          do
          {
            v21 = 0;
            v22 = &v14[2 * v19 + 1];
            v19 += v18;
            do
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v39 + 1) + 8 * v21);
              *v22 = [v23 channelNumber];
              owningPortUID = [v23 owningPortUID];
              *(v22 - 1) = owningPortUID;

              ++v21;
              v22 += 2;
            }

            while (v18 != v21);
            v18 = [(NSArray *)v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v18);

          v25 = AudioQueueSetProperty(v37, 0x61716361u, v14, v36);
          if (v25 << 16)
          {
            v26 = v25;
            v27 = AXTTSLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_1A9577768(v26, v27);
            }

            if ([(NSArray *)*p_channels count])
            {
              v29 = 0;
              v30 = v14 + 1;
              *&v28 = 67109634;
              v37 = v28;
              do
              {
                v31 = AXTTSLogCommon();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = *v30;
                  v33 = *(v30 - 1);
                  *buf = v37;
                  *v44 = v29;
                  *&v44[4] = 1024;
                  *&v44[6] = v32;
                  v45 = 2112;
                  v46 = v33;
                  _os_log_error_impl(&dword_1A9324000, v31, OS_LOG_TYPE_ERROR, "TTSAQ: Channel layout error: [%d], channel number: %d, deviceUID: %@", buf, 0x18u);
                }

                ++v29;
                v30 += 4;
              }

              while ([(NSArray *)*p_channels count]> v29);
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v34 = AXTTSLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1A95776B0(v10);
        }
      }
    }
  }
}

- (void)_initializeDSPGraphAU
{
  [(TTSWrappedAudioQueue *)self aqRef];
  v3 = ATAudioProcessingNodeInstantiate();
  [(TTSWrappedAudioQueue *)self setProcNodeRef:0];
  if (v3)
  {
    v4 = AXTTSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A95777F4(v3);
    }
  }
}

- (void)_tearDownDSPGraphAU
{
  if ([(TTSWrappedAudioQueue *)self procNodeRef])
  {
    [(TTSWrappedAudioQueue *)self procNodeRef];
    ATAudioProcessingNodeDispose();

    [(TTSWrappedAudioQueue *)self setProcNodeRef:0];
  }
}

- (void)setDspGraph:(id)graph
{
  graphCopy = graph;
  if (![(NSString *)self->_dspGraph isEqualToString:graphCopy])
  {
    objc_storeStrong(&self->_dspGraph, graph);
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)setGraphProperties:(id)properties
{
  propertiesCopy = properties;
  if (![(NSDictionary *)self->_graphProperties isEqualToDictionary:propertiesCopy])
  {
    objc_storeStrong(&self->_graphProperties, properties);
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)setGraphParameters:(id)parameters
{
  parametersCopy = parameters;
  if (![(NSDictionary *)self->_graphParameters isEqualToDictionary:parametersCopy])
  {
    objc_storeStrong(&self->_graphParameters, parameters);
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)_syncGraphParameters
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(TTSWrappedAudioQueue *)self aqRef]&& [(TTSWrappedAudioQueue *)self procNodeRef]&& [(TTSWrappedAudioQueue *)self needsParameterSync])
  {
    [(TTSWrappedAudioQueue *)self setNeedsParameterSync:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    graphParameters = [(TTSWrappedAudioQueue *)self graphParameters];
    v4 = [graphParameters countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v19;
      *&v5 = 138412546;
      v16 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(graphParameters);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          LODWORD(v17) = 0;
          [v9 unsignedIntValue];
          graphParameters2 = [(TTSWrappedAudioQueue *)self graphParameters];
          v11 = [graphParameters2 objectForKeyedSubscript:v9];
          [v11 floatValue];

          [(TTSWrappedAudioQueue *)self procNodeRef];
          v12 = ATAudioProcessingNodeSetParameter();
          if (v12)
          {
            v13 = v12;
            v14 = AXTTSLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = [MEMORY[0x1E696AD98] numberWithInt:v13];
              *buf = v16;
              v23 = v9;
              v24 = 2112;
              v25 = v15;
              _os_log_error_impl(&dword_1A9324000, v14, OS_LOG_TYPE_ERROR, "TTSAQ: Could not set AUDSPGraph parameter [%@] with error: %@", buf, 0x16u);
            }
          }
        }

        v6 = [graphParameters countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [(TTSWrappedAudioQueue *)self setNeedsParameterSync:1];
  }
}

- (void)_syncGraphProperties
{
  v3 = ![(TTSWrappedAudioQueue *)self aqRef]|| ![(TTSWrappedAudioQueue *)self procNodeRef]|| ![(TTSWrappedAudioQueue *)self needsPropertySync];

  [(TTSWrappedAudioQueue *)self setNeedsPropertySync:v3];
}

- (void)_configureEffects
{
  [(TTSWrappedAudioQueue *)self _tearDownDSPGraphAU];
  dspGraph = [(TTSWrappedAudioQueue *)self dspGraph];

  if (dspGraph)
  {
    if (![(TTSWrappedAudioQueue *)self procNodeRef])
    {
      [(TTSWrappedAudioQueue *)self _initializeDSPGraphAU];
    }

    [(TTSWrappedAudioQueue *)self dspGraph];

    [(TTSWrappedAudioQueue *)self procNodeRef];
    v4 = ATAudioProcessingNodeSetProperty();
    [(TTSWrappedAudioQueue *)self setNeedsPropertySync:1];
    [(TTSWrappedAudioQueue *)self setNeedsParameterSync:1];
    if (v4)
    {
      v5 = AXTTSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A9577888(v4);
      }
    }
  }
}

@end