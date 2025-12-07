@interface HMDAudioStreamInterface
+ (NSHashTable)mutedStreams;
+ (id)_createAudioStreamWithSessionHandler:(id)handler localNetworkConfig:(id)config localRTPSocket:(int *)socket sessionID:(id)d;
+ (id)_createLocalStreamAndRTPSocket:(int *)socket localNetworkConfig:(id)config sessionID:(id)d;
+ (id)_createStreamWithRemoteDestinationReceiver:(id)receiver sessionID:(id)d;
+ (id)_createStreamWithRemoteSocketReceiver:(id)receiver sessionID:(id)d;
+ (id)logCategory;
+ (int)_createLocalRTPSocketWithRemoteSender:(id)sender localNetworkConfig:(id)config;
- (BOOL)isMuted;
- (BOOL)removeMutedStream:(id)stream;
- (HMDAudioStreamInterface)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate sessionHandler:(id)handler audioStream:(id)stream localRTPSocket:(int)socket dataSource:(id)source;
- (HMDAudioStreamInterface)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate sessionHandler:(id)handler localNetworkConfig:(id)config;
- (HMDAudioStreamInterfaceDelegate)delegate;
- (NSNumber)downlinkToken;
- (NSNumber)syncSource;
- (NSNumber)uplinkToken;
- (id)logIdentifier;
- (void)_callPaused:(id)paused;
- (void)_callResumed:(id)resumed;
- (void)_callStarted:(id)started;
- (void)_callStopped:(id)stopped;
- (void)_pauseStream;
- (void)_resumeStream;
- (void)_stopStreamWithCompletion:(id)completion;
- (void)addMutedStream:(id)stream;
- (void)dealloc;
- (void)setMuted:(BOOL)muted;
- (void)startPHASEEngineAndController;
- (void)startStreamWithConfig:(id)config;
- (void)startSynchronizationWithVideoStreamToken:(int64_t)token;
- (void)stopStream;
- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error;
- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
- (void)updateAudioSetting:(unint64_t)setting;
- (void)updateAudioVolume:(id)volume callback:(id)callback;
@end

@implementation HMDAudioStreamInterface

- (HMDAudioStreamInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  sessionID = [(HMDStreamInterface *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)streamDidRTCPTimeOut:(id)out
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDAudioStreamInterface_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __48__HMDAudioStreamInterface_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream RTCP has timed out", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)streamDidRTPTimeOut:(id)out
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAudioStreamInterface_streamDidRTPTimeOut___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __47__HMDAudioStreamInterface_streamDidRTPTimeOut___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream RTP has timed out", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)streamDidServerDie:(id)die
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDAudioStreamInterface_streamDidServerDie___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __46__HMDAudioStreamInterface_streamDidServerDie___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream server died", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1014];
  [v6 _callStopped:v7];
}

- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDAudioStreamInterface_stream_didResume_error___block_invoke;
  block[3] = &unk_278688BD0;
  resumeCopy = resume;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

uint64_t __50__HMDAudioStreamInterface_stream_didResume_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream resumed with didResume: %@ error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _callResumed:*(a1 + 40)];
}

- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDAudioStreamInterface_stream_didPause_error___block_invoke;
  block[3] = &unk_278688BD0;
  pauseCopy = pause;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

uint64_t __49__HMDAudioStreamInterface_stream_didPause_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream paused with didPause: %@ error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _callPaused:*(a1 + 40)];
}

- (void)streamDidStop:(id)stop
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAudioStreamInterface_streamDidStop___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __41__HMDAudioStreamInterface_streamDidStop___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream stopped", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _callStopped:0];
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDStreamInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDAudioStreamInterface_stream_didStart_error___block_invoke;
  block[3] = &unk_278688BD0;
  startCopy = start;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

uint64_t __49__HMDAudioStreamInterface_stream_didStart_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Audio stream started with didStart: %@ error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _callStarted:*(a1 + 40)];
}

- (void)startPHASEEngineAndController
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDAudioStreamInterface *)self dataSource];
  supportsPHASE = [dataSource supportsPHASE];

  if (supportsPHASE)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
      *buf = 138543618;
      v16 = v9;
      v17 = 2048;
      streamToken = [audioStream streamToken];
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating PHASE engine and controller for stream token: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    dataSource2 = [(HMDAudioStreamInterface *)selfCopy dataSource];
    audioStream2 = [(HMDAudioStreamInterface *)selfCopy audioStream];
    streamToken2 = [audioStream2 streamToken];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke;
    v14[3] = &unk_278675030;
    v14[4] = selfCopy;
    [dataSource2 createPHASEEngineAndControllerForStreamToken:streamToken2 completion:v14];
  }
}

void __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create PHASE engine and controller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v14 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke_91;
    block[3] = &unk_27868A010;
    block[4] = *(a1 + 32);
    v16 = v7;
    v17 = v8;
    dispatch_async(v14, block);
  }
}

void __56__HMDAudioStreamInterface_startPHASEEngineAndController__block_invoke_91(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 3)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Not starting PHASEExternalOutputStreamController as stream is already stopped", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) stop];
  }

  else
  {
    v6 = *(a1 + 48);
    v13 = 0;
    v7 = [v6 startAndReturnError:&v13];
    v8 = v13;
    if (v7)
    {
      [*(a1 + 32) setEngine:*(a1 + 40)];
      [*(a1 + 32) setOutputStreamController:*(a1 + 48)];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to start PHASEExternalOutputStreamController: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [*(a1 + 40) stop];
    }
  }
}

- (void)_callStopped:(id)stopped
{
  v18 = *MEMORY[0x277D85DE8];
  stoppedCopy = stopped;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDStreamInterface *)self setState:3];
  dataSource = [(HMDAudioStreamInterface *)self dataSource];
  if ([dataSource usesGlobalMuting])
  {
    v7 = [(HMDAudioStreamInterface *)self removeMutedStream:self];

    if (v7)
    {
      [(HMDAudioStreamInterface *)self setMuted:0];
    }
  }

  else
  {
  }

  outputStreamController = [(HMDAudioStreamInterface *)self outputStreamController];
  [outputStreamController stopAndInvalidate];

  [(HMDAudioStreamInterface *)self setOutputStreamController:0];
  engine = [(HMDAudioStreamInterface *)self engine];
  [engine stop];

  [(HMDAudioStreamInterface *)self setEngine:0];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didStop", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  delegate = [(HMDAudioStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioStream:selfCopy didStop:stoppedCopy];
  }

  stopStreamCompletionHandler = [(HMDAudioStreamInterface *)selfCopy stopStreamCompletionHandler];
  if (stopStreamCompletionHandler)
  {
    [(HMDAudioStreamInterface *)selfCopy setStopStreamCompletionHandler:0];
    stopStreamCompletionHandler[2](stopStreamCompletionHandler);
  }
}

- (void)_callResumed:(id)resumed
{
  v13 = *MEMORY[0x277D85DE8];
  resumedCopy = resumed;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didResume", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDAudioStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioStream:selfCopy didResume:resumedCopy];
  }
}

- (void)_callPaused:(id)paused
{
  v13 = *MEMORY[0x277D85DE8];
  pausedCopy = paused;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didPause", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDAudioStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioStream:selfCopy didPause:pausedCopy];
  }
}

- (void)_callStarted:(id)started
{
  v13 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDStreamInterface *)self setState:2];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate audioStream:didStart", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDAudioStreamInterface *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioStream:selfCopy didStart:startedCopy];
  }

  [(HMDAudioStreamInterface *)selfCopy startPHASEEngineAndController];
}

- (BOOL)isMuted
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDAudioStreamInterface *)self dataSource];
  LOBYTE(workQueue) = [dataSource isMuted];

  return workQueue;
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Setting audio muted to %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDAudioStreamInterface *)selfCopy dataSource];
  usesGlobalMuting = [dataSource usesGlobalMuting];

  if (usesGlobalMuting)
  {
    if (mutedCopy)
    {
      [(HMDAudioStreamInterface *)selfCopy addMutedStream:selfCopy];
    }

    else
    {
      [(HMDAudioStreamInterface *)selfCopy removeMutedStream:selfCopy];
    }
  }

  dataSource2 = [(HMDAudioStreamInterface *)selfCopy dataSource];
  [dataSource2 setMuted:mutedCopy];

  if (mutedCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
  [audioStream setDirection:v14];
}

- (BOOL)removeMutedStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock_with_options();
  mutedStreams = [objc_opt_class() mutedStreams];
  [mutedStreams removeObject:streamCopy];

  mutedStreams2 = [objc_opt_class() mutedStreams];
  anyObject = [mutedStreams2 anyObject];
  LOBYTE(mutedStreams) = anyObject == 0;
  v7 = shouldRestoreUnmuting;

  os_unfair_lock_unlock(&mutedStreamsLock);
  return mutedStreams & v7;
}

- (void)addMutedStream:(id)stream
{
  v17 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  os_unfair_lock_lock_with_options();
  mutedStreams = [objc_opt_class() mutedStreams];
  anyObject = [mutedStreams anyObject];

  if (!anyObject)
  {
    dataSource = [(HMDAudioStreamInterface *)self dataSource];
    shouldRestoreUnmuting = [dataSource isMuted] ^ 1;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 1024;
      v16 = shouldRestoreUnmuting;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding first muted stream, so set should restore unmuting to %{BOOL}d", &v13, 0x12u);
    }

    objc_autoreleasePoolPop(v8);
  }

  mutedStreams2 = [objc_opt_class() mutedStreams];
  [mutedStreams2 addObject:streamCopy];

  os_unfair_lock_unlock(&mutedStreamsLock);
}

- (void)startSynchronizationWithVideoStreamToken:(int64_t)token
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2048;
    tokenCopy = token;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting synchronization with video stream token: %ld", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
  [audioStream startSynchronizeWithStream:token];
}

- (void)_resumeStream
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDAudioStreamInterface *)self dataSource];
  isMuted = [(HMDAudioStreamInterface *)self isMuted];
  sessionID = [(HMDStreamInterface *)self sessionID];
  hostProcessBundleIdentifier = [sessionID hostProcessBundleIdentifier];
  [dataSource setAudioSessionPropertiesWithShouldAllowSystemSounds:isMuted hostProcessBundleIdentifier:hostProcessBundleIdentifier];

  LODWORD(sessionID) = [(HMDAudioStreamInterface *)self streamStarted];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (sessionID)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Resuming audio stream", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
    [audioStream resume];
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting audio stream", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDAudioStreamInterface *)selfCopy setStreamStarted:1];
    audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
    [audioStream start];
  }
}

- (void)_pauseStream
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Pausing audio stream", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
  [audioStream pause];
}

- (void)_stopStreamWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDStreamInterface *)self state]== 3)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not stopping stream because it has already stopped", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    completionCopy[2](completionCopy);
  }

  else
  {
    [(HMDAudioStreamInterface *)self setStopStreamCompletionHandler:completionCopy];
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Stopping audio stream", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    audioStream = [(HMDAudioStreamInterface *)selfCopy2 audioStream];
    [audioStream stop];
  }
}

- (void)stopStream
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HMDAudioStreamInterface_stopStream__block_invoke;
  v4[3] = &unk_27868A728;
  v4[4] = self;
  [(HMDAudioStreamInterface *)self _stopStreamWithCompletion:v4];
}

- (void)updateAudioVolume:(id)volume callback:(id)callback
{
  v31 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  callbackCopy = callback;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
    [audioStream volume];
    v15 = v14;
    [volumeCopy floatValue];
    v25 = 138543874;
    v26 = v12;
    v27 = 2048;
    v28 = v15;
    v29 = 2048;
    v30 = v16;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting audio stream volume from %f to %f", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [volumeCopy floatValue];
  v18 = v17;
  audioStream2 = [(HMDAudioStreamInterface *)selfCopy audioStream];
  LODWORD(v20) = v18;
  [audioStream2 setVolume:v20];

  audioStream3 = [(HMDAudioStreamInterface *)selfCopy audioStream];
  [audioStream3 volume];
  v23 = v22;
  [volumeCopy floatValue];
  callbackCopy[2](callbackCopy, v23 == v24);
}

- (void)updateAudioSetting:(unint64_t)setting
{
  v29 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (setting - 1 >= 3)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v17;
      v25 = 2048;
      settingCopy = setting;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalid audio stream setting %tu", &v23, 0x16u);
    }

    v13 = v14;
    goto LABEL_9;
  }

  audioStreamSetting = [(HMDAudioStreamInterface *)self audioStreamSetting];
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (audioStreamSetting == setting)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      [(HMDAudioStreamInterface *)selfCopy2 audioStreamSetting];
      v12 = HMCameraAudioStreamSettingAsString();
      v23 = 138543618;
      v24 = v11;
      v25 = 2112;
      settingCopy = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Audio stream setting is already set to %@", &v23, 0x16u);
    }

    v13 = v7;
LABEL_9:
    objc_autoreleasePoolPop(v13);
    return;
  }

  if (v10)
  {
    v18 = HMFGetLogIdentifier();
    [(HMDAudioStreamInterface *)selfCopy2 audioStreamSetting];
    v19 = HMCameraAudioStreamSettingAsString();
    v20 = HMCameraAudioStreamSettingAsString();
    v23 = 138543874;
    v24 = v18;
    v25 = 2112;
    settingCopy = v19;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Changing the audio stream setting from %@ to %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDAudioStreamInterface *)selfCopy2 setAudioStreamSetting:setting];
  switch(setting)
  {
    case 3uLL:
      v21 = selfCopy2;
      v22 = 0;
      goto LABEL_19;
    case 2uLL:
      v21 = selfCopy2;
      v22 = 1;
LABEL_19:
      [(HMDAudioStreamInterface *)v21 setMuted:v22];
      [(HMDAudioStreamInterface *)selfCopy2 _resumeStream];
      return;
    case 1uLL:
      [(HMDAudioStreamInterface *)selfCopy2 _pauseStream];
      break;
  }
}

- (void)startStreamWithConfig:(id)config
{
  v25 = *MEMORY[0x277D85DE8];
  configCopy = config;
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDStreamInterface *)self loadMiscFields:configCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v6)
  {
    if (v10)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v19;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to load misc fields to audio config", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1016];
    goto LABEL_11;
  }

  if (v10)
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = configCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring audio stream with configuration: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  audioStream = [(HMDAudioStreamInterface *)selfCopy audioStream];
  v20 = 0;
  v13 = [audioStream configure:configCopy error:&v20];
  v14 = v20;

  if ((v13 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure audio stream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
LABEL_11:
    [(HMDAudioStreamInterface *)selfCopy _callStarted:v14];
  }
}

- (NSNumber)uplinkToken
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  audioStream = [(HMDAudioStreamInterface *)self audioStream];

  if (audioStream)
  {
    v5 = MEMORY[0x277CCABB0];
    audioStream2 = [(HMDAudioStreamInterface *)self audioStream];
    v7 = [v5 numberWithInteger:{objc_msgSend(audioStream2, "uplinkToken")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)downlinkToken
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  audioStream = [(HMDAudioStreamInterface *)self audioStream];

  if (audioStream)
  {
    v5 = MEMORY[0x277CCABB0];
    audioStream2 = [(HMDAudioStreamInterface *)self audioStream];
    v7 = [v5 numberWithInteger:{objc_msgSend(audioStream2, "downlinkToken")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)syncSource
{
  workQueue = [(HMDStreamInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  audioStream = [(HMDAudioStreamInterface *)self audioStream];
  capabilities = [audioStream capabilities];
  v6 = [capabilities objectForKeyedSubscript:*MEMORY[0x277CE5780]];

  return v6;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDAudioStreamInterface object", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMDAudioStreamInterface;
  [(HMDStreamInterface *)&v7 dealloc];
}

- (HMDAudioStreamInterface)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate sessionHandler:(id)handler audioStream:(id)stream localRTPSocket:(int)socket dataSource:(id)source
{
  v9 = *&socket;
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  handlerCopy = handler;
  streamCopy = stream;
  sourceCopy = source;
  if (!streamCopy && (v9 & 0x80000000) != 0)
  {
    v24 = _HMFPreconditionFailure();
    return [(HMDAudioStreamInterface *)v24 initWithSessionID:v25 workQueue:v26 delegate:v27 sessionHandler:v28 localNetworkConfig:v29, v30];
  }

  else
  {
    v31.receiver = self;
    v31.super_class = HMDAudioStreamInterface;
    v21 = [(HMDStreamInterface *)&v31 initWithSessionID:dCopy workQueue:queueCopy sessionHandler:handlerCopy localRTPSocket:v9];
    v22 = v21;
    if (v21)
    {
      objc_storeWeak(&v21->_delegate, delegateCopy);
      v22->_streamStarted = 0;
      v22->_audioStreamSetting = 1;
      objc_storeStrong(&v22->_audioStream, stream);
      [(HMDAVCAudioStream *)v22->_audioStream setDelegate:v22];
      objc_storeStrong(&v22->_dataSource, source);
    }

    return v22;
  }
}

- (HMDAudioStreamInterface)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate sessionHandler:(id)handler localNetworkConfig:(id)config
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  handlerCopy = handler;
  configCopy = config;
  v26 = -1;
  v17 = [objc_opt_class() _createAudioStreamWithSessionHandler:handlerCopy localNetworkConfig:configCopy localRTPSocket:&v26 sessionID:dCopy];
  v18 = v26;
  if (v17 || v26 != -1)
  {
    v24 = objc_alloc_init(HMDAudioStreamInterfaceDataSource);
    selfCopy = [(HMDAudioStreamInterface *)self initWithSessionID:dCopy workQueue:queueCopy delegate:delegateCopy sessionHandler:handlerCopy audioStream:v17 localRTPSocket:v18 dataSource:v24];

    v23 = selfCopy;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio stream interface", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = 0;
  }

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46, &__block_literal_global_61491);
  }

  v3 = logCategory__hmf_once_v47;

  return v3;
}

void __38__HMDAudioStreamInterface_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v47;
  logCategory__hmf_once_v47 = v0;
}

+ (NSHashTable)mutedStreams
{
  os_unfair_lock_assert_owner(&mutedStreamsLock);
  v2 = mutedStreams;
  if (!mutedStreams)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = mutedStreams;
    mutedStreams = weakObjectsHashTable;

    v2 = mutedStreams;
  }

  return v2;
}

+ (id)_createLocalStreamAndRTPSocket:(int *)socket localNetworkConfig:(id)config sessionID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  dCopy = d;
  v10 = [self openSocketWithNetworkConfig:configCopy];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10 == -1)
  {
    if (v14)
    {
      v23 = HMFGetLogIdentifier();
      rtpPort = [configCopy rtpPort];
      stringValue = [rtpPort stringValue];
      v26 = *__error();
      *buf = 138543874;
      v36 = v23;
      v37 = 2112;
      v38 = stringValue;
      v39 = 1024;
      v40 = v26;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Could not create rtp socket with port %@ %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v11);
    v20 = 0;
  }

  else
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v15;
      v37 = 1024;
      LODWORD(v38) = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating local audio stream with socket %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_fd(v16, *MEMORY[0x277CE5788], v10);
    v17 = objc_alloc(MEMORY[0x277CE56E8]);
    v33 = *MEMORY[0x277CE57D8];
    v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
    v34 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v32 = 0;
    v20 = [v17 initWithNetworkSockets:v16 options:v19 error:&v32];
    v21 = v32;

    if (v20)
    {
      *socket = v10;
      v22 = v20;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v30;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create local AVCAudioStream: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      close(v10);
    }
  }

  return v20;
}

+ (int)_createLocalRTPSocketWithRemoteSender:(id)sender localNetworkConfig:(id)config
{
  v23 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  configCopy = config;
  v8 = [self openSocketWithNetworkConfig:configCopy];
  if (v8 == -1)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      rtpPort = [configCopy rtpPort];
      stringValue = [rtpPort stringValue];
      v15 = *__error();
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = stringValue;
      v21 = 1024;
      v22 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Could not create rtp socket with port %@ %d", &v17, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

+ (id)_createStreamWithRemoteSocketReceiver:(id)receiver sessionID:(id)d
{
  v30[1] = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v11;
    v27 = 1024;
    LODWORD(v28) = [receiverCopy remoteAudioSocket];
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating audio stream with socket: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_fd(v12, *MEMORY[0x277CE5788], [receiverCopy remoteAudioSocket]);
  v13 = objc_alloc(MEMORY[0x277CE56E8]);
  v29 = *MEMORY[0x277CE57D8];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
  v30[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v24 = 0;
  v16 = [v13 initWithNetworkSockets:v12 options:v15 error:&v24];
  v17 = v24;

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote socket receiver AVCAudioStream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  return v16;
}

+ (id)_createStreamWithRemoteDestinationReceiver:(id)receiver sessionID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    remoteDestination = [receiverCopy remoteDestination];
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = remoteDestination;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating audio stream with destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_alloc(MEMORY[0x277CE56E8]);
  remoteDestination2 = [receiverCopy remoteDestination];
  v26 = *MEMORY[0x277CE57D8];
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
  v27 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25 = 0;
  v17 = [v13 initWithIDSDestination:remoteDestination2 options:v16 error:&v25];
  v18 = v25;

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remote destination receiver AVCAudioStream: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  return v17;
}

+ (id)_createAudioStreamWithSessionHandler:(id)handler localNetworkConfig:(id)config localRTPSocket:(int *)socket sessionID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  configCopy = config;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating the audio stream", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = handlerCopy;
  if ([v17 conformsToProtocol:&unk_283EC79C8])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v20 = [selfCopy _createLocalRTPSocketWithRemoteSender:v19 localNetworkConfig:configCopy];
    v21 = 0;
    *socket = v20;
  }

  else
  {
    v22 = v17;
    if ([v22 conformsToProtocol:&unk_283F6FF58])
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      sessionID = [dCopy sessionID];
      v21 = [selfCopy _createStreamWithRemoteDestinationReceiver:v24 sessionID:sessionID];
    }

    else
    {
      v26 = v22;
      if ([v26 conformsToProtocol:&unk_283ECDB18])
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      sessionID = v27;

      sessionID2 = [dCopy sessionID];
      if (sessionID)
      {
        [selfCopy _createStreamWithRemoteSocketReceiver:sessionID sessionID:sessionID2];
      }

      else
      {
        [selfCopy _createLocalStreamAndRTPSocket:socket localNetworkConfig:configCopy sessionID:sessionID2];
      }
      v21 = ;
    }
  }

  return v21;
}

@end