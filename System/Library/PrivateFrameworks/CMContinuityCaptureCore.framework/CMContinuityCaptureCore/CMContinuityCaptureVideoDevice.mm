@interface CMContinuityCaptureVideoDevice
- (BOOL)startAVConferenceStack:(unint64_t)stack;
- (BOOL)stopAVConferenceStack;
- (CMContinuityCaptureVideoDevice)companionDevice;
- (CMContinuityCaptureVideoDevice)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate;
- (id)createAVCVideoStream;
- (id)newVideoStreamCurrentConfiguration;
- (opaqueCMSampleBuffer)_createStillImageDataBufferFromRequest:(id)request timestamp:(id *)timestamp;
- (opaqueCMSampleBuffer)createBlackSampleBuffer;
- (opaqueCMSampleBuffer)createBlurredSampleBuffer;
- (void)_didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)completeImageCaptureRequest:(id)request;
- (void)dealloc;
- (void)didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postAVCStreamInterruption;
- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error;
- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)resetTransportDevice:(id)device;
- (void)restartSendingInvalidFramesIfApplicable;
- (void)scheduleDeviceBusyNotification:(BOOL)notification;
- (void)scheduleResumeUserNotification:(BOOL)notification;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)startSendingInvalidFrames;
- (void)stateMachineEnqueueReactionEffect;
- (void)stateMachineImageCapture;
- (void)stateMachineStartSendingBlurredFrames;
- (void)stateMachineStopSendingBlurredFrames;
- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion;
- (void)stopSendingInvalidFrames;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
- (void)streamOutput:(id)output didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)streamOutputDidBecomeInvalid:(id)invalid;
- (void)streamOutputServerDidDie:(id)die;
- (void)terminateComplete:(id)complete;
- (void)updateCameraHiddenControlIfApplicable;
@end

@implementation CMContinuityCaptureVideoDevice

- (void)dealloc
{
  lastDispatchedSampleBuffer = self->_lastDispatchedSampleBuffer;
  if (lastDispatchedSampleBuffer)
  {
    CFRelease(lastDispatchedSampleBuffer);
    self->_lastDispatchedSampleBuffer = 0;
  }

  blurredSampleBuffer = self->_blurredSampleBuffer;
  if (blurredSampleBuffer)
  {
    CFRelease(blurredSampleBuffer);
    self->_blurredSampleBuffer = 0;
  }

  blurredFrameDispatchTimer = self->_blurredFrameDispatchTimer;
  if (blurredFrameDispatchTimer)
  {
    dispatch_source_cancel(blurredFrameDispatchTimer);
    v6 = self->_blurredFrameDispatchTimer;
    self->_blurredFrameDispatchTimer = 0;
  }

  blackFrameDispatchTimer = self->_blackFrameDispatchTimer;
  if (blackFrameDispatchTimer)
  {
    dispatch_source_cancel(blackFrameDispatchTimer);
    v8 = self->_blackFrameDispatchTimer;
    self->_blackFrameDispatchTimer = 0;
  }

  blackFrameSampleBuffer = self->_blackFrameSampleBuffer;
  if (blackFrameSampleBuffer)
  {
    CFRelease(blackFrameSampleBuffer);
    self->_blackFrameSampleBuffer = 0;
  }

  v10.receiver = self;
  v10.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v10 dealloc];
}

- (void)resetTransportDevice:(id)device
{
  deviceCopy = device;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CMContinuityCaptureVideoDevice_resetTransportDevice___block_invoke;
  v8[3] = &unk_278D5C008;
  v9 = deviceCopy;
  selfCopy = self;
  v7 = deviceCopy;
  dispatch_async_and_wait(queue2, v8);
}

void __55__CMContinuityCaptureVideoDevice_resetTransportDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) transportDevice];
  LOBYTE(v2) = [v2 isEqual:?];

  if ((v2 & 1) == 0)
  {
    [*(*(a1 + 40) + 272) resetTransportDevice:?];
    v4 = *(a1 + 32);
    v5.receiver = *(a1 + 40);
    v5.super_class = CMContinuityCaptureVideoDevice;
    objc_msgSendSuper2(&v5, sel_resetTransportDevice_, v4);
  }
}

- (void)updateCameraHiddenControlIfApplicable
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__CMContinuityCaptureVideoDevice_updateCameraHiddenControlIfApplicable__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureVideoDevice_updateCameraHiddenControlIfApplicable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[34] _updateCameraHiddenControlIfApplicable];
    WeakRetained = v2;
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  frameCopy = frame;
  CFRetain(frame);
  v7 = MEMORY[0x277CC0898];
  memset(&v58, 170, sizeof(v58));
  CMSampleBufferGetPresentationTimeStamp(&v58, frameCopy);
  v8 = CMGetAttachment(frameCopy, *MEMORY[0x277CF3FC8], 0);
  v9 = [v8 objectForKeyedSubscript:?];
  v10 = [v8 objectForKeyedSubscript:?];
  lastDispatchedSampleBuffer = self->_lastDispatchedSampleBuffer;
  if (lastDispatchedSampleBuffer)
  {
    CFRelease(lastDispatchedSampleBuffer);
  }

  value = *v7;
  flags = *(v7 + 12);
  timescale = *(v7 + 8);
  epoch = *(v7 + 16);
  self->_lastDispatchedSampleBuffer = frameCopy;
  CFRetain(frameCopy);
  blurredSampleBuffer = self->_blurredSampleBuffer;
  if (blurredSampleBuffer)
  {
    CFRelease(blurredSampleBuffer);
    self->_blurredSampleBuffer = 0;
  }

  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  client = [compositeDelegate client];
  timeSyncClock = [client timeSyncClock];

  v17 = 0x27ECB3000;
  if (timeSyncClock && v9)
  {
    v18 = v8;
    compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    client2 = [compositeDelegate2 client];
    [client2 timeSyncClock];
    v22 = v21 = v10;
    [v9 unsignedLongLongValue];
    hostTime = [v22 machAbsoluteTimeForDomainTime:?];

    if (v21)
    {
      compositeDelegate3 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      client3 = [compositeDelegate3 client];
      [client3 timeSyncClock];
      v28 = v27 = v9;
      grandMasterIdentifier = [v28 grandMasterIdentifier];

      v9 = v27;
      v30 = v21;
      unsignedLongLongValue = [v21 unsignedLongLongValue];
      v31 = unsignedLongLongValue == grandMasterIdentifier;
    }

    else
    {
      v30 = 0;
      v31 = 1;
    }

    v8 = v18;
    if (CMContinityCaptureDebugLogEnabled(unsignedLongLongValue, v24))
    {
      v32 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [CMContinuityCaptureVideoDevice dispatchFrame:entity:completion:];
      }
    }

    if (hostTime != *MEMORY[0x277D714E8] && v31)
    {
      CMClockMakeHostTimeFromSystemUnits(&time, hostTime);
      CMTimeConvertScale(&v56.duration, &time, 100000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v56.duration.value;
      flags = v56.duration.flags;
      timescale = v56.duration.timescale;
      epoch = v56.duration.epoch;
    }

    if (self->_lastBufferNetworkTimeClockSynchronized != v31 && self->_numberOfFramesDispatched)
    {
      CMSetAttachment(frameCopy, @"ContinuityCaptureTimeDiscontinuity", MEMORY[0x277CBEC38], 1u);
    }

    self->_lastBufferNetworkTimeClockSynchronized = v31;
    v10 = v30;
    v17 = 0x27ECB3000uLL;
  }

  v33 = flags & 1;
  if ((flags & 1) == 0 && v58.timescale > 100000)
  {
    time = v58;
    CMTimeConvertScale(&v56.duration, &time, 100000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v56.duration.value;
    flags = v56.duration.flags;
    timescale = v56.duration.timescale;
    epoch = v56.duration.epoch;
    v33 = v56.duration.flags & 1;
  }

  if (v33)
  {
    sampleBufferOut = 0;
    v56.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v56.presentationTimeStamp.timescale = v34;
    *&v56.decodeTimeStamp.value = v34;
    *&v56.duration.value = v34;
    *&v56.duration.epoch = v34;
    CMSampleBufferGetSampleTimingInfo(frameCopy, 0, &v56);
    v56.presentationTimeStamp.value = value;
    v56.presentationTimeStamp.timescale = timescale;
    v56.presentationTimeStamp.flags = flags;
    v56.presentationTimeStamp.epoch = epoch;
    v35 = CFGetAllocator(frameCopy);
    v36 = CMSampleBufferCreateCopyWithNewTiming(v35, frameCopy, 1, &v56, &sampleBufferOut);
    if (v36 || !sampleBufferOut)
    {
      v39 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        Seconds = CMTimeGetSeconds(&time);
        time = v58;
        v46 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 138544130;
        *(&time.value + 4) = self;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = Seconds;
        HIWORD(time.epoch) = 2048;
        v53 = v46;
        v54 = 1024;
        v55 = v36;
        _os_log_error_impl(&dword_242545000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create retimed video frame with PTS %.4f, falling back to unsynced PTS %.4f. err: %d", &time, 0x26u);
      }
    }

    else
    {
      CFRelease(frameCopy);
      frameCopy = sampleBufferOut;
      v37 = *MEMORY[0x277CBECE8];
      time = v58;
      v38 = CMTimeCopyAsDictionary(&time, v37);
      CMSetAttachment(frameCopy, *MEMORY[0x277CF3F80], v38, 1u);
      CFRelease(v38);
    }
  }

  memset(&v56, 170, 24);
  CMSampleBufferGetPresentationTimeStamp(&v56.duration, frameCopy);
  v40 = [v8 objectForKeyedSubscript:?];
  bOOLValue = [v40 BOOLValue];

  if (bOOLValue)
  {
    CMSetAttachment(frameCopy, @"ContinuityCaptureTimeDiscontinuity", MEMORY[0x277CBEC38], 1u);
    v42 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      time = v56.duration;
      v43 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v43;
      _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ marking time discontinuity on buffer %.4f because capture session just restarted on remote device", &time, 0x16u);
    }
  }

  if ([(CMContinuityCaptureDeviceBase *)self hasStreamIntent])
  {
    cmioCaptureDevice = self->_cmioCaptureDevice;
    [(CMContinuityCaptureDeviceBase *)self entity];
    [CMContinuityCaptureCMIOVideoDevice dispatchFrame:"dispatchFrame:entity:completion:" entity:? completion:?];
  }

  ++*(&self->super.super.isa + *(v17 + 1824));
  v51.receiver = self;
  v51.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v51 dispatchFrame:frameCopy entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_175];
  CFRelease(frameCopy);
}

- (void)streamOutput:(id)output didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  outputCopy = output;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  avcStreamOutput = self->_avcStreamOutput;
  if (avcStreamOutput)
  {
    v8 = avcStreamOutput == outputCopy;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ([(CMContinuityCaptureDeviceBase *)self streaming])
    {
      [(CMContinuityCaptureDeviceBase *)self scheduleSendingInvalidFramesAfterTimeout:?];
      [(CMContinuityCaptureVideoDevice *)self stateMachineStopSendingBlurredFrames];
      [(CMContinuityCaptureDeviceBase *)self entity];
      [CMContinuityCaptureVideoDevice dispatchFrame:"dispatchFrame:entity:completion:" entity:? completion:?];
      self->_failedBufferCountDueToMismatchState = 0;
      self->_canIssueStateMismatchEvent = 0;
      goto LABEL_8;
    }

    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = 138543362;
      selfCopy2 = self;
      v12 = "%{public}@ dropping since we are not in streaming state";
      v13 = v9;
      v14 = 12;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = self->_avcStreamOutput;
      v19 = 138543874;
      selfCopy2 = self;
      v21 = 2112;
      v22 = outputCopy;
      v23 = 2112;
      v24 = v11;
      v12 = "%{public}@ discarding sample buffer from streamOutput %@ current _avcStreamOutput %@";
      v13 = v9;
      v14 = 32;
LABEL_13:
      _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_INFO, v12, &v19, v14);
    }
  }

  if (self->_canIssueStateMismatchEvent)
  {
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    if (compositeDelegate)
    {
      v16 = compositeDelegate;
      v17 = self->_failedBufferCountDueToMismatchState + 1;
      self->_failedBufferCountDueToMismatchState = v17;
      if (v17 >= 0x3C)
      {
        v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [v16 connectionInterrupted:? forDevice:?];

        self->_canIssueStateMismatchEvent = 0;
        self->_failedBufferCountDueToMismatchState = 0;
      }
    }
  }

LABEL_8:
}

- (void)streamOutputServerDidDie:(id)die
{
  dieCopy = die;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureVideoDevice streamOutputServerDidDie:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureVideoDevice_streamOutputServerDidDie___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureVideoDevice_streamOutputServerDidDie___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained stopCaptureStack:? completion:?];
    WeakRetained = v2;
  }
}

- (void)streamOutputDidBecomeInvalid:(id)invalid
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureVideoDevice streamOutputDidBecomeInvalid:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
  }
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  streamCopy = stream;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138544130;
    selfCopy = self;
    v10 = 2048;
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v12 = 2080;
    v13 = "[CMContinuityCaptureVideoDevice stream:didStart:error:]";
    v14 = 2112;
    v15 = streamCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCOutput setup complete %s %@", &v8, 0x2Au);
  }

  self->_avcStreamOutputActive = 1;
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CMContinuityCaptureVideoDevice_streamDidStop___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = stopCopy;
  v6 = stopCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__CMContinuityCaptureVideoDevice_streamDidStop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = *(a1 + 32);
      v9 = 138543874;
      v10 = v4;
      v11 = 2080;
      v12 = "[CMContinuityCaptureVideoDevice streamDidStop:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v9, 0x20u);
    }

    v6 = WeakRetained[38];
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
      v7 = WeakRetained[38];
      WeakRetained[38] = 0;
    }

    v8 = WeakRetained[37];
    WeakRetained[37] = 0;

    *(WeakRetained + 376) = 0;
  }
}

- (void)streamDidRTPTimeOut:(id)out
{
  outCopy = out;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureVideoDevice_streamDidRTPTimeOut___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = outCopy;
  v6 = outCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__CMContinuityCaptureVideoDevice_streamDidRTPTimeOut___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2080;
    v10 = "[CMContinuityCaptureVideoDevice streamDidRTPTimeOut:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v7, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 postAVCStreamInterruption];
  }
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CMContinuityCaptureVideoDevice_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = outCopy;
  v6 = outCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__CMContinuityCaptureVideoDevice_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2080;
    v10 = "[CMContinuityCaptureVideoDevice streamDidRTCPTimeOut:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v7, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 postAVCStreamInterruption];
  }
}

- (void)streamDidServerDie:(id)die
{
  dieCopy = die;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CMContinuityCaptureVideoDevice_streamDidServerDie___block_invoke;
  v6[3] = &unk_278D5C080;
  objc_copyWeak(&v7, &location);
  dispatch_async(queue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__CMContinuityCaptureVideoDevice_streamDidServerDie___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 138543618;
    v9 = WeakRetained;
    v10 = 2080;
    v11 = "[CMContinuityCaptureVideoDevice streamDidServerDie:]_block_invoke";
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v8, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v6 = v4[38];
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
      v7 = v5[38];
      v5[38] = 0;
    }

    [v5 postAVCStreamInterruption];
  }
}

- (void)postAVCStreamInterruption
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureVideoDevice postAVCStreamInterruption]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureVideoDevice_postAVCStreamInterruption__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureVideoDevice_postAVCStreamInterruption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained compositeDelegate];
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      [v2 connectionInterrupted:? forDevice:?];
    }

    WeakRetained = v4;
  }
}

- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion
{
  completionCopy = completion;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_stopCompletionBlock)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v29 = 2080;
      v30 = "[CMContinuityCaptureVideoDevice stopCaptureStack:completion:]";
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s already in progress", buf, 0x16u);
    }

    if ((stack & 4) != 0)
    {
      avcVideoStream = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      avcStreamCallID = self->_avcStreamCallID;
      self->_avcStreamCallID = 0;

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    if (self->_avcStreamOutputActive)
    {
      v13 = MEMORY[0x245D12020](completionCopy);
      stopCompletionBlock = self->_stopCompletionBlock;
      self->_stopCompletionBlock = v13;

      objc_initWeak(buf, self);
      v15 = dispatch_time(0, 5000000000);
      queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__CMContinuityCaptureVideoDevice_stopCaptureStack_completion___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v26, buf);
      dispatch_after(v15, queue2, block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    stopAVConferenceStack = [(CMContinuityCaptureVideoDevice *)self stopAVConferenceStack];
    if ((stack & 4) != 0)
    {
      v18 = self->_avcVideoStream;
      if (v18)
      {
        [(AVCVideoStream *)v18 stop];
      }

      avcStreamOutput = self->_avcStreamOutput;
      self->_avcStreamOutput = 0;

      v20 = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      v21 = self->_avcStreamCallID;
      self->_avcStreamCallID = 0;

      self->_avcStreamOutputActive = 0;
      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    v24.receiver = self;
    v24.super_class = CMContinuityCaptureVideoDevice;
    [(CMContinuityCaptureDeviceBase *)&v24 stopCaptureStack:stack completion:&__block_literal_global_191];
    if (!stopAVConferenceStack || !self->_avcStreamOutputActive)
    {
      v23 = self->_stopCompletionBlock;
      self->_stopCompletionBlock = 0;

      completionCopy[2](completionCopy, 0);
    }
  }
}

uint64_t __62__CMContinuityCaptureVideoDevice_stopCaptureStack_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[38];
    if (v3)
    {
      v6 = v2;
      (*(v3 + 16))(v3, 0);
      v4 = v6[38];
      v6[38] = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__CMContinuityCaptureVideoDevice_postEvent_entity_data___block_invoke;
  v13[3] = &unk_278D5C1C0;
  objc_copyWeak(v17, &location);
  v14 = eventCopy;
  v15 = dataCopy;
  selfCopy = self;
  v17[1] = entity;
  v11 = dataCopy;
  v12 = eventCopy;
  dispatch_async(queue, v13);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __56__CMContinuityCaptureVideoDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained compositeDelegate];
    if (v4)
    {
      if ([*(a1 + 32) isEqualToString:?])
      {
        v5 = v3[44];
        if (!v5)
        {
          v6 = [MEMORY[0x277CBEB18] array];
          v7 = v3[44];
          v3[44] = v6;

          v5 = v3[44];
        }

        v8 = [*(a1 + 40) objectForKeyedSubscript:?];
        [v5 addObject:?];

        v9 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 48);
          v11 = [*(a1 + 40) objectForKeyedSubscript:?];
          v12 = [v3[44] count];
          *buf = 138543874;
          v49 = v10;
          v50 = 2112;
          v51 = v11;
          v52 = 2048;
          v53 = v12;
          _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Added request %@ to stillImageRequestsQueue. Current queue count: %lu", buf, 0x20u);
        }

        v13 = *(a1 + 40);
        v14 = *(a1 + 64);
        v15 = *(a1 + 32);
        v47.receiver = *(a1 + 48);
        v47.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v47, sel_postEvent_entity_data_, v15, v14, v13, v43.receiver, v43.super_class);
      }

      else if ([*(a1 + 32) isEqualToString:?])
      {
        v16 = v3[45];
        if (!v16)
        {
          v17 = [MEMORY[0x277CBEB18] array];
          v18 = v3[45];
          v3[45] = v17;

          v16 = v3[45];
        }

        v19 = [*(a1 + 40) objectForKeyedSubscript:?];
        [v16 addObject:?];

        v20 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 48);
          v22 = [*(a1 + 40) objectForKeyedSubscript:?];
          v23 = [v3[45] count];
          *buf = 138543874;
          v49 = v21;
          v50 = 2112;
          v51 = v22;
          v52 = 2048;
          v53 = v23;
          _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Added request %@ to reactionRequestsQueue. Current queue count: %lu", buf, 0x20u);
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 64);
        v26 = *(a1 + 32);
        v46.receiver = *(a1 + 48);
        v46.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v46, sel_postEvent_entity_data_, v26, v25, v24, v43.receiver, v43.super_class);
      }

      else if ([*(a1 + 32) isEqualToString:?])
      {
        [v3 scheduleSendingInvalidFramesAfterTimeout:?];
        v27 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v28 = [v27 activeSession];

        if (v28)
        {
          v29 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          v30 = [v29 activeSession];
          v31 = [*(a1 + 48) activeConfiguration];
          [v30 logPowerLoggingEvent:? configuration:?];
        }

        v32 = *(a1 + 40);
        v33 = *(a1 + 64);
        v34 = *(a1 + 32);
        v45.receiver = *(a1 + 48);
        v45.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v45, sel_postEvent_entity_data_, v34, v33, v32, v43.receiver, v43.super_class);
      }

      else if ([*(a1 + 32) isEqualToString:?])
      {
        [v3 scheduleSendingInvalidFramesAfterTimeout:?];
        v35 = *(a1 + 40);
        v36 = *(a1 + 64);
        v37 = *(a1 + 32);
        v44.receiver = *(a1 + 48);
        v44.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v44, sel_postEvent_entity_data_, v37, v36, v35);
        v38 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v39 = [v38 activeSession];

        if (v39)
        {
          v40 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          v41 = [v40 activeSession];
          v42 = [*(a1 + 48) activeConfiguration];
          [v41 logPowerLoggingEvent:? configuration:?];
        }
      }

      else
      {
        objc_msgSendSuper2(&v43, sel_postEvent_entity_data_, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48), CMContinuityCaptureVideoDevice);
      }
    }
  }
}

- (void)scheduleResumeUserNotification:(BOOL)notification
{
  if (notification)
  {
    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceModel = [transportDevice deviceModel];
    continuityCaptureNotificationCenter_isiPhone(deviceModel);

    v6 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v7 = MEMORY[0x277CCACA8];
    transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceIdentifier = [transportDevice2 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    v16 = [v7 stringWithFormat:@"CMContinuityCaptureResumeNotification", uUIDString];
    transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceModel2 = [transportDevice3 deviceModel];
    transportDevice4 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceIdentifier2 = [transportDevice4 deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v6 scheduleNotification:? data:?];
  }

  else
  {
    v15 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v15 unscheduleNotification:?];
  }
}

- (void)scheduleDeviceBusyNotification:(BOOL)notification
{
  if (notification)
  {
    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceModel = [transportDevice deviceModel];
    continuityCaptureNotificationCenter_isiPhone(deviceModel);

    v6 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceName = [transportDevice2 deviceName];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v7 = MEMORY[0x277CCACA8];
    transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceIdentifier = [transportDevice3 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    v19 = [v7 stringWithFormat:@"CMContinuityCaptureSessionBusyNotification", uUIDString];
    transportDevice4 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceModel2 = [transportDevice4 deviceModel];
    transportDevice5 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    deviceIdentifier2 = [transportDevice5 deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v6 scheduleNotification:? data:?];
  }

  else
  {
    v16 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v16 unscheduleNotification:?];
  }
}

- (void)startSendingInvalidFrames
{
  objc_initWeak(&location, self);
  if (!self->_blackFrameDispatchTimer)
  {
    queue = [(CMContinuityCaptureDeviceBase *)self queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    blackFrameDispatchTimer = self->_blackFrameDispatchTimer;
    self->_blackFrameDispatchTimer = v4;

    v6 = self->_blackFrameDispatchTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke;
    handler[3] = &unk_278D5C080;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(self->_blackFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(self->_blackFrameDispatchTimer);
    objc_destroyWeak(&v13);
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  maxFrameRate = [activeConfiguration maxFrameRate];

  if (maxFrameRate)
  {
    v11.receiver = self;
    v11.super_class = CMContinuityCaptureVideoDevice;
    [(CMContinuityCaptureDeviceBase *)&v11 startSendingInvalidFrames];
    v9 = self->_blackFrameDispatchTimer;
    activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    dispatch_source_set_timer(v9, 0, 1000 * (0xF4240 / [activeConfiguration2 maxFrameRate]), 0);
  }

  objc_destroyWeak(&location);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke(uint64_t a1)
{
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v2;
  *&sampleTimingArray.decodeTimeStamp.value = v2;
  *&sampleTimingArray.duration.value = v2;
  *&sampleTimingArray.duration.epoch = v2;
  sampleBufferOut = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[41] || (WeakRetained = [WeakRetained createBlackSampleBuffer], (v5[41] = WeakRetained) != 0))
    {
      if (CMContinityCaptureDebugLogEnabled(WeakRetained, v4))
      {
        v6 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_1((a1 + 32));
        }
      }

      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
      CMTimeMake(&sampleTimingArray.presentationTimeStamp, HostTimeInNanoSec, 1000000000);
      v8 = [v5 activeConfiguration];
      CMTimeMake(&v12, 1, [v8 maxFrameRate]);
      sampleTimingArray.duration = v12;

      v9 = CFGetAllocator(v5[41]);
      CMSampleBufferCreateCopyWithNewTiming(v9, v5[41], 1, &sampleTimingArray, &sampleBufferOut);
      if (sampleBufferOut)
      {
        v10 = v5[34];
        [v5 entity];
        [v10 dispatchFrame:? entity:? completion:?];
        CFRelease(sampleBufferOut);
        goto LABEL_13;
      }

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_2((a1 + 32));
      }
    }

    else
    {
      if (!CMContinityCaptureDebugLogEnabled(0, v4))
      {
        goto LABEL_13;
      }

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_3((a1 + 32));
      }
    }
  }

LABEL_13:
}

- (void)stopSendingInvalidFrames
{
  v4.receiver = self;
  v4.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v4 stopSendingInvalidFrames];
  blackFrameDispatchTimer = self->_blackFrameDispatchTimer;
  if (blackFrameDispatchTimer)
  {
    dispatch_source_set_timer(blackFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

- (void)restartSendingInvalidFramesIfApplicable
{
  blackFrameSampleBuffer = self->_blackFrameSampleBuffer;
  if (blackFrameSampleBuffer)
  {
    CFRelease(blackFrameSampleBuffer);
    self->_blackFrameSampleBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v4 restartSendingInvalidFramesIfApplicable];
}

- (void)stateMachineStartSendingBlurredFrames
{
  if (!self->_blurredFrameTimerActive)
  {
    objc_initWeak(&location, self);
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2080;
      v17 = "[CMContinuityCaptureVideoDevice stateMachineStartSendingBlurredFrames]";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
    }

    if (!self->_blurredFrameDispatchTimer)
    {
      queue = [(CMContinuityCaptureDeviceBase *)self queue];
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
      blurredFrameDispatchTimer = self->_blurredFrameDispatchTimer;
      self->_blurredFrameDispatchTimer = v5;

      v7 = self->_blurredFrameDispatchTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke;
      handler[3] = &unk_278D5C080;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v7, handler);
      dispatch_source_set_timer(self->_blurredFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume(self->_blurredFrameDispatchTimer);
      objc_destroyWeak(&v13);
    }

    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    maxFrameRate = [activeConfiguration maxFrameRate];

    if (maxFrameRate)
    {
      v10 = self->_blurredFrameDispatchTimer;
      activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      dispatch_source_set_timer(v10, 0, 1000 * (0xF4240 / [activeConfiguration2 maxFrameRate]), 0);
    }

    self->_blurredFrameTimerActive = 1;
    objc_destroyWeak(&location);
  }
}

void __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke(uint64_t a1)
{
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v2;
  *&sampleTimingArray.decodeTimeStamp.value = v2;
  *&sampleTimingArray.duration.value = v2;
  *&sampleTimingArray.duration.epoch = v2;
  sampleBufferOut = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[40] || (WeakRetained = [WeakRetained createBlurredSampleBuffer], (v5[40] = WeakRetained) != 0) || (WeakRetained = objc_msgSend(v5, "createBlackSampleBuffer"), (v5[40] = WeakRetained) != 0))
    {
      if (CMContinityCaptureDebugLogEnabled(WeakRetained, v4))
      {
        v6 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_1((a1 + 32));
        }
      }

      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
      CMTimeMake(&sampleTimingArray.presentationTimeStamp, HostTimeInNanoSec, 1000000000);
      v8 = [v5 activeConfiguration];
      CMTimeMake(&v12, 1, [v8 maxFrameRate]);
      sampleTimingArray.duration = v12;

      v9 = CFGetAllocator(v5[40]);
      CMSampleBufferCreateCopyWithNewTiming(v9, v5[40], 1, &sampleTimingArray, &sampleBufferOut);
      if (sampleBufferOut)
      {
        v10 = v5[34];
        [v5 entity];
        [v10 dispatchFrame:? entity:? completion:?];
        CFRelease(sampleBufferOut);
        goto LABEL_14;
      }

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_2((a1 + 32));
      }
    }

    else
    {
      if (!CMContinityCaptureDebugLogEnabled(0, v4))
      {
        goto LABEL_14;
      }

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_3((a1 + 32));
      }
    }
  }

LABEL_14:
}

- (void)stateMachineStopSendingBlurredFrames
{
  if (self->_blurredFrameTimerActive)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543618;
      selfCopy = self;
      v7 = 2080;
      v8 = "[CMContinuityCaptureVideoDevice stateMachineStopSendingBlurredFrames]";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
    }

    blurredFrameDispatchTimer = self->_blurredFrameDispatchTimer;
    if (blurredFrameDispatchTimer)
    {
      dispatch_source_set_timer(blurredFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }

    self->_blurredFrameTimerActive = 0;
  }
}

- (void)completeImageCaptureRequest:(id)request
{
  requestCopy = request;
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  if (compositeDelegate)
  {
    queue = [(CMContinuityCaptureDeviceBase *)self queue];
    dispatch_assert_queue_V2(queue);

    if (![(NSMutableArray *)self->_stillImageRequestsQueue count])
    {
      firstObject = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureVideoDevice completeImageCaptureRequest:];
      }

      goto LABEL_28;
    }

    firstObject = [(NSMutableArray *)self->_stillImageRequestsQueue firstObject];
    [(NSMutableArray *)self->_stillImageRequestsQueue removeObjectAtIndex:?];
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412802;
      *(&buf.value + 4) = self;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = requestCopy;
      HIWORD(buf.epoch) = 2112;
      v33 = firstObject;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ completeImageCaptureRequest with error %@. Removed %@ from queue", &buf, 0x20u);
    }

    if (requestCopy)
    {
      error = [firstObject error];

      if (!error)
      {
        [firstObject setError:?];
      }
    }

    completionHandler = [firstObject completionHandler];

    if (!completionHandler)
    {
LABEL_24:
      v26 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        completionHandler2 = [firstObject completionHandler];
        v28 = MEMORY[0x245D12020]();
        uniqueID = [firstObject uniqueID];
        error2 = [firstObject error];
        LODWORD(buf.value) = 138413314;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v28;
        HIWORD(buf.epoch) = 2048;
        v33 = uniqueID;
        v34 = 2048;
        v35 = completionHandler;
        v36 = 2112;
        v37 = error2;
        _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%@ Called %p for completed image capture request ID:%lld. sbuf:%p error:%@", &buf, 0x34u);
      }

      if (completionHandler)
      {
        CFRelease(completionHandler);
      }

LABEL_28:

      goto LABEL_29;
    }

    error3 = [firstObject error];
    if (error3)
    {

      completionHandler = 0;
LABEL_23:
      completionHandler3 = [firstObject completionHandler];
      error4 = [firstObject error];
      (completionHandler3)[2](completionHandler3, completionHandler, [error4 code]);

      goto LABEL_24;
    }

    completionHandler = [firstObject imageFileData];

    if (!completionHandler)
    {
      goto LABEL_23;
    }

    value = *MEMORY[0x277CC0898];
    v31 = *(MEMORY[0x277CC0898] + 8);
    epoch = *(MEMORY[0x277CC0898] + 16);
    client = [compositeDelegate client];
    timeSyncClock = [client timeSyncClock];
    if (timeSyncClock)
    {
      v16 = timeSyncClock;
      networkTimestamp = [firstObject networkTimestamp];

      if (networkTimestamp)
      {
        client2 = [compositeDelegate client];
        timeSyncClock2 = [client2 timeSyncClock];
        networkTimestamp2 = [firstObject networkTimestamp];
        [networkTimestamp2 unsignedLongLongValue];
        v21 = [timeSyncClock2 machAbsoluteTimeForDomainTime:?];

        v22 = v31;
        if (v21 != *MEMORY[0x277D714E8])
        {
          CMClockMakeHostTimeFromSystemUnits(&buf, v21);
          value = buf.value;
          epoch = buf.epoch;
          v22 = *&buf.timescale;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v22 = v31;
LABEL_20:
    if ((v22 & 0x100000000) == 0)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&buf, HostTimeClock);
      value = buf.value;
      epoch = buf.epoch;
      v22 = *&buf.timescale;
    }

    buf.value = value;
    *&buf.timescale = v22;
    buf.epoch = epoch;
    completionHandler = [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:"_createStillImageDataBufferFromRequest:timestamp:" timestamp:?];
    goto LABEL_23;
  }

LABEL_29:
}

- (opaqueCMSampleBuffer)_createStillImageDataBufferFromRequest:(id)request timestamp:(id *)timestamp
{
  requestCopy = request;
  formatDescriptionOut = 0;
  v17 = 0;
  dataPointerOut = 0xAAAAAAAAAAAAAAAALL;
  blockBufferOut = 0;
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v6;
  *&sampleTimingArray.decodeTimeStamp.value = v6;
  *&sampleTimingArray.duration.value = v6;
  *&sampleTimingArray.duration.epoch = v6;
  imageFileData = [requestCopy imageFileData];
  if ([imageFileData length])
  {
    v8 = *MEMORY[0x277CBECE8];
    if (CMBlockBufferCreateWithMemoryBlock(v8, 0, [imageFileData length], v8, 0, 0, objc_msgSend(imageFileData, "length"), 1u, &blockBufferOut))
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
      }
    }

    else if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
      }
    }

    else
    {
      memcpy(dataPointerOut, [imageFileData bytes], objc_msgSend(imageFileData, "length"));
      sampleTimingArray.presentationTimeStamp = *timestamp;
      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      sampleSizeArray = CMBlockBufferGetDataLength(blockBufferOut);
      if (CMVideoFormatDescriptionCreate(v8, [requestCopy imageCodecType], objc_msgSend(requestCopy, "imageWidth"), objc_msgSend(requestCopy, "imageHeight"), 0, &formatDescriptionOut))
      {
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
        }
      }

      else
      {
        if (!CMSampleBufferCreate(v8, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v17))
        {
          goto LABEL_6;
        }

        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
        }
      }
    }
  }

  else
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
    }
  }

LABEL_6:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v9 = v17;

  return v9;
}

- (void)stateMachineImageCapture
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_cold_1((a1 + 32));
    }

    v4 = WeakRetained[46];
    WeakRetained[46] = 0;

    [WeakRetained postActionOfType:? forEvent:? option:?];
  }
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_241(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    dispatch_block_cancel(*(a1 + 32));
    v3 = v5[46];
    v5[46] = 0;

    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (v4)
    {
      [v4 code];
    }

    [v5 postActionOfType:? forEvent:? option:?];
    WeakRetained = v5;
  }
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    dispatch_group_leave(v5[46]);
    WeakRetained = v5;
  }
}

- (void)stateMachineEnqueueReactionEffect
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __67__CMContinuityCaptureVideoDevice_stateMachineEnqueueReactionEffect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:? forEvent:? option:?];
}

- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  v9 = eventCopy;
  if (type > 5)
  {
    if (type > 7)
    {
      if (type != 9)
      {
        if (type == 8)
        {
          name = [eventCopy name];
          v23 = [name isEqualToString:?];

          if (v23)
          {
            [(CMContinuityCaptureVideoDevice *)self scheduleResumeUserNotification:?];
          }

          [(CMContinuityCaptureVideoDevice *)self stateMachineStartSendingBlurredFrames];
        }

        goto LABEL_50;
      }

      [(CMContinuityCaptureVideoDevice *)self scheduleResumeUserNotification:?];
    }

    else
    {
      if (type == 6)
      {
        data = [eventCopy data];
        if (data)
        {
          v27 = data;
          data2 = [v9 data];
          v29 = [data2 objectForKeyedSubscript:?];

          if (v29)
          {
            data3 = [v9 data];
            v31 = [data3 objectForKeyedSubscript:?];
            option |= [v31 integerValue];
          }
        }

        if ((option & 2) != 0)
        {
          [(CMContinuityCaptureDeviceBase *)self scheduleSendingInvalidFramesAfterTimeout:?];
          [(CMContinuityCaptureVideoDevice *)self stateMachineStartSendingBlurredFrames];
        }

        if ((option & 4) != 0)
        {
          data4 = [v9 data];
          if (data4 && (v33 = data4, [v9 data], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "objectForKeyedSubscript:"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v33, v35))
          {
            data5 = [v9 data];
            v37 = [data5 objectForKeyedSubscript:?];
            unsignedLongLongValue = [v37 unsignedLongLongValue];

            if (unsignedLongLongValue > [(CMContinuityCaptureDeviceBase *)self cameraCaptureStackStartTime]|| unsignedLongLongValue > [(CMContinuityCaptureDeviceBase *)self avCaptureStackStartTime])
            {
              [CMContinuityCaptureVideoDevice stopCaptureStack:"stopCaptureStack:completion:" completion:?];
            }
          }

          else
          {
            [(CMContinuityCaptureDeviceBase *)self cameraCaptureStackStartTime];
            [(CMContinuityCaptureDeviceBase *)self avCaptureStackStartTime];
          }
        }

        goto LABEL_50;
      }

      if ((option & 0x40) == 0)
      {
LABEL_50:
        v42.receiver = self;
        v42.super_class = CMContinuityCaptureVideoDevice;
        [(CMContinuityCaptureDeviceBase *)&v42 postActionOfType:type forEvent:v9 option:option];
        goto LABEL_51;
      }
    }

    [(CMContinuityCaptureVideoDevice *)self stateMachineStopSendingBlurredFrames];
    goto LABEL_50;
  }

  if (type > 3)
  {
    if (type == 4)
    {
      [(CMContinuityCaptureVideoDevice *)self stateMachineImageCapture];
    }

    else
    {
      [(CMContinuityCaptureVideoDevice *)self stateMachineEnqueueReactionEffect];
    }

    goto LABEL_50;
  }

  if (type != 1)
  {
    if (type == 2)
    {
      self->_numberOfFramesDispatched = 0;
      [(CMContinuityCaptureDeviceBase *)self scheduleSendingInvalidFramesAfterTimeout:?];
      if ([(CMContinuityCaptureDeviceBase *)self entity]== 1)
      {
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        forcefulCenterStageEnablementType = [activeConfiguration forcefulCenterStageEnablementType];

        if (forcefulCenterStageEnablementType == 1)
        {
          [(CMContinuityCaptureVideoDevice *)self restoreAffectedClientsCenterStageState];
        }
      }

      if (option != 1)
      {
        capabilities = [(CMContinuityCaptureDeviceBase *)self capabilities];
        controls = [capabilities controls];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v14 = controls;
        v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
        obj = v14;
        if (v15)
        {
          v16 = v15;
          optionCopy = option;
          v17 = *v44;
LABEL_11:
          v18 = 0;
          while (1)
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v43 + 1) + 8 * v18);
            name2 = [v19 name];
            v21 = [name2 isEqualToString:?];

            if (v21)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
              if (v16)
              {
                goto LABEL_11;
              }

              option = optionCopy;
              goto LABEL_48;
            }
          }

          v14 = v19;

          option = optionCopy;
          if (!v14)
          {
            goto LABEL_49;
          }

          activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [activeConfiguration2 setCenterStageRectOfInterest:?];

          [v14 setValue:?];
          [CMContinuityCaptureCMIOVideoDevice setValueForControl:"setValueForControl:completion:" completion:?];
        }

LABEL_48:

LABEL_49:
      }
    }

    goto LABEL_50;
  }

  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  if (compositeDelegate)
  {
    v25 = compositeDelegate;
    [(CMContinuityCaptureVideoDevice *)self stateMachineStopSendingBlurredFrames];
    self->_canIssueStateMismatchEvent = 1;

    goto LABEL_50;
  }

LABEL_51:
}

- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error
{
  nameCopy = name;
  dataCopy = data;
  errorCopy = error;
  if ([nameCopy isEqualToString:?])
  {
    [(CMContinuityCaptureVideoDevice *)self completeImageCaptureRequest:?];
  }

  else if ([nameCopy isEqualToString:?])
  {
    self->_canIssueStateMismatchEvent = 0;
    self->_failedBufferCountDueToMismatchState = 0;
    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [(CMContinuityCaptureDeviceBase *)self entity];
    [transportDevice stopStream:? option:? completion:?];
  }

  v12.receiver = self;
  v12.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v12 postActionCompletionForEventName:nameCopy eventData:dataCopy error:errorCopy];
}

- (void)didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CMContinuityCaptureVideoDevice_didCaptureStillImage_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = imageCopy;
  v11[1] = entity;
  v8 = imageCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureVideoDevice_didCaptureStillImage_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didCaptureStillImage:? entity:?];
    WeakRetained = v2;
  }
}

- (void)_didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy2 = self;
    v17 = 2112;
    v18 = imageCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got back still image %@", &v15, 0x16u);
  }

  firstObject = [(NSMutableArray *)self->_stillImageRequestsQueue firstObject];
  uniqueID = [firstObject uniqueID];
  if (uniqueID == [imageCopy uniqueID])
  {
    [imageCopy captureComplete];
    [firstObject setCaptureComplete:?];
    error = [imageCopy error];
    [firstObject setError:?];

    networkTimestamp = [imageCopy networkTimestamp];
    [firstObject setNetworkTimestamp:?];

    imageFileData = [imageCopy imageFileData];
    [firstObject setImageFileData:?];

    [imageCopy imageCodecType];
    [firstObject setImageCodecType:?];
    [imageCopy imageWidth];
    [firstObject setImageWidth:?];
    [imageCopy imageHeight];
    [firstObject setImageHeight:?];
    stillImageCaptureGroup = self->_stillImageCaptureGroup;
    if (stillImageCaptureGroup)
    {
      dispatch_group_leave(stillImageCaptureGroup);
    }
  }

  else
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      selfCopy2 = self;
      v17 = 2112;
      v18 = firstObject;
      v19 = 2112;
      v20 = imageCopy;
      _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Got back still image for an unknown request. inflight:%@ received:%@", &v15, 0x20u);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__CMContinuityCaptureVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:? ofObject:? change:? context:?];
    WeakRetained = v2;
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (CMContinityCaptureDebugLogEnabled(changeCopy, v12))
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138413058;
      selfCopy3 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureVideoDevice _observeValueForKeyPath:ofObject:change:context:]";
      v30 = 2112;
      v31 = pathCopy;
      v32 = 2112;
      v33 = objectCopy;
      _os_log_debug_impl(&dword_242545000, v13, OS_LOG_TYPE_DEBUG, "%@ %s forKeyPath: %@ ofObject: %@", &v26, 0x2Au);
    }
  }

  if ([pathCopy isEqualToString:?])
  {
    v14 = [changeCopy objectForKeyedSubscript:?];
    if ([v14 BOOLValue])
    {
    }

    else
    {
      v21 = [changeCopy objectForKeyedSubscript:?];
      bOOLValue = [v21 BOOLValue];

      if (bOOLValue)
      {
        v23 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ active 1 -> 0", &v26, 0xCu);
        }

        [CMContinuityCaptureVideoDevice stopCaptureStack:"stopCaptureStack:completion:" completion:?];
        goto LABEL_23;
      }
    }

    v15 = [changeCopy objectForKeyedSubscript:?];
    if (([v15 BOOLValue]& 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    v24 = [changeCopy objectForKeyedSubscript:?];
    bOOLValue2 = [v24 BOOLValue];

    if ((bOOLValue2 & 1) == 0)
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ active 0 -> 1", &v26, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else if ([pathCopy isEqualToString:?])
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = MEMORY[0x277CC1B90];
    stateMachineCurrentState = [(CMContinuityCaptureDeviceBase *)self stateMachineCurrentState];
    name = [stateMachineCurrentState name];
    readOnlyPropertyAttribute = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
    v20 = [v16 propertyStateWithValue:? attributes:?];

    if (v20)
    {
      [NSObject setObject:v15 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    }

    if ([v15 count])
    {
      [(CMIOExtensionDevice *)self->_cmioCaptureDevice notifyPropertiesChanged:?];
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6.receiver = self;
  v6.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v6 terminateComplete:&__block_literal_global_253];
  [(CMContinuityCaptureCMIOVideoDevice *)self->_cmioCaptureDevice terminateComplete:?];
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke;
  v10[3] = &unk_278D5C120;
  objc_copyWeak(&v13, &location);
  v11 = controlCopy;
  selfCopy = self;
  v9 = controlCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  v3 = a1 + 4;
  if ([a1[4] entity] == 4)
  {
    goto LABEL_3;
  }

  v4 = [*v3 name];
  v5 = [v4 isEqualToString:?];

  if (v5)
  {
    v6 = a1[5];
    v7 = [a1[4] value];
    [v7 BOOLValue];
    [v6 updateForcefulCenterStageEnablementStateIfNeededWithCenterStageEnabled:?];

    v8 = [WeakRetained activeConfiguration];
    LODWORD(v7) = [v8 centerStageEnabled];
    v9 = [a1[4] value];
    v10 = [v9 BOOLValue];

    if (v7 != v10)
    {
      v11 = [*v3 value];
      [v11 BOOLValue];
      v12 = [WeakRetained activeConfiguration];
      [v12 setCenterStageEnabled:?];

      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained activeConfiguration];
        v15 = [v14 centerStageEnabled];
        v16 = "Off";
        if (v15)
        {
          v16 = "On";
        }

        *v288 = 138543618;
        *&v288[4] = WeakRetained;
        *&v288[12] = 2080;
        *&v288[14] = v16;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageEnabled %s", v288, 0x16u);
      }

      v17 = [WeakRetained transportDevice];
      [v17 setValueForControl:? completion:?];

      v18 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v19 = [v18 activeSession];

      if (v19)
      {
        v20 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v21 = [v20 activeSession];
        [a1[5] streaming];
        v22 = [a1[5] activeConfiguration];
        [v21 logPowerLoggingEvent:? configuration:?];
      }
    }

    goto LABEL_3;
  }

  v23 = [*v3 name];
  v24 = [v23 isEqualToString:?];

  if (v24)
  {
    goto LABEL_3;
  }

  v25 = [*v3 name];
  if ([v25 isEqualToString:?] && (objc_msgSend(*v3, "value"), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v26;
    v28 = [*v3 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v30 = [*v3 value];
      v31 = [WeakRetained activeConfiguration];
      [v31 setCenterStageRectOfInterest:?];

      v32 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [WeakRetained activeConfiguration];
        v34 = [v33 centerStageRectOfInterest];
        *v288 = 138543618;
        *&v288[4] = WeakRetained;
        *&v288[12] = 2112;
        *&v288[14] = v34;
        _os_log_impl(&dword_242545000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageRectOfInterest %@", v288, 0x16u);

LABEL_25:
      }

LABEL_26:

      [WeakRetained[34] setValueForControl:? completion:?];
LABEL_27:
      v43 = [WeakRetained transportDevice];
      [NSObject setValueForControl:v43 completion:"setValueForControl:completion:"];
LABEL_28:

      goto LABEL_4;
    }
  }

  else
  {
  }

  v35 = [*v3 name];
  v36 = [v35 isEqualToString:?];

  v37 = *v3;
  if (v36)
  {
    v38 = [v37 value];
    [v38 intValue];
    v39 = [WeakRetained activeConfiguration];
    [v39 setCenterStageFramingMode:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2048;
    *&v288[14] = [v33 centerStageFramingMode];
    v40 = "%{public}@ CenterStageControlMode %ld";
    goto LABEL_23;
  }

  v44 = [v37 name];
  v45 = [v44 isEqualToString:?];

  if (v45)
  {
    v46 = [WeakRetained activeConfiguration];
    v47 = [v46 faceDetectionEnabled];
    v48 = [*v3 value];
    v49 = [v48 BOOLValue];

    if (v47 == v49)
    {
      goto LABEL_4;
    }

    v50 = [*v3 value];
    [v50 BOOLValue];
    v51 = [WeakRetained activeConfiguration];
    [v51 setFaceDetectionEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v52 = [v33 faceDetectionEnabled];
    v53 = "Off";
    if (v52)
    {
      v53 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v53;
    v40 = "%{public}@ FaceDetectionEnabled %s";
    goto LABEL_23;
  }

  v54 = [*v3 name];
  v55 = [v54 isEqualToString:?];

  if (v55)
  {
    v56 = [WeakRetained activeConfiguration];
    v57 = [v56 humanBodyDetectionEnabled];
    v58 = [*v3 value];
    v59 = [v58 BOOLValue];

    if (v57 == v59)
    {
      goto LABEL_4;
    }

    v60 = [*v3 value];
    [v60 BOOLValue];
    v61 = [WeakRetained activeConfiguration];
    [v61 setHumanBodyDetectionEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v62 = [v33 humanBodyDetectionEnabled];
    v63 = "Off";
    if (v62)
    {
      v63 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v63;
    v40 = "%{public}@ HumanBodyDetectionEnabled %s";
    goto LABEL_23;
  }

  v64 = [*v3 name];
  v65 = [v64 isEqualToString:?];

  if (v65)
  {
    v66 = [WeakRetained activeConfiguration];
    v67 = [v66 humanFullBodyDetectionEnabled];
    v68 = [*v3 value];
    v69 = [v68 BOOLValue];

    if (v67 == v69)
    {
      goto LABEL_4;
    }

    v70 = [*v3 value];
    [v70 BOOLValue];
    v71 = [WeakRetained activeConfiguration];
    [v71 setHumanFullBodyDetectionEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v72 = [v33 humanFullBodyDetectionEnabled];
    v73 = "Off";
    if (v72)
    {
      v73 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v73;
    v40 = "%{public}@ HumanFullBodyDetectionEnabled %s";
    goto LABEL_23;
  }

  v74 = [*v3 name];
  v75 = [v74 isEqualToString:?];

  if (v75)
  {
    v76 = [WeakRetained activeConfiguration];
    v77 = [v76 asyncStillCaptureEnabled];
    v78 = [*v3 value];
    v79 = [v78 BOOLValue];

    if (v77 == v79)
    {
      goto LABEL_4;
    }

    v80 = [*v3 value];
    [v80 BOOLValue];
    v81 = [WeakRetained activeConfiguration];
    [v81 setAsyncStillCaptureEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v82 = [v33 asyncStillCaptureEnabled];
    v83 = "Off";
    if (v82)
    {
      v83 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v83;
    v40 = "%{public}@ AsyncStillCaptureEnabled %s";
    goto LABEL_23;
  }

  v84 = [*v3 name];
  v85 = [v84 isEqualToString:?];

  if (v85)
  {
    v86 = [WeakRetained activeConfiguration];
    v87 = [v86 suppressVideoEffects];
    v88 = [*v3 value];
    v89 = [v88 BOOLValue];

    if (v87 == v89)
    {
      goto LABEL_4;
    }

    v90 = [*v3 value];
    [v90 BOOLValue];
    v91 = [WeakRetained activeConfiguration];
    [v91 setSuppressVideoEffects:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v92 = [v33 suppressVideoEffects];
    v93 = "Off";
    if (v92)
    {
      v93 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v93;
    v40 = "%{public}@ SuppressVideoEffects %s";
    goto LABEL_23;
  }

  v94 = [*v3 name];
  v95 = [v94 isEqualToString:?];

  if (v95)
  {
    v96 = [WeakRetained activeConfiguration];
    v97 = [v96 portraitEffectEnabled];
    v98 = [*v3 value];
    v99 = [v98 BOOLValue];

    if (v97 == v99)
    {
      goto LABEL_4;
    }

    v100 = [*v3 value];
    [v100 BOOLValue];
    v101 = [WeakRetained activeConfiguration];
    [v101 setPortraitEffectEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v102 = [v33 portraitEffectEnabled];
    v103 = "Off";
    if (v102)
    {
      v103 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v103;
    v40 = "%{public}@ PortraitEffectEnabled %s";
    goto LABEL_23;
  }

  v104 = [*v3 name];
  v105 = [v104 isEqualToString:?];

  v106 = *v3;
  if (v105)
  {
    v107 = [v106 value];
    [v107 doubleValue];
    v109 = v108;

    v110 = [WeakRetained activeConfiguration];
    [v110 videoZoomFactor];
    v112 = v111;

    if (v112 == v109)
    {
      goto LABEL_4;
    }

    v113 = [WeakRetained activeConfiguration];
    [v113 setVideoZoomFactor:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    [v33 videoZoomFactor];
    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2048;
    *&v288[14] = v114;
    v40 = "%{public}@ VideoZoomFactor %.2f";
    goto LABEL_23;
  }

  v115 = [v106 name];
  v116 = [v115 isEqualToString:?];

  if (v116)
  {
    v117 = [WeakRetained activeConfiguration];
    v118 = [v117 studioLightingEnabled];
    v119 = [*v3 value];
    v120 = [v119 BOOLValue];

    if (v118 == v120)
    {
      goto LABEL_4;
    }

    v121 = [*v3 value];
    [v121 BOOLValue];
    v122 = [WeakRetained activeConfiguration];
    [v122 setStudioLightingEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v123 = [v33 studioLightingEnabled];
    v124 = "Off";
    if (v123)
    {
      v124 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v124;
    v40 = "%{public}@ StudioLightingEnabled %s";
    goto LABEL_23;
  }

  v125 = [*v3 name];
  v126 = [v125 isEqualToString:?];

  if (v126)
  {
    v127 = [WeakRetained activeConfiguration];
    v128 = [v127 reactionEffectsEnabled];
    v129 = [*v3 value];
    v130 = [v129 BOOLValue];

    if (v128 == v130)
    {
      goto LABEL_4;
    }

    v131 = [*v3 value];
    [v131 BOOLValue];
    v132 = [WeakRetained activeConfiguration];
    [v132 setReactionEffectsEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v133 = [v33 reactionEffectsEnabled];
    v134 = "Off";
    if (v133)
    {
      v134 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v134;
    v40 = "%{public}@ ReactionEffectsEnabled %s";
    goto LABEL_23;
  }

  v135 = [*v3 name];
  v136 = [v135 isEqualToString:?];

  if (v136)
  {
    v137 = [WeakRetained activeConfiguration];
    v138 = [v137 backgroundReplacementEnabled];
    v139 = [*v3 value];
    v140 = [v139 BOOLValue];

    if (v138 == v140)
    {
      goto LABEL_4;
    }

    v141 = [*v3 value];
    [v141 BOOLValue];
    v142 = [WeakRetained activeConfiguration];
    [v142 setBackgroundReplacementEnabled:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    v143 = [v33 backgroundReplacementEnabled];
    v144 = "Off";
    if (v143)
    {
      v144 = "On";
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = v144;
    v40 = "%{public}@ BackgroundReplacementEnabled %s";
    goto LABEL_23;
  }

  v145 = [*v3 name];
  v146 = [v145 isEqualToString:?];

  v147 = *v3;
  if (v146)
  {
    v148 = [v147 value];
    v149 = [WeakRetained activeConfiguration];
    [v149 setAsyncStillCaptureConfigs:?];

    v150 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      v151 = [WeakRetained activeConfiguration];
      v152 = [v151 asyncStillCaptureConfigs];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2112;
      *&v288[14] = v152;
      _os_log_impl(&dword_242545000, v150, OS_LOG_TYPE_DEFAULT, "%{public}@ AsyncStillCaptureConfigs %@", v288, 0x16u);
    }

    goto LABEL_103;
  }

  v153 = [v147 name];
  v154 = [v153 isEqualToString:?];

  if (v154)
  {
    v155 = [WeakRetained activeConfiguration];
    v156 = [v155 deskViewCameraMode];
    v157 = [*v3 value];
    v158 = [v157 unsignedIntValue];

    if (v156 == v158)
    {
      goto LABEL_4;
    }

    v159 = [*v3 value];
    [v159 unsignedIntValue];
    v160 = [WeakRetained activeConfiguration];
    [v160 setDeskViewCameraMode:?];

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [WeakRetained activeConfiguration];
    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 1024;
    *&v288[14] = [v33 deskViewCameraMode];
    v40 = "%{public}@ DeskViewCameraMode %u";
LABEL_94:
    v41 = v32;
    v42 = 18;
    goto LABEL_24;
  }

  v161 = [*v3 name];
  v162 = [v161 isEqualToString:?];

  if (v162)
  {
    point.x = NAN;
    point.y = NAN;
    v163 = [*v3 value];
    CGPointMakeWithDictionaryRepresentation(v163, &point);

    v150 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      *v288 = 138544130;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2080;
      *&v288[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
      *&v288[22] = 2048;
      x = point.x;
      LOWORD(v290) = 2048;
      *(&v290 + 2) = point.y;
      v164 = "%{public}@ (%s) StartPanningAtPoint {%.3f, %.3f}";
LABEL_101:
      v168 = v150;
      v169 = 42;
LABEL_102:
      _os_log_impl(&dword_242545000, v168, OS_LOG_TYPE_DEFAULT, v164, v288, v169);
      goto LABEL_103;
    }

    goto LABEL_103;
  }

  v165 = [*v3 name];
  v166 = [v165 isEqualToString:?];

  if (v166)
  {
    point.x = NAN;
    point.y = NAN;
    v167 = [*v3 value];
    CGPointMakeWithDictionaryRepresentation(v167, &point);

    v150 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      *v288 = 138544130;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2080;
      *&v288[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
      *&v288[22] = 2048;
      x = point.x;
      LOWORD(v290) = 2048;
      *(&v290 + 2) = point.y;
      v164 = "%{public}@ (%s) PanWithTransaltion {%.3f, %.3f}";
      goto LABEL_101;
    }

LABEL_103:

    goto LABEL_27;
  }

  v170 = [*v3 name];
  v171 = [v170 isEqualToString:?];

  if (v171)
  {
    v150 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
    v164 = "%{public}@ (%s) PerformOneShotFraming";
    goto LABEL_110;
  }

  v172 = [*v3 name];
  v173 = [v172 isEqualToString:?];

  if (v173)
  {
    v150 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    *v288 = 138543618;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
    v164 = "%{public}@ (%s) ResetFraming";
LABEL_110:
    v168 = v150;
    v169 = 22;
    goto LABEL_102;
  }

  v174 = [*v3 name];
  v175 = [v174 isEqualToString:?];

  v176 = *v3;
  if (v175)
  {
    v177 = [v176 value];
    v178 = [v177 BOOLValue];

    v179 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      *v288 = 138543874;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2080;
      *&v288[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
      *&v288[22] = 1024;
      LODWORD(x) = v178;
      _os_log_impl(&dword_242545000, v179, OS_LOG_TYPE_DEFAULT, "%{public}@ (%s) CenterStageFieldOfViewRestrictedToWide %d", v288, 0x1Cu);
    }

    v180 = [WeakRetained transportDevice];
    [v180 setValueForControl:? completion:?];

    v181 = [WeakRetained activeConfiguration];
    [v181 setCenterStageFieldOfViewRestrictedToWide:?];

    [WeakRetained updateForcefulCenterStageEnablementStateIfNeededWithCenterStageRestrictedToWide:?];
    goto LABEL_4;
  }

  v182 = [v176 name];
  v183 = [v182 isEqualToString:?];

  v184 = *v3;
  if (v183)
  {
    v185 = [v184 value];
    v186 = [v185 integerValue];

    v187 = [WeakRetained activeConfiguration];
    v188 = [v187 manualFramingDeviceType];

    if (v188 == v186)
    {
      goto LABEL_4;
    }

    v32 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v33 = [CMContinuityCaptureConfiguration stringForManualFramingDeviceType:?];
    *v288 = 138543874;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2080;
    *&v288[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
    *&v288[22] = 2112;
    x = *&v33;
    v40 = "%{public}@ (%s) ManualFramingDeviceType %@";
    v41 = v32;
    v42 = 32;
    goto LABEL_24;
  }

  v189 = [v184 name];
  v190 = [v189 isEqualToString:?];

  if (v190)
  {
    v191 = [WeakRetained activeConfiguration];
    v192 = [v191 maxFrameRate];
    v193 = [*v3 value];
    v194 = [v193 unsignedIntValue];

    if (v192 != v194)
    {
      v195 = [*v3 value];
      [v195 unsignedIntValue];
      v196 = [WeakRetained activeConfiguration];
      [v196 setMaxFrameRate:?];

      v197 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        v198 = [WeakRetained activeConfiguration];
        *v288 = 138543618;
        *&v288[4] = WeakRetained;
        *&v288[12] = 1024;
        *&v288[14] = [v198 maxFrameRate];
        _os_log_impl(&dword_242545000, v197, OS_LOG_TYPE_DEFAULT, "%{public}@ MaxFrameRate %u", v288, 0x12u);
      }

      [WeakRetained[34] setValueForControl:? completion:?];
      v199 = [WeakRetained transportDevice];
      [v199 setValueForControl:? completion:?];

LABEL_124:
      [WeakRetained restartSendingInvalidFramesIfApplicable];
      goto LABEL_4;
    }

LABEL_3:
    [WeakRetained[34] setValueForControl:*v288 completion:*&v288[8]];
    goto LABEL_4;
  }

  v200 = [*v3 name];
  v201 = [v200 isEqualToString:?];

  if (v201)
  {
    v202 = [WeakRetained activeConfiguration];
    v203 = [v202 minFrameRate];
    v204 = [*v3 value];
    v205 = [v204 unsignedIntValue];

    if (v203 != v205)
    {
      v206 = [*v3 value];
      [v206 unsignedIntValue];
      v207 = [WeakRetained activeConfiguration];
      [v207 setMinFrameRate:?];

      v32 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = [WeakRetained activeConfiguration];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 1024;
      *&v288[14] = [v33 minFrameRate];
      v40 = "%{public}@ MinFrameRate %u";
      goto LABEL_94;
    }

    goto LABEL_3;
  }

  v208 = [*v3 name];
  v209 = [v208 isEqualToString:?];

  if (!v209)
  {
    v220 = [*v3 name];
    v221 = [v220 isEqualToString:?];

    if (v221)
    {
      v222 = [WeakRetained activeConfiguration];
      [v222 portraitEffectAperture];
      v224 = v223;
      v225 = [*v3 value];
      [v225 floatValue];
      v227 = v226;

      if (v224 == v227)
      {
        goto LABEL_4;
      }

      v228 = [*v3 value];
      [v228 floatValue];
      v229 = [WeakRetained activeConfiguration];
      [v229 setPortraitEffectAperture:?];

      v32 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = [WeakRetained activeConfiguration];
      [v33 portraitEffectAperture];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2048;
      *&v288[14] = v230;
      v40 = "%{public}@ PortraitEffectAperture %f";
      goto LABEL_23;
    }

    v231 = [*v3 name];
    v232 = [v231 isEqualToString:?];

    if (v232)
    {
      v233 = [WeakRetained activeConfiguration];
      [v233 studioLightingIntensity];
      v235 = v234;
      v236 = [*v3 value];
      [v236 floatValue];
      v238 = v237;

      if (v235 == v238)
      {
        goto LABEL_4;
      }

      v239 = [*v3 value];
      [v239 floatValue];
      v240 = [WeakRetained activeConfiguration];
      [v240 setStudioLightingIntensity:?];

      v32 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = [WeakRetained activeConfiguration];
      [v33 studioLightingIntensity];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2048;
      *&v288[14] = v241;
      v40 = "%{public}@ StudioLightingIntensity %f";
      goto LABEL_23;
    }

    v258 = [*v3 name];
    v259 = [v258 isEqualToString:?];

    if (v259)
    {
      v260 = [WeakRetained activeConfiguration];
      v261 = [v260 reactionEffectGesturesEnabled];
      v262 = [*v3 value];
      v263 = [v262 BOOLValue];

      if (v261 == v263)
      {
        goto LABEL_4;
      }

      v264 = [*v3 value];
      [v264 BOOLValue];
      v265 = [WeakRetained activeConfiguration];
      [v265 setReactionEffectGesturesEnabled:?];

      v32 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = [WeakRetained activeConfiguration];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 1024;
      *&v288[14] = [v33 reactionEffectGesturesEnabled];
      v40 = "%{public}@ ReactionEffectGesturesEnabled %d";
      goto LABEL_94;
    }

    v266 = [*v3 name];
    v267 = [v266 isEqualToString:?];

    if (v267)
    {
      v268 = [WeakRetained activeConfiguration];
      v269 = [v268 reactionEffectSuppressedGesturesEnabled];
      v270 = [*v3 value];
      v271 = [v270 BOOLValue];

      if (v269 == v271)
      {
        goto LABEL_4;
      }

      v272 = [*v3 value];
      [v272 BOOLValue];
      v273 = [WeakRetained activeConfiguration];
      [v273 setReactionEffectSuppressedGesturesEnabled:?];

      v32 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = [WeakRetained activeConfiguration];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 1024;
      *&v288[14] = [v33 reactionEffectSuppressedGesturesEnabled];
      v40 = "%{public}@ ReactionEffectSuppressedGesturesEnabled %d";
      goto LABEL_94;
    }

    v274 = [*v3 name];
    v275 = [v274 isEqualToString:?];

    if (v275)
    {
      v276 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
      {
LABEL_166:

        goto LABEL_3;
      }

      v277 = [*v3 value];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2112;
      *&v288[14] = v277;
      v278 = "%{public}@ ReactionsInProgress %@";
    }

    else
    {
      v279 = [*v3 name];
      v280 = [v279 isEqualToString:?];

      if (!v280)
      {
        v281 = [*v3 name];
        v282 = [v281 isEqualToString:?];

        if (!v282)
        {
          v43 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke_cold_1();
          }

          goto LABEL_28;
        }

        v283 = [WeakRetained activeConfiguration];
        v284 = [v283 backgroundReplacementPixelBuffer];
        v285 = [*v3 value];

        if (v284 == v285)
        {
          goto LABEL_4;
        }

        v286 = [*v3 value];
        v287 = [WeakRetained activeConfiguration];
        [v287 setBackgroundReplacementPixelBuffer:?];

        v32 = CMContinuityCaptureLog(2);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v33 = [WeakRetained activeConfiguration];
        *v288 = 138543618;
        *&v288[4] = WeakRetained;
        *&v288[12] = 2112;
        *&v288[14] = [v33 backgroundReplacementPixelBuffer];
        v40 = "%{public}@ BackgroundReplacementPixelBuffer %@";
LABEL_23:
        v41 = v32;
        v42 = 22;
LABEL_24:
        _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, v40, v288, v42);
        goto LABEL_25;
      }

      v276 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_166;
      }

      v277 = [*v3 value];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2112;
      *&v288[14] = v277;
      v278 = "%{public}@ SuppressedGesture %@";
    }

    _os_log_impl(&dword_242545000, v276, OS_LOG_TYPE_DEFAULT, v278, v288, 0x16u);

    goto LABEL_166;
  }

  v210 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
  {
    v211 = [WeakRetained activeConfiguration];
    v212 = [v211 format];
    v213 = [*v3 value];
    *v288 = 138543874;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2114;
    *&v288[14] = v212;
    *&v288[22] = 2114;
    x = *&v213;
    _os_log_impl(&dword_242545000, v210, OS_LOG_TYPE_DEFAULT, "%{public}@ format change %{public}@ to %{public}@", v288, 0x20u);
  }

  v214 = [WeakRetained activeConfiguration];
  v215 = [v214 format];
  if (v215)
  {
    v216 = [WeakRetained activeConfiguration];
    v217 = [v216 format];
    v218 = [*v3 value];
    v219 = [v217 isEqual:?] ^ 1;
  }

  else
  {
    v219 = 0;
  }

  v242 = [*v3 value];
  v243 = [WeakRetained activeConfiguration];
  [v243 setFormat:?];

  v244 = [WeakRetained activeConfiguration];
  v245 = [v244 format];
  [v245 maxFrameRate];
  v246 = [WeakRetained activeConfiguration];
  [v246 setMaxFrameRate:?];

  v247 = [WeakRetained activeConfiguration];
  v248 = [v247 format];
  [v248 maxFrameRate];
  v249 = [WeakRetained activeConfiguration];
  [v249 setMinFrameRate:?];

  if (v219 && [WeakRetained streaming])
  {
    v250 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
    {
      v251 = [WeakRetained activeConfiguration];
      v252 = [v251 format];
      *v288 = 138543618;
      *&v288[4] = WeakRetained;
      *&v288[12] = 2114;
      *&v288[14] = v252;
      _os_log_impl(&dword_242545000, v250, OS_LOG_TYPE_DEFAULT, "%{public}@ format changed to %{public}@", v288, 0x16u);
    }

    v253 = [WeakRetained compositeDelegate];
    [WeakRetained entity];
    [v253 postEvent:? entity:? data:?];

    goto LABEL_124;
  }

  v254 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
  {
    v255 = [WeakRetained activeConfiguration];
    v256 = [v255 format];
    v257 = [WeakRetained streaming];
    *v288 = 138543874;
    *&v288[4] = WeakRetained;
    *&v288[12] = 2114;
    *&v288[14] = v256;
    *&v288[22] = 1024;
    LODWORD(x) = v257;
    _os_log_impl(&dword_242545000, v254, OS_LOG_TYPE_DEFAULT, "%{public}@ format unchanged %{public}@ or invalid stream state %d", v288, 0x1Cu);
  }

LABEL_4:
}

- (CMContinuityCaptureVideoDevice)companionDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_companionDevice);

  return WeakRetained;
}

- (CMContinuityCaptureVideoDevice)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate
{
  delegateCopy = delegate;
  capabilitiesCopy = capabilities;
  client = [delegateCopy client];
  device = [client device];
  v24.receiver = self;
  v24.super_class = CMContinuityCaptureVideoDevice;
  v10 = [(CMContinuityCaptureDeviceBase *)&v24 initWithCapabilities:capabilitiesCopy compositeDelegate:delegateCopy transportDevice:device queue:0];

  if (!v10)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_4;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  centerStageStateRestorationDataArray = v10->_centerStageStateRestorationDataArray;
  v10->_centerStageStateRestorationDataArray = v11;

  v13 = [[CMContinuityCaptureCMIOVideoDevice alloc] initWithCaptureDevice:?];
  cmioCaptureDevice = v10->_cmioCaptureDevice;
  v10->_cmioCaptureDevice = v13;

  if (!v10->_cmioCaptureDevice)
  {
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_1();
      _os_log_error_impl(v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_8;
  }

  v10->_manualFramingEnabled = _os_feature_enabled_impl();
  v15 = v10;
LABEL_4:

  return v15;
}

- (opaqueCMSampleBuffer)createBlackSampleBuffer
{
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  *&sampleTiming.duration.value = *MEMORY[0x277CC0898];
  sampleTiming.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  sampleTiming.presentationTimeStamp = **&MEMORY[0x277CC08F0];
  sampleTiming.decodeTimeStamp = sampleTiming.duration;
  formatDescriptionOut = 0;
  v3 = *MEMORY[0x277CC4DE8];
  v23 = *MEMORY[0x277CC4C40];
  v24 = v3;
  v25 = &unk_2854EC800;
  v26 = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v5 = *MEMORY[0x277CBECE8];
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  format = [activeConfiguration format];
  width = [format width];
  activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  format2 = [activeConfiguration2 format];
  LODWORD(width) = CVPixelBufferCreate(v5, width, [format2 height], 0x42475241u, v4, &pixelBufferOut);

  if (!width)
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    if (Height * Width)
    {
      memset_pattern16(BaseAddress, &unk_2425D80C0, 4 * Height * Width);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    CMVideoFormatDescriptionCreateForImageBuffer(v5, pixelBufferOut, &formatDescriptionOut);
    CMSampleBufferCreateReadyWithImageBuffer(v5, pixelBufferOut, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
    if (sampleBufferOut)
    {
      CMSetAttachment(sampleBufferOut, @"kCMContinuityCaptureAttachmentFrameType", &unk_2854EC818, 1u);
    }
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v14 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543874;
    selfCopy = self;
    v19 = 2080;
    v20 = "[CMContinuityCaptureVideoDevice createBlackSampleBuffer]";
    v21 = 2048;
    v22 = sampleBufferOut;
    _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %p", &v17, 0x20u);
  }

  v15 = sampleBufferOut;
  return v15;
}

- (opaqueCMSampleBuffer)createBlurredSampleBuffer
{
  formatDescriptionOut = 0;
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  lastDispatchedSampleBuffer = self->_lastDispatchedSampleBuffer;
  if (!lastDispatchedSampleBuffer)
  {
    lastDispatchedSampleBuffer = [(CMContinuityCaptureVideoDevice *)self createBlackSampleBuffer];
    self->_lastDispatchedSampleBuffer = lastDispatchedSampleBuffer;
  }

  sampleTiming.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTiming.presentationTimeStamp.timescale = v4;
  *&sampleTiming.decodeTimeStamp.value = v4;
  *&sampleTiming.duration.value = v4;
  *&sampleTiming.duration.epoch = v4;
  ImageBuffer = CMSampleBufferGetImageBuffer(lastDispatchedSampleBuffer);
  if (!ImageBuffer)
  {
    goto LABEL_25;
  }

  context = ImageBuffer;
  v7 = CVPixelBufferCopyCreationAttributes(ImageBuffer);
  if (!v7)
  {
    v22 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_1_1(&dword_242545000, v35, v36, "%@ invalid pixelBuffer attributes", v37, v38, v39, v40);
    }

LABEL_25:
    v9 = 0;
    v8 = 0;
LABEL_29:
    v15 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:?];
  v10 = *MEMORY[0x277CC4C40];
  [v9 setObject:? forKeyedSubscript:?];

  v11 = *MEMORY[0x277CC4DE8];
  [v9 setObject:? forKeyedSubscript:?];

  v12 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:?];
  if (!v12)
  {
    v23 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_3_1();
      _os_log_error_impl(v41, v42, v43, v44, v45, v46);
    }

    goto LABEL_29;
  }

  v13 = v12;
  v14 = [v12 imageByApplyingGaussianBlurWithSigma:?];
  if (v14)
  {
    v15 = v14;
    Width = CVPixelBufferGetWidth(context);
    Height = CVPixelBufferGetHeight(context);
    PixelFormatType = CVPixelBufferGetPixelFormatType(context);
    if (CVPixelBufferCreate(0, Width, Height, PixelFormatType, v9, &pixelBufferOut) || !pixelBufferOut)
    {
      v25 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_14(v25))
      {
        OUTLINED_FUNCTION_2_1();
        v26 = &dword_242545000;
        v27 = "%@ pixelBuffer create error %u";
LABEL_41:
        v31 = &v53;
        v29 = context;
        v30 = OS_LOG_TYPE_ERROR;
        v32 = 18;
        goto LABEL_42;
      }
    }

    else
    {
      CVBufferPropagateAttachments(context, pixelBufferOut);
      context = [MEMORY[0x277CBF740] context];
      [__CVBuffer render:context toCVPixelBuffer:"render:toCVPixelBuffer:"];

      if (pixelBufferOut)
      {
        if (!CMVideoFormatDescriptionCreateForImageBuffer(0, pixelBufferOut, &formatDescriptionOut) && formatDescriptionOut)
        {
          sampleTiming.decodeTimeStamp = **&MEMORY[0x277CC0898];
          HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
          CMTimeMake(&sampleTiming.presentationTimeStamp, HostTimeInNanoSec, 1000000000);
          context = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          CMTimeMake(&v53, 1, [(__CVBuffer *)context maxFrameRate]);
          sampleTiming.duration = v53;

          if (!CMSampleBufferCreateReadyWithImageBuffer(0, pixelBufferOut, formatDescriptionOut, &sampleTiming, &sampleBufferOut) && sampleBufferOut)
          {
            CMSetAttachment(sampleBufferOut, @"kCMContinuityCaptureAttachmentFrameType", &unk_2854EC830, 1u);
            goto LABEL_15;
          }

          v34 = CMContinuityCaptureLog(2);
          if (!OUTLINED_FUNCTION_14(v34))
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_2_1();
          v26 = &dword_242545000;
          v27 = "%@ Failed to create sample buffer %u";
          goto LABEL_41;
        }

        v33 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_14(v33))
        {
          OUTLINED_FUNCTION_2_1();
          v26 = &dword_242545000;
          v27 = "%@ Error CMVideoFormatDescriptionCreateForImageBuffer %u";
          goto LABEL_41;
        }
      }

      else
      {
        v28 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_14(v28))
        {
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_3_1();
LABEL_42:
          _os_log_error_impl(v26, v29, v30, v27, v31, v32);
        }
      }
    }

LABEL_43:

    goto LABEL_15;
  }

  v24 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_3_1();
    _os_log_error_impl(v47, v48, v49, v50, v51, v52);
  }

  v15 = 0;
LABEL_15:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v20 = sampleBufferOut;

  return v20;
}

- (id)createAVCVideoStream
{
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  transportStream = [(CMContinuityCaptureDeviceBase *)self transportStream];
  v5 = transportStream;
  if (!transportStream)
  {
    v18 = 0;
    avcStreamNegotiator = 0;
    streamUUID = 0;
LABEL_21:
    v29 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  streamUUID = [transportStream streamUUID];
  if (!streamUUID)
  {
    v18 = 0;
    avcStreamNegotiator = 0;
    goto LABEL_21;
  }

  v7 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_16(v7))
  {
    [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    OUTLINED_FUNCTION_12();
    v39 = 2112;
    v40 = streamUUID;
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
  }

  [streamUUID getUUIDBytes:?];
  avcStreamNegotiator = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];

  if (!avcStreamNegotiator)
  {
    v15 = 0;
    goto LABEL_9;
  }

  avcStreamNegotiator2 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
  avcStreamNegotiator = [avcStreamNegotiator2 generateMediaStreamInitOptionsWithError:?];
  v15 = 0;

  v16 = [avcStreamNegotiator objectForKeyedSubscript:?];
  avcStreamCallID = self->_avcStreamCallID;
  self->_avcStreamCallID = v16;

  if (!avcStreamNegotiator)
  {
LABEL_9:
    v19 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v19))
    {
      *buf = 138543618;
      selfCopy2 = self;
      OUTLINED_FUNCTION_9_1();
      v38 = v15;
      OUTLINED_FUNCTION_0_3();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    avcStreamNegotiator = 0;
    v15 = 0;
    goto LABEL_12;
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:?];
LABEL_12:
  [v18 setObject:? forKeyedSubscript:?];
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  client = [compositeDelegate client];
  metricReporter = [client metricReporter];
  sessionUUID = [metricReporter sessionUUID];
  [v18 setObject:? forKeyedSubscript:?];

  v29 = [objc_alloc(MEMORY[0x277CE5758]) initWithNWConnectionClientID:? options:? error:?];
  v30 = v15;

  if (v29)
  {
    [v29 setDelegate:?];
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      OUTLINED_FUNCTION_12();
      v39 = v31;
      v40 = v29;
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCVideoStream %p Success", buf, 0x20u);
    }
  }

  else
  {
    v34 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_14(v34))
    {
      *buf = 138543618;
      selfCopy2 = self;
      OUTLINED_FUNCTION_9_1();
      v38 = v30;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v15, v35, "%{public}@ AVCVideoStream create error %@", buf);
    }

    v29 = 0;
  }

LABEL_16:
  v32 = v29;

  return v32;
}

- (id)newVideoStreamCurrentConfiguration
{
  transportStream = [(CMContinuityCaptureDeviceBase *)self transportStream];
  if (!transportStream)
  {
    v6 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  sessionID = [activeConfiguration sessionID];
  v6 = [transportStream cipherKeyforSessionID:?];

  if (v6)
  {
    avcStreamNegotiator = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
    v51 = 0;
    v8 = [avcStreamNegotiator generateMediaStreamConfigurationWithError:?];
    v9 = 0;

    if (v8)
    {
      [v8 setRtcpSendInterval:?];
      [v8 setRtcpTimeOutEnabled:?];
      transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice wired];
      [v8 setRtcpTimeOutInterval:?];

      [v8 setSRTPCipherSuite:?];
      [v8 setSRTCPCipherSuite:?];
      [OUTLINED_FUNCTION_17() setSendMediaKey:?];
      [OUTLINED_FUNCTION_17() setReceiveMediaKey:?];
      activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      format = [activeConfiguration2 format];
      CMContinuityCaptureGetAVCVideoResolutionForFormat(format);
      video = [v8 video];
      [video setVideoResolution:?];

      video2 = [v8 video];
      videoResolution = [video2 videoResolution];

      if (videoResolution == 12)
      {
        activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        format2 = [activeConfiguration3 format];
        [format2 width];
        video3 = [v8 video];
        [video3 setCustomWidth:?];

        activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        format3 = [activeConfiguration4 format];
        [format3 height];
        video4 = [v8 video];
        [video4 setCustomHeight:?];
      }

      activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration5 maxFrameRate];
      video5 = [v8 video];
      [video5 setFramerate:?];

      video6 = [v8 video];
      [video6 setLatencySensitiveModeEnabled:?];

      v25 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
        video7 = [v8 video];
        v26 = v6;
        v27 = transportStream;
        videoResolution2 = [video7 videoResolution];
        activeConfiguration6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        *buf = 138413570;
        selfCopy3 = self;
        v41 = 2048;
        v42 = currentSessionID;
        v43 = 1024;
        v44 = videoResolution2;
        transportStream = v27;
        v6 = v26;
        v45 = 1024;
        maxFrameRate = [activeConfiguration6 maxFrameRate];
        v47 = 1024;
        localSSRC = [v8 localSSRC];
        v49 = 1024;
        remoteSSRC = [v8 remoteSSRC];
        _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] Stream Resolution %u at frameRate %u localSSRC %x remoteSSRC %x", buf, 0x2Eu);
      }

      goto LABEL_8;
    }

    v25 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      OUTLINED_FUNCTION_9_1();
      v42 = v9;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v25, v36, "%{public}@ AVCMediaStreamConfig error %@", buf);
    }
  }

  else
  {
    v25 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      activeConfiguration7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      sessionID2 = [activeConfiguration7 sessionID];
      *buf = 138543618;
      selfCopy3 = self;
      OUTLINED_FUNCTION_9_1();
      v42 = v34;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v25, v35, "%{public}@ Failed to generate cipher key for session %@", buf);
    }

    v6 = 0;
    v9 = 0;
  }

  v8 = 0;
LABEL_8:

LABEL_9:
  v30 = v8;

  return v30;
}

- (BOOL)startAVConferenceStack:(unint64_t)stack
{
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_13();
    v34 = 2080;
    v35 = "[CMContinuityCaptureVideoDevice startAVConferenceStack:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  if (!self->_avcVideoStream)
  {
    createAVCVideoStream = [(CMContinuityCaptureVideoDevice *)self createAVCVideoStream];
    avcVideoStream = self->_avcVideoStream;
    self->_avcVideoStream = createAVCVideoStream;

    if (!self->_avcVideoStream)
    {
      goto LABEL_17;
    }
  }

  newVideoStreamCurrentConfiguration = [(CMContinuityCaptureVideoDevice *)self newVideoStreamCurrentConfiguration];
  if (!newVideoStreamCurrentConfiguration)
  {
    v25 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v34 = 2048;
      v35 = v27;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v25, v28, "%{public}@ AVCVideoStream %p Invalid configuration", buf);
    }

LABEL_17:
    v9 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v9 = newVideoStreamCurrentConfiguration;
  v10 = self->_avcVideoStream;
  v40 = 0;
  v11 = [AVCVideoStream configure:v10 error:"configure:error:"];
  v12 = v40;
  v13 = CMContinuityCaptureLog(2);
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v34 = 2048;
      v35 = v29;
      v36 = 2112;
      v37 = v12;
      _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ AVCVideoStream %p configure error %@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v16 = self->_avcVideoStream;
    [(AVCVideoStream *)v16 streamToken];
    OUTLINED_FUNCTION_13();
    v34 = 2048;
    v35 = currentSessionID;
    v36 = 2048;
    v37 = v16;
    v38 = 2048;
    v39 = v17;
    _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCVideoStream %p StreamToken %lu", buf, 0x2Au);
  }

  if (![(AVCVideoStream *)self->_avcVideoStream streamToken])
  {
LABEL_21:
    v23 = 0;
    goto LABEL_13;
  }

  v18 = objc_alloc(MEMORY[0x277CE5750]);
  [(AVCVideoStream *)self->_avcVideoStream streamToken];
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v32 = v12;
  v20 = [v18 initWithStreamToken:? delegate:? queue:? error:?];
  v21 = v12;

  avcStreamOutput = self->_avcStreamOutput;
  self->_avcStreamOutput = v20;

  if (self->_avcStreamOutput)
  {
    [(AVCVideoStream *)self->_avcVideoStream start];
    v23 = 1;
  }

  else
  {
    v26 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v34 = 2112;
      v35 = v21;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v26, v30, "%{public}@ AVCStreamOutput create error %@", buf);
    }

    v23 = 0;
  }

  v12 = v21;
LABEL_13:
  v31.receiver = self;
  v31.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v31 startAVConferenceStack:stack];

  return v23;
}

- (BOOL)stopAVConferenceStack
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2080;
    v11 = "[CMContinuityCaptureVideoDevice stopAVConferenceStack]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v8, 0x16u);
  }

  if (self->_avcStreamOutput && (avcVideoStream = self->_avcVideoStream) != 0)
  {
    [(AVCVideoStream *)avcVideoStream stop];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (!self->_avcStreamOutputActive)
  {
    avcStreamOutput = self->_avcStreamOutput;
    self->_avcStreamOutput = 0;
  }

  return v5;
}

- (void)dispatchFrame:entity:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_242545000, v1, OS_LOG_TYPE_DEBUG, "%{public}@ networkTimeClockIdentity identity %llx", v2, 0x16u);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  CMContinuityCaptureGetHostTimeInNanoSec();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1(&dword_242545000, v2, v3, "%@ Invalid sample buffer to send", v4, v5, v6, v7);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  CMContinuityCaptureGetHostTimeInNanoSec();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);
}

void __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)completeImageCaptureRequest:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_11_0(&dword_242545000, v1, v1, "%@ completeImageCaptureRequest got called with error %@, but still image requests queue is empty", v2);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.2()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.3()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1(&dword_242545000, v2, v3, "%@ still image capture hit timeout. Notifying state machine that the action is complete.", v4, v5, v6, v7);
}

void __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = 2114;
  v4 = v0;
  OUTLINED_FUNCTION_11_0(&dword_242545000, v1, v1, "%{public}@ unhandled control %{public}@", v2);
}

@end