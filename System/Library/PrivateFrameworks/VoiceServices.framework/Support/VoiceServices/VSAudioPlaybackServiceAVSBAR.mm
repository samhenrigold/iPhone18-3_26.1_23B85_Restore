@interface VSAudioPlaybackServiceAVSBAR
- (AudioStreamBasicDescription)asbd;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
- (VSAudioPlaybackServiceAVSBAR)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd;
- (_opaque_pthread_mutex_t)audioQueueBufferLock;
- (_opaque_pthread_mutex_t)stateLock;
- (double)duration:(id)duration;
- (id)addBoundaryTimeObserverForTimes:(id)times usingBlock:(id)block;
- (id)start;
- (opaqueCMSampleBuffer)createSampleBuffer:(id)buffer;
- (opaqueCMSampleBuffer)createSilenceEndBuffer;
- (void)_play;
- (void)_startProvidingData;
- (void)addEndOfDataAttachment;
- (void)createSampleBufferIdNeeded:(id)needed;
- (void)dealloc;
- (void)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions;
- (void)flushAndStop;
- (void)freeAudioQueue;
- (void)handleMediaServerReset;
- (void)pause;
- (void)provideMoreData;
- (void)removeTimeObserver:(id)observer;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)setAudioQueueBufferLock:(_opaque_pthread_mutex_t *)lock;
- (void)setMappedAudioQueuedTimeStamp:(id *)stamp;
- (void)setStateLock:(_opaque_pthread_mutex_t *)lock;
- (void)stop;
- (void)stopWaiting;
@end

@implementation VSAudioPlaybackServiceAVSBAR

- (void)setMappedAudioQueuedTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_mappedAudioQueuedTimeStamp.epoch = stamp->var3;
  *&self->_mappedAudioQueuedTimeStamp.value = v3;
}

- (void)setStateLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_stateLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_stateLock.__opaque[40] = v5;
  *&self->_stateLock.__sig = v3;
  *&self->_stateLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)stateLock
{
  v3 = *&self[3].__opaque[40];
  *&retstr->__sig = *&self[3].__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[4].__opaque[8];
  *&retstr->__opaque[24] = *&self[4].__sig;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setAudioQueueBufferLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_audioQueueBufferLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_audioQueueBufferLock.__opaque[40] = v5;
  *&self->_audioQueueBufferLock.__sig = v3;
  *&self->_audioQueueBufferLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)audioQueueBufferLock
{
  v3 = *&self[2].__opaque[40];
  *&retstr->__sig = *&self[2].__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[3].__opaque[8];
  *&retstr->__opaque[24] = *&self[3].__sig;
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
  v3 = *&self[3].mBytesPerPacket;
  *&retstr->mSampleRate = *&self[3].mSampleRate;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[3].mBitsPerChannel;
  return self;
}

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  [(AVSampleBufferAudioRenderer *)self->_renderer volume];
  *power = v7;
  [(AVSampleBufferAudioRenderer *)self->_renderer volume];
  *peakPower = v8;
  return 1;
}

- (void)removeTimeObserver:(id)observer
{
  if (observer)
  {
    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer removeTimeObserver:?];
  }
}

- (id)addBoundaryTimeObserverForTimes:(id)times usingBlock:(id)block
{
  blockCopy = block;
  v7 = [times sortedArrayUsingComparator:?];
  objc_initWeak(&location, self);
  synchronizer = self->_synchronizer;
  v11 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = blockCopy;
  v9 = [(AVSampleBufferRenderSynchronizer *)synchronizer addBoundaryTimeObserverForTimes:v11 queue:3221225472 usingBlock:__75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_2, &unk_279E4B4B0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = 0uLL;
    v7 = 0;
    if (*(WeakRetained + 4))
    {
      [&v6 currentTime];
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v4 enumerateObjectsWithOptions:? usingBlock:?];
  }
}

void __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  memset(&v10, 0, sizeof(v10));
  if (v6)
  {
    [&v10 CMTimeValue];
  }

  time1 = v10;
  v8 = *(a1 + 40);
  if (CMTimeCompare(&time1, &v8) <= 0)
  {
    v7 = *(*(a1 + 32) + 16);
    time1 = v10;
    v7();
    *a4 = 1;
  }
}

uint64_t __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [&time1 CMTimeValue];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [&v9 CMTimeValue];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

- (void)freeAudioQueue
{
  v13 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_audioQueueBufferLock);
  if ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableArray *)self->_enqueuedMappedAudioInfo count];
      *buf = 134217984;
      v12 = v4;
      _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "#AVSBAR Dropping %lu enqueued data", buf, 0xCu);
    }

    v5 = self->_enqueuedMappedAudioInfo;
    v6 = [NSMutableArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      do
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(8 * i) + 8);
          if (v10)
          {
            CFRelease(v10);
          }
        }

        v7 = [NSMutableArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeAllObjects];
  }

  pthread_mutex_unlock(&self->_audioQueueBufferLock);
}

- (void)pause
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.value) = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Pausing synchronizer", &v9, 2u);
  }

  pthread_mutex_lock(&self->_stateLock);
  self->_state = 1;
  pthread_mutex_unlock(&self->_stateLock);
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_synchronizer)
    {
      [&v9 currentTime];
    }

    else
    {
      memset(&v9, 0, sizeof(v9));
    }

    Seconds = CMTimeGetSeconds(&v9);
    LODWORD(v9.value) = 134217984;
    *(&v9.value + 4) = Seconds;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "#AVSBAR synchronizer.rate will be set to 0 (at current time: %f).", &v9, 0xCu);
  }

  mach_absolute_time();
  [(AVSampleBufferRenderSynchronizer *)self->_synchronizer setRate:?];
  mach_absolute_time();
  VSAbsoluteTimeToSecond();
  if (v6 > 0.25)
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      VSAbsoluteTimeToSecond();
      LODWORD(v9.value) = 134217984;
      *(&v9.value + 4) = v8;
      _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "_synchronizer pause rate high latency: %.3f sec", &v9, 0xCu);
    }
  }
}

- (void)stop
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Stopping synchronizer and renderer", &buf, 2u);
  }

  pthread_mutex_lock(&self->_stateLock);
  self->_state = 4;
  pthread_mutex_unlock(&self->_stateLock);
  [(VSAudioPlaybackServiceAVSBAR *)self stopWaiting];
  [(AVSampleBufferAudioRenderer *)self->_renderer stopRequestingMediaData];
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_synchronizer)
    {
      [&buf currentTime];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    Seconds = CMTimeGetSeconds(&buf);
    LODWORD(buf.value) = 134217984;
    *(&buf.value + 4) = Seconds;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "#AVSBAR synchronizer.rate will be set to 0 and time set to 0 (from current time: %f). Then renderer will be flushed.", &buf, 0xCu);
  }

  mach_absolute_time();
  synchronizer = self->_synchronizer;
  buf = **&MEMORY[0x277CC08F0];
  [AVSampleBufferRenderSynchronizer setRate:"setRate:time:" time:?];
  mach_absolute_time();
  VSAbsoluteTimeToSecond();
  if (v7 > 0.25)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      VSAbsoluteTimeToSecond();
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v12;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "_synchronizer stop rate high latency: %.3f sec", &buf, 0xCu);
    }
  }

  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
    LODWORD(buf.value) = 134217984;
    *(&buf.value + 4) = v10;
    _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "#AVSBAR synchronizer.rate was set to 0. Current rate: %f", &buf, 0xCu);
  }

  v11 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAudioPlaybackServiceAVSBAR_stop__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v11, block);
}

void __36__VSAudioPlaybackServiceAVSBAR_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) flush];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR renderer was flushed", v3, 2u);
  }

  *(*(a1 + 32) + 9) = 0;
  if (sLastSynchronizer == *(*(a1 + 32) + 32))
  {
    sLastSynchronizerStartedProvidingData = 0;
  }
}

- (void)stopWaiting
{
  dsema = self->_noRemainTasks;
  noRemainTasks = self->_noRemainTasks;
  self->_noRemainTasks = 0;

  v4 = dsema;
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
    v4 = dsema;
  }
}

- (void)flushAndStop
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "#AVSBAR flushAndStop", &buf, 2u);
  }

  pthread_mutex_lock(&self->_stateLock);
  if ((self->_state - 3) > 1)
  {
    v5 = dispatch_semaphore_create(0);
    objc_storeStrong(&self->_noRemainTasks, v5);
    self->_state = 3;
    pthread_mutex_unlock(&self->_stateLock);
    [(VSAudioPlaybackServiceAVSBAR *)self addEndOfDataAttachment];
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__VSAudioPlaybackServiceAVSBAR_flushAndStop__block_invoke;
    block[3] = &unk_279E4BAC8;
    block[4] = self;
    dispatch_sync(dataQueue, block);
    memset(&buf, 0, sizeof(buf));
    if (self->_synchronizer)
    {
      [&buf currentTime];
      synchronizer = self->_synchronizer;
    }

    else
    {
      synchronizer = 0;
    }

    mappedAudioQueuedTimeStamp = self->_mappedAudioQueuedTimeStamp;
    v8 = [MEMORY[0x277CCAE60] valueWithBytes:? objCType:?];
    v40 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __44__VSAudioPlaybackServiceAVSBAR_flushAndStop__block_invoke_2;
    v33 = &unk_279E4BAC8;
    v4 = v5;
    v34 = v4;
    v10 = [AVSampleBufferRenderSynchronizer addBoundaryTimeObserverForTimes:"addBoundaryTimeObserverForTimes:queue:usingBlock:" queue:? usingBlock:?];

    v11 = 0.0;
    *&v12 = 134218240;
    v28 = v12;
    while (1)
    {
      time1 = buf;
      time2 = mappedAudioQueuedTimeStamp;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        break;
      }

      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        time1 = buf;
        Seconds = CMTimeGetSeconds(&time1);
        time1 = mappedAudioQueuedTimeStamp;
        v15 = CMTimeGetSeconds(&time1);
        LODWORD(time1.value) = v28;
        *(&time1.value + 4) = Seconds;
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = v15;
        _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEFAULT, "#AVSBAR Waiting for synchronizer finishing playing between current %f sec and until %f sec", &time1, 0x16u);
      }

      v16 = dispatch_time(0, 1000000000);
      if (!dispatch_semaphore_wait(v4, v16) || !self->_noRemainTasks)
      {
        break;
      }

      memset(&time1, 0, sizeof(time1));
      v17 = self->_synchronizer;
      if (v17)
      {
        [&time1 currentTime];
        v17 = self->_synchronizer;
      }

      [(AVSampleBufferRenderSynchronizer *)v17 rate];
      if (v18 <= 0.0 || (time2 = time1, v29 = buf, CMTimeCompare(&time2, &v29) <= 0))
      {
        if (self->_state != 1)
        {
          v11 = v11 + 1.0;
          if (v11 >= 5.0)
          {
            v19 = VSGetLogDefault();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
              v26 = v25;
              time2 = time1;
              v27 = CMTimeGetSeconds(&time2);
              LODWORD(time2.value) = v28;
              *(&time2.value + 4) = v26;
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v27;
              _os_log_error_impl(&dword_2727E4000, v19, OS_LOG_TYPE_ERROR, "#AVSBAR Synchronizer is stalled with rate %f at time %f.", &time2, 0x16u);
            }

            v20 = MEMORY[0x277CCA9B8];
            block[5] = *MEMORY[0x277CCA450];
            block[6] = @"Timeout waiting for AVSampleBufferRenderSynchronizer";
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            v22 = [v20 errorWithDomain:? code:? userInfo:?];
            error = self->_error;
            self->_error = v22;

            break;
          }
        }
      }

      buf = time1;
    }

    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer removeTimeObserver:v28];
    noRemainTasks = self->_noRemainTasks;
    self->_noRemainTasks = 0;

    [(VSAudioPlaybackServiceAVSBAR *)self stop];
  }

  else
  {
    pthread_mutex_unlock(&self->_stateLock);
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "#AVSBAR already stopped or waiting for finish", &buf, 2u);
    }
  }
}

intptr_t __44__VSAudioPlaybackServiceAVSBAR_flushAndStop__block_invoke_2(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR Synchronizer reached endTime", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)provideMoreData
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      state = self->_state;
      LODWORD(time.value) = 134217984;
      *(&time.value + 4) = state;
      _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "#AVSBAR Call to provide more audio data during state %ld.", &time, 0xCu);
    }
  }

  if ([(AVSampleBufferAudioRenderer *)self->_renderer isReadyForMoreMediaData])
  {
    *&v4 = 134217984;
    v26 = v4;
    while (1)
    {
      pthread_mutex_lock(&self->_audioQueueBufferLock);
      firstObject = [(NSMutableArray *)self->_enqueuedMappedAudioInfo firstObject];
      if (!firstObject)
      {
        break;
      }

      v6 = firstObject;
      [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeObjectAtIndex:?];
      [(VSAudioPlaybackServiceAVSBAR *)self createSampleBufferIdNeeded:?];
      pthread_mutex_unlock(&self->_audioQueueBufferLock);
      v7 = v6[1];
      if (v7)
      {
        CMSampleBufferGetOutputDuration(&time, v7);
        Seconds = CMTimeGetSeconds(&time);
        v9 = VSGetLogDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          renderer = self->_renderer;
          LODWORD(time.value) = 138412546;
          *(&time.value + 4) = renderer;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = Seconds;
          _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "#AVSBAR Enqueuing to %@: %f sec", &time, 0x16u);
        }

        mach_absolute_time();
        renderer = [(VSAudioPlaybackServiceAVSBAR *)self renderer];
        [renderer enqueueSampleBuffer:?];

        mach_absolute_time();
        VSAbsoluteTimeToSecond();
        if (v12 > 0.25)
        {
          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            VSAbsoluteTimeToSecond();
            LODWORD(time.value) = v26;
            *(&time.value + 4) = v14;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "_renderer enqueueSampleBuffer high latency: %.3f sec", &time, 0xCu);
          }
        }

        CFRelease(v6[1]);
        self->_rendererEnqueuedAudioDuration = Seconds + self->_rendererEnqueuedAudioDuration;
        kdebug_trace();
      }

      if (([(AVSampleBufferAudioRenderer *)self->_renderer isReadyForMoreMediaData]& 1) == 0)
      {
        goto LABEL_19;
      }
    }

    pthread_mutex_unlock(&self->_audioQueueBufferLock);
  }

LABEL_19:
  if ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = self->_renderer;
      v17 = [(NSMutableArray *)self->_enqueuedMappedAudioInfo count];
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = v16;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v17;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "#AVSBAR Renderer %@ not anymore ready for more media data. enqueuedMappedAudioInfo count left: %lu", &time, 0x16u);
    }

    if (self->_state == 3)
    {
      pthread_mutex_lock(&self->_audioQueueBufferLock);
      v18 = self->_enqueuedMappedAudioInfo;
      v19 = [NSMutableArray countByEnumeratingWithState:v18 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0];
        do
        {
          for (i = 0; i != v20; i = (i + 1))
          {
            if (MEMORY[0] != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(VSAudioPlaybackServiceAVSBAR *)self createSampleBufferIdNeeded:?];
          }

          v20 = [NSMutableArray countByEnumeratingWithState:v18 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v20);
      }

      pthread_mutex_unlock(&self->_audioQueueBufferLock);
    }
  }

  [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
  if (v23 == 0.0)
  {
    v24 = self->_state;
    if (v24 == 3 || v24 == 2 && self->_rendererEnqueuedAudioDuration > 0.0)
    {
      [(VSAudioPlaybackServiceAVSBAR *)self _play];
    }
  }
}

- (void)addEndOfDataAttachment
{
  pthread_mutex_lock(&self->_audioQueueBufferLock);
  lastObject = [(NSMutableArray *)self->_enqueuedMappedAudioInfo lastObject];
  if (lastObject)
  {
    v4 = lastObject;
    [(VSAudioMappedInfoAVSBAR *)lastObject setEndOfSiriTTSUtterance:?];
  }

  else
  {
    v4 = objc_alloc_init(VSAudioMappedInfoAVSBAR);
    [(VSMappedData *)self->_mappedData appendData:?];
    [(VSAudioMappedInfoAVSBAR *)v4 setAudioBytesRange:?];
    [(VSAudioMappedInfoAVSBAR *)v4 setPacketCount:?];
    [(VSMappedData *)self->_mappedData appendData:?];
    [(VSAudioMappedInfoAVSBAR *)v4 setPacketDescriptionsRange:?];
    [(VSAudioMappedInfoAVSBAR *)v4 setEndOfSiriTTSUtterance:?];
    [(NSMutableArray *)self->_enqueuedMappedAudioInfo addObject:?];
  }

  pthread_mutex_unlock(&self->_audioQueueBufferLock);
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "#AVSBAR EndOfDataAttachment ready for enqueuing", v6, 2u);
  }
}

- (opaqueCMSampleBuffer)createSilenceEndBuffer
{
  v33 = *MEMORY[0x277D85DE8];
  asbd.mSampleRate = 48000.0;
  *&asbd.mFormatID = xmmword_272832680;
  *&asbd.mBytesPerFrame = xmmword_272832690;
  v3 = malloc_type_calloc(2uLL, 0x800uLL, 0x12761BA8uLL);
  blockBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v3, 0x1000uLL, *MEMORY[0x277CBECF0], 0, 0, 0x1000uLL, 0, &blockBufferOut))
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error in creating block buffer for Silence buffer", &presentationTimeStamp, 2u);
    }

    v6 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Error in creating block buffer for Silence buffer";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v8 = [v6 errorWithDomain:? code:? userInfo:?];
    error = self->_error;
    self->_error = v8;

    free(v3);
    return 0;
  }

  formatDescriptionOut = 0;
  if (CMAudioFormatDescriptionCreate(v4, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut))
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Error in CMAudioFormatDescriptionCreate from Silence buffer creation", &presentationTimeStamp, 2u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"Error in CMAudioFormatDescriptionCreate from Silence buffer creation";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v13 = [v11 errorWithDomain:? code:? userInfo:?];
    v14 = self->_error;
    self->_error = v13;

    CFRelease(blockBufferOut);
    return 0;
  }

  presentationTimeStamp = self->_mappedAudioQueuedTimeStamp;
  v23 = 0;
  v15 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 0x1000 / asbd.mBytesPerFrame, &presentationTimeStamp, 0, &v23);
  CFRelease(blockBufferOut);
  CFRelease(formatDescriptionOut);
  if (v15)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v16, OS_LOG_TYPE_ERROR, "Error in CMAudioSampleBufferCreateWithPacketDescriptions from silence buffer", &presentationTimeStamp, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Error in CMAudioSampleBufferCreateWithPacketDescriptions from silence buffer";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v19 = [v17 errorWithDomain:? code:? userInfo:?];
    v20 = self->_error;
    self->_error = v19;

    return 0;
  }

  return v23;
}

- (void)_startProvidingData
{
  if (!self->_startedProvidingData)
  {
    self->_startedProvidingData = 1;
    if (sLastSynchronizer == self->_synchronizer)
    {
      sLastSynchronizerStartedProvidingData = 1;
    }

    objc_initWeak(&location, self);
    renderer = self->_renderer;
    v4 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v5, &location);
    [(AVSampleBufferAudioRenderer *)renderer requestMediaDataWhenReadyOnQueue:v4 usingBlock:3221225472, __51__VSAudioPlaybackServiceAVSBAR__startProvidingData__block_invoke, &unk_279E4B7A0];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__VSAudioPlaybackServiceAVSBAR__startProvidingData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained provideMoreData];
}

- (void)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions
{
  v15 = *MEMORY[0x277D85DE8];
  enqueueCopy = enqueue;
  descriptionsCopy = descriptions;
  if ((self->_state - 3) > 1)
  {
    if ([enqueueCopy length])
    {
      pthread_mutex_lock(&self->_audioQueueBufferLock);
      v9 = objc_alloc_init(VSAudioMappedInfoAVSBAR);
      [(VSMappedData *)self->_mappedData appendData:?];
      [(VSAudioMappedInfoAVSBAR *)v9 setAudioBytesRange:?];
      [(VSAudioMappedInfoAVSBAR *)v9 setPacketCount:?];
      [(VSMappedData *)self->_mappedData appendData:?];
      [(VSAudioMappedInfoAVSBAR *)v9 setPacketDescriptionsRange:?];
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        [(VSAudioPlaybackServiceAVSBAR *)self duration:?];
        v13 = 134217984;
        v14 = v12;
        _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Adding to enqueuedMappedAudioInfo: %f sec", &v13, 0xCu);
      }

      [(NSMutableArray *)self->_enqueuedMappedAudioInfo addObject:?];
      pthread_mutex_unlock(&self->_audioQueueBufferLock);
      [(VSAudioPlaybackServiceAVSBAR *)self _startProvidingData];
    }

    else
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        v10 = "#AVSBAR empty audio data: will not enqueue it";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v10 = "#AVSBAR already stopped or waiting for finish: will not enqueue more";
LABEL_11:
      _os_log_error_impl(&dword_2727E4000, &v9->super, OS_LOG_TYPE_ERROR, v10, &v13, 2u);
    }
  }
}

- (double)duration:(id)duration
{
  durationCopy = duration;
  v5 = durationCopy;
  v6 = 0.0;
  if (self->_asbd.mSampleRate != 0.0)
  {
    if ([durationCopy packetCount])
    {
      packetCount = [v5 packetCount];
      LODWORD(v9) = self->_asbd.mFramesPerPacket;
      v6 = packetCount * v9 / self->_asbd.mSampleRate;
    }

    else
    {
      LODWORD(v7) = self->_asbd.mBytesPerFrame;
      v10 = self->_asbd.mSampleRate * v7;
      if (v10 != 0.0)
      {
        [v5 audioBytesRange];
        v6 = v11 / v10;
      }
    }
  }

  return v6;
}

- (opaqueCMSampleBuffer)createSampleBuffer:(id)buffer
{
  v46 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v39 = 0;
  mappedData = self->_mappedData;
  [bufferCopy audioBytesRange];
  [(VSMappedData *)mappedData bytesAtOffset:?];
  if ([bufferCopy packetCount])
  {
    v6 = self->_mappedData;
    [bufferCopy packetDescriptionsRange];
    packetDescriptions = [(VSMappedData *)v6 bytesAtOffset:?];
  }

  else
  {
    packetDescriptions = 0;
  }

  [bufferCopy audioBytesRange];
  v9 = v8;
  v10 = *MEMORY[0x277CBECE8];
  if (FigCreateBlockBufferCopyingMemoryBlock())
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error in creating block buffer for Sample buffer", &presentationTimeStamp, 2u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = @"Error in creating block buffer for Sample buffer";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v14 = v12;
  }

  else
  {
    formatDescriptionOut = 0;
    if (CMAudioFormatDescriptionCreate(v10, &self->_asbd, 0, 0, 0, 0, 0, &formatDescriptionOut))
    {
      v17 = VSGetLogDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(presentationTimeStamp.value) = 0;
        _os_log_error_impl(&dword_2727E4000, v17, OS_LOG_TYPE_ERROR, "Error in CMAudioFormatDescriptionCreate", &presentationTimeStamp, 2u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Error in CMAudioFormatDescriptionCreate";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v20 = [v18 errorWithDomain:? code:? userInfo:?];
      error = self->_error;
      self->_error = v20;

      CFRelease(v39);
      goto LABEL_13;
    }

    v37 = 0;
    v24 = formatDescriptionOut;
    v25 = v39;
    if (packetDescriptions)
    {
      packetCount = [bufferCopy packetCount];
      presentationTimeStamp = self->_mappedAudioQueuedTimeStamp;
      v27 = CMAudioSampleBufferCreateWithPacketDescriptions(v10, v25, 1u, 0, 0, v24, packetCount, &presentationTimeStamp, packetDescriptions, &v37);
    }

    else
    {
      mBytesPerFrame = self->_asbd.mBytesPerFrame;
      presentationTimeStamp = self->_mappedAudioQueuedTimeStamp;
      v27 = CMAudioSampleBufferCreateWithPacketDescriptions(v10, v39, 1u, 0, 0, formatDescriptionOut, v9 / mBytesPerFrame, &presentationTimeStamp, 0, &v37);
    }

    v29 = v27;
    CFRelease(v39);
    CFRelease(formatDescriptionOut);
    if (!v29)
    {
      memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
      CMSampleBufferGetOutputPresentationTimeStamp(&presentationTimeStamp, v37);
      memset(&v35, 0, sizeof(v35));
      CMSampleBufferGetOutputDuration(&v35, v37);
      lhs = presentationTimeStamp;
      rhs = v35;
      CMTimeAdd(&v34, &lhs, &rhs);
      self->_mappedAudioQueuedTimeStamp = v34;
      v22 = v37;
      goto LABEL_14;
    }

    v30 = VSGetLogDefault();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v30, OS_LOG_TYPE_ERROR, "Error in CMAudioSampleBufferCreateWithPacketDescriptions", &presentationTimeStamp, 2u);
    }

    v31 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"Error in CMAudioSampleBufferCreateWithPacketDescriptions";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v14 = v31;
  }

  v15 = [v14 errorWithDomain:? code:? userInfo:?];
  v16 = self->_error;
  self->_error = v15;

LABEL_13:
  v22 = 0;
LABEL_14:

  return v22;
}

- (void)createSampleBufferIdNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (neededCopy[1])
  {
    goto LABEL_2;
  }

  [(CMAttachmentBearerRef *)neededCopy audioBytesRange];
  if (v6)
  {
    v7 = [(VSAudioPlaybackServiceAVSBAR *)self createSampleBuffer:?];
    v5[1] = v7;
    if (!v7)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 0;
        v9 = "Invalid sample buffer";
        v10 = &v13;
LABEL_13:
        _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    createSilenceEndBuffer = [(VSAudioPlaybackServiceAVSBAR *)self createSilenceEndBuffer];
    v5[1] = createSilenceEndBuffer;
    if (!createSilenceEndBuffer)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 0;
        v9 = "Invalid silence buffer";
        v10 = &v12;
        goto LABEL_13;
      }

LABEL_11:

      goto LABEL_2;
    }
  }

  if ([(CMAttachmentBearerRef *)v5 endOfSiriTTSUtterance])
  {
    CMSetAttachment(v5[1], *MEMORY[0x277CC06E0], *MEMORY[0x277CBED28], 0);
  }

LABEL_2:
}

- (void)_play
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rendererEnqueuedAudioDuration = self->_rendererEnqueuedAudioDuration;
    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
    *buf = 134218240;
    v9 = rendererEnqueuedAudioDuration;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "#AVSBAR synchronizer.rate will be set to 1 with enqueued audio duration %f sec. Previous rate: %f", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VSAudioPlaybackServiceAVSBAR__play__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v6, block);
}

void __37__VSAudioPlaybackServiceAVSBAR__play__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 4 || objc_msgSend(*(a1 + 32), "state") == 1)
  {
    v2 = VSGetLogDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR already stopped or paused: will not resume rate", &v9, 2u);
    }
  }

  else
  {
    mach_absolute_time();
    v3 = [*(a1 + 32) synchronizer];
    [v3 setRate:?];

    mach_absolute_time();
    VSAbsoluteTimeToSecond();
    if (v4 > 0.25)
    {
      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        VSAbsoluteTimeToSecond();
        v9 = 134217984;
        v10 = v8;
        _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "_synchronizer play rate high latency: %.3f sec", &v9, 0xCu);
      }
    }

    v2 = VSGetLogDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) synchronizer];
      [v6 rate];
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR synchronizer.rate was set to 1. Current rate: %f", &v9, 0xCu);
    }
  }
}

- (id)start
{
  self->_state = 2;
  if (self->_rendererEnqueuedAudioDuration > 0.0)
  {
    [(VSAudioPlaybackServiceAVSBAR *)self _play];
  }

  error = self->_error;

  return error;
}

- (void)handleMediaServerReset
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "mediaserverd reset", v4, 2u);
  }

  [(VSAudioPlaybackServiceAVSBAR *)self stop];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:?];

  [(VSAudioPlaybackServiceAVSBAR *)self stopWaiting];
  [(VSAudioPlaybackServiceAVSBAR *)self freeAudioQueue];
  v4.receiver = self;
  v4.super_class = VSAudioPlaybackServiceAVSBAR;
  [(VSAudioPlaybackServiceAVSBAR *)&v4 dealloc];
}

- (VSAudioPlaybackServiceAVSBAR)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd
{
  v47 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v43.receiver = self;
  v43.super_class = VSAudioPlaybackServiceAVSBAR;
  v7 = [(VSAudioPlaybackServiceAVSBAR *)&v43 init];
  v8 = v7;
  if (!v7)
  {
LABEL_15:
    mach_absolute_time();
    v36 = VSGetLogDefault();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      VSAbsoluteTimeToSecond();
      *buf = 134218240;
      *v45 = v8;
      *&v45[8] = 2048;
      v46 = v37;
      _os_log_impl(&dword_2727E4000, v36, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p init latency: %.3f", buf, 0x16u);
    }

    v38 = v8;
    goto LABEL_21;
  }

  *(v7 + 6) = 1;
  v9 = *&asbd->mSampleRate;
  v10 = *&asbd->mBytesPerPacket;
  *(v7 + 19) = *&asbd->mBitsPerChannel;
  *(v7 + 136) = v10;
  *(v7 + 120) = v9;
  if (d)
  {
    *(v7 + 3) = d;
    v11 = v7 + 12;
  }

  else
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    *(v8 + 3) = [mEMORY[0x277CB83F8] opaqueSessionID];
    v11 = v8 + 12;
  }

  v13 = [MEMORY[0x277CB83F8] retrieveSessionWithID:?];
  if (v13)
  {
    v14 = v13;
    v15 = objc_alloc_init(MEMORY[0x277D79948]);
    v16 = *(v8 + 9);
    *(v8 + 9) = v15;

    array = [MEMORY[0x277CBEB18] array];
    v18 = *(v8 + 10);
    *(v8 + 10) = array;

    v19 = MEMORY[0x277CC08F0];
    *(v8 + 6) = *MEMORY[0x277CC08F0];
    *(v8 + 14) = *(v19 + 16);
    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v21 = dispatch_queue_create("VSAudioPlaybackServiceAVSBARQueue", v20);
    v22 = *(v8 + 5);
    *(v8 + 5) = v21;

    v23 = sLastSynchronizer;
    v24 = sLastSynchronizer;
    renderers = [v24 renderers];
    firstObject = [renderers firstObject];

    v27 = &OBJC_IVAR___VSAudioPlaybackServiceAT__discontinuedDuringPlayback;
    if (firstObject)
    {
      audioSession = [firstObject audioSession];
      if ([audioSession opaqueSessionID] != *v11)
      {
LABEL_10:

        v27 = &OBJC_IVAR___VSAudioPlaybackServiceAT__discontinuedDuringPlayback;
        goto LABEL_11;
      }

      if (v24)
      {
        [v42 currentTime];
        if (v42[0])
        {
          goto LABEL_10;
        }
      }

      else
      {
        memset(v42, 0, sizeof(v42));
      }

      v41 = sLastSynchronizerStartedProvidingData;

      v27 = &OBJC_IVAR___VSAudioPlaybackServiceAT__discontinuedDuringPlayback;
      if ((v41 & 1) == 0)
      {
        objc_storeStrong(v8 + 3, firstObject);
        objc_storeStrong(v8 + 4, v23);
        goto LABEL_12;
      }
    }

LABEL_11:
    v29 = objc_alloc_init(MEMORY[0x277CE6608]);
    v30 = *(v8 + 3);
    *(v8 + 3) = v29;

    [*(v8 + 3) setAudioSession:?];
    v31 = objc_alloc_init(MEMORY[0x277CE6620]);
    v32 = *(v8 + 4);
    *(v8 + 4) = v31;

    [*(v8 + 4) setDelaysRateChangeUntilHasSufficientMediaData:?];
    [*(v8 + 4) addRenderer:?];
    objc_storeStrong(&sLastSynchronizer, *(v8 + 4));
    *(v27 + 1888) = 0;
LABEL_12:
    pthread_mutex_init((v8 + 224), 0);
    pthread_mutex_init((v8 + 160), 0);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:? selector:? name:? object:?];

    v34 = VSGetLogDefault();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(v8 + 4) == v24;
      *buf = 67109376;
      *v45 = d;
      *&v45[4] = 1024;
      *&v45[6] = v35;
      _os_log_impl(&dword_2727E4000, v34, OS_LOG_TYPE_DEFAULT, "#AVSBAR initialized with session ID: %d, reusing previous synchronizer: %{BOOL}d", buf, 0xEu);
    }

    goto LABEL_15;
  }

  v39 = VSGetLogDefault();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *v45 = d;
    _os_log_error_impl(&dword_2727E4000, v39, OS_LOG_TYPE_ERROR, "Can't retrieve session with ID: %d", buf, 8u);
  }

  v38 = 0;
LABEL_21:

  return v38;
}

@end