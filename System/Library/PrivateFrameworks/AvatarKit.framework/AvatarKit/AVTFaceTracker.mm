@interface AVTFaceTracker
- (AVTFaceTracker)init;
- (CGSize)cameraImageResolution;
- (double)projectionMatrixForViewportSize:(uint64_t)size zNear:zFar:;
- (void)_setupARKitForDebugging:(BOOL)debugging;
- (void)addDelegate:(id)delegate;
- (void)copyTrackingData:(id *)data;
- (void)decreaseFrameRate;
- (void)discardARFrameData;
- (void)enumerateDelegates:(id)delegates;
- (void)increaseFrameRateToMaximum;
- (void)pauseByPausingARSession;
- (void)pauseBySkippingARFrames;
- (void)removeDelegate:(id)delegate;
- (void)run;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setFaceTrackingRecordingURL:(id)l;
- (void)setShouldUseAudioData:(BOOL)data;
- (void)setWantsPersonSegmentation:(BOOL)segmentation;
- (void)setupARKit;
- (void)setupARKitForDebugging;
- (void)startRecording;
- (void)stop;
- (void)stopRecording;
- (void)updateWithARFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation constrainHeadPose:(BOOL)pose mirroredDepthData:(BOOL)data;
- (void)updateWithARFrame:(id)frame worldAlignment:(int64_t)alignment fallBackDepthData:(id)data captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation constrainHeadPose:(BOOL)pose mirroredDepthData:(BOOL)depthData;
@end

@implementation AVTFaceTracker

- (AVTFaceTracker)init
{
  v9.receiver = self;
  v9.super_class = AVTFaceTracker;
  v2 = [(AVTFaceTracker *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_requestedState = vdupq_n_s64(3uLL);
    v2->_faceIsTracked = 0;
    v4 = objc_alloc_init(AVTFaceTrackingInfo);
    trackingInfo = v3->_trackingInfo;
    v3->_trackingInfo = v4;

    v3->_arSessionLock._os_unfair_lock_opaque = 0;
    v3->_trackingDataLock._os_unfair_lock_opaque = 0;
    v3->_shouldConstrainHeadPose = 0;
    v6 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:?];
    delegates = v3->_delegates;
    v3->_delegates = v6;
  }

  return v3;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v7 = delegateCopy;
    allObjects = [(NSPointerArray *)self->_delegates allObjects];
    v6 = [allObjects containsObject:?];

    if ((v6 & 1) == 0)
    {
      [(NSPointerArray *)self->_delegates addPointer:?];
    }

    [(NSPointerArray *)self->_delegates compact];
    delegateCopy = v7;
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([(NSPointerArray *)self->_delegates count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSPointerArray *)self->_delegates pointerAtIndex:?];
      if (v5 == delegateCopy)
      {
        break;
      }

      if (++v4 >= [(NSPointerArray *)self->_delegates count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_delegates removePointerAtIndex:?];
  }

LABEL_7:
  [(NSPointerArray *)self->_delegates compact];
}

- (void)enumerateDelegates:(id)delegates
{
  delegatesCopy = delegates;
  [(NSPointerArray *)self->_delegates compact];
  v5 = self->_delegates;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
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

        delegatesCopy[2](delegatesCopy, *(8 * i));
      }

      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v7);
  }
}

- (void)run
{
  v13 = *MEMORY[0x1E69E9840];
  self->_requestedState = 0;
  currentState = self->_currentState;
  if (currentState)
  {
    if (currentState == 2)
    {
      v4 = avt_default_log(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v11 = 134217984;
        v12 = arSession;
        _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Resuming face tracking ; will no longer skip frames from session %p", &v11, 0xCu);
      }

      self->_currentState = 0;
    }

    else
    {
      os_unfair_lock_lock(&self->_arSessionLock);
      v6 = self->_arSession;
      v8 = avt_default_log(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v9)
        {
          v10 = self->_arSession;
          v11 = 134217984;
          v12 = v10;
          _os_log_impl(&dword_1BB472000, v8, OS_LOG_TYPE_DEFAULT, "[Face tracker] Resuming face tracking ; calling [ARSession runWithConfiguration:] on session %p", &v11, 0xCu);
        }

        self->_currentState = 0;
        [(ARSession *)self->_arSession runWithConfiguration:?];
      }

      else
      {
        if (v9)
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1BB472000, v8, OS_LOG_TYPE_DEFAULT, "[Face tracker] Running face tracking", &v11, 2u);
        }

        [(AVTFaceTracker *)self _setupARKitForDebugging:?];
      }

      os_unfair_lock_unlock(&self->_arSessionLock);
    }
  }
}

- (void)pauseByPausingARSession
{
  v8 = *MEMORY[0x1E69E9840];
  self->_requestedState = 1;
  if ((self->_currentState | 2) != 3)
  {
    os_unfair_lock_lock(&self->_arSessionLock);
    v4 = avt_default_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      arSession = self->_arSession;
      v6 = 134217984;
      v7 = arSession;
      _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Pausing face tracking ; calling [ARSession pause] on session %p", &v6, 0xCu);
    }

    self->_currentState = 1;
    [(ARSession *)self->_arSession pause];
    os_unfair_lock_unlock(&self->_arSessionLock);
  }
}

- (void)pauseBySkippingARFrames
{
  v8 = *MEMORY[0x1E69E9840];
  self->_requestedState = 2;
  if (self->_currentState - 1 >= 3)
  {
    os_unfair_lock_lock(&self->_arSessionLock);
    v4 = avt_default_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      arSession = self->_arSession;
      v6 = 134217984;
      v7 = arSession;
      _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Pausing face tracking ; will skip new frames from session %p", &v6, 0xCu);
    }

    self->_currentState = 2;
    os_unfair_lock_unlock(&self->_arSessionLock);
  }
}

- (void)stop
{
  v9 = *MEMORY[0x1E69E9840];
  self->_requestedState = 3;
  if (self->_currentState != 3)
  {
    os_unfair_lock_lock(&self->_arSessionLock);
    v4 = avt_default_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      arSession = self->_arSession;
      v7 = 134217984;
      v8 = arSession;
      _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Stopping face tracking ; calling [ARSession pause] on session %p before release", &v7, 0xCu);
    }

    self->_currentState = 3;
    [(ARSession *)self->_arSession pause];
    v6 = self->_arSession;
    self->_arSession = 0;

    os_unfair_lock_unlock(&self->_arSessionLock);
  }
}

- (double)projectionMatrixForViewportSize:(uint64_t)size zNear:zFar:
{
  ARCameraToDisplayRotation();
  ARAdjustIntrincisForOrientation();
  ARAdjustIntrinsicsForViewportSize();
  ARMatrixMakeFrustum();
  v1 = 0;
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  memset(v8, 0, sizeof(v8));
  do
  {
    v8[v1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F05D0, COERCE_FLOAT(v7[v1])), xmmword_1BB4F05E0, *&v7[v1], 1), xmmword_1BB4F05F0, v7[v1], 2), xmmword_1BB4F0600, v7[v1], 3);
    ++v1;
  }

  while (v1 != 4);
  return *v8;
}

- (void)updateWithARFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation constrainHeadPose:(BOOL)pose mirroredDepthData:(BOOL)data
{
  frameCopy = frame;
  [frameCopy timestamp];
  v13 = v12;
  self->_lastUpdateTimestamp = v12;
  [frameCopy worldAlignment];
  v14 = [AVTFaceTrackingInfo trackingInfoWithARFrame:"trackingInfoWithARFrame:worldAlignment:captureOrientation:interfaceOrientation:constrainHeadPose:" worldAlignment:? captureOrientation:? interfaceOrientation:? constrainHeadPose:?];
  if (v14)
  {
    objc_storeStrong(&self->_trackingInfo, v14);
    fallBackDepthData = self->_fallBackDepthData;
    self->_fallBackDepthData = 0;

    self->_faceIsTracked = 1;
    camera = [frameCopy camera];
    [camera intrinsics];
    *&self->_anon_40[8] = v17;
    *&self->_anon_40[24] = v18;
    *self->_anon_40 = v19;
    *&self->_anon_40[16] = v20;
    *&self->_anon_40[40] = v21;
    *&self->_anon_40[32] = v22;

    camera2 = [frameCopy camera];
    [camera2 imageResolution];
    self->_cameraImageResolution.width = v24;
    self->_cameraImageResolution.height = v25;

    self->_captureVideoOrientation = orientation;
    self->_interfaceOrientation = interfaceOrientation;
    p_lastUpdateWithTrackedFaceTimestamp = &self->_lastUpdateWithTrackedFaceTimestamp;
    self->_mirroredDepthData = data;
LABEL_4:
    *p_lastUpdateWithTrackedFaceTimestamp = v13;
    goto LABEL_5;
  }

  p_lastUpdateWithTrackedFaceTimestamp = &self->_lastUpdateWithTrackedFaceTimestamp;
  lastUpdateWithTrackedFaceTimestamp = self->_lastUpdateWithTrackedFaceTimestamp;
  self->_faceIsTracked = 0;
  if (lastUpdateWithTrackedFaceTimestamp == 0.0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v29 = MEMORY[0x1E69E9820];
  v30 = frameCopy;
  v28 = frameCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v29, 3221225472, __112__AVTFaceTracker_updateWithARFrame_captureOrientation_interfaceOrientation_constrainHeadPose_mirroredDepthData___block_invoke, &unk_1E7F47EF0, self];
}

- (void)updateWithARFrame:(id)frame worldAlignment:(int64_t)alignment fallBackDepthData:(id)data captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation constrainHeadPose:(BOOL)pose mirroredDepthData:(BOOL)depthData
{
  frameCopy = frame;
  dataCopy = data;
  [frameCopy timestamp];
  v16 = v15;
  self->_lastUpdateTimestamp = v15;
  v17 = [AVTFaceTrackingInfo trackingInfoWithARFrame:"trackingInfoWithARFrame:worldAlignment:captureOrientation:interfaceOrientation:constrainHeadPose:" worldAlignment:? captureOrientation:? interfaceOrientation:? constrainHeadPose:?];
  if (v17)
  {
    objc_storeStrong(&self->_trackingInfo, v17);
    objc_storeStrong(&self->_fallBackDepthData, data);
    self->_faceIsTracked = 1;
    camera = [frameCopy camera];
    [camera intrinsics];
    *&self->_anon_40[8] = v19;
    *&self->_anon_40[24] = v20;
    *self->_anon_40 = v21;
    *&self->_anon_40[16] = v22;
    *&self->_anon_40[40] = v23;
    *&self->_anon_40[32] = v24;

    camera2 = [frameCopy camera];
    [camera2 imageResolution];
    self->_cameraImageResolution.width = v26;
    self->_cameraImageResolution.height = v27;

    self->_captureVideoOrientation = orientation;
    self->_interfaceOrientation = interfaceOrientation;
    p_lastUpdateWithTrackedFaceTimestamp = &self->_lastUpdateWithTrackedFaceTimestamp;
    self->_mirroredDepthData = depthData;
LABEL_4:
    *p_lastUpdateWithTrackedFaceTimestamp = v16;
    goto LABEL_5;
  }

  p_lastUpdateWithTrackedFaceTimestamp = &self->_lastUpdateWithTrackedFaceTimestamp;
  lastUpdateWithTrackedFaceTimestamp = self->_lastUpdateWithTrackedFaceTimestamp;
  self->_faceIsTracked = 0;
  if (lastUpdateWithTrackedFaceTimestamp == 0.0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v31 = MEMORY[0x1E69E9820];
  v32 = frameCopy;
  v30 = frameCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v31, 3221225472, __145__AVTFaceTracker_updateWithARFrame_worldAlignment_fallBackDepthData_captureOrientation_interfaceOrientation_constrainHeadPose_mirroredDepthData___block_invoke, &unk_1E7F47EF0, self];
}

- (void)discardARFrameData
{
  trackingInfo = self->_trackingInfo;
  self->_trackingInfo = 0;

  fallBackDepthData = self->_fallBackDepthData;
  self->_fallBackDepthData = 0;
}

- (void)setFaceTrackingRecordingURL:(id)l
{
  if (self->_debugRecordingURL != l)
  {
    v5 = [l copy];
    debugRecordingURL = self->_debugRecordingURL;
    self->_debugRecordingURL = v5;

    [(AVTFaceTracker *)self setupARKit];
  }
}

- (void)setShouldUseAudioData:(BOOL)data
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_shouldUseAudioData != data)
  {
    self->_shouldUseAudioData = data;
    os_unfair_lock_lock(&self->_arSessionLock);
    v4 = [(ARConfiguration *)self->_arConfiguration setProvidesAudioData:?];
    if (!self->_requestedState)
    {
      v5 = avt_default_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v7 = 134217984;
        v8 = arSession;
        _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Face tracker] Audio data status did change ; calling [ARSession runWithConfiguration:] on session %p", &v7, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:?];
    }

    os_unfair_lock_unlock(&self->_arSessionLock);
  }
}

- (void)setWantsPersonSegmentation:(BOOL)segmentation
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_wantsPersonSegmentation != segmentation)
  {
    self->_wantsPersonSegmentation = segmentation;
    os_unfair_lock_lock(&self->_arSessionLock);
    if (self->_wantsPersonSegmentation)
    {
      [objc_opt_class() supportsFrameSemantics:?];
    }

    arConfiguration = self->_arConfiguration;
    [(ARConfiguration *)arConfiguration frameSemantics];
    v5 = [(ARConfiguration *)arConfiguration setFrameSemantics:?];
    if (!self->_requestedState)
    {
      v6 = avt_default_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v8 = 134217984;
        v9 = arSession;
        _os_log_impl(&dword_1BB472000, v6, OS_LOG_TYPE_DEFAULT, "[Face tracker] Person segmentation status did change ; calling [ARSession runWithConfiguration:] on session %p", &v8, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:?];
    }

    os_unfair_lock_unlock(&self->_arSessionLock);
  }
}

- (void)decreaseFrameRate
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_arSessionLock);
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v4 = [supportedVideoFormats sortedArrayUsingComparator:?];

  videoFormat = [(ARConfiguration *)self->_arConfiguration videoFormat];
  v6 = [v4 indexOfObject:?];

  if (v6 && v6 < [v4 count])
  {
    v7 = [v4 objectAtIndexedSubscript:?];
    [(ARConfiguration *)self->_arConfiguration setVideoFormat:?];
    v8 = [(AVTFaceTracker *)self configurationVideoFormatDidChange:?];
    if (!self->_requestedState)
    {
      v9 = avt_default_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v11 = 134217984;
        v12 = arSession;
        _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Face tracker] Video format did change ; calling [ARSession runWithConfiguration:] on session %p", &v11, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:?];
    }
  }

  os_unfair_lock_unlock(&self->_arSessionLock);
}

- (void)increaseFrameRateToMaximum
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_arSessionLock);
  v3 = self->_arConfiguration;
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v5 = [supportedVideoFormats countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    framesPerSecond = 0;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(supportedVideoFormats);
        }

        v11 = *(8 * i);
        if ([v11 framesPerSecond] > framesPerSecond)
        {
          framesPerSecond = [v11 framesPerSecond];
          v12 = v11;

          v7 = v12;
        }
      }

      v6 = [supportedVideoFormats countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  videoFormat = [(ARConfiguration *)self->_arConfiguration videoFormat];
  v14 = [v7 isEqual:?];

  if ((v14 & 1) == 0)
  {
    [(ARConfiguration *)self->_arConfiguration setVideoFormat:?];
    v15 = [(AVTFaceTracker *)self configurationVideoFormatDidChange:?];
    if (!self->_requestedState)
    {
      v16 = avt_default_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        *buf = 134217984;
        v19 = arSession;
        _os_log_impl(&dword_1BB472000, v16, OS_LOG_TYPE_DEFAULT, "[Face tracker] Video format did change ; calling [ARSession runWithConfiguration:] on session %p", buf, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:?];
    }
  }

  os_unfair_lock_unlock(&self->_arSessionLock);
}

- (void)setupARKit
{
  os_unfair_lock_lock(&self->_arSessionLock);
  [(AVTFaceTracker *)self _setupARKitForDebugging:?];

  os_unfair_lock_unlock(&self->_arSessionLock);
}

- (void)setupARKitForDebugging
{
  os_unfair_lock_lock(&self->_arSessionLock);
  [(AVTFaceTracker *)self _setupARKitForDebugging:?];

  os_unfair_lock_unlock(&self->_arSessionLock);
}

- (void)_setupARKitForDebugging:(BOOL)debugging
{
  debuggingCopy = debugging;
  v19 = *MEMORY[0x1E69E9840];
  isSupported = [MEMORY[0x1E6986460] isSupported];
  if (isSupported)
  {
    if (!self->_arSession)
    {
      v6 = objc_opt_new();
      arSession = self->_arSession;
      self->_arSession = v6;

      [(ARSession *)self->_arSession setDelegate:?];
    }

    arConfiguration = self->_arConfiguration;
    self->_arConfiguration = 0;

    if (+[AVTRecordView usesInternalTrackingPipeline])
    {
      v9 = objc_opt_new();
    }

    else
    {
      v9 = objc_opt_new();
      [(ARConfiguration *)v9 setMaximumNumberOfTrackedFaces:?];
    }

    v11 = self->_arConfiguration;
    self->_arConfiguration = v9;

    [(ARConfiguration *)self->_arConfiguration setProvidesAudioData:?];
    [(ARConfiguration *)self->_arConfiguration setLightEstimationEnabled:?];
    [(ARConfiguration *)self->_arConfiguration setWorldAlignment:?];
    if (self->_wantsPersonSegmentation && [objc_opt_class() supportsFrameSemantics:?])
    {
      v12 = self->_arConfiguration;
      [(ARConfiguration *)v12 frameSemantics];
      [(ARConfiguration *)v12 setFrameSemantics:?];
    }

    [(ARConfiguration *)self->_arConfiguration setAllowCameraInMultipleForegroundAppLayout:?];
    if (debuggingCopy && self->_debugRecordingURL)
    {
      v13 = [objc_alloc(MEMORY[0x1E69864B8]) initWithBaseConfiguration:? fileURL:?];
      v14 = self->_arConfiguration;
      self->_arConfiguration = v13;
    }

    v15 = avt_default_log([(AVTFaceTracker *)self configurationVideoFormatDidChange:?]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_arSession;
      v17 = 134217984;
      v18 = v16;
      _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "[Face tracker] ARKit setup ; calling [ARSession runWithConfiguration:] on session %p", &v17, 0xCu);
    }

    self->_currentState = 0;
    [(ARSession *)self->_arSession runWithConfiguration:?];
  }

  else
  {
    v10 = avt_default_log(isSupported);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1BB472000, v10, OS_LOG_TYPE_DEFAULT, "[Face tracker] Face tracking is not supported by this device", &v17, 2u);
    }
  }
}

- (void)stopRecording
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = dispatch_semaphore_create(0);
    v4 = self->_arConfiguration;
    v8 = MEMORY[0x1E69E9820];
    v9 = v4;
    v10 = v3;
    v5 = v3;
    v6 = v4;
    [(ARConfiguration *)v6 finishRecordingWithHandler:v8, 3221225472, __31__AVTFaceTracker_stopRecording__block_invoke, &unk_1E7F47F18];
    v7 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v5, v7);
    [(AVTFaceTracker *)self setupARKit];
  }
}

void __31__AVTFaceTracker_stopRecording__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = avt_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) fileURL];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Finished recording to %@, error: %@", &v6, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)startRecording
{
  if (self->_debugRecordingURL)
  {
    [(AVTFaceTracker *)self setupARKitForDebugging];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      arConfiguration = self->_arConfiguration;

      [(ARConfiguration *)arConfiguration startRecording];
    }
  }
}

- (void)sessionWasInterrupted:(id)interrupted
{
  v11 = *MEMORY[0x1E69E9840];
  interruptedCopy = interrupted;
  v5 = avt_default_log(interruptedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = interruptedCopy;
    _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Face tracker] Session was interrupted: %@", buf, 0xCu);
  }

  self->_faceIsTracked = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = interruptedCopy;
  v6 = interruptedCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v7, 3221225472, __40__AVTFaceTracker_sessionWasInterrupted___block_invoke, &unk_1E7F47EF0, self];
}

void __40__AVTFaceTracker_sessionWasInterrupted___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 faceTracker:? sessionWasInterrupted:?];
  }
}

- (void)sessionInterruptionEnded:(id)ended
{
  v11 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v5 = avt_default_log(endedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = endedCopy;
    _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Face tracker] Session interruption ended: %@", buf, 0xCu);
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = endedCopy;
  v6 = endedCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v7, 3221225472, __43__AVTFaceTracker_sessionInterruptionEnded___block_invoke, &unk_1E7F47EF0, self];
}

void __43__AVTFaceTracker_sessionInterruptionEnded___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 faceTracker:? sessionInterruptionEnded:?];
  }
}

- (void)session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sessionCopy = session;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __53__AVTFaceTracker_session_didOutputAudioSampleBuffer___block_invoke;
  v11 = &unk_1E7F47F40;
  selfCopy = self;
  v13 = sessionCopy;
  bufferCopy = buffer;
  v7 = sessionCopy;
  [(AVTFaceTracker *)self enumerateDelegates:?];
}

void __53__AVTFaceTracker_session_didOutputAudioSampleBuffer___block_invoke(void *a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 faceTracker:? session:? didOutputAudioSampleBuffer:?];
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  v68 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  frameCopy = frame;
  if (self->_currentState == 2)
  {
    goto LABEL_26;
  }

  v54 = sessionCopy;
  context = objc_autoreleasePoolPush();
  [frameCopy timestamp];
  v9 = v8;
  os_unfair_lock_lock(&self->_trackingDataLock);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  anchors = [frameCopy anchors];
  v11 = [anchors countByEnumeratingWithState:? objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v57 = 0;
    v13 = *v65;
    v55 = *v65;
    v56 = anchors;
    do
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(anchors);
        }

        v15 = *(*(&v64 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          if ([v16 isTracked])
          {
            directRetargetingMode = [(AVTFaceTracker *)self directRetargetingMode];
            *&self->_frame_id = v9;
            kdebug_trace();
            kdebug_trace();
            v18 = frameCopy;
            captureDate = [frameCopy captureDate];
            [captureDate timeIntervalSinceReferenceDate];
            self->_perfPacket.refTimestamp = v20;

            lastARFrameTime = self->_lastARFrameTime;
            refTimestamp = self->_perfPacket.refTimestamp;
            if (lastARFrameTime > 0.0)
            {
              self->_timeBetweenARFrame = refTimestamp - lastARFrameTime;
            }

            self->_lastARFrameTime = refTimestamp;
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            self->_perfPacket.arDelegateTimestamp = v23;
            v24 = self->_trackingInfo;
            [v16 _avt_rawTransform];
            v60 = v26;
            v61 = v25;
            v58 = v28;
            v59 = v27;
            captureVideoOrientation = self->_captureVideoOrientation;
            interfaceOrientation = self->_interfaceOrientation;
            shouldConstrainHeadPose = self->_shouldConstrainHeadPose;
            worldAlignment = [v18 worldAlignment];
            v33 = shouldConstrainHeadPose;
            frameCopy = v18;
            *&v24[1].super.isa = _convertARFaceAnchorTransformToSceneKitTransform(captureVideoOrientation, interfaceOrientation, v33, v18, worldAlignment, v61, v60, v59, v58);
            *&v24[1]._trackingData.timestamp = v34;
            *&v24[1]._anon_18[8] = v35;
            *&v24[1]._anon_18[24] = v36;
            v63 = 0.0;
            AVTTrackingDataFromARFrame(&v24->_trackingData, v18, [v18 worldAlignment], v16, self->_captureVideoOrientation, self->_interfaceOrientation, self->_shouldConstrainHeadPose, directRetargetingMode, &v63);
            LODWORD(interfaceOrientation) = [(AVTFaceTracker *)self limitRoll];

            if (!interfaceOrientation || v63 < 1.25663706)
            {
              ++v57;
            }

            v13 = v55;
            anchors = v56;
          }
        }
      }

      v12 = [anchors countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);

    self->_lastUpdateTimestamp = v9;
    if (v57)
    {
      v37 = 1;
LABEL_22:
      self->_lastUpdateWithTrackedFaceTimestamp = v9;
      v38 = v37;
      goto LABEL_23;
    }
  }

  else
  {

    self->_lastUpdateTimestamp = v9;
  }

  v37 = 0;
  v38 = 0;
  if (self->_lastUpdateWithTrackedFaceTimestamp == 0.0)
  {
    goto LABEL_22;
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_trackingDataLock);
  self->_faceIsTracked = v38;
  faceData = [frameCopy faceData];
  faceMeshPayload = [faceData faceMeshPayload];
  v41 = [faceMeshPayload objectForKeyedSubscript:?];

  if (v41)
  {
    v42 = [v41 objectForKeyedSubscript:?];
    [v42 BOOLValue];
    [(AVTFaceTracker *)self setLowLight:?];
    v43 = [v41 objectForKeyedSubscript:?];
    [v43 BOOLValue];
    [(AVTFaceTracker *)self setSensorCovered:?];
  }

  camera = [frameCopy camera];
  [camera intrinsics];
  *&self->_anon_40[8] = v45;
  *&self->_anon_40[24] = v46;
  *self->_anon_40 = v47;
  *&self->_anon_40[16] = v48;
  *&self->_anon_40[40] = v49;
  *&self->_anon_40[32] = v50;
  [camera imageResolution];
  self->_cameraImageResolution.width = v51;
  self->_cameraImageResolution.height = v52;
  v62 = frameCopy;
  [(AVTFaceTracker *)self enumerateDelegates:?];

  objc_autoreleasePoolPop(context);
  sessionCopy = v54;
LABEL_26:
}

- (void)session:(id)session didFailWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  v8 = avt_default_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1BB472000, v8, OS_LOG_TYPE_DEFAULT, "[Face tracker] Session %p failed with error: %@", buf, 0x16u);
  }

  self->_faceIsTracked = 0;
  v13[5] = MEMORY[0x1E69E9820];
  v13[6] = 3221225472;
  v13[7] = __43__AVTFaceTracker_session_didFailWithError___block_invoke;
  v13[8] = &unk_1E7F47F68;
  v13[9] = self;
  v14 = sessionCopy;
  v15 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  [(AVTFaceTracker *)self enumerateDelegates:?];
  os_unfair_lock_lock(&self->_arSessionLock);
  self->_currentState = 3;
  [(ARSession *)self->_arSession pause];
  arSession = self->_arSession;
  self->_arSession = 0;

  os_unfair_lock_unlock(&self->_arSessionLock);
  v12 = dispatch_time(0, 1000000000);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__AVTFaceTracker_session_didFailWithError___block_invoke_2;
  v13[3] = &unk_1E7F47F90;
  v13[4] = self;
  dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
}

void __43__AVTFaceTracker_session_didFailWithError___block_invoke(void *a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 faceTracker:? session:? didFailWithError:?];
  }
}

void *__43__AVTFaceTracker_session_didFailWithError___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[4])
  {
    return [result run];
  }

  return result;
}

- (void)copyTrackingData:(id *)data
{
  trackingData = [(AVTFaceTrackingInfo *)self->_trackingInfo trackingData];

  memcpy(data, trackingData, 0x1E0uLL);
}

- (CGSize)cameraImageResolution
{
  width = self->_cameraImageResolution.width;
  height = self->_cameraImageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end