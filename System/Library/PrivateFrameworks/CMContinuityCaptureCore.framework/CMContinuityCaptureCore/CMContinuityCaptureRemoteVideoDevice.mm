@interface CMContinuityCaptureRemoteVideoDevice
- (BOOL)_companionConnectionsRequired;
- (BOOL)_deviceFormat:(id)format isCompatibleWithConfiguration:(id)configuration requiringMultiCamSupport:(BOOL)support minFrameRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate;
- (BOOL)_isUltraWideCameraSupported;
- (BOOL)_shouldOnlyDisableVideoConnection;
- (BOOL)configureConnections;
- (BOOL)isStreamingOnSuperWide;
- (BOOL)startAVConferenceStack:(unint64_t)stack;
- (BOOL)startCameraCaptureStack:(unint64_t)stack;
- (BOOL)stopAVConferenceStack;
- (BOOL)stopCameraCaptureStack:(unint64_t)stack;
- (BOOL)suppressVideoEffects;
- (CMContinuityCaptureRemoteVideoDevice)companionDevice;
- (CMContinuityCaptureRemoteVideoDevice)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate captureSession:(id)session;
- (NSDictionary)centerStageRectOfInterest;
- (id)_avfDeviceTypeForManualFramingDeviceType:(int64_t)type;
- (id)_selectVideoDeviceForConfiguration:(id)configuration;
- (id)compatibleDeviceFormatForMaxFrameRate:(unsigned int)rate minFrameRate:(unsigned int)frameRate;
- (id)connectionsForConfiguration:(id)configuration;
- (id)createAVCVideoStream;
- (id)newVideoStreamCurrentConfiguration:(int64_t)configuration;
- (int64_t)centerStageFramingMode;
- (unsigned)maxFrameRate;
- (unsigned)minFrameRate;
- (unsigned)throttledMaxFrameRate;
- (void)_configureVideoEffects;
- (void)_disableCenterStage;
- (void)_disableManualFraming;
- (void)_enableCenterStage;
- (void)_enableManualFraming;
- (void)_forcefullyEnableCenterStageOnSuperWide;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_registerDockKitNotification;
- (void)_restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:(BOOL)stack;
- (void)_stopCameraCaptureStackRemoveCaptureSessionConnectionsWithOption:(unint64_t)option;
- (void)_toggleBetweenCenterStageAndManualFraming;
- (void)_updateControlStatus;
- (void)_updateManualFramingDeviceType:(int64_t)type;
- (void)_updatePhotoOutputConfigs;
- (void)addVideoDeviceKVOs;
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didFinishCaptureForResolvedSettings:(id)settings error:(id)error;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion;
- (void)didStartStreamInput:(id)input;
- (void)didStopStreamInput:(id)input;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postAVCStreamInterruption;
- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error;
- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option;
- (void)removeVideoDeviceKVOs;
- (void)serverDidDie;
- (void)setBackgroundReplacement:(BOOL)replacement;
- (void)setBackgroundReplacementPixelBuffer:(__CVBuffer *)buffer;
- (void)setCenterStageEnabled:(BOOL)enabled;
- (void)setCenterStageFramingMode:(int64_t)mode;
- (void)setCenterStageRectOfInterest:(id)interest;
- (void)setDeskViewCameraMode:(int64_t)mode;
- (void)setDockedTrackingEnabled:(BOOL)enabled;
- (void)setFaceDrivenAFActive:(BOOL)active;
- (void)setFormat:(id)format;
- (void)setMaxFrameRate:(unsigned int)rate;
- (void)setMinFrameDurationOverrideIfApplicable;
- (void)setMinFrameRate:(unsigned int)rate;
- (void)setPortraitEffect:(BOOL)effect;
- (void)setPortraitEffectAperture:(float)aperture;
- (void)setReactionEffectGesturesEnabled:(float)enabled;
- (void)setReactionEffectSuppressedGesturesEnabled:(float)enabled;
- (void)setReactionEffects:(BOOL)effects;
- (void)setStudioLighting:(BOOL)lighting;
- (void)setStudioLightingIntensity:(float)intensity;
- (void)setSuppressVideoEffects:(BOOL)effects;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setVideoDevice:(id)device;
- (void)setVideoZoomFactor:(double)factor;
- (void)setupControls;
- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
- (void)tearDownConnectionsWithVideoDataConnectionDisabled:(BOOL)disabled;
- (void)terminateComplete:(id)complete;
- (void)updateControlStatus;
@end

@implementation CMContinuityCaptureRemoteVideoDevice

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  dockKitNotificationAgent = self->_dockKitNotificationAgent;
  if (dockKitNotificationAgent)
  {
    [(DKNotificationAgent *)dockKitNotificationAgent deregisterNotifications];
  }

  v6.receiver = self;
  v6.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v6 terminateComplete:completeCopy];
}

- (void)setupControls
{
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v3 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = MEMORY[0];
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [CMContinuityCaptureControl alloc];
        [(CMContinuityCaptureDeviceBase *)self entity];
        v5 = [CMContinuityCaptureControl initWithName:v9 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
        v7 = (v7 + 1);
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  capabilities = [(CMContinuityCaptureDeviceBase *)self capabilities];
  controls = [capabilities controls];

  v12 = controls;
  v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v14; i = (i + 1))
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v12);
        }

        cmControlByName = self->_cmControlByName;
        name = [*(8 * i) name];
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      }

      v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v14);
  }
}

- (void)setVideoDevice:(id)device
{
  deviceCopy = device;
  if (self->_videoDevice)
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self removeVideoDeviceKVOs];
  }

  videoDevice = self->_videoDevice;
  self->_videoDevice = deviceCopy;

  if (self->_videoDevice)
  {

    [(CMContinuityCaptureRemoteVideoDevice *)self addVideoDeviceKVOs];
  }
}

- (void)setFaceDrivenAFActive:(BOOL)active
{
  activeCopy = active;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    if ([(AVCaptureDevice *)videoDevice isFocusModeSupported:?])
    {
      [(AVCaptureDevice *)self->_videoDevice lockForConfiguration:?];
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"off";
        if (activeCopy)
        {
          v8 = @"on";
        }

        v11 = 138412802;
        selfCopy2 = self;
        v13 = 2080;
        v14 = "[CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:]";
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%@ %s Turn %@ face-driven auto-focus.", &v11, 0x20u);
      }

      [(AVCaptureDevice *)self->_videoDevice setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:?];
      [(AVCaptureDevice *)self->_videoDevice setFaceDrivenAutoFocusEnabled:?];
      [(AVCaptureDevice *)self->_videoDevice setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:?];
      [(AVCaptureDevice *)self->_videoDevice setFocusMode:?];
      [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
    }

    else
    {
      v9 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_videoDevice;
        v11 = 138412802;
        selfCopy2 = self;
        v13 = 2080;
        v14 = "[CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:]";
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ %s Capture device (%@) does not support auto-focus.", &v11, 0x20u);
      }
    }
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:];
  }
}

- (void)setDeskViewCameraMode:(int64_t)mode
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice && ([(AVCaptureDevice *)videoDevice isOverheadCameraModeSupported:?]& 1) != 0)
  {
    [(AVCaptureDevice *)self->_videoDevice lockForConfiguration:?];
    [(AVCaptureDevice *)self->_videoDevice setDeskViewCameraMode:?];
    [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration setDeskViewCameraMode:?];

    [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setDeskViewCameraMode:];
  }
}

- (void)setFormat:(id)format
{
  formatCopy = format;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = formatCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setFormat %{public}@", &v7, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    [(AVCaptureDevice *)videoDevice lockForConfiguration:?];
    [(AVCaptureDevice *)self->_videoDevice setActiveFormat:?];
    [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:];
  }
}

- (void)setVideoZoomFactor:(double)factor
{
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v24 = 2048;
    factorCopy2 = factor;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ zoomFactor: %.2f", buf, 0x16u);
  }

  if (!self->_videoDevice || [(CMContinuityCaptureRemoteVideoDevice *)self centerStageEnabled])
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setVideoZoomFactor:];
    }
  }

  else
  {
    [(AVCaptureDevice *)self->_videoDevice minAvailableVideoZoomFactor];
    if (v6 <= factor)
    {
      activeFormat = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      [activeFormat videoMaxZoomFactor];
      v9 = v8;

      if (v9 >= factor)
      {
        v10 = [(AVCaptureDevice *)self->_videoDevice lockForConfiguration:?];
        v11 = 0;
        if (v10)
        {
          [(AVCaptureDevice *)self->_videoDevice setVideoZoomFactor:?];
          [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
          companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
          if (companionDevice)
          {
            v13 = companionDevice;
            companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
            if ([companionDevice2 streaming])
            {
              streaming = [(CMContinuityCaptureDeviceBase *)self streaming];

              if ((streaming & 1) == 0)
              {
                [CMContinuityCaptureRemoteVideoDevice setVideoZoomFactor:];
                goto LABEL_17;
              }
            }

            else
            {
            }
          }

          activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [activeConfiguration setVideoZoomFactor:?];
        }

        else
        {
          activeConfiguration = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(activeConfiguration, OS_LOG_TYPE_ERROR))
          {
            videoDevice = self->_videoDevice;
            *buf = 138543874;
            selfCopy3 = self;
            v24 = 2112;
            factorCopy2 = *&videoDevice;
            v26 = 2112;
            v27 = v11;
            _os_log_error_impl(&dword_242545000, activeConfiguration, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", buf, 0x20u);
          }
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
        goto LABEL_17;
      }
    }

    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AVCaptureDevice *)self->_videoDevice minAvailableVideoZoomFactor];
      v19 = v18;
      activeFormat2 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      [activeFormat2 videoMaxZoomFactor];
      *buf = 138544130;
      selfCopy3 = self;
      v24 = 2048;
      factorCopy2 = factor;
      v26 = 2048;
      v27 = v19;
      v28 = 2048;
      v29 = v21;
      _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Unsupported zoom factor (%.2f). Supported range: [%.2f-%.2f]", buf, 0x2Au);
    }
  }

LABEL_17:
}

- (unsigned)maxFrameRate
{
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  maxFrameRate = [activeConfiguration maxFrameRate];

  return maxFrameRate;
}

- (void)setMaxFrameRate:(unsigned int)rate
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      activeFormat2 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      videoSupportedFrameRateRanges = [activeFormat2 videoSupportedFrameRateRanges];

      v10 = [videoSupportedFrameRateRanges countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v49;
        rateCopy = rate;
        do
        {
          for (i = 0; i != v11; i = (i + 1))
          {
            if (*v49 != v13)
            {
              objc_enumerationMutation(videoSupportedFrameRateRanges);
            }

            v16 = *(*(&v48 + 1) + 8 * i);
            [v16 minFrameRate];
            if (v17 <= rateCopy)
            {
              [v16 maxFrameRate];
              if (v18 >= rateCopy)
              {
                v12 = 1;
              }
            }
          }

          v11 = [videoSupportedFrameRateRanges countByEnumeratingWithState:? objects:? count:?];
        }

        while (v11);

        if (v12)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        activeFormat3 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
        videoSupportedFrameRateRanges2 = [activeFormat3 videoSupportedFrameRateRanges];
        *v42 = 138543874;
        *&v42[4] = self;
        v43 = 1024;
        *v44 = rate;
        *&v44[4] = 2112;
        *&v44[6] = videoSupportedFrameRateRanges2;
        _os_log_error_impl(&dword_242545000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Unsupported max frame rate %u. Supported ranges: %@", v42, 0x1Cu);
      }

      activeFormat4 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      videoSupportedFrameRateRanges3 = [activeFormat4 videoSupportedFrameRateRanges];
      if (videoSupportedFrameRateRanges3)
      {
        activeFormat5 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
        videoSupportedFrameRateRanges4 = [activeFormat5 videoSupportedFrameRateRanges];
        if ([videoSupportedFrameRateRanges4 count])
        {
          activeFormat6 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
          videoSupportedFrameRateRanges5 = [activeFormat6 videoSupportedFrameRateRanges];
          lastObject = [videoSupportedFrameRateRanges5 lastObject];
          [lastObject maxFrameRate];
          rate = v27;
        }

        else
        {
          rate = 0;
        }
      }

      else
      {
        rate = 0;
      }

LABEL_25:
      if (rate)
      {
        v28 = self->_videoDevice;
        v47 = 0;
        v29 = [(AVCaptureDevice *)v28 lockForConfiguration:?];
        v30 = v47;
        if (v29)
        {
          activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [activeConfiguration setMaxFrameRate:?];

          v32 = self->_videoDevice;
          CMTimeMake(v42, 1, rate);
          [(AVCaptureDevice *)v32 setActiveVideoMinFrameDuration:?];
          v33 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            maxFrameRate = [activeConfiguration2 maxFrameRate];
            activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            minFrameRate = [activeConfiguration3 minFrameRate];
            *v42 = 138544386;
            *&v42[4] = self;
            v43 = 2080;
            *v44 = "[CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:]";
            *&v44[8] = 1024;
            *&v44[10] = rate;
            *&v44[14] = 1024;
            *&v44[16] = maxFrameRate;
            v45 = 1024;
            v46 = minFrameRate;
            _os_log_impl(&dword_242545000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Setting Device MaxFrameRate to %u. _activeConfiguration.maxFrameRate: %u _activeConfiguration.minFrameRate: %u", v42, 0x28u);
          }

          [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
        }

        else
        {
          v38 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v41 = self->_videoDevice;
            *v42 = 138543874;
            *&v42[4] = self;
            v43 = 2112;
            *v44 = v41;
            *&v44[8] = 2112;
            *&v44[10] = v30;
            _os_log_error_impl(&dword_242545000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", v42, 0x20u);
          }
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self _updateControlStatus];
      }

      else
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setMaxFrameRate:v42];
        v30 = *v42;
      }

      goto LABEL_34;
    }

    v30 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self setMaxFrameRate:?];
    }
  }

  else
  {
    v30 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }

LABEL_34:
}

- (unsigned)minFrameRate
{
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  minFrameRate = [activeConfiguration minFrameRate];

  return minFrameRate;
}

- (void)setMinFrameRate:(unsigned int)rate
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      activeFormat2 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      videoSupportedFrameRateRanges = [activeFormat2 videoSupportedFrameRateRanges];

      v10 = [videoSupportedFrameRateRanges countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v49;
        rateCopy = rate;
        do
        {
          for (i = 0; i != v11; i = (i + 1))
          {
            if (*v49 != v13)
            {
              objc_enumerationMutation(videoSupportedFrameRateRanges);
            }

            v16 = *(*(&v48 + 1) + 8 * i);
            [v16 minFrameRate];
            if (v17 <= rateCopy)
            {
              [v16 maxFrameRate];
              if (v18 >= rateCopy)
              {
                v12 = 1;
              }
            }
          }

          v11 = [videoSupportedFrameRateRanges countByEnumeratingWithState:? objects:? count:?];
        }

        while (v11);

        if (v12)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        activeFormat3 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
        videoSupportedFrameRateRanges2 = [activeFormat3 videoSupportedFrameRateRanges];
        *v42 = 138543874;
        *&v42[4] = self;
        v43 = 1024;
        *v44 = rate;
        *&v44[4] = 2112;
        *&v44[6] = videoSupportedFrameRateRanges2;
        _os_log_error_impl(&dword_242545000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Unsupported min frame rate %u. Supported ranges: %@", v42, 0x1Cu);
      }

      activeFormat4 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      videoSupportedFrameRateRanges3 = [activeFormat4 videoSupportedFrameRateRanges];
      if (videoSupportedFrameRateRanges3)
      {
        activeFormat5 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
        videoSupportedFrameRateRanges4 = [activeFormat5 videoSupportedFrameRateRanges];
        if ([videoSupportedFrameRateRanges4 count])
        {
          activeFormat6 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
          videoSupportedFrameRateRanges5 = [activeFormat6 videoSupportedFrameRateRanges];
          lastObject = [videoSupportedFrameRateRanges5 lastObject];
          [lastObject minFrameRate];
          rate = v27;
        }

        else
        {
          rate = 0;
        }
      }

      else
      {
        rate = 0;
      }

LABEL_25:
      if (rate)
      {
        v28 = self->_videoDevice;
        v47 = 0;
        v29 = [(AVCaptureDevice *)v28 lockForConfiguration:?];
        v30 = v47;
        if (v29)
        {
          activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [activeConfiguration setMinFrameRate:?];

          v32 = self->_videoDevice;
          CMTimeMake(v42, 1, rate);
          [(AVCaptureDevice *)v32 setActiveVideoMaxFrameDuration:?];
          v33 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            maxFrameRate = [activeConfiguration2 maxFrameRate];
            activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            minFrameRate = [activeConfiguration3 minFrameRate];
            *v42 = 138544386;
            *&v42[4] = self;
            v43 = 2080;
            *v44 = "[CMContinuityCaptureRemoteVideoDevice setMinFrameRate:]";
            *&v44[8] = 1024;
            *&v44[10] = rate;
            *&v44[14] = 1024;
            *&v44[16] = maxFrameRate;
            v45 = 1024;
            v46 = minFrameRate;
            _os_log_impl(&dword_242545000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Setting Device MinFrameRate to %u. _activeConfiguration.maxFrameRate: %u _activeConfiguration.minFrameRate: %u", v42, 0x28u);
          }

          [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
        }

        else
        {
          v38 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v41 = self->_videoDevice;
            *v42 = 138543874;
            *&v42[4] = self;
            v43 = 2112;
            *v44 = v41;
            *&v44[8] = 2112;
            *&v44[10] = v30;
            _os_log_error_impl(&dword_242545000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", v42, 0x20u);
          }
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
      }

      else
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setMaxFrameRate:v42];
        v30 = *v42;
      }

      goto LABEL_34;
    }

    v30 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self setMaxFrameRate:?];
    }
  }

  else
  {
    v30 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }

LABEL_34:
}

- (void)setCenterStageEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (enabledCopy)
    {
      v7 = "Yes";
    }

    v10 = 138543618;
    selfCopy = self;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageEnabled: %s", &v10, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      if (enabledCopy)
      {
        if (self->_manualFramingFeatureFlagEnabled)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _disableManualFraming];
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self _enableCenterStage];
      }

      else
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self _disableCenterStage];
        if (self->_manualFramingFeatureFlagEnabled)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _enableManualFraming];
        }
      }
    }

    else
    {
      [CMContinuityCaptureRemoteVideoDevice setCenterStageEnabled:];
    }
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:];
  }
}

- (void)_enableManualFraming
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v2, *v7, *&v7[8], *&v7[16], v8, v9, v10);
  v4 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v4))
  {
    *v7 = 138543618;
    *&v7[4] = self;
    *&v7[12] = 2080;
    *&v7[14] = "[CMContinuityCaptureRemoteVideoDevice _enableManualFraming]";
    OUTLINED_FUNCTION_11_0(&dword_242545000, v1, v5, "%{public}@ %s Attempted to enable Manual Framing while Center Stage is active. Please disable Center Stage first", v7);
  }
}

- (void)_disableManualFraming
{
  OUTLINED_FUNCTION_29();
  videoDevice = [v0 videoDevice];
  localizedName = [videoDevice localizedName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_enableCenterStage
{
  OUTLINED_FUNCTION_29();
  videoDevice = [v0 videoDevice];
  localizedName = [videoDevice localizedName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_disableCenterStage
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  [MEMORY[0x277CE5AC8] setCenterStageControlMode:?];
  [MEMORY[0x277CE5AC8] setCenterStageEnabled:?];

  [(CMContinuityCaptureRemoteVideoDevice *)self _updateControlStatus];
}

- (void)setCenterStageRectOfInterest:(id)interest
{
  interestCopy = interest;
  v5 = *(MEMORY[0x277CBF398] + 16);
  rect.origin = *MEMORY[0x277CBF398];
  rect.size = v5;
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2112;
    v15 = interestCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ centerStageRectOfInterest: %@", &v12, 0x16u);
  }

  if (self->_videoDevice && [(CMContinuityCaptureRemoteVideoDevice *)self centerStageEnabled]&& CGRectMakeWithDictionaryRepresentation(interestCopy, &rect))
  {
    videoDevice = self->_videoDevice;
    v18 = 0;
    v8 = [(AVCaptureDevice *)videoDevice lockForConfiguration:?];
    v9 = v18;
    if (v8)
    {
      [(AVCaptureDevice *)self->_videoDevice setCenterStageRectOfInterest:?];
      [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_videoDevice;
        v12 = 138543874;
        selfCopy2 = self;
        v14 = 2112;
        v15 = v11;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_242545000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v12, 0x20u);
      }
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setCenterStageRectOfInterest:];
    }
  }
}

- (int64_t)centerStageFramingMode
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = MEMORY[0x277CE5AC8];

  return [v3 centerStageFramingMode];
}

- (void)setCenterStageFramingMode:(int64_t)mode
{
  modeCopy = mode;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  [MEMORY[0x277CE5AC8] setCenterStageFramingMode:?];
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 1024;
    v10 = modeCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ centerStageFramingMode: %d", &v7, 0x12u);
  }
}

- (BOOL)suppressVideoEffects
{
  captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  v2CaptureSession = [captureSession captureSession];
  suppressVideoEffects = [v2CaptureSession suppressVideoEffects];

  return suppressVideoEffects;
}

- (void)setSuppressVideoEffects:(BOOL)effects
{
  effectsCopy = effects;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (effectsCopy)
    {
      v7 = "Yes";
    }

    v18 = 138543618;
    selfCopy2 = self;
    v20 = 2080;
    v21 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ SuppressVideoEffects: %s", &v18, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v10 = self->_videoDevice;
      v24 = 0;
      v11 = [(AVCaptureDevice *)v10 lockForConfiguration:?];
      v12 = v24;
      if (v11)
      {
        captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        v13CaptureSession = [captureSession captureSession];
        [v13CaptureSession setSuppressVideoEffects:?];

        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setSuppressVideoEffects:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = self->_videoDevice;
          v18 = 138543874;
          selfCopy2 = self;
          v20 = 2112;
          v21 = v17;
          v22 = 2112;
          v23 = v12;
          _os_log_error_impl(&dword_242545000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v18, 0x20u);
        }
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setPortraitEffect:(BOOL)effect
{
  effectCopy = effect;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (effectCopy)
    {
      v7 = "Yes";
    }

    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ PortraitEffect: %s", &v16, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v10 = self->_videoDevice;
      v22 = 0;
      v11 = [(AVCaptureDevice *)v10 lockForConfiguration:?];
      v12 = v22;
      if (v11)
      {
        [MEMORY[0x277CE5AC8] setBackgroundBlurControlMode:?];
        [MEMORY[0x277CE5AC8] setBackgroundBlurEnabled:?];
        [MEMORY[0x277CE5AC8] isBackgroundBlurEnabled];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setPortraitEffectEnabled:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v14 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_videoDevice;
          v16 = 138543874;
          selfCopy2 = self;
          v18 = 2112;
          v19 = v15;
          v20 = 2112;
          v21 = v12;
          _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v16, 0x20u);
        }
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setPortraitEffectAperture:(float)aperture
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy2 = self;
    v17 = 2048;
    apertureCopy = aperture;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ portraitEffectAperture: %f", &v15, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v9 = self->_videoDevice;
      v21 = 0;
      v10 = [(AVCaptureDevice *)v9 lockForConfiguration:?];
      v11 = v21;
      if (v10)
      {
        [MEMORY[0x277CE5AC8] setBackgroundBlurAperture:?];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setPortraitEffectAperture:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v13 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_videoDevice;
          v15 = 138543874;
          selfCopy2 = self;
          v17 = 2112;
          apertureCopy = *&v14;
          v19 = 2112;
          v20 = v11;
          _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v15, 0x20u);
        }
      }
    }

    else
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setStudioLighting:(BOOL)lighting
{
  lightingCopy = lighting;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (lightingCopy)
    {
      v7 = "Yes";
    }

    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ StudioLighting: %s", &v16, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v10 = self->_videoDevice;
      v22 = 0;
      v11 = [(AVCaptureDevice *)v10 lockForConfiguration:?];
      v12 = v22;
      if (v11)
      {
        [MEMORY[0x277CE5AC8] setStudioLightingEnabled:?];
        [MEMORY[0x277CE5AC8] isStudioLightEnabled];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setStudioLightingEnabled:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v14 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_videoDevice;
          v16 = 138543874;
          selfCopy2 = self;
          v18 = 2112;
          v19 = v15;
          v20 = 2112;
          v21 = v12;
          _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v16, 0x20u);
        }
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setStudioLightingIntensity:(float)intensity
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v7 = self->_videoDevice;
      v19 = 0;
      v8 = [(AVCaptureDevice *)v7 lockForConfiguration:?];
      v9 = 0;
      if (v8)
      {
        [MEMORY[0x277CE5AC8] setStudioLightingIntensity:?];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setStudioLightingIntensity:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = self->_videoDevice;
          v13 = 138543874;
          selfCopy = self;
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v13, 0x20u);
        }
      }
    }

    else
    {
      v9 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setReactionEffects:(BOOL)effects
{
  effectsCopy = effects;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (effectsCopy)
    {
      v7 = "Yes";
    }

    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffects: %s", &v16, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v10 = self->_videoDevice;
      v22 = 0;
      v11 = [(AVCaptureDevice *)v10 lockForConfiguration:?];
      v12 = v22;
      if (v11)
      {
        [MEMORY[0x277CE5AC8] setReactionEffectsEnabled:?];
        [MEMORY[0x277CE5AC8] reactionEffectsEnabled];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setReactionEffectsEnabled:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v14 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_videoDevice;
          v16 = 138543874;
          selfCopy2 = self;
          v18 = 2112;
          v19 = v15;
          v20 = 2112;
          v21 = v12;
          _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v16, 0x20u);
        }
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setReactionEffectGesturesEnabled:(float)enabled
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v7 = self->_videoDevice;
      v19 = 0;
      v8 = [(AVCaptureDevice *)v7 lockForConfiguration:?];
      v9 = 0;
      if (v8)
      {
        [MEMORY[0x277CE5AC8] setReactionEffectGesturesEnabled:?];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setReactionEffectGesturesEnabled:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = self->_videoDevice;
          v13 = 138543874;
          selfCopy = self;
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v13, 0x20u);
        }
      }
    }

    else
    {
      v9 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setReactionEffectSuppressedGesturesEnabled:(float)enabled
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v7 = self->_videoDevice;
      v19 = 0;
      v8 = [(AVCaptureDevice *)v7 lockForConfiguration:?];
      v9 = 0;
      if (v8)
      {
        [MEMORY[0x277CE5AC8] setReactionEffectSuppressedGesturesEnabled:?];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setReactionEffectSuppressedGesturesEnabled:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = self->_videoDevice;
          v13 = 138543874;
          selfCopy = self;
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v13, 0x20u);
        }
      }
    }

    else
    {
      v9 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setBackgroundReplacement:(BOOL)replacement
{
  replacementCopy = replacement;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (replacementCopy)
    {
      v7 = "Yes";
    }

    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ BackgroundReplacement: %s", &v16, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v10 = self->_videoDevice;
      v22 = 0;
      v11 = [(AVCaptureDevice *)v10 lockForConfiguration:?];
      v12 = v22;
      if (v11)
      {
        [MEMORY[0x277CE5AC8] setBackgroundReplacementEnabled:?];
        [MEMORY[0x277CE5AC8] isBackgroundReplacementEnabled];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setBackgroundReplacementEnabled:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v14 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_videoDevice;
          v16 = 138543874;
          selfCopy2 = self;
          v18 = 2112;
          v19 = v15;
          v20 = 2112;
          v21 = v12;
          _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v16, 0x20u);
        }
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setBackgroundReplacementPixelBuffer:(__CVBuffer *)buffer
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    activeFormat = [(AVCaptureDevice *)videoDevice activeFormat];

    if (activeFormat)
    {
      v7 = self->_videoDevice;
      v19 = 0;
      v8 = [(AVCaptureDevice *)v7 lockForConfiguration:?];
      v9 = 0;
      if (v8)
      {
        [MEMORY[0x277CE5AC8] setBackgroundReplacementPixelBuffer:?];
        activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [activeConfiguration setBackgroundReplacementPixelBuffer:?];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = self->_videoDevice;
          v13 = 138543874;
          selfCopy = self;
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v13, 0x20u);
        }
      }
    }

    else
    {
      v9 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice setSuppressVideoEffects:];
      }
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)_configureVideoEffects
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_avfDeviceTypeForManualFramingDeviceType:(int64_t)type
{
  if (type == 2)
  {
    v3 = MEMORY[0x277CE5870];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = MEMORY[0x277CE5878];
LABEL_5:
    v4 = *v3;
    goto LABEL_9;
  }

  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMContinuityCaptureRemoteVideoDevice _avfDeviceTypeForManualFramingDeviceType:];
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (BOOL)_isUltraWideCameraSupported
{
  CMContinuityCaptureDevicePosition(self, a2);
  v2 = MEMORY[0x277CE5AD0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v4 = [v2 discoverySessionWithDeviceTypes:? mediaType:? position:?];

  devices = [v4 devices];
  LOBYTE(v3) = [devices count] != 0;

  return v3;
}

- (id)_selectVideoDeviceForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking])
  {
    v29 = *MEMORY[0x277CE5878];
    v5 = MEMORY[0x277CBEA60];
  }

  else if (([configurationCopy centerStageEnabled] & 1) != 0 || objc_msgSend(configurationCopy, "isCenterStageForcefullyEnabled"))
  {
    if (self->_manualFramingFeatureFlagEnabled)
    {
      if (self->_isUltraWideCameraSupported)
      {
        if ([configurationCopy centerStageFieldOfViewRestrictedToWide])
        {
          v28 = *MEMORY[0x277CE5878];
        }

        else
        {
          v27 = *MEMORY[0x277CE5870];
        }

        v5 = MEMORY[0x277CBEA60];
      }

      else
      {
        v26 = *MEMORY[0x277CE5878];
        v5 = MEMORY[0x277CBEA60];
      }
    }

    else
    {
      if (self->_isUltraWideCameraSupported)
      {
        v25 = *MEMORY[0x277CE5870];
      }

      else
      {
        v24 = *MEMORY[0x277CE5878];
      }

      v5 = MEMORY[0x277CBEA60];
    }
  }

  else if (self->_manualFramingFeatureFlagEnabled)
  {
    if ([configurationCopy manualFramingDeviceType])
    {
      [configurationCopy manualFramingDeviceType];
      v13 = [(CMContinuityCaptureRemoteVideoDevice *)self _avfDeviceTypeForManualFramingDeviceType:?];
      v14 = v13;
      if (v13)
      {
        v23 = v13;
      }

      else
      {
        v22 = *MEMORY[0x277CE5878];
      }

      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

      goto LABEL_4;
    }

    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v20 = 2080;
      v21 = "[CMContinuityCaptureRemoteVideoDevice _selectVideoDeviceForConfiguration:]";
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Host side doesn't support Manual Framing", buf, 0x16u);
    }

    v17 = *MEMORY[0x277CE5878];
    v5 = MEMORY[0x277CBEA60];
  }

  else
  {
    v16 = *MEMORY[0x277CE5878];
    v5 = MEMORY[0x277CBEA60];
  }

  v6 = [v5 arrayWithObjects:v16 count:v17];
  v8 = v6;
LABEL_4:
  CMContinuityCaptureDevicePosition(v6, v7);
  v9 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:? mediaType:? position:?];
  devices = [v9 devices];
  firstObject = [devices firstObject];

  return firstObject;
}

- (id)connectionsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    *buf = 138544130;
    selfCopy4 = self;
    v73 = 2114;
    v74 = configurationCopy;
    v75 = 2112;
    *v76 = companionDevice;
    *&v76[8] = 1024;
    LODWORD(v77) = [companionDevice2 streaming];
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ connections for configuration %{public}@ companionDevice %@ streaming %d", buf, 0x26u);
  }

  v10 = [(CMContinuityCaptureRemoteVideoDevice *)self _selectVideoDeviceForConfiguration:?];
  [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDevice:?];

  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    videoDevice = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
    localizedName = [videoDevice localizedName];
    isGazeSelectionEnabled = [(CMContinuityCaptureRemoteVideoDevice *)self isGazeSelectionEnabled];
    *buf = 138544386;
    selfCopy4 = self;
    v73 = 2080;
    v74 = "[CMContinuityCaptureRemoteVideoDevice connectionsForConfiguration:]";
    v75 = 2112;
    *v76 = localizedName;
    *&v76[8] = 2112;
    v77 = configurationCopy;
    v78 = 1024;
    v79 = isGazeSelectionEnabled;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Selected device %@ for configuration %@ with gazeSelectionEnabled %d", buf, 0x30u);
  }

  if (!self->_videoDevice)
  {
    v59 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v59, v3, v60, v61, v62, v63, v65, v66);
    p_super = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      deviceType = [(AVCaptureDevice *)self->_videoDevice deviceType];
      centerStageEnabled = [configurationCopy centerStageEnabled];
      isCenterStageForcefullyEnabled = [configurationCopy isCenterStageForcefullyEnabled];
      *buf = 138544130;
      selfCopy4 = self;
      v73 = 2112;
      v74 = deviceType;
      v75 = 1024;
      *v76 = centerStageEnabled;
      *&v76[4] = 1024;
      *&v76[6] = isCenterStageForcefullyEnabled;
      _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ Could not find back camera with device type: %@, enableCenterStage: %d isCenterStageForcefullyEnabled: %d ", buf, 0x22u);
    }

    v33 = 0;
    v45 = 0;
    v64 = 0;
    v20 = 0;
    goto LABEL_29;
  }

  [(CMContinuityCaptureRemoteVideoDevice *)self isGazeSelectionEnabled];
  videoDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
  [videoDevice2 setGazeSelectionEnabled:?];

  deviceType2 = [(AVCaptureDevice *)self->_videoDevice deviceType];
  if ([deviceType2 isEqualToString:?])
  {
    companionDevice3 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    if ([companionDevice3 streaming])
    {
    }

    else
    {
      isCenterStageForcefullyEnabled2 = [configurationCopy isCenterStageForcefullyEnabled];

      if (!isCenterStageForcefullyEnabled2)
      {
        goto LABEL_12;
      }
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self setFaceDrivenAFActive:?];
    deviceType2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [deviceType2 deskViewCameraMode];
    [(CMContinuityCaptureRemoteVideoDevice *)self setDeskViewCameraMode:?];
  }

LABEL_12:
  v19 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:? error:?];
  v20 = 0;
  videoDataInput = self->_videoDataInput;
  self->_videoDataInput = v19;

  if (!self->_videoDataInput)
  {
    p_super = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice connectionsForConfiguration:];
    }

    v33 = 0;
    v45 = 0;
    v64 = 0;
LABEL_29:
    v49 = 0;
    v35 = v65;
    goto LABEL_21;
  }

  v67 = configurationCopy;
  v22 = objc_alloc_init(MEMORY[0x277CE5B60]);
  videoDataOutput = self->_videoDataOutput;
  self->_videoDataOutput = v22;

  v24 = self->_videoDataOutput;
  queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
  [AVCaptureVideoDataOutput setSampleBufferDelegate:v24 queue:"setSampleBufferDelegate:queue:"];

  CMContinuityCaptureDevicePosition(v26, v27);
  v28 = self->_videoDataInput;
  deviceType3 = [(AVCaptureDevice *)self->_videoDevice deviceType];
  v30 = [AVCaptureDeviceInput portsWithMediaType:v28 sourceDeviceType:"portsWithMediaType:sourceDeviceType:sourceDevicePosition:" sourceDevicePosition:?];

  v64 = v30;
  if ([v30 count])
  {
    v31 = MEMORY[0x277CE5AB0];
    firstObject = [v30 firstObject];
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v33 = [v31 connectionWithInputPorts:? output:?];

    [v33 isVideoDeviceOrientationCorrectionSupported];
    [v33 setVideoDeviceOrientationCorrectionEnabled:?];
    objc_storeStrong(&self->_videoDataConnection, v33);
    v34 = v30;
    v35 = v65;
    [v65 addObject:?];
    if ([configurationCopy asyncStillCaptureEnabled])
    {
      v36 = objc_alloc_init(MEMORY[0x277CE5B28]);
      photoOutput = self->_photoOutput;
      self->_photoOutput = v36;

      v38 = MEMORY[0x277CE5AB0];
      firstObject2 = [v34 firstObject];
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v35 = v65;
      v40 = [v38 connectionWithInputPorts:? output:?];

      configurationCopy = v67;
      [(AVCaptureConnection *)self->_videoDataConnection isVideoDeviceOrientationCorrectionEnabled];
      [v40 setVideoDeviceOrientationCorrectionEnabled:?];
      [v65 addObject:?];
      v33 = v40;
    }

    if (([configurationCopy faceDetectionEnabled] & 1) != 0 || (objc_msgSend(configurationCopy, "humanBodyDetectionEnabled") & 1) != 0 || objc_msgSend(configurationCopy, "humanFullBodyDetectionEnabled"))
    {
      v41 = objc_alloc_init(MEMORY[0x277CE5B00]);
      metadataOutput = self->_metadataOutput;
      self->_metadataOutput = v41;

      v43 = self->_videoDataInput;
      deviceType4 = [(AVCaptureDevice *)self->_videoDevice deviceType];
      v45 = [AVCaptureDeviceInput portsWithMediaType:v43 sourceDeviceType:"portsWithMediaType:sourceDeviceType:sourceDevicePosition:" sourceDevicePosition:?];

      v46 = MEMORY[0x277CE5AB0];
      firstObject3 = [v45 firstObject];
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v48 = [v46 connectionWithInputPorts:? output:?];

      configurationCopy = v67;
      [v35 addObject:?];
      v33 = v48;
    }

    else
    {
      v45 = 0;
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self _configureVideoEffects];
    v49 = v35;
    p_super = &self->_connections->super;
    self->_connections = v49;
  }

  else
  {
    p_super = CMContinuityCaptureLog(2);
    v35 = v65;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v56 = v20;
      v57 = self->_videoDataInput;
      deviceType5 = [(AVCaptureDevice *)self->_videoDevice deviceType];
      *buf = 138543874;
      selfCopy4 = self;
      v73 = 2112;
      v74 = v57;
      v20 = v56;
      v75 = 2112;
      *v76 = deviceType5;
      _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get video input ports for input %@ and device type %@", buf, 0x20u);
    }

    v33 = 0;
    v45 = 0;
    v49 = 0;
  }

LABEL_21:

  v51 = v49;
  return v49;
}

- (unsigned)throttledMaxFrameRate
{
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  maxFrameRate = [activeConfiguration maxFrameRate];

  return maxFrameRate;
}

- (void)setMinFrameDurationOverrideIfApplicable
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    streaming = [(CMContinuityCaptureDeviceBase *)self streaming];
    videoDataInput = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
    videoDevice = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
    companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    LODWORD(buf.value) = 138544898;
    *(&buf.value + 4) = self;
    LOWORD(buf.flags) = 2080;
    *(&buf.flags + 2) = "[CMContinuityCaptureRemoteVideoDevice setMinFrameDurationOverrideIfApplicable]";
    HIWORD(buf.epoch) = 1024;
    v27 = streaming;
    v28 = 2112;
    v29 = videoDataInput;
    v30 = 2112;
    v31 = videoDevice;
    v32 = 2114;
    v33 = companionDevice;
    v34 = 1024;
    streaming2 = [companionDevice2 streaming];
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ streaming %s streaming %d %@ %@ companionDevice %{public}@ streaming %d", &buf, 0x40u);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  videoDataInput2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
  if (videoDataInput2)
  {
    videoDataInput4 = videoDataInput2;
    videoDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
    if (videoDevice2)
    {
      v13 = videoDevice2;
      streaming3 = [(CMContinuityCaptureDeviceBase *)self streaming];

      if (!streaming3)
      {
        return;
      }

      videoDevice3 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
      deviceType = [videoDevice3 deviceType];
      v17 = deviceType;
      if (deviceType == *MEMORY[0x277CE5878])
      {
        companionDevice3 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
        streaming4 = [companionDevice3 streaming];

        if (streaming4)
        {
          v20 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.value) = 138543362;
            *(&buf.value + 4) = self;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting videoMinFrameDurationOverride", &buf, 0xCu);
          }

          compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
          frameRateManager = [compositeDelegate frameRateManager];
          videoDataInput4 = [frameRateManager allowedFrameRateRangeForDevice:?];

          maxFrameRate = [videoDataInput4 maxFrameRate];
          CMTimeMake(&v25, 1, [maxFrameRate unsignedIntValue]);
          videoDataInput3 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
          buf = v25;
          [videoDataInput3 setVideoMinFrameDurationOverride:?];

          goto LABEL_13;
        }
      }

      else
      {
      }

      videoDataInput4 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
      buf = **&MEMORY[0x277CC0898];
      [videoDataInput4 setVideoMinFrameDurationOverride:?];
    }

LABEL_13:
  }
}

- (id)compatibleDeviceFormatForMaxFrameRate:(unsigned int)rate minFrameRate:(unsigned int)frameRate
{
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:{MEMORY[0x277D85DD0], 3221225472, __91__CMContinuityCaptureRemoteVideoDevice_compatibleDeviceFormatForMaxFrameRate_minFrameRate___block_invoke, &unk_278D5CCA0, self, __PAIR64__(rate, frameRate)}];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  formats = [(AVCaptureDevice *)self->_videoDevice formats];
  v8 = [formats filteredArrayUsingPredicate:?];
  v9 = [v6 initWithArray:?];

  [v9 sortUsingComparator:?];
  firstObject = [v9 firstObject];

  return firstObject;
}

void *__91__CMContinuityCaptureRemoteVideoDevice_compatibleDeviceFormatForMaxFrameRate_minFrameRate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 activeConfiguration];
  v6 = [*(a1 + 32) captureSession];
  [v6 isMulticamSession];
  v7 = [v3 _deviceFormat:? isCompatibleWithConfiguration:? requiringMultiCamSupport:? minFrameRate:? maxFrameRate:?];

  return v7;
}

uint64_t __91__CMContinuityCaptureRemoteVideoDevice_compatibleDeviceFormatForMaxFrameRate_minFrameRate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isVideoHDRSupported] && !objc_msgSend(v5, "isVideoHDRSupported"))
  {
    goto LABEL_7;
  }

  if ([v4 isVideoHDRSupported] & 1) == 0 && (objc_msgSend(v5, "isVideoHDRSupported"))
  {
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (([v4 isVideoBinned] & 1) != 0 || (objc_msgSend(v5, "isVideoBinned") & 1) == 0)
  {
    if (![v4 isVideoBinned] || objc_msgSend(v5, "isVideoBinned"))
    {
      v6 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_7:
  v6 = -1;
LABEL_12:

  return v6;
}

- (BOOL)_deviceFormat:(id)format isCompatibleWithConfiguration:(id)configuration requiringMultiCamSupport:(BOOL)support minFrameRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate
{
  supportCopy = support;
  formatCopy = format;
  configurationCopy = configuration;
  if (CMContinityCaptureDebugLogEnabled(configurationCopy, v13))
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CMContinuityCaptureRemoteVideoDevice _deviceFormat:formatCopy isCompatibleWithConfiguration:? requiringMultiCamSupport:? minFrameRate:? maxFrameRate:?];
    }
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([formatCopy formatDescription]);
  format = [configurationCopy format];
  if ([format width] == Dimensions)
  {
    format2 = [configurationCopy format];
    height = [format2 height];

    if (height == (Dimensions >> 32))
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType([formatCopy formatDescription]);
      format3 = [configurationCopy format];
      pixelFormat = [format3 pixelFormat];

      if (MediaSubType == pixelFormat)
      {
        videoSupportedFrameRateRanges = [formatCopy videoSupportedFrameRateRanges];
        firstObject = [videoSupportedFrameRateRanges firstObject];
        [firstObject maxFrameRate];
        v25 = v24;

        if (v25 >= frameRate && (([configurationCopy centerStageEnabled] & 1) == 0 && (!objc_msgSend(configurationCopy, "isCenterStageForcefullyEnabled") || -[CMContinuityCaptureDeviceBase entity](self, "entity") == 2) || objc_msgSend(formatCopy, "isCenterStageSupported")) && (!objc_msgSend(configurationCopy, "manualFramingDeviceType") || objc_msgSend(formatCopy, "isManualFramingSupported")) && (!objc_msgSend(configurationCopy, "studioLightingEnabled") || objc_msgSend(formatCopy, "isStudioLightSupported")) && (!objc_msgSend(configurationCopy, "reactionEffectsEnabled") || objc_msgSend(formatCopy, "reactionEffectsSupported")) && (!objc_msgSend(configurationCopy, "backgroundReplacementEnabled") || objc_msgSend(formatCopy, "isBackgroundReplacementSupported")) && (!supportCopy || objc_msgSend(formatCopy, "isMultiCamSupported")))
        {
          v26 = 1;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
  }

  v26 = 0;
LABEL_14:

  return v26;
}

- (void)_toggleBetweenCenterStageAndManualFraming
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_manualFramingFeatureFlagEnabled)
  {
    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([activeConfiguration manualFramingDeviceType] == 1)
    {
      activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      centerStageFieldOfViewRestrictedToWide = [activeConfiguration2 centerStageFieldOfViewRestrictedToWide];
    }

    else
    {
      centerStageFieldOfViewRestrictedToWide = 0;
    }

    activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([activeConfiguration3 manualFramingDeviceType] == 2)
    {
      activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v9 = [activeConfiguration4 centerStageFieldOfViewRestrictedToWide] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([activeConfiguration5 centerStageEnabled])
    {

      if ((centerStageFieldOfViewRestrictedToWide | v9))
      {
        captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [captureSession willConfigure];

        goto LABEL_16;
      }
    }

    else
    {
      activeConfiguration6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      isCenterStageForcefullyEnabled = [activeConfiguration6 isCenterStageForcefullyEnabled];

      if ((centerStageFieldOfViewRestrictedToWide | v9))
      {
        captureSession2 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [captureSession2 willConfigure];

        if ((isCenterStageForcefullyEnabled & 1) == 0)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _disableCenterStage];
          if (self->_manualFramingFeatureFlagEnabled)
          {
            [(CMContinuityCaptureRemoteVideoDevice *)self _enableManualFraming];
          }

          v15 = CMContinuityCaptureLog(2);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          videoDevice = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
          deviceType = [videoDevice deviceType];
          [(AVCaptureDevice *)self->_videoDevice manualFramingPanningAngleX];
          v23 = v22;
          [(AVCaptureDevice *)self->_videoDevice manualFramingPanningAngleY];
          v25 = v24;
          [(CMContinuityCaptureRemoteVideoDevice *)self videoZoomFactor];
          *buf = 138544386;
          selfCopy2 = self;
          v33 = 2112;
          v34 = deviceType;
          v35 = 2048;
          v36 = v23;
          v37 = 2048;
          v38 = v25;
          v39 = 2048;
          v40 = v26;
          _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition from Center Stage to Manual Framing (both on %@). Setting panning angle x: %f, y: %f, zoom factor %f", buf, 0x34u);
          goto LABEL_27;
        }

LABEL_16:
        if (self->_manualFramingFeatureFlagEnabled)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _disableManualFraming];
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self _enableCenterStage];
        v15 = CMContinuityCaptureLog(2);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        videoDevice = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
        deviceType = [videoDevice deviceType];
        [(CMContinuityCaptureRemoteVideoDevice *)self centerStageRectOfInterest];
        v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [(CMContinuityCaptureRemoteVideoDevice *)self videoZoomFactor];
        *buf = 138544130;
        selfCopy2 = self;
        v33 = 2112;
        v34 = deviceType;
        v35 = 2112;
        v36 = v18;
        v37 = 2048;
        v38 = v19;
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition from Manual Framing to Center Stage (both on %@). Setting CS RoI %@, zoom factor to %f", buf, 0x2Au);

LABEL_27:
LABEL_28:

        captureSession3 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [captureSession3 didConfigure];

        captureSession4 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [captureSession4 start];

        return;
      }

      if (!isCenterStageForcefullyEnabled)
      {
        v20 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v21 = "Transition from Center Stage to Manual Framing on a different camera. Rebuilding the camera stack.";
          goto LABEL_31;
        }

LABEL_32:

        compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
        [(CMContinuityCaptureDeviceBase *)self entity];
        [compositeDelegate postEvent:? entity:? data:?];

        return;
      }
    }

    v20 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "Transition from Manual Framing to Center Stage on a different camera. Rebuilding the camera stack.";
LABEL_31:
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  [(CMContinuityCaptureDeviceBase *)self entity];
  [compositeDelegate2 postEvent:? entity:? data:?];
}

- (void)_updateManualFramingDeviceType:(int64_t)type
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration setManualFramingDeviceType:?];

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureRemoteVideoDevice _updateManualFramingDeviceType:]";
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Resetting Manual Framing states due to device type change", &v11, 0x16u);
  }

  activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration2 setPanningAngleX:?];

  activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration3 setPanningAngleY:?];

  activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration4 setVideoZoomFactor:?];

  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  [(CMContinuityCaptureDeviceBase *)self entity];
  [compositeDelegate postEvent:? entity:? data:?];
}

- (void)tearDownConnectionsWithVideoDataConnectionDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 1024;
    v15 = disabledCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ tearDownConnectionsWithVideoDataConnectionDisabled %d", &v12, 0x12u);
  }

  if (!disabledCopy)
  {
    photoOutput = self->_photoOutput;
    self->_photoOutput = 0;

    metadataOutput = self->_metadataOutput;
    self->_metadataOutput = 0;

    videoDataInput = self->_videoDataInput;
    self->_videoDataInput = 0;

    videoDataOutput = self->_videoDataOutput;
    self->_videoDataOutput = 0;

    videoDataConnection = self->_videoDataConnection;
    self->_videoDataConnection = 0;

    connections = self->_connections;
    self->_connections = 0;

    [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDevice:?];
  }
}

- (void)_forcefullyEnableCenterStageOnSuperWide
{
  isDockedTrackingEnabled = [(CMContinuityCaptureRemoteVideoDevice *)self isDockedTrackingEnabled];
  activeConfiguration4 = CMContinuityCaptureLog(2);
  v5 = os_log_type_enabled(activeConfiguration4, OS_LOG_TYPE_DEFAULT);
  if (isDockedTrackingEnabled)
  {
    if (v5)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_242545000, activeConfiguration4, OS_LOG_TYPE_DEFAULT, "Docked tracking is enabled, do not forcefully enable Center Stage as requested", &v16, 2u);
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v16 = 138543618;
    selfCopy4 = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
    _os_log_impl(&dword_242545000, activeConfiguration4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Forcefully enable Center Stage on the default video camera as requested", &v16, 0x16u);
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration forcefulCenterStageEnablementType];
  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  activeConfiguration2 = [companionDevice activeConfiguration];
  [activeConfiguration2 setForcefulCenterStageEnablementType:?];

  activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  forcefulCenterStageEnablementType = [activeConfiguration3 forcefulCenterStageEnablementType];

  if (forcefulCenterStageEnablementType == 2)
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy4 = self;
      v18 = 2080;
      v19 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      v15 = "%{public}@ %s [forceful CS enablement] Already running Center Stage on the wide, switching to the super wide";
      goto LABEL_13;
    }

LABEL_14:

    [(CMContinuityCaptureRemoteVideoDevice *)self setShouldRestoreCenterStageOnWideCamera:?];
    activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration4 setCenterStageFieldOfViewRestrictedToWide:?];
LABEL_15:

    return;
  }

  if (forcefulCenterStageEnablementType == 1)
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy4 = self;
      v18 = 2080;
      v19 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Switching from Manual Framing to Center Stage", &v16, 0x16u);
    }

    activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    centerStageFieldOfViewRestrictedToWide = [activeConfiguration5 centerStageFieldOfViewRestrictedToWide];

    if (centerStageFieldOfViewRestrictedToWide)
    {
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        selfCopy4 = self;
        v18 = 2080;
        v19 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        v15 = "%{public}@ %s [forceful CS enablement] Switching to the super wide";
LABEL_13:
        _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, v15, &v16, 0x16u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }
}

- (BOOL)stopCameraCaptureStack:(unint64_t)stack
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138544130;
    *&v9[4] = self;
    v10 = 2048;
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v12 = 2080;
    v13 = "[CMContinuityCaptureRemoteVideoDevice stopCameraCaptureStack:]";
    v14 = 2048;
    stackCopy = stack;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] %s option: %lu", v9, 0x2Au);
  }

  if (self->_captureStackActive)
  {
    if ((stack & 0x10) != 0)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543618;
        *&v9[4] = self;
        v10 = 2080;
        currentSessionID = "[CMContinuityCaptureRemoteVideoDevice stopCameraCaptureStack:]";
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s skip anticipating reconnect", v9, 0x16u);
      }

      goto LABEL_7;
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self stopCameraCaptureStack:stack, &self->_captureStackActive];
  }

  if (([(CMContinuityCaptureRemoteVideoDevice *)stack stopCameraCaptureStack:v9]& 1) != 0)
  {
    return 1;
  }

  v7 = *v9;
LABEL_7:

  return 1;
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v2 invalidate];
  [CMContinuityCaptureRemoteCompositeDevice setWombatMode:?];
}

- (void)addVideoDeviceKVOs
{
  videoDevice = self->_videoDevice;
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  [AVCaptureDevice addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];

  [AVCaptureDevice addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
  [AVCaptureDevice addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
  [AVCaptureDevice addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
  [MEMORY[0x277CE5AC8] addObserver:? forKeyPath:? options:? context:?];
  [MEMORY[0x277CE5AC8] addObserver:? forKeyPath:? options:? context:?];
  compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  frameRateManager = [compositeDelegate2 frameRateManager];
  [frameRateManager addObserver:? forKeyPath:? options:? context:?];

  [CMContinuityCaptureRemoteVideoDevice addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
  self->_videoDeviceKVOsActive = 1;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_videoDevice;
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ KVOs are active on %{public}@", &v9, 0x16u);
  }
}

- (void)removeVideoDeviceKVOs
{
  if (self->_videoDeviceKVOsActive)
  {
    videoDevice = self->_videoDevice;
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    [AVCaptureDevice removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];

    [AVCaptureDevice removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];
    [AVCaptureDevice removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];
    [AVCaptureDevice removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];
    [MEMORY[0x277CE5AC8] removeObserver:? forKeyPath:? context:?];
    [MEMORY[0x277CE5AC8] removeObserver:? forKeyPath:? context:?];
    compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    frameRateManager = [compositeDelegate2 frameRateManager];
    [frameRateManager removeObserver:? forKeyPath:? context:?];

    [CMContinuityCaptureRemoteVideoDevice removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];
    self->_videoDeviceKVOsActive = 0;
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_videoDevice;
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 2112;
      v14 = v8;
      v9 = "%{public}@ KVOs removed on %@{public}@";
LABEL_6:
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x16u);
    }
  }

  else
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_videoDevice;
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 2114;
      v14 = v10;
      v9 = "%{public}@ KVOs for _videoDevice %{public}@ are inactive";
      goto LABEL_6;
    }
  }
}

- (void)didStartStreamInput:(id)input
{
  inputCopy = input;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138544130;
    selfCopy = self;
    v9 = 2048;
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice didStartStreamInput:]";
    v13 = 2112;
    v14 = inputCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCInput setup complete %s %@", &v7, 0x2Au);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_avcStreamInputActive = 1;
}

- (void)didStopStreamInput:(id)input
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteVideoDevice didStopStreamInput:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_avcStreamInputActive = 0;
}

- (void)serverDidDie
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    selfCopy = self;
    v6 = 2080;
    v7 = "[CMContinuityCaptureRemoteVideoDevice serverDidDie]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v4, 0x16u);
  }
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  streamCopy = stream;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    selfCopy = self;
    v10 = 2080;
    v11 = "[CMContinuityCaptureRemoteVideoDevice stream:didStart:error:]";
    v12 = 2112;
    v13 = streamCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v8, 0x20u);
  }
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice streamDidStop:]";
    v13 = 2112;
    v14 = stopCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureRemoteVideoDevice_streamDidStop___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

uint64_t __54__CMContinuityCaptureRemoteVideoDevice_streamDidStop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[44];
    v7 = v2;
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = v7[44];
      v7[44] = 0;

      v2 = v7;
    }

    v5 = v2[34];
    v2[34] = 0;

    *(v7 + 344) = 0;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)streamDidServerDie:(id)die
{
  dieCopy = die;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice streamDidServerDie:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureRemoteVideoDevice_streamDidServerDie___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureRemoteVideoDevice_streamDidServerDie___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[34];
    WeakRetained[34] = 0;

    v2 = WeakRetained[33];
    WeakRetained[33] = 0;

    *(WeakRetained + 344) = 0;
    v3 = WeakRetained[44];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = WeakRetained[44];
      WeakRetained[44] = 0;
    }

    [WeakRetained postAVCStreamInterruption];
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
    v10 = "[CMContinuityCaptureRemoteVideoDevice postAVCStreamInterruption]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CMContinuityCaptureRemoteVideoDevice_postAVCStreamInterruption__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __65__CMContinuityCaptureRemoteVideoDevice_postAVCStreamInterruption__block_invoke(uint64_t a1)
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

- (void)streamDidRTPTimeOut:(id)out
{
  outCopy = out;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543874;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteVideoDevice streamDidRTPTimeOut:]";
    v10 = 2112;
    v11 = outCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%{public}@ %s %@", &v6, 0x20u);
  }
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice streamDidRTCPTimeOut:]";
    v13 = 2112;
    v14 = outCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%@ %s %@", buf, 0x20u);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CMContinuityCaptureRemoteVideoDevice_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, &location);
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __61__CMContinuityCaptureRemoteVideoDevice_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained postAVCStreamInterruption];
    WeakRetained = v2;
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  completionCopy = completion;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = *MEMORY[0x277CF3FC8];
  v10 = CMGetAttachment(frame, *MEMORY[0x277CF3FC8], 0);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:?];
    v13 = v12;
    if (v12)
    {
      point.x = NAN;
      point.y = NAN;
      CGPointMakeWithDictionaryRepresentation(v12, &point);
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = self;
        v39 = 2048;
        x = point.x;
        v41 = 2048;
        y = point.y;
        _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating local activeConfiguration panning angle x:%f,y:%f based on transport layer attachments", buf, 0x20u);
      }

      activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration setPanningAngleX:?];

      activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration2 setPanningAngleY:?];
    }

    v17 = [v11 objectForKeyedSubscript:?];
    if (v17)
    {
      v18 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        [v17 floatValue];
        *buf = 134217984;
        *&buf[4] = v19;
        _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "Updating local activeConfiguration video zoom factor to %f based on transport layer attachments", buf, 0xCu);
      }

      [v17 floatValue];
      activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration3 setVideoZoomFactor:?];
    }
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(frame);
  if (ImageBuffer)
  {
    v22 = CMGetAttachment(ImageBuffer, @"ReactionEffectComplexity", 0);
    if (v22)
    {
      v23 = *MEMORY[0x277CF6900];
      v24 = [v11 objectForKeyedSubscript:?];
      v25 = [v24 mutableCopy];

      if (v25)
      {
        [v25 setObject:? forKeyedSubscript:?];
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{@"ReactionEffectComplexity", 0}];
      }

      v26 = [v11 mutableCopy];
      if (v26)
      {
        v27 = v26;
        [v26 setObject:? forKeyedSubscript:?];
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v23, 0}];
      }

      CMSetAttachment(frame, v9, v27, 1u);
    }
  }

  if (self->_avcStreamInputActive)
  {
    HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
    avcStreamInput = self->_avcStreamInput;
    v37 = 0;
    v30 = [AVCStreamInput pushSampleBuffer:"pushSampleBuffer:error:" error:?];
    v31 = 0;
    if (v30)
    {
      v32 = CMContinuityCaptureGetHostTimeInNanoSec();
      v33 = v32 - HostTimeInNanoSec;
      if (CMContinityCaptureDebugLogEnabled(v32, v34))
      {
        v35 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [CMContinuityCaptureRemoteVideoDevice dispatchFrame:entity:completion:];
        }
      }

      if (v33 >= 0xF4241)
      {
        CMSetAttachment(frame, @"HighLatencyFrame", *MEMORY[0x277CBED28], 0);
      }

      v36.receiver = self;
      v36.super_class = CMContinuityCaptureRemoteVideoDevice;
      [(CMContinuityCaptureDeviceBase *)&v36 dispatchFrame:frame entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_75];
    }

    else
    {
      [CMContinuityCaptureRemoteVideoDevice dispatchFrame:entity:completion:];
    }
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice dispatchFrame:buf entity:? completion:?];
    v31 = *buf;
  }

  completionCopy[2](completionCopy, v31);
}

- (id)newVideoStreamCurrentConfiguration:(int64_t)configuration
{
  transportStream = [(CMContinuityCaptureDeviceBase *)self transportStream];
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v6 = compositeDelegate;
  if (compositeDelegate)
  {
    server = [compositeDelegate server];
    v8 = server;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (transportStream && server)
    {
      activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      sessionID = [activeConfiguration sessionID];
      v9 = [transportStream cipherKeyforSessionID:?];

      if (v9)
      {
        avcStreamNegotiator = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
        v50 = 0;
        v11 = [avcStreamNegotiator generateMediaStreamConfigurationWithError:?];
        v10 = 0;

        if (v11)
        {
          v37 = v10;
          [v11 setRtcpSendInterval:?];
          [v11 setRtcpTimeOutEnabled:?];
          [v8 currentTransport];
          [v11 setRtcpTimeOutInterval:?];
          [v11 setSRTPCipherSuite:?];
          [v11 setSRTCPCipherSuite:?];
          [v11 setSendMediaKey:?];
          [v11 setReceiveMediaKey:?];
          [v11 setStreamInputID:?];
          activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          format = [activeConfiguration2 format];
          CMContinuityCaptureGetAVCVideoResolutionForFormat(format);
          video = [v11 video];
          [video setVideoResolution:?];

          video2 = [v11 video];
          videoResolution = [video2 videoResolution];

          if (videoResolution == 12)
          {
            activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            format2 = [activeConfiguration3 format];
            [format2 width];
            video3 = [v11 video];
            [video3 setCustomWidth:?];

            activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            format3 = [activeConfiguration4 format];
            [format3 height];
            video4 = [v11 video];
            [video4 setCustomHeight:?];
          }

          activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [activeConfiguration5 maxFrameRate];
          video5 = [v11 video];
          [video5 setFramerate:?];

          video6 = [v11 video];
          [video6 setLatencySensitiveModeEnabled:?];

          v29 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
            video7 = [v11 video];
            v36 = v8;
            videoResolution2 = [video7 videoResolution];
            activeConfiguration6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            *buf = 138413570;
            selfCopy = self;
            v40 = 2048;
            v41 = currentSessionID;
            v42 = 1024;
            v43 = videoResolution2;
            v8 = v36;
            v44 = 1024;
            maxFrameRate = [activeConfiguration6 maxFrameRate];
            v46 = 1024;
            localSSRC = [v11 localSSRC];
            v48 = 1024;
            remoteSSRC = [v11 remoteSSRC];
            _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] Stream Resolution %u at frameRate %u localSSRC %x remoteSSRC %x", buf, 0x2Eu);
          }

          v10 = v37;
        }

        else
        {
          v29 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [CMContinuityCaptureRemoteVideoDevice newVideoStreamCurrentConfiguration:];
          }

          v11 = 0;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v32 = v11;
  }

  else
  {
    v32 = 0;
  }

  return v32;
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
      v27 = 2080;
      v28 = "[CMContinuityCaptureRemoteVideoDevice stopCaptureStack:completion:]";
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s already in progress", buf, 0x16u);
    }

    if ((stack & 4) != 0)
    {
      avcVideoStream = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    if (self->_avcStreamInputActive)
    {
      v12 = MEMORY[0x245D12020](completionCopy);
      stopCompletionBlock = self->_stopCompletionBlock;
      self->_stopCompletionBlock = v12;

      objc_initWeak(buf, self);
      v14 = dispatch_time(0, 5000000000);
      queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__CMContinuityCaptureRemoteVideoDevice_stopCaptureStack_completion___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v24, buf);
      dispatch_after(v14, queue2, block);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    stopAVConferenceStack = [(CMContinuityCaptureRemoteVideoDevice *)self stopAVConferenceStack];
    [(CMContinuityCaptureRemoteVideoDevice *)self stopCameraCaptureStack:?];
    if ((stack & 4) != 0)
    {
      v17 = self->_avcVideoStream;
      if (v17)
      {
        [(AVCVideoStream *)v17 stop];
      }

      avcStreamInput = self->_avcStreamInput;
      self->_avcStreamInput = 0;

      v19 = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      self->_avcStreamInputActive = 0;
      v20 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    v22.receiver = self;
    v22.super_class = CMContinuityCaptureRemoteVideoDevice;
    [(CMContinuityCaptureDeviceBase *)&v22 stopCaptureStack:stack completion:&__block_literal_global_84];
    if (!stopAVConferenceStack || !self->_avcStreamInputActive)
    {
      v21 = self->_stopCompletionBlock;
      self->_stopCompletionBlock = 0;

      completionCopy[2](completionCopy, 0);
    }
  }
}

uint64_t __68__CMContinuityCaptureRemoteVideoDevice_stopCaptureStack_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[44];
    if (v3)
    {
      v6 = v2;
      (*(v3 + 16))(v3, 0);
      v4 = v6[44];
      v6[44] = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  v9 = eventCopy;
  if (type == 3)
  {
    name = [eventCopy name];
    v11 = [name isEqualToString:?];

    if (v11)
    {
      selfCopy = self;
      v16 = CMContinuityCaptureRemoteVideoDevice;
      v12 = &selfCopy;
    }

    else
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self stopCameraCaptureStack:?];
      [(CMContinuityCaptureRemoteVideoDevice *)self startCameraCaptureStack:?];
      v14.receiver = self;
      v14.super_class = CMContinuityCaptureRemoteVideoDevice;
      v12 = &v14;
    }

    [(objc_super *)v12 postActionOfType:13 forEvent:v9 option:option, v13.receiver, v13.super_class, v14.receiver, v14.super_class, selfCopy, v16];
  }

  else
  {
    [(CMContinuityCaptureDeviceBase *)&v13 postActionOfType:type forEvent:eventCopy option:option, self, CMContinuityCaptureRemoteVideoDevice, v14.receiver, v14.super_class, selfCopy, v16];
  }
}

- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error
{
  nameCopy = name;
  dataCopy = data;
  errorCopy = error;
  v11 = CMContinuityCaptureRemoteEventToBeRelayedList();
  v12 = CMContinuityCaptureRemoteEventToBeRelayedListEvenWhenDropped();
  if ([v11 containsObject:?] && (!errorCopy || objc_msgSend(errorCopy, "code") != 1 && (objc_msgSend(errorCopy, "code") != 2 || objc_msgSend(v12, "containsObject:"))))
  {
    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [(CMContinuityCaptureDeviceBase *)self entity];
    [transportDevice postEvent:? entity:? data:?];
  }

  v14.receiver = self;
  v14.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v14 postActionCompletionForEventName:nameCopy eventData:dataCopy error:errorCopy];
}

- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CMContinuityCaptureRemoteVideoDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5CCE8;
  objc_copyWeak(&v16, &location);
  v13 = imageCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = imageCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__CMContinuityCaptureRemoteVideoDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v28 = 138543618;
      v29 = WeakRetained;
      v30 = 2112;
      *v31 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Got captureStillImage with request %@", &v28, 0x16u);
    }

    v5 = [*(a1 + 32) compressedFormat];

    if (v5)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = [*(a1 + 32) compressedFormat];
      [v5 setObject:? forKeyedSubscript:?];
    }

    v7 = [MEMORY[0x277CE5B30] photoSettingsWithFormat:?];
    if ([*(a1 + 32) maxPhotoDimensions] < 1 || (objc_msgSend(*(a1 + 32), "maxPhotoDimensions") >> 32) < 1)
    {
      [*(a1 + 32) highResolutionPhotoEnabled];
      [v7 setHighResolutionPhotoEnabled:?];
    }

    else
    {
      [*(a1 + 32) maxPhotoDimensions];
      [v7 setMaxPhotoDimensions:?];
    }

    v8 = [WeakRetained[36] supportedFlashModes];
    v9 = MEMORY[0x277CCABB0];
    [*(a1 + 32) flashMode];
    v10 = [v9 numberWithInt:?];
    v11 = [v8 containsObject:?];

    if (v11)
    {
      [*(a1 + 32) flashMode];
      [v7 setFlashMode:?];
    }

    else
    {
      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(a1 + 32) flashMode];
        v27 = [WeakRetained[36] supportedFlashModes];
        v28 = 138543874;
        v29 = WeakRetained;
        v30 = 1024;
        *v31 = v26;
        *&v31[4] = 2112;
        *&v31[6] = v27;
        _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Still capture request specified unsupported flash mode %d, supported modes %@", &v28, 0x1Cu);
      }
    }

    [*(a1 + 32) photoQualityPrioritization];
    [v7 setPhotoQualityPrioritization:?];
    if (v7 && [WeakRetained streaming] && WeakRetained[36])
    {
      v13 = *(a1 + 40);
      objc_sync_enter(v13);
      v14 = WeakRetained[32];
      if (!v14)
      {
        v15 = [MEMORY[0x277CBEB38] dictionary];
        v16 = WeakRetained[32];
        WeakRetained[32] = v15;

        v14 = WeakRetained[32];
      }

      v17 = MEMORY[0x277CCABB0];
      [v7 uniqueID];
      v18 = [v17 numberWithLongLong:?];
      [v14 setObject:? forKeyedSubscript:?];

      objc_sync_exit(v13);
      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v28 = 138543874;
        v29 = WeakRetained;
        v30 = 2112;
        *v31 = v7;
        *&v31[8] = 2112;
        *&v31[10] = v20;
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Capturing %@ for %@", &v28, 0x20u);
      }

      [WeakRetained[36] capturePhotoWithSettings:? delegate:?];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v21 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = [WeakRetained streaming];
        v25 = WeakRetained[36];
        v28 = 138544386;
        v29 = WeakRetained;
        v30 = 2112;
        *v31 = v23;
        *&v31[8] = 2112;
        *&v31[10] = v7;
        v32 = 1024;
        v33 = v24;
        v34 = 2112;
        v35 = v25;
        _os_log_error_impl(&dword_242545000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to capture photo for request %@. photoSettings:%@ streaming:%d photoOutput:%@", &v28, 0x30u);
      }

      v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CMContinuityCaptureRemoteVideoDevice_enqueueReactionEffect_entity___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, &location);
  v9 = effectCopy;
  v7 = effectCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__CMContinuityCaptureRemoteVideoDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v7 = WeakRetained;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Got enqueueReactionEffect with reactionType %@", buf, 0x16u);
    }

    if ([WeakRetained streaming])
    {
      v5 = WeakRetained[39];
      if (v5)
      {
        [v5 performEffectForReaction:?];
      }
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
  v17[2] = __87__CMContinuityCaptureRemoteVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
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

void __87__CMContinuityCaptureRemoteVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
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
  changeCopy = change;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([pathCopy isEqualToString:?])
  {
    v11 = [changeCopy objectForKeyedSubscript:?];
    if (v11 && ([buf CMTimeValue], *buf))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    }

    else
    {
      v12 = &unk_2854ECCD8;
    }

    [v12 unsignedIntValue];
    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration setMaxFrameRate:?];

LABEL_33:
    [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];

LABEL_34:
    goto LABEL_35;
  }

  if ([pathCopy isEqualToString:?])
  {
    v11 = [changeCopy objectForKeyedSubscript:?];
    if (v11 && ([buf CMTimeValue], *buf))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    }

    else
    {
      v12 = &unk_2854ECCD8;
    }

    [v12 unsignedIntValue];
    activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration2 setMinFrameRate:?];

    v36 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
    [v36 setValue:?];

    goto LABEL_33;
  }

  if ([pathCopy isEqualToString:?])
  {
    v14 = [changeCopy objectForKeyedSubscript:?];
    v56 = changeCopy;
    v15 = [changeCopy objectForKeyedSubscript:?];
    v16 = [MEMORY[0x277CBEB98] setWithArray:?];
    v17 = MEMORY[0x277CBEB18];
    [v14 count];
    [v15 count];
    v18 = [v17 arrayWithCapacity:?];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      v21 = v20;
      v22 = *v67;
      do
      {
        for (i = 0; i != v21; i = (i + 1))
        {
          if (*v67 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation = [*(*(&v66 + 1) + 8 * i) dictionaryRepresentation];
          [v18 addObject:?];
        }

        v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v21);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v25 = v15;
    v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
    if (v26)
    {
      v27 = v26;
      v28 = *v63;
      do
      {
        for (j = 0; j != v27; j = (j + 1))
        {
          if (*v63 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v62 + 1) + 8 * j);
          if (([v16 containsObject:?] & 1) == 0)
          {
            dictionaryRepresentation2 = [v30 dictionaryRepresentation];
            [v18 addObject:?];
          }
        }

        v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v27);
    }

    v32 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
    [v32 setValue:?];
    v33 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      v58 = 2114;
      *v59 = v32;
      _os_log_impl(&dword_242545000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
    }

    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [transportDevice setValueForControl:? completion:?];

    changeCopy = v56;
    goto LABEL_35;
  }

  if ([pathCopy isEqualToString:?])
  {
    v11 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
    v37 = [changeCopy objectForKeyedSubscript:?];
    [v11 setValue:?];

    value = [v11 value];
    [value BOOLValue];
    activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration3 setReactionEffectSuppressedGesturesEnabled:?];

    v40 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if ([pathCopy isEqualToString:?])
  {
    v11 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
    v41 = [changeCopy objectForKeyedSubscript:?];
    [v11 setValue:?];

    v40 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
LABEL_41:
      *buf = 138543618;
      *&buf[4] = self;
      v58 = 2114;
      *v59 = v11;
      _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
    }

LABEL_42:

    transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [transportDevice2 setValueForControl:? completion:?];

    goto LABEL_34;
  }

  if ([pathCopy isEqualToString:?])
  {
    v43 = [changeCopy objectForKeyedSubscript:?];
    if ([v43 BOOLValue])
    {

      goto LABEL_54;
    }

    v51 = [changeCopy objectForKeyedSubscript:?];
    bOOLValue = [v51 BOOLValue];

    if (!bOOLValue)
    {
LABEL_54:
      v11 = [changeCopy objectForKeyedSubscript:?];
      if (([v11 BOOLValue]& 1) != 0)
      {
        v54 = [changeCopy objectForKeyedSubscript:?];
        bOOLValue2 = [v54 BOOLValue];

        if (bOOLValue2)
        {
          goto LABEL_35;
        }

        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ active 0 -> 1", buf, 0xCu);
        }
      }

      goto LABEL_34;
    }

    v53 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_242545000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ active 1 -> 0", buf, 0xCu);
    }

    [CMContinuityCaptureRemoteVideoDevice stopCaptureStack:"stopCaptureStack:completion:" completion:?];
  }

  else
  {
    if ([pathCopy isEqualToString:?])
    {
      v44 = [changeCopy objectForKeyedSubscript:?];
      bOOLValue3 = [v44 BOOLValue];

      compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      frameRateManager = [compositeDelegate frameRateManager];
      v11 = [frameRateManager allowedFrameRateRangeForDevice:?];

      maxFrameRate = [v11 maxFrameRate];
      [maxFrameRate unsignedIntValue];
      [(CMContinuityCaptureRemoteVideoDevice *)self setMaxFrameRate:?];

      minFrameRate = [v11 minFrameRate];
      [minFrameRate unsignedIntValue];
      [(CMContinuityCaptureRemoteVideoDevice *)self setMinFrameRate:?];

      v50 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        *&buf[4] = self;
        v58 = 1024;
        *v59 = [(CMContinuityCaptureRemoteVideoDevice *)self maxFrameRate];
        *&v59[4] = 1024;
        *&v59[6] = [(CMContinuityCaptureRemoteVideoDevice *)self minFrameRate];
        v60 = 1024;
        v61 = bOOLValue3;
        _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated maxFrameRate: %u minFrameRate: %u, throttled state: %d", buf, 0x1Eu);
      }

      goto LABEL_34;
    }

    if ([pathCopy isEqualToString:?])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self _configureVideoEffects];
        [(CMContinuityCaptureRemoteVideoDevice *)self _updateControlStatus];
      }
    }
  }

LABEL_35:
}

- (void)updateControlStatus
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CMContinuityCaptureRemoteVideoDevice_updateControlStatus__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__CMContinuityCaptureRemoteVideoDevice_updateControlStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateControlStatus];
    WeakRetained = v2;
  }
}

- (void)_updateControlStatus
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy12 = self;
    v119 = 2080;
    v120 = "[CMContinuityCaptureRemoteVideoDevice _updateControlStatus]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  v5 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  if (v5)
  {
    device = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([device isCenterStageActive])
    {
      activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      if ([activeConfiguration isCenterStageForcefullyEnabled])
      {
        centerStageEnabled = 1;
      }

      else
      {
        activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        centerStageEnabled = [activeConfiguration2 centerStageEnabled];
      }
    }

    else
    {
      centerStageEnabled = 0;
    }

    value = [v5 value];
    bOOLValue = [value BOOLValue];

    if (centerStageEnabled != bOOLValue)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:?];
      [v5 setValue:?];

      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v5;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice setValueForControl:? completion:?];
    }
  }

  v15 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v15)
  {
    activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    deskViewCameraMode = [activeConfiguration3 deskViewCameraMode];

    value2 = [v15 value];
    intValue = [value2 intValue];

    if (deskViewCameraMode != intValue)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      [v15 setValue:?];

      v21 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v15;
        _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice2 setValueForControl:? completion:?];
    }
  }

  v23 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v23)
  {
    activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([activeConfiguration4 centerStageEnabled])
    {
      isCenterStageForcefullyEnabled = 1;
    }

    else
    {
      activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      isCenterStageForcefullyEnabled = [activeConfiguration5 isCenterStageForcefullyEnabled];
    }

    value3 = [v23 value];
    bOOLValue2 = [value3 BOOLValue];

    if (isCenterStageForcefullyEnabled != bOOLValue2)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:?];
      [v23 setValue:?];

      v30 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v23;
        _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice3 setValueForControl:? completion:?];
    }
  }

  v32 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v32)
  {
    value4 = [v32 value];
    if (value4)
    {
      v34 = value4;
      centerStageRectOfInterest = [(CMContinuityCaptureRemoteVideoDevice *)self centerStageRectOfInterest];
      value5 = [v32 value];
      v37 = [centerStageRectOfInterest isEqualToDictionary:?];

      if ((v37 & 1) == 0)
      {
        centerStageRectOfInterest2 = [(CMContinuityCaptureRemoteVideoDevice *)self centerStageRectOfInterest];
        [v32 setValue:?];

        v39 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy12 = self;
          v119 = 2114;
          v120 = v32;
          _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
        }

        transportDevice4 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        [transportDevice4 setValueForControl:? completion:?];
      }
    }
  }

  v41 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v41)
  {
    activeConfiguration6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    centerStageFramingMode = [activeConfiguration6 centerStageFramingMode];

    value6 = [v41 value];
    intValue2 = [value6 intValue];

    if (centerStageFramingMode != intValue2)
    {
      v46 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      [v41 setValue:?];

      v47 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v41;
        _os_log_impl(&dword_242545000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice5 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice5 setValueForControl:? completion:?];
    }
  }

  v49 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v49)
  {
    device2 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([device2 isPortraitEffectActive])
    {
      portraitEffectEnabled = 1;
    }

    else
    {
      activeConfiguration7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      portraitEffectEnabled = [activeConfiguration7 portraitEffectEnabled];
    }

    value7 = [v49 value];
    bOOLValue3 = [value7 BOOLValue];

    if (portraitEffectEnabled != bOOLValue3)
    {
      v55 = [MEMORY[0x277CCABB0] numberWithBool:?];
      [v49 setValue:?];

      v56 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v49;
        _os_log_impl(&dword_242545000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice6 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice6 setValueForControl:? completion:?];
    }
  }

  v58 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v58)
  {
    device3 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([device3 isStudioLightActive])
    {
      studioLightingEnabled = 1;
    }

    else
    {
      activeConfiguration8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      studioLightingEnabled = [activeConfiguration8 studioLightingEnabled];
    }

    value8 = [v58 value];
    bOOLValue4 = [value8 BOOLValue];

    if (studioLightingEnabled != bOOLValue4)
    {
      v64 = [MEMORY[0x277CCABB0] numberWithBool:?];
      [v58 setValue:?];

      v65 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v58;
        _os_log_impl(&dword_242545000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice7 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice7 setValueForControl:? completion:?];
    }
  }

  v67 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v67)
  {
    device4 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([device4 canPerformReactionEffects])
    {
      reactionEffectsEnabled = 1;
    }

    else
    {
      activeConfiguration9 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      reactionEffectsEnabled = [activeConfiguration9 reactionEffectsEnabled];
    }

    value9 = [v67 value];
    bOOLValue5 = [value9 BOOLValue];

    if (reactionEffectsEnabled != bOOLValue5)
    {
      v73 = [MEMORY[0x277CCABB0] numberWithBool:?];
      [v67 setValue:?];

      v74 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v67;
        _os_log_impl(&dword_242545000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice8 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice8 setValueForControl:? completion:?];
    }
  }

  v76 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v76)
  {
    device5 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([device5 isBackgroundReplacementActive])
    {
      backgroundReplacementEnabled = 1;
    }

    else
    {
      activeConfiguration10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      backgroundReplacementEnabled = [activeConfiguration10 backgroundReplacementEnabled];
    }

    value10 = [v76 value];
    bOOLValue6 = [value10 BOOLValue];

    if (backgroundReplacementEnabled != bOOLValue6)
    {
      v82 = [MEMORY[0x277CCABB0] numberWithBool:?];
      [v76 setValue:?];

      v83 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy12 = self;
        v119 = 2114;
        v120 = v76;
        _os_log_impl(&dword_242545000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      transportDevice9 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [transportDevice9 setValueForControl:? completion:?];
    }
  }

  v85 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (!v85)
  {
    goto LABEL_83;
  }

  if (self->_videoDevice)
  {
    [v116 activeVideoMinFrameDuration];
    if (v116[0])
    {
      if (self->_videoDevice)
      {
        [&v113 activeVideoMinFrameDuration];
        v86 = v114;
        if (self->_videoDevice)
        {
          [v112 activeVideoMinFrameDuration];
          v87 = v112[0];
          goto LABEL_79;
        }
      }

      else
      {
        v113 = 0;
        v114 = 0;
        v86 = 0.0;
        v115 = 0;
      }

      memset(v112, 0, sizeof(v112));
      v87 = 0.0;
LABEL_79:
      v88 = v86 / v87;
      value11 = [v85 value];
      [value11 doubleValue];
      v91 = v90;

      if (v91 != v88)
      {
        v92 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v85 setValue:?];

        v93 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy12 = self;
          v119 = 2114;
          v120 = v85;
          _os_log_impl(&dword_242545000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
        }

        transportDevice10 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        [transportDevice10 setValueForControl:? completion:?];
      }
    }
  }

  else
  {
    memset(v116, 0, sizeof(v116));
  }

LABEL_83:
  v95 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

  if (v95)
  {
    if (!self->_videoDevice)
    {
      memset(v111, 0, sizeof(v111));
      goto LABEL_96;
    }

    [v111 activeVideoMaxFrameDuration];
    if (v111[0])
    {
      if (self->_videoDevice)
      {
        [&v108 activeVideoMaxFrameDuration];
        v96 = v109;
        if (self->_videoDevice)
        {
          [&v105 activeVideoMaxFrameDuration];
          v97 = v105;
          goto LABEL_92;
        }
      }

      else
      {
        v108 = 0;
        v109 = 0;
        v96 = 0.0;
        v110 = 0;
      }

      v105 = 0;
      v106 = 0;
      v97 = 0.0;
      v107 = 0;
LABEL_92:
      v98 = v96 / v97;
      value12 = [v95 value];
      [value12 doubleValue];
      v101 = v100;

      if (v101 != v98)
      {
        v102 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v95 setValue:?];

        v103 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy12 = self;
          v119 = 2114;
          v120 = v95;
          _os_log_impl(&dword_242545000, v103, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
        }

        transportDevice11 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        [transportDevice11 setValueForControl:? completion:?];
      }
    }
  }

LABEL_96:
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke;
  v10[3] = &unk_278D5C120;
  objc_copyWeak(&v13, &location);
  v11 = controlCopy;
  selfCopy = self;
  v9 = controlCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_62;
  }

  if (WeakRetained[46])
  {
    v4 = [*(a1 + 32) name];
    v5 = [v4 isEqualToString:?];

    if (v5)
    {
      if ([v3 isDockedTrackingEnabled])
      {
        __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_5();
        goto LABEL_62;
      }

      v6 = [v3 activeConfiguration];
      v7 = [v6 centerStageEnabled];
      v8 = [*(a1 + 32) value];
      if (v7 != [v8 BOOLValue])
      {

LABEL_7:
        v9 = [*(a1 + 32) value];
        [v9 BOOLValue];
        v10 = [v3 activeConfiguration];
        [v10 setCenterStageEnabled:?];

        v11 = [v3[35] objectForKeyedSubscript:?];
        v12 = [*(a1 + 32) value];
        [v11 setValue:?];

        v13 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v15 = [v3 activeConfiguration];
          v16 = [v15 centerStageEnabled];
          *&v17 = COERCE_DOUBLE("Off");
          if (v16)
          {
            *&v17 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v335 = v14;
          v336 = 2080;
          v337 = *&v17;
          _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageEnabled %s", buf, 0x16u);
        }

        v18 = [v3 activeConfiguration];
        v19 = [v18 isCenterStageForcefullyEnabled];

        if (v19)
        {
          [v3 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:?];
          v20 = [v3 companionDevice];
          [v20 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:?];
        }

        [v3 _toggleBetweenCenterStageAndManualFraming];
        goto LABEL_59;
      }

      v45 = [v3 activeConfiguration];
      if ([v45 isCenterStageForcefullyEnabled])
      {
        v46 = [*(a1 + 32) value];
        v47 = [v46 BOOLValue];

        if ((v47 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_60:
        v95 = v3[47];
        v96 = [*(a1 + 32) name];
        v97 = [v95 objectForKey:?];

        if (v97)
        {
          v98 = v3[47];
          v99 = [*(a1 + 32) name];
          [v98 removeObjectForKey:?];
        }

        goto LABEL_62;
      }

LABEL_38:
      goto LABEL_60;
    }

    v26 = [*(a1 + 32) name];
    if ([v26 isEqualToString:?] && (objc_msgSend(*(a1 + 32), "value"), (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v27;
      v29 = [*(a1 + 32) value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v31 = [*(a1 + 32) value];
        v32 = [v3 activeConfiguration];
        [v32 setCenterStageRectOfInterest:?];

        v33 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 40);
          v35 = [v3 activeConfiguration];
          [v35 centerStageRectOfInterest];
          v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v335 = v34;
          v336 = 2112;
          v337 = v36;
          _os_log_impl(&dword_242545000, v33, OS_LOG_TYPE_DEFAULT, "%@ CenterStageRectOfInterest %@", buf, 0x16u);
        }

        v11 = [*(a1 + 32) value];
        [v3 setCenterStageRectOfInterest:?];
        goto LABEL_59;
      }
    }

    else
    {
    }

    v37 = [*(a1 + 32) name];
    v38 = [v37 isEqualToString:?];

    v39 = *(a1 + 32);
    if (v38)
    {
      v40 = [v39 value];
      [v40 intValue];

      v41 = [v3 activeConfiguration];
      [v41 setCenterStageFramingMode:?];

      v42 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a1 + 40);
        v44 = [v3 activeConfiguration];
        *buf = 138412546;
        v335 = v43;
        v336 = 2048;
        v337 = COERCE_DOUBLE([v44 centerStageFramingMode]);
        _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "%@ CenterStageFramingMode %ld", buf, 0x16u);
      }

      [v3 setCenterStageFramingMode:?];
      goto LABEL_60;
    }

    v48 = [v39 name];
    v49 = [v48 isEqualToString:?];

    if (v49)
    {
      v50 = [v3 activeConfiguration];
      v51 = [v50 faceDetectionEnabled];
      v52 = [*(a1 + 32) value];
      v53 = [v52 BOOLValue];

      if (v51 == v53)
      {
        goto LABEL_60;
      }

      v54 = [*(a1 + 32) value];
      [v54 BOOLValue];
      v55 = [v3 activeConfiguration];
      [v55 setFaceDetectionEnabled:?];

      v56 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v57 = *(a1 + 40);
      v58 = [v3 activeConfiguration];
      v59 = [v58 faceDetectionEnabled];
      *&v60 = COERCE_DOUBLE("Off");
      if (v59)
      {
        *&v60 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v335 = v57;
      v336 = 2080;
      v337 = *&v60;
      v61 = "%{public}@ FaceDetectionEnabled %s";
      goto LABEL_57;
    }

    v62 = [*(a1 + 32) name];
    v63 = [v62 isEqualToString:?];

    if (v63)
    {
      v64 = [v3 activeConfiguration];
      v65 = [v64 humanBodyDetectionEnabled];
      v66 = [*(a1 + 32) value];
      v67 = [v66 BOOLValue];

      if (v65 == v67)
      {
        goto LABEL_60;
      }

      v68 = [*(a1 + 32) value];
      [v68 BOOLValue];
      v69 = [v3 activeConfiguration];
      [v69 setHumanBodyDetectionEnabled:?];

      v56 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v70 = *(a1 + 40);
      v58 = [v3 activeConfiguration];
      v71 = [v58 humanBodyDetectionEnabled];
      *&v72 = COERCE_DOUBLE("Off");
      if (v71)
      {
        *&v72 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v335 = v70;
      v336 = 2080;
      v337 = *&v72;
      v61 = "%{public}@ HumanBodyDetectionEnabled %s";
      goto LABEL_57;
    }

    v73 = [*(a1 + 32) name];
    v74 = [v73 isEqualToString:?];

    if (v74)
    {
      v75 = [v3 activeConfiguration];
      v76 = [v75 humanFullBodyDetectionEnabled];
      v77 = [*(a1 + 32) value];
      v78 = [v77 BOOLValue];

      if (v76 == v78)
      {
        goto LABEL_60;
      }

      v79 = [*(a1 + 32) value];
      [v79 BOOLValue];
      v80 = [v3 activeConfiguration];
      [v80 setHumanFullBodyDetectionEnabled:?];

      v56 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v81 = *(a1 + 40);
      v58 = [v3 activeConfiguration];
      v82 = [v58 humanFullBodyDetectionEnabled];
      *&v83 = COERCE_DOUBLE("Off");
      if (v82)
      {
        *&v83 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v335 = v81;
      v336 = 2080;
      v337 = *&v83;
      v61 = "%{public}@ HumanFullBodyDetectionEnabled %s";
      goto LABEL_57;
    }

    v84 = [*(a1 + 32) name];
    v85 = [v84 isEqualToString:?];

    if (v85)
    {
      v86 = [v3 activeConfiguration];
      v87 = [v86 asyncStillCaptureEnabled];
      v88 = [*(a1 + 32) value];
      v89 = [v88 BOOLValue];

      if (v87 == v89)
      {
        goto LABEL_60;
      }

      v90 = [*(a1 + 32) value];
      [v90 BOOLValue];
      v91 = [v3 activeConfiguration];
      [v91 setAsyncStillCaptureEnabled:?];

      v56 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v92 = *(a1 + 40);
      v58 = [v3 activeConfiguration];
      v93 = [v58 asyncStillCaptureEnabled];
      *&v94 = COERCE_DOUBLE("Off");
      if (v93)
      {
        *&v94 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v335 = v92;
      v336 = 2080;
      v337 = *&v94;
      v61 = "%{public}@ AsyncStillCaptureEnabled %s";
LABEL_57:
      _os_log_impl(&dword_242545000, v56, OS_LOG_TYPE_DEFAULT, v61, buf, 0x16u);

LABEL_58:
      v11 = [v3 compositeDelegate];
      [v3 entity];
      [NSObject postEvent:v11 entity:"postEvent:entity:data:" data:?];
LABEL_59:

      goto LABEL_60;
    }

    v100 = [*(a1 + 32) name];
    v101 = [v100 isEqualToString:?];

    if (v101)
    {
      v102 = [v3 activeConfiguration];
      v103 = [v102 suppressVideoEffects];
      v104 = [*(a1 + 32) value];
      v105 = [v104 BOOLValue];

      if (v103 != v105)
      {
        v106 = [*(a1 + 32) value];
        [v106 BOOLValue];
        v107 = [v3 activeConfiguration];
        [v107 setSuppressVideoEffects:?];

        v108 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v109 = *(a1 + 40);
          v110 = [v3 activeConfiguration];
          v111 = [v110 suppressVideoEffects];
          *&v112 = COERCE_DOUBLE("Off");
          if (v111)
          {
            *&v112 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v335 = v109;
          v336 = 2080;
          v337 = *&v112;
          _os_log_impl(&dword_242545000, v108, OS_LOG_TYPE_DEFAULT, "%{public}@ SuppressVideoEffects %s", buf, 0x16u);
        }

        v11 = [v3 activeConfiguration];
        [v11 suppressVideoEffects];
        [v3 setSuppressVideoEffects:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v113 = [*(a1 + 32) name];
    v114 = [v113 isEqualToString:?];

    if (v114)
    {
      v115 = [v3 activeConfiguration];
      v116 = [v115 portraitEffectEnabled];
      v117 = [*(a1 + 32) value];
      v118 = [v117 BOOLValue];

      if (v116 != v118)
      {
        v119 = [*(a1 + 32) value];
        [v119 BOOLValue];
        v120 = [v3 activeConfiguration];
        [v120 setPortraitEffectEnabled:?];

        v121 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          v122 = *(a1 + 40);
          v123 = [v3 activeConfiguration];
          v124 = [v123 portraitEffectEnabled];
          *&v125 = COERCE_DOUBLE("Off");
          if (v124)
          {
            *&v125 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v335 = v122;
          v336 = 2080;
          v337 = *&v125;
          _os_log_impl(&dword_242545000, v121, OS_LOG_TYPE_DEFAULT, "%{public}@ PortraitEffectEnabled %s", buf, 0x16u);
        }

        v11 = [v3 activeConfiguration];
        [v11 portraitEffectEnabled];
        [v3 setPortraitEffect:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v126 = [*(a1 + 32) name];
    v127 = [v126 isEqualToString:?];

    if (v127)
    {
      v128 = [v3 activeConfiguration];
      [v128 videoZoomFactor];
      v130 = v129;
      v131 = [*(a1 + 32) value];
      [v131 doubleValue];
      v133 = v132;

      if (v130 != v133)
      {
        v134 = [*(a1 + 32) value];
        [v134 doubleValue];
        v135 = [v3 activeConfiguration];
        [v135 setVideoZoomFactor:?];

        v136 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          v137 = *(a1 + 40);
          v138 = [v3 activeConfiguration];
          [v138 videoZoomFactor];
          *buf = 138543618;
          v335 = v137;
          v336 = 2048;
          v337 = v139;
          _os_log_impl(&dword_242545000, v136, OS_LOG_TYPE_DEFAULT, "%{public}@ VideoZoomFactor %.2f", buf, 0x16u);
        }

        v11 = [v3 activeConfiguration];
        [v11 videoZoomFactor];
        [v3 setVideoZoomFactor:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v140 = [*(a1 + 32) name];
    v141 = [v140 isEqualToString:?];

    if (v141)
    {
      v142 = [v3 activeConfiguration];
      v143 = [v142 studioLightingEnabled];
      v144 = [*(a1 + 32) value];
      v145 = [v144 BOOLValue];

      if (v143 != v145)
      {
        v146 = [*(a1 + 32) value];
        [v146 BOOLValue];
        v147 = [v3 activeConfiguration];
        [v147 setStudioLightingEnabled:?];

        v148 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
        {
          v149 = *(a1 + 40);
          v150 = [v3 activeConfiguration];
          v151 = [v150 studioLightingEnabled];
          *&v152 = COERCE_DOUBLE("Off");
          if (v151)
          {
            *&v152 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v335 = v149;
          v336 = 2080;
          v337 = *&v152;
          _os_log_impl(&dword_242545000, v148, OS_LOG_TYPE_DEFAULT, "%{public}@ StudioLightingEnabled %s", buf, 0x16u);
        }

        v11 = [v3 activeConfiguration];
        [v11 studioLightingEnabled];
        [v3 setStudioLighting:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v153 = [*(a1 + 32) name];
    v154 = [v153 isEqualToString:?];

    if (v154)
    {
      v155 = [v3 activeConfiguration];
      v156 = [v155 reactionEffectsEnabled];
      v157 = [*(a1 + 32) value];
      v158 = [v157 BOOLValue];

      if (v156 != v158)
      {
        v159 = [*(a1 + 32) value];
        [v159 BOOLValue];
        v160 = [v3 activeConfiguration];
        [v160 setReactionEffectsEnabled:?];

        v161 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          v162 = *(a1 + 40);
          v163 = [v3 activeConfiguration];
          v164 = [v163 reactionEffectsEnabled];
          *&v165 = COERCE_DOUBLE("Off");
          if (v164)
          {
            *&v165 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v335 = v162;
          v336 = 2080;
          v337 = *&v165;
          _os_log_impl(&dword_242545000, v161, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffectsEnabled %s", buf, 0x16u);
        }

        v11 = [v3 activeConfiguration];
        [v11 reactionEffectsEnabled];
        [v3 setReactionEffects:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v166 = [*(a1 + 32) name];
    v167 = [v166 isEqualToString:?];

    if (v167)
    {
      v168 = [v3 activeConfiguration];
      v169 = [v168 backgroundReplacementEnabled];
      v170 = [*(a1 + 32) value];
      v171 = [v170 BOOLValue];

      if (v169 != v171)
      {
        v172 = [*(a1 + 32) value];
        [v172 BOOLValue];
        v173 = [v3 activeConfiguration];
        [v173 setBackgroundReplacementEnabled:?];

        v174 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          v175 = *(a1 + 40);
          v176 = [v3 activeConfiguration];
          v177 = [v176 backgroundReplacementEnabled];
          *&v178 = COERCE_DOUBLE("Off");
          if (v177)
          {
            *&v178 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v335 = v175;
          v336 = 2080;
          v337 = *&v178;
          _os_log_impl(&dword_242545000, v174, OS_LOG_TYPE_DEFAULT, "%{public}@ BackgroundReplacementEnabled %s", buf, 0x16u);
        }

        v11 = [v3 activeConfiguration];
        [v11 backgroundReplacementEnabled];
        [v3 setBackgroundReplacement:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v179 = [*(a1 + 32) name];
    v180 = [v179 isEqualToString:?];

    v181 = *(a1 + 32);
    if (v180)
    {
      v182 = [v181 value];
      v183 = [v3 activeConfiguration];
      [v183 setAsyncStillCaptureConfigs:?];

      v184 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
      {
        v185 = *(a1 + 40);
        v186 = [v3 activeConfiguration];
        [v186 asyncStillCaptureConfigs];
        v187 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543618;
        v335 = v185;
        v336 = 2112;
        v337 = v187;
        _os_log_impl(&dword_242545000, v184, OS_LOG_TYPE_DEFAULT, "%{public}@ AsyncStillCaptureConfigs %@", buf, 0x16u);
      }

      [v3 _updatePhotoOutputConfigs];
      goto LABEL_60;
    }

    v188 = [v181 name];
    v189 = [v188 isEqualToString:?];

    if (v189)
    {
      v190 = [v3 activeConfiguration];
      v191 = [v190 deskViewCameraMode];
      v192 = [*(a1 + 32) value];
      v193 = [v192 unsignedIntValue];

      if (v191 != v193)
      {
        v194 = [*(a1 + 32) value];
        [v194 unsignedIntValue];
        v195 = [v3 activeConfiguration];
        [v195 setDeskViewCameraMode:?];

        v196 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          v197 = *(a1 + 40);
          v198 = [v3 activeConfiguration];
          *buf = 138543618;
          v335 = v197;
          v336 = 1024;
          LODWORD(v337) = [v198 deskViewCameraMode];
          _os_log_impl(&dword_242545000, v196, OS_LOG_TYPE_DEFAULT, "%{public}@ DeskViewCameraMode %u", buf, 0x12u);
        }

        if ([v3 entity] == 2)
        {
          v199 = [v3 companionDevice];
          v200 = [v199 isStreamingOnSuperWide];

          if (v200)
          {
            v201 = [*(a1 + 32) value];
            [v201 unsignedIntValue];
            v202 = [v3 companionDevice];
            [v202 setDeskViewCameraMode:?];
          }
        }

        v11 = [v3 activeConfiguration];
        [v11 deskViewCameraMode];
        [v3 setDeskViewCameraMode:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v203 = [*(a1 + 32) name];
    v204 = [v203 isEqualToString:?];

    if (v204)
    {
      point.x = NAN;
      point.y = NAN;
      v205 = [*(a1 + 32) value];
      CGPointMakeWithDictionaryRepresentation(v205, &point);

      v206 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
      {
        v207 = *(a1 + 40);
        *buf = 138544130;
        v335 = v207;
        v336 = 2080;
        v337 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
        v338 = 2048;
        x = point.x;
        v340 = 2048;
        y = point.y;
        _os_log_impl(&dword_242545000, v206, OS_LOG_TYPE_DEFAULT, "%{public}@ (%s) StartPanningAtPoint {%.3f, %.3f}", buf, 0x2Au);
      }

      v208 = [v3 videoDevice];
      [v208 lockForConfiguration:?];
      v11 = 0;

      if (v11)
      {
        v209 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
        {
LABEL_121:
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_3(a1, v3);
        }

LABEL_142:

        goto LABEL_59;
      }

      v230 = [v3 videoDevice];
      [v230 startPanningAtPoint:?];
LABEL_141:

      v209 = [v3 videoDevice];
      [v209 unlockForConfiguration];
      goto LABEL_142;
    }

    v210 = [*(a1 + 32) name];
    v211 = [v210 isEqualToString:?];

    if (v211)
    {
      point.x = NAN;
      point.y = NAN;
      v212 = [*(a1 + 32) value];
      CGPointMakeWithDictionaryRepresentation(v212, &point);

      v213 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
      {
        v214 = *(a1 + 40);
        *buf = 138544130;
        v335 = v214;
        v336 = 2080;
        v337 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
        v338 = 2048;
        x = point.x;
        v340 = 2048;
        y = point.y;
        _os_log_impl(&dword_242545000, v213, OS_LOG_TYPE_DEFAULT, "%{public}@ (%s) PanWithTransaltion {%.3f, %.3f}", buf, 0x2Au);
      }

      v215 = [v3 videoDevice];
      [v215 lockForConfiguration:?];
      v11 = 0;

      if (v11)
      {
        v209 = CMContinuityCaptureLog(2);
        if (!os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_142;
        }

        goto LABEL_121;
      }

      v230 = [v3 videoDevice];
      [v230 panWithTranslation:?];
      goto LABEL_141;
    }

    v216 = [*(a1 + 32) name];
    v217 = [v216 isEqualToString:?];

    if (v217)
    {
      v218 = [v3 activeConfiguration];
      v219 = [v218 maxFrameRate];
      v220 = [*(a1 + 32) value];
      v221 = [v220 unsignedIntValue];

      if (v219 == v221)
      {
        goto LABEL_60;
      }

      v222 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
      {
        v223 = *(a1 + 40);
        v224 = [*(a1 + 32) value];
        *buf = 138543618;
        v335 = v223;
        v336 = 1024;
        LODWORD(v337) = [v224 unsignedIntValue];
        _os_log_impl(&dword_242545000, v222, OS_LOG_TYPE_DEFAULT, "%{public}@ MaxFrameRate %u", buf, 0x12u);
      }

      v225 = [*(a1 + 32) value];
      [v225 unsignedIntValue];
      v226 = [v3 activeConfiguration];
      [v226 setMaxFrameRate:?];

      v227 = [v3 compositeDelegate];
      v6 = [v227 frameRateManager];

      [v3 streaming];
      [v6 reportStreamStatus:? forDevice:?];
      v228 = [v6 allowedFrameRateRangeForDevice:?];
      v229 = [v228 maxFrameRate];
      [v229 unsignedIntValue];
      [v3 setMaxFrameRate:?];
LABEL_139:

      goto LABEL_38;
    }

    v231 = [*(a1 + 32) name];
    v232 = [v231 isEqualToString:?];

    if (v232)
    {
      v233 = [v3 activeConfiguration];
      v234 = [v233 minFrameRate];
      v235 = [*(a1 + 32) value];
      v236 = [v235 unsignedIntValue];

      if (v234 == v236)
      {
        goto LABEL_60;
      }

      v237 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
      {
        v238 = *(a1 + 40);
        v239 = [*(a1 + 32) value];
        *buf = 138543618;
        v335 = v238;
        v336 = 1024;
        LODWORD(v337) = [v239 unsignedIntValue];
        _os_log_impl(&dword_242545000, v237, OS_LOG_TYPE_DEFAULT, "%{public}@ MinFrameRate %u", buf, 0x12u);
      }

      v240 = [*(a1 + 32) value];
      [v240 unsignedIntValue];
      v241 = [v3 activeConfiguration];
      [v241 setMinFrameRate:?];

      v242 = [v3 compositeDelegate];
      v6 = [v242 frameRateManager];

      [v3 streaming];
      [v6 reportStreamStatus:? forDevice:?];
      v228 = [v6 allowedFrameRateRangeForDevice:?];
      v229 = [v228 minFrameRate];
      [v229 unsignedIntValue];
      [v3 setMinFrameRate:?];
      goto LABEL_139;
    }

    v243 = [*(a1 + 32) name];
    v244 = [v243 isEqualToString:?];

    if (v244)
    {
      v245 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
      {
        v246 = *(a1 + 40);
        *buf = 138543618;
        v335 = v246;
        v336 = 2080;
        v337 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
      }

      v247 = [v3 videoDevice];
      [v247 lockForConfiguration:?];
      v248 = 0;

      if (v248)
      {
        v249 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
        {
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_2();
        }

LABEL_155:

        goto LABEL_62;
      }

      v269 = [v3 videoDevice];
      [v269 performOneShotFraming];
    }

    else
    {
      v250 = [*(a1 + 32) name];
      v251 = [v250 isEqualToString:?];

      if (!v251)
      {
        v255 = [*(a1 + 32) name];
        v256 = [v255 isEqualToString:?];

        if (v256)
        {
          v257 = [v3 activeConfiguration];
          [v257 portraitEffectAperture];
          v259 = v258;
          v260 = [*(a1 + 32) value];
          [v260 floatValue];
          v262 = v261;

          if (v259 != v262)
          {
            v263 = [*(a1 + 32) value];
            [v263 floatValue];
            v264 = [v3 activeConfiguration];
            [v264 setPortraitEffectAperture:?];

            v265 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
            {
              v266 = *(a1 + 40);
              v267 = [v3 activeConfiguration];
              [v267 portraitEffectAperture];
              *buf = 138543618;
              v335 = v266;
              v336 = 2048;
              v337 = v268;
              _os_log_impl(&dword_242545000, v265, OS_LOG_TYPE_DEFAULT, "%{public}@ PortraitEffectAperture %f", buf, 0x16u);
            }

            v11 = [*(a1 + 32) value];
            [v11 floatValue];
            [v3 setPortraitEffectAperture:?];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v270 = [*(a1 + 32) name];
        v271 = [v270 isEqualToString:?];

        if (v271)
        {
          v272 = [v3 activeConfiguration];
          [v272 studioLightingIntensity];
          v274 = v273;
          v275 = [*(a1 + 32) value];
          [v275 floatValue];
          v277 = v276;

          if (v274 != v277)
          {
            v278 = [*(a1 + 32) value];
            [v278 floatValue];
            v279 = [v3 activeConfiguration];
            [v279 setStudioLightingIntensity:?];

            v280 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
            {
              v281 = *(a1 + 40);
              v282 = [v3 activeConfiguration];
              [v282 studioLightingIntensity];
              *buf = 138543618;
              v335 = v281;
              v336 = 2048;
              v337 = v283;
              _os_log_impl(&dword_242545000, v280, OS_LOG_TYPE_DEFAULT, "%{public}@ StudioLightingIntensity %f", buf, 0x16u);
            }

            v11 = [*(a1 + 32) value];
            [v11 floatValue];
            [v3 setStudioLightingIntensity:?];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v284 = [*(a1 + 32) name];
        v285 = [v284 isEqualToString:?];

        if (v285)
        {
          v286 = [v3 activeConfiguration];
          v287 = [v286 reactionEffectGesturesEnabled];
          v288 = [*(a1 + 32) value];
          v289 = [v288 BOOLValue];

          if (v287 != v289)
          {
            v290 = [*(a1 + 32) value];
            [v290 BOOLValue];
            v291 = [v3 activeConfiguration];
            [v291 setReactionEffectGesturesEnabled:?];

            v292 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
            {
              v293 = *(a1 + 40);
              v294 = [v3 activeConfiguration];
              *buf = 138543618;
              v335 = v293;
              v336 = 1024;
              LODWORD(v337) = [v294 reactionEffectGesturesEnabled];
              _os_log_impl(&dword_242545000, v292, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffectGesturesEnabled %d", buf, 0x12u);
            }

            v11 = [*(a1 + 32) value];
            [v11 BOOLValue];
            [v3 setReactionEffectGesturesEnabled:?];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v295 = [*(a1 + 32) name];
        v296 = [v295 isEqualToString:?];

        if (v296)
        {
          v297 = [v3 activeConfiguration];
          v298 = [v297 reactionEffectSuppressedGesturesEnabled];
          v299 = [*(a1 + 32) value];
          v300 = [v299 BOOLValue];

          if (v298 != v300)
          {
            v301 = [*(a1 + 32) value];
            [v301 BOOLValue];
            v302 = [v3 activeConfiguration];
            [v302 setReactionEffectSuppressedGesturesEnabled:?];

            v303 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
            {
              v304 = *(a1 + 40);
              v305 = [v3 activeConfiguration];
              *buf = 138543618;
              v335 = v304;
              v336 = 1024;
              LODWORD(v337) = [v305 reactionEffectSuppressedGesturesEnabled];
              _os_log_impl(&dword_242545000, v303, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffectSuppressedGesturesEnabled %d", buf, 0x12u);
            }

            v11 = [*(a1 + 32) value];
            [v11 BOOLValue];
            [v3 setReactionEffectSuppressedGesturesEnabled:?];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v306 = [*(a1 + 32) name];
        v307 = [v306 isEqualToString:?];

        v308 = *(a1 + 32);
        if (v307)
        {
          [v308 value];
          v309 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v310 = [v3 activeConfiguration];
          v311 = [v310 backgroundReplacementPixelBuffer];

          if (v311 != *&v309)
          {
            v312 = [v3 activeConfiguration];
            [v312 setBackgroundReplacementPixelBuffer:?];

            v313 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
            {
              v314 = *(a1 + 40);
              *buf = 138543618;
              v335 = v314;
              v336 = 2112;
              v337 = v309;
              _os_log_impl(&dword_242545000, v313, OS_LOG_TYPE_DEFAULT, "%{public}@ BackgroundReplacementPixelBuffer %@", buf, 0x16u);
            }

            [v3 setBackgroundReplacementPixelBuffer:?];
          }

          goto LABEL_60;
        }

        v315 = [v308 name];
        v316 = [v315 isEqualToString:?];

        if (v316)
        {
          v317 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
          {
            v318 = *(a1 + 40);
            v319 = [*(a1 + 32) value];
            v320 = [v319 BOOLValue];
            v321 = @"NO";
            if (v320)
            {
              v321 = @"YES";
            }

            *buf = 138543874;
            v335 = v318;
            v336 = 2080;
            v337 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
            v338 = 2112;
            x = *&v321;
          }

          v322 = [*(a1 + 32) value];
          [v322 BOOLValue];
          v323 = [v3 activeConfiguration];
          [v323 setCenterStageFieldOfViewRestrictedToWide:?];

          v324 = [v3 activeConfiguration];
          v325 = [v324 isCenterStageForcefullyEnabled];

          if (v325)
          {
            [v3 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:?];
            v326 = [v3 companionDevice];
            [v326 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:?];
          }

          v56 = [v3 activeConfiguration];
          [v56 setCenterStageEnabled:?];
          goto LABEL_58;
        }

        v327 = [*(a1 + 32) name];
        v328 = [v327 isEqualToString:?];

        if (!v328)
        {
          v11 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v333 = *(a1 + 32);
            v332 = *(a1 + 40);
            *buf = 138543618;
            v335 = v332;
            v336 = 2114;
            v337 = v333;
            _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ unhandled control %{public}@", buf, 0x16u);
          }

          goto LABEL_59;
        }

        v329 = [*(a1 + 32) value];
        [v329 integerValue];
        v11 = [CMContinuityCaptureConfiguration stringForManualFramingDeviceType:?];

        v330 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
        {
          v331 = objc_loadWeakRetained((a1 + 48));
          *buf = 138543874;
          v335 = v331;
          v336 = 2080;
          v337 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
          v338 = 2112;
          x = *&v11;
        }

        v209 = [*(a1 + 32) value];
        [v209 integerValue];
        [v3 _updateManualFramingDeviceType:?];
        goto LABEL_142;
      }

      v252 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
      {
        v253 = *(a1 + 40);
        *buf = 138543618;
        v335 = v253;
        v336 = 2080;
        v337 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
      }

      v254 = [v3 videoDevice];
      [v254 lockForConfiguration:?];
      v248 = 0;

      if (v248)
      {
        v249 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
        {
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_1();
        }

        goto LABEL_155;
      }

      v269 = [v3 videoDevice];
      [v269 resetFraming];
    }

    v11 = [v3 videoDevice];
    [v11 unlockForConfiguration];
    goto LABEL_59;
  }

  v21 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_loadWeakRetained((a1 + 48));
    v23 = *(a1 + 32);
    *buf = 138543618;
    v335 = v22;
    v336 = 2112;
    v337 = v23;
    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping control %@ update since capture stack not active", buf, 0x16u);
  }

  v24 = v3[47];
  v25 = [*(a1 + 32) name];
  [v24 setObject:? forKeyedSubscript:?];

LABEL_62:
}

- (void)_updatePhotoOutputConfigs
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_43(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
  }
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  errorCopy = error;
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v12 = compositeDelegate;
  if (compositeDelegate)
  {
    server = [compositeDelegate server];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    photoRequests = selfCopy->_photoRequests;
    v16 = MEMORY[0x277CCABB0];
    resolvedSettings = [photoCopy resolvedSettings];
    [resolvedSettings uniqueID];
    v18 = [v16 numberWithLongLong:?];
    v19 = [(NSMutableDictionary *)photoRequests objectForKeyedSubscript:?];
    v20 = [v19 copy];

    objc_sync_exit(selfCopy);
    if (v20)
    {
      v35 = outputCopy;
      [v20 setCaptureComplete:?];
      [v20 setError:?];
      fileDataRepresentation = [photoCopy fileDataRepresentation];
      [v20 setImageFileData:?];

      resolvedSettings2 = [photoCopy resolvedSettings];
      [resolvedSettings2 photoDimensions];

      compressedFormat = [v20 compressedFormat];
      [compressedFormat isEqualToString:?];

      [v20 setImageCodecType:?];
      [v20 setImageWidth:?];
      [v20 setImageHeight:?];
      v24 = server;
      timeSyncClock = [server timeSyncClock];

      if (timeSyncClock)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        captureSession = [(CMContinuityCaptureRemoteVideoDevice *)selfCopy captureSession];
        synchronizationClock = [captureSession synchronizationClock];

        memset(&buf, 170, sizeof(buf));
        if (photoCopy)
        {
          [&buf timestamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        time = buf;
        memset(&v39, 170, sizeof(v39));
        CMSyncConvertTime(&v39, &time, synchronizationClock, HostTimeClock);
        v24 = server;
        timeSyncClock2 = [server timeSyncClock];
        time = v39;
        CMClockConvertHostTimeToSystemUnits(&time);
        v30 = [timeSyncClock2 domainTimeForMachAbsoluteTime:?];

        if (v30 != *MEMORY[0x277D714E8])
        {
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
          [v20 setNetworkTimestamp:?];
        }
      }

      v32 = CMContinuityCaptureLog(2);
      outputCopy = v35;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        entity = [(CMContinuityCaptureDeviceBase *)selfCopy entity];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = selfCopy;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v20;
        HIWORD(buf.epoch) = 2048;
        v37 = entity;
        _os_log_impl(&dword_242545000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Captured photo for %@, entity:%ld", &buf, 0x20u);
      }

      transportDevice = [(CMContinuityCaptureDeviceBase *)selfCopy transportDevice];
      [(CMContinuityCaptureDeviceBase *)selfCopy entity];
      [NSObject didCaptureStillImage:transportDevice entity:"didCaptureStillImage:entity:"];
    }

    else
    {
      transportDevice = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(transportDevice, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice captureOutput:didFinishProcessingPhoto:error:];
      }

      v24 = server;
    }
  }
}

- (void)captureOutput:(id)output didFinishCaptureForResolvedSettings:(id)settings error:(id)error
{
  outputCopy = output;
  settingsCopy = settings;
  errorCopy = error;
  uniqueID = [settingsCopy uniqueID];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  photoRequests = selfCopy->_photoRequests;
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v15 = [(NSMutableDictionary *)photoRequests objectForKeyedSubscript:?];
  v16 = [v15 copy];

  v17 = selfCopy->_photoRequests;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  [NSMutableDictionary setObject:v17 forKeyedSubscript:"setObject:forKeyedSubscript:"];

  objc_sync_exit(selfCopy);
  v19 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    v21 = selfCopy;
    v22 = 2048;
    v23 = uniqueID;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ DidFinishCapture for captureID:%lld. Removed %@ from photoRequests", &v20, 0x20u);
  }
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v9 = compositeDelegate;
  if (compositeDelegate)
  {
    server = [compositeDelegate server];
    v11 = *MEMORY[0x277CF3FC8];
    dictionary = CMGetAttachment(buffer, *MEMORY[0x277CF3FC8], 0);
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      CMSetAttachment(buffer, v11, dictionary, 1u);
    }

    v13 = MEMORY[0x277CCABB0];
    [server currentSessionID];
    v14 = [v13 numberWithUnsignedLongLong:?];
    [dictionary setObject:? forKeyedSubscript:?];

    timeSyncClock = [server timeSyncClock];

    if (timeSyncClock)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
      synchronizationClock = [captureSession synchronizationClock];

      memset(&v42, 170, sizeof(v42));
      CMSampleBufferGetPresentationTimeStamp(&v42, buffer);
      memset(&v41, 170, sizeof(v41));
      v39 = v42;
      CMSyncConvertTime(&v41, &v39, synchronizationClock, HostTimeClock);
      timeSyncClock2 = [server timeSyncClock];
      v39 = v41;
      CMClockConvertHostTimeToSystemUnits(&v39);
      v20 = [timeSyncClock2 domainTimeForMachAbsoluteTime:?];

      timeSyncClock3 = [server timeSyncClock];
      grandMasterIdentifier = [timeSyncClock3 grandMasterIdentifier];

      if (v20 != *MEMORY[0x277D714E8])
      {
        if (CMContinityCaptureDebugLogEnabled(v23, v24))
        {
          v25 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v39.value) = 138543874;
            *(&v39.value + 4) = self;
            LOWORD(v39.flags) = 2048;
            *(&v39.flags + 2) = v20;
            HIWORD(v39.epoch) = 2048;
            v40 = grandMasterIdentifier;
            _os_log_debug_impl(&dword_242545000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ networkTime %llx identity %llx", &v39, 0x20u);
          }
        }

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        [dictionary setObject:? forKeyedSubscript:?];

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        [dictionary setObject:? forKeyedSubscript:?];
      }
    }

    if (self->_metadataOutput)
    {
      v28 = CMGetAttachment(buffer, *MEMORY[0x277CF3F48], 0);
      if (v28)
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
        v31 = [availableMetadataObjectTypes containsObject:?];

        if (v31)
        {
          v32 = [v28 objectForKeyedSubscript:?];
          [dictionary2 setObject:? forKeyedSubscript:?];
        }

        availableMetadataObjectTypes2 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
        v34 = [availableMetadataObjectTypes2 containsObject:?];

        if (v34)
        {
          v35 = [v28 objectForKeyedSubscript:?];
          [dictionary2 setObject:? forKeyedSubscript:?];
        }

        availableMetadataObjectTypes3 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
        v37 = [availableMetadataObjectTypes3 containsObject:?];

        if (v37)
        {
          v38 = [v28 objectForKeyedSubscript:?];
          [dictionary2 setObject:? forKeyedSubscript:?];
        }

        [dictionary setObject:? forKeyedSubscript:?];
        [dictionary setObject:? forKeyedSubscript:?];
      }

      CMGetAttachment(buffer, *MEMORY[0x277CF3F60], 0);
    }

    if (self->_captureStackActive && self->_propagateCaptureSessionRestartedAttachment)
    {
      self->_propagateCaptureSessionRestartedAttachment = 0;
      [dictionary setObject:? forKeyedSubscript:?];
    }

    [(CMContinuityCaptureDeviceBase *)self entity];
    [CMContinuityCaptureRemoteVideoDevice dispatchFrame:"dispatchFrame:entity:completion:" entity:? completion:?];
  }
}

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  ++self->_videoBufferDropCounter;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureRemoteVideoDevice *)self _shouldPrintDroppedSampleBufferLog:?])
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice captureOutput:didDropSampleBuffer:fromConnection:];
    }
  }
}

- (void)_registerDockKitNotification
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *self = v1;
}

void __68__CMContinuityCaptureRemoteVideoDevice__registerDockKitNotification__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"disabled";
      if (a2)
      {
        v5 = @"enabled";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "[dock] DockKit device is %@. Restarting the stream.", &v7, 0xCu);
    }

    v6 = [WeakRetained compositeDelegate];
    [WeakRetained entity];
    [v6 postEvent:? entity:? data:?];
  }
}

- (void)setDockedTrackingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [(AVCaptureDevice *)self->_videoDevice lockForConfiguration:?];
  v6 = CMContinuityCaptureLog(2);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (enabledCopy)
      {
        v8 = @"YES";
      }

      v9 = 138543874;
      selfCopy = self;
      v11 = 2080;
      v12 = "[CMContinuityCaptureRemoteVideoDevice setDockedTrackingEnabled:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "[dock] %{public}@ %s docked tracking enabled: %@", &v9, 0x20u);
    }

    [(AVCaptureDevice *)self->_videoDevice setDockedTrackingEnabled:?];
    [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setDockedTrackingEnabled:];
    }
  }
}

- (CMContinuityCaptureRemoteVideoDevice)companionDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_companionDevice);

  return WeakRetained;
}

- (CMContinuityCaptureRemoteVideoDevice)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate captureSession:(id)session
{
  capabilitiesCopy = capabilities;
  delegateCopy = delegate;
  sessionCopy = session;
  server = [OUTLINED_FUNCTION_25() server];
  v13 = server;
  if (server && ([server localDevice], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "queue"), v15 = objc_claimAutoreleasedReturnValue(), v30.receiver = self, v30.super_class = CMContinuityCaptureRemoteVideoDevice, self = -[CMContinuityCaptureDeviceBase initWithCapabilities:compositeDelegate:transportDevice:queue:](&v30, sel_initWithCapabilities_compositeDelegate_transportDevice_queue_, capabilitiesCopy, delegateCopy, v14, v15), v15, v14, self))
  {
    objc_storeStrong(&self->_captureSession, session);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cmControlByName = self->_cmControlByName;
    self->_cmControlByName = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cmControlByNameWithPendingUpdates = self->_cmControlByNameWithPendingUpdates;
    self->_cmControlByNameWithPendingUpdates = v18;

    self->_isUltraWideCameraSupported = [(CMContinuityCaptureRemoteVideoDevice *)self _isUltraWideCameraSupported];
    self->_gazeSelectionEnabled = [v13 clientDeviceModel] != 2;
    v20 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      gazeSelectionEnabled = self->_gazeSelectionEnabled;
      v24 = 138412802;
      selfCopy = self;
      v26 = 1024;
      v27 = gazeSelectionEnabled;
      v28 = 2048;
      clientDeviceModel = [v13 clientDeviceModel];
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ gazeSelectionEnabled %d, clientDeviceModel %ld", &v24, 0x1Cu);
    }

    if ([(CMContinuityCaptureDeviceBase *)self entity]== 1)
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self _registerDockKitNotification];
    }

    self->_manualFramingFeatureFlagEnabled = _os_feature_enabled_impl();
    [(CMContinuityCaptureRemoteVideoDevice *)self setupControls];
    self = self;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (BOOL)isStreamingOnSuperWide
{
  if (![(CMContinuityCaptureDeviceBase *)self streaming])
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if ([activeConfiguration centerStageEnabled])
  {
  }

  else
  {
    activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    isCenterStageForcefullyEnabled = [activeConfiguration2 isCenterStageForcefullyEnabled];

    if (!isCenterStageForcefullyEnabled)
    {
      activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      LOBYTE(v7) = [activeConfiguration3 manualFramingDeviceType] == 2;
      goto LABEL_7;
    }
  }

  activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v7 = [activeConfiguration3 centerStageFieldOfViewRestrictedToWide] ^ 1;
LABEL_7:

  return v7;
}

- (NSDictionary)centerStageRectOfInterest
{
  v3 = &unk_2854ECD88;
  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    [(AVCaptureDevice *)videoDevice centerStageRectOfInterest];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v8);

    v3 = DictionaryRepresentation;
  }

  return v3;
}

- (BOOL)configureConnections
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  format = [activeConfiguration format];
  [format maxFrameRate];
  activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  format2 = [activeConfiguration2 format];
  [format2 minFrameRate];
  v8 = [CMContinuityCaptureRemoteVideoDevice compatibleDeviceFormatForMaxFrameRate:"compatibleDeviceFormatForMaxFrameRate:minFrameRate:" minFrameRate:?];

  v9 = CMContinuityCaptureLog(2);
  v10 = v9;
  v11 = 0x27ECB3000uLL;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      localizedName = [(AVCaptureDevice *)self->_videoDevice localizedName];
      activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      maxFrameRate = [activeConfiguration3 maxFrameRate];
      activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      minFrameRate = [activeConfiguration4 minFrameRate];
      activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      suppressVideoEffects = [activeConfiguration5 suppressVideoEffects];
      activeConfiguration6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      portraitEffectEnabled = [activeConfiguration6 portraitEffectEnabled];
      activeConfiguration7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      centerStageEnabled = [activeConfiguration7 centerStageEnabled];
      activeConfiguration8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      studioLightingEnabled = [activeConfiguration8 studioLightingEnabled];
      activeConfiguration9 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      reactionEffectsEnabled = [activeConfiguration9 reactionEffectsEnabled];
      activeConfiguration10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      backgroundReplacementEnabled = [activeConfiguration10 backgroundReplacementEnabled];
      activeConfiguration11 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      isCenterStageForcefullyEnabled = [activeConfiguration11 isCenterStageForcefullyEnabled];
      activeConfiguration12 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration12 portraitEffectAperture];
      v16 = v15;
      activeConfiguration13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration13 studioLightingIntensity];
      v19 = v18;
      activeConfiguration14 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      reactionEffectGesturesEnabled = [activeConfiguration14 reactionEffectGesturesEnabled];
      activeConfiguration15 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration15 reactionEffectSuppressedGesturesEnabled];
      OUTLINED_FUNCTION_10_1();
      *v114 = localizedName;
      *&v114[8] = v23;
      v115 = v8;
      v116 = 1024;
      v117 = maxFrameRate;
      v118 = 1024;
      v119 = minFrameRate;
      v120 = 1024;
      v121 = suppressVideoEffects;
      v122 = 1024;
      v123 = portraitEffectEnabled;
      v124 = 1024;
      v125 = centerStageEnabled;
      v126 = 1024;
      v127 = studioLightingEnabled;
      v128 = 1024;
      v129 = reactionEffectsEnabled;
      v130 = 1024;
      v131 = backgroundReplacementEnabled;
      v132 = 1024;
      v133 = isCenterStageForcefullyEnabled;
      v134 = 2048;
      v135 = v16;
      v136 = 2048;
      v137 = v19;
      v138 = 1024;
      v139 = reactionEffectGesturesEnabled;
      v140 = 1024;
      v141 = v24;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting format for %@: %@ FR: %d MnFR: %d SVE %d PE %d CS %d SL %d RE %d BR %d FCS %d BBA: %f SLI: %f REG: %d RESG: %d", buf, 0x76u);

      v11 = 0x27ECB3000;
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self setFormat:?];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedName2 = [(AVCaptureDevice *)self->_videoDevice localizedName];
      activeConfiguration16 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      OUTLINED_FUNCTION_10_1();
      *v114 = localizedName2;
      *&v114[8] = v79;
      v115 = v80;
      _os_log_error_impl(&dword_242545000, v10, OS_LOG_TYPE_ERROR, " %@ Unable to find compatible device format for %@ configuration %@", buf, 0x20u);
    }

    v25 = MEMORY[0x277CBEAD8];
    activeConfiguration17 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v25 raise:self format:activeConfiguration17];
  }

  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  frameRateManager = [compositeDelegate frameRateManager];
  v29 = [frameRateManager allowedFrameRateRangeForDevice:?];

  maxFrameRate2 = [v29 maxFrameRate];
  [maxFrameRate2 unsignedIntValue];
  [(CMContinuityCaptureRemoteVideoDevice *)self setMaxFrameRate:?];

  maxFrameRate3 = [v29 maxFrameRate];
  [maxFrameRate3 unsignedIntValue];
  [(CMContinuityCaptureRemoteVideoDevice *)self setMinFrameRate:?];

  v32 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_43(v32))
  {
    maxFrameRate4 = [(CMContinuityCaptureRemoteVideoDevice *)self maxFrameRate];
    [(CMContinuityCaptureRemoteVideoDevice *)self minFrameRate];
    OUTLINED_FUNCTION_19_0();
    v113 = 1024;
    *v114 = maxFrameRate4;
    *&v114[4] = 1024;
    *&v114[6] = v34;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v35, v36, OS_LOG_TYPE_DEFAULT, v37, v38, 0x18u);
  }

  [(CMContinuityCaptureRemoteVideoDevice *)self setMinFrameDurationOverrideIfApplicable];
  if ([(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking])
  {
    activeConfiguration18 = *(v11 + 2216);
    [*(&self->super.super.isa + activeConfiguration18) lockForConfiguration:?];
    [*(&self->super.super.isa + activeConfiguration18) setVideoZoomFactor:?];
    [*(&self->super.super.isa + activeConfiguration18) unlockForConfiguration];
  }

  else
  {
    activeConfiguration18 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration18 videoZoomFactor];
    [(CMContinuityCaptureRemoteVideoDevice *)self setVideoZoomFactor:?];
  }

  videoDataOutput = self->_videoDataOutput;
  if (videoDataOutput)
  {
    v41 = [(AVCaptureVideoDataOutput *)videoDataOutput connectionWithMediaType:?];
    v42 = v41;
    if (v41 && [v41 isVideoDeviceOrientationCorrectionSupported])
    {
      [v42 setVideoMirrored:?];
    }

    else
    {
      v43 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_24(v43))
      {
        OUTLINED_FUNCTION_10_1();
        *v114 = v42;
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_11_0(v72, v73, v74, v75, v76);
      }
    }

    activeConfiguration19 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    asyncStillCaptureEnabled = [activeConfiguration19 asyncStillCaptureEnabled];

    if (asyncStillCaptureEnabled)
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self _updatePhotoOutputConfigs];
      v46 = *(v11 + 2216);
      activeFormat = [*(&self->super.super.isa + v46) activeFormat];
      supportedMaxPhotoDimensions = [activeFormat supportedMaxPhotoDimensions];
      v49 = [supportedMaxPhotoDimensions count];

      if (v49)
      {
        *buf = 0xAAAAAAAAAAAAAAAALL;
        activeFormat2 = [*(&self->super.super.isa + v46) activeFormat];
        supportedMaxPhotoDimensions2 = [activeFormat2 supportedMaxPhotoDimensions];
        lastObject = [supportedMaxPhotoDimensions2 lastObject];
        [lastObject getValue:?];

        [(AVCapturePhotoOutput *)self->_photoOutput setMaxPhotoDimensions:?];
      }

      else
      {
        v54 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_24(v54))
        {
          activeFormat3 = [*(&self->super.super.isa + v46) activeFormat];
          OUTLINED_FUNCTION_10_1();
          *v114 = v82;
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_11_0(v83, v84, v85, v86, v87);
        }
      }

      [(AVCapturePhotoOutput *)self->_photoOutput setHighResolutionCaptureEnabled:?];
      v53 = [(AVCapturePhotoOutput *)self->_photoOutput connectionWithMediaType:?];
      [v42 videoOrientation];
      [v53 setVideoOrientation:?];
      [v42 isVideoMirrored];
      [v53 setVideoMirrored:?];
    }

    else
    {
      v53 = 0;
    }

    if (self->_metadataOutput)
    {
      v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v55 = 0;
    }

    activeConfiguration20 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    faceDetectionEnabled = [activeConfiguration20 faceDetectionEnabled];

    if (faceDetectionEnabled)
    {
      availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
      v59 = *MEMORY[0x277CE5A50];
      v60 = [availableMetadataObjectTypes containsObject:?];

      if ((v60 & 1) == 0)
      {
        v88 = CMContinuityCaptureLog(2);
        if (!OUTLINED_FUNCTION_24(v88))
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      [v55 addObject:?];
    }

    activeConfiguration21 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    humanBodyDetectionEnabled = [activeConfiguration21 humanBodyDetectionEnabled];

    if (humanBodyDetectionEnabled)
    {
      availableMetadataObjectTypes2 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
      v59 = *MEMORY[0x277CE5A58];
      v64 = [availableMetadataObjectTypes2 containsObject:?];

      if ((v64 & 1) == 0)
      {
        v89 = CMContinuityCaptureLog(2);
        if (!OUTLINED_FUNCTION_24(v89))
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      [v55 addObject:?];
    }

    activeConfiguration22 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    humanFullBodyDetectionEnabled = [activeConfiguration22 humanFullBodyDetectionEnabled];

    if (!humanFullBodyDetectionEnabled)
    {
LABEL_40:
      metadataOutput = self->_metadataOutput;
      if (metadataOutput)
      {
        [(AVCaptureMetadataOutput *)metadataOutput setMetadataObjectTypes:?];
        metadataOutput = self->_metadataOutput;
      }

      v70 = [(AVCaptureMetadataOutput *)metadataOutput connectionWithMediaType:?];
      [v70 setEnabled:?];

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
      goto LABEL_43;
    }

    availableMetadataObjectTypes3 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
    v59 = *MEMORY[0x277CE5A60];
    v68 = [availableMetadataObjectTypes3 containsObject:?];

    if (v68)
    {
      [v55 addObject:?];
      goto LABEL_40;
    }

    v90 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_24(v90))
    {
LABEL_50:

LABEL_43:
      goto LABEL_44;
    }

LABEL_51:
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_36();
    _os_log_error_impl(v91, v92, OS_LOG_TYPE_ERROR, v93, v94, 0xCu);
    goto LABEL_50;
  }

LABEL_44:

  return 1;
}

- (BOOL)_companionConnectionsRequired
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v5 = companionDevice;
  if (!companionDevice || ([companionDevice streaming] & 1) != 0)
  {
    isCenterStageForcefullyEnabled = 0;
    goto LABEL_13;
  }

  manualFramingFeatureFlagEnabled = self->_manualFramingFeatureFlagEnabled;
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  centerStageEnabled = [activeConfiguration centerStageEnabled];
  if (!manualFramingFeatureFlagEnabled)
  {
    if (centerStageEnabled)
    {
      isCenterStageForcefullyEnabled = 1;
    }

    else
    {
      activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      isCenterStageForcefullyEnabled = [activeConfiguration2 isCenterStageForcefullyEnabled];
    }

    goto LABEL_12;
  }

  if (centerStageEnabled)
  {

LABEL_9:
    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    centerStageFieldOfViewRestrictedToWide = [activeConfiguration centerStageFieldOfViewRestrictedToWide];
    goto LABEL_10;
  }

  activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  isCenterStageForcefullyEnabled2 = [activeConfiguration3 isCenterStageForcefullyEnabled];

  if (isCenterStageForcefullyEnabled2)
  {
    goto LABEL_9;
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if ([activeConfiguration manualFramingDeviceType] != 2)
  {
    isCenterStageForcefullyEnabled = 0;
    goto LABEL_12;
  }

  centerStageFieldOfViewRestrictedToWide = [(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking];
LABEL_10:
  isCenterStageForcefullyEnabled = centerStageFieldOfViewRestrictedToWide ^ 1;
LABEL_12:

LABEL_13:
  return isCenterStageForcefullyEnabled;
}

- (BOOL)startCameraCaptureStack:(unint64_t)stack
{
  if (self->_dockedTrackingSupported)
  {
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    v6 = [compositeDelegate controlWithName:?];

    if (v6)
    {
      v7 = MEMORY[0x277CCABB0];
      [(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking];
      v8 = [v7 numberWithBool:?];
      [v6 setValue:?];

      compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      [compositeDelegate setValueForControl:? completion:?];
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_captureStackActive || [(CMContinuityCaptureDeviceBase *)self invalidated])
  {
    goto LABEL_40;
  }

  self->_videoBufferDropCounter = 0;
  v10 = objc_opt_new();
  cameraCaptureStreamSessionID = self->_cameraCaptureStreamSessionID;
  self->_cameraCaptureStreamSessionID = v10;

  v12 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_16(v12))
  {
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v14 = self->_cameraCaptureStreamSessionID;
    [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    *buf = 138544642;
    selfCopy3 = self;
    v73 = 2048;
    v74 = currentSessionID;
    v75 = 2080;
    v76 = "[CMContinuityCaptureRemoteVideoDevice startCameraCaptureStack:]";
    v77 = 1024;
    stackCopy = stack;
    v79 = 2114;
    v80 = v14;
    v82 = v81 = 2114;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0x3Au);
  }

  +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
  objc_claimAutoreleasedReturnValue();
  activeConfiguration = [OUTLINED_FUNCTION_20_0() activeConfiguration];
  [activeConfiguration entity];
  [compositeDelegate incrementExceptionCountForEntity:?];

  captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  [captureSession willConfigure];

  activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  LODWORD(activeConfiguration) = [activeConfiguration2 isCenterStageForcefullyEnabled];

  if (activeConfiguration)
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self _forcefullyEnableCenterStageOnSuperWide];
  }

  [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_20_0() entity];
  v23 = [activeConfiguration2 hasConnectionsForEntity:?];

  if ((v23 & 1) == 0)
  {
    [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    objc_claimAutoreleasedReturnValue();
    v24 = [OUTLINED_FUNCTION_20_0() connectionsForConfiguration:?];
    [v9 addObjectsFromArray:?];

    v25 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v25))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
    }

    if (![v9 count])
    {
      v65 = CMContinuityCaptureLog(2);
      if (!OUTLINED_FUNCTION_41(v65))
      {
LABEL_39:

LABEL_40:
        v63 = 0;
        goto LABEL_35;
      }

      *buf = 138543362;
      selfCopy3 = self;
LABEL_42:
      _os_log_error_impl(&dword_242545000, stack, OS_LOG_TYPE_ERROR, "%{public}@ Invalid connections", buf, 0xCu);
      goto LABEL_39;
    }
  }

  if ([(CMContinuityCaptureRemoteVideoDevice *)self _companionConnectionsRequired])
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    objc_claimAutoreleasedReturnValue();
    activeConfiguration3 = [OUTLINED_FUNCTION_20_0() activeConfiguration];
    v32 = [activeConfiguration2 connectionsForConfiguration:?];
    [v9 addObjectsFromArray:?];

    v33 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v33))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    }

    if (![v9 count])
    {
      v66 = CMContinuityCaptureLog(2);
      if (!OUTLINED_FUNCTION_41(v66))
      {
        goto LABEL_39;
      }

      *buf = 138543362;
      selfCopy3 = self;
      goto LABEL_42;
    }
  }

  if ([v9 count])
  {
    activeConfiguration2 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    [activeConfiguration2 addConnections:?];
  }

  else
  {
    v39 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v39))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    }
  }

  videoDataConnection = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
  isEnabled = [videoDataConnection isEnabled];

  if ((isEnabled & 1) == 0)
  {
    videoDataConnection2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
    [videoDataConnection2 setEnabled:?];

    v48 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v48))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    }
  }

  compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  frameRateManager = [compositeDelegate2 frameRateManager];
  [frameRateManager reportStreamStatus:? forDevice:?];

  [(CMContinuityCaptureRemoteVideoDevice *)self configureConnections];
  captureSession2 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  [captureSession2 didConfigure];

  captureSession3 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  [captureSession3 start];

  [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
  self->_captureStackActive = 1;
  v67[9] = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  allValues = [(NSMutableDictionary *)self->_cmControlByNameWithPendingUpdates allValues];
  v59 = [allValues countByEnumeratingWithState:? objects:? count:?];
  if (v59)
  {
    v60 = v59;
    v61 = *v68;
    do
    {
      for (i = 0; i != v60; i = (i + 1))
      {
        if (*v68 != v61)
        {
          objc_enumerationMutation(allValues);
        }

        [CMContinuityCaptureRemoteVideoDevice setValueForControl:"setValueForControl:completion:" completion:?];
      }

      v60 = [allValues countByEnumeratingWithState:? objects:? count:?];
    }

    while (v60);
  }

  v67[0].receiver = self;
  v67[0].super_class = CMContinuityCaptureRemoteVideoDevice;
  v63 = [(objc_super *)v67 startCameraCaptureStack:stack];
LABEL_35:

  return v63;
}

- (BOOL)_shouldOnlyDisableVideoConnection
{
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if ([activeConfiguration centerStageEnabled])
  {
    isCenterStageForcefullyEnabled = 1;
  }

  else
  {
    activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    isCenterStageForcefullyEnabled = [activeConfiguration2 isCenterStageForcefullyEnabled];
  }

  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  streaming = [companionDevice streaming];

  if (streaming)
  {
    if (self->_manualFramingFeatureFlagEnabled)
    {
      activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v9 = activeConfiguration3;
      if (isCenterStageForcefullyEnabled)
      {
        isCenterStageForcefullyEnabled = [activeConfiguration3 centerStageFieldOfViewRestrictedToWide] ^ 1;
      }

      else
      {
        isCenterStageForcefullyEnabled = [activeConfiguration3 manualFramingDeviceType] == 2;
      }
    }
  }

  else
  {
    LOBYTE(isCenterStageForcefullyEnabled) = 0;
  }

  return isCenterStageForcefullyEnabled;
}

- (void)_stopCameraCaptureStackRemoveCaptureSessionConnectionsWithOption:(unint64_t)option
{
  if ((option & 0x600) != 0)
  {
    _shouldOnlyDisableVideoConnection = 0;
  }

  else
  {
    _shouldOnlyDisableVideoConnection = [(CMContinuityCaptureRemoteVideoDevice *)self _shouldOnlyDisableVideoConnection];
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  isCenterStageForcefullyEnabled = [activeConfiguration isCenterStageForcefullyEnabled];

  if (isCenterStageForcefullyEnabled)
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:?];
    activeConfiguration = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [activeConfiguration _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:?];
  }

  if (_shouldOnlyDisableVideoConnection)
  {
    activeConfiguration = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
    [activeConfiguration setEnabled:?];

    v7 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_28(v7))
    {
      goto LABEL_12;
    }
  }

  else
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    objc_claimAutoreleasedReturnValue();
    connections = [OUTLINED_FUNCTION_30() connections];
    OUTLINED_FUNCTION_33(connections);

    v9 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_28(v9))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_7_2();
  _os_log_impl(v10, v11, v12, v13, v14, 0x12u);
LABEL_12:

  [(CMContinuityCaptureRemoteVideoDevice *)self tearDownConnectionsWithVideoDataConnectionDisabled:?];
  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];

  if (!companionDevice)
  {
    return;
  }

  companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  [companionDevice2 connections];
  if (objc_claimAutoreleasedReturnValue())
  {
    companionDevice3 = [OUTLINED_FUNCTION_30() companionDevice];
    streaming = [companionDevice3 streaming];

    if (streaming)
    {
      return;
    }

    captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    companionDevice4 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [companionDevice4 connections];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_0() removeConnections:?];

    companionDevice5 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [companionDevice5 tearDownConnectionsWithVideoDataConnectionDisabled:?];

    companionDevice2 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(companionDevice2, OS_LOG_TYPE_DEFAULT))
    {
      companionDevice6 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_23(&dword_242545000, v23, v24, "Companion %{public}@ connections removed by %{public}@", v25, v26, v27, v28);
    }
  }
}

- (void)_restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:(BOOL)stack
{
  stackCopy = stack;
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  isCenterStageForcefullyEnabled = [activeConfiguration isCenterStageForcefullyEnabled];

  if (!isCenterStageForcefullyEnabled)
  {
    return;
  }

  v7 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_28(v7))
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  forcefulCenterStageEnablementType = [activeConfiguration2 forcefulCenterStageEnablementType];

  activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration3 setForcefulCenterStageEnablementType:?];

  if (forcefulCenterStageEnablementType == 1)
  {
    v25 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_28(v25))
    {
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_7_2();
      _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
    }

    if (stackCopy)
    {
      [OUTLINED_FUNCTION_35() setCenterStageEnabled:?];
    }

    activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration4 setCenterStageEnabled:?];

    if ([(CMContinuityCaptureRemoteVideoDevice *)self shouldRestoreCenterStageOnWideCamera])
    {
      activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration5 setCenterStageFieldOfViewRestrictedToWide:?];

      [OUTLINED_FUNCTION_35() setShouldRestoreCenterStageOnWideCamera:?];
    }

    activeConfiguration6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    manualFramingDeviceType = [activeConfiguration6 manualFramingDeviceType];

    if (manualFramingDeviceType == 1 && stackCopy)
    {
      v35 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_28(v35))
      {
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_7_2();
        _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
      objc_claimAutoreleasedReturnValue();
      connections = [OUTLINED_FUNCTION_30() connections];
      OUTLINED_FUNCTION_33(connections);

      [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
      objc_claimAutoreleasedReturnValue();
      activeConfiguration7 = [OUTLINED_FUNCTION_30() activeConfiguration];
      v43 = [(CMContinuityCaptureRemoteVideoDevice *)self connectionsForConfiguration:?];
      [activeConfiguration6 addConnections:?];
    }

LABEL_21:
    if (!stackCopy)
    {
      return;
    }

    goto LABEL_22;
  }

  if (forcefulCenterStageEnablementType != 2)
  {
    goto LABEL_21;
  }

  v16 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_28(v16))
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
  }

  activeConfiguration8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [activeConfiguration8 setCenterStageFieldOfViewRestrictedToWide:?];

  [OUTLINED_FUNCTION_35() setShouldRestoreCenterStageOnWideCamera:?];
  if (stackCopy)
  {
    captureSession = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    [(CMContinuityCaptureRemoteVideoDevice *)self connections];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_25() removeConnections:?];

    captureSession2 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_30() connectionsForConfiguration:?];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_0() addConnections:?];

LABEL_22:
    [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
  }
}

- (id)createAVCVideoStream
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  transportStream = [(CMContinuityCaptureDeviceBase *)self transportStream];
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  server = [compositeDelegate server];

  if (!transportStream)
  {
    dictionary = 0;
    streamUUID = 0;
LABEL_21:
    v15 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  streamUUID = [transportStream streamUUID];
  if (!streamUUID)
  {
    dictionary = 0;
    goto LABEL_21;
  }

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    OUTLINED_FUNCTION_31();
    v24 = 2112;
    v25 = streamUUID;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCVideoStream for StreamUUID %@", buf, 0x20u);
  }

  [streamUUID getUUIDBytes:?];
  avcStreamNegotiator = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];

  if (!avcStreamNegotiator)
  {
    v11 = 0;
LABEL_9:
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_40();
      v23 = v11;
      _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalid avcStreamInitOptions, error %@", buf, 0x16u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = 0;
    goto LABEL_12;
  }

  avcStreamNegotiator2 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
  v10 = [avcStreamNegotiator2 generateMediaStreamInitOptionsWithError:?];
  v11 = 0;
  dictionary = [v10 mutableCopy];

  if (!dictionary)
  {
    goto LABEL_9;
  }

LABEL_12:
  sessionUUID = [server sessionUUID];
  [dictionary setObject:? forKeyedSubscript:?];

  v15 = [objc_alloc(MEMORY[0x277CE5758]) initWithNWConnectionClientID:? options:? error:?];
  v16 = v11;

  if (v15)
  {
    [v15 setDelegate:?];
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      OUTLINED_FUNCTION_31();
      v24 = v18;
      v25 = v15;
      _os_log_impl(&dword_242545000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCVideoStream %p Success", buf, 0x20u);
    }
  }

  else
  {
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_40();
      v23 = v16;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v17, v21, "%{public}@ AVCVideoStream create error %@", buf);
    }

    v15 = 0;
  }

LABEL_16:
  v19 = v15;

  return v19;
}

- (BOOL)startAVConferenceStack:(unint64_t)stack
{
  stopCompletionBlock = self->_stopCompletionBlock;
  self->_stopCompletionBlock = 0;

  self->_avcStreamInputActive = 0;
  if (!self->_avcVideoStream)
  {
    createAVCVideoStream = [(CMContinuityCaptureRemoteVideoDevice *)self createAVCVideoStream];
    avcVideoStream = self->_avcVideoStream;
    self->_avcVideoStream = createAVCVideoStream;

    if (!self->_avcVideoStream)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_8;
    }
  }

  v10 = objc_alloc(MEMORY[0x277CE5748]);
  [OUTLINED_FUNCTION_20_0() queue];
  objc_claimAutoreleasedReturnValue();
  activeConfiguration = [OUTLINED_FUNCTION_25() activeConfiguration];
  format = [activeConfiguration format];
  [format formatDescription];
  v36 = 0;
  v13 = [v4 initWithDelegate:? delegateQueue:? format:? options:? error:?];
  v14 = 0;
  avcStreamInput = self->_avcStreamInput;
  self->_avcStreamInput = v13;

  v16 = self->_avcStreamInput;
  if (!v16)
  {
    v23 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_41(v23))
    {
      goto LABEL_13;
    }

    *buf = 138543618;
    selfCopy = self;
    v31 = 2112;
    v32 = v14;
    v25 = "%{public}@ AVCVideoInput Error %@";
LABEL_18:
    OUTLINED_FUNCTION_11_0(&dword_242545000, v3, v24, v25, buf);
    goto LABEL_13;
  }

  [(AVCStreamInput *)v16 streamInputID];
  v17 = [(CMContinuityCaptureRemoteVideoDevice *)self newVideoStreamCurrentConfiguration:?];
  if (v17)
  {
    v3 = v17;
    v18 = self->_avcVideoStream;
    v35 = v14;
    v19 = [AVCVideoStream configure:v18 error:"configure:error:"];
    v20 = v14;

    if (v19)
    {
      [(AVCVideoStream *)self->_avcVideoStream start];
      v21 = 1;
    }

    else
    {
      v27 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_32();
        v33 = 2112;
        v34 = v20;
        _os_log_error_impl(&dword_242545000, v27, OS_LOG_TYPE_ERROR, "%{public}@ AVCVideoStream %p configure error %@", buf, 0x20u);
      }

      v21 = 0;
    }

    goto LABEL_7;
  }

  v26 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_41(v26))
  {
    OUTLINED_FUNCTION_32();
    v25 = "%{public}@ AVCVideoStream %p Invalid configuration";
    goto LABEL_18;
  }

LABEL_13:
  v21 = 0;
  v20 = v14;
LABEL_7:

LABEL_8:
  v28.receiver = self;
  v28.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v28 startAVConferenceStack:stack];

  return v21;
}

- (BOOL)stopAVConferenceStack
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_23(&dword_242545000, v4, v5, "%{public}@ %s", v6, v7, v8, v9);
  }

  if (self->_avcStreamInput && (avcVideoStream = self->_avcVideoStream) != 0)
  {
    [(AVCVideoStream *)avcVideoStream stop];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (!self->_avcStreamInputActive)
  {
    avcStreamInput = self->_avcStreamInput;
    self->_avcStreamInput = 0;
  }

  return v11;
}

- (void)setFaceDrivenAFActive:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)setDeskViewCameraMode:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)setVideoZoomFactor:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)setVideoZoomFactor:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setMaxFrameRate:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_38();
  v5 = CMContinuityCaptureLog(v4);
  if (OUTLINED_FUNCTION_42(v5))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
  }

  *a2 = v2;
}

- (void)setMaxFrameRate:(uint64_t)a1 .cold.2(uint64_t a1, id *a2)
{
  v2 = [*a2 activeFormat];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)setCenterStageEnabled:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)_avfDeviceTypeForManualFramingDeviceType:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ unsupported device type: %ld");
}

- (void)connectionsForConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Error creating device input: %@");
}

- (void)_deviceFormat:(uint64_t)a1 isCompatibleWithConfiguration:(void *)a2 requiringMultiCamSupport:minFrameRate:maxFrameRate:.cold.1(uint64_t a1, void *a2)
{
  [a2 isPortraitEffectSupported];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x26u);
}

- (void)stopCameraCaptureStack:(_BYTE *)a3 .cold.1(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = [a1 compositeDelegate];
  v7 = [v6 frameRateManager];
  [v7 reportStreamStatus:? forDevice:?];

  v8 = [a1 captureSession];
  [v8 willConfigure];

  if ([a1 isDockedTrackingEnabled])
  {
    [OUTLINED_FUNCTION_35() setDockedTrackingEnabled:?];
  }

  [a1 _stopCameraCaptureStackRemoveCaptureSessionConnectionsWithOption:?];
  v9 = [a1 captureSession];
  [v9 didConfigure];

  v10 = [a1 captureSession];
  [v10 stop];

  *a3 = 0;
  v11 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_28(v11))
  {
    [a1 currentSessionID];
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0x2Au);
  }

  if ((v4 & 0x400) != 0)
  {
    a1[408] = 1;
  }
}

- (uint64_t)stopCameraCaptureStack:(void *)a3 .cold.2(__int16 a1, void *a2, void *a3)
{
  if ((a1 & 0x200) != 0)
  {
    [a2 captureSession];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_25() entity];
    v6 = [v3 hasConnectionsForEntity:?];

    if (v6)
    {
      v3 = [a2 companionDevice];

      if (v3)
      {
        v3 = [a2 companionDevice];
        [v3 stopCameraCaptureStack:?];
      }

      v7 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_28(v7))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_7_2();
        _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
      }

      [a2 captureSession];
      objc_claimAutoreleasedReturnValue();
      v13 = [OUTLINED_FUNCTION_25() connections];
      OUTLINED_FUNCTION_33(v13);

      [a2 tearDownConnectionsWithVideoDataConnectionDisabled:?];
    }
  }

  +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
  objc_claimAutoreleasedReturnValue();
  v14 = [OUTLINED_FUNCTION_25() activeConfiguration];
  [v14 entity];
  [v3 decrementExceptionCountForEntity:?];

  v15 = [a2 companionDevice];
  v16 = [v15 entity];

  if (v16 != 1)
  {
    return 1;
  }

  v17 = [a2 companionDevice];
  *a3 = v17;
  [v17 setMinFrameDurationOverrideIfApplicable];
  return 0;
}

- (void)dispatchFrame:(void *)a1 entity:completion:.cold.1(void *a1)
{
  result = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
  *a1 = result;
  return result;
}

- (void)dispatchFrame:entity:completion:.cold.2()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)dispatchFrame:entity:completion:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_37();
  v3 = v0;
  _os_log_debug_impl(&dword_242545000, v1, OS_LOG_TYPE_DEBUG, "%@ frame dispatch delta %lld", v2, 0x16u);
}

- (void)newVideoStreamCurrentConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ AVCMediaStreamConfig error %@");
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v2 = [a2 videoDevice];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_5()
{
  v1 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_43(v1))
  {
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

- (void)captureOutput:didFinishProcessingPhoto:error:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ captured photo %@ but couldn't find paired stillImageRequest from remote side.");
}

- (void)setDockedTrackingEnabled:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v1 = [v0 videoDevice];
  v2 = [v1 localizedName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end