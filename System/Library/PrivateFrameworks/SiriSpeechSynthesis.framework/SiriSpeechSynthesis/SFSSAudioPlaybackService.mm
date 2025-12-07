@interface SFSSAudioPlaybackService
- (AudioStreamBasicDescription)asbd;
- (BOOL)isAudioQueueRunning;
- (SFSSAudioPlaybackService)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd;
- (id)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions;
- (id)start;
- (void)flushAndStop;
- (void)handleMediaServerReset;
- (void)pause;
- (void)reset;
- (void)signalQueueRunningStateChange;
- (void)stop;
- (void)waitForAudioQueueStop;
- (void)waitForQueueRunningStateChange;
@end

@implementation SFSSAudioPlaybackService

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[1].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[2].mSampleRate;
  return self;
}

- (void)waitForQueueRunningStateChange
{
  [(NSCondition *)self->_audioQueueStateCondition lock];
  [(NSCondition *)self->_audioQueueStateCondition wait];
  audioQueueStateCondition = self->_audioQueueStateCondition;

  [(NSCondition *)audioQueueStateCondition unlock];
}

- (void)signalQueueRunningStateChange
{
  [(NSCondition *)self->_audioQueueStateCondition lock];
  [(NSCondition *)self->_audioQueueStateCondition broadcast];
  audioQueueStateCondition = self->_audioQueueStateCondition;

  [(NSCondition *)audioQueueStateCondition unlock];
}

- (void)handleMediaServerReset
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "mediaserverd reset", v4, 2u);
  }

  [(SFSSAudioPlaybackService *)self stop];
}

- (BOOL)isAudioQueueRunning
{
  v10 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  Property = AudioQueueGetProperty(self->_audioQueue, 0x6171726Eu, &outData, &ioDataSize);
  if (Property)
  {
    v3 = Property;
    v4 = SFSSGetLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_error_impl(&dword_269079000, v4, OS_LOG_TYPE_ERROR, "Error AudioQueueGetProperty isRunning %d", buf, 8u);
    }
  }

  return outData != 0;
}

- (id)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions
{
  v36 = *MEMORY[0x277D85DE8];
  enqueueCopy = enqueue;
  descriptionsCopy = descriptions;
  if ([enqueueCopy length])
  {
    outBuffer = 0;
    v10 = AudioQueueAllocateBuffer(self->_audioQueue, [enqueueCopy length], &outBuffer);
    if (v10)
    {
      v11 = v10;
      v12 = SFSSGetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(selfCopy) = v11;
        v13 = "Error AudioQueueAllocateBuffer %d";
LABEL_20:
        _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    memcpy(outBuffer->mAudioData, [enqueueCopy bytes], objc_msgSend(enqueueCopy, "length"));
    v14 = [enqueueCopy length];
    v15 = outBuffer;
    outBuffer->mAudioDataByteSize = v14;
    v16 = AudioQueueEnqueueBuffer(self->_audioQueue, v15, count, [descriptionsCopy bytes]);
    if (v16)
    {
      v11 = v16;
      v12 = SFSSGetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(selfCopy) = v11;
        v13 = "Error AudioQueueEnqueueBuffer %d";
        goto LABEL_20;
      }

LABEL_7:

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
      goto LABEL_16;
    }

    if (count && descriptionsCopy)
    {
      v18 = (self->_asbd.mFramesPerPacket * count);
    }

    else
    {
      v18 = ([enqueueCopy length] / self->_asbd.mBytesPerFrame);
    }

    v19 = v18 + self->_enqueuedSampleCount;
    self->_enqueuedSampleCount = v19;
    mSampleRate = self->_asbd.mSampleRate;
    v21 = SFSSGetLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [enqueueCopy length];
      enqueuedSampleCount = self->_enqueuedSampleCount;
      *buf = 134219008;
      selfCopy = self;
      v28 = 2048;
      v29 = 0;
      v30 = 2048;
      v31 = v22;
      v32 = 2048;
      v33 = enqueuedSampleCount;
      v34 = 2048;
      v35 = v19 / mSampleRate;
      _os_log_impl(&dword_269079000, v21, OS_LOG_TYPE_INFO, "AudioPlaybackService %p enqueued audio buffer at sample time: %.2f, size: %ld, total enqueued samples: %.0f, enqueued audio duration: %.3f", buf, 0x34u);
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (void)reset
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = AudioQueueReset(self->_audioQueue);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueReset %d", v6, 8u);
    }
  }

  self->_enqueuedSampleCount = 0.0;
}

- (void)pause
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = AudioQueuePause(self->_audioQueue);
  v4 = SFSSGetLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109120;
      LODWORD(selfCopy) = v3;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueuePause %d", &v6, 8u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "VSAudioPlaybackServices %p success AudioQueuePause", &v6, 0xCu);
  }
}

- (void)waitForAudioQueueStop
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(SFSSAudioPlaybackService *)self isAudioQueueRunning])
  {
    do
    {
      [(SFSSAudioPlaybackService *)self waitForQueueRunningStateChange];
    }

    while ([(SFSSAudioPlaybackService *)self isAudioQueueRunning]);
  }

  v3 = AudioQueueRemovePropertyListener(self->_audioQueue, 0x6171726Eu, _audioPlaybackServiceRunningStateChanged, self);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueRemovePropertyListener %d", v7, 8u);
    }
  }

  v6 = SFSSGetLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_269079000, v6, OS_LOG_TYPE_INFO, "Audio queue stopped.", v7, 2u);
  }
}

- (void)stop
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = AudioQueueStop(self->_audioQueue, 1u);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %d", v6, 8u);
    }
  }

  self->_enqueuedSampleCount = 0.0;
}

- (void)flushAndStop
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = AudioQueueFlush(self->_audioQueue);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = v4;
      v6 = "Error AudioQueueFlush %d";
LABEL_10:
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, v6, &v9, 8u);
    }
  }

  else
  {
    v7 = AudioQueueStop(self->_audioQueue, 0);
    if (!v7)
    {
      self->_enqueuedSampleCount = 0.0;
      return;
    }

    v8 = v7;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = v8;
      v6 = "Error AudioQueueStop %d";
      goto LABEL_10;
    }
  }
}

- (id)start
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = AudioQueueStart(self->_audioQueue, 0);
  v4 = SFSSGetLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      LODWORD(selfCopy2) = v3;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueStart %d", &v11, 8u);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Error AudioQueueStart";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v6 errorWithDomain:v7 code:v3 userInfo:v8];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "AudioPlaybackService %p success AudioQueueStart", &v11, 0xCu);
    }

    if (![(SFSSAudioPlaybackService *)self isAudioQueueRunning])
    {
      do
      {
        [(SFSSAudioPlaybackService *)self waitForQueueRunningStateChange];
      }

      while (![(SFSSAudioPlaybackService *)self isAudioQueueRunning]);
    }

    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "AudioPlaybackService %p success AudioQueueStart started", &v11, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (SFSSAudioPlaybackService)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd
{
  v52 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v46.receiver = self;
  v46.super_class = SFSSAudioPlaybackService;
  v8 = [(SFSSAudioPlaybackService *)&v46 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&asbd->mSampleRate;
    v11 = *&asbd->mBytesPerPacket;
    *&v8->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
    *&v8->_asbd.mSampleRate = v10;
    *&v8->_asbd.mBytesPerPacket = v11;
    if (d)
    {
      v8->_sessionID = d;
      p_sessionID = &v8->_sessionID;
    }

    else
    {
      mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
      v9->_sessionID = [mEMORY[0x277CB83F8] opaqueSessionID];
      p_sessionID = &v9->_sessionID;
    }

    v14 = AudioQueueNewOutputWithAudioSession();
    if (v14)
    {
      v15 = v14;
      v16 = SFSSGetLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v48) = v15;
        _os_log_error_impl(&dword_269079000, v16, OS_LOG_TYPE_ERROR, "Error AudioQueueNewOutputWithAudioSession %d", buf, 8u);
      }

LABEL_26:
      v37 = 0;
      goto LABEL_33;
    }

    v17 = [MEMORY[0x277CB83F8] retrieveSessionWithID:*p_sessionID];
    currentRoute = [v17 currentRoute];

    array = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    outputs = [currentRoute outputs];
    v21 = [outputs countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(outputs);
          }

          portType = [*(*(&v42 + 1) + 8 * i) portType];
          [array addObject:portType];
        }

        v22 = [outputs countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v22);
    }

    v26 = [array componentsJoinedByString:{@", "}];
    outputRoute = v9->_outputRoute;
    v9->_outputRoute = v26;

    v28 = SFSSGetLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v9->_outputRoute;
      *buf = 138412290;
      v48 = v29;
      _os_log_impl(&dword_269079000, v28, OS_LOG_TYPE_INFO, "Current audio output route: %@", buf, 0xCu);
    }

    v30 = AudioQueueSetProperty(v9->_audioQueue, 0x63756964u, &AudioPlaybackAudioQueueUID, 8u);
    if (v30)
    {
      v31 = v30;
      v32 = SFSSGetLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v48) = v31;
        _os_log_error_impl(&dword_269079000, v32, OS_LOG_TYPE_ERROR, "Unable to set kAudioQueueProperty_ClientUID, errno: %d", buf, 8u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_handleMediaServerReset name:*MEMORY[0x277CB80A0] object:0];

    v34 = AudioQueueAddPropertyListener(v9->_audioQueue, 0x6171726Eu, _audioPlaybackServiceRunningStateChanged, v9);
    v35 = SFSSGetLogObject();
    v36 = v35;
    if (v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v48) = v34;
        _os_log_error_impl(&dword_269079000, v36, OS_LOG_TYPE_ERROR, "Error AudioQueueAddPropertyListener %d", buf, 8u);
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v48) = d;
      _os_log_impl(&dword_269079000, v36, OS_LOG_TYPE_INFO, "AudioQueue initialized with session ID: %d", buf, 8u);
    }
  }

  [date timeIntervalSinceNow];
  v39 = v38;
  v40 = SFSSGetLogObject();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v48 = v9;
    v49 = 2048;
    v50 = v39;
    _os_log_impl(&dword_269079000, v40, OS_LOG_TYPE_INFO, "AudioPlaybackService %p init latency: %.3f", buf, 0x16u);
  }

  v37 = v9;
LABEL_33:

  return v37;
}

@end