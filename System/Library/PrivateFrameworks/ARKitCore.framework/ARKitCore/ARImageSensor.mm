@interface ARImageSensor
+ (float)defaultLensPosition;
+ (void)registerSignPostForImageData:(id)data;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_createCMTimeFractionFromDecimalDuration:(SEL)duration;
- (ARImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue;
- (ARImageSensorDataSource)dataSource;
- (ARImageSensorSettings)settings;
- (ARSensorDelegate)delegate;
- (BOOL)canReconfigure:(id)reconfigure;
- (NSArray)outputsForSynchronizer;
- (NSString)description;
- (id)_configurePhotoOutputForCaptureSession:(id)session;
- (id)_configureVisionDataOutputForSession:(id)session;
- (id)configureCaptureSession;
- (id)configureCaptureSessionCalibration;
- (id)logPrefix;
- (id)prepareToStart;
- (id)setActiveFormat;
- (void)_configureCameraExposureForDevice:(id)device;
- (void)_configureCameraFocusForDevice:(id)device;
- (void)_configureCameraWhiteBalanceForDevice:(id)device;
- (void)_configureFrameRateForDevice:(id)device frameRate:(double)rate;
- (void)_configureImageControlModeForDevice:(id)device;
- (void)_dispatchImageData:(id)data;
- (void)_logIfDataIsMissingWithVideoData:(id)data visionData:(id)visionData calibrationData:(id)calibrationData;
- (void)cameraCalibrationDataOutput:(id)output didDropCameraCalibrationDataAtTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)cameraCalibrationDataOutput:(id)output didOutputCameraCalibrationData:(id)data timestamp:(id *)timestamp connection:(id)connection;
- (void)captureHighResolutionFrameWithPhotoSettings:(id)settings;
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)configureCaptureDevice;
- (void)configureFrameRateForDevice:(id)device;
- (void)configureGeometricDistortionCorrectionForDevice:(id)device;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
- (void)dealloc;
- (void)enableAutoFocusForDevice:(id)device;
- (void)enableContinuousAutoFocusIfPossible;
- (void)enableSensor:(BOOL)sensor;
- (void)reconfigure:(id)reconfigure;
- (void)setInterrupted:(BOOL)interrupted;
- (void)setPowerUsage:(unint64_t)usage;
- (void)start;
- (void)stop;
- (void)teardown;
- (void)trackExposureTargetOffsetIfNeededForImageData:(id)data shouldDrop:(BOOL *)drop;
- (void)triggerVisionDataBurst;
- (void)updateCaptureDeviceFrameRate:(double)rate;
@end

@implementation ARImageSensor

- (ARImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue
{
  v40 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  sessionCopy = session;
  queueCopy = queue;
  videoFormat = [settingsCopy videoFormat];
  device = [videoFormat device];

  if (device)
  {
    v38.receiver = self;
    v38.super_class = ARImageSensor;
    v13 = [(ARImageSensor *)&v38 init];
    if (v13)
    {
      v14 = [settingsCopy copy];
      settings = v13->_settings;
      v13->_settings = v14;

      if ([settingsCopy autoFocusEnabled])
      {
        v16 = *MEMORY[0x1E6986998];
      }

      else
      {
        +[ARImageSensor defaultLensPosition];
      }

      v13->_defaultLensPosition = v16;
      objc_storeStrong(&v13->_captureSession, session);
      videoFormat2 = [settingsCopy videoFormat];
      device2 = [videoFormat2 device];
      captureDevice = v13->_captureDevice;
      v13->_captureDevice = device2;

      v13->_captureQueue = queueCopy;
      v13->_powerUsage = 0;
      v21 = objc_opt_new();
      connections = v13->_connections;
      v13->_connections = v21;

      v23 = MEMORY[0x1E69E9B10];
      v24 = *(MEMORY[0x1E69E9B10] + 16);
      *v13->_anon_20 = *MEMORY[0x1E69E9B10];
      *&v13->_anon_20[16] = v24;
      v25 = *MEMORY[0x1E695F060];
      *&v13->_anon_20[32] = *(v23 + 32);
      v13->_lastIntrinsicsImageResolution = v25;
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"deviceWhiteBalanceGains", @"exposureTargetOffset", @"ISO", 0}];
      captureDeviceKeysObserved = v13->_captureDeviceKeysObserved;
      v13->_captureDeviceKeysObserved = v26;

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v13->_captureDeviceKeysObserved;
      v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v35;
        do
        {
          v32 = 0;
          do
          {
            if (*v35 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [(AVCaptureDevice *)v13->_captureDevice addObserver:v13 forKeyPath:*(*(&v34 + 1) + 8 * v32++) options:1 context:v13];
          }

          while (v30 != v32);
          v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v30);
      }
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ dealloc", buf, 0x20u);
  }

  [(ARImageSensor *)self stop];
  [(ARImageSensor *)self teardown];
  v7.receiver = self;
  v7.super_class = ARImageSensor;
  [(ARImageSensor *)&v7 dealloc];
}

- (ARImageSensorSettings)settings
{
  v2 = [(ARImageSensorSettings *)self->_settings copy];

  return v2;
}

- (NSArray)outputsForSynchronizer
{
  if (self->_visionDataOutput || self->_calibrationOutput)
  {
    v3 = objc_opt_new();
    v4 = v3;
    if (self->_videoOutput)
    {
      [v3 addObject:?];
    }

    if (self->_visionDataOutput)
    {
      [v4 addObject:?];
    }

    if (self->_calibrationOutput)
    {
      [v4 addObject:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canReconfigure:(id)reconfigure
{
  settings = self->_settings;
  reconfigureCopy = reconfigure;
  v5 = [(ARImageSensorSettings *)settings copy];
  [v5 setAutoFocusEnabled:{objc_msgSend(reconfigureCopy, "autoFocusEnabled")}];
  [v5 setEnabled:{objc_msgSend(reconfigureCopy, "isEnabled")}];
  v6 = [v5 isEqual:reconfigureCopy];

  return v6;
}

- (void)reconfigure:(id)reconfigure
{
  v34 = *MEMORY[0x1E69E9840];
  reconfigureCopy = reconfigure;
  if (![(ARImageSensor *)self canReconfigure:reconfigureCopy])
  {
    goto LABEL_17;
  }

  autoFocusEnabled = [reconfigureCopy autoFocusEnabled];
  if (autoFocusEnabled != [(ARImageSensorSettings *)self->_settings autoFocusEnabled])
  {
    -[ARImageSensorSettings setAutoFocusEnabled:](self->_settings, "setAutoFocusEnabled:", [reconfigureCopy autoFocusEnabled]);
    LODWORD(v6) = *MEMORY[0x1E6986998];
    [(ARImageSensor *)self setDefaultLensPosition:v6];
    captureDevice = self->_captureDevice;
    v25 = 0;
    v8 = [(AVCaptureDevice *)captureDevice lockForConfiguration:&v25];
    v9 = v25;
    v10 = v9;
    if (v8)
    {
      [(ARImageSensor *)self _configureCameraFocusForDevice:self->_captureDevice];
      [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
LABEL_14:

      goto LABEL_15;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v11 = _MergedGlobals;
    v12 = _ARLogSensor_1(v9);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        logPrefix = [(ARImageSensor *)self logPrefix];
        v17 = [v10 description];
        *buf = 138544130;
        v27 = v15;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2112;
        v31 = logPrefix;
        v32 = 2112;
        v33 = v17;
        v18 = "%{public}@ <%p>: %@ Unable to lock device for configuring focus mode change: %@";
        v19 = v13;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v15 = NSStringFromClass(v21);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v17 = [v10 description];
      *buf = 138544130;
      v27 = v15;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2112;
      v31 = logPrefix;
      v32 = 2112;
      v33 = v17;
      v18 = "Error: %{public}@ <%p>: %@ Unable to lock device for configuring focus mode change: %@";
      v19 = v13;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_15:
  isEnabled = [reconfigureCopy isEnabled];
  if (isEnabled != [(ARImageSensorSettings *)self->_settings isEnabled])
  {
    -[ARImageSensorSettings setEnabled:](self->_settings, "setEnabled:", [reconfigureCopy isEnabled]);
    captureSession = [(ARImageSensor *)self captureSession];
    [captureSession beginConfiguration];

    [(ARImageSensor *)self enableSensor:[(ARImageSensorSettings *)self->_settings isEnabled]];
    captureSession2 = [(ARImageSensor *)self captureSession];
    [captureSession2 commitConfiguration];
  }

LABEL_17:
}

- (id)logPrefix
{
  internalSettings = [(ARImageSensor *)self internalSettings];
  videoFormat = [internalSettings videoFormat];
  captureDeviceType = [videoFormat captureDeviceType];

  internalSettings2 = [(ARImageSensor *)self internalSettings];
  videoFormat2 = [internalSettings2 videoFormat];
  v8 = NSStringFromAVCaptureDevicePosition([videoFormat2 captureDevicePosition]);

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ - %@):", captureDeviceType, v8];

  return v9;
}

- (void)triggerVisionDataBurst
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Vision data burst triggered", &v7, 0x20u);
  }

  [(AVCaptureVisionDataOutput *)self->_visionDataOutput triggerBurst];
}

- (id)prepareToStart
{
  v88[1] = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_1(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v5;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v82 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", &buf, 0x20u);
  }

  setActiveFormat = [(ARImageSensor *)self setActiveFormat];
  if (setActiveFormat || ([(ARImageSensor *)self configureCaptureSession], (setActiveFormat = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = setActiveFormat;
    goto LABEL_6;
  }

  outputsForSynchronizer = [(ARImageSensor *)self outputsForSynchronizer];
  dataOutputs = [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer dataOutputs];
  v12 = [dataOutputs isEqualToArray:outputsForSynchronizer];

  if ([outputsForSynchronizer count] < 2 || (v12 & 1) == 0)
  {
    [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:0 queue:0];
    outputSynchronizer = self->_outputSynchronizer;
    self->_outputSynchronizer = 0;
  }

  v14 = [outputsForSynchronizer count];
  if (!((v14 < 2) | v12 & 1))
  {
    v15 = _ARLogSensor_1(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      v19 = [outputsForSynchronizer description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v17;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix2;
      v83 = 2112;
      v84 = *&v19;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Outputs added to synchronizer: %@", &buf, 0x2Au);
    }

    v20 = [objc_alloc(MEMORY[0x1E6987078]) initWithDataOutputs:outputsForSynchronizer];
    v21 = self->_outputSynchronizer;
    self->_outputSynchronizer = v20;
  }

  [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:self queue:self->_captureQueue];
  captureDevice = [(ARImageSensor *)self captureDevice];
  v80 = 0;
  v23 = [captureDevice lockForConfiguration:&v80];
  v24 = v80;

  if (!v23)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v27 = _MergedGlobals;
    v28 = _ARLogSensor_1(v25);
    v29 = v28;
    if (v27 == 1)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v33 = [v24 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v31;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix3;
      v83 = 2112;
      v84 = *&v33;
      v34 = "%{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
      v35 = v29;
      v36 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_26;
      }

      v37 = objc_opt_class();
      v31 = NSStringFromClass(v37);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v33 = [v24 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v31;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix3;
      v83 = 2112;
      v84 = *&v33;
      v34 = "Error: %{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
      v35 = v29;
      v36 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v35, v36, v34, &buf, 0x2Au);

LABEL_26:
    if (v24)
    {
      v87 = *MEMORY[0x1E696AA08];
      v88[0] = v24;
      captureDevice2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
    }

    else
    {
      captureDevice2 = MEMORY[0x1E695E0F8];
    }

    v8 = ARErrorWithCodeAndUserInfo(101, captureDevice2);

    if (!v24)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  [(ARImageSensor *)self configureCaptureDevice];
  captureDevice2 = [(ARImageSensor *)self captureDevice];
  [captureDevice2 unlockForConfiguration];
  v8 = v24;
LABEL_30:

LABEL_31:
  if (v8)
  {
    v38 = v8;
  }

  else
  {
    v39 = [(AVCaptureVideoDataOutput *)self->_videoOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
    isCameraIntrinsicMatrixDeliverySupported = [v39 isCameraIntrinsicMatrixDeliverySupported];
    v41 = isCameraIntrinsicMatrixDeliverySupported;
    if (isCameraIntrinsicMatrixDeliverySupported)
    {
      isCameraIntrinsicMatrixDeliverySupported = [v39 setCameraIntrinsicMatrixDeliveryEnabled:1];
    }

    v42 = _ARLogSensor_1(isCameraIntrinsicMatrixDeliverySupported);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      v46 = logPrefix4;
      v47 = @"unsupported";
      LODWORD(buf.value) = 138544130;
      LOWORD(buf.flags) = 2048;
      *(&buf.value + 4) = v44;
      if (v41)
      {
        v47 = @"supported";
      }

      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix4;
      v83 = 2112;
      v84 = *&v47;
      _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Intrinsics delivery is %@ by the connection", &buf, 0x2Au);
    }

    v49 = _ARLogSensor_1(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      logPrefix5 = [(ARImageSensor *)self logPrefix];
      activeFormat = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v54 = activeFormat;
      if (activeFormat)
      {
        objc_msgSend_minExposureDuration(activeFormat);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      Seconds = CMTimeGetSeconds(&buf);
      activeFormat2 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v57 = activeFormat2;
      if (activeFormat2)
      {
        objc_msgSend_maxExposureDuration(activeFormat2);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v58 = CMTimeGetSeconds(&buf);
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v51;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix5;
      v83 = 2048;
      v84 = Seconds;
      v85 = 2048;
      v86 = v58;
      _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Exposure duration supported: %f - %f", &buf, 0x34u);
    }

    v60 = _ARLogSensor_1(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      logPrefix6 = [(ARImageSensor *)self logPrefix];
      captureDevice = self->_captureDevice;
      if (captureDevice)
      {
        objc_msgSend_activeVideoMinFrameDuration(captureDevice);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v65 = CMTimeGetSeconds(&buf);
      v66 = self->_captureDevice;
      if (v66)
      {
        objc_msgSend_activeVideoMaxFrameDuration(v66);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v67 = CMTimeGetSeconds(&buf);
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v62;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix6;
      v83 = 2048;
      v84 = v65;
      v85 = 2048;
      v86 = v67;
      _os_log_impl(&dword_1C241C000, v60, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Video frame duration: %f - %f", &buf, 0x34u);
    }

    v69 = _ARLogSensor_1(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      logPrefix7 = [(ARImageSensor *)self logPrefix];
      if ([(AVCaptureDevice *)self->_captureDevice isVideoHDREnabled])
      {
        v73 = @"Enabled";
      }

      else
      {
        v73 = @"Disabled";
      }

      if ([(AVCaptureDevice *)self->_captureDevice automaticallyAdjustsVideoHDREnabled])
      {
        *&v74 = COERCE_DOUBLE(@"Enabled");
      }

      else
      {
        *&v74 = COERCE_DOUBLE(@"Disabled");
      }

      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v71;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix7;
      v83 = 2112;
      v84 = *&v73;
      v85 = 2112;
      v86 = *&v74;
      _os_log_impl(&dword_1C241C000, v69, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Video HDR: %@, Automatically adjusts video HDR: %@", &buf, 0x34u);
    }

    v76 = _ARLogSensor_1(v75);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      logPrefix8 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v78;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v82 = logPrefix8;
      _os_log_impl(&dword_1C241C000, v76, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ prepare to start complete", &buf, 0x20u);
    }
  }

LABEL_6:

  return v8;
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  [(AVCaptureDataOutputSynchronizer *)self->_outputSynchronizer setDelegate:0 queue:0];
  [(AVCaptureVideoDataOutput *)self->_videoOutput setSampleBufferDelegate:0 queue:0];
  [(AVCaptureCameraCalibrationDataOutput *)self->_calibrationOutput setDelegate:0 callbackQueue:0];
  v3 = _ARLogSensor_1([(ARImageSensor *)self resetExposureTracking]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARImageSensor stop complete", &v7, 0x20u);
  }
}

- (void)teardown
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_captureDeviceKeysObserved;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVCaptureDevice *)self->_captureDevice removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:self, v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_captureDeviceKeysObserved removeAllObjects];
  if (self->_videoInput)
  {
    [(AVCaptureSession *)self->_captureSession removeInput:?];
    videoInput = self->_videoInput;
    self->_videoInput = 0;
  }
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor start];
  }

  v3 = _MergedGlobals;
  v4 = _ARLogSensor_1(self);
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v13 = 138543874;
      v14 = v7;
      v15 = 2048;
      selfCopy2 = self;
      v17 = 2112;
      v18 = logPrefix;
      v9 = "%{public}@ <%p>: %@ start called on a child image sensor instead of parent image sensor";
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v10, v11, v9, &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v7 = NSStringFromClass(v12);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v13 = 138543874;
    v14 = v7;
    v15 = 2048;
    selfCopy2 = self;
    v17 = 2112;
    v18 = logPrefix;
    v9 = "Error: %{public}@ <%p>: %@ start called on a child image sensor instead of parent image sensor";
    v10 = v5;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)setPowerUsage:(unint64_t)usage
{
  v40 = *MEMORY[0x1E69E9840];
  if (self->_powerUsage != usage)
  {
    v5 = _ARLogSensor_1(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      logPrefix = [(ARImageSensor *)self logPrefix];
      powerUsage = self->_powerUsage;
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v7;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v35 = logPrefix;
      v36 = 2048;
      v37 = *&powerUsage;
      v38 = 2048;
      usageCopy = usage;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Power usage changed from %li to %li", &buf, 0x34u);
    }

    self->_powerUsage = usage;
    captureDevice = self->_captureDevice;
    v33 = 0;
    v11 = [(AVCaptureDevice *)captureDevice lockForConfiguration:&v33];
    v12 = v33;
    v13 = v12;
    if (v11)
    {
      v14 = _ARLogSensor_1([(ARImageSensor *)self configureFrameRateForDevice:self->_captureDevice]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        v18 = self->_captureDevice;
        if (v18)
        {
          objc_msgSend_activeVideoMinFrameDuration(v18);
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        Seconds = CMTimeGetSeconds(&buf);
        v31 = self->_captureDevice;
        if (v31)
        {
          objc_msgSend_activeVideoMaxFrameDuration(v31);
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v32 = CMTimeGetSeconds(&buf);
        LODWORD(buf.value) = 138544386;
        *(&buf.value + 4) = v16;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v35 = logPrefix2;
        v36 = 2048;
        v37 = Seconds;
        v38 = 2048;
        usageCopy = *&v32;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Power usage changed, video frame duration adjusted to %f-%f", &buf, 0x34u);
      }

      [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
      goto LABEL_23;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v19 = _MergedGlobals;
    v20 = _ARLogSensor_1(v12);
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        v25 = [v13 description];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v23;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v35 = logPrefix3;
        v36 = 2112;
        v37 = *&v25;
        v26 = "%{public}@ <%p>: %@ Unable to lock capture device to change frame rate due to power usage: %@";
        v27 = v21;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v27, v28, v26, &buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v23 = NSStringFromClass(v29);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v25 = [v13 description];
      LODWORD(buf.value) = 138544130;
      *(&buf.value + 4) = v23;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v35 = logPrefix3;
      v36 = 2112;
      v37 = *&v25;
      v26 = "Error: %{public}@ <%p>: %@ Unable to lock capture device to change frame rate due to power usage: %@";
      v27 = v21;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

LABEL_23:
  }
}

- (void)enableSensor:(BOOL)sensor
{
  sensorCopy = sensor;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connections = [(ARImageSensor *)self connections];
  v5 = [connections countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(connections);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:sensorCopy];
      }

      while (v6 != v8);
      v6 = [connections countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = ARImageSensor;
  v4 = [(ARImageSensor *)&v15 description];
  v5 = [v3 stringWithFormat:@"%@ ", v4];

  captureDevice = [(ARImageSensor *)self captureDevice];
  [v5 appendFormat:@" %@", captureDevice];

  captureDevice2 = [(ARImageSensor *)self captureDevice];
  deviceType = [captureDevice2 deviceType];
  [v5 appendFormat:@" %@", deviceType];

  captureDevice3 = [(ARImageSensor *)self captureDevice];
  v10 = objc_msgSend_position(captureDevice3);
  v11 = NSStringFromAVCaptureDevicePosition(v10);
  [v5 appendFormat:@" %@", v11];

  [v5 appendFormat:@" (%li fps)\n", -[ARImageSensor captureFramesPerSecond](self, "captureFramesPerSecond")];
  v12 = [(ARImageSensorSettings *)self->_settings description];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"%@\n", v13];

  return v5;
}

- (id)configureCaptureSession
{
  v181 = *MEMORY[0x1E69E9840];
  videoInput = self->_videoInput;
  if (videoInput)
  {
    device = [(AVCaptureDeviceInput *)videoInput device];
    captureDevice = self->_captureDevice;

    if (device != captureDevice)
    {
      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor start];
      }

      v7 = _MergedGlobals;
      v8 = _ARLogSensor_1(v6);
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          logPrefix = [(ARImageSensor *)self logPrefix];
          [(AVCaptureDeviceInput *)self->_videoInput device];
          v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v11;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v176 = logPrefix;
          v177 = 2112;
          v178 = v13;
          v14 = "%{public}@ <%p>: %@ Unsupported capture device: %@";
          v15 = v9;
          v16 = OS_LOG_TYPE_ERROR;
LABEL_18:
          _os_log_impl(&dword_1C241C000, v15, v16, v14, &buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v11 = NSStringFromClass(v38);
        logPrefix = [(ARImageSensor *)self logPrefix];
        [(AVCaptureDeviceInput *)self->_videoInput device];
        v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v11;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix;
        v177 = 2112;
        v178 = v13;
        v14 = "Error: %{public}@ <%p>: %@ Unsupported capture device: %@";
        v15 = v9;
        v16 = OS_LOG_TYPE_INFO;
        goto LABEL_18;
      }

LABEL_43:

      v69 = ARErrorWithCodeAndUserInfo(150, 0);
      goto LABEL_147;
    }

    device2 = [(AVCaptureDeviceInput *)self->_videoInput device];
    activeFormat = [device2 activeFormat];
    MediaSubType = CMFormatDescriptionGetMediaSubType([activeFormat formatDescription]);

    if (MediaSubType != 875704422)
    {
      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor start];
      }

      v50 = _MergedGlobals;
      v51 = _ARLogSensor_1(v20);
      v9 = v51;
      if (v50 == 1)
      {
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v53;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix2;
        v177 = 1024;
        LODWORD(v178) = MediaSubType;
        v55 = "%{public}@ <%p>: %@ Unsupported pixel format: %d";
        v56 = v9;
        v57 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        v68 = objc_opt_class();
        v53 = NSStringFromClass(v68);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v53;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix2;
        v177 = 1024;
        LODWORD(v178) = MediaSubType;
        v55 = "Error: %{public}@ <%p>: %@ Unsupported pixel format: %d";
        v56 = v9;
        v57 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v56, v57, v55, &buf, 0x26u);

      goto LABEL_43;
    }

    if (self->_videoInput)
    {
      v21 = 0;
      goto LABEL_90;
    }
  }

  v22 = objc_alloc(MEMORY[0x1E69870B0]);
  v23 = self->_captureDevice;
  v171 = 0;
  v24 = [v22 initWithDevice:v23 error:&v171];
  v21 = v171;
  v25 = self->_videoInput;
  self->_videoInput = v24;

  v26 = self->_videoInput;
  if (v26)
  {
    [(AVCaptureDeviceInput *)v26 setCenterStageAllowed:0];
    [(AVCaptureDeviceInput *)self->_videoInput setBackgroundBlurAllowed:0];
    if (![(ARImageSensorSettings *)self->_settings visionDataOutputEnabled])
    {
      goto LABEL_48;
    }

    captureDevice = [(ARImageSensor *)self captureDevice];
    activeFormat2 = [captureDevice activeFormat];
    isVisionDataDeliverySupported = [activeFormat2 isVisionDataDeliverySupported];

    if (isVisionDataDeliverySupported)
    {
      v31 = _ARLogSensor_1([(AVCaptureDeviceInput *)self->_videoInput setVisionDataDeliveryEnabled:1]);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v33;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix3;
        v35 = "%{public}@ <%p>: %@ Vision data delivery enabled";
        v36 = v31;
        v37 = OS_LOG_TYPE_DEFAULT;
LABEL_46:
        _os_log_impl(&dword_1C241C000, v36, v37, v35, &buf, 0x20u);
      }
    }

    else
    {
      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor reconfigure:];
      }

      v63 = _MergedGlobals;
      v64 = _ARLogSensor_1(v30);
      v31 = v64;
      if (v63 == 1)
      {
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = objc_opt_class();
          v33 = NSStringFromClass(v65);
          logPrefix3 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v33;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v176 = logPrefix3;
          v35 = "%{public}@ <%p>: %@ Vision data delivery requested but not supported by device format. Sensor will continue with standard outputs.";
          v36 = v31;
          v37 = OS_LOG_TYPE_ERROR;
          goto LABEL_46;
        }
      }

      else if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v70 = objc_opt_class();
        v33 = NSStringFromClass(v70);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v33;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix3;
        v35 = "Error: %{public}@ <%p>: %@ Vision data delivery requested but not supported by device format. Sensor will continue with standard outputs.";
        v36 = v31;
        v37 = OS_LOG_TYPE_INFO;
        goto LABEL_46;
      }
    }

LABEL_48:
    [(ARImageSensorSettings *)self->_settings maxGainOverride];
    if (v71 <= 0.0)
    {
      goto LABEL_62;
    }

    isMaxGainOverrideSupported = [(AVCaptureDeviceInput *)self->_videoInput isMaxGainOverrideSupported];
    if (isMaxGainOverrideSupported)
    {
      [(ARImageSensorSettings *)self->_settings maxGainOverride];
      v73 = _ARLogSensor_1([(AVCaptureDeviceInput *)self->_videoInput setMaxGainOverride:?]);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = objc_opt_class();
        v75 = NSStringFromClass(v74);
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        [(AVCaptureDeviceInput *)self->_videoInput maxGainOverride];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v75;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix4;
        v177 = 2048;
        v178 = v77;
        v78 = "%{public}@ <%p>: %@ Camera max gain override set to %f";
        v79 = v73;
        v80 = OS_LOG_TYPE_DEFAULT;
        v81 = 42;
LABEL_60:
        _os_log_impl(&dword_1C241C000, v79, v80, v78, &buf, v81);
      }

LABEL_61:

LABEL_62:
      if (![(ARImageSensorSettings *)self->_settings calibrationDataOutputEnabled])
      {
LABEL_74:
        v99 = [(AVCaptureSession *)self->_captureSession canAddInput:self->_videoInput];
        if (!v99)
        {
          if (qword_1EBF41CA8 != -1)
          {
            [ARImageSensor reconfigure:];
          }

          v115 = _MergedGlobals;
          v116 = _ARLogSensor_1(v99);
          v117 = v116;
          if (v115 == 1)
          {
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              v118 = objc_opt_class();
              v119 = NSStringFromClass(v118);
              logPrefix5 = [(ARImageSensor *)self logPrefix];
              LODWORD(buf.value) = 138543874;
              *(&buf.value + 4) = v119;
              LOWORD(buf.flags) = 2048;
              *(&buf.flags + 2) = self;
              HIWORD(buf.epoch) = 2112;
              v176 = logPrefix5;
              v121 = "%{public}@ <%p>: %@ Cannot add video data input to the capture session";
LABEL_112:
              v152 = v117;
              v153 = OS_LOG_TYPE_ERROR;
LABEL_127:
              _os_log_impl(&dword_1C241C000, v152, v153, v121, &buf, 0x20u);
            }

LABEL_128:

            v67 = 102;
            v66 = 0;
            goto LABEL_129;
          }

          if (!os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
          {
            goto LABEL_128;
          }

          v122 = objc_opt_class();
          v119 = NSStringFromClass(v122);
          logPrefix5 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v119;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v176 = logPrefix5;
          v121 = "Error: %{public}@ <%p>: %@ Cannot add video data input to the capture session";
LABEL_126:
          v152 = v117;
          v153 = OS_LOG_TYPE_INFO;
          goto LABEL_127;
        }

        v100 = _ARLogSensor_1([(AVCaptureSession *)self->_captureSession addInputWithNoConnections:self->_videoInput]);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          v101 = objc_opt_class();
          v102 = NSStringFromClass(v101);
          logPrefix6 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v102;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v176 = logPrefix6;
          _os_log_impl(&dword_1C241C000, v100, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data input to the capture session", &buf, 0x20u);
        }

        videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
        frameRatesByPowerUsage = [videoFormat frameRatesByPowerUsage];
        v106 = [frameRatesByPowerUsage objectAtIndexedSubscript:0];
        [v106 doubleValue];
        v108 = v107;

        CMTimeMake(&v170, 1, v108);
        v109 = self->_videoInput;
        buf = v170;
        v110 = _ARLogSensor_1([(AVCaptureDeviceInput *)v109 setVideoMinFrameDurationOverride:&buf]);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          v111 = objc_opt_class();
          v112 = NSStringFromClass(v111);
          logPrefix7 = [(ARImageSensor *)self logPrefix];
          v114 = self->_videoInput;
          if (v114)
          {
            objc_msgSend_videoMinFrameDurationOverride(v114);
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          Seconds = CMTimeGetSeconds(&buf);
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v112;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v176 = logPrefix7;
          v177 = 2048;
          v178 = Seconds;
          _os_log_impl(&dword_1C241C000, v110, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Video min frame duration override set to %f", &buf, 0x2Au);
        }

LABEL_90:
        if (self->_videoOutput)
        {
          goto LABEL_95;
        }

        v124 = objc_opt_new();
        videoOutput = self->_videoOutput;
        self->_videoOutput = v124;

        v126 = [(AVCaptureSession *)self->_captureSession canAddOutput:self->_videoOutput];
        if (v126)
        {
          v127 = _ARLogSensor_1([(AVCaptureSession *)self->_captureSession addOutputWithNoConnections:self->_videoOutput]);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
          {
            v128 = objc_opt_class();
            v129 = NSStringFromClass(v128);
            logPrefix8 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v129;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v176 = logPrefix8;
            _os_log_impl(&dword_1C241C000, v127, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data output to the capture session", &buf, 0x20u);
          }

LABEL_95:
          v131 = self->_videoInput;
          if (self->_videoConnection)
          {
            goto LABEL_96;
          }

          v134 = *MEMORY[0x1E6987608];
          device3 = [(AVCaptureDeviceInput *)self->_videoInput device];
          deviceType = [device3 deviceType];
          device4 = [(AVCaptureDeviceInput *)self->_videoInput device];
          v138 = [(AVCaptureDeviceInput *)v131 portsWithMediaType:v134 sourceDeviceType:deviceType sourceDevicePosition:objc_msgSend_position(device4)];
          firstObject = [v138 firstObject];

          if (firstObject)
          {
            v140 = MEMORY[0x1E6987070];
            v172 = firstObject;
            v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v172 count:1];
            v142 = [v140 connectionWithInputPorts:v141 output:self->_videoOutput];
            videoConnection = self->_videoConnection;
            self->_videoConnection = v142;

            v144 = [(AVCaptureSession *)self->_captureSession canAddConnection:self->_videoConnection];
            if (v144)
            {
              [(NSMutableArray *)self->_connections addObject:self->_videoConnection];
              v145 = _ARLogSensor_1([(AVCaptureSession *)self->_captureSession addConnection:self->_videoConnection]);
              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
              {
                v146 = objc_opt_class();
                v147 = NSStringFromClass(v146);
                logPrefix9 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v147;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v176 = logPrefix9;
                _os_log_impl(&dword_1C241C000, v145, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data connection to the capture session", &buf, 0x20u);
              }

              v131 = self->_videoInput;
LABEL_96:
              if ([(AVCaptureDeviceInput *)v131 isCameraCalibrationDataDeliveryEnabled])
              {
                configureCaptureSessionCalibration = [(ARImageSensor *)self configureCaptureSessionCalibration];

                if (configureCaptureSessionCalibration)
                {
LABEL_101:
                  v133 = configureCaptureSessionCalibration;
LABEL_134:
                  v21 = v133;
                  goto LABEL_135;
                }

                v21 = 0;
              }

              [(AVCaptureVideoDataOutput *)self->_videoOutput setAlwaysDiscardsLateVideoFrames:1];
              [(AVCaptureVideoDataOutput *)self->_videoOutput setSampleBufferDelegate:self queue:self->_captureQueue];
              if ([(AVCaptureDeviceInput *)self->_videoInput isVisionDataDeliveryEnabled])
              {
                configureCaptureSessionCalibration = [(ARImageSensor *)self _configureVisionDataOutputForSession:self->_captureSession];

                if (configureCaptureSessionCalibration)
                {
                  goto LABEL_101;
                }

                v21 = 0;
              }

              if (![(ARImageSensorSettings *)self->_settings supportsCapturingHighResolutionFrames])
              {
                v69 = 0;
                goto LABEL_146;
              }

              v69 = [(ARImageSensor *)self _configurePhotoOutputForCaptureSession:self->_captureSession];

              if (!v69)
              {
                v21 = 0;
                goto LABEL_146;
              }

              v133 = v69;
              goto LABEL_134;
            }

            if (qword_1EBF41CA8 != -1)
            {
              [ARImageSensor reconfigure:];
            }

            v161 = _MergedGlobals;
            v162 = _ARLogSensor_1(v144);
            v156 = v162;
            if (v161 == 1)
            {
              if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
              {
                v163 = objc_opt_class();
                v158 = NSStringFromClass(v163);
                logPrefix10 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v158;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v176 = logPrefix10;
                v160 = "%{public}@ <%p>: %@ Cannot add video connection to capture session";
                goto LABEL_123;
              }

              goto LABEL_144;
            }

            if (!os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
            {
              goto LABEL_144;
            }

            v168 = objc_opt_class();
            v158 = NSStringFromClass(v168);
            logPrefix10 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v158;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v176 = logPrefix10;
            v160 = "Error: %{public}@ <%p>: %@ Cannot add video connection to capture session";
          }

          else
          {
            if (qword_1EBF41CA8 != -1)
            {
              [ARImageSensor reconfigure:];
            }

            v154 = _MergedGlobals;
            v155 = _ARLogSensor_1(v139);
            v156 = v155;
            if (v154 == 1)
            {
              if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
              {
                v157 = objc_opt_class();
                v158 = NSStringFromClass(v157);
                logPrefix10 = [(ARImageSensor *)self logPrefix];
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v158;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = self;
                HIWORD(buf.epoch) = 2112;
                v176 = logPrefix10;
                v160 = "%{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
LABEL_123:
                v164 = v156;
                v165 = OS_LOG_TYPE_ERROR;
LABEL_143:
                _os_log_impl(&dword_1C241C000, v164, v165, v160, &buf, 0x20u);
              }

LABEL_144:

              v61 = 102;
              v62 = 0;
              goto LABEL_145;
            }

            if (!os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
            {
              goto LABEL_144;
            }

            v167 = objc_opt_class();
            v158 = NSStringFromClass(v167);
            logPrefix10 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v158;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v176 = logPrefix10;
            v160 = "Error: %{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
          }

          v164 = v156;
          v165 = OS_LOG_TYPE_INFO;
          goto LABEL_143;
        }

        if (qword_1EBF41CA8 != -1)
        {
          [ARImageSensor reconfigure:];
        }

        v149 = _MergedGlobals;
        v150 = _ARLogSensor_1(v126);
        v117 = v150;
        if (v149 == 1)
        {
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            v151 = objc_opt_class();
            v119 = NSStringFromClass(v151);
            logPrefix5 = [(ARImageSensor *)self logPrefix];
            LODWORD(buf.value) = 138543874;
            *(&buf.value + 4) = v119;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = self;
            HIWORD(buf.epoch) = 2112;
            v176 = logPrefix5;
            v121 = "%{public}@ <%p>: %@ Cannot add video data output to the capture session";
            goto LABEL_112;
          }

          goto LABEL_128;
        }

        if (!os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
        {
          goto LABEL_128;
        }

        v166 = objc_opt_class();
        v119 = NSStringFromClass(v166);
        logPrefix5 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v119;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix5;
        v121 = "Error: %{public}@ <%p>: %@ Cannot add video data output to the capture session";
        goto LABEL_126;
      }

      activeFormat3 = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      isCameraCalibrationDataDeliverySupported = [activeFormat3 isCameraCalibrationDataDeliverySupported];

      if (isCameraCalibrationDataDeliverySupported)
      {
        [(AVCaptureDeviceInput *)self->_videoInput setCameraCalibrationDataDeliveryEnabled:1];
        goto LABEL_74;
      }

      if (qword_1EBF41CA8 != -1)
      {
        [ARImageSensor reconfigure:];
      }

      v89 = _MergedGlobals;
      v90 = _ARLogSensor_1(v88);
      v91 = v90;
      if (v89 == 1)
      {
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v92 = objc_opt_class();
          v93 = NSStringFromClass(v92);
          logPrefix11 = [(ARImageSensor *)self logPrefix];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v93;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v176 = logPrefix11;
          v95 = "%{public}@ <%p>: %@ Does not support camera calibration delivery";
          v96 = v91;
          v97 = OS_LOG_TYPE_ERROR;
LABEL_72:
          _os_log_impl(&dword_1C241C000, v96, v97, v95, &buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        v98 = objc_opt_class();
        v93 = NSStringFromClass(v98);
        logPrefix11 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v93;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v176 = logPrefix11;
        v95 = "Error: %{public}@ <%p>: %@ Does not support camera calibration delivery";
        v96 = v91;
        v97 = OS_LOG_TYPE_INFO;
        goto LABEL_72;
      }

      goto LABEL_74;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v82 = _MergedGlobals;
    v83 = _ARLogSensor_1(isMaxGainOverrideSupported);
    v73 = v83;
    if (v82 == 1)
    {
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v84 = objc_opt_class();
      v75 = NSStringFromClass(v84);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v75;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v176 = logPrefix4;
      v78 = "%{public}@ <%p>: %@ Overriding max gain is not supported by the device.";
      v79 = v73;
      v80 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v85 = objc_opt_class();
      v75 = NSStringFromClass(v85);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v75;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v176 = logPrefix4;
      v78 = "Error: %{public}@ <%p>: %@ Overriding max gain is not supported by the device.";
      v79 = v73;
      v80 = OS_LOG_TYPE_INFO;
    }

    v81 = 32;
    goto LABEL_60;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor reconfigure:];
  }

  v39 = _MergedGlobals;
  v40 = _ARLogSensor_1(v26);
  v41 = v40;
  if (v39 == 1)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      logPrefix12 = [(ARImageSensor *)self logPrefix];
      [v21 description];
      v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v46 = self->_captureDevice;
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v43;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v176 = logPrefix12;
      v177 = 2112;
      v178 = v45;
      v179 = 2112;
      v180 = v46;
      v47 = "%{public}@ <%p>: %@ Error creating capture input for image sensor: %@ (%@)";
      v48 = v41;
      v49 = OS_LOG_TYPE_ERROR;
LABEL_31:
      _os_log_impl(&dword_1C241C000, v48, v49, v47, &buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v58 = objc_opt_class();
    v43 = NSStringFromClass(v58);
    logPrefix12 = [(ARImageSensor *)self logPrefix];
    [v21 description];
    v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v59 = self->_captureDevice;
    LODWORD(buf.value) = 138544386;
    *(&buf.value + 4) = v43;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v176 = logPrefix12;
    v177 = 2112;
    v178 = v45;
    v179 = 2112;
    v180 = v59;
    v47 = "Error: %{public}@ <%p>: %@ Error creating capture input for image sensor: %@ (%@)";
    v48 = v41;
    v49 = OS_LOG_TYPE_INFO;
    goto LABEL_31;
  }

  if (v21)
  {
    v173 = *MEMORY[0x1E696AA08];
    v174 = v21;
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
    v61 = 101;
    v62 = firstObject;
LABEL_145:
    v69 = ARErrorWithCodeAndUserInfo(v61, v62);

    goto LABEL_146;
  }

  v66 = MEMORY[0x1E695E0F8];
  v67 = 101;
LABEL_129:
  v133 = ARErrorWithCodeAndUserInfo(v67, v66);
LABEL_135:
  v69 = v133;
LABEL_146:

LABEL_147:

  return v69;
}

- (id)_configurePhotoOutputForCaptureSession:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = sessionCopy;
  if (self->_photoOutput)
  {
    v7 = 0;
  }

  else
  {
    v8 = ARBackWidePhotoQualityPrioritizationOverride(sessionCopy, v5);
    if (v8)
    {
      v10 = ARBackWidePhotoQualityPrioritizationOverride(v8, v9);
      v11 = v10;
    }

    else
    {
      videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
      isRecommendedForHighResolutionFrameCapturing = [videoFormat isRecommendedForHighResolutionFrameCapturing];

      if (isRecommendedForHighResolutionFrameCapturing)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }

    v14 = _ARLogSensor_1(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v23 = 138544130;
      v24 = v16;
      v25 = 2048;
      selfCopy = self;
      v27 = 2112;
      v28 = logPrefix;
      v29 = 2048;
      v30 = v11;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Configuring photo output for max. photo quality prioritization: %ld", &v23, 0x2Au);
    }

    v18 = objc_opt_new();
    photoOutput = self->_photoOutput;
    self->_photoOutput = v18;

    [(AVCapturePhotoOutput *)self->_photoOutput setMaxPhotoQualityPrioritization:v11];
    if ([v6 canAddOutput:self->_photoOutput])
    {
      [v6 addOutput:self->_photoOutput];
      videoFormat2 = [(ARImageSensorSettings *)self->_settings videoFormat];
      -[AVCapturePhotoOutput setMaxPhotoDimensions:](self->_photoOutput, "setMaxPhotoDimensions:", [videoFormat2 maxPhotoDimensions]);

      v21 = [(AVCapturePhotoOutput *)self->_photoOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
      [(NSMutableArray *)self->_connections addObject:v21];

      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69874D8] code:-11861 userInfo:0];
    }

    if ([(ARImageSensorSettings *)self->_settings focusPixelBlurScoreDeliveryEnabled]&& [(AVCapturePhotoOutput *)self->_photoOutput isFocusPixelBlurScoreSupported])
    {
      [(AVCapturePhotoOutput *)self->_photoOutput setFocusPixelBlurScoreEnabled:1];
    }
  }

  return v7;
}

- (void)captureHighResolutionFrameWithPhotoSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    defaultPhotoSettings = settingsCopy;
  }

  else
  {
    videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
    defaultPhotoSettings = [videoFormat defaultPhotoSettings];
  }

  [(AVCapturePhotoOutput *)self->_photoOutput capturePhotoWithSettings:defaultPhotoSettings delegate:self];
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  pixelBuffer = [photoCopy pixelBuffer];
  if (!pixelBuffer)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v17 = _MergedGlobals;
    v18 = _ARLogSensor_1(pixelBuffer);
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        logPrefix = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v45 = logPrefix;
        v23 = "%{public}@ <%p>: %@ Failed to capture a high resolution frame.";
        v24 = v19;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v24, v25, v23, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v21 = NSStringFromClass(v39);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v45 = logPrefix;
      v23 = "Error: %{public}@ <%p>: %@ Failed to capture a high resolution frame.";
      v24 = v19;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    delegate = [(ARImageSensor *)self delegate];
    v28 = ARErrorWithCodeAndUserInfo(107, 0);
    [delegate sensor:self didFailWithError:v28];
    goto LABEL_21;
  }

  v8 = pixelBuffer;
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(v8);
  v11 = self->_lastIntrinsicsImageResolution.width;
  v12 = self->_lastIntrinsicsImageResolution.height;
  if (v11 == Width && v12 == Height)
  {
    v40 = *&self->_anon_20[32];
    v41 = *&self->_anon_20[16];
    v42 = *self->_anon_20;
  }

  else
  {
    *&v14 = ARAdjustIntrinsicsForViewportSize(COERCE_FLOAT(*self->_anon_20), *&self->_anon_20[16], *&self->_anon_20[32], v11, v12, Width, Height);
    v41 = v15;
    v42 = v14;
    *&v40 = v16;
  }

  metadata = [photoCopy metadata];
  v43 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];

  metadata2 = [photoCopy metadata];
  v28 = [metadata2 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];

  [photoCopy focusPixelBlurScore];
  CVBufferSetAttachment(v8, @"FocusPixelBlurScore", [MEMORY[0x1E696AD98] numberWithFloat:?], kCVAttachmentMode_ShouldPropagate);
  metadata3 = [photoCopy metadata];
  v30 = [metadata3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

  v31 = ARCaptureLensFromMakerNotesDictionary(v30);
  v32 = [ARImageData alloc];
  captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
  captureDevice = [(ARImageSensor *)self captureDevice];
  captureSession = [(ARImageSensor *)self captureSession];
  if (photoCopy)
  {
    objc_msgSend_timestamp(photoCopy);
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v36 = v32;
  delegate = v43;
  v38 = [(ARImageData *)v36 initWithPixelBuffer:v8 captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession timestamp:buf intrinsics:v43 exif:v42 tiff:v41 captureLens:*&v40, v28, v31];

  [(ARImageData *)v38 setHighResolution:1];
  [(ARImageData *)v38 setCalibrationData:self->_cameraCalibrationData];
  [ARImageSensor registerSignPostForImageData:v38];
  [(ARImageSensor *)self _dispatchImageData:v38];

LABEL_21:
}

- (id)configureCaptureSessionCalibration
{
  v60 = *MEMORY[0x1E69E9840];
  if (self->_calibrationOutput)
  {
    goto LABEL_2;
  }

  v5 = objc_alloc_init(MEMORY[0x1E6987068]);
  calibrationOutput = self->_calibrationOutput;
  self->_calibrationOutput = v5;

  v7 = [(AVCaptureSession *)self->_captureSession canAddOutput:self->_calibrationOutput];
  if (!v7)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v12 = _MergedGlobals;
    v13 = _ARLogSensor_1(v7);
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        logPrefix = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v55 = v16;
        v56 = 2048;
        selfCopy8 = self;
        v58 = 2112;
        v59 = logPrefix;
        v18 = "%{public}@ <%p>: %@ Cannot add calibration data output to the capture session";
        v19 = v14;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v16 = NSStringFromClass(v21);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v55 = v16;
      v56 = 2048;
      selfCopy8 = self;
      v58 = 2112;
      v59 = logPrefix;
      v18 = "Error: %{public}@ <%p>: %@ Cannot add calibration data output to the capture session";
      v19 = v14;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v2 = ARErrorWithCodeAndUserInfo(102, 0);
    goto LABEL_3;
  }

  v8 = _ARLogSensor_1([(AVCaptureSession *)self->_captureSession addOutputWithNoConnections:self->_calibrationOutput]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    logPrefix2 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v55 = v10;
    v56 = 2048;
    selfCopy8 = self;
    v58 = 2112;
    v59 = logPrefix2;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added calibration data output to the capture session", buf, 0x20u);
  }

  if (self->_calibrationConnection)
  {
    goto LABEL_10;
  }

  videoInput = self->_videoInput;
  v23 = *MEMORY[0x1E6986FA0];
  device = [(AVCaptureDeviceInput *)videoInput device];
  deviceType = [device deviceType];
  device2 = [(AVCaptureDeviceInput *)self->_videoInput device];
  v27 = [(AVCaptureDeviceInput *)videoInput portsWithMediaType:v23 sourceDeviceType:deviceType sourceDevicePosition:objc_msgSend_position(device2)];
  firstObject = [v27 firstObject];

  if (firstObject)
  {
    v30 = MEMORY[0x1E6987070];
    v53 = firstObject;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v32 = [v30 connectionWithInputPorts:v31 output:self->_calibrationOutput];
    calibrationConnection = self->_calibrationConnection;
    self->_calibrationConnection = v32;

    v34 = [(AVCaptureSession *)self->_captureSession canAddConnection:self->_calibrationConnection];
    if (v34)
    {
      [(NSMutableArray *)self->_connections addObject:self->_calibrationConnection];
      v35 = _ARLogSensor_1([(AVCaptureSession *)self->_captureSession addConnection:self->_calibrationConnection]);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v55 = v37;
        v56 = 2048;
        selfCopy8 = self;
        v58 = 2112;
        v59 = logPrefix3;
        _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added calibration data connection to the capture session", buf, 0x20u);
      }

LABEL_10:
      [(AVCaptureCameraCalibrationDataOutput *)self->_calibrationOutput setAlwaysDiscardsLateCameraCalibrationData:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.calibrationData.alwaysDiscardsLateData"]];
      [(AVCaptureCameraCalibrationDataOutput *)self->_calibrationOutput setDelegate:self callbackQueue:self->_captureQueue];
LABEL_2:
      v2 = 0;
      goto LABEL_3;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v46 = _MergedGlobals;
    v47 = _ARLogSensor_1(v34);
    v41 = v47;
    if (v46 == 1)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v43 = NSStringFromClass(v48);
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v55 = v43;
        v56 = 2048;
        selfCopy8 = self;
        v58 = 2112;
        v59 = logPrefix4;
        v45 = "%{public}@ <%p>: %@ Cannot add calibration connection to capture session";
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    if (!os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v52 = objc_opt_class();
    v43 = NSStringFromClass(v52);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v55 = v43;
    v56 = 2048;
    selfCopy8 = self;
    v58 = 2112;
    v59 = logPrefix4;
    v45 = "Error: %{public}@ <%p>: %@ Cannot add calibration connection to capture session";
LABEL_40:
    v49 = v41;
    v50 = OS_LOG_TYPE_INFO;
    goto LABEL_41;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor reconfigure:];
  }

  v39 = _MergedGlobals;
  v40 = _ARLogSensor_1(v29);
  v41 = v40;
  if (v39 != 1)
  {
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v51 = objc_opt_class();
    v43 = NSStringFromClass(v51);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v55 = v43;
    v56 = 2048;
    selfCopy8 = self;
    v58 = 2112;
    v59 = logPrefix4;
    v45 = "Error: %{public}@ <%p>: %@ Cannot find a calibration port in the input added to the capture session";
    goto LABEL_40;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v55 = v43;
    v56 = 2048;
    selfCopy8 = self;
    v58 = 2112;
    v59 = logPrefix4;
    v45 = "%{public}@ <%p>: %@ Cannot find a calibration port in the input added to the capture session";
LABEL_35:
    v49 = v41;
    v50 = OS_LOG_TYPE_ERROR;
LABEL_41:
    _os_log_impl(&dword_1C241C000, v49, v50, v45, buf, 0x20u);
  }

LABEL_42:

  v2 = ARErrorWithCodeAndUserInfo(102, 0);

LABEL_3:

  return v2;
}

- (void)configureCaptureDevice
{
  captureDevice = [(ARImageSensor *)self captureDevice];
  [(ARImageSensor *)self configureFrameRateForDevice:captureDevice];
  [(ARImageSensor *)self _configureCameraExposureForDevice:captureDevice];
  [(ARImageSensor *)self _configureCameraWhiteBalanceForDevice:captureDevice];
  [(ARImageSensor *)self _configureCameraFocusForDevice:captureDevice];
  [(ARImageSensor *)self _configureImageControlModeForDevice:captureDevice];
  [(ARImageSensor *)self configureGeometricDistortionCorrectionForDevice:captureDevice];
}

- (void)updateCaptureDeviceFrameRate:(double)rate
{
  v29 = *MEMORY[0x1E69E9840];
  captureDevice = [(ARImageSensor *)self captureDevice];
  v20 = 0;
  v6 = [captureDevice lockForConfiguration:&v20];
  v7 = v20;

  if (!v6)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v11 = _MergedGlobals;
    v12 = _ARLogSession(v8);
    captureDevice3 = v12;
    if (v11 == 1)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v22 = v14;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2112;
      v26 = logPrefix;
      v27 = 2112;
      v28 = v7;
      v16 = "%{public}@ <%p>: %@ Encountered error updating capture device frame rate %@";
      v17 = captureDevice3;
      v18 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v19 = objc_opt_class();
      v14 = NSStringFromClass(v19);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v22 = v14;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2112;
      v26 = logPrefix;
      v27 = 2112;
      v28 = v7;
      v16 = "Error: %{public}@ <%p>: %@ Encountered error updating capture device frame rate %@";
      v17 = captureDevice3;
      v18 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 0x2Au);

    goto LABEL_11;
  }

  captureDevice2 = [(ARImageSensor *)self captureDevice];
  [(ARImageSensor *)self _configureFrameRateForDevice:captureDevice2 frameRate:rate];

  captureDevice3 = [(ARImageSensor *)self captureDevice];
  [captureDevice3 unlockForConfiguration];
LABEL_11:
}

- (id)setActiveFormat
{
  v42 = *MEMORY[0x1E69E9840];
  captureDevice = [(ARImageSensor *)self captureDevice];
  v33[0] = 0;
  v4 = [captureDevice lockForConfiguration:v33];
  v5 = v33[0];

  if (v4)
  {
    videoFormat = [(ARImageSensorSettings *)self->_settings videoFormat];
    deviceFormat = [videoFormat deviceFormat];
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    [captureDevice2 setActiveFormat:deviceFormat];

    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice3 deviceType];
    v11 = *MEMORY[0x1E6986940];
    LODWORD(deviceFormat) = deviceType == *MEMORY[0x1E6986940];

    if (deviceFormat)
    {
      videoFormat2 = [(ARImageSensorSettings *)self->_settings videoFormat];
      depthDataFormat = [videoFormat2 depthDataFormat];
      captureDevice4 = [(ARImageSensor *)self captureDevice];
      [captureDevice4 setActiveDepthDataFormat:depthDataFormat];
    }

    v16 = _ARLogSensor_1(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      logPrefix = [(ARImageSensor *)self logPrefix];
      activeFormat = [(AVCaptureDevice *)self->_captureDevice activeFormat];
      v21 = [activeFormat description];
      *buf = 138544130;
      v35 = v18;
      v36 = 2048;
      selfCopy2 = self;
      v38 = 2112;
      v39 = logPrefix;
      v40 = 2112;
      v41 = v21;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Active format selected: %@", buf, 0x2Au);
    }

    deviceType2 = [(AVCaptureDevice *)self->_captureDevice deviceType];
    v23 = deviceType2 == v11;

    if (v23)
    {
      v25 = _ARLogSensor_1(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        activeDepthDataFormat = [(AVCaptureDevice *)self->_captureDevice activeDepthDataFormat];
        v30 = [activeDepthDataFormat description];
        *buf = 138544130;
        v35 = v27;
        v36 = 2048;
        selfCopy2 = self;
        v38 = 2112;
        v39 = logPrefix2;
        v40 = 2112;
        v41 = v30;
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Active depth data format selected: %@", buf, 0x2Au);
      }
    }

    captureDevice5 = [(ARImageSensor *)self captureDevice];
    [captureDevice5 unlockForConfiguration];
  }

  return v5;
}

- (void)configureFrameRateForDevice:(id)device
{
  settings = self->_settings;
  deviceCopy = device;
  videoFormat = [(ARImageSensorSettings *)settings videoFormat];
  frameRatesByPowerUsage = [videoFormat frameRatesByPowerUsage];
  v7 = [frameRatesByPowerUsage objectAtIndexedSubscript:{-[ARImageSensor powerUsage](self, "powerUsage")}];
  [v7 doubleValue];
  v9 = v8;

  [(ARImageSensor *)self _configureFrameRateForDevice:deviceCopy frameRate:v9];
}

- (void)_configureFrameRateForDevice:(id)device frameRate:(double)rate
{
  v31 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  CMTimeMake(&v22, 1, rate);
  v21 = v22;
  [deviceCopy setActiveVideoMinFrameDuration:&v21];
  CMTimeMake(&v20, 1, rate);
  v21 = v20;
  [deviceCopy setActiveVideoMaxFrameDuration:&v21];
  v7 = _ARLogSensor_1([(ARImageSensor *)self setCaptureFramesPerSecond:rate]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138544130;
    v24 = v9;
    v25 = 2048;
    selfCopy2 = self;
    v27 = 2112;
    v28 = logPrefix;
    v29 = 2048;
    rateCopy = rate;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARImageSensor Capture frames per second set to %f", buf, 0x2Au);
  }

  deviceType = [deviceCopy deviceType];
  v12 = deviceType == *MEMORY[0x1E6986940];

  if (v12)
  {
    CMTimeMake(&v19, 1, (rate * 0.25));
    v18 = v19;
    v13 = _ARLogSensor_1([deviceCopy setActiveDepthDataMinFrameDuration:&v18]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      if (deviceCopy)
      {
        objc_msgSend_activeDepthDataMinFrameDuration(deviceCopy);
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      Seconds = CMTimeGetSeconds(&v18);
      *buf = 138544130;
      v24 = v15;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2112;
      v28 = logPrefix2;
      v29 = 2048;
      rateCopy = Seconds;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Depth min frame duration changed to: %f", buf, 0x2Au);
    }
  }
}

- (void)_configureCameraExposureForDevice:(id)device
{
  v56 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (objc_msgSend_position(deviceCopy) != 1)
  {
    if (objc_msgSend_position(deviceCopy) == 2)
    {
      v7 = &ARFrontFacingImageSensorISOUserDefaultsKey;
      v8 = &ARFrontFacingImageSensorExposureDurationUserDefaultsKey;
      goto LABEL_9;
    }

LABEL_7:
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  deviceType = [deviceCopy deviceType];
  v6 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(deviceType);

  if ((v6 & 1) == 0)
  {
    deviceType2 = [deviceCopy deviceType];
    v10 = *MEMORY[0x1E6986948];

    if (deviceType2 == v10)
    {
      v7 = &ARBackFacingUltraWideImageSensorISOUserDefaultsKey;
      v8 = &ARBackFacingUltraWideImageSensorExposureDurationUserDefaultsKey;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = &ARBackFacingWideImageSensorISOUserDefaultsKey;
  v8 = &ARBackFacingWideImageSensorExposureDurationUserDefaultsKey;
LABEL_9:
  v12 = [ARKitUserDefaults numberForKey:*v8];
  v11 = [ARKitUserDefaults numberForKey:*v7];
LABEL_10:
  if (v12 | v11)
  {
    v49 = **&MEMORY[0x1E6986988];
    if (v12)
    {
      [v12 doubleValue];
      CMTimeMake(&v49, (v13 * 1000.0), 1000000);
    }

    if (v11)
    {
      [v11 floatValue];
      v15 = v14;
    }

    else
    {
      v15 = *MEMORY[0x1E6986990];
    }

    objc_initWeak(&location, deviceCopy);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __51__ARImageSensor__configureCameraExposureForDevice___block_invoke;
    v47[3] = &unk_1E817BCE0;
    v47[4] = self;
    objc_copyWeak(&v48, &location);
    v46 = v49;
    [deviceCopy setExposureModeCustomWithDuration:&v46 ISO:v47 completionHandler:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v49.value), v15))}];
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else if ([deviceCopy isExposureModeSupported:2])
  {
    if ([deviceCopy isExposurePointOfInterestSupported])
    {
      v16 = _ARLogSensor_1([deviceCopy setExposurePointOfInterest:{0.5, 0.5}]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        logPrefix = [(ARImageSensor *)self logPrefix];
        [deviceCopy exposurePointOfInterest];
        v21 = v20;
        [deviceCopy exposurePointOfInterest];
        LODWORD(location.value) = 138544386;
        *(&location.value + 4) = v18;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v51 = logPrefix;
        v52 = 2048;
        v53 = v21;
        v54 = 2048;
        v55 = v22;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure point of interest set at %f, %f", &location, 0x34u);
      }
    }

    v23 = _ARLogSensor_1([deviceCopy setExposureMode:2]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      LODWORD(location.value) = 138543874;
      *(&location.value + 4) = v25;
      LOWORD(location.flags) = 2048;
      *(&location.flags + 2) = self;
      HIWORD(location.epoch) = 2112;
      v51 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure mode set to AVCaptureExposureModeContinuousAutoExposure", &location, 0x20u);
    }

    memset(&v49, 0, sizeof(v49));
    CMTimeMake(&v49, 1, 60);
    activeFormat = [deviceCopy activeFormat];
    v28 = activeFormat;
    if (activeFormat)
    {
      objc_msgSend_maxExposureDuration(activeFormat);
    }

    else
    {
      memset(&location, 0, sizeof(location));
    }

    v45 = v49;
    v29 = CMTimeCompare(&v45, &location) < 1;

    if (v29)
    {
      location = v49;
      v31 = _ARLogSensor_1([deviceCopy setActiveMaxExposureDuration:&location]);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        if (deviceCopy)
        {
          objc_msgSend_activeMaxExposureDuration(deviceCopy);
        }

        else
        {
          memset(&location, 0, sizeof(location));
        }

        Seconds = CMTimeGetSeconds(&location);
        LODWORD(location.value) = 138544130;
        *(&location.value + 4) = v39;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v51 = logPrefix3;
        v52 = 2048;
        v53 = Seconds;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Max exposure set to %f", &location, 0x2Au);
      }
    }

    else
    {
      v31 = _ARLogSensor_1(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        location = v49;
        v35 = CMTimeGetSeconds(&location);
        activeFormat2 = [deviceCopy activeFormat];
        v37 = activeFormat2;
        if (activeFormat2)
        {
          objc_msgSend_maxExposureDuration(activeFormat2);
        }

        else
        {
          memset(&location, 0, sizeof(location));
        }

        v41 = CMTimeGetSeconds(&location);
        LODWORD(location.value) = 138544386;
        *(&location.value + 4) = v33;
        LOWORD(location.flags) = 2048;
        *(&location.flags + 2) = self;
        HIWORD(location.epoch) = 2112;
        v51 = logPrefix4;
        v52 = 2048;
        v53 = v35;
        v54 = 2048;
        v55 = v41;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Max exposure out of range: %f > %f", &location, 0x34u);
      }
    }
  }

  if ([(ARImageSensorSettings *)self->_settings videoHDRAllowed])
  {
    [deviceCopy setAutomaticallyAdjustsVideoHDREnabled:1];
  }

  else
  {
    [deviceCopy setAutomaticallyAdjustsVideoHDREnabled:0];
    activeFormat3 = [deviceCopy activeFormat];
    isVideoHDRSupported = [activeFormat3 isVideoHDRSupported];

    if (isVideoHDRSupported)
    {
      [deviceCopy setVideoHDREnabled:0];
    }
  }
}

void __51__ARImageSensor__configureCameraExposureForDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSensor_1(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = [v5 logPrefix];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      objc_msgSend_exposureDuration(WeakRetained);
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    Seconds = CMTimeGetSeconds(&v12);
    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 ISO];
    LODWORD(v12.value) = 138544386;
    *(&v12.value + 4) = v4;
    LOWORD(v12.flags) = 2048;
    *(&v12.flags + 2) = v5;
    HIWORD(v12.epoch) = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = Seconds;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Exposure duration set at %f, ISO %f", &v12, 0x34u);
  }
}

- (void)_configureCameraWhiteBalanceForDevice:(id)device
{
  v47 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (objc_msgSend_position(deviceCopy) == 1)
  {
    deviceType = [deviceCopy deviceType];
    v6 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(deviceType);

    if (v6)
    {
      v7 = &ARBackFacingWideImageSensorWhiteBalanceUserDefaultsKey;
      goto LABEL_9;
    }

    deviceType2 = [deviceCopy deviceType];
    v9 = *MEMORY[0x1E6986948];

    if (deviceType2 != v9)
    {
LABEL_7:
      v10 = 0;
      goto LABEL_21;
    }

    v7 = &ARBackFacingUltraWideImageSensorWhiteBalanceUserDefaultsKey;
  }

  else
  {
    if (objc_msgSend_position(deviceCopy) != 2)
    {
      goto LABEL_7;
    }

    v7 = &ARFrontFacingImageSensorWhiteBalanceUserDefaultsKey;
  }

LABEL_9:
  v11 = [ARKitUserDefaults objectForKey:*v7];
  v10 = v11;
  if (v11)
  {
    v12 = [v11 componentsSeparatedByString:{@", "}];
    v13 = [v12 count];
    if (v13 == 3)
    {
      v14 = [v12 objectAtIndexedSubscript:0];
      [v14 floatValue];
      v16 = v15;

      v17 = [v12 objectAtIndexedSubscript:1];
      [v17 floatValue];
      v19 = v18;

      v20 = [v12 objectAtIndexedSubscript:2];
      [v20 floatValue];
      v22 = v21;

      objc_initWeak(location, deviceCopy);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __55__ARImageSensor__configureCameraWhiteBalanceForDevice___block_invoke;
      v38[3] = &unk_1E817BD08;
      objc_copyWeak(&v39, location);
      v38[4] = self;
      LODWORD(v23) = v16;
      LODWORD(v24) = v19;
      LODWORD(v25) = v22;
      [deviceCopy setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:v38 completionHandler:{v23, v24, v25}];
      objc_destroyWeak(&v39);
      objc_destroyWeak(location);
LABEL_24:

      goto LABEL_25;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v26 = _MergedGlobals;
    v27 = _ARLogSensor_1(v13);
    v28 = v27;
    if (v26 == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        logPrefix = [(ARImageSensor *)self logPrefix];
        *location = 138544130;
        *&location[4] = v30;
        v41 = 2048;
        selfCopy3 = self;
        v43 = 2112;
        v44 = logPrefix;
        v45 = 2048;
        v46 = [v12 count];
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Custom white balance user defaults does not contain 3 values as expected (number of values found: %tu) ", location, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *location = 138544130;
      *&location[4] = v33;
      v41 = 2048;
      selfCopy3 = self;
      v43 = 2112;
      v44 = logPrefix2;
      v45 = 2048;
      v46 = [v12 count];
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Custom white balance user defaults does not contain 3 values as expected (number of values found: %tu) ", location, 0x2Au);
    }
  }

LABEL_21:
  if ([deviceCopy isWhiteBalanceModeSupported:2])
  {
    v12 = _ARLogSensor_1([deviceCopy setWhiteBalanceMode:2]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *location = 138543874;
      *&location[4] = v36;
      v41 = 2048;
      selfCopy3 = self;
      v43 = 2112;
      v44 = logPrefix3;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Continuous auto white balance enabled", location, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_25:
}

void __55__ARImageSensor__configureCameraWhiteBalanceForDevice___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceWhiteBalanceGains];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10 = _ARLogSensor_1(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = *(a1 + 32);
    v14 = [v13 logPrefix];
    v15 = 138544642;
    v16 = v12;
    v17 = 2048;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2048;
    v22 = v4;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Custom white balance gains set at %f, %f, %f", &v15, 0x3Eu);
  }
}

- (void)_configureCameraFocusForDevice:(id)device
{
  v45 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = _ARLogSensor_1(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    logPrefix = [(ARImageSensor *)self logPrefix];
    activeFormat = [deviceCopy activeFormat];
    *buf = 138544130;
    v38 = v7;
    v39 = 2048;
    selfCopy4 = self;
    v41 = 2112;
    v42 = logPrefix;
    v43 = 2048;
    v44 = COERCE_DOUBLE([activeFormat autoFocusSystem]);
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Auto focus system: %li", buf, 0x2Au);
  }

  v10 = objc_msgSend_position(deviceCopy);
  if (v10 != 1)
  {
    v11 = _ARLogSensor_1(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v38 = v13;
      v39 = 2048;
      selfCopy4 = self;
      v41 = 2112;
      v42 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Focus is only configured for back facing image sensor", buf, 0x20u);
    }

    goto LABEL_9;
  }

  if ([(ARImageSensorSettings *)self->_settings autoFocusEnabled])
  {
    if ([deviceCopy isFocusModeSupported:1])
    {
      [deviceCopy setFocusMode:1];
      [(ARImageSensor *)self setRunningSingleShotAutoFocus:1];
    }

    else
    {
      [(ARImageSensor *)self enableAutoFocusForDevice:deviceCopy];
    }

    goto LABEL_23;
  }

  isLockingFocusWithCustomLensPositionSupported = [deviceCopy isLockingFocusWithCustomLensPositionSupported];
  if (!isLockingFocusWithCustomLensPositionSupported)
  {
    v11 = _ARLogSensor_1(isLockingFocusWithCustomLensPositionSupported);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v38 = v24;
      v39 = 2048;
      selfCopy4 = self;
      v41 = 2112;
      v42 = logPrefix3;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Unable to lock lens position", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_23;
  }

  [(ARImageSensor *)self defaultLensPosition];
  v17 = v16;
  if (objc_msgSend_position(deviceCopy) == 1 && ([deviceCopy deviceType], v18 = objc_claimAutoreleasedReturnValue(), v19 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v18), v18, v19))
  {
    v20 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.lensPosition"];
    v21 = v20;
    if (v20)
    {
      [v20 floatValue];
      v17 = v22;
    }
  }

  else
  {
    v21 = 0;
  }

  objc_initWeak(&location, deviceCopy);
  inited = objc_initWeak(&from, self);
  v27 = _ARLogSensor_1(inited);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    *buf = 138544130;
    v38 = v29;
    v39 = 2048;
    selfCopy4 = self;
    v41 = 2112;
    v42 = logPrefix4;
    v43 = 2048;
    v44 = v17;
    _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Setting lens position to %f", buf, 0x2Au);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__ARImageSensor__configureCameraFocusForDevice___block_invoke;
  v32[3] = &unk_1E817BD30;
  v32[4] = self;
  objc_copyWeak(&v33, &from);
  objc_copyWeak(&v34, &location);
  *&v31 = v17;
  [deviceCopy setFocusModeLockedWithLensPosition:v32 completionHandler:v31];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

LABEL_23:
}

void __48__ARImageSensor__configureCameraFocusForDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSensor_1(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained logPrefix];
    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 lensPosition];
    v10 = 138544130;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Lens position set at %f", &v10, 0x2Au);
  }
}

- (void)_configureImageControlModeForDevice:(id)device
{
  v20 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = [deviceCopy isImageControlModeSupported:1];
  if (v5)
  {
    [deviceCopy setAutomaticallyAdjustsImageControlMode:0];
    v5 = [deviceCopy setImageControlMode:1];
  }

  v6 = _ARLogSensor_1(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v10 = 138544386;
    v11 = v8;
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = logPrefix;
    v16 = 1024;
    automaticallyAdjustsImageControlMode = [deviceCopy automaticallyAdjustsImageControlMode];
    v18 = 2048;
    imageControlMode = [deviceCopy imageControlMode];
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Capture device image control mode: %i, %li", &v10, 0x30u);
  }
}

- (void)configureGeometricDistortionCorrectionForDevice:(id)device
{
  v26 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (objc_msgSend_position(deviceCopy) == 2)
  {
    v5 = _ARLogSensor_1(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v18 = 138543874;
      v19 = v7;
      v20 = 2048;
      selfCopy3 = self;
      v22 = 2112;
      v23 = logPrefix;
      v9 = "%{public}@ <%p>: %@ Configuring geometric distortion correction on front facing camera is not supported";
LABEL_11:
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, v9, &v18, 0x20u);
LABEL_12:
    }
  }

  else
  {
    isGeometricDistortionCorrectionSupported = [deviceCopy isGeometricDistortionCorrectionSupported];
    if (isGeometricDistortionCorrectionSupported)
    {
      internalSettings = [(ARImageSensor *)self internalSettings];
      [deviceCopy setGeometricDistortionCorrectionEnabled:{objc_msgSend(internalSettings, "backFacingCameraGeometricDistortionCorrectionEnabled")}];

      v5 = _ARLogSensor_1(v12);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v7 = NSStringFromClass(v13);
        logPrefix = [(ARImageSensor *)self logPrefix];
        internalSettings2 = [(ARImageSensor *)self internalSettings];
        backFacingCameraGeometricDistortionCorrectionEnabled = [internalSettings2 backFacingCameraGeometricDistortionCorrectionEnabled];
        v16 = @"disabled";
        v18 = 138544130;
        v20 = 2048;
        v19 = v7;
        if (backFacingCameraGeometricDistortionCorrectionEnabled)
        {
          v16 = @"enabled";
        }

        selfCopy3 = self;
        v22 = 2112;
        v23 = logPrefix;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Capture device geometric distortion correction: %@", &v18, 0x2Au);

        goto LABEL_12;
      }
    }

    else
    {
      v5 = _ARLogSensor_1(isGeometricDistortionCorrectionSupported);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v7 = NSStringFromClass(v17);
        logPrefix = [(ARImageSensor *)self logPrefix];
        v18 = 138543874;
        v19 = v7;
        v20 = 2048;
        selfCopy3 = self;
        v22 = 2112;
        v23 = logPrefix;
        v9 = "%{public}@ <%p>: %@ Device doesn't support geometric distortion correction";
        goto LABEL_11;
      }
    }
  }
}

- (void)enableAutoFocusForDevice:(id)device
{
  v63 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  captureDevice = self->_captureDevice;
  v52 = 0;
  v6 = [(AVCaptureDevice *)captureDevice lockForConfiguration:&v52];
  v7 = v52;
  v8 = v7;
  if (!v6)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v24 = _MergedGlobals;
    v25 = _ARLogSensor_1(v7);
    v26 = v25;
    if (v24 == 1)
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v30 = [v8 description];
      *buf = 138544130;
      v54 = v28;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix;
      v59 = 2112;
      v60 = v30;
      v31 = "%{public}@ <%p>: %@ Unable to lock capture device to enable auto focus: %@";
      v32 = v26;
      v33 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      v38 = objc_opt_class();
      v28 = NSStringFromClass(v38);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v30 = [v8 description];
      *buf = 138544130;
      v54 = v28;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix;
      v59 = 2112;
      v60 = v30;
      v31 = "Error: %{public}@ <%p>: %@ Unable to lock capture device to enable auto focus: %@";
      v32 = v26;
      v33 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v32, v33, v31, buf, 0x2Au);

    goto LABEL_41;
  }

  if ([deviceCopy isFocusPointOfInterestSupported])
  {
    v9 = _ARLogSensor_1([deviceCopy setFocusPointOfInterest:{0.5, 0.5}]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      [deviceCopy focusPointOfInterest];
      v14 = v13;
      [deviceCopy focusPointOfInterest];
      *buf = 138544386;
      v54 = v11;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix2;
      v59 = 2048;
      v60 = v14;
      v61 = 2048;
      v62 = v15;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Focus point of interest at at %f, %f", buf, 0x34u);
    }
  }

  v16 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.wide.smoothAutoFocus"];
  if ((v16 & 1) == 0)
  {
    v17 = _ARLogSensor_1(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v19 = NSStringFromClass(v34);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v54 = v19;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix3;
      v59 = 2112;
      v60 = @"disabled";
      v21 = "%{public}@ <%p>: %@ Smooth auto focus %@ by user defaults";
      v22 = v17;
      v23 = 42;
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([deviceCopy isSmoothAutoFocusSupported])
  {
    v17 = _ARLogSensor_1([deviceCopy setSmoothAutoFocusEnabled:1]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v54 = v19;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix3;
      v21 = "%{public}@ <%p>: %@ Smooth auto focus enabled";
      v22 = v17;
      v23 = 32;
LABEL_17:
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, v21, buf, v23);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

LABEL_19:
  v26 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.imagesensor.back.wide.autoFocusRange"];
  if (!v26)
  {
    goto LABEL_36;
  }

  deviceType = [deviceCopy deviceType];
  v36 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(deviceType);

  if (!v36)
  {
    goto LABEL_36;
  }

  if (([(__CFString *)v26 isEqualToString:@"near"]& 1) != 0)
  {
    v37 = 1;
  }

  else if (([(__CFString *)v26 isEqualToString:@"far"]& 1) != 0)
  {
    v37 = 2;
  }

  else
  {

    v37 = 0;
    v26 = @"none";
  }

  isAutoFocusRangeRestrictionSupported = [deviceCopy isAutoFocusRangeRestrictionSupported];
  if (isAutoFocusRangeRestrictionSupported)
  {
    v40 = _ARLogSensor_1([deviceCopy setAutoFocusRangeRestriction:v37]);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      *buf = 138544130;
      v54 = v42;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix4;
      v59 = 2112;
      v60 = v26;
      v44 = "%{public}@ <%p>: %@ Focus range restriction set to %@";
      v45 = v40;
      v46 = 42;
LABEL_34:
      _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, v44, buf, v46);
    }
  }

  else
  {
    v40 = _ARLogSensor_1(isAutoFocusRangeRestrictionSupported);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v47 = objc_opt_class();
      v42 = NSStringFromClass(v47);
      logPrefix4 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v54 = v42;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix4;
      v44 = "%{public}@ <%p>: %@ Device does not support auto focus range restriction";
      v45 = v40;
      v46 = 32;
      goto LABEL_34;
    }
  }

LABEL_36:
  if ([deviceCopy isFocusModeSupported:2])
  {
    v48 = _ARLogSensor_1([deviceCopy setFocusMode:2]);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      logPrefix5 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v54 = v50;
      v55 = 2048;
      selfCopy8 = self;
      v57 = 2112;
      v58 = logPrefix5;
      _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Continuous auto focus enabled", buf, 0x20u);
    }
  }

  [deviceCopy unlockForConfiguration];
LABEL_41:
}

- (id)_configureVisionDataOutputForSession:(id)session
{
  v118[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (self->_visionDataOutput)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v7 = objc_opt_new();
  visionDataOutput = self->_visionDataOutput;
  self->_visionDataOutput = v7;

  if ([sessionCopy canAddOutput:self->_visionDataOutput])
  {
    [sessionCopy addOutputWithNoConnections:self->_visionDataOutput];
  }

  if (self->_visionDataConnection)
  {
LABEL_9:
    visionDataOutputParameters = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];

    if (visionDataOutputParameters)
    {
      v11 = _ARLogSensor_1(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        logPrefix = [(ARImageSensor *)self logPrefix];
        visionDataOutputParameters2 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v16 = [visionDataOutputParameters2 description];
        *buf = 138544130;
        v111 = v13;
        v112 = 2048;
        selfCopy5 = self;
        v114 = 2112;
        v115 = logPrefix;
        v116 = 2112;
        v117 = v16;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Setting vision data output parameters from dictionary: %@", buf, 0x2Au);
      }

      visionDataOutputParameters3 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v18 = [visionDataOutputParameters3 valueForKey:*MEMORY[0x1E698BD90]];
      bOOLValue = [v18 BOOLValue];

      visionDataOutputParameters4 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v21 = [visionDataOutputParameters4 valueForKey:*MEMORY[0x1E698BDA0]];
      [v21 floatValue];
      v23 = v22;

      visionDataOutputParameters5 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v25 = [visionDataOutputParameters5 valueForKey:*MEMORY[0x1E698BDB8]];
      bOOLValue2 = [v25 BOOLValue];

      visionDataOutputParameters6 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v28 = [visionDataOutputParameters6 valueForKey:*MEMORY[0x1E698BDC0]];
      integerValue = [v28 integerValue];

      visionDataOutputParameters7 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v31 = [visionDataOutputParameters7 valueForKey:*MEMORY[0x1E698BDC8]];
      [v31 floatValue];
      v33 = v32;

      visionDataOutputParameters8 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v35 = [visionDataOutputParameters8 valueForKey:*MEMORY[0x1E698BDE0]];
      [v35 floatValue];
      v37 = v36;

      visionDataOutputParameters9 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v39 = [visionDataOutputParameters9 valueForKey:*MEMORY[0x1E698BDE8]];
      integerValue2 = [v39 integerValue];

      visionDataOutputParameters10 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v42 = [visionDataOutputParameters10 valueForKey:*MEMORY[0x1E698BDF0]];
      [v42 floatValue];
      v44 = v43;

      visionDataOutputParameters11 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v46 = [visionDataOutputParameters11 valueForKey:*MEMORY[0x1E698BDF8]];
      [v46 floatValue];
      v48 = v47;

      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setFeatureBinningEnabled:bOOLValue];
      LODWORD(v49) = v23;
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setKeypointDetectionThreshold:v49];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setFeatureOrientationAssignmentEnabled:bOOLValue2];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setGaussianPyramidOctavesCount:integerValue];
      LODWORD(v50) = v33;
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setGaussianPyramidBaseOctaveDownscalingFactor:v50];
      CMTimeMakeWithSeconds(&v109, v37, 1000);
      v51 = self->_visionDataOutput;
      v108 = v109;
      [(AVCaptureVisionDataOutput *)v51 setMaxBurstDuration:&v108];
      [(AVCaptureVisionDataOutput *)self->_visionDataOutput setMaxKeypointsCount:integerValue2];
      objc_msgSend__createCMTimeFractionFromDecimalDuration_(self, v44);
      v52 = self->_visionDataOutput;
      v108 = v107[1];
      [(AVCaptureVisionDataOutput *)v52 setMinBurstFrameDuration:&v108];
      CMTimeMakeWithSeconds(v107, v48, 1000);
      v53 = self->_visionDataOutput;
      v108 = v107[0];
      [(AVCaptureVisionDataOutput *)v53 setMinFrameDuration:&v108];
      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isDynamicThresholdingSupported])
      {
        visionDataOutputParameters12 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v55 = [visionDataOutputParameters12 valueForKey:*MEMORY[0x1E698BD88]];
        -[AVCaptureVisionDataOutput setDynamicThresholdingEnabled:](self->_visionDataOutput, "setDynamicThresholdingEnabled:", [v55 BOOLValue]);
      }

      visionDataOutputParameters13 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
      v57 = [visionDataOutputParameters13 valueForKey:*MEMORY[0x1E698BD98]];
      integerValue3 = [v57 integerValue];

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isKeypointDetectionFlowTypeSupported:integerValue3])
      {
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setKeypointDetectionFlowType:integerValue3];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSubPixelThresholdSupported])
      {
        visionDataOutputParameters14 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v60 = [visionDataOutputParameters14 valueForKey:*MEMORY[0x1E698BE18]];
        -[AVCaptureVisionDataOutput setSubPixelThreshold:](self->_visionDataOutput, "setSubPixelThreshold:", [v60 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isFeatureMatchingSupported])
      {
        visionDataOutputParameters15 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v62 = [visionDataOutputParameters15 valueForKey:*MEMORY[0x1E698BDB0]];
        -[AVCaptureVisionDataOutput setFeatureMatchingEnabled:](self->_visionDataOutput, "setFeatureMatchingEnabled:", [v62 BOOLValue]);

        visionDataOutputParameters16 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v64 = [visionDataOutputParameters16 valueForKey:*MEMORY[0x1E698BDA8]];
        -[AVCaptureVisionDataOutput setFeatureMatchingDescriptorSize:](self->_visionDataOutput, "setFeatureMatchingDescriptorSize:", [v64 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isOrientationDistanceThresholdSupported])
      {
        visionDataOutputParameters17 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v66 = [visionDataOutputParameters17 valueForKey:*MEMORY[0x1E698BE00]];
        [v66 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setOrientationDistanceThreshold:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSigmaDistanceThresholdSupported])
      {
        visionDataOutputParameters18 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v68 = [visionDataOutputParameters18 valueForKey:*MEMORY[0x1E698BE08]];
        [v68 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setSigmaDistanceThreshold:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isSquareDistanceDisparityFractionSupported])
      {
        visionDataOutputParameters19 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v70 = [visionDataOutputParameters19 valueForKey:*MEMORY[0x1E698BE10]];
        [v70 floatValue];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setSquareDistanceDisparityFraction:?];
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isHammingDistanceThresholdSupported])
      {
        visionDataOutputParameters20 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v72 = [visionDataOutputParameters20 valueForKey:*MEMORY[0x1E698BDD0]];
        -[AVCaptureVisionDataOutput setHammingDistanceThreshold:](self->_visionDataOutput, "setHammingDistanceThreshold:", [v72 integerValue]);
      }

      if ([(AVCaptureVisionDataOutput *)self->_visionDataOutput isLACCConfigAndMetadataSupported])
      {
        visionDataOutputParameters21 = [(ARImageSensorSettings *)self->_settings visionDataOutputParameters];
        v74 = [visionDataOutputParameters21 valueForKey:*MEMORY[0x1E698BDD8]];
        [(AVCaptureVisionDataOutput *)self->_visionDataOutput setLaccConfigAndMetadata:v74];
      }
    }

    goto LABEL_2;
  }

  device = [(AVCaptureDeviceInput *)self->_videoInput device];
  deviceType = [device deviceType];

  if (deviceType == *MEMORY[0x1E6986908] || deviceType == *MEMORY[0x1E6986900] || deviceType == *MEMORY[0x1E6986938])
  {
    v79 = *MEMORY[0x1E6986950];

    deviceType = v79;
  }

  videoInput = self->_videoInput;
  device2 = [(AVCaptureDeviceInput *)videoInput device];
  v82 = [(AVCaptureDeviceInput *)videoInput portsWithMediaType:*MEMORY[0x1E6986FB0] sourceDeviceType:deviceType sourceDevicePosition:objc_msgSend_position(device2)];
  firstObject = [v82 firstObject];

  if (firstObject)
  {
    v85 = MEMORY[0x1E6987070];
    v118[0] = firstObject;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:1];
    v87 = [v85 connectionWithInputPorts:v86 output:self->_visionDataOutput];
    visionDataConnection = self->_visionDataConnection;
    self->_visionDataConnection = v87;

    v89 = [(AVCaptureSession *)self->_captureSession canAddConnection:self->_visionDataConnection];
    if (v89)
    {
      [(NSMutableArray *)self->_connections addObject:self->_visionDataConnection];
      [(AVCaptureSession *)self->_captureSession addConnection:self->_visionDataConnection];

      goto LABEL_9;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v96 = _MergedGlobals;
    v97 = _ARLogSensor_1(v89);
    v92 = v97;
    if (v96 == 1)
    {
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        v98 = objc_opt_class();
        v99 = NSStringFromClass(v98);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v111 = v99;
        v112 = 2048;
        selfCopy5 = self;
        v114 = 2112;
        v115 = logPrefix2;
        _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add vision data connection to capture session", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v111 = v105;
      v112 = 2048;
      selfCopy5 = self;
      v114 = 2112;
      v115 = logPrefix3;
      _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add vision data connection to capture session", buf, 0x20u);
    }
  }

  else
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v90 = _MergedGlobals;
    v91 = _ARLogSensor_1(v84);
    v92 = v91;
    if (v90 == 1)
    {
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v111 = v94;
        v112 = 2048;
        selfCopy5 = self;
        v114 = 2112;
        v115 = logPrefix4;
        _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find a vision data port in the input added to the capture session", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      logPrefix5 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v111 = v102;
      v112 = 2048;
      selfCopy5 = self;
      v114 = 2112;
      v115 = logPrefix5;
      _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find a vision data port in the input added to the capture session", buf, 0x20u);
    }
  }

  v5 = ARErrorWithCodeAndUserInfo(102, 0);

LABEL_3:

  return v5;
}

- (void)enableContinuousAutoFocusIfPossible
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(ARImageSensor *)self runningSingleShotAutoFocus]&& [(AVCaptureDevice *)self->_captureDevice focusMode]== AVCaptureFocusModeLocked)
  {
    v3 = _ARLogSensor_1([(ARImageSensor *)self setRunningSingleShotAutoFocus:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v7 = 138543874;
      v8 = v5;
      v9 = 2048;
      selfCopy = self;
      v11 = 2112;
      v12 = logPrefix;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Enabling continuous auto focus after single shot auto focus is locked.", &v7, 0x20u);
    }

    [(ARImageSensor *)self enableAutoFocusForDevice:self->_captureDevice];
  }
}

- (void)trackExposureTargetOffsetIfNeededForImageData:(id)data shouldDrop:(BOOL *)drop
{
  v56 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARImageSensorSettings *)self->_settings dropsInitialFramesOutsideExposureTargetOffsetThreshold]|| self->_reachedExposureTargetOffsetThreshold)
  {
    goto LABEL_9;
  }

  objc_msgSend_timestamp(dataCopy);
  [dataCopy exposureTargetOffset];
  kdebug_trace();
  ++self->_initialImageDatasCounter;
  [dataCopy exposureTargetOffset];
  v8 = v7;
  [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
  if (v8 < v9 || ([dataCopy exposureTargetOffset], v11 = v10, maximumNumberOfInitialFramesDropped = -[ARImageSensorSettings positiveExposureTargetOffsetThreshold](self->_settings, "positiveExposureTargetOffsetThreshold"), v11 > v13))
  {
    initialImageDatasCounter = self->_initialImageDatasCounter;
    maximumNumberOfInitialFramesDropped = [(ARImageSensorSettings *)self->_settings maximumNumberOfInitialFramesDropped];
    if (initialImageDatasCounter <= maximumNumberOfInitialFramesDropped)
    {
      [dataCopy exposureTargetOffset];
      v26 = v25;
      negativeExposureTargetOffsetThreshold = [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
      if (v26 >= v28)
      {
        [dataCopy exposureTargetOffset];
        v37 = v36;
        positiveExposureTargetOffsetThreshold = [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
        if (v37 <= v39)
        {
LABEL_21:
          if (!drop)
          {
            goto LABEL_12;
          }

          v24 = 1;
          goto LABEL_11;
        }

        v29 = _ARLogSensor_1(positiveExposureTargetOffsetThreshold);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v40 = objc_opt_class();
          v31 = NSStringFromClass(v40);
          [dataCopy exposureTargetOffset];
          v42 = v41;
          [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
          v44 = 138544130;
          v45 = v31;
          v46 = 2048;
          selfCopy3 = self;
          v48 = 2048;
          v49 = v42;
          v50 = 2048;
          v51 = v43;
          v35 = "%{public}@ <%p>: Dropping initial frame due to absolute exposureTargetOffset value being above positive threshold: exposureTargetOffset=%f, positiveExposureTargetOffsetThreshold=%f";
          goto LABEL_19;
        }
      }

      else
      {
        v29 = _ARLogSensor_1(negativeExposureTargetOffsetThreshold);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          [dataCopy exposureTargetOffset];
          v33 = v32;
          [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
          v44 = 138544130;
          v45 = v31;
          v46 = 2048;
          selfCopy3 = self;
          v48 = 2048;
          v49 = v33;
          v50 = 2048;
          v51 = v34;
          v35 = "%{public}@ <%p>: Dropping initial frame due to absolute exposureTargetOffset value being below negative threshold: exposureTargetOffset=%f, negativeExposureTargetOffsetThreshold=%f";
LABEL_19:
          _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, v35, &v44, 0x2Au);
        }
      }

      goto LABEL_21;
    }
  }

  v15 = _ARLogSensor_1(maximumNumberOfInitialFramesDropped);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = self->_initialImageDatasCounter;
    [dataCopy exposureTargetOffset];
    v20 = v19;
    [(ARImageSensorSettings *)self->_settings negativeExposureTargetOffsetThreshold];
    v22 = v21;
    [(ARImageSensorSettings *)self->_settings positiveExposureTargetOffsetThreshold];
    v44 = 138544642;
    v45 = v17;
    v46 = 2048;
    selfCopy3 = self;
    v48 = 2048;
    v49 = *&v18;
    v50 = 2048;
    v51 = v20;
    v52 = 2048;
    v53 = v22;
    v54 = 2048;
    v55 = v23;
    _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Finished dropping initial frames after %lu frames due to absolute exposureTargetOffset value being below or above threshold: exposureTargetOffset=%f, negativeExposureTargetOffsetThreshold=%f, positiveExposureTargetOffsetThreshold=%f", &v44, 0x3Eu);
  }

  self->_reachedExposureTargetOffsetThreshold = 1;
LABEL_9:
  if (drop)
  {
    v24 = 0;
LABEL_11:
    *drop = v24;
  }

LABEL_12:
}

- (void)setInterrupted:(BOOL)interrupted
{
  if (self->_interrupted != interrupted)
  {
    self->_interrupted = interrupted;
    if (interrupted)
    {
      [(ARImageSensor *)self resetExposureTracking];
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_createCMTimeFractionFromDecimalDuration:(SEL)duration
{
  [&unk_1F4255BF0 doubleValue];
  if (fabs(a4 + -1.0 / v6) >= 0.00001)
  {

    return CMTimeMakeWithSeconds(retstr, a4, 1000);
  }

  else
  {
    intValue = [&unk_1F4255BF0 intValue];

    return CMTimeMake(retstr, 1, intValue);
  }
}

+ (float)defaultLensPosition
{
  if (defaultLensPosition_onceToken != -1)
  {
    +[ARImageSensor defaultLensPosition];
  }

  return *&defaultLensPosition_lensPosition;
}

uint64_t __36__ARImageSensor_defaultLensPosition__block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    v1 = 1062836634;
  }

  else
  {
    result = MGIsDeviceOneOfType();
    if (!result)
    {
      return result;
    }

    v1 = 1061997773;
  }

  defaultLensPosition_lensPosition = v1;
  return result;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  output = [connection output];
  videoOutput = self->_videoOutput;

  if (output == videoOutput)
  {
    v9 = [ARImageData alloc];
    captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
    captureDevice = [(ARImageSensor *)self captureDevice];
    captureSession = [(ARImageSensor *)self captureSession];
    v21 = [(ARImageData *)v9 initWithSampleBuffer:buffer captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

    [(ARImageData *)v21 cameraIntrinsics];
    *&self->_anon_20[8] = v13;
    *&self->_anon_20[24] = v14;
    *self->_anon_20 = v15;
    *&self->_anon_20[16] = v16;
    *&self->_anon_20[40] = v17;
    *&self->_anon_20[32] = v18;
    [(ARImageData *)v21 imageResolution];
    self->_lastIntrinsicsImageResolution.width = v19;
    self->_lastIntrinsicsImageResolution.height = v20;
    [ARImageSensor registerSignPostForImageData:v21];
    [(ARImageSensor *)self _dispatchImageData:v21];
  }
}

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = CMGetAttachment(buffer, *MEMORY[0x1E6960498], 0);
  CMSampleBufferGetPresentationTimeStamp(&v14, buffer);
  Seconds = CMTimeGetSeconds(&v14);
  v10 = _ARLogSensor_1(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    logPrefix = [(ARImageSensor *)self logPrefix];
    LODWORD(v14.value) = 138544386;
    *(&v14.value + 4) = v12;
    LOWORD(v14.flags) = 2048;
    *(&v14.flags + 2) = self;
    HIWORD(v14.epoch) = 2112;
    v15 = logPrefix;
    v16 = 2048;
    v17 = Seconds;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ capture session dropped video frame: %f, %@", &v14, 0x34u);
  }
}

- (void)_logIfDataIsMissingWithVideoData:(id)data visionData:(id)visionData calibrationData:(id)calibrationData
{
  v94 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  visionDataCopy = visionData;
  calibrationDataCopy = calibrationData;
  v11 = calibrationDataCopy;
  if (!dataCopy)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v22 = _MergedGlobals;
    v23 = _ARLogSensor_1(calibrationDataCopy);
    v15 = v23;
    if (v22 == 1)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v24 = objc_opt_class();
      v17 = NSStringFromClass(v24);
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      v86 = 138543874;
      v87 = v17;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType;
      v25 = "%{public}@ <%p>: %@: No video frame received. Dropping frame!";
      goto LABEL_20;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    v32 = objc_opt_class();
    v17 = NSStringFromClass(v32);
    captureDevice = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice deviceType];
    v86 = 138543874;
    v87 = v17;
    v88 = 2048;
    selfCopy16 = self;
    v90 = 2112;
    v91 = deviceType;
    v25 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame!";
LABEL_28:
    v30 = v15;
    v31 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  sampleBufferWasDropped = [dataCopy sampleBufferWasDropped];
  if (!sampleBufferWasDropped)
  {
    sampleBuffer = [dataCopy sampleBuffer];
    if (sampleBuffer)
    {
      goto LABEL_37;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor start];
    }

    v27 = _MergedGlobals;
    v28 = _ARLogSensor_1(sampleBuffer);
    v15 = v28;
    if (v27 == 1)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v29 = objc_opt_class();
      v17 = NSStringFromClass(v29);
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      v86 = 138543874;
      v87 = v17;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType;
      v25 = "%{public}@ <%p>: %@: No video frame received. Dropping frame! No reason provided";
LABEL_20:
      v30 = v15;
      v31 = OS_LOG_TYPE_ERROR;
LABEL_29:
      v37 = 32;
LABEL_35:
      _os_log_impl(&dword_1C241C000, v30, v31, v25, &v86, v37);

      goto LABEL_36;
    }

    if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    v36 = objc_opt_class();
    v17 = NSStringFromClass(v36);
    captureDevice = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice deviceType];
    v86 = 138543874;
    v87 = v17;
    v88 = 2048;
    selfCopy16 = self;
    v90 = 2112;
    v91 = deviceType;
    v25 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame! No reason provided";
    goto LABEL_28;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor start];
  }

  v13 = _MergedGlobals;
  v14 = _ARLogSensor_1(sampleBufferWasDropped);
  v15 = v14;
  if (v13 == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      droppedReason = [dataCopy droppedReason];
      if (droppedReason > 3)
      {
        v21 = @"Undefined";
      }

      else
      {
        v21 = *(&off_1E817BD50 + droppedReason);
      }

      v86 = 138544130;
      v87 = v17;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType;
      v92 = 2112;
      v93 = v21;
      v25 = "%{public}@ <%p>: %@: No video frame received. Dropping frame! Reason: %@";
      v30 = v15;
      v31 = OS_LOG_TYPE_ERROR;
LABEL_34:
      v37 = 42;
      goto LABEL_35;
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v33 = objc_opt_class();
    v17 = NSStringFromClass(v33);
    captureDevice = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice deviceType];
    droppedReason2 = [dataCopy droppedReason];
    if (droppedReason2 > 3)
    {
      v35 = @"Undefined";
    }

    else
    {
      v35 = *(&off_1E817BD50 + droppedReason2);
    }

    v86 = 138544130;
    v87 = v17;
    v88 = 2048;
    selfCopy16 = self;
    v90 = 2112;
    v91 = deviceType;
    v92 = 2112;
    v93 = v35;
    v25 = "Error: %{public}@ <%p>: %@: No video frame received. Dropping frame! Reason: %@";
    v30 = v15;
    v31 = OS_LOG_TYPE_INFO;
    goto LABEL_34;
  }

LABEL_36:

LABEL_37:
  if (!visionDataCopy)
  {
    goto LABEL_64;
  }

  visionDataWasDropped = [visionDataCopy visionDataWasDropped];
  if (!visionDataWasDropped)
  {
    sampleBuffer = [visionDataCopy visionDataPixelBuffer];
    if (sampleBuffer)
    {
      goto LABEL_64;
    }

    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v48 = _MergedGlobals;
    v49 = _ARLogSensor_1(sampleBuffer);
    v41 = v49;
    if (v48 == 1)
    {
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      v50 = objc_opt_class();
      v43 = NSStringFromClass(v50);
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice2 deviceType];
      v86 = 138543874;
      v87 = v43;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType2;
      v51 = "%{public}@ <%p>: %@: Video frame received without vision data. No reason provided";
      v52 = v41;
      v53 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        goto LABEL_63;
      }

      v57 = objc_opt_class();
      v43 = NSStringFromClass(v57);
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice2 deviceType];
      v86 = 138543874;
      v87 = v43;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType2;
      v51 = "Error: %{public}@ <%p>: %@: Video frame received without vision data. No reason provided";
      v52 = v41;
      v53 = OS_LOG_TYPE_INFO;
    }

    v58 = 32;
LABEL_62:
    _os_log_impl(&dword_1C241C000, v52, v53, v51, &v86, v58);

    goto LABEL_63;
  }

  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor reconfigure:];
  }

  v39 = _MergedGlobals;
  v40 = _ARLogSensor_1(visionDataWasDropped);
  v41 = v40;
  if (v39 == 1)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice2 deviceType];
      droppedReason3 = [visionDataCopy droppedReason];
      if (droppedReason3 > 3)
      {
        v47 = @"Undefined";
      }

      else
      {
        v47 = *(&off_1E817BD50 + droppedReason3);
      }

      v86 = 138544130;
      v87 = v43;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType2;
      v92 = 2112;
      v93 = v47;
      v51 = "%{public}@ <%p>: %@: Video frame received without vision data. Reason: %@";
      v52 = v41;
      v53 = OS_LOG_TYPE_ERROR;
LABEL_61:
      v58 = 42;
      goto LABEL_62;
    }
  }

  else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v54 = objc_opt_class();
    v43 = NSStringFromClass(v54);
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    deviceType2 = [captureDevice2 deviceType];
    droppedReason4 = [visionDataCopy droppedReason];
    if (droppedReason4 > 3)
    {
      v56 = @"Undefined";
    }

    else
    {
      v56 = *(&off_1E817BD50 + droppedReason4);
    }

    v86 = 138544130;
    v87 = v43;
    v88 = 2048;
    selfCopy16 = self;
    v90 = 2112;
    v91 = deviceType2;
    v92 = 2112;
    v93 = v56;
    v51 = "Error: %{public}@ <%p>: %@: Video frame received without vision data. Reason: %@";
    v52 = v41;
    v53 = OS_LOG_TYPE_INFO;
    goto LABEL_61;
  }

LABEL_63:

LABEL_64:
  if (!v11)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v69 = _MergedGlobals;
    v70 = _ARLogSensor_1(sampleBuffer);
    v62 = v70;
    if (v69 == 1)
    {
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v71 = objc_opt_class();
      v64 = NSStringFromClass(v71);
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType3 = [captureDevice3 deviceType];
      v86 = 138543874;
      v87 = v64;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType3;
      v72 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame!";
      goto LABEL_83;
    }

    if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      goto LABEL_99;
    }

    v80 = objc_opt_class();
    v64 = NSStringFromClass(v80);
    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType3 = [captureDevice3 deviceType];
    v86 = 138543874;
    v87 = v64;
    v88 = 2048;
    selfCopy16 = self;
    v90 = 2112;
    v91 = deviceType3;
    v72 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame!";
LABEL_91:
    v78 = v62;
    v79 = OS_LOG_TYPE_INFO;
    goto LABEL_92;
  }

  cameraCalibrationDataWasDropped = [v11 cameraCalibrationDataWasDropped];
  if (cameraCalibrationDataWasDropped)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v60 = _MergedGlobals;
    v61 = _ARLogSensor_1(cameraCalibrationDataWasDropped);
    v62 = v61;
    if (v60 == 1)
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        captureDevice3 = [(ARImageSensor *)self captureDevice];
        deviceType3 = [captureDevice3 deviceType];
        droppedReason5 = [v11 droppedReason];
        if (droppedReason5 > 3)
        {
          v68 = @"Undefined";
        }

        else
        {
          v68 = *(&off_1E817BD50 + droppedReason5);
        }

        v86 = 138544130;
        v87 = v64;
        v88 = 2048;
        selfCopy16 = self;
        v90 = 2112;
        v91 = deviceType3;
        v92 = 2112;
        v93 = v68;
        v72 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! Reason: %@";
        v78 = v62;
        v79 = OS_LOG_TYPE_ERROR;
LABEL_97:
        v85 = 42;
        goto LABEL_98;
      }
    }

    else if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v81 = objc_opt_class();
      v64 = NSStringFromClass(v81);
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType3 = [captureDevice3 deviceType];
      droppedReason6 = [v11 droppedReason];
      if (droppedReason6 > 3)
      {
        v83 = @"Undefined";
      }

      else
      {
        v83 = *(&off_1E817BD50 + droppedReason6);
      }

      v86 = 138544130;
      v87 = v64;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType3;
      v92 = 2112;
      v93 = v83;
      v72 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! Reason: %@";
      v78 = v62;
      v79 = OS_LOG_TYPE_INFO;
      goto LABEL_97;
    }

LABEL_99:

    goto LABEL_100;
  }

  cameraCalibrationData = [v11 cameraCalibrationData];

  if (!cameraCalibrationData)
  {
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v75 = _MergedGlobals;
    v76 = _ARLogSensor_1(v74);
    v62 = v76;
    if (v75 == 1)
    {
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v77 = objc_opt_class();
      v64 = NSStringFromClass(v77);
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType3 = [captureDevice3 deviceType];
      v86 = 138543874;
      v87 = v64;
      v88 = 2048;
      selfCopy16 = self;
      v90 = 2112;
      v91 = deviceType3;
      v72 = "%{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! No reason provided";
LABEL_83:
      v78 = v62;
      v79 = OS_LOG_TYPE_ERROR;
LABEL_92:
      v85 = 32;
LABEL_98:
      _os_log_impl(&dword_1C241C000, v78, v79, v72, &v86, v85);

      goto LABEL_99;
    }

    if (!os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      goto LABEL_99;
    }

    v84 = objc_opt_class();
    v64 = NSStringFromClass(v84);
    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType3 = [captureDevice3 deviceType];
    v86 = 138543874;
    v87 = v64;
    v88 = 2048;
    selfCopy16 = self;
    v90 = 2112;
    v91 = deviceType3;
    v72 = "Error: %{public}@ <%p>: %@: Video frame received without camera calibration data. Dropping frame! No reason provided";
    goto LABEL_91;
  }

LABEL_100:
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  collectionCopy = collection;
  [collectionCopy count];
  kdebug_trace();
  v6 = [collectionCopy synchronizedDataForCaptureOutput:self->_videoOutput];
  v7 = [collectionCopy synchronizedDataForCaptureOutput:self->_visionDataOutput];
  v8 = [collectionCopy synchronizedDataForCaptureOutput:self->_calibrationOutput];

  if (!self->_calibrationOutput || (-[ARImageSensor _logIfDataIsMissingWithVideoData:visionData:calibrationData:](self, "_logIfDataIsMissingWithVideoData:visionData:calibrationData:", v6, v7, v8), v8) && ![v8 cameraCalibrationDataWasDropped] && (objc_msgSend(v8, "cameraCalibrationData"), v9 = objc_claimAutoreleasedReturnValue(), v9, v6) && v9)
  {
    cameraCalibrationData = [v8 cameraCalibrationData];
    cameraCalibrationData = self->_cameraCalibrationData;
    self->_cameraCalibrationData = cameraCalibrationData;

    v12 = [ARImageData alloc];
    sampleBuffer = [v6 sampleBuffer];
    captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
    captureDevice = [(ARImageSensor *)self captureDevice];
    captureSession = [(ARImageSensor *)self captureSession];
    v17 = [(ARImageData *)v12 initWithSampleBuffer:sampleBuffer captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

    [(ARImageData *)v17 cameraIntrinsics];
    *&self->_anon_20[8] = v18;
    *&self->_anon_20[24] = v19;
    *self->_anon_20 = v20;
    *&self->_anon_20[16] = v21;
    *&self->_anon_20[40] = v22;
    *&self->_anon_20[32] = v23;
    [(ARImageData *)v17 imageResolution];
    self->_lastIntrinsicsImageResolution.width = v24;
    self->_lastIntrinsicsImageResolution.height = v25;
    -[ARImageData setVisionData:](v17, "setVisionData:", [v7 visionDataPixelBuffer]);
    [(ARImageData *)v17 setCalibrationData:self->_cameraCalibrationData];
    [ARImageSensor registerSignPostForImageData:v17];
    [(ARImageSensor *)self _dispatchImageData:v17];
    objc_msgSend_timestamp(v17);
    if (v7)
    {
      objc_msgSend_timestamp(v7);
      CMTimeGetSeconds(&time);
    }

    kdebug_trace();
  }

  else
  {
    kdebug_trace();
  }
}

- (void)cameraCalibrationDataOutput:(id)output didOutputCameraCalibrationData:(id)data timestamp:(id *)timestamp connection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  dataCopy = data;
  connectionCopy = connection;
  v12 = connectionCopy;
  if (qword_1EBF41CA8 != -1)
  {
    [ARImageSensor start];
  }

  v13 = _MergedGlobals;
  v14 = _ARLogSensor_1(connectionCopy);
  v15 = v14;
  if (v13 == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v23 = 138543874;
      v24 = v17;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2112;
      v28 = logPrefix;
      v19 = "%{public}@ <%p>: %@ cameraCalibrationDataOutput:didOutputCameraCalibrationData called without an AVCaptureDataOutputSynchronizer, not supported.";
      v20 = v15;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v20, v21, v19, &v23, 0x20u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v17 = NSStringFromClass(v22);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v23 = 138543874;
    v24 = v17;
    v25 = 2048;
    selfCopy2 = self;
    v27 = 2112;
    v28 = logPrefix;
    v19 = "Error: %{public}@ <%p>: %@ cameraCalibrationDataOutput:didOutputCameraCalibrationData called without an AVCaptureDataOutputSynchronizer, not supported.";
    v20 = v15;
    v21 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)cameraCalibrationDataOutput:(id)output didDropCameraCalibrationDataAtTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = _ARLogSensor_1(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v15 = *timestamp;
    Seconds = CMTimeGetSeconds(&v15);
    if (reason > 3)
    {
      v14 = @"Undefined";
    }

    else
    {
      v14 = *(&off_1E817BD50 + reason);
    }

    LODWORD(v15.var0) = 138544386;
    *(&v15.var0 + 4) = v11;
    LOWORD(v15.var2) = 2048;
    *(&v15.var2 + 2) = self;
    HIWORD(v15.var3) = 2112;
    v16 = logPrefix;
    v17 = 2048;
    v18 = Seconds;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ capture session dropped calibration data: %lf, %@", &v15, 0x34u);
  }
}

- (void)_dispatchImageData:(id)data
{
  v68 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
LABEL_22:
    kdebug_trace();
    goto LABEL_23;
  }

  if ([dataCopy isHighResolution])
  {
    goto LABEL_8;
  }

  enableContinuousAutoFocusIfPossible = [(ARImageSensor *)self enableContinuousAutoFocusIfPossible];
  if (!self->_sensorHasReceivedImageData)
  {
    self->_sensorHasReceivedImageData = 1;
    v7 = _ARLogSensor_1(enableContinuousAutoFocusIfPossible);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      logPrefix = [(ARImageSensor *)self logPrefix];
      objc_msgSend_timestamp(v5);
      *buf = 138544386;
      v59 = v9;
      v60 = 2048;
      selfCopy = self;
      v62 = 2112;
      v63 = logPrefix;
      v64 = 2048;
      v65 = v11;
      v66 = 1024;
      v67 = [v5 visionData] != 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ received first image data with timestamp: %f, has vision data: %d", buf, 0x30u);
    }
  }

  buf[0] = 0;
  [(ARImageSensor *)self trackExposureTargetOffsetIfNeededForImageData:v5 shouldDrop:buf];
  if ((buf[0] & 1) == 0)
  {
LABEL_8:
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      extrinsicsMap = self->_extrinsicsMap;
      if (!extrinsicsMap)
      {
        v15 = objc_loadWeakRetained(&self->_dataSource);
        v16 = [v15 captureDeviceTypeToExtrinsicsMapForImageSensor:self];
        v17 = self->_extrinsicsMap;
        self->_extrinsicsMap = v16;

        extrinsicsMap = self->_extrinsicsMap;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      allKeys = [(NSMutableDictionary *)extrinsicsMap allKeys];
      v19 = [allKeys countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v54;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v54 != v21)
            {
              objc_enumerationMutation(allKeys);
            }

            v23 = *(*(&v53 + 1) + 8 * i);
            v24 = [(NSMutableDictionary *)self->_extrinsicsMap objectForKeyedSubscript:v23];
            *v25.i64 = ARMatrix4x3FromNSData(v24);
            v25.i32[3] = 0;
            v26.i32[3] = 0;
            v51 = v26;
            v52 = v25;
            v27.i32[3] = 0;
            v28.i32[3] = 0;
            v49 = v28;
            v50 = v27;

            v69.columns[1] = v51;
            v69.columns[0] = v52;
            v69.columns[3] = v49;
            v69.columns[2] = v50;
            v29 = ARMatrix4x3Inverse(v69);
            [v5 addExtrinsicMatrix:v23 toDeviceType:{v29, v30, v31, v32}];
          }

          v20 = [allKeys countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v20);
      }
    }

    bufferPopulationMonitor = [(ARImageSensor *)self bufferPopulationMonitor];
    pixelBuffer = [v5 pixelBuffer];
    captureDevice = [(ARImageSensor *)self captureDevice];
    localizedName = [captureDevice localizedName];
    objc_msgSend_timestamp(v5);
    v38 = v37;
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice2 deviceType];
    [bufferPopulationMonitor trackPixelBuffer:pixelBuffer withLabel:localizedName timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(deviceType) signpostType:v38];

    if ([v5 visionData])
    {
      bufferPopulationMonitor2 = [(ARImageSensor *)self bufferPopulationMonitor];
      visionData = [v5 visionData];
      v43 = MEMORY[0x1E696AEC0];
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      localizedName2 = [captureDevice3 localizedName];
      v46 = [v43 stringWithFormat:@"%@ Vision Data", localizedName2];
      objc_msgSend_timestamp(v5);
      [bufferPopulationMonitor2 trackPixelBuffer:visionData withLabel:v46 timestamp:3 signpostType:?];
    }

    objc_msgSend_timestamp(v5);
    captureDate = [v5 captureDate];
    [captureDate timeIntervalSinceNow];
    kdebug_trace();

    objc_msgSend_timestamp(v5);
    kdebug_trace();
    delegate = [(ARImageSensor *)self delegate];
    [delegate sensor:self didOutputSensorData:v5];

    objc_msgSend_timestamp(v5);
    kdebug_trace();
    objc_msgSend_timestamp(v5);
    goto LABEL_22;
  }

LABEL_23:
}

+ (void)registerSignPostForImageData:(id)data
{
  dataCopy = data;
  [dataCopy isHighResolution];
  cameraType = [dataCopy cameraType];
  v4 = [cameraType isEqualToString:*MEMORY[0x1E6986950]];

  if (v4)
  {
    cameraPosition = [dataCopy cameraPosition];
    if (cameraPosition != 2)
    {
      if (cameraPosition != 1)
      {
        v6 = dataCopy;
        if (cameraPosition)
        {
          goto LABEL_28;
        }

        objc_msgSend_timestamp(dataCopy, dataCopy);
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    objc_msgSend_timestamp(dataCopy);
  }

  else
  {
    cameraType2 = [dataCopy cameraType];
    if ([cameraType2 isEqualToString:*MEMORY[0x1E6986908]])
    {
    }

    else
    {
      cameraType3 = [dataCopy cameraType];
      v9 = [cameraType3 isEqualToString:*MEMORY[0x1E6986938]];

      if (!v9)
      {
        cameraType4 = [dataCopy cameraType];
        v13 = [cameraType4 isEqualToString:*MEMORY[0x1E6986940]];

        if (v13)
        {
          [dataCopy cameraPosition];
          objc_msgSend_timestamp(dataCopy);
        }

        else
        {
          cameraType5 = [dataCopy cameraType];
          v15 = [cameraType5 isEqualToString:*MEMORY[0x1E6986948]];

          v6 = dataCopy;
          if (!v15)
          {
            goto LABEL_28;
          }

          cameraPosition2 = [dataCopy cameraPosition];
          objc_msgSend_timestamp(dataCopy);
          if (cameraPosition2 == 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_27;
      }
    }

    if ([dataCopy cameraPosition] == 1)
    {
      captureLens = [dataCopy captureLens];
      if (captureLens > 1)
      {
        if (captureLens != 2)
        {
          v6 = dataCopy;
          if (captureLens != 3)
          {
            goto LABEL_28;
          }

          objc_msgSend_timestamp(dataCopy);
          [dataCopy imageResolution];
          [dataCopy imageResolution];
          goto LABEL_27;
        }

        objc_msgSend_timestamp(dataCopy);
        goto LABEL_26;
      }

      if (captureLens)
      {
        v6 = dataCopy;
        if (captureLens != 1)
        {
          goto LABEL_28;
        }

LABEL_15:
        objc_msgSend_timestamp(dataCopy, v6);
LABEL_26:
        [dataCopy imageResolution];
        [dataCopy imageResolution];
        goto LABEL_27;
      }
    }

    objc_msgSend_timestamp(dataCopy, v10);
  }

LABEL_27:
  kdebug_trace();
  v6 = dataCopy;
LABEL_28:
  if ([v6 visionData])
  {
    objc_msgSend_timestamp(dataCopy);
    kdebug_trace();
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ARImageSensorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (uint64_t)captureHighResolutionFrameWithPhotoSettings:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3, NSObject **a4)
{
  v6 = objc_begin_catch(a1);
  *a3 = v6;
  v7 = v6;
  if (qword_1EBF41CA8 != -1)
  {
    dispatch_once(&qword_1EBF41CA8, &__block_literal_global_521);
  }

  v8 = _MergedGlobals;
  v9 = _ARLogSensor_1(v7);
  *a4 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    return 2;
  }

  return 1;
}

@end