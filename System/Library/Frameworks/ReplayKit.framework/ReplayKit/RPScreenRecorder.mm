@interface RPScreenRecorder
+ (RPScreenRecorder)sharedRecorder;
+ (id)validateHQLRSessionInfo:(id)info;
- (BOOL)checkContextID:(id)d withHandler:(id)handler;
- (BOOL)isAvailable;
- (BOOL)isConnectionInterruptedOrInvalid:(id)invalid;
- (BOOL)screenRecordingAllowed;
- (BOOL)shouldNotifyDidStop;
- (CGSize)currentWindowSize;
- (RPScreenRecorder)init;
- (id)applicationWindow;
- (id)audioQueue;
- (id)currentWindowLayerContextID;
- (id)delegate;
- (id)handleUnavailableState;
- (id)processQueue;
- (id)videoQueue;
- (void)captureHandlerWithAudioSample:(id)sample bufferType:(int64_t)type;
- (void)captureHandlerWithSample:(id)sample timingData:(id)data;
- (void)clientDidUpdateBroadcastServiceInfo:(id)info;
- (void)dealloc;
- (void)didStopRecordingWithError:(id)error previewViewController:(id)controller;
- (void)discardRecordingWithHandler:(void *)handler;
- (void)exportClipToURL:(NSURL *)url duration:(NSTimeInterval)duration completionHandler:(void *)completionHandler;
- (void)instantiatePipView;
- (void)isScreenRecordingAvailable;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)recordingDidPause;
- (void)recordingDidStopWithError:(id)error movieURL:(id)l;
- (void)recordingLockInterrupted:(id)interrupted;
- (void)recordingTimerDidUpdate:(id)update;
- (void)removePipView;
- (void)resumeHQLR;
- (void)resumeInAppBroadcast;
- (void)resumeInAppCapture;
- (void)resumeInAppClip;
- (void)resumeInAppRecording;
- (void)resumeSystemBroadcast;
- (void)resumeSystemRecording;
- (void)saveClipToCameraRoll:(id)roll handler:(id)handler;
- (void)saveVideo:(id)video handler:(id)handler;
- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler;
- (void)setBroadcastURL:(id)l;
- (void)setCameraEnabled:(BOOL)cameraEnabled;
- (void)setCameraPosition:(RPCameraPosition)cameraPosition;
- (void)setDelegate:(id)delegate;
- (void)setMicrophoneEnabled:(BOOL)microphoneEnabled;
- (void)setMixedRealityCameraEnabled:(BOOL)enabled;
- (void)setSecondDelegate:(id)delegate;
- (void)setWindowRotationLocked:(BOOL)locked;
- (void)setupSystemBroadcastWithExtension:(id)extension handler:(id)handler;
- (void)shouldResumeSessionType:(id)type;
- (void)startCaptureWithHandler:(void *)captureHandler completionHandler:(void *)completionHandler;
- (void)startClipBufferingWithCompletionHandler:(void *)completionHandler;
- (void)startHQLRWithSessionInfo:(id)info handler:(id)handler;
- (void)startInAppBroadcastWithHandler:(id)handler;
- (void)startRecordingWithHandler:(void *)handler;
- (void)startRecordingWithMicrophoneEnabled:(BOOL)microphoneEnabled handler:(void *)handler;
- (void)startSystemBroadcastWithHandler:(id)handler;
- (void)startSystemRecordingWithMicrophoneEnabled:(BOOL)enabled handler:(id)handler;
- (void)stopCaptureWithHandler:(void *)handler;
- (void)stopClipBufferingWithCompletionHandler:(void *)completionHandler;
- (void)stopHQLR:(id)r;
- (void)stopInAppBroadcastWithHandler:(id)handler;
- (void)stopRecordingWithAdditionalShareFileAttachment:(id)attachment overrideShareMessage:(id)message previewViewControllerOverrideTintColor:(id)color handler:(id)handler;
- (void)stopRecordingWithHandler:(void *)handler;
- (void)stopRecordingWithOutputURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)stopRecordingWithVideoURLHandler:(id)handler;
- (void)stopSystemBroadcastWithHandler:(id)handler;
- (void)stopSystemRecording:(id)recording;
- (void)stopSystemRecordingWithURLHandler:(id)handler;
- (void)updateProcessIDForAudioCapture:(int)capture;
- (void)updateRecordingAvailability:(id)availability;
- (void)updateScreenRecordingStateWithCurrentState:(id)state;
- (void)updateStateWithActive:(BOOL)active error:(id)error;
@end

@implementation RPScreenRecorder

- (RPScreenRecorder)init
{
  v10 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = RPScreenRecorder;
  v2 = [(RPScreenRecorder *)&v5 init];
  if (v2)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v7 = "[RPScreenRecorder init]";
      v8 = 1024;
      v9 = 138;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
    }

    *(v2 + 9) = 0;
    v2[16] = 0;
    *(v2 + 6) = 0;
    v3 = *(v2 + 13);
    *(v2 + 13) = 0;

    v2[8] = 1;
    [v2 updateStateWithActive:0 error:0];
    [v2 isScreenRecordingAvailable];
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = delegate;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPScreenRecorder setDelegate:]";
    v11 = 1024;
    v12 = 168;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate %p", &v9, 0x1Cu);
  }

  v5 = objc_storeWeak(&self->_delegate, v4);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      available = self->_available;
      v9 = 136446722;
      v10 = "[RPScreenRecorder setDelegate:]";
      v11 = 1024;
      v12 = 171;
      v13 = 1024;
      LODWORD(v14) = available;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v9, 0x18u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained screenRecorderDidChangeAvailability:self];
  }
}

- (void)setSecondDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPScreenRecorder setSecondDelegate:]";
    v9 = 1024;
    v10 = 177;
    v11 = 2048;
    v12 = delegateCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d secondDelegate %p", &v7, 0x1Cu);
  }

  objc_storeStrong(&self->_secondDelegate, delegate);
  if (objc_opt_respondsToSelector())
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      available = self->_available;
      v7 = 136446722;
      v8 = "[RPScreenRecorder setSecondDelegate:]";
      v9 = 1024;
      v10 = 180;
      v11 = 1024;
      LODWORD(v12) = available;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v7, 0x18u);
    }

    [(RPScreenRecorderDelegate *)self->_secondDelegate screenRecorderDidChangeAvailability:self];
  }
}

- (void)setMicrophoneEnabled:(BOOL)microphoneEnabled
{
  v3 = microphoneEnabled;
  v14 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446978;
    v7 = "[RPScreenRecorder setMicrophoneEnabled:]";
    v8 = 1024;
    v9 = 186;
    v10 = 1024;
    v11 = v3;
    v12 = 1024;
    isMicrophoneEnabled = [(RPScreenRecorder *)self isMicrophoneEnabled];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d :%d from current mic state:%d", &v6, 0x1Eu);
  }

  if (self->_microphoneEnabled != v3)
  {
    if ([(RPScreenRecorder *)self systemRecording])
    {
      v5 = +[RPDaemonProxy daemonProxy];
      [v5 setMicrophoneEnabled:v3];
    }

    self->_microphoneEnabled = v3;
  }

  [(RPScreenRecorder *)self notifyDelegateOfUpdatedState];
}

- (void)setMixedRealityCameraEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446978;
    v6 = "[RPScreenRecorder setMixedRealityCameraEnabled:]";
    v7 = 1024;
    v8 = 200;
    v9 = 1024;
    v10 = enabledCopy;
    v11 = 1024;
    isMixedRealityCameraEnabled = [(RPScreenRecorder *)self isMixedRealityCameraEnabled];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d :%d from current mixed reality camera state:%d", &v5, 0x1Eu);
  }

  if (self->_mixedRealityCameraEnabled != enabledCopy)
  {
    self->_mixedRealityCameraEnabled = enabledCopy;
  }

  [(RPScreenRecorder *)self notifyDelegateOfUpdatedState];
}

+ (RPScreenRecorder)sharedRecorder
{
  v12 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RPScreenRecorder_sharedRecorder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRecorder_onceToken != -1)
  {
    dispatch_once(&sharedRecorder_onceToken, block);
  }

  if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "+[RPScreenRecorder sharedRecorder]";
    v8 = 1024;
    v9 = 239;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d Accessing the sharedRecorder %p", buf, 0x1Cu);
  }

  v3 = sharedRecorder_replayRecorder;

  return v3;
}

uint64_t __34__RPScreenRecorder_sharedRecorder__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedRecorder_replayRecorder;
  sharedRecorder_replayRecorder = v1;

  v3 = [sharedRecorder_replayRecorder processQueue];
  dispatch_async(v3, &__block_literal_global_4);

  v4 = sharedRecorder_replayRecorder;

  return [v4 setCameraPosition:1];
}

void __34__RPScreenRecorder_sharedRecorder__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 addObserver:sharedRecorder_replayRecorder selector:sel_updateRecordingAvailability_ name:*MEMORY[0x277D25CA0] object:0];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "[RPScreenRecorder dealloc]";
    v7 = 1024;
    v8 = 244;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RPScreenRecorder;
  [(RPScreenRecorder *)&v4 dealloc];
}

- (BOOL)isAvailable
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    available = self->_available;
    v6 = 136446722;
    v7 = "[RPScreenRecorder isAvailable]";
    v8 = 1024;
    v9 = 251;
    v10 = 1024;
    v11 = available;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d isAvailable %d", &v6, 0x18u);
  }

  v4 = self->_available;
  if (!v4)
  {
    [(RPScreenRecorder *)self isScreenRecordingAvailable];
    return self->_available;
  }

  return v4;
}

- (void)startRecordingWithMicrophoneEnabled:(BOOL)microphoneEnabled handler:(void *)handler
{
  v4 = microphoneEnabled;
  v11 = *MEMORY[0x277D85DE8];
  v6 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPScreenRecorder startRecordingWithMicrophoneEnabled:handler:]";
    v9 = 1024;
    v10 = 262;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  [(RPScreenRecorder *)self setMicrophoneEnabled:v4];
  [(RPScreenRecorder *)self startRecordingWithHandler:v6];
}

- (void)stopRecordingWithVideoURLHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder stopRecordingWithVideoURLHandler:]";
    v7 = 1024;
    v8 = 272;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPScreenRecorder *)self stopSystemRecordingWithURLHandler:handlerCopy];
}

- (void)stopRecordingWithAdditionalShareFileAttachment:(id)attachment overrideShareMessage:(id)message previewViewControllerOverrideTintColor:(id)color handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  messageCopy = message;
  colorCopy = color;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446466;
    v15 = "[RPScreenRecorder stopRecordingWithAdditionalShareFileAttachment:overrideShareMessage:previewViewControllerOverrideTintColor:handler:]";
    v16 = 1024;
    v17 = 285;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v14, 0x12u);
  }

  [(RPScreenRecorder *)self stopRecordingWithHandler:handlerCopy];
}

- (void)startRecordingWithHandler:(void *)handler
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPScreenRecorder startRecordingWithHandler:]";
    v10 = 1024;
    v11 = 291;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startRecordingWithHandler:];
    }

    handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (self->_available)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RPScreenRecorder_startRecordingWithHandler___block_invoke;
    v6[3] = &unk_278B61D70;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else if (v4)
  {
    handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_14:
    (*(v4 + 2))(v4, handleUnavailableState);
LABEL_15:
  }
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v7 = [*(a1 + 32) isCameraEnabled];
    v8 = [*(a1 + 32) isMicrophoneEnabled];
    v9 = +[RPDaemonProxy daemonProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2;
    v11[3] = &unk_278B621F0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 startInAppRecordingWithContextID:v2 windowSize:v8 microphoneEnabled:v7 cameraEnabled:v11 withHandler:{v4, v6}];
  }
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPScreenRecorder startRecordingWithHandler:]_block_invoke";
    v22 = 1024;
    v23 = 324;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9;
  v15[3] = &unk_278B621C8;
  v19 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v7;
  v17 = v12;
  v18 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9_cold_1();
  }
}

- (void)stopRecordingWithHandler:(void *)handler
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopRecordingWithHandler:]";
    v11 = 1024;
    v12 = 360;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    [(RPScreenRecorder *)self setWindowRotationLocked:0];
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke;
    v7[3] = &unk_278B62240;
    v7[4] = self;
    v8 = v4;
    [v5 stopInAppRecordingWithHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopRecordingWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) updateStateWithActive:0 error:v6];
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v6)
    {
      if (__RPLogLevel <= 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_cold_1(v6);
        }

        v7 = *(a1 + 40);
      }

      (*(v7 + 16))(v7, 0, v6);
    }

    else if (v5)
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v12 = "[RPScreenRecorder stopRecordingWithHandler:]_block_invoke";
        v13 = 1024;
        v14 = 378;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop recording successful", buf, 0x12u);
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_12;
      v8[3] = &unk_278B61D70;
      v9 = v5;
      v10 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_12(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_2;
  v2[3] = &unk_278B62218;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [RPPreviewViewController loadPreviewViewControllerWithMovieURL:v1 attachmentURL:0 overrideShareMessage:0 overrideTintColor:0 completion:v2];
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPScreenRecorder stopRecordingWithHandler:]_block_invoke_2";
    v8 = 1024;
    v9 = 394;
    v10 = 1024;
    v11 = v5 == 1;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d shouldApplyPadUILayout=%d", &v6, 0x18u);
  }

  if (v5 == 1)
  {
    [v3 setModalPresentationStyle:7];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopRecordingWithOutputURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = url;
  v7 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPScreenRecorder stopRecordingWithOutputURL:completionHandler:]";
    v14 = 1024;
    v15 = 413;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (!self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopRecordingWithOutputURL:completionHandler:];
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v9 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    v7[2](v7, v9);

    goto LABEL_12;
  }

  if (!self->_systemRecording)
  {
    [(RPScreenRecorder *)self setWindowRotationLocked:0];
  }

  v8 = +[RPDaemonProxy daemonProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__RPScreenRecorder_stopRecordingWithOutputURL_completionHandler___block_invoke;
  v10[3] = &unk_278B61E88;
  v10[4] = self;
  v11 = v7;
  [v8 stopInAppRecordingWithUrl:v6 handler:v10];

LABEL_12:
}

void __65__RPScreenRecorder_stopRecordingWithOutputURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setRecording:0];
  [*(a1 + 32) updateProcessIDForAudioCapture:0];
  [*(a1 + 32) updateStateWithActive:0 error:v4];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)discardRecordingWithHandler:(void *)handler
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPScreenRecorder discardRecordingWithHandler:]";
    v8 = 1024;
    v9 = 441;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  if (!self->_recording)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    [v5 discardInAppRecordingWithHandler:v4];
  }
}

- (void)pauseInAppRecording
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPScreenRecorder pauseInAppRecording]";
    v6 = 1024;
    v7 = 449;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  if (self->_recording && !self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    [v3 pauseInAppRecording];
  }
}

- (void)resumeInAppRecording
{
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v9 = "[RPScreenRecorder resumeInAppRecording]";
    v10 = 1024;
    v11 = 457;
    v12 = 1024;
    v13 = recording;
    v14 = 1024;
    v15 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    currentWindowLayerContextID = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__RPScreenRecorder_resumeInAppRecording__block_invoke;
    v7[3] = &unk_278B62268;
    v7[4] = self;
    [v5 resumeInAppRecordingWithWindowLayerContextID:currentWindowLayerContextID completionHandler:v7];
  }
}

void __40__RPScreenRecorder_resumeInAppRecording__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[RPScreenRecorder resumeInAppRecording]_block_invoke";
      v14 = 1024;
      v15 = 463;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v12, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
}

- (void)startCaptureWithHandler:(void *)captureHandler completionHandler:(void *)completionHandler
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = captureHandler;
  v7 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPScreenRecorder startCaptureWithHandler:completionHandler:]";
    v14 = 1024;
    v15 = 479;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startCaptureWithHandler:completionHandler:];
    }

    handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (self->_available)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke;
    block[3] = &unk_278B62290;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (v7)
  {
    handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_14:
    (*(v7 + 2))(v7, handleUnavailableState);
LABEL_15:
  }
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    v7 = [*(a1 + 48) copy];
    [*(a1 + 32) setCaptureHandler:v7];

    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v8 = [*(a1 + 32) isCameraEnabled];
    v9 = [*(a1 + 32) isMicrophoneEnabled];
    v10 = +[RPDaemonProxy daemonProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2;
    v12[3] = &unk_278B621F0;
    v11 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v11;
    [v10 startInAppCaptureWithContextID:v2 windowSize:v9 microphoneEnabled:v8 cameraEnabled:v12 withHandler:{v4, v6}];
  }
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPScreenRecorder startCaptureWithHandler:completionHandler:]_block_invoke";
    v22 = 1024;
    v23 = 515;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19;
  v15[3] = &unk_278B621C8;
  v19 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v7;
  v17 = v12;
  v18 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19_cold_1();
  }
}

- (void)stopCaptureWithHandler:(void *)handler
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopCaptureWithHandler:]";
    v11 = 1024;
    v12 = 552;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__RPScreenRecorder_stopCaptureWithHandler___block_invoke;
    v7[3] = &unk_278B61E88;
    v7[4] = self;
    v8 = v4;
    [v5 stopInAppCaptureWithHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopCaptureWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    if (v4)
    {
      (*(v4 + 2))(v4, v6);
    }
  }
}

void __43__RPScreenRecorder_stopCaptureWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)pauseInAppCapture
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPScreenRecorder pauseInAppCapture]";
    v6 = 1024;
    v7 = 573;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  if (self->_recording && !self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    [v3 pauseInAppCapture];
  }
}

- (void)resumeInAppCapture
{
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v9 = "[RPScreenRecorder resumeInAppCapture]";
    v10 = 1024;
    v11 = 581;
    v12 = 1024;
    v13 = recording;
    v14 = 1024;
    v15 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    currentWindowLayerContextID = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__RPScreenRecorder_resumeInAppCapture__block_invoke;
    v7[3] = &unk_278B62268;
    v7[4] = self;
    [v5 resumeInAppCaptureWithWindowLayerContextID:currentWindowLayerContextID completionHandler:v7];
  }
}

void __38__RPScreenRecorder_resumeInAppCapture__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[RPScreenRecorder resumeInAppCapture]_block_invoke";
      v14 = 1024;
      v15 = 587;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v12, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
}

- (void)captureHandlerWithSample:(id)sample timingData:(id)data
{
  sampleCopy = sample;
  dataCopy = data;
  videoQueue = [(RPScreenRecorder *)self videoQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RPScreenRecorder_captureHandlerWithSample_timingData___block_invoke;
  block[3] = &unk_278B622B8;
  v12 = sampleCopy;
  v13 = dataCopy;
  selfCopy = self;
  v9 = dataCopy;
  v10 = sampleCopy;
  dispatch_async(videoQueue, block);
}

void __56__RPScreenRecorder_captureHandlerWithSample_timingData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ioSurface];
  memset(&v5, 0, sizeof(v5));
  [*(a1 + 40) getBytes:&v5 length:72];
  v4 = v5;
  v3 = RPSampleBufferUtilities_CreateSampleBufferFromIOSurface(v2, &v4);
  (*(*(*(a1 + 48) + 88) + 16))();
  CFRelease(v3);
}

- (void)captureHandlerWithAudioSample:(id)sample bufferType:(int64_t)type
{
  sampleCopy = sample;
  audioQueue = [(RPScreenRecorder *)self audioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RPScreenRecorder_captureHandlerWithAudioSample_bufferType___block_invoke;
  block[3] = &unk_278B622E0;
  v10 = sampleCopy;
  selfCopy = self;
  typeCopy = type;
  v8 = sampleCopy;
  dispatch_async(audioQueue, block);
}

void __61__RPScreenRecorder_captureHandlerWithAudioSample_bufferType___block_invoke(uint64_t a1)
{
  DecodeAudioSampleBuffer = RPSampleBufferUtilities_CreateDecodeAudioSampleBuffer(*(a1 + 32));
  if (DecodeAudioSampleBuffer)
  {
    v3 = DecodeAudioSampleBuffer;
    (*(*(*(a1 + 40) + 88) + 16))();

    CFRelease(v3);
  }
}

- (void)startInAppBroadcastWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startInAppBroadcastWithHandler:]";
    v11 = 1024;
    v12 = 638;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startInAppBroadcastWithHandler:];
      if (handlerCopy)
      {
        goto LABEL_8;
      }
    }

    else if (handlerCopy)
    {
LABEL_8:
      handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
LABEL_13:
      v6 = handleUnavailableState;
      handlerCopy[2](handlerCopy, handleUnavailableState);

      goto LABEL_14;
    }

    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startInAppBroadcastWithHandler:];
    }
  }

  else if (self->_available)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke;
    v7[3] = &unk_278B61D70;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else if (handlerCopy)
  {
    handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
    goto LABEL_13;
  }

LABEL_14:
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v7 = [*(a1 + 32) isCameraEnabled];
    v8 = [*(a1 + 32) isMicrophoneEnabled];
    v9 = +[RPDaemonProxy daemonProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2;
    v11[3] = &unk_278B621F0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 startInAppBroadcastWithContextID:v2 windowSize:v8 microphoneEnabled:v7 cameraEnabled:0 listenerEndpoint:v11 withHandler:{v4, v6}];
  }
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPScreenRecorder startInAppBroadcastWithHandler:]_block_invoke";
    v22 = 1024;
    v23 = 672;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21;
  v15[3] = &unk_278B621C8;
  v19 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v7;
  v17 = v12;
  v18 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21_cold_1();
  }
}

- (void)stopInAppBroadcastWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopInAppBroadcastWithHandler:]";
    v11 = 1024;
    v12 = 711;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke;
    v7[3] = &unk_278B61E88;
    v7[4] = self;
    v8 = handlerCopy;
    [v5 stopInAppBroadcastWithHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopInAppBroadcastWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

void __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) updateStateWithActive:0 error:0];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)pauseInAppBroadcast
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPScreenRecorder pauseInAppBroadcast]";
    v6 = 1024;
    v7 = 733;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  if (self->_recording && !self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    [v3 pauseInAppBroadcast];
  }
}

- (void)resumeInAppBroadcast
{
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v9 = "[RPScreenRecorder resumeInAppBroadcast]";
    v10 = 1024;
    v11 = 741;
    v12 = 1024;
    v13 = recording;
    v14 = 1024;
    v15 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    currentWindowLayerContextID = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__RPScreenRecorder_resumeInAppBroadcast__block_invoke;
    v7[3] = &unk_278B62268;
    v7[4] = self;
    [v5 resumeInAppBroadcastWithWindowLayerContextID:currentWindowLayerContextID completionHandler:v7];
  }
}

void __40__RPScreenRecorder_resumeInAppBroadcast__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[RPScreenRecorder resumeInAppBroadcast]_block_invoke";
      v14 = 1024;
      v15 = 747;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v12, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
}

- (void)setBroadcastURL:(id)l
{
  objc_storeStrong(&self->_broadcastURL, l);
  lCopy = l;
  v5 = +[RPDaemonProxy daemonProxy];
  [v5 setBroadcastURL:lCopy];
}

- (void)clientDidUpdateBroadcastServiceInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  activeBroadcastController = self->_activeBroadcastController;
  if (activeBroadcastController)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_activeBroadcastController;
        v12 = 136446722;
        v13 = "[RPScreenRecorder clientDidUpdateBroadcastServiceInfo:]";
        v14 = 1024;
        v15 = 769;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d activeBroadcastController: %@", &v12, 0x1Cu);
      }

      activeBroadcastController = self->_activeBroadcastController;
    }

    [(RPBroadcastController *)activeBroadcastController setServiceInfo:infoCopy];
    delegate = [(RPBroadcastController *)self->_activeBroadcastController delegate];

    if (delegate)
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [(RPBroadcastController *)self->_activeBroadcastController delegate];
        v12 = 136446722;
        v13 = "[RPScreenRecorder clientDidUpdateBroadcastServiceInfo:]";
        v14 = 1024;
        v15 = 772;
        v16 = 2112;
        v17 = delegate2;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d activeBroadcastController delegate: %@", &v12, 0x1Cu);
      }

      delegate3 = [(RPBroadcastController *)self->_activeBroadcastController delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136446466;
          v13 = "[RPScreenRecorder clientDidUpdateBroadcastServiceInfo:]";
          v14 = 1024;
          v15 = 775;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate responds to protocol", &v12, 0x12u);
        }

        delegate4 = [(RPBroadcastController *)self->_activeBroadcastController delegate];
        [delegate4 broadcastController:self->_activeBroadcastController didUpdateServiceInfo:infoCopy];
      }

      else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPScreenRecorder clientDidUpdateBroadcastServiceInfo:];
      }
    }

    else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder clientDidUpdateBroadcastServiceInfo:];
    }
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPScreenRecorder clientDidUpdateBroadcastServiceInfo:];
  }
}

- (void)startSystemRecordingWithMicrophoneEnabled:(BOOL)enabled handler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:]";
    v11 = 1024;
    v12 = 791;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:];
    }

    handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    if (!handlerCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [(RPScreenRecorder *)self setSystemRecording:1];
  if (self->_available)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke;
    v7[3] = &unk_278B61D70;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else if (handlerCopy)
  {
    handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_14:
    (*(handlerCopy + 2))(handlerCopy, handleUnavailableState);
LABEL_15:
  }
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        NSClassFromString(&cfstr_Fbrootwindow.isa);
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) setWindowToRecord:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
  v14 = +[RPFeatureFlagUtility sharedInstance];
  v15 = [v14 screenRecordingCameraPip];

  if ((v15 & 1) == 0)
  {
    [*(a1 + 32) setCameraEnabled:0];
  }

  v16 = [*(a1 + 32) isMicrophoneEnabled];
  v17 = [*(a1 + 32) isCameraEnabled];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) isMixedRealityCameraEnabled];
    *buf = 136447234;
    v29 = "[RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:]_block_invoke";
    v30 = 1024;
    v31 = 832;
    v32 = 1024;
    v33 = v16;
    v34 = 1024;
    v35 = v17;
    v36 = 1024;
    v37 = v18;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempting to start system recording with mic:%d cam:%d mixed reality cam:%d", buf, 0x24u);
  }

  v19 = +[RPDaemonProxy daemonProxy];
  v20 = [*(a1 + 32) isMixedRealityCameraEnabled];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27;
  v22[3] = &unk_278B61E88;
  v21 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v21;
  [v19 startSystemRecordingWithContextID:v9 windowSize:v16 microphoneEnabled:v17 cameraEnabled:v20 mixedRealityCameraEnabled:v22 withHandler:{v11, v13}];
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:]_block_invoke";
    v11 = 1024;
    v12 = 842;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28(uint64_t a1)
{
  [*(a1 + 32) updateStateWithActive:1 error:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28_cold_1();
  }
}

- (void)stopSystemRecording:(id)recording
{
  v13 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopSystemRecording:]";
    v11 = 1024;
    v12 = 869;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__RPScreenRecorder_stopSystemRecording___block_invoke;
    v7[3] = &unk_278B61E88;
    v7[4] = self;
    v8 = recordingCopy;
    [v5 stopSystemRecordingWithHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopSystemRecording:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    if (recordingCopy)
    {
      (*(recordingCopy + 2))(recordingCopy, v6);
    }
  }
}

void __40__RPScreenRecorder_stopSystemRecording___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  [*(a1 + 32) setSystemRecording:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)stopSystemRecordingWithURLHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopSystemRecordingWithURLHandler:]";
    v11 = 1024;
    v12 = 892;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__RPScreenRecorder_stopSystemRecordingWithURLHandler___block_invoke;
    v7[3] = &unk_278B62240;
    v7[4] = self;
    v8 = handlerCopy;
    [v5 stopSystemRecordingWithURLHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopSystemRecordingWithURLHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

void __54__RPScreenRecorder_stopSystemRecordingWithURLHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) updateStateWithActive:0 error:v5];
  [*(a1 + 32) setSystemRecording:0];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)resumeSystemRecording
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[RPScreenRecorder resumeSystemRecording]";
    v7 = 1024;
    v8 = 915;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording && self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__RPScreenRecorder_resumeSystemRecording__block_invoke;
    v4[3] = &unk_278B61EB0;
    v4[4] = self;
    [v3 resumeSystemRecordingWithCompletionHandler:v4];
  }
}

void __41__RPScreenRecorder_resumeSystemRecording__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v3 = *(result + 32);

    [v3 setPaused:0];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__RPScreenRecorder_resumeSystemRecording__block_invoke_cold_1();
  }
}

- (void)setupSystemBroadcastWithExtension:(id)extension handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[RPScreenRecorder setupSystemBroadcastWithExtension:handler:]";
    v18 = 1024;
    v19 = 931;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v10 = objc_alloc_init(RPBroadcastConfiguration);
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10];
  v12 = +[RPDaemonProxy daemonProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke;
  v14[3] = &unk_278B61DE8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [v12 setupSystemBroadcastWithHostBundleID:bundleIdentifier broadcastExtensionBundleID:extensionCopy broadcastConfigurationData:v11 userInfo:v9 handler:v14];
}

void __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && __RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startSystemBroadcastWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startSystemBroadcastWithHandler:]";
    v11 = 1024;
    v12 = 949;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startSystemBroadcastWithHandler:];
    }

    handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    goto LABEL_13;
  }

  [(RPScreenRecorder *)self setSystemRecording:1];
  if (self->_available)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke;
    v7[3] = &unk_278B61D70;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else if (handlerCopy)
  {
    handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_13:
    v6 = handleUnavailableState;
    (*(handlerCopy + 2))(handlerCopy, handleUnavailableState);
  }
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        NSClassFromString(&cfstr_Fbrootwindow.isa);
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) setWindowToRecord:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
  v14 = +[RPFeatureFlagUtility sharedInstance];
  v15 = [v14 screenRecordingCameraPip];

  if ((v15 & 1) == 0)
  {
    [*(a1 + 32) setCameraEnabled:0];
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) isMicrophoneEnabled];
    v17 = [*(a1 + 32) isCameraEnabled];
    v18 = [*(a1 + 32) isMixedRealityCameraEnabled];
    *buf = 136447234;
    v31 = "[RPScreenRecorder startSystemBroadcastWithHandler:]_block_invoke";
    v32 = 1024;
    v33 = 977;
    v34 = 1024;
    v35 = v16;
    v36 = 1024;
    v37 = v17;
    v38 = 1024;
    v39 = v18;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempting to start system broadcast with mic:%d cam:%d mixed reality cam:%d", buf, 0x24u);
  }

  v19 = +[RPDaemonProxy daemonProxy];
  v20 = [*(a1 + 32) isMicrophoneEnabled];
  v21 = [*(a1 + 32) isCameraEnabled];
  v22 = [*(a1 + 32) isMixedRealityCameraEnabled];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34;
  v24[3] = &unk_278B61E88;
  v23 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v25 = v23;
  [v19 startSystemBroadcastWithContextID:v9 windowSize:v20 microphoneEnabled:v21 cameraEnabled:v22 mixedRealityCameraEnabled:0 listenerEndpoint:v24 withHandler:{v11, v13}];
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startSystemBroadcastWithHandler:]_block_invoke";
    v11 = 1024;
    v12 = 988;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35(uint64_t a1)
{
  [*(a1 + 32) updateStateWithActive:1 error:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35_cold_1();
  }
}

- (void)stopSystemBroadcastWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopSystemBroadcastWithHandler:]";
    v11 = 1024;
    v12 = 1013;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__RPScreenRecorder_stopSystemBroadcastWithHandler___block_invoke;
    v7[3] = &unk_278B61E88;
    v7[4] = self;
    v8 = handlerCopy;
    [v5 stopSystemBroadcastWithHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopSystemBroadcastWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

void __51__RPScreenRecorder_stopSystemBroadcastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)resumeSystemBroadcast
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[RPScreenRecorder resumeSystemBroadcast]";
    v7 = 1024;
    v8 = 1031;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording && self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke;
    v4[3] = &unk_278B61EB0;
    v4[4] = self;
    [v3 resumeSystemBroadcastWithCompletionHandler:v4];
  }
}

void __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v3 = *(result + 32);

    [v3 setPaused:0];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke_cold_1();
  }
}

- (void)startHQLRWithSessionInfo:(id)info handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "[RPScreenRecorder startHQLRWithSessionInfo:handler:]";
    v15 = 1024;
    v16 = 1048;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d sessionInfo=%@", buf, 0x1Cu);
  }

  v8 = [RPScreenRecorder validateHQLRSessionInfo:infoCopy];
  if (!v8)
  {
    if (self->_recording)
    {
      if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPScreenRecorder startHQLRWithSessionInfo:handler:];
      }

      handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
      if (!handlerCopy)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [(RPScreenRecorder *)self setSystemRecording:1];
      if (self->_available)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke;
        block[3] = &unk_278B61E60;
        block[4] = self;
        v11 = infoCopy;
        v12 = handlerCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_21;
      }

      if (!handlerCopy)
      {
        goto LABEL_21;
      }

      handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
    }

    (*(handlerCopy + 2))(handlerCopy, handleUnavailableState);
LABEL_20:

    goto LABEL_21;
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPScreenRecorder startHQLRWithSessionInfo:handler:];
    if (!handlerCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    (*(handlerCopy + 2))(handlerCopy, v8);
  }

LABEL_21:
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
  v2 = +[RPDaemonProxy daemonProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2;
  v4[3] = &unk_278B61E88;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 startHQLRWithSessionInfo:v3 windowSize:v4 handler:{1920.0, 1080.0}];
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startHQLRWithSessionInfo:handler:]_block_invoke";
    v11 = 1024;
    v12 = 1077;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) updateStateWithActive:1 error:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38_cold_1();
  }
}

- (void)stopHQLR:(id)r
{
  v13 = *MEMORY[0x277D85DE8];
  rCopy = r;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopHQLR:]";
    v11 = 1024;
    v12 = 1104;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__RPScreenRecorder_stopHQLR___block_invoke;
    v7[3] = &unk_278B61E88;
    v7[4] = self;
    v8 = rCopy;
    [v5 stopHQLRWithHandler:v7];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopHQLR:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    if (rCopy)
    {
      (*(rCopy + 2))(rCopy, v6);
    }
  }
}

void __29__RPScreenRecorder_stopHQLR___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  [*(a1 + 32) setSystemRecording:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)resumeHQLR
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[RPScreenRecorder resumeHQLR]";
    v7 = 1024;
    v8 = 1127;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording && self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__RPScreenRecorder_resumeHQLR__block_invoke;
    v4[3] = &unk_278B61EB0;
    v4[4] = self;
    [v3 resumeHQLRWithCompletionHandler:v4];
  }
}

void __30__RPScreenRecorder_resumeHQLR__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v3 = *(result + 32);

    [v3 setPaused:0];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __30__RPScreenRecorder_resumeHQLR__block_invoke_cold_1();
  }
}

+ (id)validateHQLRSessionInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"saveToDestination"];
  v5 = [infoCopy objectForKeyedSubscript:@"fileURL"];

  if ([v4 isEqualToString:@"com.apple.replaykit.saveToURL"] && (!v5 || (objc_msgSend(MEMORY[0x277CBEB68], "null"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6)))
  {
    v7 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5820 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startClipBufferingWithCompletionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startClipBufferingWithCompletionHandler:]";
    v11 = 1024;
    v12 = 1153;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startClipBufferingWithCompletionHandler:];
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v4)
    {
LABEL_8:
      handleUnavailableState = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
LABEL_13:
      v6 = handleUnavailableState;
      v4[2](v4, handleUnavailableState);
    }
  }

  else if (self->_available)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke;
    v7[3] = &unk_278B61D70;
    v7[4] = self;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else if (v4)
  {
    handleUnavailableState = [(RPScreenRecorder *)self handleUnavailableState];
    goto LABEL_13;
  }

LABEL_14:
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v7 = [*(a1 + 32) isCameraEnabled];
    v8 = [*(a1 + 32) isMicrophoneEnabled];
    v9 = +[RPDaemonProxy daemonProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_278B621F0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 startClipBufferingWithContextID:v2 windowSize:v8 microphoneEnabled:v7 cameraEnabled:v11 withCompletionHandler:{v4, v6}];
  }
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPScreenRecorder startClipBufferingWithCompletionHandler:]_block_invoke";
    v22 = 1024;
    v23 = 1186;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50;
  v15[3] = &unk_278B621C8;
  v19 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v7;
  v17 = v12;
  v18 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50_cold_1();
  }
}

- (void)stopClipBufferingWithCompletionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder stopClipBufferingWithCompletionHandler:]";
    v11 = 1024;
    v12 = 1224;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (!self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopClipBufferingWithCompletionHandler:];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    v4[2](v4, v6);

    goto LABEL_10;
  }

  v5 = +[RPDaemonProxy daemonProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RPScreenRecorder_stopClipBufferingWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B61E88;
  v7[4] = self;
  v8 = v4;
  [v5 stopClipBufferingWithCompletionHandler:v7];

LABEL_10:
}

void __59__RPScreenRecorder_stopClipBufferingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder stopClipBufferingWithCompletionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 1228;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stopped", &v5, 0x12u);
  }

  [*(a1 + 32) updateStateWithActive:0 error:v3];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)exportClipToURL:(NSURL *)url duration:(NSTimeInterval)duration completionHandler:(void *)completionHandler
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = url;
  v9 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[RPScreenRecorder exportClipToURL:duration:completionHandler:]";
    v13 = 1024;
    v14 = 1245;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v11, 0x12u);
  }

  if (self->_recording)
  {
    v10 = +[RPDaemonProxy daemonProxy];
    [v10 exportClipToURL:v8 duration:v9 completionHandler:duration];
LABEL_10:

    goto LABEL_11;
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPScreenRecorder exportClipToURL:duration:completionHandler:];
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    v10 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5832 userInfo:0];
    v9[2](v9, v10);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)resumeInAppClip
{
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v9 = "[RPScreenRecorder resumeInAppClip]";
    v10 = 1024;
    v11 = 1258;
    v12 = 1024;
    v13 = recording;
    v14 = 1024;
    v15 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    currentWindowLayerContextID = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__RPScreenRecorder_resumeInAppClip__block_invoke;
    v7[3] = &unk_278B62268;
    v7[4] = self;
    [v5 resumeInAppClipWithWindowLayerContextID:currentWindowLayerContextID completionHandler:v7];
  }
}

void __35__RPScreenRecorder_resumeInAppClip__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[RPScreenRecorder resumeInAppClip]_block_invoke";
      v14 = 1024;
      v15 = 1264;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v12, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
}

- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  rollCopy = roll;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPScreenRecorder saveVideoToCameraRoll:handler:]";
    v13 = 1024;
    v14 = 1281;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = +[RPDaemonProxy daemonProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RPScreenRecorder_saveVideoToCameraRoll_handler___block_invoke;
  v9[3] = &unk_278B61DE8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 saveVideoToCameraRoll:rollCopy handler:v9];
}

uint64_t __50__RPScreenRecorder_saveVideoToCameraRoll_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveClipToCameraRoll:(id)roll handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  rollCopy = roll;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPScreenRecorder saveClipToCameraRoll:handler:]";
    v13 = 1024;
    v14 = 1291;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = +[RPDaemonProxy daemonProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__RPScreenRecorder_saveClipToCameraRoll_handler___block_invoke;
  v9[3] = &unk_278B61DE8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 saveClipToCameraRoll:rollCopy handler:v9];
}

uint64_t __49__RPScreenRecorder_saveClipToCameraRoll_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveVideo:(id)video handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  videoCopy = video;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPScreenRecorder saveVideo:handler:]";
    v13 = 1024;
    v14 = 1300;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = +[RPDaemonProxy daemonProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__RPScreenRecorder_saveVideo_handler___block_invoke;
  v9[3] = &unk_278B61DE8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 saveVideo:videoCopy handler:v9];
}

uint64_t __38__RPScreenRecorder_saveVideo_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removePipView
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RPScreenRecorder_removePipView__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__RPScreenRecorder_removePipView__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPScreenRecorder removePipView]_block_invoke";
    v8 = 1024;
    v9 = 1312;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d remove camera pip from view", &v6, 0x12u);
  }

  [*(*(a1 + 32) + 40) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;
}

- (void)setCameraEnabled:(BOOL)cameraEnabled
{
  v3 = cameraEnabled;
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPScreenRecorder setCameraEnabled:]";
    v7 = 1024;
    v8 = 1326;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera enabled %d", &v5, 0x18u);
  }

  if (self->_cameraEnabled != v3)
  {
    if ([(RPScreenRecorder *)self isRecording])
    {
      if (v3)
      {
        if (self->_hasUserConsentForCamera)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v5 = 136446466;
            v6 = "[RPScreenRecorder setCameraEnabled:]";
            v7 = 1024;
            v8 = 1334;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start camera pip", &v5, 0x12u);
          }

          [(RPPipViewController *)self->_pipViewController startPipSession];
        }

        else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v5 = 136446466;
          v6 = "[RPScreenRecorder setCameraEnabled:]";
          v7 = 1024;
          v8 = 1332;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Camera must be enabled first prior to startRecording", &v5, 0x12u);
        }
      }

      else
      {
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v5 = 136446466;
          v6 = "[RPScreenRecorder setCameraEnabled:]";
          v7 = 1024;
          v8 = 1338;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop camera pip", &v5, 0x12u);
        }

        [(RPPipViewController *)self->_pipViewController stopPipSession];
        [(RPScreenRecorder *)self removePipView];
      }
    }

    self->_cameraEnabled = v3;
  }
}

- (void)setCameraPosition:(RPCameraPosition)cameraPosition
{
  v15 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPScreenRecorder setCameraPosition:]";
    v11 = 1024;
    v12 = 1355;
    v13 = 1024;
    v14 = cameraPosition;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera position %d", &v9, 0x18u);
  }

  if (self->_cameraPosition != cameraPosition)
  {
    pipViewController = self->_pipViewController;
    if (!pipViewController)
    {
LABEL_13:
      self->_cameraPosition = cameraPosition;
      return;
    }

    if (cameraPosition == RPCameraPositionFront)
    {
      v6 = 2;
    }

    else
    {
      if (cameraPosition != RPCameraPositionBack)
      {
        goto LABEL_11;
      }

      v6 = 1;
    }

    [(RPPipViewController *)pipViewController setCameraPosition:v6];
LABEL_11:
    if ([(RPScreenRecorder *)self isRecording])
    {
      v7 = +[RPDaemonProxy daemonProxy];
      pipViewController = [(RPScreenRecorder *)self pipViewController];
      [v7 reportCameraUsage:{objc_msgSend(pipViewController, "cameraPosition")}];
    }

    goto LABEL_13;
  }
}

- (void)instantiatePipView
{
  v17 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  if ([(RPScreenRecorder *)self isCameraEnabled])
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446722;
      v12 = "[RPScreenRecorder instantiatePipView]";
      v13 = 1024;
      v14 = 1385;
      v15 = 1024;
      cameraPosition = [(RPScreenRecorder *)self cameraPosition];
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d create pip for camera position %d", &v11, 0x18u);
    }

    if ([(RPScreenRecorder *)self cameraPosition]== RPCameraPositionFront)
    {
      v5 = 2;
    }

    else
    {
      if ([(RPScreenRecorder *)self cameraPosition]!= RPCameraPositionBack)
      {
LABEL_10:
        v7 = +[RPDaemonProxy daemonProxy];
        pipViewController = [(RPScreenRecorder *)self pipViewController];
        [v7 reportCameraUsage:{objc_msgSend(pipViewController, "cameraPosition")}];

        pipViewController2 = [(RPScreenRecorder *)self pipViewController];
        view = [pipViewController2 view];
        [(RPScreenRecorder *)self setCameraPreviewView:view];

        return;
      }

      v5 = 1;
    }

    v6 = [[RPPipViewController alloc] initWithOrientation:orientation position:v5];
    [(RPScreenRecorder *)self setPipViewController:v6];

    goto LABEL_10;
  }
}

- (void)isScreenRecordingAvailable
{
  processQueue = [(RPScreenRecorder *)self processQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RPScreenRecorder_isScreenRecordingAvailable__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(processQueue, block);
}

void __46__RPScreenRecorder_isScreenRecordingAvailable__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) screenRecordingAllowed];
  v3 = [*(a1 + 32) screenRecordingSupportedOnDevice];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v2 & v3;
  if (__RPLogLevel <= 1)
  {
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 8);
      v14 = 136447490;
      v15 = "[RPScreenRecorder isScreenRecordingAvailable]_block_invoke";
      v16 = 1024;
      v17 = 1430;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = 1;
      v22 = 1024;
      v23 = v2;
      v24 = 1024;
      v25 = v6 & 1;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording available %i with display available %i, allowed %i, and supported on device %i", &v14, 0x2Au);
    }
  }

  v8 = *(a1 + 32);
  if (v5 != *(v8 + 8))
  {
    WeakRetained = objc_loadWeakRetained((v8 + 24));
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 8);
        v14 = 136446722;
        v15 = "[RPScreenRecorder isScreenRecordingAvailable]_block_invoke";
        v16 = 1024;
        v17 = 1434;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v14, 0x18u);
      }

      v12 = objc_loadWeakRetained((*(a1 + 32) + 24));
      [v12 screenRecorderDidChangeAvailability:*(a1 + 32)];
    }

    if (objc_opt_respondsToSelector())
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 8);
        v14 = 136446722;
        v15 = "[RPScreenRecorder isScreenRecordingAvailable]_block_invoke";
        v16 = 1024;
        v17 = 1438;
        v18 = 1024;
        v19 = v13;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v14, 0x18u);
      }

      [*(*(a1 + 32) + 160) screenRecorderDidChangeAvailability:?];
    }
  }
}

- (void)updateStateWithActive:(BOOL)active error:(id)error
{
  activeCopy = active;
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446978;
    v8 = "[RPScreenRecorder updateStateWithActive:error:]";
    v9 = 1024;
    v10 = 1457;
    v11 = 1024;
    v12 = activeCopy;
    v13 = 1024;
    v14 = errorCopy != 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d update state with isActive %d error %d", &v7, 0x1Eu);
  }

  if (errorCopy || !activeCopy)
  {
    [(RPScreenRecorder *)self setRecording:0];
    [(RPScreenRecorder *)self removePipView];
    [(RPScreenRecorder *)self updateProcessIDForAudioCapture:0];
    [(RPScreenRecorder *)self setWindowRotationLocked:0];
  }

  else
  {
    [(RPScreenRecorder *)self setRecording:1];
  }
}

- (id)handleUnavailableState
{
  if ([(RPScreenRecorder *)self screenRecordingAllowed])
  {
    v3 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder handleUnavailableState];
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5802 userInfo:0];
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder handleUnavailableState];
    }
  }

  [(RPScreenRecorder *)self isScreenRecordingAvailable];

  return v3;
}

- (id)applicationWindow
{
  v13 = *MEMORY[0x277D85DE8];
  windowToRecord = self->_windowToRecord;
  if (windowToRecord)
  {
    firstObject = windowToRecord;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    delegate = [mEMORY[0x277D75128] delegate];

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate window], (firstObject = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136446466;
        v10 = "[RPScreenRecorder applicationWindow]";
        v11 = 1024;
        v12 = 1550;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d appWindow: app doesn't have the window property set on UIApplicationDelegate. Using first window.", &v9, 0x12u);
      }

      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      windows = [mEMORY[0x277D75128]2 windows];
      firstObject = [windows firstObject];
    }
  }

  return firstObject;
}

- (CGSize)currentWindowSize
{
  v28 = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v10 = v9;

  if (!self->_systemRecording)
  {
    applicationWindow = [(RPScreenRecorder *)self applicationWindow];
    [applicationWindow frame];
    v5 = v12;
    v7 = v13;
  }

  v14 = v5;
  v15 = v10 * ceilf(v14);
  v16 = v7;
  v17 = v10 * ceilf(v16);
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446978;
    v21 = "[RPScreenRecorder currentWindowSize]";
    v22 = 1024;
    v23 = 1568;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v17;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d scaled window size width %.1f x height:%.1f", &v20, 0x26u);
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)currentWindowLayerContextID
{
  windowToRecord = [(RPScreenRecorder *)self windowToRecord];

  if (windowToRecord)
  {
    layer = [(UIWindow *)self->_windowToRecord layer];
    context = [layer context];
    contextId = [context contextId];
  }

  else
  {
    if (self->_systemRecording)
    {
      contextId = 0xFFFFFFFFLL;
      goto LABEL_7;
    }

    layer = [(RPScreenRecorder *)self applicationWindow];
    context = [layer layer];
    v5Context = [context context];
    contextId = [v5Context contextId];
  }

LABEL_7:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:contextId];
  stringValue = [v8 stringValue];

  return stringValue;
}

- (void)setWindowRotationLocked:(BOOL)locked
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__RPScreenRecorder_setWindowRotationLocked___block_invoke;
  v3[3] = &unk_278B62308;
  lockedCopy = locked;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __44__RPScreenRecorder_setWindowRotationLocked___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v4 = 136446722;
    v5 = "[RPScreenRecorder setWindowRotationLocked:]_block_invoke";
    v6 = 1024;
    v7 = 1631;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setWindowRotationLocked: %i", &v4, 0x18u);
  }

  if (*(a1 + 40) == 1)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPScreenRecorder setWindowRotationLocked:]_block_invoke";
      v6 = 1024;
      v7 = 1640;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d disabling autorotation", &v4, 0x12u);
    }

    v3 = [*(a1 + 32) applicationWindow];
    [v3 beginDisablingInterfaceAutorotation];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPScreenRecorder setWindowRotationLocked:]_block_invoke";
      v6 = 1024;
      v7 = 1651;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enabling autorotation", &v4, 0x12u);
    }

    v3 = [*(a1 + 32) applicationWindow];
    [v3 endDisablingInterfaceAutorotation];
  }
}

- (id)audioQueue
{
  if (audioQueue_onceToken != -1)
  {
    [RPScreenRecorder audioQueue];
  }

  v3 = audioQueue_sAudioQueue;

  return v3;
}

void __30__RPScreenRecorder_audioQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.capture.AudioSampleQueue", v2);
  v1 = audioQueue_sAudioQueue;
  audioQueue_sAudioQueue = v0;
}

- (id)videoQueue
{
  if (videoQueue_onceToken != -1)
  {
    [RPScreenRecorder videoQueue];
  }

  v3 = videoQueue_sVideoQueue;

  return v3;
}

void __30__RPScreenRecorder_videoQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.capture.VideoSampleQueue", v2);
  v1 = videoQueue_sVideoQueue;
  videoQueue_sVideoQueue = v0;
}

- (id)processQueue
{
  if (processQueue_onceToken != -1)
  {
    [RPScreenRecorder processQueue];
  }

  v3 = processQueue_sProcessQueue;

  return v3;
}

void __32__RPScreenRecorder_processQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.capture.ProcessQueue", v2);
  v1 = processQueue_sProcessQueue;
  processQueue_sProcessQueue = v0;
}

- (void)recordingLockInterrupted:(id)interrupted
{
  v10 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[RPScreenRecorder recordingLockInterrupted:]";
    v6 = 1024;
    v7 = 1692;
    v8 = 1024;
    code = [interruptedCopy code];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recordingLockInterrupted error[%d]", &v4, 0x18u);
  }
}

- (void)recordingTimerDidUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPScreenRecorder recordingTimerDidUpdate:]";
    v8 = 1024;
    v9 = 1697;
    v10 = 2112;
    v11 = updateCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d time[%@]", &v6, 0x1Cu);
  }

  privateDelegate = [(RPScreenRecorder *)self privateDelegate];
  [privateDelegate recordingTimerDidUpdate:updateCopy];
}

- (void)recordingDidPause
{
  if (self->_recording)
  {
    [(RPScreenRecorder *)self setPaused:1];
  }
}

- (void)shouldResumeSessionType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    systemRecording = self->_systemRecording;
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136447234;
    v14 = "[RPScreenRecorder shouldResumeSessionType:]";
    v15 = 1024;
    v16 = 1710;
    v17 = 1024;
    v18 = systemRecording;
    v19 = 1024;
    v20 = recording;
    v21 = 1024;
    v22 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d system recording %d isRecording %d paused %d", buf, 0x24u);
  }

  if (self->_recording && self->_paused)
  {
    if ([typeCopy isEqualToString:@"RPInAppRecording"])
    {
      [(RPScreenRecorder *)self resumeInAppRecording];
    }

    else if ([typeCopy isEqualToString:@"RPInAppCapture"])
    {
      [(RPScreenRecorder *)self resumeInAppCapture];
    }

    else if ([typeCopy isEqualToString:@"RPInAppBroadcast"])
    {
      [(RPScreenRecorder *)self resumeInAppBroadcast];
    }

    else if ([typeCopy isEqualToString:@"RPInAppClip"])
    {
      [(RPScreenRecorder *)self resumeInAppClip];
    }

    else
    {
      if (![typeCopy isEqualToString:@"RPHQLR"])
      {
        if ([typeCopy isEqualToString:@"RPSystemRecording"])
        {
          v8 = dispatch_time(0, 200000000);
          processQueue = [(RPScreenRecorder *)self processQueue];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __44__RPScreenRecorder_shouldResumeSessionType___block_invoke;
          v12[3] = &unk_278B61B70;
          v12[4] = self;
          v10 = v12;
        }

        else
        {
          if (![typeCopy isEqualToString:@"RPSystemBroadcast"])
          {
            goto LABEL_21;
          }

          v8 = dispatch_time(0, 200000000);
          processQueue = [(RPScreenRecorder *)self processQueue];
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __44__RPScreenRecorder_shouldResumeSessionType___block_invoke_2;
          v11[3] = &unk_278B61B70;
          v11[4] = self;
          v10 = v11;
        }

        dispatch_after(v8, processQueue, v10);

        goto LABEL_21;
      }

      [(RPScreenRecorder *)self resumeHQLR];
    }
  }

LABEL_21:
}

- (void)updateScreenRecordingStateWithCurrentState:(id)state
{
  v9 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder updateScreenRecordingStateWithCurrentState:]";
    v7 = 1024;
    v8 = 1740;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d updateScreenRecordingStateWithCurrentState", &v5, 0x12u);
  }

  [(RPScreenRecorder *)self notifyDelegateOfUpdatedState];
}

- (void)recordingDidStopWithError:(id)error movieURL:(id)l
{
  errorCopy = error;
  lCopy = l;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke;
  block[3] = &unk_278B622B8;
  block[4] = self;
  v11 = errorCopy;
  v12 = lCopy;
  v8 = lCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPScreenRecorder recordingDidStopWithError:movieURL:]_block_invoke";
    v14 = 1024;
    v15 = 1746;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    [v2 setWindowRotationLocked:0];
    v2 = *(a1 + 32);
  }

  [v2 updateStateWithActive:0 error:*(a1 + 40)];
  v3 = *(a1 + 32);
  if ((*(v3 + 16) & 1) != 0 || ([*(v3 + 96) delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, v3 = *(a1 + 32), (v5 & 1) == 0))
  {
    if ([v3 shouldNotifyDidStop])
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        if (__RPLogLevel <= 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 48);
            *buf = 136446722;
            v13 = "[RPScreenRecorder recordingDidStopWithError:movieURL:]_block_invoke";
            v14 = 1024;
            v15 = 1770;
            v16 = 2112;
            v17 = v8;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movieURL: %@", buf, 0x1Cu);
          }

          v7 = *(a1 + 48);
        }

        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke_88;
        v10[3] = &unk_278B62330;
        v9 = *(a1 + 40);
        v10[4] = *(a1 + 32);
        v11 = v9;
        [RPPreviewViewController loadPreviewViewControllerWithMovieURL:v7 completion:v10];
      }

      else
      {
        [*(a1 + 32) didStopRecordingWithError:*(a1 + 40) previewViewController:0];
      }
    }
  }

  else
  {
    v6 = [*(v3 + 96) delegate];
    [v6 broadcastController:*(*(a1 + 32) + 96) didFinishWithError:*(a1 + 40)];
  }
}

void __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke_88(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[RPScreenRecorder recordingDidStopWithError:movieURL:]_block_invoke";
    v6 = 1024;
    v7 = 1776;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d previewViewController %@", &v4, 0x1Cu);
  }

  [v3 setPreviewControllerDelegate:*(a1 + 32)];
  [*(a1 + 32) didStopRecordingWithError:*(a1 + 40) previewViewController:v3];
}

- (BOOL)isConnectionInterruptedOrInvalid:(id)invalid
{
  invalidCopy = invalid;
  v4 = [invalidCopy code] == -5815 || objc_msgSend(invalidCopy, "code") == -5814;

  return v4;
}

- (BOOL)shouldNotifyDidStop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = 1;
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
  }

  return (v4 | v6) & 1;
}

- (void)didStopRecordingWithError:(id)error previewViewController:(id)controller
{
  errorCopy = error;
  controllerCopy = controller;
  delegate = [(RPScreenRecorder *)self delegate];
  v8 = objc_opt_respondsToSelector();

  delegate2 = [(RPScreenRecorder *)self delegate];
  delegate3 = delegate2;
  if (v8)
  {
    [delegate2 screenRecorder:self didStopRecordingWithPreviewViewController:controllerCopy error:errorCopy];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

    delegate3 = [(RPScreenRecorder *)self delegate];
    [delegate3 screenRecorder:self didStopRecordingWithError:errorCopy previewViewController:controllerCopy];
  }

LABEL_6:
  secondDelegate = [(RPScreenRecorder *)self secondDelegate];
  v13 = objc_opt_respondsToSelector();

  secondDelegate2 = [(RPScreenRecorder *)self secondDelegate];
  secondDelegate3 = secondDelegate2;
  if (v13)
  {
    [secondDelegate2 screenRecorder:self didStopRecordingWithPreviewViewController:controllerCopy error:errorCopy];
  }

  else
  {
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

    secondDelegate3 = [(RPScreenRecorder *)self secondDelegate];
    [secondDelegate3 screenRecorder:self didStopRecordingWithError:errorCopy previewViewController:controllerCopy];
  }

LABEL_11:
}

- (void)updateRecordingAvailability:(id)availability
{
  v9 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder updateRecordingAvailability:]";
    v7 = 1024;
    v8 = 1838;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPScreenRecorder *)self isScreenRecordingAvailable];
}

- (void)updateProcessIDForAudioCapture:(int)capture
{
  if (self->_processIDForAudioCapture != capture)
  {
    v3 = *&capture;
    if ([(RPScreenRecorder *)self isRecording])
    {
      v5 = +[RPDaemonProxy daemonProxy];
      [v5 updateProcessIDForAudioCaptureWithPID:v3];
    }

    self->_processIDForAudioCapture = v3;
  }
}

- (BOOL)checkContextID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder checkContextID:withHandler:];
      if (!handlerCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (handlerCopy)
    {
LABEL_5:
      v7 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
      handlerCopy[2](handlerCopy, v7);
    }
  }

LABEL_6:

  return dCopy != 0;
}

- (BOOL)screenRecordingAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D26040]] != 2;

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_cold_1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke_cold_1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)stopSystemBroadcastWithHandler:.cold.1()
{
  v5 = 136446466;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop system broadcast because we're not recording", v1, v2, v3, v4, v5);
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end