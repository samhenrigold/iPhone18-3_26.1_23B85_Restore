@interface ARParentImageSensor
- (ARParentImageSensor)initWithSettings:(id)settings;
- (ARSensorDelegate)delegate;
- (BOOL)_addSensorForSettings:(id)settings;
- (BOOL)_startWithError:(id *)error;
- (BOOL)_validateCameraAuthorization;
- (BOOL)_validateMicrophoneAuthorizationWithError:(id *)error;
- (BOOL)canReconfigure:(id)reconfigure;
- (NSString)description;
- (id)captureDeviceTypeToExtrinsicsMapForImageSensor:(id)sensor;
- (unint64_t)providedDataTypes;
- (void)_addSensors;
- (void)_captureSessionStateChanged:(id)changed;
- (void)_configureAudioCapture;
- (void)captureHighResolutionFrameWithPhotoSettings:(id)settings;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureSessionStateChanged:(id)changed;
- (void)dealloc;
- (void)reconfigure:(id)reconfigure;
- (void)setDelegate:(id)delegate;
- (void)setInterrupted:(BOOL)interrupted;
- (void)setPowerUsage:(unint64_t)usage;
- (void)setRecordingMode:(BOOL)mode;
- (void)start;
- (void)stop;
- (void)teardown;
- (void)waitForOutstandingCallbacks;
@end

@implementation ARParentImageSensor

- (ARParentImageSensor)initWithSettings:(id)settings
{
  v31 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v26.receiver = self;
  v26.super_class = ARParentImageSensor;
  v5 = [(ARParentImageSensor *)&v26 init];
  if (v5)
  {
    v6 = ARDeviceSupportsMulticamMode();
    if (!v6 || (v6 = ARUserDefaultsMulticamModeEnabled(v6, v7), (v6 & 1) == 0))
    {
      ARDeviceSupportsJasper(v6, v7);
    }

    v8 = objc_opt_new();
    v9 = *(v5 + 10);
    *(v5 + 10) = v8;

    v10 = objc_opt_new();
    v11 = *(v5 + 1);
    *(v5 + 1) = v10;

    v12 = objc_opt_new();
    v13 = *(v5 + 7);
    *(v5 + 7) = v12;

    v14 = [settingsCopy copy];
    v15 = *(v5 + 6);
    *(v5 + 6) = v14;

    *(v5 + 40) = 0;
    *(v5 + 43) = 0;
    allowCameraInMultipleForegroundAppLayout = [settingsCopy allowCameraInMultipleForegroundAppLayout];
    if (allowCameraInMultipleForegroundAppLayout)
    {
      v17 = _ARLogSensor_4(allowCameraInMultipleForegroundAppLayout);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543618;
        v28 = v19;
        v29 = 2048;
        v30 = v5;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting authorization to use camera in multiple foreground apps.", buf, 0x16u);
      }

      AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
    }

    v20 = ARCreateFixedPriorityDispatchQueueWithPropagatedQOS("com.apple.arkit.capture", 33, 0);
    v21 = *(v5 + 2);
    *(v5 + 2) = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create_with_target_V2("com.apple.arkit.ARParentImageSensor.captureSessionNotificationsQueue", v22, *(v5 + 2));
    v24 = *(v5 + 4);
    *(v5 + 4) = v23;

    *(v5 + 6) = 0;
    [v5 _addSensors];
  }

  return v5;
}

- (void)_addSensors
{
  settings = [(ARParentImageSensorSettings *)self->_settings settings];
  v6 = [settings mutableCopy];

  if ([v6 count])
  {
    v4 = 0;
    do
    {
      v5 = [v6 objectAtIndexedSubscript:v4];
      if ([(ARParentImageSensor *)self _addSensorForSettings:v5])
      {
        ++v4;
      }

      else
      {
        [v6 removeObjectAtIndex:v4];
      }
    }

    while (v4 < [v6 count]);
  }

  [(ARParentImageSensorSettings *)self->_settings setSettings:v6];
}

- (BOOL)_addSensorForSettings:(id)settings
{
  v33 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  videoFormat = [settingsCopy videoFormat];
  if ([videoFormat captureDevicePosition] == 2)
  {
    goto LABEL_4;
  }

  metaData = [settingsCopy metaData];
  if ([metaData isEqualToString:*MEMORY[0x1E6986FE8]])
  {

LABEL_4:
    goto LABEL_5;
  }

  metaData2 = [settingsCopy metaData];
  v10 = [metaData2 isEqualToString:*MEMORY[0x1E6987018]];

  if ((v10 & 1) == 0)
  {
    videoFormat2 = [settingsCopy videoFormat];
    captureDevicePosition = [videoFormat2 captureDevicePosition];

    if (captureDevicePosition == 1)
    {
      videoFormat3 = [settingsCopy videoFormat];
      captureDeviceType = [videoFormat3 captureDeviceType];
      v16 = [captureDeviceType isEqualToString:*MEMORY[0x1E6986930]];

      if (v16)
      {
        v17 = ARDepthSensor;
      }

      else
      {
        v17 = ARImageSensor;
      }

      v7 = [[v17 alloc] initWithSettings:settingsCopy captureSession:self->_captureSession captureQueue:self->_captureQueue];
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARParentImageSensor _addSensorForSettings:];
    }

    v18 = ARShouldUseLogTypeError_internalOSVersion_3;
    v19 = _ARLogGeneral_0(v13);
    v7 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v27 = 138543874;
        v28 = v21;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2114;
        v32 = settingsCopy;
        v22 = "%{public}@ <%p>: Failed to create image sensor for settings: %{public}@";
        p_super = &v7->super.super;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_23:
        _os_log_impl(&dword_1C241C000, p_super, v24, v22, &v27, 0x20u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v21 = NSStringFromClass(v26);
      v27 = 138543874;
      v28 = v21;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = settingsCopy;
      v22 = "Error: %{public}@ <%p>: Failed to create image sensor for settings: %{public}@";
      p_super = &v7->super.super;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_23;
    }

    v8 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v7 = [[ARFaceTrackingImageSensor alloc] initWithSettings:settingsCopy captureSession:self->_captureSession captureQueue:self->_captureQueue];
  [(ARFaceTrackingImageSensor *)v7 setRecordingMode:self->_recordingMode];
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_6:
  [(ARImageSensor *)v7 setBufferPopulationMonitor:self->_bufferPopulationMonitor];
  [(ARImageSensor *)v7 setDataSource:self];
  [(NSMutableArray *)self->_sensors addObject:v7];
  v8 = 1;
LABEL_7:

LABEL_20:
  return v8;
}

- (void)setDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sensors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setDelegate:{delegateCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setPowerUsage:(unint64_t)usage
{
  v14 = *MEMORY[0x1E69E9840];
  self->_powerUsage = usage;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sensors;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPowerUsage:{usage, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)canReconfigure:(id)reconfigure
{
  reconfigureCopy = reconfigure;
  os_unfair_lock_lock(&self->_stateLock);
  if ([(ARParentImageSensor *)self unrecoverable])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ARParentImageSensorSettings *)self->_settings copy];
    [v6 setAudioCaptureEnabled:{objc_msgSend(reconfigureCopy, "audioCaptureEnabled")}];
    settings = [reconfigureCopy settings];
    v8 = [settings count];
    settings2 = [v6 settings];
    v10 = [settings2 count];

    if (v8 == v10 && ([reconfigureCopy settings], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setSettings:", v11), v11, objc_msgSend(v6, "isEqual:", reconfigureCopy)))
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 1;
      settings3 = [reconfigureCopy settings];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __38__ARParentImageSensor_canReconfigure___block_invoke;
      v14[3] = &unk_1E817BEF0;
      v14[4] = self;
      v14[5] = &v15;
      [settings3 enumerateObjectsUsingBlock:v14];

      v5 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v5 & 1;
}

void __38__ARParentImageSensor_canReconfigure___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 56);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LOBYTE(v7) = [v9 canReconfigure:v8];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)reconfigure:(id)reconfigure
{
  reconfigureCopy = reconfigure;
  if ([(ARParentImageSensor *)self canReconfigure:reconfigureCopy])
  {
    os_unfair_lock_lock(&self->_stateLock);
    settings = [reconfigureCopy settings];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__ARParentImageSensor_reconfigure___block_invoke;
    v13[3] = &unk_1E817BF18;
    v13[4] = self;
    [settings enumerateObjectsUsingBlock:v13];

    LODWORD(settings) = [reconfigureCopy audioCaptureEnabled];
    if (settings == [(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled])
    {
      v8 = [reconfigureCopy copy];
      settings = self->_settings;
      self->_settings = v8;
    }

    else
    {
      if ([reconfigureCopy audioCaptureEnabled])
      {
        v12 = 0;
        if (![(ARParentImageSensor *)self _validateMicrophoneAuthorizationWithError:&v12])
        {
          v10 = v12;
          os_unfair_lock_unlock(&self->_stateLock);
          delegate = [(ARParentImageSensor *)self delegate];
          [delegate sensor:self didFailWithError:v10];

          goto LABEL_8;
        }
      }

      v6 = [reconfigureCopy copy];
      v7 = self->_settings;
      self->_settings = v6;

      [(AVCaptureSession *)self->_captureSession beginConfiguration];
      [(ARParentImageSensor *)self _configureAudioCapture];
      [(AVCaptureSession *)self->_captureSession commitConfiguration];
    }

    os_unfair_lock_unlock(&self->_stateLock);
  }

LABEL_8:
}

void __35__ARParentImageSensor_reconfigure___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v6 reconfigure:v5];
}

- (void)setRecordingMode:(BOOL)mode
{
  modeCopy = mode;
  v15 = *MEMORY[0x1E69E9840];
  self->_recordingMode = mode;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sensors = [(ARParentImageSensor *)self sensors];
  v5 = [sensors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sensors);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setRecordingMode:modeCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [sensors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (unint64_t)providedDataTypes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_sensors;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) providedDataTypes];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInterrupted:(BOOL)interrupted
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_interrupted != interrupted)
  {
    self->_interrupted = interrupted;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_sensors;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setInterrupted:{self->_interrupted, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(ARParentImageSensor *)self _validateCameraAuthorization])
  {
    os_unfair_lock_lock(&self->_stateLock);
    if ([(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled]&& (v17 = 0, ![(ARParentImageSensor *)self _validateMicrophoneAuthorizationWithError:&v17]))
    {
      v5 = v17;
      os_unfair_lock_unlock(&self->_stateLock);
      delegate = [(ARParentImageSensor *)self delegate];
      [delegate sensor:self didFailWithError:v5];
    }

    else
    {
      delegate = [MEMORY[0x1E696AD88] defaultCenter];
      [delegate addObserver:self selector:sel_captureSessionStateChanged_ name:*MEMORY[0x1E6986B28] object:self->_captureSession];
      [delegate addObserver:self selector:sel_captureSessionStateChanged_ name:*MEMORY[0x1E6986AA8] object:self->_captureSession];
      [delegate addObserver:self selector:sel_captureSessionStateChanged_ name:*MEMORY[0x1E6986B20] object:self->_captureSession];
      v16 = 0;
      v4 = [(ARParentImageSensor *)self _startWithError:&v16];
      v5 = v16;
      os_unfair_lock_unlock(&self->_stateLock);
      delegate2 = [(ARParentImageSensor *)self delegate];
      v7 = delegate2;
      if (v4)
      {
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          delegate3 = [(ARParentImageSensor *)self delegate];
          [delegate3 sensorDidStart:self];
        }

        interrupted = [(ARParentImageSensor *)self interrupted];
        if (interrupted)
        {
          delegate4 = [(ARParentImageSensor *)self delegate];
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            delegate5 = [(ARParentImageSensor *)self delegate];
            [delegate5 sensorDidPause:self];
          }
        }

        v7 = _ARLogSensor_4(interrupted);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 138543618;
          v19 = v15;
          v20 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: started", buf, 0x16u);
        }
      }

      else
      {
        [delegate2 sensor:self didFailWithError:v5];
      }
    }
  }
}

- (BOOL)_startWithError:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  [(AVCaptureSession *)self->_captureSession setSessionPreset:*MEMORY[0x1E6986AF0]];
  [(AVCaptureSession *)self->_captureSession beginConfiguration];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = self->_sensors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        prepareToStart = [*(*(&v40 + 1) + 8 * i) prepareToStart];
        if (prepareToStart)
        {
          v33 = prepareToStart;
          [(AVCaptureSession *)self->_captureSession commitConfiguration];
          if (error)
          {
            v34 = v33;
            *error = v33;
          }

          return 0;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  settings = [(ARParentImageSensorSettings *)self->_settings settings];
  v12 = [settings count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->_sensors objectAtIndexedSubscript:v13, v40];
      settings2 = [(ARParentImageSensorSettings *)self->_settings settings];
      v16 = [settings2 objectAtIndexedSubscript:v13];
      [v14 enableSensor:{objc_msgSend(v16, "isEnabled")}];

      ++v13;
      settings3 = [(ARParentImageSensorSettings *)self->_settings settings];
      v18 = [settings3 count];
    }

    while (v18 > v13);
  }

  [(ARParentImageSensor *)self _configureAudioCapture];
  beforeRunningAVCaptureSession = [(ARParentImageSensor *)self beforeRunningAVCaptureSession];

  if (beforeRunningAVCaptureSession)
  {
    beforeRunningAVCaptureSession2 = [(ARParentImageSensor *)self beforeRunningAVCaptureSession];
    (beforeRunningAVCaptureSession2)[2](beforeRunningAVCaptureSession2, self->_captureSession);
  }

  v21 = _ARLogSensor_4([(AVCaptureSession *)self->_captureSession commitConfiguration]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    *buf = 138543618;
    v45 = v23;
    v46 = 2048;
    selfCopy4 = self;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: startRunning capture session", buf, 0x16u);
  }

  [(AVCaptureSession *)self->_captureSession startRunning];
  isRunning = [(AVCaptureSession *)self->_captureSession isRunning];
  if ((isRunning & 1) == 0)
  {
    v25 = _ARLogSensor_4(isRunning);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543618;
      v45 = v27;
      v46 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was started but the AVCaptureSession hasn't started running yet", buf, 0x16u);
    }
  }

  [(ARParentImageSensor *)self setRunning:1];
  isInterrupted = [(AVCaptureSession *)self->_captureSession isInterrupted];
  if (isInterrupted)
  {
    v29 = _ARLogSensor_4(isInterrupted);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138543618;
      v45 = v31;
      v46 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: starting interrupted", buf, 0x16u);
    }

    v32 = 1;
    [(ARParentImageSensor *)self setInterrupted:1];
  }

  else
  {
    interrupted = [(ARParentImageSensor *)self interrupted];
    if (interrupted)
    {
      v36 = _ARLogSensor_4(interrupted);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138543618;
        v45 = v38;
        v46 = 2048;
        selfCopy4 = self;
        _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting sensor and forcing interrupted to NO", buf, 0x16u);
      }

      [(ARParentImageSensor *)self setInterrupted:0];
    }

    return 1;
  }

  return v32;
}

- (void)stop
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  running = [(ARParentImageSensor *)self running];
  if (running)
  {
    v4 = _ARLogSensor_4(running);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v22 = v6;
      v23 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARImageSensor stopping", buf, 0x16u);
    }

    [(ARParentImageSensor *)self setRunning:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6986B28] object:self->_captureSession];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6986AA8] object:self->_captureSession];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6986B20] object:self->_captureSession];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_sensors;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * v12++) stop];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(AVCaptureSession *)self->_captureSession stopRunning];
    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_stateLock);
    defaultCenter = _ARLogSensor_4(v13);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v22 = v15;
      v23 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, defaultCenter, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping the request to stop the sensor as it is not running.", buf, 0x16u);
    }
  }
}

- (void)waitForOutstandingCallbacks
{
  dispatch_assert_queue_not_V2(self->_captureQueue);
  captureQueue = self->_captureQueue;

  dispatch_sync(captureQueue, &__block_literal_global_6);
}

- (void)teardown
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  [(AVCaptureSession *)self->_captureSession beginConfiguration];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = self->_sensors;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) teardown];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(AVCaptureSession *)self->_captureSession commitConfiguration];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)captureHighResolutionFrameWithPhotoSettings:(id)settings
{
  settingsCopy = settings;
  sensors = self->_sensors;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ARParentImageSensor_captureHighResolutionFrameWithPhotoSettings___block_invoke;
  v7[3] = &unk_1E817BF40;
  v8 = settingsCopy;
  v6 = settingsCopy;
  [(NSMutableArray *)sensors enumerateObjectsUsingBlock:v7];
}

void __67__ARParentImageSensor_captureHighResolutionFrameWithPhotoSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 settings];
  v7 = [v6 supportsCapturingHighResolutionFrames];

  if (v7)
  {
    [v8 captureHighResolutionFrameWithPhotoSettings:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)_configureAudioCapture
{
  v103[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  if ([(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled]|| self->_audioOutput)
  {
    audioCaptureEnabled = [(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled];
    audioOutput = self->_audioOutput;
    if (audioCaptureEnabled)
    {
      if (audioOutput)
      {
        return;
      }
    }

    else if (audioOutput)
    {
      v5 = _ARLogSensor_4(audioCaptureEnabled);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138543618;
        v98 = v7;
        v99 = 2048;
        selfCopy13 = self;
        _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Removing audio output", buf, 0x16u);
      }

      [(AVCaptureSession *)self->_captureSession removeOutput:self->_audioOutput];
      v8 = self->_audioOutput;
      self->_audioOutput = 0;
    }

    audioCaptureEnabled2 = [(ARParentImageSensorSettings *)self->_settings audioCaptureEnabled];
    if (audioCaptureEnabled2)
    {
      v10 = _ARLogSensor_4(audioCaptureEnabled2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v98 = v12;
        v99 = 2048;
        selfCopy13 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting audio capture configuration", buf, 0x16u);
      }

      settings = [(ARParentImageSensorSettings *)self->_settings settings];
      firstObject = [settings firstObject];
      videoFormat = [firstObject videoFormat];
      captureDevicePosition = [videoFormat captureDevicePosition];

      if (self->_audioInput)
      {
LABEL_36:
        v47 = objc_opt_new();
        v48 = self->_audioOutput;
        self->_audioOutput = v47;

        [(AVCaptureAudioDataOutput *)self->_audioOutput setSampleBufferDelegate:self queue:self->_captureQueue];
        captureSession = [(ARParentImageSensor *)self captureSession];
        v50 = [captureSession canAddOutput:self->_audioOutput];

        if (v50)
        {
          v52 = _ARLogSensor_4(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = objc_opt_class();
            v54 = NSStringFromClass(v53);
            *buf = 138543618;
            v98 = v54;
            v99 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Adding audio output", buf, 0x16u);
          }

          captureSession2 = [(ARParentImageSensor *)self captureSession];
          [captureSession2 addOutputWithNoConnections:self->_audioOutput];
        }

        else
        {
          if (ARShouldUseLogTypeError_onceToken_3 != -1)
          {
            [ARParentImageSensor _configureAudioCapture];
          }

          v56 = ARShouldUseLogTypeError_internalOSVersion_3;
          v57 = _ARLogSensor_4(v51);
          captureSession2 = v57;
          if (v56 == 1)
          {
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_48;
            }

            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138543618;
            v98 = v59;
            v99 = 2048;
            selfCopy13 = self;
            v60 = "%{public}@ <%p>: Error adding audio output";
            v61 = captureSession2;
            v62 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              goto LABEL_48;
            }

            v63 = objc_opt_class();
            v59 = NSStringFromClass(v63);
            *buf = 138543618;
            v98 = v59;
            v99 = 2048;
            selfCopy13 = self;
            v60 = "Error: %{public}@ <%p>: Error adding audio output";
            v61 = captureSession2;
            v62 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v61, v62, v60, buf, 0x16u);
        }

LABEL_48:

        if (self->_audioConnection)
        {
          return;
        }

        audioInput = self->_audioInput;
        v65 = *MEMORY[0x1E69875A0];
        device = [(AVCaptureDeviceInput *)audioInput device];
        deviceType = [device deviceType];
        v68 = [(AVCaptureDeviceInput *)audioInput portsWithMediaType:v65 sourceDeviceType:deviceType sourceDevicePosition:captureDevicePosition];
        p_super = [v68 firstObject];

        if (p_super)
        {
          goto LABEL_53;
        }

        v69 = self->_audioInput;
        device2 = [(AVCaptureDeviceInput *)v69 device];
        deviceType2 = [device2 deviceType];
        v72 = [(AVCaptureDeviceInput *)v69 portsWithMediaType:v65 sourceDeviceType:deviceType2 sourceDevicePosition:0];
        p_super = [v72 firstObject];

        v74 = _ARLogSensor_4(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = objc_opt_class();
          v76 = NSStringFromClass(v75);
          *buf = 138543618;
          v98 = v76;
          v99 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Falling back to AVCaptureDevicePositionUnspecified.", buf, 0x16u);
        }

        if (p_super)
        {
LABEL_53:
          v78 = MEMORY[0x1E6987070];
          v96 = p_super;
          v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
          v80 = [v78 connectionWithInputPorts:v79 output:self->_audioOutput];
          audioConnection = self->_audioConnection;
          self->_audioConnection = v80;

          v83 = _ARLogSensor_4(v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = objc_opt_class();
            v85 = NSStringFromClass(v84);
            v86 = NSStringFromAVCaptureDevicePosition([p_super sourceDevicePosition]);
            *buf = 138543874;
            v98 = v85;
            v99 = 2048;
            selfCopy13 = self;
            v101 = 2112;
            v102 = v86;
            _os_log_impl(&dword_1C241C000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Adding audio connection. Position: %@", buf, 0x20u);
          }

          [(AVCaptureSession *)self->_captureSession addConnection:self->_audioConnection];
          goto LABEL_56;
        }

        if (ARShouldUseLogTypeError_onceToken_3 != -1)
        {
          [ARParentImageSensor _configureAudioCapture];
        }

        v87 = ARShouldUseLogTypeError_internalOSVersion_3;
        v88 = _ARLogSensor_4(v77);
        p_super = v88;
        if (v87 == 1)
        {
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v89 = objc_opt_class();
            v90 = NSStringFromClass(v89);
            *buf = 138543618;
            v98 = v90;
            v99 = 2048;
            selfCopy13 = self;
            v91 = "%{public}@ <%p>: Error finding audio port";
            v92 = p_super;
            v93 = OS_LOG_TYPE_ERROR;
LABEL_65:
            _os_log_impl(&dword_1C241C000, v92, v93, v91, buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v94 = objc_opt_class();
          v90 = NSStringFromClass(v94);
          *buf = 138543618;
          v98 = v90;
          v99 = 2048;
          selfCopy13 = self;
          v91 = "Error: %{public}@ <%p>: Error finding audio port";
          v92 = p_super;
          v93 = OS_LOG_TYPE_INFO;
          goto LABEL_65;
        }

LABEL_56:

        return;
      }

      v17 = MEMORY[0x1E69870A8];
      v103[0] = *MEMORY[0x1E6986920];
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1];
      v19 = *MEMORY[0x1E69875A0];
      v20 = [v17 discoverySessionWithDeviceTypes:v18 mediaType:*MEMORY[0x1E69875A0] position:captureDevicePosition];

      devices = [v20 devices];
      firstObject2 = [devices firstObject];

      if (!firstObject2)
      {
        firstObject2 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:v19];
      }

      v95 = 0;
      v23 = [MEMORY[0x1E69870B0] deviceInputWithDevice:firstObject2 error:&v95];
      v24 = v95;
      v25 = self->_audioInput;
      self->_audioInput = v23;

      if (self->_audioInput)
      {
        captureSession3 = [(ARParentImageSensor *)self captureSession];
        v28 = [captureSession3 canAddInput:self->_audioInput];

        if (v28)
        {
          captureSession4 = [(ARParentImageSensor *)self captureSession];
          [captureSession4 addInputWithNoConnections:self->_audioInput];
LABEL_35:

          goto LABEL_36;
        }
      }

      if (ARShouldUseLogTypeError_onceToken_3 != -1)
      {
        [ARParentImageSensor _configureAudioCapture];
      }

      v38 = ARShouldUseLogTypeError_internalOSVersion_3;
      v39 = _ARLogSensor_4(v26);
      captureSession4 = v39;
      if (v38 == 1)
      {
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = [v24 description];
        *buf = 138543874;
        v98 = v41;
        v99 = 2048;
        selfCopy13 = self;
        v101 = 2112;
        v102 = v42;
        v43 = "%{public}@ <%p>: Error creating audio input: %@";
        v44 = captureSession4;
        v45 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v46 = objc_opt_class();
        v41 = NSStringFromClass(v46);
        v42 = [v24 description];
        *buf = 138543874;
        v98 = v41;
        v99 = 2048;
        selfCopy13 = self;
        v101 = 2112;
        v102 = v42;
        v43 = "Error: %{public}@ <%p>: Error creating audio input: %@";
        v44 = captureSession4;
        v45 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v44, v45, v43, buf, 0x20u);

      goto LABEL_35;
    }

    if (self->_audioInput)
    {
      v30 = _ARLogSensor_4(audioCaptureEnabled2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138543618;
        v98 = v32;
        v99 = 2048;
        selfCopy13 = self;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Removing audio input", buf, 0x16u);
      }

      [(AVCaptureSession *)self->_captureSession removeInput:self->_audioInput];
      v33 = self->_audioInput;
      self->_audioInput = 0;
    }

    if (self->_audioConnection)
    {
      v34 = _ARLogSensor_4(audioCaptureEnabled2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543618;
        v98 = v36;
        v99 = 2048;
        selfCopy13 = self;
        _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Removing audio connection", buf, 0x16u);
      }

      p_super = &self->_audioConnection->super;
      self->_audioConnection = 0;
      goto LABEL_56;
    }
  }
}

- (BOOL)_validateCameraAuthorization
{
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  v3 = *MEMORY[0x1E6987608];
  v4 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E6987608]];
  if (v4)
  {
    if (v4 == 2)
    {
      delegate = [(ARParentImageSensor *)self delegate];
      delegate2 = ARErrorWithCodeAndUserInfo(103, 0);
      [delegate sensor:self didFailWithError:delegate2];
      goto LABEL_6;
    }

    if (v4 == 1)
    {
      delegate = [MEMORY[0x1E695DF90] dictionary];
      v6 = ARKitCoreBundle(delegate);
      v7 = [v6 localizedStringForKey:@"Camera use is restricted on this device." value:&stru_1F4208A80 table:@"Localizable"];
      [delegate setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];

      delegate2 = [(ARParentImageSensor *)self delegate];
      v9 = ARErrorWithCodeAndUserInfo(101, delegate);
      [delegate2 sensor:self didFailWithError:v9];

LABEL_6:
      return 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69870A0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__ARParentImageSensor__validateCameraAuthorization__block_invoke;
    v12[3] = &unk_1E817BF68;
    objc_copyWeak(&v13, &location);
    [v11 requestAccessForMediaType:v3 completionHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __51__ARParentImageSensor__validateCameraAuthorization__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v5 = [WeakRetained running];
      v4 = v8;
      if (v5)
      {
        v6 = [v8 delegate];
        v7 = ARErrorWithCodeAndUserInfo(103, 0);
        [v6 sensor:v8 didFailWithError:v7];

        v4 = v8;
      }
    }
  }
}

- (BOOL)_validateMicrophoneAuthorizationWithError:(id *)error
{
  v5 = *MEMORY[0x1E69875A0];
  v6 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E69875A0]];
  if (v6)
  {
    if (v6 == 2)
    {
      if (error)
      {
        v10 = ARErrorWithCodeAndUserInfo(104, 0);
        v11 = v10;
        result = 0;
        *error = v10;
        return result;
      }

      return 0;
    }

    if (v6 == 1)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v8 = ARKitCoreBundle(dictionary);
      v9 = [v8 localizedStringForKey:@"Microphone use is restricted on this device." value:&stru_1F4208A80 table:@"Localizable"];
      [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];

      if (error)
      {
        *error = ARErrorWithCodeAndUserInfo(101, dictionary);
      }

      return 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69870A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__ARParentImageSensor__validateMicrophoneAuthorizationWithError___block_invoke;
    v14[3] = &unk_1E817BF68;
    objc_copyWeak(&v15, &location);
    [v13 requestAccessForMediaType:v5 completionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __65__ARParentImageSensor__validateMicrophoneAuthorizationWithError___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v5 = [WeakRetained running];
      v4 = v8;
      if (v5)
      {
        v6 = [v8 delegate];
        v7 = ARErrorWithCodeAndUserInfo(104, 0);
        [v6 sensor:v8 didFailWithError:v7];

        v4 = v8;
      }
    }
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_4(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  [(ARParentImageSensor *)self stop];
  [(ARParentImageSensor *)self teardown];
  v6.receiver = self;
  v6.super_class = ARParentImageSensor;
  [(ARParentImageSensor *)&v6 dealloc];
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD60];
  v22.receiver = self;
  v22.super_class = ARParentImageSensor;
  v3 = [(ARParentImageSensor *)&v22 description];
  v4 = [v2 stringWithFormat:@"%@", v3];

  os_unfair_lock_lock(&self->_stateLock);
  if (self->_running)
  {
    v5 = @"Running";
  }

  else
  {
    v5 = @"Stopped";
  }

  [v4 appendFormat:@" %@ ", v5];
  if (self->_interrupted)
  {
    [v4 appendFormat:@"Interrupted "];
  }

  if (self->_unrecoverable)
  {
    [v4 appendFormat:@"Unrecoverable "];
  }

  v6 = [(ARParentImageSensorSettings *)self->_settings description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v4 appendFormat:@"\n\tImageSensorSettings: %@\n", v7];

  [v4 appendFormat:@"\tSensors:\n"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_sensors;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) description];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t|\t"];
        [v4 appendFormat:@"\t| - %@\n", v13];
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  bufferPopulationMonitor = self->_bufferPopulationMonitor;
  if (bufferPopulationMonitor)
  {
    v15 = [(ARBufferPopulationMonitor *)bufferPopulationMonitor description];
    [v4 appendString:v15];
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v4;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_stateLock);
  output = [connectionCopy output];

  audioOutput = self->_audioOutput;
  os_unfair_lock_unlock(&self->_stateLock);
  if (output == audioOutput)
  {
    delegate = [(ARParentImageSensor *)self delegate];
    v10 = [[ARAudioData alloc] initWithSampleBuffer:buffer];
    [delegate sensor:self didOutputSensorData:v10];
  }
}

- (void)_captureSessionStateChanged:(id)changed
{
  v47 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  os_unfair_lock_lock(&self->_stateLock);
  running = [(ARParentImageSensor *)self running];
  if ((running & 1) == 0)
  {
LABEL_11:
    os_unfair_lock_unlock(&self->_stateLock);
    goto LABEL_23;
  }

  v6 = _ARLogSensor_4(running);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    v42 = v8;
    v43 = 2048;
    selfCopy3 = self;
    v45 = 2114;
    v46 = changedCopy;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: capture state changed (%{public}@)", buf, 0x20u);
  }

  name = [changedCopy name];
  v10 = [name isEqualToString:*MEMORY[0x1E6986B20]];

  if (v10)
  {
    userInfo = [changedCopy userInfo];
    delegate5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6986AA0]];

    if ([delegate5 code] == -11873)
    {
      [(ARParentImageSensor *)self setUnrecoverable:1];
      goto LABEL_7;
    }

    v17 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.attemptfailurerecovery"];
    interrupted = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.attemptfailurerecoveryafterbackground"];
    if (interrupted)
    {
      interrupted = [(ARParentImageSensor *)self interrupted];
      if (((interrupted | v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (!v17)
    {
      goto LABEL_7;
    }

    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARParentImageSensor _configureAudioCapture];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_3;
    v28 = _ARLogSensor_4(interrupted);
    v29 = v28;
    if (v27 == 1)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138543874;
      v42 = v31;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2112;
      v46 = delegate5;
      v32 = "%{public}@ <%p>: Recovering capture session due to AVCaptureSessionRuntimeErrorNotification. (%@)";
      v33 = v29;
      v34 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v35 = objc_opt_class();
      v31 = NSStringFromClass(v35);
      *buf = 138543874;
      v42 = v31;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2112;
      v46 = delegate5;
      v32 = "Error: %{public}@ <%p>: Recovering capture session due to AVCaptureSessionRuntimeErrorNotification. (%@)";
      v33 = v29;
      v34 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v33, v34, v32, buf, 0x20u);

LABEL_35:
    interrupted2 = [(ARParentImageSensor *)self interrupted];
    if ([(ARParentImageSensor *)self _startWithError:0])
    {
      [(ARParentImageSensor *)self setInterrupted:0];
      os_unfair_lock_unlock(&self->_stateLock);
      if (!interrupted2)
      {
        goto LABEL_22;
      }

      delegate = [(ARParentImageSensor *)self delegate];
      v38 = objc_opt_respondsToSelector();

      if ((v38 & 1) == 0)
      {
        goto LABEL_22;
      }

      delegate2 = [(ARParentImageSensor *)self delegate];
      [delegate2 sensorDidRestart:self];
      goto LABEL_21;
    }

LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
    if (delegate5)
    {
      v39 = *MEMORY[0x1E696AA08];
      v40 = delegate5;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      delegate2 = ARErrorWithCodeAndUserInfo(102, v13);
    }

    else
    {
      delegate2 = ARErrorWithCodeAndUserInfo(102, MEMORY[0x1E695E0F8]);
    }

    delegate3 = [(ARParentImageSensor *)self delegate];
    [delegate3 sensor:self didFailWithError:delegate2];

LABEL_21:
    goto LABEL_22;
  }

  name2 = [changedCopy name];
  v16 = [name2 isEqualToString:*MEMORY[0x1E6986B28]];

  if (v16)
  {
    if (![(ARParentImageSensor *)self interrupted])
    {
      [(ARParentImageSensor *)self setInterrupted:1];
      os_unfair_lock_unlock(&self->_stateLock);
      delegate4 = [(ARParentImageSensor *)self delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_23;
      }

      delegate5 = [(ARParentImageSensor *)self delegate];
      [delegate5 sensorDidPause:self];
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  name3 = [changedCopy name];
  v20 = [name3 isEqualToString:*MEMORY[0x1E6986AA8]];

  if (v20)
  {
    interrupted3 = [(ARParentImageSensor *)self interrupted];
    [(ARParentImageSensor *)self setInterrupted:0];
    os_unfair_lock_unlock(&self->_stateLock);
    if (interrupted3)
    {
      delegate6 = [(ARParentImageSensor *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        delegate5 = [(ARParentImageSensor *)self delegate];
        [delegate5 sensorDidRestart:self];
LABEL_22:
      }
    }
  }

LABEL_23:
}

- (void)captureSessionStateChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  captureSessionNotificationsQueue = self->_captureSessionNotificationsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ARParentImageSensor_captureSessionStateChanged___block_invoke;
  block[3] = &unk_1E817BDB0;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(captureSessionNotificationsQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__ARParentImageSensor_captureSessionStateChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _captureSessionStateChanged:*(a1 + 32)];
}

- (id)captureDeviceTypeToExtrinsicsMapForImageSensor:(id)sensor
{
  sensorCopy = sensor;
  internalSettings = [sensorCopy internalSettings];
  isBravoCameraEnabled = [internalSettings isBravoCameraEnabled];

  captureDevice = [sensorCopy captureDevice];

  if (isBravoCameraEnabled)
  {
    constituentDevices = [captureDevice constituentDevices];

    v9 = [constituentDevices ar_firstObjectPassingTest:&__block_literal_global_84];
    v10 = ComputeExtrinsicsMap(constituentDevices, v9);
    captureDevice = constituentDevices;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_sensors ar_map:&__block_literal_global_87];
    v10 = ComputeExtrinsicsMap(v9, captureDevice);
  }

  return v10;
}

uint64_t __70__ARParentImageSensor_captureDeviceTypeToExtrinsicsMapForImageSensor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6986950]];

  return v3;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end