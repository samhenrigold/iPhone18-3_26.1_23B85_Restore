@interface _LTPlaybackService
- (BOOL)_currentOutputRouteIsSpeaker;
- (BOOL)isAudioQueueRunning;
- (_LTPlaybackService)initWithContext:(id)context ASBD:(AudioStreamBasicDescription *)d;
- (id)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions;
- (id)start;
- (void)dealloc;
- (void)flushAndStop;
- (void)handleMediaServerReset;
- (void)reset;
- (void)signalQueueRunningStateChanged;
- (void)start;
- (void)stop;
- (void)waitForAudioQueueStop;
@end

@implementation _LTPlaybackService

- (_LTPlaybackService)initWithContext:(id)context ASBD:(AudioStreamBasicDescription *)d
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v41.receiver = self;
  v41.super_class = _LTPlaybackService;
  v8 = [(_LTPlaybackService *)&v41 init];
  v9 = v8;
  if (!v8)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_20;
  }

  v10 = *&d->mSampleRate;
  v11 = *&d->mBytesPerPacket;
  *(v8 + 5) = *&d->mBitsPerChannel;
  *(v8 + 24) = v11;
  *(v8 + 8) = v10;
  objc_storeStrong(v8 + 21, context);
  audioSessionID = [contextCopy audioSessionID];
  *(v9 + 7) = 850045863;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  *(v9 + 15) = 1018212795;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 20) = 0;
  v13 = AudioQueueNewOutputWithAudioSession();
  if (v13)
  {
    v15 = _LTOSLogTTS(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService initWithContext:ASBD:];
    }

    goto LABEL_5;
  }

  [contextCopy ttsPlaybackRate];
  if (v17 != 1.0)
  {
    inData = 1;
    AudioQueueSetProperty(*(v9 + 6), 0x715F7470u, &inData, 4u);
    inData = 1953064047;
    AudioQueueSetProperty(*(v9 + 6), 0x71747061u, &inData, 4u);
    v18 = *(v9 + 6);
    [contextCopy ttsPlaybackRate];
    *&v19 = v19;
    AudioQueueSetParameter(v18, 2u, *&v19);
  }

  array = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CB83F8] retrieveSessionWithID:audioSessionID];
  currentRoute = [v21 currentRoute];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  outputs = [currentRoute outputs];
  v24 = [outputs countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      v27 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(outputs);
        }

        portType = [*(*(&v37 + 1) + 8 * v27) portType];
        [array addObject:portType];

        ++v27;
      }

      while (v25 != v27);
      v25 = [outputs countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v25);
  }

  v29 = [array componentsJoinedByString:{@", "}];
  v31 = _LTOSLogTTS(v29, v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    inData = 138412290;
    v43 = v29;
    _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "Current audio output route: %@", &inData, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v9 selector:sel_handleMediaServerReset name:*MEMORY[0x277CB80A0] object:0];

  v35 = _LTOSLogTTS(v33, v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    inData = 67109120;
    LODWORD(v43) = audioSessionID;
    _os_log_impl(&dword_232E53000, v35, OS_LOG_TYPE_INFO, "AudioQueue initialized with session id: %d", &inData, 8u);
  }

  v16 = v9;

LABEL_20:
  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = AudioQueueDispose(self->_audioQueue, 1u);
  if (v4)
  {
    v6 = _LTOSLogTTS(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService dealloc];
    }
  }

  v7.receiver = self;
  v7.super_class = _LTPlaybackService;
  [(_LTPlaybackService *)&v7 dealloc];
}

- (void)handleMediaServerReset
{
  v3 = _LTOSLogTTS(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "mediaserverd reset", v4, 2u);
  }

  [(_LTPlaybackService *)self stop];
}

- (BOOL)_currentOutputRouteIsSpeaker
{
  v2 = [MEMORY[0x277CB83F8] retrieveSessionWithID:{-[_LTTranslationContext audioSessionID](self->_context, "audioSessionID")}];
  v3 = v2;
  if (v2)
  {
    currentRoute = [v2 currentRoute];
    outputs = [currentRoute outputs];

    if ([outputs count] == 1)
    {
      firstObject = [outputs firstObject];
      portType = [firstObject portType];
      v8 = [portType isEqualToString:@"Speaker"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)start
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = AudioQueueStart(self->_audioQueue, 0);
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA590];
    v6 = v3;
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Error AudioQueueStart";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];

    v11 = _LTOSLogTTS(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService start];
    }
  }

  else
  {
    if ([(_LTTranslationContext *)self->_context muteTTSBasedOnRingerSwitchIfPossible]&& [(_LTPlaybackService *)self _currentOutputRouteIsSpeaker])
    {
      v12 = [MEMORY[0x277CB83F8] retrieveSessionWithID:{-[_LTTranslationContext audioSessionID](self->_context, "audioSessionID")}];
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v19 = 0;
      [v12 setMXSessionProperty:@"MutesAudioBasedOnRingerSwitchState" value:v13 error:&v19];
      v14 = v19;

      if (v14)
      {
        v17 = _LTOSLogTTS(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(_LTPlaybackService *)v14 start];
        }
      }
    }

    v8 = 0;
    self->_state = 1;
  }

  return v8;
}

- (id)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions
{
  countCopy = count;
  v37 = *MEMORY[0x277D85DE8];
  enqueueCopy = enqueue;
  descriptionsCopy = descriptions;
  v10 = [enqueueCopy length];
  if (!v10)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v12 = _LTOSLogTTS(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    LODWORD(buf.mSampleTime) = 134217984;
    *(&buf.mSampleTime + 4) = [enqueueCopy length];
    _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Creating buffer of length: %zu", &buf, 0xCu);
  }

  outBuffer = 0;
  v14 = AudioQueueAllocateBuffer(self->_audioQueue, [enqueueCopy length], &outBuffer);
  if (v14)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
    v17 = _LTOSLogTTS(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService enqueue:packetCount:packetDescriptions:];
    }

    goto LABEL_16;
  }

  memcpy(outBuffer->mAudioData, [enqueueCopy bytes], objc_msgSend(enqueueCopy, "length"));
  v18 = [enqueueCopy length];
  outBuffer->mAudioDataByteSize = v18;
  memset(&buf, 0, sizeof(buf));
  AudioQueueGetCurrentTime(self->_audioQueue, 0, &buf, 0);
  v19 = AudioQueueEnqueueBuffer(self->_audioQueue, outBuffer, countCopy, [descriptionsCopy bytes]);
  if (!v19)
  {
    v23 = _LTOSLogTTS(v19, v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      if (descriptionsCopy)
      {
        v24 = @"Opus";
      }

      else
      {
        v24 = @"PCM";
      }

      mSampleTime = buf.mSampleTime;
      v26 = v23;
      v27 = [enqueueCopy length];
      *v30 = 138543874;
      v31 = v24;
      v32 = 2048;
      v33 = mSampleTime;
      v34 = 2048;
      v35 = v27;
      _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_INFO, "Enqueued %{public}@ audio buffer at sample title: %.2f, size: %zu", v30, 0x20u);
    }

    goto LABEL_15;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v19 userInfo:0];
  v22 = _LTOSLogTTS(v15, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [_LTPlaybackService enqueue:packetCount:packetDescriptions:];
  }

LABEL_16:

  return v15;
}

- (void)signalQueueRunningStateChanged
{
  v3 = pthread_mutex_lock(&self->_waitForStateChange);
  v5 = _LTOSLogTTS(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Playback service running state changed", v6, 2u);
  }

  pthread_cond_broadcast(&self->_stateChangeCondition);
  pthread_mutex_unlock(&self->_waitForStateChange);
}

- (void)waitForAudioQueueStop
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 60;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Audio queue playback stopped (%d)", v1, 8u);
}

- (void)flushAndStop
{
  self->_state = 2;
  v3 = AudioQueueFlush(self->_audioQueue);
  if (v3)
  {
    v5 = _LTOSLogTTS(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService flushAndStop];
    }
  }

  else
  {
    v6 = AudioQueueStop(self->_audioQueue, 0);
    if (v6)
    {
      v8 = _LTOSLogTTS(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_LTPlaybackService flushAndStop];
      }
    }

    else
    {
      [(_LTPlaybackService *)self waitForAudioQueueStop];
      AudioQueueStop(self->_audioQueue, 1u);
      self->_state = 3;
    }
  }
}

- (void)stop
{
  v2 = AudioQueueStop(self->_audioQueue, 1u);
  if (v2)
  {
    v4 = _LTOSLogTTS(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService stop];
    }
  }
}

- (void)reset
{
  v2 = AudioQueueReset(self->_audioQueue);
  if (v2)
  {
    v4 = _LTOSLogTTS(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService reset];
    }
  }
}

- (BOOL)isAudioQueueRunning
{
  ioDataSize = 4;
  outData = 0;
  Property = AudioQueueGetProperty(self->_audioQueue, 0x6171726Eu, &outData, &ioDataSize);
  if (Property)
  {
    v4 = _LTOSLogTTS(Property, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService isAudioQueueRunning];
    }
  }

  return outData != 0;
}

- (void)start
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Encountered error setting MutesAudioBasedOnRingerSwitchState: %@", &v2, 0xCu);
}

@end