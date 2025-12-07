@interface ARDepthSensor
+ (void)registerSignPostForPointCloudData:(id)data;
- (BOOL)canReconfigure:(id)reconfigure;
- (NSString)description;
- (id)configureCaptureSession;
- (id)prepareToStart;
- (void)_configureProjectorModeForDevice:(id)device;
- (void)pointCloudDataOutput:(id)output didDropPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)pointCloudDataOutput:(id)output didOutputPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation ARDepthSensor

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor([(AVCapturePointCloudDataOutput *)self->_pointCloudOutput setDelegate:0 callbackQueue:0]);
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
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARDepthSensor stop complete", &v7, 0x20u);
  }
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensor start];
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion;
  v4 = _ARLogSensor(self);
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
      v9 = "%{public}@ <%p>: %@ start called on a child depth image sensor instead of parent image sensor";
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
    v9 = "Error: %{public}@ <%p>: %@ start called on a child depth image sensor instead of parent image sensor";
    v10 = v5;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (id)prepareToStart
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    logPrefix = [(ARImageSensor *)self logPrefix];
    *buf = 138543874;
    v31 = v5;
    v32 = 2048;
    selfCopy3 = self;
    v34 = 2112;
    v35 = logPrefix;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ preparing to start", buf, 0x20u);
  }

  setActiveFormat = [(ARImageSensor *)self setActiveFormat];
  if (setActiveFormat || ([(ARDepthSensor *)self configureCaptureSession], (setActiveFormat = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = setActiveFormat;
    goto LABEL_6;
  }

  captureDevice = [(ARImageSensor *)self captureDevice];
  v27 = 0;
  v11 = [captureDevice lockForConfiguration:&v27];
  v12 = v27;
  v8 = v12;
  if (v11)
  {
    [(ARImageSensor *)self configureFrameRateForDevice:captureDevice];
    [(ARDepthSensor *)self _configureProjectorModeForDevice:captureDevice];
    [captureDevice unlockForConfiguration];
    if (!v8)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensorSettings initWithVideoFormat:];
  }

  v13 = ARShouldUseLogTypeError_internalOSVersion;
  v14 = _ARLogSensor(v12);
  v15 = v14;
  if (v13 == 1)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    logPrefix2 = [(ARImageSensor *)self logPrefix];
    v19 = [v8 description];
    *buf = 138544130;
    v31 = v17;
    v32 = 2048;
    selfCopy3 = self;
    v34 = 2112;
    v35 = logPrefix2;
    v36 = 2112;
    v37 = v19;
    v20 = "%{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
    v21 = v15;
    v22 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v23 = objc_opt_class();
    v17 = NSStringFromClass(v23);
    logPrefix2 = [(ARImageSensor *)self logPrefix];
    v19 = [v8 description];
    *buf = 138544130;
    v31 = v17;
    v32 = 2048;
    selfCopy3 = self;
    v34 = 2112;
    v35 = logPrefix2;
    v36 = 2112;
    v37 = v19;
    v20 = "Error: %{public}@ <%p>: %@ Unable to lock capture device for configuration: %@";
    v21 = v15;
    v22 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v21, v22, v20, buf, 0x2Au);

LABEL_20:
  if (v8)
  {
    v28 = *MEMORY[0x1E696AA08];
    v29 = v8;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

  else
  {
    v24 = MEMORY[0x1E695E0F8];
  }

  v25 = ARErrorWithCodeAndUserInfo(101, v24);

  if (v8)
  {
  }

  v8 = v25;
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_26:
  v26 = v8;
LABEL_27:

LABEL_6:

  return v8;
}

- (id)configureCaptureSession
{
  v171 = *MEMORY[0x1E69E9840];
  videoInput = [(ARImageSensor *)self videoInput];

  if (videoInput)
  {
    videoInput2 = [(ARImageSensor *)self videoInput];
    device = [videoInput2 device];
    captureDevice = [(ARImageSensor *)self captureDevice];

    if (device != captureDevice)
    {
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARDepthSensor start];
      }

      v8 = ARShouldUseLogTypeError_internalOSVersion;
      v9 = _ARLogSensor(v7);
      v10 = v9;
      if (v8 == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          logPrefix = [(ARImageSensor *)self logPrefix];
          videoInput3 = [(ARImageSensor *)self videoInput];
          device2 = [videoInput3 device];
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v12;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v167 = logPrefix;
          v168 = 2112;
          *v169 = device2;
          v16 = "%{public}@ <%p>: %@ Unsupported capture device: %@";
          v17 = v10;
          v18 = OS_LOG_TYPE_ERROR;
LABEL_24:
          _os_log_impl(&dword_1C241C000, v17, v18, v16, &buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v48 = objc_opt_class();
        v12 = NSStringFromClass(v48);
        logPrefix = [(ARImageSensor *)self logPrefix];
        videoInput3 = [(ARImageSensor *)self videoInput];
        device2 = [videoInput3 device];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v12;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix;
        v168 = 2112;
        *v169 = device2;
        v16 = "Error: %{public}@ <%p>: %@ Unsupported capture device: %@";
        v17 = v10;
        v18 = OS_LOG_TYPE_INFO;
        goto LABEL_24;
      }

LABEL_55:

      v132 = 150;
      v133 = 0;
LABEL_56:
      v47 = ARErrorWithCodeAndUserInfo(v132, v133);
      goto LABEL_95;
    }

    videoInput4 = [(ARImageSensor *)self videoInput];
    device3 = [videoInput4 device];
    activeFormat = [device3 activeFormat];
    MediaSubType = CMFormatDescriptionGetMediaSubType([activeFormat formatDescription]);

    if (MediaSubType != 1785950320)
    {
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARDepthSensor start];
      }

      v79 = ARShouldUseLogTypeError_internalOSVersion;
      v80 = _ARLogSensor(v23);
      v10 = v80;
      if (v79 == 1)
      {
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v82;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix2;
        v168 = 1024;
        *v169 = MediaSubType;
        v84 = "%{public}@ <%p>: %@ Unsupported data format: %d";
        v85 = v10;
        v86 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v131 = objc_opt_class();
        v82 = NSStringFromClass(v131);
        logPrefix2 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138544130;
        *(&buf.value + 4) = v82;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix2;
        v168 = 1024;
        *v169 = MediaSubType;
        v84 = "Error: %{public}@ <%p>: %@ Unsupported data format: %d";
        v85 = v10;
        v86 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v85, v86, v84, &buf, 0x26u);

      goto LABEL_55;
    }
  }

  videoInput5 = [(ARImageSensor *)self videoInput];

  if (videoInput5)
  {
    v25 = 0;
    goto LABEL_11;
  }

  v49 = objc_alloc(MEMORY[0x1E69870B0]);
  captureDevice2 = [(ARImageSensor *)self captureDevice];
  v162 = 0;
  v51 = [v49 initWithDevice:captureDevice2 error:&v162];
  v25 = v162;
  [(ARImageSensor *)self setVideoInput:v51];

  videoInput6 = [(ARImageSensor *)self videoInput];

  if (!videoInput6)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v113 = ARShouldUseLogTypeError_internalOSVersion;
    v114 = _ARLogSensor(v53);
    v115 = v114;
    if (v113 == 1)
    {
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        v116 = objc_opt_class();
        v117 = NSStringFromClass(v116);
        logPrefix3 = [(ARImageSensor *)self logPrefix];
        v119 = [v25 description];
        captureDevice3 = [(ARImageSensor *)self captureDevice];
        LODWORD(buf.value) = 138544386;
        *(&buf.value + 4) = v117;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix3;
        v168 = 2112;
        *v169 = v119;
        *&v169[8] = 2112;
        v170 = captureDevice3;
        v121 = "%{public}@ <%p>: %@ Error creating capture input for depth sensor: %@ (%@)";
        v122 = v115;
        v123 = OS_LOG_TYPE_ERROR;
LABEL_76:
        _os_log_impl(&dword_1C241C000, v122, v123, v121, &buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
    {
      v152 = objc_opt_class();
      v117 = NSStringFromClass(v152);
      logPrefix3 = [(ARImageSensor *)self logPrefix];
      v119 = [v25 description];
      captureDevice3 = [(ARImageSensor *)self captureDevice];
      LODWORD(buf.value) = 138544386;
      *(&buf.value + 4) = v117;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      HIWORD(buf.epoch) = 2112;
      v167 = logPrefix3;
      v168 = 2112;
      *v169 = v119;
      *&v169[8] = 2112;
      v170 = captureDevice3;
      v121 = "Error: %{public}@ <%p>: %@ Error creating capture input for depth sensor: %@ (%@)";
      v122 = v115;
      v123 = OS_LOG_TYPE_INFO;
      goto LABEL_76;
    }

    if (!v25)
    {
      v133 = MEMORY[0x1E695E0F8];
      v132 = 101;
      goto LABEL_56;
    }

    v164 = *MEMORY[0x1E696AA08];
    v165 = v25;
    v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v47 = ARErrorWithCodeAndUserInfo(101, v153);

    goto LABEL_86;
  }

  captureSession = [(ARImageSensor *)self captureSession];
  videoInput7 = [(ARImageSensor *)self videoInput];
  v56 = [captureSession canAddInput:videoInput7];

  if (!v56)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v134 = ARShouldUseLogTypeError_internalOSVersion;
    v135 = _ARLogSensor(v57);
    v126 = v135;
    if (v134 == 1)
    {
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        v136 = objc_opt_class();
        v128 = NSStringFromClass(v136);
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v128;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix4;
        v130 = "%{public}@ <%p>: %@ Cannot add video data input to the capture session";
        goto LABEL_62;
      }

LABEL_85:

      v47 = ARErrorWithCodeAndUserInfo(102, 0);
LABEL_86:

      goto LABEL_95;
    }

    if (!os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    v155 = objc_opt_class();
    v128 = NSStringFromClass(v155);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v128;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix4;
    v130 = "Error: %{public}@ <%p>: %@ Cannot add video data input to the capture session";
LABEL_83:
    v137 = v126;
    v138 = OS_LOG_TYPE_INFO;
    goto LABEL_84;
  }

  captureSession2 = [(ARImageSensor *)self captureSession];
  videoInput8 = [(ARImageSensor *)self videoInput];
  [captureSession2 addInputWithNoConnections:videoInput8];

  v61 = _ARLogSensor(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    logPrefix5 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v63;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix5;
    _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data input to the capture session", &buf, 0x20u);
  }

  internalSettings = [(ARImageSensor *)self internalSettings];
  videoFormat = [internalSettings videoFormat];
  frameRatesByPowerUsage = [videoFormat frameRatesByPowerUsage];
  v68 = [frameRatesByPowerUsage objectAtIndexedSubscript:0];
  [v68 doubleValue];
  v70 = v69;

  CMTimeMake(&v161, 1, v70);
  videoInput9 = [(ARImageSensor *)self videoInput];
  buf = v161;
  [videoInput9 setVideoMinFrameDurationOverride:&buf];

  v73 = _ARLogSensor(v72);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    logPrefix6 = [(ARImageSensor *)self logPrefix];
    videoInput10 = [(ARImageSensor *)self videoInput];
    v78 = videoInput10;
    if (videoInput10)
    {
      objc_msgSend_videoMinFrameDurationOverride(videoInput10);
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    Seconds = CMTimeGetSeconds(&buf);
    LODWORD(buf.value) = 138544130;
    *(&buf.value + 4) = v75;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix6;
    v168 = 2048;
    *v169 = Seconds;
    _os_log_impl(&dword_1C241C000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ Video min frame duration override set to %f", &buf, 0x2Au);
  }

LABEL_11:
  if (self->_pointCloudOutput)
  {
    goto LABEL_20;
  }

  v26 = objc_opt_new();
  pointCloudOutput = self->_pointCloudOutput;
  self->_pointCloudOutput = v26;

  isDeferredStartSupported = [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput isDeferredStartSupported];
  if (isDeferredStartSupported)
  {
    isDeferredStartSupported = [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput setDeferredStartEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.pointCloudDataOutput.deferredStartEnabled"]];
  }

  v29 = _ARLogSensor(isDeferredStartSupported);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    logPrefix7 = [(ARImageSensor *)self logPrefix];
    isDeferredStartSupported2 = [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput isDeferredStartSupported];
    isDeferredStartEnabled = [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput isDeferredStartEnabled];
    LODWORD(buf.value) = 138544386;
    *(&buf.value + 4) = v31;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix7;
    v168 = 1024;
    *v169 = isDeferredStartSupported2;
    *&v169[4] = 1024;
    *&v169[6] = isDeferredStartEnabled;
    _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ deferred start supported: %u, enabled: %u.", &buf, 0x2Cu);
  }

  captureSession3 = [(ARImageSensor *)self captureSession];
  v36 = [captureSession3 canAddOutput:self->_pointCloudOutput];

  if (!v36)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v124 = ARShouldUseLogTypeError_internalOSVersion;
    v125 = _ARLogSensor(v37);
    v126 = v125;
    if (v124 == 1)
    {
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        v127 = objc_opt_class();
        v128 = NSStringFromClass(v127);
        logPrefix4 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v128;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix4;
        v130 = "%{public}@ <%p>: %@ Cannot add video data output to the capture session";
LABEL_62:
        v137 = v126;
        v138 = OS_LOG_TYPE_ERROR;
LABEL_84:
        _os_log_impl(&dword_1C241C000, v137, v138, v130, &buf, 0x20u);

        goto LABEL_85;
      }

      goto LABEL_85;
    }

    if (!os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    v154 = objc_opt_class();
    v128 = NSStringFromClass(v154);
    logPrefix4 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v128;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix4;
    v130 = "Error: %{public}@ <%p>: %@ Cannot add video data output to the capture session";
    goto LABEL_83;
  }

  captureSession4 = [(ARImageSensor *)self captureSession];
  [captureSession4 addOutputWithNoConnections:self->_pointCloudOutput];

  v40 = _ARLogSensor(v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    logPrefix8 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v42;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix8;
    _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data output to the capture session", &buf, 0x20u);
  }

LABEL_20:
  videoConnection = [(ARImageSensor *)self videoConnection];

  if (videoConnection)
  {
LABEL_21:
    [(AVCapturePointCloudDataOutput *)self->_pointCloudOutput setAlwaysDiscardsLatePointCloudData:1];
    v45 = self->_pointCloudOutput;
    captureQueue = [(ARImageSensor *)self captureQueue];
    [(AVCapturePointCloudDataOutput *)v45 setDelegate:self callbackQueue:captureQueue];

    v47 = 0;
    goto LABEL_95;
  }

  v160 = v25;
  videoInput11 = [(ARImageSensor *)self videoInput];
  v88 = *MEMORY[0x1E6986FA8];
  videoInput12 = [(ARImageSensor *)self videoInput];
  device4 = [videoInput12 device];
  deviceType = [device4 deviceType];
  videoInput13 = [(ARImageSensor *)self videoInput];
  device5 = [videoInput13 device];
  v94 = [videoInput11 portsWithMediaType:v88 sourceDeviceType:deviceType sourceDevicePosition:objc_msgSend_position(device5)];
  firstObject = [v94 firstObject];

  if (firstObject)
  {
    v97 = MEMORY[0x1E6987070];
    v163 = firstObject;
    v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v163 count:1];
    v99 = [v97 connectionWithInputPorts:v98 output:self->_pointCloudOutput];
    [(ARImageSensor *)self setVideoConnection:v99];

    captureSession5 = [(ARImageSensor *)self captureSession];
    videoConnection2 = [(ARImageSensor *)self videoConnection];
    v102 = [captureSession5 canAddConnection:videoConnection2];

    if (v102)
    {
      connections = [(ARImageSensor *)self connections];
      videoConnection3 = [(ARImageSensor *)self videoConnection];
      [connections addObject:videoConnection3];

      captureSession6 = [(ARImageSensor *)self captureSession];
      videoConnection4 = [(ARImageSensor *)self videoConnection];
      [captureSession6 addConnection:videoConnection4];

      v109 = _ARLogSensor(v108);
      v25 = v160;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        v110 = objc_opt_class();
        v111 = NSStringFromClass(v110);
        logPrefix9 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v111;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix9;
        _os_log_impl(&dword_1C241C000, v109, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %@ Added video data connection to the capture session", &buf, 0x20u);
      }

      goto LABEL_21;
    }

    v139 = v160;
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v147 = ARShouldUseLogTypeError_internalOSVersion;
    v148 = _ARLogSensor(v103);
    v142 = v148;
    if (v147 == 1)
    {
      if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
      {
        v149 = objc_opt_class();
        v144 = NSStringFromClass(v149);
        logPrefix10 = [(ARImageSensor *)self logPrefix];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v144;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = self;
        HIWORD(buf.epoch) = 2112;
        v167 = logPrefix10;
        v146 = "%{public}@ <%p>: %@ Cannot add video connection to capture session";
        goto LABEL_73;
      }

      goto LABEL_94;
    }

    if (!os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
    {
      goto LABEL_94;
    }

    v157 = objc_opt_class();
    v144 = NSStringFromClass(v157);
    logPrefix10 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v144;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix10;
    v146 = "Error: %{public}@ <%p>: %@ Cannot add video connection to capture session";
LABEL_92:
    v150 = v142;
    v151 = OS_LOG_TYPE_INFO;
    goto LABEL_93;
  }

  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensorSettings initWithVideoFormat:];
  }

  v139 = v160;
  v140 = ARShouldUseLogTypeError_internalOSVersion;
  v141 = _ARLogSensor(v96);
  v142 = v141;
  if (v140 != 1)
  {
    if (!os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
    {
      goto LABEL_94;
    }

    v156 = objc_opt_class();
    v144 = NSStringFromClass(v156);
    logPrefix10 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v144;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix10;
    v146 = "Error: %{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
    goto LABEL_92;
  }

  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
  {
    v143 = objc_opt_class();
    v144 = NSStringFromClass(v143);
    logPrefix10 = [(ARImageSensor *)self logPrefix];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v144;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = self;
    HIWORD(buf.epoch) = 2112;
    v167 = logPrefix10;
    v146 = "%{public}@ <%p>: %@ Cannot find a video port in the input added to the capture session";
LABEL_73:
    v150 = v142;
    v151 = OS_LOG_TYPE_ERROR;
LABEL_93:
    _os_log_impl(&dword_1C241C000, v150, v151, v146, &buf, 0x20u);
  }

LABEL_94:

  v47 = ARErrorWithCodeAndUserInfo(102, 0);

LABEL_95:

  return v47;
}

- (BOOL)canReconfigure:(id)reconfigure
{
  reconfigureCopy = reconfigure;
  internalDepthSettings = [(ARDepthSensor *)self internalDepthSettings];
  v6 = [internalDepthSettings isEqual:reconfigureCopy];

  return v6;
}

- (void)_configureProjectorModeForDevice:(id)device
{
  v36 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  internalDepthSettings = [(ARDepthSensor *)self internalDepthSettings];
  timeOfFlightProjectorMode = [internalDepthSettings timeOfFlightProjectorMode];

  captureDevice = [(ARImageSensor *)self captureDevice];
  v8 = [captureDevice isTimeOfFlightProjectorModeSupported:ARAVTimeOfFlightProjectorModeFromARTimeOfFlightProjectMode(timeOfFlightProjectorMode)];

  if (v8)
  {
    v10 = timeOfFlightProjectorMode;
  }

  else
  {
    v11 = _ARLogSensor(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v26 = 138544386;
      v27 = v13;
      v28 = 2048;
      selfCopy3 = self;
      v30 = 2112;
      v31 = logPrefix;
      v32 = 2112;
      v33 = timeOfFlightProjectorMode;
      v34 = 2048;
      timeOfFlightProjectorMode2 = [deviceCopy timeOfFlightProjectorMode];
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Requested projector mode %@ is not supported on this device. Current projector mode of the device: %ld.", &v26, 0x34u);
    }

    v10 = @"ARTimeOfFlightProjectorModeNormal";
    v16 = _ARLogSensor(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      logPrefix2 = [(ARImageSensor *)self logPrefix];
      v26 = 138544130;
      v27 = v18;
      v28 = 2048;
      selfCopy3 = self;
      v30 = 2112;
      v31 = logPrefix2;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ Falling back to projector mode %@.", &v26, 0x2Au);
    }
  }

  v20 = [deviceCopy setTimeOfFlightProjectorMode:ARAVTimeOfFlightProjectorModeFromARTimeOfFlightProjectMode(v10)];
  v21 = _ARLogSensor(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    logPrefix3 = [(ARImageSensor *)self logPrefix];
    timeOfFlightProjectorMode3 = [deviceCopy timeOfFlightProjectorMode];
    v26 = 138544386;
    v27 = v23;
    v28 = 2048;
    selfCopy3 = self;
    v30 = 2112;
    v31 = logPrefix3;
    v32 = 2112;
    v33 = v10;
    v34 = 2048;
    timeOfFlightProjectorMode2 = timeOfFlightProjectorMode3;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ ARDepthSensor projector mode set to %@(%ld)", &v26, 0x34u);
  }
}

- (void)pointCloudDataOutput:(id)output didOutputPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection
{
  v55 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = [ARPointCloudSensorData alloc];
  captureFramesPerSecond = [(ARImageSensor *)self captureFramesPerSecond];
  captureDevice = [(ARImageSensor *)self captureDevice];
  captureSession = [(ARImageSensor *)self captureSession];
  v13 = [(ARPointCloudSensorData *)v9 initWithPointCloudData:dataCopy captureFramePerSecond:captureFramesPerSecond captureDevice:captureDevice captureSession:captureSession];

  if (v13)
  {
    dataSource = [(ARImageSensor *)self dataSource];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      extrinsicsMap = self->_extrinsicsMap;
      if (!extrinsicsMap)
      {
        dataSource2 = [(ARImageSensor *)self dataSource];
        v19 = [dataSource2 captureDeviceTypeToExtrinsicsMapForImageSensor:self];
        v20 = self->_extrinsicsMap;
        self->_extrinsicsMap = v19;

        extrinsicsMap = self->_extrinsicsMap;
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      allKeys = [(NSMutableDictionary *)extrinsicsMap allKeys];
      v22 = [allKeys countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v49;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v49 != v24)
            {
              objc_enumerationMutation(allKeys);
            }

            v26 = *(*(&v48 + 1) + 8 * i);
            if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v26))
            {
              v32 = [(NSMutableDictionary *)self->_extrinsicsMap objectForKeyedSubscript:v26];
              *v56.columns[0].i64 = ARMatrix4x3FromNSData(v32);
              [(ARPointCloudSensorData *)v13 setExtrinsicsToWideSensor:ARMatrix4x3Inverse(v56)];

              goto LABEL_17;
            }
          }

          v23 = [allKeys countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    [(ARPointCloudSensorData *)v13 extrinsicsToWideSensor];
    IsZero = ARMatrix4x3IsZero(v33, v34, v35, v36);
    if (IsZero)
    {
      v38 = _ARLogGeneral(IsZero);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        LODWORD(buf.var0) = 138543618;
        *(&buf.var0 + 4) = v40;
        LOWORD(buf.var2) = 2048;
        *(&buf.var2 + 2) = self;
        _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_FAULT, "%{public}@ <%p>: Did not receive extrinsics from [AVCaptureDevice extrinsicMatrixFromDevice:sensor.captureDevice toDevice:depthSensor.captureDevice];", &buf, 0x16u);
      }
    }

    bufferPopulationMonitor = [(ARImageSensor *)self bufferPopulationMonitor];
    pointCloudDataBuffer = [dataCopy pointCloudDataBuffer];
    captureDevice2 = [(ARImageSensor *)self captureDevice];
    localizedName = [captureDevice2 localizedName];
    buf = *timestamp;
    Seconds = CMTimeGetSeconds(&buf);
    captureDevice3 = [(ARImageSensor *)self captureDevice];
    deviceType = [captureDevice3 deviceType];
    [bufferPopulationMonitor trackDataBuffer:pointCloudDataBuffer withLabel:localizedName timestamp:ARBufferPopulationMonitorSignpostTypeForCaptureDevice(deviceType) signpostType:Seconds];

    [objc_opt_class() registerSignPostForPointCloudData:v13];
    delegate = [(ARImageSensor *)self delegate];
    [delegate sensor:self didOutputSensorData:v13];
  }

  else
  {
    delegate = _ARLogSensor(v14);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      captureDevice4 = [(ARImageSensor *)self captureDevice];
      deviceType2 = [captureDevice4 deviceType];
      LODWORD(buf.var0) = 138543874;
      *(&buf.var0 + 4) = v29;
      LOWORD(buf.var2) = 2048;
      *(&buf.var2 + 2) = self;
      HIWORD(buf.var3) = 2112;
      v54 = deviceType2;
      _os_log_impl(&dword_1C241C000, delegate, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropped a pointCloudDataOutput because data is nil: %@", &buf, 0x20u);
    }
  }
}

- (void)pointCloudDataOutput:(id)output didDropPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v36 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  dataCopy = data;
  connectionCopy = connection;
  v15 = connectionCopy;
  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARDepthSensor start];
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion;
  v17 = _ARLogSensor(connectionCopy);
  v18 = v17;
  if (v16 == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      logPrefix = [(ARImageSensor *)self logPrefix];
      v30 = *timestamp;
      Seconds = CMTimeGetSeconds(&v30);
      if (reason > 3)
      {
        v23 = @"Undefined";
      }

      else
      {
        v23 = off_1E817BC18[reason];
      }

      LODWORD(v30.var0) = 138544386;
      *(&v30.var0 + 4) = v20;
      LOWORD(v30.var2) = 2048;
      *(&v30.var2 + 2) = self;
      HIWORD(v30.var3) = 2112;
      v31 = logPrefix;
      v32 = 2048;
      v33 = Seconds;
      v34 = 2112;
      v35 = v23;
      v27 = "%{public}@ <%p>: %@ capture session dropped jasper frame: %f, %@";
      v28 = v18;
      v29 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v28, v29, v27, &v30, 0x34u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v24 = objc_opt_class();
    v20 = NSStringFromClass(v24);
    logPrefix = [(ARImageSensor *)self logPrefix];
    v30 = *timestamp;
    v25 = CMTimeGetSeconds(&v30);
    if (reason > 3)
    {
      v26 = @"Undefined";
    }

    else
    {
      v26 = off_1E817BC18[reason];
    }

    LODWORD(v30.var0) = 138544386;
    *(&v30.var0 + 4) = v20;
    LOWORD(v30.var2) = 2048;
    *(&v30.var2 + 2) = self;
    HIWORD(v30.var3) = 2112;
    v31 = logPrefix;
    v32 = 2048;
    v33 = v25;
    v34 = 2112;
    v35 = v26;
    v27 = "Error: %{public}@ <%p>: %@ capture session dropped jasper frame: %f, %@";
    v28 = v18;
    v29 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  kdebug_trace();
}

+ (void)registerSignPostForPointCloudData:(id)data
{
  dataCopy = data;
  pointCloud = [dataCopy pointCloud];
  if (pointCloud)
  {
    v4 = pointCloud;
    pointCloud2 = [dataCopy pointCloud];
    v6 = [pointCloud2 length];

    if (v6)
    {
      pointCloud3 = [dataCopy pointCloud];
      [pointCloud3 bankIds];

      objc_msgSend_timestamp(dataCopy);
      kdebug_trace();
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  captureDevice = [(ARImageSensor *)self captureDevice];
  [v6 appendFormat:@" %@\n", captureDevice];

  captureDevice2 = [(ARImageSensor *)self captureDevice];
  timeOfFlightProjectorMode = [captureDevice2 timeOfFlightProjectorMode];
  if (timeOfFlightProjectorMode > 6)
  {
    v10 = @"Undefined";
  }

  else
  {
    v10 = off_1E817BC38[timeOfFlightProjectorMode];
  }

  [v6 appendFormat:@"ProjectorMode: %@\n", v10];

  captureDevice3 = [(ARImageSensor *)self captureDevice];
  [v6 appendFormat:@"BankCount: %li\n", objc_msgSend(captureDevice3, "timeOfFlightBankCount")];

  internalSettings = [(ARImageSensor *)self internalSettings];
  v13 = [internalSettings description];
  v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v6 appendFormat:@"%@\n", v14];

  return v6;
}

@end