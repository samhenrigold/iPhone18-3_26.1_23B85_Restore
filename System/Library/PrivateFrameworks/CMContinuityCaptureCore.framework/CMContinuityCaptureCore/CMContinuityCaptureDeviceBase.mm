@interface CMContinuityCaptureDeviceBase
+ (BOOL)defaultStateExitGuard:(id)guard dstState:(id)state onEvent:(id)event;
+ (BOOL)keepRemoteClientAliveForEvent:(id)event;
+ (void)defaultStateEntryTransitionActionForState:(id)state onEvent:(id)event;
+ (void)defaultStateExitTransitionActionForState:(id)state onEvent:(id)event;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastStreamStartTimeInHostClock;
- (BOOL)activeConnection;
- (BOOL)startAVConferenceStack:(unint64_t)stack;
- (BOOL)startCameraCaptureStack:(unint64_t)stack;
- (CMContinuityCaptureCompositeDeviceDelegate)compositeDelegate;
- (CMContinuityCaptureDeviceBase)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate transportDevice:(id)device queue:(id)queue;
- (CMContinuityCaptureState)stateMachineCurrentState;
- (ContinuityCaptureTransportDevice)transportDevice;
- (ContinuityCaptureTransportDeviceStream)transportStream;
- (NSString)description;
- (id)_aggregateEventDuplicatesInAnyState:(id)state eventName:(id)name;
- (id)_aggregateEventPairInAnyState:(id)state entryEventName:(id)name exitEventName:(id)eventName;
- (id)_aggregateStreamEventsInInitState:(id)state;
- (id)_aggregateStreamEventsInStreamState:(id)state;
- (id)aggregateEvents:(id)events;
- (unint64_t)avCaptureStackStartTime;
- (unint64_t)cameraCaptureStackStartTime;
- (unint64_t)currentSessionID;
- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)dealloc;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)invalidate;
- (void)logStreamSessionSummary;
- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error;
- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option;
- (void)postDeferredEvent:(id)event data:(id)data;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)printFrameBufferLog:(int64_t)log;
- (void)resetTransportDevice:(id)device;
- (void)restartSendingInvalidFramesIfApplicable;
- (void)scheduleSendingInvalidFramesAfterTimeout:(BOOL)timeout;
- (void)setStreamStateTimeout:(BOOL)timeout forTime:(unsigned int)time;
- (void)setupStateMachine;
- (void)setupStreamActionStateMachine;
- (void)startSendingInvalidFrames;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)startStreamCompletedWithError:(id)error;
- (void)stateMachineClearDeferredEvents;
- (void)stateMachineReStartStreamOnEvent:(id)event option:(unint64_t)option;
- (void)stateMachineStartStreamOnEvent:(id)event option:(unint64_t)option;
- (void)stateMachineStopStreamOnEvent:(id)event option:(unint64_t)option;
- (void)stateMachineStreamSubstateSendData:(id)data;
- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion;
- (void)stopSendingInvalidFrames;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)terminateComplete:(id)complete;
- (void)unconditionalTransitionForState:(id)state andDeferringEvent:(id)event;
@end

@implementation CMContinuityCaptureDeviceBase

- (CMContinuityCaptureDeviceBase)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate transportDevice:(id)device queue:(id)queue
{
  capabilitiesCopy = capabilities;
  obj = delegate;
  deviceCopy = device;
  queueCopy = queue;
  location = 0;
  v14 = CMContinuityCaptureMediaIdentifierFromEntityType([capabilitiesCopy entityType]);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14];
  v34.receiver = self;
  v34.super_class = CMContinuityCaptureDeviceBase;
  v16 = [(CMContinuityCaptureDeviceBase *)&v34 init];
  if (v16 && (objc_storeWeak(&location, v16), *(v16 + 2) = [capabilitiesCopy entityType], objc_storeWeak(v16 + 4, obj), objc_storeStrong(v16 + 3, capabilities), *(v16 + 3)))
  {
    if (queueCopy)
    {
      v17 = queueCopy;
    }

    else
    {
      [v15 UTF8String];
      v17 = FigDispatchQueueCreateWithPriority();
    }

    v18 = *(v16 + 1);
    *(v16 + 1) = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(v16 + 5);
    *(v16 + 5) = v19;

    v21 = objc_alloc_init(CMContinuityCaptureConfiguration);
    v22 = *(v16 + 9);
    *(v16 + 9) = v21;

    [*(v16 + 3) entityType];
    [*(v16 + 9) setEntity:?];
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = *(v16 + 19);
    *(v16 + 19) = v23;

    [v16 setupStreamActionStateMachine];
    [v16 setupStateMachine];
    objc_storeStrong(v16 + 20, device);
    [*(v16 + 20) addObserver:? forKeyPath:? options:? context:?];
    v25 = *(v16 + 7);
    WeakRetained = objc_loadWeakRetained(v16 + 4);
    v27 = objc_loadWeakRetained(&location);
    [v25 addObserver:? forKeyPath:? options:? context:?];

    [*(v16 + 7) addObserver:? forKeyPath:? options:? context:?];
    atomic_store(1u, v16 + 208);
    v28 = *(v16 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CMContinuityCaptureDeviceBase_initWithCapabilities_compositeDelegate_transportDevice_queue___block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v33, &location);
    dispatch_async(v28, block);
    objc_destroyWeak(&v33);
    objc_storeWeak(v16 + 23, deviceCopy);
    if ([deviceCopy remote])
    {
      *(v16 + 236) = 0x500000004;
      v16[244] = FigGetCFPreferenceBooleanWithDefault() != 0;
    }

    v29 = v16;
  }

  else
  {
    v29 = 0;
  }

  objc_destroyWeak(&location);
  return v29;
}

void __94__CMContinuityCaptureDeviceBase_initWithCapabilities_compositeDelegate_transportDevice_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained transportStream];
    v3 = v4[21];
    v4[21] = v2;

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ ContinuityCapture error : dealloc unterminated device", &v2, 0xCu);
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    atomic_store(1u, &self->_invalidated);
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__CMContinuityCaptureDeviceBase_invalidate__block_invoke;
    v6[3] = &unk_278D5C008;
    v6[4] = self;
    v7 = WeakRetained;
    dispatch_async(queue, v6);
  }
}

void *__43__CMContinuityCaptureDeviceBase_invalidate__block_invoke(void *result)
{
  v1 = atomic_load((result[4] + 208));
  if (v1)
  {
    v2 = result;
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      v5 = v2[5];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ remove SM update KVO with composite delegate %@", &v6, 0x16u);
    }

    [*(v2[4] + 56) removeObserver:? forKeyPath:? context:?];
    result = [*(v2[4] + 56) removeObserver:? forKeyPath:? context:?];
    atomic_store(0, (v2[4] + 208));
  }

  return result;
}

- (unint64_t)cameraCaptureStackStartTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cameraCaptureStackStartTime = selfCopy->_cameraCaptureStackStartTime;
  objc_sync_exit(selfCopy);

  return cameraCaptureStackStartTime;
}

- (unint64_t)avCaptureStackStartTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  avCaptureStackStartTime = selfCopy->_avCaptureStackStartTime;
  objc_sync_exit(selfCopy);

  return avCaptureStackStartTime;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastStreamStartTimeInHostClock
{
  dispatch_assert_queue_V2(self->_queue);
  *retstr = self->_lastStreamStartTimeInHostClock;
  return result;
}

- (void)resetTransportDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  v7 = [deviceCopy isEqual:?];

  if ((v7 & 1) == 0)
  {
    transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    queue = [transportDevice2 queue];
    dispatch_assert_queue_not_V2(queue);

    transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    queue2 = [transportDevice3 queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__CMContinuityCaptureDeviceBase_resetTransportDevice___block_invoke;
    v13[3] = &unk_278D5C008;
    v13[4] = self;
    v14 = deviceCopy;
    dispatch_async_and_wait(queue2, v13);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_transportDevice, device);
    objc_sync_exit(selfCopy);
  }
}

id __54__CMContinuityCaptureDeviceBase_resetTransportDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v3 removeObserver:? forKeyPath:? context:?];
  }

  [*(a1 + 40) addObserver:? forKeyPath:? options:? context:?];
  v4 = *(a1 + 40);
  v5 = (*(a1 + 32) + 184);

  return objc_storeWeak(v5, v4);
}

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  if (self->_terminated)
  {
    completeCopy[2](completeCopy);
  }

  else
  {
    dispatch_assert_queue_V2(self->_queue);
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
    if (WeakRetained)
    {
      transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      queue = [transportDevice queue];
      dispatch_assert_queue_not_V2(queue);

      transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      queue2 = [transportDevice2 queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__CMContinuityCaptureDeviceBase_terminateComplete___block_invoke;
      v14[3] = &unk_278D5C0D0;
      v14[4] = self;
      dispatch_async_and_wait(queue2, v14);

      v11 = atomic_load(&self->_observingStateMachineState);
      if (v11)
      {
        stateMachine = self->_stateMachine;
        v13 = objc_loadWeakRetained(&location);
        [CMContinuityCaptureStateMachine removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];

        atomic_store(0, &self->_observingStateMachineState);
      }

      self->_terminated = 1;
      v5[2](v5);
    }

    objc_destroyWeak(&location);
  }
}

id __51__CMContinuityCaptureDeviceBase_terminateComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transportDevice];
  [v2 removeObserver:? forKeyPath:? context:?];

  v3 = (*(a1 + 32) + 184);

  return objc_storeWeak(v3, 0);
}

- (ContinuityCaptureTransportDevice)transportDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_transportDevice;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)startSendingInvalidFrames
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureDeviceBase startSendingInvalidFrames]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
  }

  self->_dispatchingInvalidFrames = 1;
}

- (void)stopSendingInvalidFrames
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_dispatchingInvalidFrames)
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543618;
      selfCopy = self;
      v7 = 2080;
      v8 = "[CMContinuityCaptureDeviceBase stopSendingInvalidFrames]";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
    }

    self->_dispatchingInvalidFrames = 0;
  }
}

- (void)restartSendingInvalidFramesIfApplicable
{
  if (self->_dispatchingInvalidFrames)
  {
    v10 = v2;
    v11 = v3;
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 2080;
      v9 = "[CMContinuityCaptureDeviceBase restartSendingInvalidFramesIfApplicable]";
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
    }

    [(CMContinuityCaptureDeviceBase *)self stopSendingInvalidFrames];
    [(CMContinuityCaptureDeviceBase *)self startSendingInvalidFrames];
  }
}

- (void)scheduleSendingInvalidFramesAfterTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!self->_ignoreSendingInvalidFrames)
  {
    if (timeoutCopy)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v23 = 2080;
        v24 = "[CMContinuityCaptureDeviceBase scheduleSendingInvalidFramesAfterTimeout:]";
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s schedule", buf, 0x16u);
      }

      invalidFrameBlock = self->_invalidFrameBlock;
      if (invalidFrameBlock)
      {
        dispatch_block_cancel(invalidFrameBlock);
        v8 = self->_invalidFrameBlock;
        self->_invalidFrameBlock = 0;
      }

      invalidFrameTimeoutBlock = self->_invalidFrameTimeoutBlock;
      if (invalidFrameTimeoutBlock)
      {
        dispatch_block_cancel(invalidFrameTimeoutBlock);
        v10 = self->_invalidFrameTimeoutBlock;
        self->_invalidFrameTimeoutBlock = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v20, &location);
      v11 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
      v12 = self->_invalidFrameBlock;
      self->_invalidFrameBlock = v11;

      v13 = dispatch_time(0, 1000000000 * self->_timeToWaitBeforeSendingInvalidFramesWhenConnectingInSec);
      queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
      dispatch_after(v13, queue2, self->_invalidFrameBlock);

      objc_destroyWeak(&v20);
    }

    else
    {
      v15 = self->_invalidFrameBlock;
      if (v15)
      {
        dispatch_block_cancel(v15);
        v16 = self->_invalidFrameBlock;
        self->_invalidFrameBlock = 0;
      }

      v17 = self->_invalidFrameTimeoutBlock;
      if (v17)
      {
        dispatch_block_cancel(v17);
        v18 = self->_invalidFrameTimeoutBlock;
        self->_invalidFrameTimeoutBlock = 0;
      }

      [(CMContinuityCaptureDeviceBase *)self stopSendingInvalidFrames];
      if (self->_invalidFrameNotificationScheduled)
      {
        self->_invalidFrameNotificationScheduled = 0;
        [(CMContinuityCaptureDeviceBase *)self scheduleInvalidFramesNotification:?];
      }
    }
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained startSendingInvalidFrames];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke_2;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v9, (a1 + 32));
    v4 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v5 = *(v3 + 28);
    *(v3 + 28) = v4;

    v6 = dispatch_time(0, 1000000000 * v3[60]);
    v7 = [v3 queue];
    dispatch_after(v6, v7, *(v3 + 28));

    objc_destroyWeak(&v9);
  }
}

void __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[232] == 1)
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v6 = 138543618;
      v7 = v5;
      v8 = 2080;
      v9 = "[CMContinuityCaptureDeviceBase scheduleSendingInvalidFramesAfterTimeout:]_block_invoke_2";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s no frames after timeout", &v6, 0x16u);
    }

    [v3 scheduleSendingInvalidFramesAfterTimeout:?];
    v3[233] = 1;
    [v3 scheduleInvalidFramesNotification:?];
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  completionCopy = completion;
  if (!self->_lastStreamNoOfFramesDispatched)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      v10 = CMContinuityCaptureGetTimeStringFromDate(self->_lastStreamStartTime);
      v13 = 138412802;
      selfCopy = self;
      v15 = 2048;
      v16 = currentSessionID;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] Dispatch first frame for stream started at %{public}@", &v13, 0x20u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    lastStreamFirstFrameDispatchTime = self->_lastStreamFirstFrameDispatchTime;
    self->_lastStreamFirstFrameDispatchTime = date;
  }

  if (CMGetAttachment(frame, @"HighLatencyFrame", 0))
  {
    ++self->_lastStreamNoOfHighLatencyFrames;
  }

  ++self->_lastStreamNoOfFramesDispatched;
  [(CMContinuityCaptureDeviceBase *)self printFrameBufferLog:?];
}

- (ContinuityCaptureTransportDeviceStream)transportStream
{
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  activeStreams = [transportDevice activeStreams];

  v5 = activeStreams;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        entity = [v10 entity];
        if (entity == [(CMContinuityCaptureDeviceBase *)self entity])
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (CMContinuityCaptureState)stateMachineCurrentState
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  stateMachine = self->_stateMachine;

  return [(CMContinuityCaptureStateMachine *)stateMachine currentState];
}

- (void)stateMachineStreamSubstateSendData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:?];
  if (v5 && (v6 = v5, -[CMContinuityCaptureDeviceBase transportDevice](self, "transportDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 remote], v7, v6, v8))
  {
    if (self->_avcStreamNegotiator)
    {
      [CMContinuityCaptureStateMachine enqueueEventWithNameToPostOnCurrentQueue:"enqueueEventWithNameToPostOnCurrentQueue:data:" data:?];
      if (self->_avcStackStarted)
      {
        [CMContinuityCaptureStateMachine enqueueEventWithNameToPost:"enqueueEventWithNameToPost:data:" data:?];
      }
    }

    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v10 = [dataCopy objectForKeyedSubscript:?];
    v11 = [dataCopy objectForKeyedSubscript:?];
    [v11 integerValue];
    [transportDevice startStream:? option:? completion:?];
  }

  else
  {
    v12 = [dataCopy objectForKeyedSubscript:?];
    if (v12)
    {
      v13 = v12;
      transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      remote = [transportDevice2 remote];

      if ((remote & 1) == 0)
      {
        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543618;
          selfCopy = self;
          v21 = 2048;
          currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
          _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Negotiation data sent", &v19, 0x16u);
        }

        transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        v18 = [dataCopy objectForKeyedSubscript:?];
        [transportDevice3 handleAVCNegotiation:? data:?];
      }
    }
  }
}

- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (type > 9)
  {
    switch(type)
    {
      case 0xAuLL:
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v16.value) = 138543362;
          *(&v16.value + 4) = self;
          _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate", &v16, 0xCu);
        }

        objc_copyWeak(&v15, &location);
        [(CMContinuityCaptureDeviceBase *)self terminateComplete:?];
        objc_destroyWeak(&v15);
        break;
      case 0xCuLL:
        stateMachine = self->_stateMachine;
        v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [(CMContinuityCaptureStateMachine *)stateMachine notifyCompletion:?];

        break;
      case 0xDuLL:
        [(CMContinuityCaptureStateMachine *)self->_stateMachine notifyCompletion:?];
        break;
    }
  }

  else
  {
    switch(type)
    {
      case 1uLL:
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v16, HostTimeClock);
        self->_lastStreamStartTimeInHostClock = v16;
        date = [MEMORY[0x277CBEAA8] date];
        lastStreamStartTime = self->_lastStreamStartTime;
        self->_lastStreamStartTime = date;

        [CMContinuityCaptureDeviceBase stateMachineStartStreamOnEvent:"stateMachineStartStreamOnEvent:option:" option:?];
        break;
      case 2uLL:
        v12 = MEMORY[0x277CC0898];
        *&self->_lastStreamStartTimeInHostClock.value = *MEMORY[0x277CC0898];
        self->_lastStreamStartTimeInHostClock.epoch = *(v12 + 16);
        [CMContinuityCaptureDeviceBase stateMachineStopStreamOnEvent:"stateMachineStopStreamOnEvent:option:" option:?];
        break;
      case 3uLL:
        [CMContinuityCaptureDeviceBase stateMachineReStartStreamOnEvent:"stateMachineReStartStreamOnEvent:option:" option:?];
        break;
    }
  }

  objc_destroyWeak(&location);
}

void __66__CMContinuityCaptureDeviceBase_postActionOfType_forEvent_option___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 4);
    if (v2)
    {
      [v3 stopCameraCaptureStack:?];
      [v2 terminateCompleteForDevice:?];
      [v3 stateMachineNotifyComplete:?];
    }

    WeakRetained = v3;
  }
}

- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error
{
  nameCopy = name;
  dataCopy = data;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    currentState = [(CMContinuityCaptureStateMachine *)self->_stateMachine currentState];
    v15 = 138544130;
    selfCopy = self;
    v17 = 2114;
    v18 = nameCopy;
    v19 = 2114;
    v20 = currentState;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ postCompletion for %{public}@ with currentState:%{public}@ eventStatus:%@", &v15, 0x2Au);
  }

  if (dataCopy)
  {
    v13 = [dataCopy objectForKeyedSubscript:?];

    if (v13)
    {
      v14 = [dataCopy objectForKeyedSubscript:?];
      (v14)[2](v14, errorCopy);
    }
  }
}

- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  avcStreamNegotiator = self->_avcStreamNegotiator;
  self->_avcStreamNegotiator = 0;

  self->_avcStackStarted = 0;
  completionCopy[2](completionCopy, 0);
}

- (BOOL)startAVConferenceStack:(unint64_t)stack
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDeviceBase startAVConferenceStack:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  [CMContinuityCaptureStateMachine enqueueEventWithNameToPost:"enqueueEventWithNameToPost:data:" data:?];
  self->_avcStackStarted = 1;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_avCaptureStackStartTime = mach_continuous_time();
  objc_sync_exit(selfCopy2);

  return 1;
}

- (BOOL)startCameraCaptureStack:(unint64_t)stack
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDeviceBase startCameraCaptureStack:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v7, 0x16u);
  }

  [CMContinuityCaptureStateMachine enqueueEventWithNameToPost:"enqueueEventWithNameToPost:data:" data:?];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_cameraCaptureStackStartTime = mach_continuous_time();
  objc_sync_exit(selfCopy2);

  return 1;
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CMContinuityCaptureDeviceBase_handleAVCNegotiation_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = negotiation;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __59__CMContinuityCaptureDeviceBase_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleAVCNegotiation:? data:?];
    WeakRetained = v2;
  }
}

- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  dispatch_assert_queue_V2(self->_queue);
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2048;
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Negotiation data received", buf, 0x16u);
  }

  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  remote = [transportDevice remote];

  if (remote)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke;
    block[3] = &unk_278D5CAA0;
    objc_copyWeak(&v19, &location);
    v17 = dataCopy;
    v18 = &v24;
    dispatch_async(v9, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v10 = (v25 + 5);
    obj = v25[5];
    v11 = [AVCMediaStreamNegotiator setAnswer:"setAnswer:withError:" withError:?];
    objc_storeStrong(v10, obj);
    if (v11)
    {
      [(CMContinuityCaptureDeviceBase *)self startAVConferenceStack:?];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&location);
        v14 = v25[5];
        *buf = 138543618;
        selfCopy = v13;
        v22 = 2114;
        currentSessionID = v14;
        _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Failed to get set answer AVCNegotiator error %{public}@", buf, 0x16u);
      }
    }
  }

  [CMContinuityCaptureStateMachine enqueueEventWithNameToPostOnCurrentQueue:"enqueueEventWithNameToPostOnCurrentQueue:data:" data:?];
  _Block_object_dispose(&v24, 8);

  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CE5708]);
    v4 = *(*(a1 + 40) + 8);
    v17 = *(v4 + 40);
    v5 = [v3 initWithOffer:? error:?];
    objc_storeStrong((v4 + 40), v17);
    if (v5)
    {
      v6 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke_29;
      block[3] = &unk_278D5CA78;
      block[4] = WeakRetained;
      v11 = v5;
      objc_copyWeak(&v12, (a1 + 48));
      dispatch_async(v6, block);
      objc_destroyWeak(&v12);
    }

    else
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 48));
        v9 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v14 = v8;
        v15 = 2114;
        v16 = v9;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Failed to get AVCNegotiator error %{public}@", buf, 0x16u);
      }
    }
  }
}

void *__60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke_29(id *a1)
{
  objc_storeStrong(a1[4] + 18, a1[5]);
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = [a1[4] currentSessionID];
    v8 = 138543618;
    v9 = WeakRetained;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Negotiation data sent", &v8, 0x16u);
  }

  v5 = [a1[4] transportDevice];
  [a1[4] entity];
  v6 = [*(a1[4] + 18) answer];
  [v5 handleAVCNegotiation:? data:?];

  return [a1[4] startAVConferenceStack:?];
}

- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureDeviceBase_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = option;
  v14 = streamCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = streamCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureDeviceBase_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startStream:? option:? completion:?];
    WeakRetained = v2;
  }
}

- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  optionCopy = option;
  streamCopy = stream;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if ([(CMContinuityCaptureDeviceBase *)self streaming])
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = self;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Stream Session In Progress", &buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (!self->_lastStreamStartTime)
    {
      date = [MEMORY[0x277CBEAA8] date];
      lastStreamStartTime = self->_lastStreamStartTime;
      self->_lastStreamStartTime = date;
    }

    if ((self->_lastStreamStartTimeInHostClock.flags & 1) == 0)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&buf, HostTimeClock);
      self->_lastStreamStartTimeInHostClock = buf;
    }

    sessionID = [streamCopy sessionID];

    if (sessionID)
    {
      [(CMContinuityCaptureDeviceBase *)self willChangeValueForKey:?];
      objc_storeStrong(&self->_activeConfiguration, stream);
      [(CMContinuityCaptureDeviceBase *)self didChangeValueForKey:?];
      [(CMContinuityCaptureDeviceBase *)self willChangeValueForKey:?];
      atomic_store(1u, &self->_streaming);
      [(CMContinuityCaptureDeviceBase *)self didChangeValueForKey:?];
      v16 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = streamCopy;
        HIWORD(buf.epoch) = 1024;
        v40 = optionCopy;
        _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream config:%{public}@ option:%d", &buf, 0x1Cu);
      }

      [(CMContinuityCaptureDeviceBase *)self startCollectingFrameLatencyMetrics];
      if ((optionCopy & 0x800) != 0)
      {
        v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        (completionCopy)[2](completionCopy, v22);
      }

      else
      {
        if ([(NSMutableArray *)self->_pendingCompletionBlocks count])
        {
          [MEMORY[0x277CBEAD8] raise:self format:?];
        }

        pendingCompletionBlocks = self->_pendingCompletionBlocks;
        v18 = MEMORY[0x245D12020](completionCopy);
        [(NSMutableArray *)pendingCompletionBlocks addObject:?];

        transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        LOBYTE(v18) = [transportDevice remote];

        if (v18)
        {
          streamActionStateMachine = self->_streamActionStateMachine;
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
          [CMContinuityCaptureStateMachine enqueueEventWithNameToPostOnCurrentQueue:"enqueueEventWithNameToPostOnCurrentQueue:data:" data:?];
        }

        else
        {
          if ([(CMContinuityCaptureDeviceBase *)self entity]== 3)
          {
            activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            audioDeviceMode = [activeConfiguration audioDeviceMode];

            if (audioDeviceMode == 1667329132)
            {
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            }

            else
            {
              activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
              [activeConfiguration2 audioDeviceMode];

              v25 = 0;
            }

            v29 = [objc_alloc(MEMORY[0x277CE5708]) initWithMode:? options:? error:?];
            v27 = 0;
            avcStreamNegotiator = self->_avcStreamNegotiator;
            self->_avcStreamNegotiator = v29;
          }

          else
          {
            v26 = [objc_alloc(MEMORY[0x277CE5708]) initWithMode:? error:?];
            v27 = 0;
            v25 = self->_avcStreamNegotiator;
            self->_avcStreamNegotiator = v26;
          }

          v31 = self->_avcStreamNegotiator;
          if (v31 && ([(AVCMediaStreamNegotiator *)v31 offer], v32 = objc_claimAutoreleasedReturnValue(), v32, v32))
          {
            v33 = self->_streamActionStateMachine;
            offer = [(AVCMediaStreamNegotiator *)self->_avcStreamNegotiator offer];
            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            [CMContinuityCaptureStateMachine enqueueEventWithNameToPostOnCurrentQueue:v33 data:"enqueueEventWithNameToPostOnCurrentQueue:data:"];
          }

          else
          {
            v35 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.value) = 138543618;
              *(&buf.value + 4) = self;
              LOWORD(buf.flags) = 2114;
              *(&buf.flags + 2) = v27;
              _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Failed to get AVCNegotiator error %{public}@", &buf, 0x16u);
            }
          }
        }
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:self format:?];
    }
  }
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CMContinuityCaptureDeviceBase_stopStream_option_completion___block_invoke;
  block[3] = &unk_278D5C378;
  objc_copyWeak(v13, &location);
  v13[1] = stream;
  v13[2] = option;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureDeviceBase_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopStream:? option:? completion:?];
    WeakRetained = v2;
  }
}

- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([(CMContinuityCaptureDeviceBase *)self streaming])
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      activeConfiguration = self->_activeConfiguration;
      *buf = 138543874;
      selfCopy2 = self;
      v23 = 2114;
      v24 = activeConfiguration;
      v25 = 1024;
      optionCopy = option;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream config:%{public}@ option:%d", buf, 0x1Cu);
    }

    [(CMContinuityCaptureDeviceBase *)self willChangeValueForKey:?];
    atomic_store(0, &self->_streaming);
    [(CMContinuityCaptureDeviceBase *)self didChangeValueForKey:?];
    v18 = MEMORY[0x277D85DD0];
    objc_copyWeak(v20, &location);
    v20[1] = option;
    v20[2] = stream;
    v19 = completionCopy;
    [(CMContinuityCaptureDeviceBase *)self stopCaptureStack:v18 completion:3221225472, __63__CMContinuityCaptureDeviceBase__stopStream_option_completion___block_invoke, &unk_278D5C3F0];
    if (self->_lastStreamStartTime)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:?];
    }

    [(CMContinuityCaptureDeviceBase *)self stopCollectingFrameLatencyMetrics:?];
    [(CMContinuityCaptureDeviceBase *)self logStreamSessionSummary];
    self->_lastStreamNoOfFramesDispatched = 0;
    self->_lastStreamNoOfHighLatencyFrames = 0;
    lastStreamStartTime = self->_lastStreamStartTime;
    self->_lastStreamStartTime = 0;

    lastStreamFirstFrameDispatchTime = self->_lastStreamFirstFrameDispatchTime;
    self->_lastStreamFirstFrameDispatchTime = 0;

    v17 = MEMORY[0x277CC0898];
    *&self->_lastStreamStartTimeInHostClock.value = *MEMORY[0x277CC0898];
    self->_lastStreamStartTimeInHostClock.epoch = *(v17 + 16);

    objc_destroyWeak(v20);
  }

  else
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Stream Session not In Progress", buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(completionCopy + 2))(completionCopy, v14);
  }

  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureDeviceBase__stopStream_option_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = 138543618;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ stopCaptureStack %{public}@", &v13, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (v6)
  {
    v8 = [v6 transportDevice];
    if (![v8 remote] || (v9 = *(a1 + 48), (v9 & 0x10) != 0))
    {
    }

    else
    {

      if ((v9 & 0x80) == 0)
      {
        v10 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138543362;
          v14 = v7;
          _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sending stop to remote", &v13, 0xCu);
        }

        v11 = [v7 transportDevice];
        [NSObject stopStream:v11 option:"stopStream:option:completion:" completion:?];
LABEL_13:

        v12 = *(a1 + 32);
        if (v12)
        {
          (*(v12 + 16))(v12, a2);
        }

        goto LABEL_15;
      }
    }

    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ skip sending stop", &v13, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)printFrameBufferLog:(int64_t)log
{
  if (log <= 0x1E && ((1 << log) & 0x40000022) != 0 || __ROR8__(0x4FA4FA4FA4FA4FA5 * log + 0x2D82D82D82D82D8, 1) <= 0x2D82D82D82D82D8uLL)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543874;
      selfCopy = self;
      v8 = 2048;
      currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      v10 = 2048;
      logCopy = log;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Received FrameCounter %lu", &v6, 0x20u);
    }
  }
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureDeviceBase postEvent:entity:data:]";
    v23 = 2112;
    v24 = eventCopy;
    v25 = 2048;
    entityCopy = entity;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %ld", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__CMContinuityCaptureDeviceBase_postEvent_entity_data___block_invoke;
  v14[3] = &unk_278D5C030;
  objc_copyWeak(&v18, buf);
  v15 = dataCopy;
  selfCopy2 = self;
  v17 = eventCopy;
  v12 = eventCopy;
  v13 = dataCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __55__CMContinuityCaptureDeviceBase_postEvent_entity_data___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = a1[4];
    if (v3)
    {
      v4 = [v3 objectForKeyedSubscript:?];

      if (v4)
      {
        [a1[5] willChangeValueForKey:?];
        v5 = [a1[4] objectForKeyedSubscript:?];
        v6 = *(v7 + 9);
        *(v7 + 9) = v5;

        [a1[5] didChangeValueForKey:?];
      }
    }

    [*(v7 + 7) enqueueEventWithNameToPostOnCurrentQueue:? data:?];
    WeakRetained = v7;
  }
}

+ (BOOL)keepRemoteClientAliveForEvent:(id)event
{
  v3 = keepRemoteClientAliveForEvent__onceToken;
  eventCopy = event;
  if (v3 != -1)
  {
    +[CMContinuityCaptureDeviceBase keepRemoteClientAliveForEvent:];
  }

  v5 = [keepRemoteClientAliveForEvent__keepAliveEventNames containsObject:?];

  return v5;
}

uint64_t __63__CMContinuityCaptureDeviceBase_keepRemoteClientAliveForEvent___block_invoke()
{
  keepRemoteClientAliveForEvent__keepAliveEventNames = [MEMORY[0x277CBEB98] setWithObjects:{@"kCMContinuityCaptureEventUserResume", @"kCMContinuityCaptureEventActiveCallStart", @"kCMContinuityCaptureEventActiveCallEnd", @"kCMContinuityCaptureEventCaptureSessionStarted", @"kCMContinuityCaptureEventCaptureSessionEnded", @"kCMContinuityCaptureEventStreamDisableForDeviceInUse", @"kCMContinuityCaptureEventStreamDisableForDeviceInUseExit", 0}];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)currentSessionID
{
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  currentSessionID = [compositeDelegate currentSessionID];

  return currentSessionID;
}

- (void)stateMachineReStartStreamOnEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(&location, self);
  name = [eventCopy name];
  v8 = [name isEqualToString:?];

  if (v8)
  {
    data = [eventCopy data];
    v10 = [data objectForKeyedSubscript:?];
    option |= 4uLL;
    if (v10)
    {
      data2 = [eventCopy data];
      v12 = [data2 objectForKeyedSubscript:?];
      bOOLValue = [v12 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        [CMContinuityCaptureDeviceBase stopCaptureStack:"stopCaptureStack:completion:" completion:?];
        stateMachine = self->_stateMachine;
        v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [(CMContinuityCaptureStateMachine *)stateMachine notifyCompletion:?];

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  data3 = [eventCopy data];
  if (data3)
  {
    data4 = [eventCopy data];
    v18 = [data4 objectForKeyedSubscript:?];

    if (v18)
    {
      data5 = [eventCopy data];
      v20 = [data5 objectForKeyedSubscript:?];
      option |= [v20 integerValue];
    }
  }

  v21 = CMContinuityCaptureLog(2);
  v22 = (option | 1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v27 = 2082;
    v28 = "[CMContinuityCaptureDeviceBase stateMachineReStartStreamOnEvent:option:]";
    v29 = 2114;
    v30 = eventCopy;
    v31 = 1024;
    v32 = v22;
    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s %{public}@ option %d", buf, 0x26u);
  }

  v23 = MEMORY[0x277D85DD0];
  objc_copyWeak(v24, &location);
  v24[1] = v22;
  [(CMContinuityCaptureDeviceBase *)self stopStream:v23 option:3221225472 completion:__73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_48, &unk_278D5C210];
  objc_destroyWeak(v24);
LABEL_12:
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_48(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v6)
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412546;
        v12 = v7;
        v13 = 2114;
        v14 = a2;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Stream Stop failed with error %{public}@", buf, 0x16u);
      }

      [WeakRetained[7] notifyCompletion:?];
    }

    else
    {
      if (v6)
      {
        v8 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Stream Stop complete, restart new session", buf, 0xCu);
      }

      v9 = [WeakRetained activeConfiguration];
      objc_copyWeak(&v10, (a1 + 32));
      [WeakRetained startStream:? option:? completion:?];

      objc_destroyWeak(&v10);
    }
  }
}

void __73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_49(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] notifyCompletion:?];
    if (a2)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = 138412546;
        v9 = v7;
        v10 = 2112;
        v11 = a2;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ start stream failed error %@", &v8, 0x16u);
      }
    }
  }
}

- (void)stateMachineStartStreamOnEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  data = [eventCopy data];
  if (data)
  {
    data2 = [eventCopy data];
    v10 = [data2 objectForKeyedSubscript:?];

    if (v10)
    {
      data3 = [eventCopy data];
      v12 = [data3 objectForKeyedSubscript:?];
      option |= [v12 integerValue];
    }
  }

  name = [eventCopy name];
  v14 = [name isEqualToString:?];

  if (v14)
  {
    optionCopy = option | 0x20;
  }

  else
  {
    optionCopy = option;
  }

  name2 = [eventCopy name];
  if ([name2 isEqualToString:?])
  {

LABEL_11:
    optionCopy |= 0x100uLL;
    goto LABEL_12;
  }

  name3 = [eventCopy name];
  v18 = [name3 isEqualToString:?];

  if (v18)
  {
    goto LABEL_11;
  }

LABEL_12:
  name4 = [eventCopy name];
  v20 = [CMContinuityCaptureDeviceBase keepRemoteClientAliveForEvent:?];

  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  remote = [transportDevice remote];
  v23 = (optionCopy | v20);

  [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if (remote)
    v24 = {;
    v25 = v28;
    objc_copyWeak(v28, &location);
    v27 = eventCopy;
    v28[1] = v23;
    [WeakRetained startStream:? option:? completion:?];

    v26 = v27;
  }

  else
    v26 = {;
    v28[2] = MEMORY[0x277D85DD0];
    v28[3] = 3221225472;
    v28[4] = __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke;
    v28[5] = &unk_278D5C1E8;
    v25 = &v29;
    objc_copyWeak(&v29, &location);
    [CMContinuityCaptureDeviceBase startStream:"startStream:option:completion:" option:? completion:?];
  }

  objc_destroyWeak(v25);
LABEL_16:

  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] notifyCompletion:?];
    if (a2)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = 138412546;
        v9 = v7;
        v10 = 2112;
        v11 = a2;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ start stream failed error %@", &v8, 0x16u);
      }
    }
  }
}

void __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      v7 = [WeakRetained currentSessionID];
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = [WeakRetained activeConfiguration];
      v13 = 138544642;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2082;
      v18 = "[CMContinuityCaptureDeviceBase stateMachineStartStreamOnEvent:option:]_block_invoke";
      v19 = 2114;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] %{public}s %{public}@ option %d configuration %{public}@", &v13, 0x3Au);
    }

    [WeakRetained[7] notifyCompletion:?];
    if (v3)
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_loadWeakRetained((a1 + 40));
        v13 = 138412546;
        v14 = v12;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ start stream failed error %@", &v13, 0x16u);
      }
    }
  }
}

- (void)stateMachineStopStreamOnEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(location, self);
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  data = [eventCopy data];
  if (data)
  {
    data2 = [eventCopy data];
    v10 = [data2 objectForKeyedSubscript:?];

    if (v10)
    {
      data3 = [eventCopy data];
      v12 = [data3 objectForKeyedSubscript:?];
      option |= [v12 integerValue];
    }
  }

  name = [eventCopy name];
  v14 = [CMContinuityCaptureDeviceBase keepRemoteClientAliveForEvent:?];

  name2 = [eventCopy name];
  v16 = option | v14;
  if (([name2 isEqualToString:?] & 1) == 0)
  {

    goto LABEL_14;
  }

  data4 = [eventCopy data];
  if (!data4)
  {
    goto LABEL_12;
  }

  data5 = [eventCopy data];
  v19 = [data5 objectForKeyedSubscript:?];
  if (!v19)
  {

LABEL_12:
    goto LABEL_13;
  }

  data6 = [eventCopy data];
  v21 = [data6 objectForKeyedSubscript:?];
  bOOLValue = [v21 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_13:
    v16 |= 0x10u;
  }

LABEL_14:
  name3 = [eventCopy name];
  if ([name3 isEqualToString:?])
  {

LABEL_17:
    v16 |= 0x200u;
    goto LABEL_18;
  }

  name4 = [eventCopy name];
  v24 = [name4 isEqualToString:?];

  if (v24)
  {
    goto LABEL_17;
  }

LABEL_18:
  v25 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v37 = 2082;
    v38 = "[CMContinuityCaptureDeviceBase stateMachineStopStreamOnEvent:option:]";
    v39 = 2114;
    v40 = eventCopy;
    v41 = 1024;
    v42 = v16;
    _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s %{public}@ option %d", buf, 0x26u);
  }

  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  remote = [transportDevice remote];

  if (remote)
  {
    v32[1] = @"kCMContinuityCaptureEventUserPause";
    v32[2] = @"kCMContinuityCaptureEventActiveCallStart";
    v32[3] = @"kCMContinuityCaptureEventUserDisconnect";
    v32[4] = @"kCMContinuityCaptureEventRemoteClientDisconnect";
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    name5 = [eventCopy name];
    [v28 containsObject:?];

    objc_copyWeak(v32, location);
    v31 = eventCopy;
    [WeakRetained stopStream:? option:? completion:?];

    objc_destroyWeak(v32);
  }

  else
  {
    [(CMContinuityCaptureDeviceBase *)self entity];
    v32[5] = MEMORY[0x277D85DD0];
    v32[6] = 3221225472;
    v32[7] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke;
    v32[8] = &unk_278D5C660;
    objc_copyWeak(&v34, location);
    v33 = eventCopy;
    [CMContinuityCaptureDeviceBase stopStream:"stopStream:option:completion:" option:? completion:?];

    objc_destroyWeak(&v34);
  }

LABEL_23:

  objc_destroyWeak(location);
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) name];
    v6 = [v5 isEqualToString:?];

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 40));
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate", buf, 0xCu);
      }

      v9 = *(WeakRetained + 1);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_52;
      v10[3] = &unk_278D5C0A8;
      objc_copyWeak(&v12, (a1 + 40));
      v11 = v3;
      dispatch_async(v9, v10);

      objc_destroyWeak(&v12);
    }

    else
    {
      [*(WeakRetained + 7) notifyCompletion:?];
    }
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D85DD0];
    v4 = 3221225472;
    v5 = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2;
    v6 = &unk_278D5C0A8;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [WeakRetained terminateComplete:{v3, 3221225472, __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2, &unk_278D5C0A8}];

    objc_destroyWeak(&v8);
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 4);
    v3 = v2;
    if (v2)
    {
      [v2 terminateCompleteForDevice:?];
      [v4[7] notifyCompletion:?];
    }

    WeakRetained = v4;
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) name];
    v6 = [v5 isEqualToString:?];

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 40));
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate", buf, 0xCu);
      }

      v9 = *(WeakRetained + 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_54;
      block[3] = &unk_278D5C120;
      objc_copyWeak(&v12, (a1 + 40));
      block[4] = WeakRetained;
      v11 = v3;
      dispatch_async(v9, block);

      objc_destroyWeak(&v12);
    }

    else
    {
      [*(WeakRetained + 7) notifyCompletion:?];
    }
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2_55;
    v7 = &unk_278D5C0A8;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v3 terminateComplete:{v4, 3221225472, __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2_55, &unk_278D5C0A8}];

    objc_destroyWeak(&v9);
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 4);
    v3 = v2;
    if (v2)
    {
      [v2 terminateCompleteForDevice:?];
      [v4[7] notifyCompletion:?];
    }

    WeakRetained = v4;
  }
}

+ (void)defaultStateEntryTransitionActionForState:(id)state onEvent:(id)event
{
  stateCopy = state;
  eventCopy = event;
  name = [eventCopy name];
  name2 = [stateCopy name];
  valid = CMContinuityCaptureSMIsValidEntryEventForState(name, name2);

  if (valid)
  {
    pendingEvents = [stateCopy pendingEvents];
    name3 = [eventCopy name];
    [pendingEvents addObject:?];
  }
}

+ (void)defaultStateExitTransitionActionForState:(id)state onEvent:(id)event
{
  stateCopy = state;
  name = [event name];
  name2 = [stateCopy name];
  v7 = CMContinuityCaptureSMGetMatchingStateEntryEventForExitEvent(name, name2);

  if (v7)
  {
    pendingEvents = [stateCopy pendingEvents];
    v9 = [pendingEvents containsObject:?];

    if (v9)
    {
      pendingEvents2 = [stateCopy pendingEvents];
      [pendingEvents2 removeObject:?];
    }
  }
}

+ (BOOL)defaultStateExitGuard:(id)guard dstState:(id)state onEvent:(id)event
{
  guardCopy = guard;
  eventCopy = event;
  name = [eventCopy name];
  name2 = [guardCopy name];
  valid = CMContinuityCaptureSMIsValidExitEventForState(name, name2);

  name3 = [eventCopy name];

  name4 = [guardCopy name];
  v13 = CMContinuityCaptureSMGetMatchingStateEntryEventForExitEvent(name3, name4);

  v14 = 0;
  if (valid && v13)
  {
    pendingEvents = [guardCopy pendingEvents];
    if ([pendingEvents count] == 1)
    {
      pendingEvents2 = [guardCopy pendingEvents];
      v14 = [pendingEvents2 containsObject:?];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)unconditionalTransitionForState:(id)state andDeferringEvent:(id)event
{
  eventCopy = event;
  pendingEvents = [state pendingEvents];
  [pendingEvents removeAllObjects];

  deferredEvents = [(CMContinuityCaptureStateMachine *)self->_stateMachine deferredEvents];
  [deferredEvents addObject:?];
}

- (void)stateMachineClearDeferredEvents
{
  deferredEvents = [(CMContinuityCaptureStateMachine *)self->_stateMachine deferredEvents];
  [deferredEvents removeAllObjects];
}

- (void)startStreamCompletedWithError:(id)error
{
  pendingCompletionBlocks = self->_pendingCompletionBlocks;
  errorCopy = error;
  if (![(NSMutableArray *)pendingCompletionBlocks count])
  {
    [MEMORY[0x277CBEAD8] raise:self format:?];
  }

  firstObject = [(NSMutableArray *)self->_pendingCompletionBlocks firstObject];
  (firstObject)[2](firstObject, errorCopy);

  v7 = self->_pendingCompletionBlocks;

  [(NSMutableArray *)v7 removeObjectAtIndex:?];
}

- (BOOL)activeConnection
{
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  activeStreams = [transportDevice activeStreams];

  LOBYTE(transportDevice) = [activeStreams count] != 0;
  return transportDevice;
}

- (void)setStreamStateTimeout:(BOOL)timeout forTime:(unsigned int)time
{
  timeoutCopy = timeout;
  objc_initWeak(&location, self);
  if (timeoutCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__CMContinuityCaptureDeviceBase_setStreamStateTimeout_forTime___block_invoke;
    v12[3] = &unk_278D5C080;
    objc_copyWeak(&v13, &location);
    v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v12);
    streamTimeoutBlock = self->_streamTimeoutBlock;
    self->_streamTimeoutBlock = v7;

    v9 = dispatch_time(0, 1000000000 * time);
    dispatch_after(v9, self->_queue, self->_streamTimeoutBlock);
    objc_destroyWeak(&v13);
  }

  else
  {
    v10 = self->_streamTimeoutBlock;
    if (v10)
    {
      dispatch_block_cancel(v10);
      v11 = self->_streamTimeoutBlock;
      self->_streamTimeoutBlock = 0;
    }
  }

  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureDeviceBase_setStreamStateTimeout_forTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[8] enqueueEventWithNameToPostOnCurrentQueue:? data:?];
    WeakRetained = v2;
  }
}

- (void)logStreamSessionSummary
{
  if ([(NSMutableArray *)self->_streamSessionLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_streamSessionLogs removeObjectAtIndex:?];
  }

  v63 = @"StreamSessionStartTime";
  lastStreamStartTime = self->_lastStreamStartTime;
  v40 = lastStreamStartTime;
  if (lastStreamStartTime)
  {
    v4 = CMContinuityCaptureGetTimeStringFromDate(lastStreamStartTime);
  }

  else
  {
    v4 = &stru_2854DE150;
  }

  currentSessionActivationStartTime2 = v4;
  v70 = v4;
  v64 = @"StreamSessionTransport";
  sessionID2 = 0x277CCA000;
  v6 = MEMORY[0x277CCABB0];
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  [transportDevice wired];
  v37 = [v6 numberWithBool:?];
  v71 = v37;
  v65 = @"StreamSessionStopTime";
  v7 = CMContinuityCaptureGetCurrentTimeString();
  v72 = v7;
  v66 = @"GID";
  v8 = MEMORY[0x277CCABB0];
  [(CMContinuityCaptureConfiguration *)self->_activeConfiguration generationID];
  v9 = [v8 numberWithUnsignedLongLong:?];
  v73 = v9;
  v67 = @"StreamSessionFirstFrameDispatchTime";
  lastStreamFirstFrameDispatchTime = self->_lastStreamFirstFrameDispatchTime;
  if (lastStreamFirstFrameDispatchTime)
  {
    v11 = CMContinuityCaptureGetTimeStringFromDate(self->_lastStreamFirstFrameDispatchTime);
  }

  else
  {
    v11 = &stru_2854DE150;
  }

  v74 = v11;
  v68 = @"StreamSessionTotalFrameDispatched";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v75 = v12;
  v69 = @"StreamSessionID";
  sessionID = [(CMContinuityCaptureConfiguration *)self->_activeConfiguration sessionID];
  uUIDString = [sessionID UUIDString];
  if (uUIDString)
  {
    sessionID2 = [(CMContinuityCaptureConfiguration *)self->_activeConfiguration sessionID];
    uUIDString2 = [sessionID2 UUIDString];
  }

  else
  {
    uUIDString2 = @"NA";
  }

  v76 = uUIDString2;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  if (uUIDString)
  {
  }

  if (lastStreamFirstFrameDispatchTime)
  {
  }

  v16 = v42;
  if (v40)
  {
  }

  [(NSMutableArray *)self->_streamSessionLogs addObject:?];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:?];
  v19 = v18;

  v20 = self->_lastStreamFirstFrameDispatchTime;
  v21 = 0.0;
  if (v20 && self->_lastStreamStartTime)
  {
    [(NSDate *)v20 timeIntervalSinceDate:?];
    v21 = fmax(v22, 0.0);
  }

  lastStreamNoOfFramesDispatched = self->_lastStreamNoOfFramesDispatched;
  v24 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 1.0;
    if (v19 >= 1.0)
    {
      v25 = v19;
    }

    v26 = lastStreamNoOfFramesDispatched / v25;
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    lastSessionID = [compositeDelegate lastSessionID];
    v27 = [v42 objectForKeyedSubscript:?];
    v28 = [v42 objectForKeyedSubscript:?];
    v29 = self->_lastStreamNoOfFramesDispatched;
    v30 = [v42 objectForKeyedSubscript:?];
    v31 = v26;
    lastStreamNoOfHighLatencyFrames = self->_lastStreamNoOfHighLatencyFrames;
    WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
    currentSessionActivationStartTime = [WeakRetained currentSessionActivationStartTime];
    if (currentSessionActivationStartTime)
    {
      v37 = objc_loadWeakRetained(&self->_compositeDelegate);
      currentSessionActivationStartTime2 = [v37 currentSessionActivationStartTime];
      v35 = CMContinuityCaptureGetTimeStringFromDate(currentSessionActivationStartTime2);
    }

    else
    {
      v35 = &stru_2854DE150;
    }

    *buf = 138545666;
    selfCopy = self;
    v45 = 2048;
    v46 = lastSessionID;
    v47 = 2114;
    v48 = v27;
    v49 = 2114;
    v50 = v28;
    v51 = 2048;
    v52 = v29;
    v53 = 2114;
    v54 = v30;
    v55 = 2048;
    v56 = v31;
    v57 = 2048;
    v58 = lastStreamNoOfHighLatencyFrames;
    v59 = 2048;
    v60 = v21;
    v61 = 2114;
    v62 = v35;
    _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Stream stop requested, summary : StartTime %{public}@ StopTime %{public}@ #ofFramesDispatched %llu FirstFrameDispatchTime %{public}@ FrameRate %.3f fps #ofHighLatencyFrames %lld timeToFirstFrame %.3f currentSessionActivationStartTime %{public}@", buf, 0x66u);
    if (currentSessionActivationStartTime)
    {
    }

    v16 = v42;
  }
}

- (void)setupStreamActionStateMachine
{
  objc_initWeak(location, self);
  v3 = [CMContinuityCaptureStateMachine initWithActionDelegate:"initWithActionDelegate:queue:" queue:?];
  streamActionStateMachine = self->_streamActionStateMachine;
  self->_streamActionStateMachine = v3;

  v5 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v6 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v7 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v8 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v9 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v10 = self->_streamActionStateMachine;
  v63[1] = v5;
  v63[2] = v6;
  v63[3] = v9;
  v63[4] = v8;
  v63[5] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v10 addEvents:?];

  v44 = [CMContinuityCaptureState initWithAttributes:"initWithAttributes:entryAction:exitAction:" entryAction:? exitAction:?];
  v37 = v8;
  v12 = [CMContinuityCaptureState alloc];
  v62[1] = MEMORY[0x277D85DD0];
  v62[2] = 3221225472;
  v62[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_3;
  v62[4] = &unk_278D5CB10;
  objc_copyWeak(v63, location);
  v61[1] = MEMORY[0x277D85DD0];
  v61[2] = 3221225472;
  v61[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_4;
  v61[4] = &unk_278D5CB10;
  objc_copyWeak(v62, location);
  v13 = [CMContinuityCaptureState initWithAttributes:v12 entryAction:"initWithAttributes:entryAction:exitAction:" exitAction:?];
  v43 = v9;
  v14 = [CMContinuityCaptureStateTransition alloc];
  v58[1] = MEMORY[0x277D85DD0];
  v58[2] = 3221225472;
  v58[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_5;
  v58[4] = &unk_278D5CB38;
  v15 = v13;
  v59 = v15;
  v60 = v5;
  objc_copyWeak(v61, location);
  v36 = v60;
  v41 = [CMContinuityCaptureStateTransition initWithAttributes:v14 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  selfCopy = self;
  v16 = [CMContinuityCaptureStateTransition alloc];
  v55[1] = MEMORY[0x277D85DD0];
  v55[2] = 3221225472;
  v55[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_7;
  v55[4] = &unk_278D5CB38;
  v17 = v15;
  v56 = v17;
  v18 = v6;
  v57 = v18;
  objc_copyWeak(v58, location);
  v40 = [CMContinuityCaptureStateTransition initWithAttributes:v16 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v19 = [CMContinuityCaptureStateTransition alloc];
  v52[1] = MEMORY[0x277D85DD0];
  v52[2] = 3221225472;
  v52[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_8;
  v52[4] = &unk_278D5CB38;
  v20 = v17;
  v53 = v20;
  v21 = v7;
  v54 = v21;
  objc_copyWeak(v55, location);
  v39 = [CMContinuityCaptureStateTransition initWithAttributes:v19 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v22 = [CMContinuityCaptureStateTransition alloc];
  v49[1] = MEMORY[0x277D85DD0];
  v49[2] = 3221225472;
  v49[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_10;
  v49[4] = &unk_278D5CB38;
  v23 = v20;
  v50 = v23;
  v24 = v37;
  v51 = v24;
  objc_copyWeak(v52, location);
  v25 = [CMContinuityCaptureStateTransition initWithAttributes:v22 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v26 = [CMContinuityCaptureStateTransition alloc];
  v38 = v21;
  v48[1] = MEMORY[0x277D85DD0];
  v48[2] = 3221225472;
  v48[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_12;
  v48[4] = &unk_278D5CB10;
  objc_copyWeak(v49, location);
  v27 = [CMContinuityCaptureStateTransition initWithAttributes:v26 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v28 = [CMContinuityCaptureStateTransition alloc];
  v45[1] = MEMORY[0x277D85DD0];
  v45[2] = 3221225472;
  v45[3] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_14;
  v45[4] = &unk_278D5CB38;
  v29 = v23;
  v46 = v29;
  v30 = v18;
  v47 = v30;
  objc_copyWeak(v48, location);
  v31 = [CMContinuityCaptureStateTransition initWithAttributes:v28 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v32 = [CMContinuityCaptureStateTransition alloc];
  objc_copyWeak(v45, location);
  v33 = [CMContinuityCaptureStateTransition initWithAttributes:v32 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v34 = selfCopy->_streamActionStateMachine;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v34 addStateTransitions:?];

  [(CMContinuityCaptureStateMachine *)selfCopy->_streamActionStateMachine setCurrentState:?];
  objc_destroyWeak(v45);

  objc_destroyWeak(v48);
  objc_destroyWeak(v49);

  objc_destroyWeak(v52);
  objc_destroyWeak(v55);

  objc_destroyWeak(v58);
  objc_destroyWeak(v61);

  objc_destroyWeak(v62);
  objc_destroyWeak(v63);

  objc_destroyWeak(location);
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStreamStateTimeout:? forTime:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStreamStateTimeout:? forTime:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [v11 data];
  [WeakRetained stateMachineStreamSubstateSendData:?];

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v11 data];
  v7 = [v6 objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = [v11 data];
    v9 = [v8 objectForKeyedSubscript:?];
    [v9 integerValue];
    [v5 startCameraCaptureStack:?];
  }

  else
  {
    [v5 startCameraCaptureStack:?];
  }

  v10 = objc_loadWeakRetained((a1 + 48));
  [v10 streamStateMachineNotifyComplete:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 data];

  [WeakRetained stateMachineStreamSubstateReceiveData:?];
  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 streamStateMachineNotifyComplete:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_8(uint64_t a1)
{
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained streamStateMachineNotifyComplete:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_10(uint64_t a1)
{
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained streamStateMachineNotifyComplete:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startStreamCompletedWithError:?];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 streamStateMachineNotifyComplete:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 data];

  [WeakRetained stateMachineStreamSubstateReceiveData:?];
  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 startStreamCompletedWithError:?];

  v7 = objc_loadWeakRetained((a1 + 48));
  [v7 streamStateMachineNotifyComplete:?];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
  [WeakRetained startStreamCompletedWithError:?];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 streamStateMachineNotifyComplete:?];
}

- (void)setupStateMachine
{
  objc_initWeak(location, self);
  v3 = [CMContinuityCaptureStateMachine initWithActionDelegate:"initWithActionDelegate:queue:" queue:?];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v3;

  v170 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v149 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v5 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v6 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v7 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v155 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v153 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v167 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v174 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v8 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v9 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v160 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v10 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v147 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v166 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v173 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v159 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v158 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v11 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v143 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v145 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v141 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v163 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v168 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v162 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v172 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v161 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v164 = [CMContinuityCaptureStateMachineEvent initWithName:"initWithName:isEntry:eventAction:" isEntry:? eventAction:?];
  v12 = self->_stateMachine;
  v294[1] = v170;
  v294[2] = v149;
  v294[3] = v155;
  v294[4] = v7;
  v294[5] = v153;
  v294[6] = v167;
  v294[7] = v174;
  v294[8] = v160;
  v294[9] = v6;
  v294[10] = v10;
  v294[11] = v147;
  v294[12] = v163;
  v294[13] = v168;
  v294[14] = v8;
  v294[15] = v11;
  v294[16] = v143;
  v294[17] = v9;
  v294[18] = v166;
  v294[19] = v173;
  v294[20] = v159;
  v294[21] = v158;
  v294[22] = v5;
  v294[23] = v145;
  v294[24] = v141;
  v294[25] = v162;
  v294[26] = v172;
  v294[27] = v161;
  v294[28] = v164;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v12 addEvents:?];
  v135 = v9;

  v14 = [CMContinuityCaptureState initWithAttributes:"initWithAttributes:entryAction:exitAction:" entryAction:? exitAction:?];
  v136 = v8;
  v15 = [CMContinuityCaptureState alloc];
  v293[1] = MEMORY[0x277D85DD0];
  v293[2] = 3221225472;
  v293[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke;
  v293[4] = &unk_278D5CB10;
  objc_copyWeak(v294, location);
  v292[1] = MEMORY[0x277D85DD0];
  v292[2] = 3221225472;
  v292[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_2;
  v292[4] = &unk_278D5CB10;
  objc_copyWeak(v293, location);
  v16 = [CMContinuityCaptureState initWithAttributes:v15 entryAction:"initWithAttributes:entryAction:exitAction:" exitAction:?];
  v114 = [CMContinuityCaptureState initWithAttributes:"initWithAttributes:entryAction:exitAction:" entryAction:? exitAction:?];
  v137 = v7;
  v17 = [CMContinuityCaptureState alloc];
  v291[1] = MEMORY[0x277D85DD0];
  v291[2] = 3221225472;
  v291[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_3;
  v291[4] = &unk_278D5CB10;
  objc_copyWeak(v292, location);
  v287 = MEMORY[0x277D85DD0];
  v288 = 3221225472;
  v289 = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_4;
  v290 = &unk_278D5CB10;
  objc_copyWeak(v291, location);
  v18 = [CMContinuityCaptureState initWithAttributes:v17 entryAction:"initWithAttributes:entryAction:exitAction:" exitAction:?];
  v138 = v6;
  v152 = [CMContinuityCaptureState initWithAttributes:"initWithAttributes:entryAction:exitAction:" entryAction:? exitAction:?];
  v19 = [CMContinuityCaptureStateTransition alloc];
  v284[1] = MEMORY[0x277D85DD0];
  v284[2] = 3221225472;
  v284[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_5;
  v284[4] = &unk_278D5CB80;
  v20 = v18;
  v285 = v20;
  v286 = v10;
  v157 = v286;
  v102 = [CMContinuityCaptureStateTransition initWithAttributes:v19 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v21 = [CMContinuityCaptureStateTransition alloc];
  v283[1] = MEMORY[0x277D85DD0];
  v283[2] = 3221225472;
  v283[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_6;
  v283[4] = &unk_278D5CBA8;
  objc_copyWeak(v284, location);
  v280[1] = MEMORY[0x277D85DD0];
  v280[2] = 3221225472;
  v280[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_7;
  v280[4] = &unk_278D5CBD0;
  objc_copyWeak(v283, location);
  v22 = v20;
  v281 = v22;
  v282 = v155;
  v140 = v282;
  v134 = [CMContinuityCaptureStateTransition initWithAttributes:v21 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v23 = [CMContinuityCaptureStateTransition alloc];
  v279[1] = MEMORY[0x277D85DD0];
  v279[2] = 3221225472;
  v279[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_8;
  v279[4] = &unk_278D5CBA8;
  objc_copyWeak(v280, location);
  v273 = MEMORY[0x277D85DD0];
  v274 = 3221225472;
  v275 = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_9;
  v276 = &unk_278D5CBD0;
  objc_copyWeak(v279, location);
  v24 = v22;
  v277 = v24;
  v278 = v11;
  v139 = v278;
  v133 = [CMContinuityCaptureStateTransition initWithAttributes:v23 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v25 = [CMContinuityCaptureStateTransition alloc];
  v267 = MEMORY[0x277D85DD0];
  v268 = 3221225472;
  v269 = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_10;
  v270 = &unk_278D5CB80;
  v26 = v24;
  v271 = v26;
  v27 = v145;
  v272 = v27;
  v132 = [CMContinuityCaptureStateTransition initWithAttributes:v25 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v28 = [CMContinuityCaptureStateTransition alloc];
  v264[1] = MEMORY[0x277D85DD0];
  v264[2] = 3221225472;
  v264[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_12;
  v264[4] = &unk_278D5CB80;
  v29 = v26;
  v265 = v29;
  v266 = v147;
  v156 = v266;
  v131 = [CMContinuityCaptureStateTransition initWithAttributes:v28 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v30 = [CMContinuityCaptureStateTransition alloc];
  v261[1] = MEMORY[0x277D85DD0];
  v261[2] = 3221225472;
  v261[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_14;
  v261[4] = &unk_278D5CBD0;
  objc_copyWeak(v264, location);
  v31 = v29;
  v262 = v31;
  v263 = v153;
  v148 = v263;
  v130 = [CMContinuityCaptureStateTransition initWithAttributes:v30 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v32 = [CMContinuityCaptureStateTransition alloc];
  v255 = MEMORY[0x277D85DD0];
  v256 = 3221225472;
  v257 = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_16;
  v258 = &unk_278D5CBD0;
  objc_copyWeak(v261, location);
  v33 = v31;
  v259 = v33;
  v260 = v143;
  v146 = v260;
  v129 = [CMContinuityCaptureStateTransition initWithAttributes:v32 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v34 = [CMContinuityCaptureStateTransition alloc];
  v252[1] = MEMORY[0x277D85DD0];
  v252[2] = 3221225472;
  v252[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_18;
  v252[4] = &unk_278D5CB80;
  v35 = v33;
  v253 = v35;
  v254 = v141;
  v154 = v254;
  v142 = [CMContinuityCaptureStateTransition initWithAttributes:v34 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v36 = [CMContinuityCaptureStateTransition alloc];
  v249[1] = MEMORY[0x277D85DD0];
  v249[2] = 3221225472;
  v249[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_19;
  v249[4] = &unk_278D5CBD0;
  objc_copyWeak(v252, location);
  v37 = v35;
  v250 = v37;
  v251 = v149;
  v150 = v251;
  v128 = [CMContinuityCaptureStateTransition initWithAttributes:v36 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v38 = [CMContinuityCaptureStateTransition alloc];
  v248[1] = MEMORY[0x277D85DD0];
  v248[2] = 3221225472;
  v248[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_20;
  v248[4] = &unk_278D5CB10;
  objc_copyWeak(v249, location);
  v126 = [CMContinuityCaptureStateTransition initWithAttributes:v38 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v39 = [CMContinuityCaptureStateTransition alloc];
  v245[5] = MEMORY[0x277D85DD0];
  v245[6] = 3221225472;
  v245[7] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_21;
  v245[8] = &unk_278D5CBD0;
  objc_copyWeak(v248, location);
  v40 = v37;
  v246 = v40;
  v247 = v5;
  v144 = v247;
  v125 = [CMContinuityCaptureStateTransition initWithAttributes:v39 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v245[1] = v157;
  v245[2] = v27;
  v245[3] = v140;
  v245[4] = v139;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v243[0] = MEMORY[0x277D85DD0];
  v243[1] = 3221225472;
  v243[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_22;
  v243[3] = &unk_278D5CBF8;
  v42 = v40;
  v244 = v42;
  objc_copyWeak(v245, location);
  v124 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v42, v42, v41, v243, 0);
  v127 = v27;

  v242[1] = v156;
  v242[2] = v154;
  v242[3] = v148;
  v242[4] = v146;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_23;
  v240[3] = &unk_278D5CBF8;
  v241 = v42;
  objc_copyWeak(v242, location);
  v238[0] = MEMORY[0x277D85DD0];
  v238[1] = 3221225472;
  v238[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_24;
  v238[3] = &unk_278D5CC20;
  v44 = v241;
  v239 = v44;
  v123 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v44, v44, v43, v240, v238);

  v45 = [CMContinuityCaptureStateTransition alloc];
  v236[1] = MEMORY[0x277D85DD0];
  v236[2] = 3221225472;
  v236[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_25;
  v236[4] = &unk_278D5CBA8;
  objc_copyWeak(&v237, location);
  v122 = [CMContinuityCaptureStateTransition initWithAttributes:v45 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v121 = [CMContinuityCaptureStateTransition initWithAttributes:"initWithAttributes:dstState:event:guard:action:" dstState:? event:? guard:? action:?];
  v120 = [CMContinuityCaptureStateTransition initWithAttributes:"initWithAttributes:dstState:event:guard:action:" dstState:? event:? guard:? action:?];
  v46 = [CMContinuityCaptureStateTransition alloc];
  v235[1] = MEMORY[0x277D85DD0];
  v235[2] = 3221225472;
  v235[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_26;
  v235[4] = &unk_278D5CB10;
  objc_copyWeak(v236, location);
  v119 = [CMContinuityCaptureStateTransition initWithAttributes:v46 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v47 = [CMContinuityCaptureStateTransition alloc];
  v234[1] = MEMORY[0x277D85DD0];
  v234[2] = 3221225472;
  v234[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_27;
  v234[4] = &unk_278D5CB10;
  objc_copyWeak(v235, location);
  v118 = [CMContinuityCaptureStateTransition initWithAttributes:v47 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v48 = [CMContinuityCaptureStateTransition alloc];
  v233[1] = MEMORY[0x277D85DD0];
  v233[2] = 3221225472;
  v233[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_28;
  v233[4] = &unk_278D5CB10;
  objc_copyWeak(v234, location);
  v117 = [CMContinuityCaptureStateTransition initWithAttributes:v48 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v49 = [CMContinuityCaptureStateTransition alloc];
  v232[6] = MEMORY[0x277D85DD0];
  v232[7] = 3221225472;
  v232[8] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_29;
  v232[9] = &unk_278D5CB10;
  objc_copyWeak(v233, location);
  v116 = [CMContinuityCaptureStateTransition initWithAttributes:v49 dstState:"initWithAttributes:dstState:event:guard:action:" event:? guard:? action:?];
  v232[1] = v174;
  v232[2] = v173;
  v232[3] = v168;
  v232[4] = v172;
  v232[5] = v164;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v230[0] = MEMORY[0x277D85DD0];
  v230[1] = 3221225472;
  v230[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_30;
  v230[3] = &unk_278D5CBF8;
  v51 = v114;
  v231 = v51;
  objc_copyWeak(v232, location);
  v228[0] = MEMORY[0x277D85DD0];
  v228[1] = 3221225472;
  v228[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_31;
  v228[3] = &unk_278D5CBA8;
  objc_copyWeak(&v229, location);
  v115 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v51, v16, v50, v230, v228);

  v227[1] = v167;
  v227[2] = v166;
  v227[3] = v163;
  v227[4] = v162;
  v227[5] = v161;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_32;
  v225[3] = &unk_278D5CBF8;
  v53 = v51;
  v226 = v53;
  objc_copyWeak(v227, location);
  v101 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v16, v53, v52, v225, 0);

  v224[1] = v14;
  v224[2] = v53;
  v224[3] = v44;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v222[0] = MEMORY[0x277D85DD0];
  v222[1] = 3221225472;
  v222[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_33;
  v222[3] = &unk_278D5CBF8;
  v55 = v53;
  v223 = v55;
  objc_copyWeak(v224, location);
  v113 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v54, v55, v166, v222, 0);

  v221[1] = v14;
  v221[2] = v55;
  v221[3] = v44;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v219[0] = MEMORY[0x277D85DD0];
  v219[1] = 3221225472;
  v219[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_34;
  v219[3] = &unk_278D5CBF8;
  v57 = v55;
  v220 = v57;
  objc_copyWeak(v221, location);
  v112 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v56, v57, v163, v219, 0);

  v218[1] = v14;
  v218[2] = v57;
  v218[3] = v44;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v216[0] = MEMORY[0x277D85DD0];
  v216[1] = 3221225472;
  v216[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_35;
  v216[3] = &unk_278D5CBF8;
  v59 = v57;
  v217 = v59;
  objc_copyWeak(v218, location);
  v111 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v58, v59, v162, v216, 0);

  v215[1] = v14;
  v215[2] = v59;
  v215[3] = v44;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 3221225472;
  v213[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_36;
  v213[3] = &unk_278D5CBF8;
  v61 = v59;
  v214 = v61;
  objc_copyWeak(v215, location);
  v110 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v60, v61, v167, v213, 0);

  v212[1] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v210[0] = MEMORY[0x277D85DD0];
  v210[1] = 3221225472;
  v210[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_37;
  v210[3] = &unk_278D5CBF8;
  v63 = v61;
  v211 = v63;
  objc_copyWeak(v212, location);
  v108 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v14, v62, v136, v210, 0);

  v209[1] = v14;
  v209[2] = v63;
  v209[3] = v44;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v207[0] = MEMORY[0x277D85DD0];
  v207[1] = 3221225472;
  v207[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_38;
  v207[3] = &unk_278D5CBF8;
  v65 = v63;
  v208 = v65;
  objc_copyWeak(v209, location);
  v109 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v64, v65, v161, v207, 0);

  v206[1] = v14;
  v206[2] = v44;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v204[0] = MEMORY[0x277D85DD0];
  v204[1] = 3221225472;
  v204[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_39;
  v204[3] = &unk_278D5CBF8;
  v67 = v65;
  v205 = v67;
  objc_copyWeak(v206, location);
  v107 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v67, v66, v173, v204, &__block_literal_global_110);

  v203[1] = v14;
  v203[2] = v44;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v201[0] = MEMORY[0x277D85DD0];
  v201[1] = 3221225472;
  v201[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_41;
  v201[3] = &unk_278D5CBF8;
  v69 = v67;
  v202 = v69;
  objc_copyWeak(v203, location);
  v106 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v69, v68, v168, v201, &__block_literal_global_112);

  v200[1] = v14;
  v200[2] = v44;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = 3221225472;
  v198[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_43;
  v198[3] = &unk_278D5CBF8;
  v71 = v69;
  v199 = v71;
  objc_copyWeak(v200, location);
  v105 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v71, v70, v172, v198, &__block_literal_global_114);

  v197[1] = v14;
  v197[2] = v44;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v195[0] = MEMORY[0x277D85DD0];
  v195[1] = 3221225472;
  v195[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_45;
  v195[3] = &unk_278D5CBF8;
  v73 = v71;
  v196 = v73;
  objc_copyWeak(v197, location);
  v104 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v73, v72, v174, v195, &__block_literal_global_116);

  v194[1] = v14;
  v194[2] = v44;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_47;
  v192[3] = &unk_278D5CBF8;
  v75 = v73;
  v193 = v75;
  objc_copyWeak(v194, location);
  v103 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v75, v74, v164, v192, &__block_literal_global_118);

  v191[1] = v14;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_49;
  v189[3] = &unk_278D5CBF8;
  v77 = v75;
  v190 = v77;
  objc_copyWeak(v191, location);
  v100 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v77, v76, v9, v189, &__block_literal_global_120);

  v188[1] = v174;
  v188[2] = v173;
  v188[3] = v168;
  v188[4] = v172;
  v188[5] = v164;
  v188[6] = v9;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_51;
  v184[3] = &unk_278D5CC48;
  v185 = v77;
  v79 = v164;
  v186 = v79;
  v80 = v168;
  v187 = v80;
  objc_copyWeak(v188, location);
  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_52;
  v182[3] = &unk_278D5CC20;
  v81 = v185;
  v183 = v81;
  v169 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v81, v81, v78, v184, v182);

  v181[1] = v14;
  v181[2] = v81;
  v181[3] = v44;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_53;
  v180[3] = &unk_278D5CB10;
  objc_copyWeak(v181, location);
  v165 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v82, v152, v160, v180, 0);

  v179[7] = v16;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v84 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v83, v152, v160, 0, 0);
  v99 = v80;

  v179[1] = v150;
  v179[2] = v170;
  v179[3] = v157;
  v179[4] = v156;
  v179[5] = v127;
  v179[6] = v154;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v86 = self->_stateMachine;
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_54;
  v175[3] = &unk_278D5CC70;
  v176 = v81;
  v171 = v170;
  v177 = v171;
  objc_copyWeak(v179, location);
  v151 = v150;
  v178 = v151;
  v98 = v176;
  v87 = CMContinuityCaptureSMDeferEventsInState(v85, v176, v86, v175);

  v88 = self->_stateMachine;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v88 addStateTransitions:?];

  v90 = self->_stateMachine;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v90 addStateTransitions:?];

  v92 = self->_stateMachine;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v92 addStateTransitions:?];

  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  v94 = self->_stateMachine;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v94 addStateTransitions:?];

  v96 = self->_stateMachine;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [(CMContinuityCaptureStateMachine *)v96 addStateTransitions:?];

  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:?];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine setCurrentState:?];

  objc_destroyWeak(v179);
  objc_destroyWeak(v181);

  objc_destroyWeak(v188);
  objc_destroyWeak(v191);

  objc_destroyWeak(v194);
  objc_destroyWeak(v197);

  objc_destroyWeak(v200);
  objc_destroyWeak(v203);

  objc_destroyWeak(v206);
  objc_destroyWeak(v209);

  objc_destroyWeak(v212);
  objc_destroyWeak(v215);

  objc_destroyWeak(v218);
  objc_destroyWeak(v221);

  objc_destroyWeak(v224);
  objc_destroyWeak(v227);

  objc_destroyWeak(&v229);
  objc_destroyWeak(v232);

  objc_destroyWeak(v233);
  objc_destroyWeak(v234);

  objc_destroyWeak(v235);
  objc_destroyWeak(v236);

  objc_destroyWeak(&v237);
  objc_destroyWeak(v242);

  objc_destroyWeak(v245);
  objc_destroyWeak(v248);

  objc_destroyWeak(v249);
  objc_destroyWeak(v252);

  objc_destroyWeak(v261);
  objc_destroyWeak(v264);

  objc_destroyWeak(v279);
  objc_destroyWeak(v280);

  objc_destroyWeak(v283);
  objc_destroyWeak(v284);

  objc_destroyWeak(v291);
  objc_destroyWeak(v292);

  objc_destroyWeak(v293);
  objc_destroyWeak(v294);

  objc_destroyWeak(location);
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setStreamStateTimeout:? forTime:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeConnection];

  return v2 ^ 1;
}

void *__50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:?];

  return [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeConnection];

  return v2 ^ 1;
}

void *__50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:?];

  return [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
}

void *__50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:?];

  return [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
}

void *__50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:?];

  return [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:?];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 unconditionalTransitionForState:? andDeferringEvent:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateMachineClearDeferredEvents];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:?];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 unconditionalTransitionForState:? andDeferringEvent:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_22(uint64_t a1, void *a2)
{
  v8 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  v3 = [v8 name];
  if ([v3 isEqualToString:?])
  {
  }

  else
  {
    v4 = [v8 name];
    v5 = [v4 isEqualToString:?];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained scheduleDeviceBusyNotification:?];

LABEL_5:
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_23(uint64_t a1, void *a2)
{
  v8 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  v3 = [v8 name];
  if ([v3 isEqualToString:?])
  {
  }

  else
  {
    v4 = [v8 name];
    v5 = [v4 isEqualToString:?];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained scheduleDeviceBusyNotification:?];

LABEL_5:
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 stateMachineNotifyComplete:?];
}

BOOL __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_24(uint64_t a1)
{
  v1 = [*(a1 + 32) pendingEvents];
  v2 = [v1 count] > 1;

  return v2;
}

void *__50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 name];

  v8 = [WeakRetained postActionGuardOfType:? forEventName:? option:?];
  return v8;
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void *__50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_31(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ([CMContinuityCaptureDeviceBase defaultStateExitGuard:"defaultStateExitGuard:dstState:onEvent:" dstState:? onEvent:?])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [v5 name];
    v8 = [WeakRetained postActionGuardOfType:? forEventName:? option:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:"defaultStateEntryTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:? forEvent:? option:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 stateMachineNotifyComplete:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_51(id *a1, void *a2)
{
  v5 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:"defaultStateExitTransitionActionForState:onEvent:" onEvent:?];
  if (a1[5] == v5 || a1[6] == v5)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    [WeakRetained postActionOfType:? forEvent:? option:?];
  }

  v4 = objc_loadWeakRetained(a1 + 7);
  [v4 stateMachineNotifyComplete:?];
}

BOOL __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_52(uint64_t a1)
{
  v1 = [*(a1 + 32) pendingEvents];
  v2 = [v1 count] > 1;

  return v2;
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_54(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (a1[4] == v7 && (a1[5] == v5 || a1[6] == v5))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    [WeakRetained postActionOfType:? forEvent:? option:?];
  }
}

- (id)_aggregateStreamEventsInStreamState:(id)state
{
  stateCopy = state;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_V2(self->_queue);
  v5 = stateCopy;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (!v6)
  {

    v8 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0];
  v11 = @"kCMContinuityCaptureEventData";
  v33 = v5;
  v32 = MEMORY[0];
  do
  {
    v12 = 0;
    v34 = v7;
    do
    {
      if (MEMORY[0] != v10)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(8 * v12);
      if (v9)
      {
        [v35 addObject:?];
LABEL_8:
        v9 = 1;
        goto LABEL_18;
      }

      v14 = v11;
      v15 = [*(8 * v12) objectForKeyedSubscript:?];
      v16 = [v15 isEqualToString:?];

      if (v16)
      {
        v11 = v14;
        if (v8)
        {
          v17 = [v8 objectForKeyedSubscript:?];
          v18 = [v8 objectForKeyedSubscript:?];
          v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
          [CMContinuityCaptureDeviceBase postActionCompletionForEventName:"postActionCompletionForEventName:eventData:error:" eventData:? error:?];

          v11 = v14;
        }

        v20 = [v13 objectForKeyedSubscript:?];
        v21 = [v13 objectForKeyedSubscript:?];
        v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [CMContinuityCaptureDeviceBase postActionCompletionForEventName:"postActionCompletionForEventName:eventData:error:" eventData:? error:?];

        v8 = 0;
        v9 = 0;
      }

      else
      {
        v23 = [v13 objectForKeyedSubscript:?];
        v24 = [v23 isEqualToString:?];

        v11 = v14;
        if (!v24)
        {
          v5 = v33;
          v7 = v34;
          v10 = v32;
          if (v8)
          {
            [v35 addObject:?];
          }

          [v35 addObject:?];
          v8 = 0;
          goto LABEL_8;
        }

        if (v8)
        {
          v25 = [v8 objectForKeyedSubscript:?];
          v26 = [v8 objectForKeyedSubscript:?];
          v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
          [CMContinuityCaptureDeviceBase postActionCompletionForEventName:"postActionCompletionForEventName:eventData:error:" eventData:? error:?];

          v11 = v14;
        }

        v28 = v13;

        v9 = 0;
        v8 = v28;
      }

      v5 = v33;
      v7 = v34;
      v10 = v32;
LABEL_18:
      v12 = (v12 + 1);
    }

    while (v7 != v12);
    v29 = [v5 countByEnumeratingWithState:? objects:? count:?];
    v7 = v29;
  }

  while (v29);

  if (v8)
  {
    v30 = v35;
    [v35 addObject:?];
    goto LABEL_28;
  }

LABEL_27:
  v30 = v35;
LABEL_28:

  return v30;
}

- (id)_aggregateStreamEventsInInitState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_V2(self->_queue);
  v6 = stateCopy;
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (!v7)
  {

    v9 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  selfCopy = self;
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0];
  v38 = v6;
  v39 = v5;
  v36 = MEMORY[0];
  do
  {
    v12 = 0;
    v40 = v8;
    do
    {
      if (MEMORY[0] != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(8 * v12);
      if (v10)
      {
        [v5 addObject:?];
        v10 = 1;
        goto LABEL_23;
      }

      v14 = [*(8 * v12) objectForKeyedSubscript:?];
      v15 = [v14 isEqualToString:?];

      if (v15)
      {
        if (v9)
        {
          v16 = [v9 objectForKeyedSubscript:?];
          v17 = [v9 objectForKeyedSubscript:?];
          v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
          [CMContinuityCaptureDeviceBase postActionCompletionForEventName:selfCopy eventData:"postActionCompletionForEventName:eventData:error:" error:?];
        }

        v19 = v13;

        v10 = 0;
        v9 = v19;
      }

      else
      {
        v20 = [v13 objectForKeyedSubscript:?];
        v21 = [v20 isEqualToString:?];

        if (v21)
        {
          if (v9)
          {
            v22 = [v9 objectForKeyedSubscript:?];
            v23 = [v9 objectForKeyedSubscript:?];
            v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
            [CMContinuityCaptureDeviceBase postActionCompletionForEventName:selfCopy eventData:"postActionCompletionForEventName:eventData:error:" error:?];
          }

          v25 = [v13 objectForKeyedSubscript:?];
          v26 = [v13 objectForKeyedSubscript:?];
          v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
          [CMContinuityCaptureDeviceBase postActionCompletionForEventName:selfCopy eventData:"postActionCompletionForEventName:eventData:error:" error:?];

          v9 = 0;
          v10 = 0;
          v5 = v39;
          v6 = v38;
          v11 = v36;
          goto LABEL_22;
        }

        v28 = [v13 objectForKeyedSubscript:?];
        if ([v28 isEqualToString:?])
        {
        }

        else
        {
          v29 = [v13 objectForKeyedSubscript:?];
          v30 = [v29 isEqualToString:?];

          if (!v30)
          {
            v5 = v39;
            if (v9)
            {
              [v39 addObject:?];
            }

            [v39 addObject:?];
            v9 = 0;
            v10 = 1;
            goto LABEL_21;
          }
        }

        v31 = [v13 objectForKeyedSubscript:?];
        v32 = [v13 objectForKeyedSubscript:?];
        v33 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [CMContinuityCaptureDeviceBase postActionCompletionForEventName:selfCopy eventData:"postActionCompletionForEventName:eventData:error:" error:?];

        v10 = 0;
      }

      v5 = v39;
LABEL_21:
      v6 = v38;
LABEL_22:
      v8 = v40;
LABEL_23:
      v12 = (v12 + 1);
    }

    while (v8 != v12);
    v34 = [v6 countByEnumeratingWithState:? objects:? count:?];
    v8 = v34;
  }

  while (v34);

  if (v9)
  {
    [v5 addObject:?];
  }

LABEL_32:

  return v5;
}

- (id)_aggregateEventPairInAnyState:(id)state entryEventName:(id)name exitEventName:(id)eventName
{
  stateCopy = state;
  nameCopy = name;
  eventNameCopy = eventName;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v10 = stateCopy;
  v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
  if (!v11)
  {

    v13 = 0;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0];
  do
  {
    for (i = 0; i != v12; i = (i + 1))
    {
      if (MEMORY[0] != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(8 * i);
      if (v14)
      {
        [v9 addObject:?];
        v14 = 1;
        continue;
      }

      v18 = v10;
      v19 = [*(8 * i) objectForKeyedSubscript:?];
      if ([v19 isEqualToString:?])
      {

LABEL_11:
        if (v13)
        {
          v22 = [v13 objectForKeyedSubscript:?];
          v23 = [v13 objectForKeyedSubscript:?];
          v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
          [CMContinuityCaptureDeviceBase postActionCompletionForEventName:selfCopy eventData:"postActionCompletionForEventName:eventData:error:" error:?];
        }

        v25 = v17;

        v14 = 0;
        v13 = v25;
        v10 = v18;
        continue;
      }

      v20 = [v17 objectForKeyedSubscript:?];
      v21 = [v20 isEqualToString:?];

      if (v21)
      {
        goto LABEL_11;
      }

      v10 = v18;
      if (v13)
      {
        [v9 addObject:?];
      }

      [v9 addObject:?];
      v13 = 0;
      v14 = 1;
    }

    v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v12);

  if (v13)
  {
    [v9 addObject:?];
  }

LABEL_22:

  return v9;
}

- (id)_aggregateEventDuplicatesInAnyState:(id)state eventName:(id)name
{
  stateCopy = state;
  nameCopy = name;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v8 = stateCopy;
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (!v9)
  {

    v11 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = MEMORY[0];
  do
  {
    for (i = 0; i != v10; i = (i + 1))
    {
      if (MEMORY[0] != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(8 * i);
      if (v12)
      {
        [v7 addObject:?];
LABEL_15:
        v12 = 1;
        continue;
      }

      v16 = [*(8 * i) objectForKeyedSubscript:?];
      v17 = [v16 isEqualToString:?];

      if (!v17)
      {
        if (v11)
        {
          [v7 addObject:?];
        }

        [v7 addObject:?];
        v11 = 0;
        goto LABEL_15;
      }

      if (v11)
      {
        v18 = [v11 objectForKeyedSubscript:?];
        v19 = [v11 objectForKeyedSubscript:?];
        v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [CMContinuityCaptureDeviceBase postActionCompletionForEventName:selfCopy eventData:"postActionCompletionForEventName:eventData:error:" error:?];
      }

      v21 = v15;

      v12 = 0;
      v11 = v21;
    }

    v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v10);

  if (v11)
  {
    [v7 addObject:?];
  }

LABEL_21:

  return v7;
}

- (id)aggregateEvents:(id)events
{
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  if ([eventsCopy count])
  {
    currentState = [(CMContinuityCaptureStateMachine *)self->_stateMachine currentState];
    name = [currentState name];
    v7 = [name isEqualToString:?];

    if (v7)
    {
      v8 = [(CMContinuityCaptureDeviceBase *)self _aggregateStreamEventsInInitState:?];
    }

    else
    {
      currentState2 = [(CMContinuityCaptureStateMachine *)self->_stateMachine currentState];
      name2 = [currentState2 name];
      v12 = [name2 isEqualToString:?];

      if (v12)
      {
        v8 = [(CMContinuityCaptureDeviceBase *)self _aggregateStreamEventsInStreamState:?];
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:?];
      }
    }

    v13 = v8;
    v14 = [CMContinuityCaptureDeviceBase _aggregateEventPairInAnyState:"_aggregateEventPairInAnyState:entryEventName:exitEventName:" entryEventName:? exitEventName:?];

    v15 = [CMContinuityCaptureDeviceBase _aggregateEventPairInAnyState:"_aggregateEventPairInAnyState:entryEventName:exitEventName:" entryEventName:? exitEventName:?];

    v16 = [CMContinuityCaptureDeviceBase _aggregateEventDuplicatesInAnyState:"_aggregateEventDuplicatesInAnyState:eventName:" eventName:?];

    v9 = [CMContinuityCaptureDeviceBase _aggregateEventDuplicatesInAnyState:"_aggregateEventDuplicatesInAnyState:eventName:" eventName:?];
  }

  else
  {
    v9 = eventsCopy;
  }

  return v9;
}

- (void)postDeferredEvent:(id)event data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  if (WeakRetained)
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      selfCopy = self;
      v12 = 2080;
      v13 = "[CMContinuityCaptureDeviceBase postDeferredEvent:data:]";
      v14 = 2112;
      v15 = eventCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s name:%{pubic}@", &v10, 0x20u);
    }

    [(CMContinuityCaptureDeviceBase *)self entity];
    [WeakRetained postEvent:? entity:? data:?];
  }
}

- (CMContinuityCaptureCompositeDeviceDelegate)compositeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  deviceIdentifier = [transportDevice deviceIdentifier];
  v8 = [v3 stringWithFormat:v5, deviceIdentifier, self->_entity, self];

  return v8;
}

@end