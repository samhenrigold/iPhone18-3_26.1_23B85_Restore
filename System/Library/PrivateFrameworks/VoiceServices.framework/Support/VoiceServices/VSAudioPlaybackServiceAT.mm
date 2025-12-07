@interface VSAudioPlaybackServiceAT
- (AudioStreamBasicDescription)asbd;
- (AudioTimeStamp)audioStartTimeStamp;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
- (BOOL)isAudioQueueRunning;
- (BOOL)isAudioQueueStalled;
- (VSAudioPlaybackServiceAT)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd;
- (_opaque_pthread_cond_t)stateChangeCondition;
- (_opaque_pthread_mutex_t)waitForStateChangeMutex;
- (id)_enqueueAudioBytesLength:(unsigned int)length audioBytes:(const void *)bytes packetCount:(int64_t)count packetDescriptions:(const void *)descriptions;
- (id)addBoundaryTimeObserverForTimes:(id)times usingBlock:(id)block;
- (id)start;
- (void)dealloc;
- (void)dequeueAvailableMappedAudio;
- (void)didEndAccessPower;
- (void)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions;
- (void)flushAndStop;
- (void)handleMediaServerReset;
- (void)pause;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)setAudioStartTimeStamp:(AudioTimeStamp *)stamp;
- (void)setStateChangeCondition:(_opaque_pthread_cond_t *)condition;
- (void)setWaitForStateChangeMutex:(_opaque_pthread_mutex_t *)mutex;
- (void)signalQueueRunningStateChange;
- (void)stop;
- (void)waitForAudioQueueStop;
- (void)willBeginAccessPower;
@end

@implementation VSAudioPlaybackServiceAT

- (void)setAudioStartTimeStamp:(AudioTimeStamp *)stamp
{
  v3 = *&stamp->mSampleTime;
  v4 = *&stamp->mRateScalar;
  v5 = *&stamp->mSMPTETime.mHours;
  *&self->_audioStartTimeStamp.mSMPTETime.mSubframes = *&stamp->mSMPTETime.mSubframes;
  *&self->_audioStartTimeStamp.mSMPTETime.mHours = v5;
  *&self->_audioStartTimeStamp.mSampleTime = v3;
  *&self->_audioStartTimeStamp.mRateScalar = v4;
}

- (AudioTimeStamp)audioStartTimeStamp
{
  v3 = *&self[4].mRateScalar;
  *&retstr->mSampleTime = *&self[4].mSampleTime;
  *&retstr->mRateScalar = v3;
  v4 = *&self[4].mSMPTETime.mHours;
  *&retstr->mSMPTETime.mSubframes = *&self[4].mSMPTETime.mSubframes;
  *&retstr->mSMPTETime.mHours = v4;
  return self;
}

- (void)setStateChangeCondition:(_opaque_pthread_cond_t *)condition
{
  v3 = *&condition->__sig;
  v4 = *&condition->__opaque[24];
  *&self->_stateChangeCondition.__opaque[8] = *&condition->__opaque[8];
  *&self->_stateChangeCondition.__opaque[24] = v4;
  *&self->_stateChangeCondition.__sig = v3;
}

- (_opaque_pthread_cond_t)stateChangeCondition
{
  v3 = *&self[3].__opaque[8];
  *&retstr->__sig = *&self[3].__sig;
  *&retstr->__opaque[8] = v3;
  *&retstr->__opaque[24] = *&self[3].__opaque[24];
  return self;
}

- (void)setWaitForStateChangeMutex:(_opaque_pthread_mutex_t *)mutex
{
  v3 = *&mutex->__sig;
  v4 = *&mutex->__opaque[8];
  v5 = *&mutex->__opaque[40];
  *&self->_waitForStateChangeMutex.__opaque[24] = *&mutex->__opaque[24];
  *&self->_waitForStateChangeMutex.__opaque[40] = v5;
  *&self->_waitForStateChangeMutex.__sig = v3;
  *&self->_waitForStateChangeMutex.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)waitForStateChangeMutex
{
  v3 = *&self[3].__opaque[8];
  *&retstr->__sig = *&self[3].__sig;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[3].__opaque[40];
  *&retstr->__opaque[24] = *&self[3].__opaque[24];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[3].mSampleRate;
  *&retstr->mSampleRate = *&self[2].mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[3].mBytesPerPacket;
  return self;
}

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  v24 = *MEMORY[0x277D85DE8];
  ioDataSize = 8;
  isAudioQueueRunning = [(VSAudioPlaybackServiceAT *)self isAudioQueueRunning];
  if (isAudioQueueRunning)
  {
    if (AudioQueueGetProperty(self->_audioQueue, 0x61716D64u, outData, &ioDataSize))
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 136315394;
        v20 = "[VSAudioPlaybackServiceAT getAveragePower:andPeakPower:]";
        v21 = 2112;
        v22 = v14;
        _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Error: %s, errno: %@", buf, 0x16u);
      }

      v9 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18 = @"Unable to get kAudioQueueProperty_CurrentLevelMeterDB";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v11 = [v9 errorWithDomain:? code:? userInfo:?];
      error = self->_error;
      self->_error = v11;

      LOBYTE(isAudioQueueRunning) = 0;
    }

    else
    {
      v13 = outData[1];
      *power = *outData;
      *peakPower = v13;
      LOBYTE(isAudioQueueRunning) = 1;
    }
  }

  return isAudioQueueRunning;
}

- (void)didEndAccessPower
{
  v15 = *MEMORY[0x277D85DE8];
  inData = 0;
  if (AudioQueueSetProperty(self->_audioQueue, 0x61716D65u, &inData, 4u))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v14 = v9;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Unable to disable kAudioQueueProperty_EnableLevelMetering, err: %@", buf, 0xCu);
    }

    v4 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12 = @"Unable to disable kAudioQueueProperty_EnableLevelMetering";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v6 = [v4 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v6;
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CMTimebaseSetRate(timebase, 0.0);
  }
}

- (void)willBeginAccessPower
{
  v14 = *MEMORY[0x277D85DE8];
  inData = 1;
  if (AudioQueueSetProperty(self->_audioQueue, 0x61716D65u, &inData, 4u))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Unable to enable kAudioQueueProperty_EnableLevelMetering, err: %@", buf, 0xCu);
    }

    v4 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11 = @"Unable to enable kAudioQueueProperty_EnableLevelMetering";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v6 = [v4 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v6;
  }
}

- (id)addBoundaryTimeObserverForTimes:(id)times usingBlock:(id)block
{
  if (self->_timebase)
  {
    blockCopy = block;
    timesCopy = times;
    v7 = [VSOccasionalTimesObserver initWithTimebase:"initWithTimebase:times:queue:block:" times:? queue:? block:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAudioQueueRunning
{
  v16 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  if (AudioQueueGetProperty(self->_audioQueue, 0x6171726Eu, &outData, &ioDataSize))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Error AudioQueueGetProperty isRunning %@", buf, 0xCu);
    }

    v4 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Error AudioQueueGetProperty isRunning";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v6 = [v4 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v6;
  }

  return outData != 0;
}

- (BOOL)isAudioQueueStalled
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_state != 3)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:?];
  v4 = v3 > 5.0;
  if (v3 > 5.0)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v5 setDateFormat:?];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 stringFromDate:?];
      v9 = [v5 stringFromDate:?];
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2048;
      v15 = 0x4014000000000000;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Detected stall of audio queue, based on NSDate. Now: %@, supposed end time: %@, Tolerance: %.2f", &v10, 0x20u);
    }
  }

  return v4;
}

- (void)waitForAudioQueueStop
{
  v21 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state != 1 && state != 4)
  {
    pthread_mutex_lock(&self->_waitForStateChangeMutex);
    if (AudioQueueAddPropertyListener(self->_audioQueue, 0x6171726Eu, _VSAudioPlaybackServiceRunningStateChanged, self))
    {
      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        LODWORD(v18.tv_sec) = 138412290;
        *(&v18.tv_sec + 4) = v13;
        _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueAddPropertyListener %@", &v18, 0xCu);
      }

      v6 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Error AudioQueueAddPropertyListener";
      v7 = MEMORY[0x277CBEAC0];
    }

    else
    {
      do
      {
        v18.tv_sec = 0;
        *&v18.tv_usec = 0;
        v15.tv_sec = 0;
        v15.tv_nsec = 0;
        gettimeofday(&v18, 0);
        v15.tv_sec = v18.tv_sec + 1;
        v15.tv_nsec = 1000 * v18.tv_usec;
        v8 = pthread_cond_timedwait(&self->_stateChangeCondition, &self->_waitForStateChangeMutex, &v15);
      }

      while ([(VSAudioPlaybackServiceAT *)self isAudioQueueRunning]&& (v8 != 60 || ![(VSAudioPlaybackServiceAT *)self isAudioQueueStalled]));
      if (!AudioQueueRemovePropertyListener(self->_audioQueue, 0x6171726Eu, _VSAudioPlaybackServiceRunningStateChanged, self))
      {
        goto LABEL_17;
      }

      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        LODWORD(v18.tv_sec) = 138412290;
        *(&v18.tv_sec + 4) = v14;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Error AudioQueueRemovePropertyListener %@", &v18, 0xCu);
      }

      v6 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      v17 = @"Error AudioQueueRemovePropertyListener";
      v7 = MEMORY[0x277CBEAC0];
    }

    v10 = [v7 dictionaryWithObjects:? forKeys:? count:?];
    v11 = [v6 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v11;

LABEL_17:
    pthread_mutex_unlock(&self->_waitForStateChangeMutex);
  }
}

- (void)pause
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = AudioQueuePause(self->_audioQueue);
  v4 = VSGetLogDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      selfCopy = v10;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueuePause %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CCA450] forKeys:@"Error AudioQueuePause" count:?];
    v7 = [v6 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v7;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p success AudioQueuePause", buf, 0xCu);
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CMTimebaseSetRate(timebase, 0.0);
  }
}

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "AudioQueue will stop", buf, 2u);
  }

  self->_state = 4;
  pthread_mutex_lock(&__VSAudioQueueBufferLock);
  [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeAllObjects];
  [(NSCondition *)self->_dequeueCondition lock];
  [(NSCondition *)self->_dequeueCondition signal];
  [(NSCondition *)self->_dequeueCondition unlock];
  pthread_mutex_unlock(&__VSAudioQueueBufferLock);
  if (AudioQueueStop(self->_audioQueue, 1u))
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %@", buf, 0xCu);
    }

    v5 = MEMORY[0x277CCA9B8];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CCA450] forKeys:@"Error AudioQueueStop" count:?];
    v7 = [v5 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v7;
  }

  [(VSAudioPlaybackServiceAT *)self signalQueueRunningStateChange];
  [(VSAudioPlaybackServiceAT *)self didEndAccessPower];
  self->_enqueuedSampleCount = 0.0;
}

- (void)flushAndStop
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "AudioQueue will flushAndStop", buf, 2u);
  }

  self->_state = 3;
  [(NSCondition *)self->_dequeueCondition lock];
  while ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    if (![(NSCondition *)self->_dequeueCondition waitUntilDate:?])
    {
      v4 = VSGetLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Timeout in AudioQueue dequeue condition.", buf, 2u);
      }

      break;
    }
  }

  [(NSCondition *)self->_dequeueCondition unlock];
  if (AudioQueueFlush(self->_audioQueue))
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v19 = v15;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueFlush %@", buf, 0xCu);
    }

LABEL_16:

    v6 = MEMORY[0x277CCA9B8];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v8 = [v6 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v8;

    return;
  }

  if (AudioQueueStop(self->_audioQueue, 0))
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v19 = v16;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  [(VSAudioPlaybackServiceAT *)self waitForAudioQueueStop];
  if (AudioQueueStop(self->_audioQueue, 1u))
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v19 = v17;
      _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %@", buf, 0xCu);
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CCA450] forKeys:@"Error AudioQueueStop" count:?];
    v13 = [v11 errorWithDomain:? code:? userInfo:?];
    v14 = self->_error;
    self->_error = v13;
  }

  [(VSAudioPlaybackServiceAT *)self didEndAccessPower];
  self->_state = 4;
  self->_enqueuedSampleCount = 0.0;
}

- (id)_enqueueAudioBytesLength:(unsigned int)length audioBytes:(const void *)bytes packetCount:(int64_t)count packetDescriptions:(const void *)descriptions
{
  v47 = *MEMORY[0x277D85DE8];
  if (length)
  {
    outBuffer = 0;
    if (AudioQueueAllocateBuffer(self->_audioQueue, length, &outBuffer))
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v33 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        LODWORD(outTimeStamp.mSampleTime) = 138412290;
        *(&outTimeStamp.mSampleTime + 4) = v33;
        _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error AudioQueueAllocateBuffer %@", &outTimeStamp, 0xCu);
      }

LABEL_20:

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
      goto LABEL_29;
    }

    memcpy(outBuffer->mAudioData, bytes, length);
    outBuffer->mAudioDataByteSize = length;
    memset(&outTimeStamp, 0, sizeof(outTimeStamp));
    CurrentTime = AudioQueueGetCurrentTime(self->_audioQueue, 0, &outTimeStamp, 0);
    if (self->_enqueuedSampleCount == 0.0)
    {
      date = [MEMORY[0x277CBEAA8] date];
      audioQueueStartDate = self->_audioQueueStartDate;
      self->_audioQueueStartDate = date;
    }

    if (!CurrentTime)
    {
      mSampleTime = self->_audioStartTimeStamp.mSampleTime;
      if (mSampleTime == 3.40282347e38)
      {
        v16 = *&outTimeStamp.mRateScalar;
        *&self->_audioStartTimeStamp.mSampleTime = *&outTimeStamp.mSampleTime;
        *&self->_audioStartTimeStamp.mRateScalar = v16;
        v17 = *&outTimeStamp.mSMPTETime.mHours;
        *&self->_audioStartTimeStamp.mSMPTETime.mSubframes = *&outTimeStamp.mSMPTETime.mSubframes;
        *&self->_audioStartTimeStamp.mSMPTETime.mHours = v17;
        v18 = VSGetLogDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = self->_audioStartTimeStamp.mSampleTime;
          *buf = 134217984;
          selfCopy = *&v19;
          _os_log_impl(&dword_2727E4000, v18, OS_LOG_TYPE_INFO, "Audio queue start sample time: %.0f", buf, 0xCu);
        }

        mSampleTime = self->_audioStartTimeStamp.mSampleTime;
      }

      v20 = outTimeStamp.mSampleTime;
      enqueuedSampleCount = self->_enqueuedSampleCount;
      v22 = outTimeStamp.mSampleTime <= enqueuedSampleCount + mSampleTime;
      self->_discontinuedDuringPlayback |= outTimeStamp.mSampleTime > enqueuedSampleCount + mSampleTime;
      if (!v22)
      {
        v23 = v20 - enqueuedSampleCount - mSampleTime;
        v24 = VSGetLogDefault();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(selfCopy) = v23;
          _os_log_error_impl(&dword_2727E4000, v24, OS_LOG_TYPE_ERROR, "Detected stalled audio generation, will enqueue %d silence frame to compensate.", buf, 8u);
        }

        AudioQueueEnqueueSilence();
        self->_enqueuedSampleCount = v23 + self->_enqueuedSampleCount;
      }
    }

    if (AudioQueueEnqueueBuffer(self->_audioQueue, outBuffer, count, descriptions))
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v34 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 138412290;
        selfCopy = v34;
        _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error AudioQueueEnqueueBuffer %@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    kdebug_trace();
    if (count && descriptions)
    {
      v26 = (self->_asbd.mFramesPerPacket * count);
    }

    else
    {
      v26 = (length / self->_asbd.mBytesPerFrame);
    }

    self->_enqueuedSampleCount = v26 + self->_enqueuedSampleCount;
    v27 = [(NSDate *)self->_audioQueueStartDate dateByAddingTimeInterval:?];
    audioQueueFutureEndDate = self->_audioQueueFutureEndDate;
    self->_audioQueueFutureEndDate = v27;

    v29 = VSGetLogDefault();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = self->_enqueuedSampleCount;
      discontinuedDuringPlayback = self->_discontinuedDuringPlayback;
      *buf = 134219008;
      selfCopy = self;
      v38 = 2048;
      v39 = outTimeStamp.mSampleTime;
      v40 = 2048;
      lengthCopy = length;
      v42 = 2048;
      v43 = v30;
      v44 = 1024;
      v45 = discontinuedDuringPlayback;
      _os_log_impl(&dword_2727E4000, v29, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p enqueued audio buffer at sample time: %.2f, size: %ld, total enqueued samples: %.0f, discontinuity: %{BOOL}d", buf, 0x30u);
    }
  }

  v25 = 0;
LABEL_29:

  return v25;
}

- (void)dequeueAvailableMappedAudio
{
  if (self->_playingBufferCount <= 2)
  {
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v21 = v8;
    v22 = v9;
    do
    {
      if (![(NSMutableArray *)self->_enqueuedMappedAudioInfo count:v15]|| self->_state == 4)
      {
        break;
      }

      firstObject = [(NSMutableArray *)self->_enqueuedMappedAudioInfo firstObject];
      [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeObjectAtIndex:?];
      [firstObject audioBytesRange];
      mappedData = self->_mappedData;
      [firstObject audioBytesRange];
      [(VSMappedData *)mappedData bytesAtOffset:?];
      [firstObject packetCount];
      v13 = self->_mappedData;
      [firstObject packetDescriptionsRange];
      [(VSMappedData *)v13 bytesAtOffset:?];
      v14 = [VSAudioPlaybackServiceAT _enqueueAudioBytesLength:"_enqueueAudioBytesLength:audioBytes:packetCount:packetDescriptions:" audioBytes:? packetCount:? packetDescriptions:?];
      if (!v14)
      {
        ++self->_playingBufferCount;
      }

      [(NSCondition *)self->_dequeueCondition lock];
      [(NSCondition *)self->_dequeueCondition broadcast];
      [(NSCondition *)self->_dequeueCondition unlock];
    }

    while (self->_playingBufferCount < 3);
  }
}

- (void)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  enqueueCopy = enqueue;
  pthread_mutex_lock(&__VSAudioQueueBufferLock);
  v9 = objc_alloc_init(VSAudioMappedInfoAT);
  [(VSMappedData *)self->_mappedData appendData:?];

  [(VSAudioMappedInfoAT *)v9 setAudioBytesRange:?];
  [(VSAudioMappedInfoAT *)v9 setPacketCount:?];
  [(VSMappedData *)self->_mappedData appendData:?];

  [(VSAudioMappedInfoAT *)v9 setPacketDescriptionsRange:?];
  [(NSMutableArray *)self->_enqueuedMappedAudioInfo addObject:?];
  [(VSAudioPlaybackServiceAT *)self dequeueAvailableMappedAudio];
  pthread_mutex_unlock(&__VSAudioQueueBufferLock);
}

- (id)start
{
  v20 = *MEMORY[0x277D85DE8];
  error = self->_error;
  self->_error = 0;

  if (AudioQueueStart(self->_audioQueue, 0))
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      LODWORD(v17.value) = 138412290;
      *(&v17.value + 4) = v16;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Error AudioQueueStart %@", &v17, 0xCu);
    }

    v5 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Error AudioQueueStart";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v7 = [v5 errorWithDomain:? code:? userInfo:?];
  }

  else
  {
    self->_state = 2;
    date = [MEMORY[0x277CBEAA8] date];
    audioQueueStartDate = self->_audioQueueStartDate;
    self->_audioQueueStartDate = date;

    v10 = [(NSDate *)self->_audioQueueStartDate dateByAddingTimeInterval:?];
    audioQueueFutureEndDate = self->_audioQueueFutureEndDate;
    self->_audioQueueFutureEndDate = v10;

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v17.value) = 134217984;
      *(&v17.value + 4) = self;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "VSAudioPlaybackService %p success AudioQueueStart", &v17, 0xCu);
    }

    timebase = self->_timebase;
    if (timebase)
    {
      CMTimebaseSetRate(timebase, 1.0);
      v14 = self->_timebase;
      v17 = **&MEMORY[0x277CC08F0];
      CMTimebaseSetTime(v14, &v17);
    }

    v7 = 0;
  }

  return v7;
}

- (void)signalQueueRunningStateChange
{
  pthread_mutex_lock(&self->_waitForStateChangeMutex);
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "Signal AudioQueue running state change", v4, 2u);
  }

  pthread_cond_broadcast(&self->_stateChangeCondition);
  pthread_mutex_unlock(&self->_waitForStateChangeMutex);
}

- (void)handleMediaServerReset
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "mediaserverd reset", v4, 2u);
  }

  [(VSAudioPlaybackServiceAT *)self stop];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:?];

  if (AudioQueueDispose(self->_audioQueue, 1u))
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Error AudioQueueDispose %@", buf, 0xCu);
    }
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CFRelease(timebase);
  }

  v7.receiver = self;
  v7.super_class = VSAudioPlaybackServiceAT;
  [(VSAudioPlaybackServiceAT *)&v7 dealloc];
}

- (VSAudioPlaybackServiceAT)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd
{
  v37 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v32.receiver = self;
  v32.super_class = VSAudioPlaybackServiceAT;
  v7 = [(VSAudioPlaybackServiceAT *)&v32 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 5) = 1;
    v9 = *&asbd->mSampleRate;
    v10 = *&asbd->mBytesPerPacket;
    *(v7 + 17) = *&asbd->mBitsPerChannel;
    *(v7 + 120) = v10;
    *(v7 + 104) = v9;
    if (d)
    {
      *(v7 + 3) = d;
    }

    else
    {
      mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
      *(v8 + 3) = [mEMORY[0x277CB83F8] opaqueSessionID];
    }

    *(v8 + 18) = 1018212795;
    *(v8 + 200) = 0u;
    *(v8 + 216) = 0u;
    *(v8 + 232) = 0u;
    *(v8 + 152) = 0u;
    *(v8 + 168) = 0u;
    *(v8 + 23) = 0;
    *(v8 + 24) = 850045863;
    *(v8 + 31) = 0;
    *(v8 + 32) = 0x47EFFFFFE0000000;
    v12 = objc_alloc_init(MEMORY[0x277D79948]);
    v13 = *(v8 + 9);
    *(v8 + 9) = v12;

    array = [MEMORY[0x277CBEB18] array];
    v15 = *(v8 + 10);
    *(v8 + 10) = array;

    v16 = objc_alloc_init(MEMORY[0x277CCA928]);
    v17 = *(v8 + 12);
    *(v8 + 12) = v16;

    if (AudioQueueNewOutputWithAudioSession())
    {
      v18 = VSGetLogDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v29 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 138412290;
        v34 = v29;
        _os_log_error_impl(&dword_2727E4000, v18, OS_LOG_TYPE_ERROR, "Error AudioQueueNewOutputWithAudioSession %@", buf, 0xCu);
      }

      v19 = 0;
      goto LABEL_23;
    }

    if (AudioQueueSetProperty(*(v8 + 2), 0x63756964u, &VSAudioPlaybackAudioQueueUID, 8u))
    {
      v20 = VSGetLogDefault();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v30 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 138412290;
        v34 = v30;
        _os_log_error_impl(&dword_2727E4000, v20, OS_LOG_TYPE_ERROR, "Unable to set kAudioQueueProperty_ClientUID, errno: %@", buf, 0xCu);
      }
    }

    v21 = *MEMORY[0x277CBECE8];
    HostTimeClock = CMClockGetHostTimeClock();
    if (CMTimebaseCreateWithSourceClock(v21, HostTimeClock, v8 + 4))
    {
      v23 = VSGetLogDefault();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 138412290;
        v34 = v31;
        _os_log_error_impl(&dword_2727E4000, v23, OS_LOG_TYPE_ERROR, "Error CMTimebaseCreateWithSourceClock: %@", buf, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:? selector:? name:? object:?];

    v25 = VSGetLogDefault();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v34) = d;
      _os_log_impl(&dword_2727E4000, v25, OS_LOG_TYPE_DEFAULT, "AudioQueue initialized with session ID: %d", buf, 8u);
    }
  }

  mach_absolute_time();
  v26 = VSGetLogDefault();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    VSAbsoluteTimeToSecond();
    *buf = 134218240;
    v34 = v8;
    v35 = 2048;
    v36 = v27;
    _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p init latency: %.3f", buf, 0x16u);
  }

  v19 = v8;
LABEL_23:

  return v19;
}

@end