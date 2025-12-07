@interface ARFaceTrackingImageSensor
- (ARFaceTrackingImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue;
- (id)_configureMetaDataOutput;
- (id)configureCaptureSession;
- (id)configureCaptureSessionCalibration;
- (id)outputsForSynchronizer;
- (id)prepareToStart;
- (int64_t)_videoOrientation;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)capturedSynchedOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromVideoConnection:(id)connection metaDataOutput:(id)dataOutput didOutputMetadataObjects:(id)objects didOutputDepthData:(id)data atTime:(id *)time;
- (void)configureCaptureDevice;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
- (void)dealloc;
- (void)reconfigure:(id)reconfigure;
- (void)stop;
@end

@implementation ARFaceTrackingImageSensor

- (ARFaceTrackingImageSensor)initWithSettings:(id)settings captureSession:(id)session captureQueue:(id)queue
{
  settingsCopy = settings;
  sessionCopy = session;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  v11 = [(ARImageSensor *)&v15 initWithSettings:settingsCopy captureSession:sessionCopy captureQueue:queueCopy];
  if (v11)
  {
    v12 = dispatch_semaphore_create(1);
    faceDataSemaphore = v11->_faceDataSemaphore;
    v11->_faceDataSemaphore = v12;

    v11->_usePreviousImageDataUponDataDrop = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.face.previousImageDataOnDrop"];
  }

  return v11;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor(self);
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

  [(ARFaceTrackingImageSensor *)self stop];
  v7.receiver = self;
  v7.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v7 dealloc];
}

- (id)outputsForSynchronizer
{
  v3 = objc_opt_new();
  videoOutput = [(ARImageSensor *)self videoOutput];

  if (videoOutput)
  {
    videoOutput2 = [(ARImageSensor *)self videoOutput];
    [v3 addObject:videoOutput2];
  }

  if (self->_depthDataOutput)
  {
    [v3 addObject:?];
  }

  if (self->_metaDataOutput)
  {
    internalSettings = [(ARImageSensor *)self internalSettings];
    metaData = [internalSettings metaData];
    v8 = [metaData isEqualToString:*MEMORY[0x1E6987018]];

    if (v8)
    {
      [v3 addObject:self->_metaDataOutput];
    }
  }

  return v3;
}

- (void)reconfigure:(id)reconfigure
{
  v24 = *MEMORY[0x1E69E9840];
  reconfigureCopy = reconfigure;
  v15.receiver = self;
  v15.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v15 reconfigure:reconfigureCopy];
  if ([(ARImageSensor *)self canReconfigure:reconfigureCopy])
  {
    maximumNumberOfTrackedFaces = [reconfigureCopy maximumNumberOfTrackedFaces];
    internalSettings = [(ARImageSensor *)self internalSettings];
    LOBYTE(maximumNumberOfTrackedFaces) = maximumNumberOfTrackedFaces == [internalSettings maximumNumberOfTrackedFaces];

    if ((maximumNumberOfTrackedFaces & 1) == 0)
    {
      if ([(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingSupported]&& [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingMetadataObjectTypesAvailable])
      {
        v7 = _ARLogSensor(-[AVCaptureMetadataOutput setFaceTrackingMaxFaces:](self->_metaDataOutput, "setFaceTrackingMaxFaces:", [reconfigureCopy maximumNumberOfTrackedFaces]));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          faceTrackingMaxFaces = [(AVCaptureMetadataOutput *)self->_metaDataOutput faceTrackingMaxFaces];
          isFaceTrackingUsingFaceRecognition = [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingUsingFaceRecognition];
          v12 = @"NO";
          *buf = 138544130;
          v17 = v9;
          v18 = 2048;
          if (isFaceTrackingUsingFaceRecognition)
          {
            v12 = @"YES";
          }

          selfCopy = self;
          v20 = 2048;
          v21 = faceTrackingMaxFaces;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Reconfigured to maxFaces: %li, faceRecognition enabled: %@", buf, 0x2Au);
        }
      }

      maximumNumberOfTrackedFaces2 = [reconfigureCopy maximumNumberOfTrackedFaces];
      internalSettings2 = [(ARImageSensor *)self internalSettings];
      [internalSettings2 setMaximumNumberOfTrackedFaces:maximumNumberOfTrackedFaces2];
    }
  }
}

- (int64_t)_videoOrientation
{
  internalSettings = [(ARImageSensor *)self internalSettings];
  videoFormat = [internalSettings videoFormat];
  captureDevicePosition = [videoFormat captureDevicePosition];

  internalSettings2 = [(ARImageSensor *)self internalSettings];
  v7 = internalSettings2;
  if (captureDevicePosition == 2)
  {
    if ([internalSettings2 mirrorVideoOutput])
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  else if ([internalSettings2 mirrorVideoOutput])
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (id)configureCaptureSession
{
  v87[1] = *MEMORY[0x1E69E9840];
  v78.receiver = self;
  v78.super_class = ARFaceTrackingImageSensor;
  configureCaptureSession = [(ARImageSensor *)&v78 configureCaptureSession];
  if (!configureCaptureSession)
  {
    if (!ARHasH10())
    {
      videoOutput = [(ARImageSensor *)self videoOutput];
      [videoOutput setAlwaysDiscardsLateVideoFrames:0];
    }

    videoOutput2 = [(ARImageSensor *)self videoOutput];
    v6 = [videoOutput2 connectionWithMediaType:*MEMORY[0x1E6987608]];

    internalSettings = [(ARImageSensor *)self internalSettings];
    [v6 setVideoMirrored:{objc_msgSend(internalSettings, "mirrorVideoOutput")}];

    [v6 setVideoOrientation:{-[ARFaceTrackingImageSensor _videoOrientation](self, "_videoOrientation")}];
    if (!self->_depthDataOutput)
    {
      captureDevice = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice deviceType];
      v10 = deviceType == *MEMORY[0x1E6986940];

      if (v10)
      {
        v13 = objc_opt_new();
        depthDataOutput = self->_depthDataOutput;
        self->_depthDataOutput = v13;

        captureSession = [(ARImageSensor *)self captureSession];
        v16 = [captureSession canAddOutput:self->_depthDataOutput];

        if (!v16)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            [ARFaceTrackingImageSensor configureCaptureSession];
          }

          v51 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v52 = _ARLogSensor(v17);
          v53 = v52;
          if (v51 == 1)
          {
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v54 = objc_opt_class();
              v55 = NSStringFromClass(v54);
              logPrefix = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v80 = v55;
              v81 = 2048;
              selfCopy9 = self;
              v83 = 2112;
              v84 = logPrefix;
              _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add depth data output to the capture session.", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            logPrefix2 = [(ARImageSensor *)self logPrefix];
            *buf = 138543874;
            v80 = v58;
            v81 = 2048;
            selfCopy9 = self;
            v83 = 2112;
            v84 = logPrefix2;
            _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add depth data output to the capture session.", buf, 0x20u);
          }

          _configureMetaDataOutput = ARErrorWithCodeAndUserInfo(102, 0);
          goto LABEL_7;
        }

        captureSession2 = [(ARImageSensor *)self captureSession];
        [captureSession2 addOutputWithNoConnections:self->_depthDataOutput];

        v20 = _ARLogSensor(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          logPrefix3 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v80 = v22;
          v81 = 2048;
          selfCopy9 = self;
          v83 = 2112;
          v84 = logPrefix3;
          _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Added depth data output to the capture session", buf, 0x20u);
        }

        if (!self->_depthConnection)
        {
          videoInput = [(ARImageSensor *)self videoInput];
          videoInput2 = [(ARImageSensor *)self videoInput];
          device = [videoInput2 device];
          deviceType2 = [device deviceType];
          videoInput3 = [(ARImageSensor *)self videoInput];
          device2 = [videoInput3 device];
          v30 = [videoInput portsWithMediaType:*MEMORY[0x1E69875C0] sourceDeviceType:deviceType2 sourceDevicePosition:objc_msgSend_position(device2)];
          firstObject = [v30 firstObject];

          if (firstObject)
          {
            v32 = MEMORY[0x1E6987070];
            v87[0] = firstObject;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:1];
            v34 = [v32 connectionWithInputPorts:v33 output:self->_depthDataOutput];
            depthConnection = self->_depthConnection;
            self->_depthConnection = v34;

            captureSession3 = [(ARImageSensor *)self captureSession];
            LOBYTE(v32) = [captureSession3 canAddConnection:self->_depthConnection];

            if (v32)
            {
              connections = [(ARImageSensor *)self connections];
              [connections addObject:self->_depthConnection];

              captureSession4 = [(ARImageSensor *)self captureSession];
              [captureSession4 addConnection:self->_depthConnection];

              v41 = _ARLogSensor(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                v42 = objc_opt_class();
                v43 = NSStringFromClass(v42);
                logPrefix4 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v80 = v43;
                v81 = 2048;
                selfCopy9 = self;
                v83 = 2112;
                v84 = logPrefix4;
                _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added depth data output to the capture session", buf, 0x20u);
              }

              [(AVCaptureDepthDataOutput *)self->_depthDataOutput setAlwaysDiscardsLateDepthData:1];
              v45 = _ARLogSensor([(AVCaptureDepthDataOutput *)self->_depthDataOutput setFilteringEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imageSensor.face.depthDataFiltering"]]);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = objc_opt_class();
                v47 = NSStringFromClass(v46);
                logPrefix5 = [(ARImageSensor *)self logPrefix];
                isFilteringEnabled = [(AVCaptureDepthDataOutput *)self->_depthDataOutput isFilteringEnabled];
                v50 = @"disabled";
                *buf = 138544130;
                v80 = v47;
                v81 = 2048;
                if (isFilteringEnabled)
                {
                  v50 = @"enabled";
                }

                selfCopy9 = self;
                v83 = 2112;
                v84 = logPrefix5;
                v85 = 2112;
                v86 = v50;
                _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Depth data filtering is %@.", buf, 0x2Au);
              }

              -[AVCaptureConnection setVideoMirrored:](self->_depthConnection, "setVideoMirrored:", [v6 isVideoMirrored]);
              -[AVCaptureConnection setVideoOrientation:](self->_depthConnection, "setVideoOrientation:", [v6 videoOrientation]);

              goto LABEL_6;
            }

            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARFaceTrackingImageSensor configureCaptureSession];
            }

            v66 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v67 = _ARLogSensor(v37);
            v62 = v67;
            if (v66 == 1)
            {
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = objc_opt_class();
                v69 = NSStringFromClass(v68);
                logPrefix6 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v80 = v69;
                v81 = 2048;
                selfCopy9 = self;
                v83 = 2112;
                v84 = logPrefix6;
                _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add depth connection to the capture session.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v74 = objc_opt_class();
              v75 = NSStringFromClass(v74);
              logPrefix7 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v80 = v75;
              v81 = 2048;
              selfCopy9 = self;
              v83 = 2112;
              v84 = logPrefix7;
              _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add depth connection to the capture session.", buf, 0x20u);
            }
          }

          else
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARFaceTrackingImageSensor configureCaptureSession];
            }

            v60 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v61 = _ARLogSensor(v31);
            v62 = v61;
            if (v60 == 1)
            {
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                v63 = objc_opt_class();
                v64 = NSStringFromClass(v63);
                logPrefix8 = [(ARImageSensor *)self logPrefix];
                *buf = 138543874;
                v80 = v64;
                v81 = 2048;
                selfCopy9 = self;
                v83 = 2112;
                v84 = logPrefix8;
                _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find depth data input port on the video input.", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v71 = objc_opt_class();
              v72 = NSStringFromClass(v71);
              logPrefix9 = [(ARImageSensor *)self logPrefix];
              *buf = 138543874;
              v80 = v72;
              v81 = 2048;
              selfCopy9 = self;
              v83 = 2112;
              v84 = logPrefix9;
              _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find depth data input port on the video input.", buf, 0x20u);
            }
          }

          configureCaptureSession = ARErrorWithCodeAndUserInfo(102, 0);

          goto LABEL_8;
        }
      }
    }

LABEL_6:
    _configureMetaDataOutput = [(ARFaceTrackingImageSensor *)self _configureMetaDataOutput];
LABEL_7:
    configureCaptureSession = _configureMetaDataOutput;
LABEL_8:
  }

  return configureCaptureSession;
}

- (void)configureCaptureDevice
{
  v4.receiver = self;
  v4.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v4 configureCaptureDevice];
  captureDevice = [(ARImageSensor *)self captureDevice];
  [captureDevice setFaceDetectionDrivenImageProcessingEnabled:1];
}

- (id)configureCaptureSessionCalibration
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ skipping configuration for camera calibration output", &v8, 0x20u);
  }

  return 0;
}

- (id)prepareToStart
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v18 = v5;
    v19 = 2048;
    selfCopy2 = self;
    v21 = 2112;
    v22 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", buf, 0x20u);
  }

  self->_signpostFirstFrameDone = 0;
  self->_signpostFirstFaceDone = 0;
  kdebug_trace();
  kdebug_trace();
  v16.receiver = self;
  v16.super_class = ARFaceTrackingImageSensor;
  prepareToStart = [(ARImageSensor *)&v16 prepareToStart];
  if (!prepareToStart)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    self->_startTime = v9;

    self->_droppedFramesPerSec = 0;
    v11 = _ARLogSensor(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v18 = v13;
      v19 = 2048;
      selfCopy2 = self;
      v21 = 2112;
      v22 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ prepare to start complete", buf, 0x20u);
    }
  }

  return prepareToStart;
}

- (void)stop
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v16 = v5;
    v17 = 2048;
    selfCopy2 = self;
    v19 = 2112;
    v20 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ stopping", buf, 0x20u);
  }

  v14.receiver = self;
  v14.super_class = ARFaceTrackingImageSensor;
  [(ARImageSensor *)&v14 stop];
  [(AVCaptureMetadataOutput *)self->_metaDataOutput setMetadataObjectsDelegate:0 queue:0];
  availableMetadataObjectTypes = self->_availableMetadataObjectTypes;
  self->_availableMetadataObjectTypes = 0;

  latestFaceData = self->_latestFaceData;
  self->_latestFaceData = 0;

  self->_droppedFramesPerSec = 0;
  self->_startTime = 0.0;
  v10 = _ARLogSensor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    logPrefix2 = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v16 = v12;
    v17 = 2048;
    selfCopy2 = self;
    v19 = 2112;
    v20 = logPrefix2;
    _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ stop complete", buf, 0x20u);
  }
}

- (id)_configureMetaDataOutput
{
  v128[1] = *MEMORY[0x1E69E9840];
  internalSettings = [(ARImageSensor *)self internalSettings];
  metaData = [internalSettings metaData];

  if (!metaData)
  {
    captureSession = [(ARImageSensor *)self captureSession];
    [captureSession removeOutput:self->_metaDataOutput];

    metaDataOutput = self->_metaDataOutput;
    self->_metaDataOutput = 0;

    availableMetadataObjectTypes = _ARLogSensor(v28);
    if (os_log_type_enabled(availableMetadataObjectTypes, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      logPrefix = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v121 = v30;
      v122 = 2048;
      selfCopy12 = self;
      v124 = 2112;
      v125 = logPrefix;
      _os_log_impl(&dword_1C241C000, availableMetadataObjectTypes, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Removed metadata output from the capture session", buf, 0x20u);
    }

    goto LABEL_39;
  }

  if (self->_metaDataOutput)
  {
LABEL_3:
    v5 = self->_metaDataOutput;
    captureQueue = [(ARImageSensor *)self captureQueue];
    [(AVCaptureMetadataOutput *)v5 setMetadataObjectsDelegate:self queue:captureQueue];

    captureSession2 = [(ARImageSensor *)self captureSession];
    outputs = [captureSession2 outputs];
    v9 = [outputs containsObject:self->_metaDataOutput];

    if (!v9)
    {
      delegate = [(ARImageSensor *)self delegate];
      v33 = objc_opt_respondsToSelector();

      if (v33)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v35 = ARKitCoreBundle(dictionary);
        v36 = [v35 localizedStringForKey:@"Could not add metadata output to capture session" value:&stru_1F4208A80 table:@"Localizable"];
        [dictionary setObject:v36 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v37 = ARErrorWithCodeAndUserInfo(102, dictionary);

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if ([(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingSupported])
    {
      [(AVCaptureMetadataOutput *)self->_metaDataOutput setFaceTrackingMetadataObjectTypesAvailable:1];
      internalSettings2 = [(ARImageSensor *)self internalSettings];
      -[AVCaptureMetadataOutput setFaceTrackingMaxFaces:](self->_metaDataOutput, "setFaceTrackingMaxFaces:", [internalSettings2 maximumNumberOfTrackedFaces]);

      v12 = _ARLogSensor(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        faceTrackingMaxFaces = [(AVCaptureMetadataOutput *)self->_metaDataOutput faceTrackingMaxFaces];
        isFaceTrackingUsingFaceRecognition = [(AVCaptureMetadataOutput *)self->_metaDataOutput isFaceTrackingUsingFaceRecognition];
        v17 = @"NO";
        *buf = 138544130;
        v121 = v14;
        v122 = 2048;
        if (isFaceTrackingUsingFaceRecognition)
        {
          v17 = @"YES";
        }

        selfCopy12 = self;
        v124 = 2048;
        v125 = faceTrackingMaxFaces;
        v126 = 2112;
        v127 = v17;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: maxFaces: %li, faceRecognition enabled: %@", buf, 0x2Au);
      }
    }

    availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metaDataOutput availableMetadataObjectTypes];
    internalSettings3 = [(ARImageSensor *)self internalSettings];
    metaData2 = [internalSettings3 metaData];
    v21 = [availableMetadataObjectTypes containsObject:metaData2];

    if (v21)
    {
      v22 = self->_metaDataOutput;
      internalSettings4 = [(ARImageSensor *)self internalSettings];
      metaData3 = [internalSettings4 metaData];
      v119 = metaData3;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
      [(AVCaptureMetadataOutput *)v22 setMetadataObjectTypes:v25];
    }

    else
    {
      captureSession3 = [(ARImageSensor *)self captureSession];
      [captureSession3 removeOutput:self->_metaDataOutput];

      v71 = self->_metaDataOutput;
      self->_metaDataOutput = 0;

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingImageSensor configureCaptureSession];
      }

      v73 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v74 = _ARLogSensor(v72);
      v75 = v74;
      if (v73 == 1)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          internalSettings5 = [(ARImageSensor *)self internalSettings];
          metaData4 = [internalSettings5 metaData];
          *buf = 138544130;
          v121 = v77;
          v122 = 2048;
          selfCopy12 = self;
          v124 = 2112;
          v125 = metaData4;
          v126 = 2112;
          v127 = availableMetadataObjectTypes;
          _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Metadata %@ is not supported. Available metadata types are %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v86 = objc_opt_class();
        v87 = NSStringFromClass(v86);
        internalSettings6 = [(ARImageSensor *)self internalSettings];
        metaData5 = [internalSettings6 metaData];
        *buf = 138544130;
        v121 = v87;
        v122 = 2048;
        selfCopy12 = self;
        v124 = 2112;
        v125 = metaData5;
        v126 = 2112;
        v127 = availableMetadataObjectTypes;
        _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Metadata %@ is not supported. Available metadata types are %@", buf, 0x2Au);
      }

      delegate2 = [(ARImageSensor *)self delegate];
      v91 = objc_opt_respondsToSelector();

      if (v91)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v93 = ARKitCoreBundle(dictionary2);
        v94 = [v93 localizedStringForKey:@"AVFoundation failed to deliver the requested metadata object types." value:&stru_1F4208A80 table:@"Localizable"];
        [dictionary2 setObject:v94 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v37 = ARErrorWithCodeAndUserInfo(102, dictionary2);

        goto LABEL_41;
      }
    }

LABEL_39:

LABEL_40:
    availableMetadataObjectTypes2 = [(AVCaptureMetadataOutput *)self->_metaDataOutput availableMetadataObjectTypes];
    availableMetadataObjectTypes = self->_availableMetadataObjectTypes;
    self->_availableMetadataObjectTypes = availableMetadataObjectTypes2;

    v37 = 0;
    goto LABEL_41;
  }

  v38 = objc_opt_new();
  v39 = self->_metaDataOutput;
  self->_metaDataOutput = v38;

  captureSession4 = [(ARImageSensor *)self captureSession];
  v41 = [captureSession4 canAddOutput:self->_metaDataOutput];

  if (v41)
  {
    captureSession5 = [(ARImageSensor *)self captureSession];
    [captureSession5 addOutputWithNoConnections:self->_metaDataOutput];

    v45 = _ARLogSensor(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v121 = v47;
      v122 = 2048;
      selfCopy12 = self;
      v124 = 2112;
      v125 = logPrefix2;
      _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added metadata output to the capture session", buf, 0x20u);
    }

    if (self->_metadataConnection)
    {
      goto LABEL_3;
    }

    videoInput = [(ARImageSensor *)self videoInput];
    videoInput2 = [(ARImageSensor *)self videoInput];
    device = [videoInput2 device];
    deviceType = [device deviceType];
    videoInput3 = [(ARImageSensor *)self videoInput];
    device2 = [videoInput3 device];
    v55 = [videoInput portsWithMediaType:*MEMORY[0x1E69875D8] sourceDeviceType:deviceType sourceDevicePosition:objc_msgSend_position(device2)];
    firstObject = [v55 firstObject];

    if (firstObject)
    {
      v57 = MEMORY[0x1E6987070];
      v128[0] = firstObject;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:1];
      v59 = [v57 connectionWithInputPorts:v58 output:self->_metaDataOutput];
      metadataConnection = self->_metadataConnection;
      self->_metadataConnection = v59;

      captureSession6 = [(ARImageSensor *)self captureSession];
      LOBYTE(v57) = [captureSession6 canAddConnection:self->_metadataConnection];

      if (v57)
      {
        connections = [(ARImageSensor *)self connections];
        [connections addObject:self->_metadataConnection];

        captureSession7 = [(ARImageSensor *)self captureSession];
        [captureSession7 addConnection:self->_metadataConnection];

        v66 = _ARLogSensor(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          logPrefix3 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v121 = v68;
          v122 = 2048;
          selfCopy12 = self;
          v124 = 2112;
          v125 = logPrefix3;
          _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added metadata connection to the capture session", buf, 0x20u);
        }

        goto LABEL_3;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingImageSensor configureCaptureSession];
      }

      v107 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v108 = _ARLogSensor(v62);
      v103 = v108;
      if (v107 == 1)
      {
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v109 = objc_opt_class();
          v110 = NSStringFromClass(v109);
          logPrefix4 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v121 = v110;
          v122 = 2048;
          selfCopy12 = self;
          v124 = 2112;
          v125 = logPrefix4;
          _os_log_impl(&dword_1C241C000, v103, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add meta data connection to capture session.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        v115 = objc_opt_class();
        v116 = NSStringFromClass(v115);
        logPrefix5 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v121 = v116;
        v122 = 2048;
        selfCopy12 = self;
        v124 = 2112;
        v125 = logPrefix5;
        _os_log_impl(&dword_1C241C000, v103, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add meta data connection to capture session.", buf, 0x20u);
      }
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingImageSensor configureCaptureSession];
      }

      v101 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v102 = _ARLogSensor(v56);
      v103 = v102;
      if (v101 == 1)
      {
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          v104 = objc_opt_class();
          v105 = NSStringFromClass(v104);
          logPrefix6 = [(ARImageSensor *)self logPrefix];
          *buf = 138543874;
          v121 = v105;
          v122 = 2048;
          selfCopy12 = self;
          v124 = 2112;
          v125 = logPrefix6;
          _os_log_impl(&dword_1C241C000, v103, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot find meta data input port on the video input.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
      {
        v112 = objc_opt_class();
        v113 = NSStringFromClass(v112);
        logPrefix7 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v121 = v113;
        v122 = 2048;
        selfCopy12 = self;
        v124 = 2112;
        v125 = logPrefix7;
        _os_log_impl(&dword_1C241C000, v103, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot find meta data input port on the video input.", buf, 0x20u);
      }
    }

    v37 = ARErrorWithCodeAndUserInfo(102, 0);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARFaceTrackingImageSensor _configureMetaDataOutput];
    }

    v80 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v81 = _ARLogSensor(v42);
    v82 = v81;
    if (v80 == 1)
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        logPrefix8 = [(ARImageSensor *)self logPrefix];
        *buf = 138543874;
        v121 = v84;
        v122 = 2048;
        selfCopy12 = self;
        v124 = 2112;
        v125 = logPrefix8;
        _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Cannot add mete data output to the capture session.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      logPrefix9 = [(ARImageSensor *)self logPrefix];
      *buf = 138543874;
      v121 = v99;
      v122 = 2048;
      selfCopy12 = self;
      v124 = 2112;
      v125 = logPrefix9;
      _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Cannot add mete data output to the capture session.", buf, 0x20u);
    }

    v37 = ARErrorWithCodeAndUserInfo(102, 0);
  }

LABEL_41:

  return v37;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  connectionCopy = connection;
  output = [connectionCopy output];
  videoOutput = [(ARImageSensor *)self videoOutput];

  if (output == videoOutput)
  {
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [(ARFaceTrackingImageSensor *)self capturedSynchedOutput:outputCopy didOutputSampleBuffer:buffer fromVideoConnection:connectionCopy metaDataOutput:0 didOutputMetadataObjects:0 didOutputDepthData:0 atTime:&v12];
  }
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  v53 = *MEMORY[0x1E69E9840];
  synchronizerCopy = synchronizer;
  collectionCopy = collection;
  videoOutput = [(ARImageSensor *)self videoOutput];
  v8 = [collectionCopy objectForKeyedSubscript:videoOutput];

  v45 = [collectionCopy objectForKeyedSubscript:self->_metaDataOutput];
  if (self->_depthDataOutput)
  {
    v44 = [collectionCopy objectForKeyedSubscript:?];
  }

  else
  {
    v44 = 0;
  }

  dataOutputs = [synchronizerCopy dataOutputs];
  if ([dataOutputs containsObject:self->_metaDataOutput])
  {
    metadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metaDataOutput metadataObjectTypes];
    v11 = *MEMORY[0x1E6987018];
    if ([metadataObjectTypes containsObject:*MEMORY[0x1E6987018]])
    {
      v12 = [(NSArray *)self->_availableMetadataObjectTypes containsObject:v11];
      if (v45)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v8;
      videoOutput2 = [(ARImageSensor *)self videoOutput];
      sbuf = [v41 sampleBuffer];
      videoOutput3 = [(ARImageSensor *)self videoOutput];
      v39 = *MEMORY[0x1E6987608];
      v43 = [videoOutput3 connectionWithMediaType:?];

      if (!self->_signpostFirstFrameDone)
      {
        self->_signpostFirstFrameDone = 1;
        kdebug_trace();
        memset(&v48, 0, sizeof(v48));
        PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v48, sbuf);
        v16 = _ARLogSensor(PresentationTimeStamp);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          logPrefix = [(ARImageSensor *)self logPrefix];
          time = v48;
          Seconds = CMTimeGetSeconds(&time);
          *buf = 138544130;
          *&buf[4] = v18;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          v50 = logPrefix;
          v51 = 2048;
          v52 = Seconds;
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ received first image data with timestamp: %f", buf, 0x2Au);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v45;
        v22 = self->_metaDataOutput;
        metadataObjects = [v21 metadataObjects];
        if ([(NSArray *)self->_availableMetadataObjectTypes containsObject:*MEMORY[0x1E6987018]])
        {
          v24 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_1];
          v25 = [metadataObjects filteredArrayUsingPredicate:v24];

          v26 = [v25 count] == 0;
          v13 |= v26;
        }

        if (!v43)
        {
          videoOutput4 = [(ARImageSensor *)self videoOutput];
          v28 = [videoOutput4 connectionWithMediaType:v39];

          v43 = v28;
        }
      }

      else
      {
        metadataObjects = 0;
        v22 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        depthData = [v44 depthData];
      }

      else
      {
        depthData = 0;
      }

      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v32 = v31;

      if (v32 - self->_startTime > 1.0)
      {
        self->_startTime = v32;
        self->_droppedFramesPerSec = 0;
      }

      if (v13)
      {
        if (self->_previousImageDataValid && self->_usePreviousImageDataUponDataDrop)
        {
          ++self->_droppedFramesPerSec;
          self->_previousImageDataValid = 0;
          kdebug_trace();
LABEL_38:
          kdebug_trace();
LABEL_45:

          goto LABEL_46;
        }

        droppedFramesPerSec = self->_droppedFramesPerSec;
        if (droppedFramesPerSec <= 4)
        {
          self->_droppedFramesPerSec = droppedFramesPerSec + 1;
          v35 = _ARLogSensor(v33);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            logPrefix2 = [(ARImageSensor *)self logPrefix];
            *buf = 138543874;
            *&buf[4] = v37;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2112;
            v50 = logPrefix2;
            _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Image frame was dropped.", buf, 0x20u);
          }

          goto LABEL_38;
        }

        kdebug_trace();
      }

      if (sbuf)
      {
        kdebug_trace();
        if (v44)
        {
          objc_msgSend_timestamp(v44);
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        [(ARFaceTrackingImageSensor *)self capturedSynchedOutput:videoOutput2 didOutputSampleBuffer:sbuf fromVideoConnection:v43 metaDataOutput:v22 didOutputMetadataObjects:metadataObjects didOutputDepthData:depthData atTime:buf];
      }

      goto LABEL_45;
    }
  }

LABEL_46:
}

uint64_t __88__ARFaceTrackingImageSensor_dataOutputSynchronizer_didOutputSynchronizedDataCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)capturedSynchedOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromVideoConnection:(id)connection metaDataOutput:(id)dataOutput didOutputMetadataObjects:(id)objects didOutputDepthData:(id)data atTime:(id *)time
{
  connectionCopy = connection;
  objectsCopy = objects;
  dataCopy = data;
  memset(&v47, 0, sizeof(v47));
  CMSampleBufferGetPresentationTimeStamp(&v47, buffer);
  time = v47;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  v15 = [ARImageData alloc];
  captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
  captureDevice = [(ARImageSensor *)self captureDevice];
  captureSession = [(ARImageSensor *)self captureSession];
  v19 = [(ARImageData *)v15 initWithSampleBuffer:buffer captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

  -[ARImageData setMirrored:](v19, "setMirrored:", [connectionCopy isVideoMirrored]);
  if (v19)
  {
    [(ARImageSensor *)self enableContinuousAutoFocusIfPossible];
    v42 = objectsCopy;
    v45 = 0;
    [(ARImageSensor *)self trackExposureTargetOffsetIfNeededForImageData:v19 shouldDrop:&v45];
    if ((v45 & 1) == 0)
    {
      bufferPopulationMonitor = [(ARImageSensor *)self bufferPopulationMonitor];
      pixelBuffer = [(ARImageData *)v19 pixelBuffer];
      captureDevice2 = [(ARImageSensor *)self captureDevice];
      localizedName = [captureDevice2 localizedName];
      objc_msgSend_timestamp(v19);
      v25 = v24;
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      deviceType = [captureDevice3 deviceType];
      [bufferPopulationMonitor trackPixelBuffer:pixelBuffer withLabel:localizedName timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(deviceType) signpostType:v25];

      time = *time;
      time2 = **&MEMORY[0x1E6960C70];
      if (CMTimeCompare(&time, &time2))
      {
        time = *time;
        captureSession2 = [(ARImageSensor *)self captureSession];
        captureDate2 = [ARImageData captureDateFromPresentationTimestamp:&time session:captureSession2];

        objc_msgSend_timestamp(v19);
        captureDate = [(ARImageData *)v19 captureDate];
        [captureDate timeIntervalSinceNow];
        [captureDate2 timeIntervalSinceNow];
        kdebug_trace();
      }

      else
      {
        objc_msgSend_timestamp(v19);
        captureDate2 = [(ARImageData *)v19 captureDate];
        [captureDate2 timeIntervalSinceNow];
        kdebug_trace();
      }

      outputSynchronizer = [(ARImageSensor *)self outputSynchronizer];
      if (outputSynchronizer && (-[ARImageSensor outputSynchronizer](self, "outputSynchronizer"), v32 = objc_claimAutoreleasedReturnValue(), [v32 dataOutputs], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "containsObject:", self->_metaDataOutput), v33, v32, outputSynchronizer, v34))
      {
        v35 = -[ARFaceData initWithMetadataObjects:mirroredVideoInput:stripDetectionData:]([ARFaceData alloc], "initWithMetadataObjects:mirroredVideoInput:stripDetectionData:", v42, [connectionCopy isVideoMirrored], -[ARFaceTrackingImageSensor recordingMode](self, "recordingMode") ^ 1);
        [(ARImageData *)v19 setFaceData:v35];
      }

      else
      {
        dispatch_semaphore_wait(self->_faceDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        [(ARImageData *)v19 setFaceData:self->_latestFaceData];
        dispatch_semaphore_signal(self->_faceDataSemaphore);
      }

      if (self->_depthDataOutput)
      {
        [(ARImageData *)v19 setDepthData:dataCopy];
        time = *time;
        [(ARImageData *)v19 setDepthDataTimestamp:CMTimeGetSeconds(&time)];
      }

      else
      {
        [(ARImageData *)v19 setDepthData:0];
      }

      self->_previousImageDataValid = 1;
      if (!self->_signpostFirstFaceDone)
      {
        faceData = [(ARImageData *)v19 faceData];
        faceMeshPayload = [faceData faceMeshPayload];
        v38 = [faceMeshPayload objectForKeyedSubscript:*MEMORY[0x1E698C0C0]];
        v39 = [v38 count];

        if (v39)
        {
          self->_signpostFirstFaceDone = 1;
          kdebug_trace();
        }
      }

      [ARImageSensor registerSignPostForImageData:v19];
      objc_msgSend_timestamp(v19);
      kdebug_trace();
      delegate = [(ARImageSensor *)self delegate];
      [delegate sensor:self didOutputSensorData:v19];

      objc_msgSend_timestamp(v19);
      kdebug_trace();
      objc_msgSend_timestamp(v19);
      cameraType = [(ARImageData *)v19 cameraType];
      kdebug_trace();
    }

    objectsCopy = v42;
  }

  else
  {
    kdebug_trace();
  }
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  dispatch_semaphore_wait(self->_faceDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [ARFaceData alloc];
  internalSettings = [(ARImageSensor *)self internalSettings];
  v8 = -[ARFaceData initWithMetadataObjects:mirroredVideoInput:stripDetectionData:](v6, "initWithMetadataObjects:mirroredVideoInput:stripDetectionData:", objectsCopy, [internalSettings mirrorVideoOutput], -[ARFaceTrackingImageSensor recordingMode](self, "recordingMode") ^ 1);
  latestFaceData = self->_latestFaceData;
  self->_latestFaceData = v8;

  dispatch_semaphore_signal(self->_faceDataSemaphore);
}

@end