@interface ARReplaySensorPublic
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime;
- (ARReplaySensorDelegate)replaySensorDelegate;
- (ARReplaySensorPublic)initWithDataFromFile:(id)file;
- (ARReplaySensorPublic)initWithSequenceURL:(id)l manualReplay:(BOOL)replay synchronousMode:(BOOL)mode;
- (ARReplaySensorPublic)initWithSequenceURL:(id)l replayMode:(int64_t)mode;
- (ARSensorDelegate)delegate;
- (ARSession)session;
- (BOOL)isEqual:(id)equal;
- (BOOL)readNextFrameFromStream:(id)stream forWrapper:(id)wrapper;
- (CGSize)imageResolution;
- (double)_getMinFrameDurationForStream:(id)stream;
- (double)currentTime;
- (id)_cameraCalibrationDataForStream:(id)stream timestamp:(double)timestamp;
- (id)_mainVideoStringID:(id)d;
- (id)_populateCalibrationStream:(id)stream timestamp:(double)timestamp;
- (id)_streamIdentifierForCaptureDeviceType:(id)type position:(int64_t)position;
- (id)availableVideoFormatForDeviceType:(id)type position:(int64_t)position;
- (id)customDataForTimestamp:(double)timestamp;
- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter;
- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time metadataClass:(Class)class;
- (id)getNextWrappedImageDataForReplay;
- (id)getNextWrappedItemsFromStream:(id)stream converter:(id)converter;
- (id)getWrappedItemsFromPixelBufferStream:(id)stream upToMovieTime:(double)time converter:(id)converter;
- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter;
- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time withBlock:(id)block;
- (id)imageDataToReplayForTimestamp:(double)timestamp;
- (id)keyedArchiveConverter:(Class)converter;
- (id)keyedArchiveConverterForClasses:(id)classes;
- (id)metadataWrapperConverter:(Class)converter;
- (id)peekNextWrappedImageDataForAllRequiredStreams;
- (id)peekNextWrappedImageDataForStreamIdentifier:(id)identifier;
- (void)_appendCalibrationData:(id)data streamIdentifier:(id)identifier;
- (void)_appendVisionDataToImageData:(id)data streamIdentifier:(id)identifier;
- (void)_didOutputSensorData:(id)data;
- (void)_endReplay;
- (void)_populateDepthDataForImageData:(id)data;
- (void)_populateDeviceOrientationIfNeededOnImageData:(id)data fromDeviceOrientationData:(id)orientationData accelerometerData:(id)accelerometerData streamIdentifier:(id)identifier;
- (void)_replaySensorFinishedReplayingData;
- (void)advance;
- (void)advanceFrame;
- (void)dealloc;
- (void)endInterruption;
- (void)failWithError:(id)error;
- (void)interrupt;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReplay;
- (void)readAndVendCMDatasUntil:(double)until;
- (void)readAndVendCVADepthTOFsUntil:(double)until;
- (void)readAndVendCVAUserEventsUntil:(double)until;
- (void)readFileMetadata;
- (void)setImageIndex:(int)index;
- (void)start;
- (void)startReplayIfNeeded;
- (void)stop;
- (void)tick;
@end

@implementation ARReplaySensorPublic

- (ARReplaySensorPublic)initWithDataFromFile:(id)file
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:file];
  v5 = [(ARReplaySensorPublic *)self initWithSequenceURL:v4 replayMode:0];

  return v5;
}

- (ARReplaySensorPublic)initWithSequenceURL:(id)l manualReplay:(BOOL)replay synchronousMode:(BOOL)mode
{
  if (replay)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  mode = [(ARReplaySensorPublic *)self initWithSequenceURL:l replayMode:v5, mode];

  return mode;
}

- (ARReplaySensorPublic)initWithSequenceURL:(id)l replayMode:(int64_t)mode
{
  v168 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v158 = 0;
  v7 = [objc_alloc(MEMORY[0x1E698BEC0]) initWithFileURL:lCopy error:&v158];
  v8 = v158;
  v9 = v8;
  if (v7)
  {
    v157.receiver = self;
    v157.super_class = ARReplaySensorPublic;
    v10 = [(ARReplaySensorPublic *)&v157 init];
    if (!v10)
    {
LABEL_89:
      self = v10;
      selfCopy = self;
      goto LABEL_90;
    }

    v11 = objc_opt_new();
    v12 = *(v10 + 48);
    *(v10 + 48) = v11;

    [*(v10 + 48) setRecordingFormat:3];
    lastPathComponent = [lCopy lastPathComponent];
    [*(v10 + 48) setFileName:lastPathComponent];

    *(v10 + 63) = replayModeByApplyingUserDefaultOverrides(mode);
    v14 = [lCopy copy];
    v15 = *(v10 + 57);
    *(v10 + 57) = v14;

    objc_storeStrong(v10 + 10, v7);
    *(v10 + 71) = 0;
    v10[427] = 1;
    getAllStreams = [*(v10 + 10) getAllStreams];
    v17 = [getAllStreams mutableCopy];

    v18 = *MEMORY[0x1E698BEF0];
    [v17 removeObject:*MEMORY[0x1E698BEF0]];
    array = [MEMORY[0x1E695DF70] array];
    v20 = *(v10 + 74);
    *(v10 + 74) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v22 = *(v10 + 72);
    *(v10 + 72) = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    v24 = *(v10 + 73);
    *(v10 + 73) = array3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v26 = *(v10 + 51);
    *(v10 + 51) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v28 = *(v10 + 52);
    *(v10 + 52) = dictionary2;

    v29 = [*(v10 + 10) containsMetadataStream:*MEMORY[0x1E698BF00]];
    if (v29)
    {
      LOBYTE(v29) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.replayVisionData"];
    }

    v10[426] = v29;
    v30 = [*(v10 + 10) containsStream:v18];
    v149 = v9;
    v151 = v7;
    if (v30)
    {
      LOBYTE(v30) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.replayPearlDepthData"];
    }

    v10[424] = v30;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v153 objects:v159 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v154;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v154 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v153 + 1) + 8 * i);
          array4 = [MEMORY[0x1E695DF70] array];
          [*(v10 + 51) setObject:array4 forKeyedSubscript:v36];

          array5 = [MEMORY[0x1E695DF70] array];
          [*(v10 + 52) setObject:array5 forKeyedSubscript:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v153 objects:v159 count:16];
      }

      while (v33);
    }

    v10[425] = 0;
    v39 = [v10 _mainVideoStringID:v31];
    v40 = *(v10 + 67);
    *(v10 + 67) = v39;

    v41 = [MEMORY[0x1E695DFD8] setWithArray:v31];
    v42 = *(v10 + 17);
    *(v10 + 17) = v41;

    v43 = MEMORY[0x1E695DFD8];
    getAllMetadataStreams = [*(v10 + 10) getAllMetadataStreams];
    v45 = [v43 setWithArray:getAllMetadataStreams];
    v46 = *(v10 + 18);
    *(v10 + 18) = v45;

    [v10 readFileMetadata];
    v47 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.arreplaysensor.timerQueue", 0);
    v48 = *(v10 + 5);
    *(v10 + 5) = v47;

    v10[72] = 0;
    if (objc_opt_respondsToSelector())
    {
      [v10 performSelector:sel__subscribeToBackgroundNotifications];
    }

    v49 = buf;
    if (*(v10 + 63) == 3)
    {
      v50 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.session.replay.filepath"];
      v10[8] = v50 != 0;

      if (v10[8])
      {
        [v10 advanceToFrameIndex:{+[ARKitUserDefaults integerForKey:](ARKitUserDefaults, "integerForKey:", @"com_apple_arkit_replay_filepath_advanceToFrame"}];
        [ARKitUserDefaults floatForKey:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
        [v10 setAdvanceFramesPerSecondMultiplier:?];
        appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
        [appleGlobalDomain addObserver:v10 forKeyPath:@"com_apple_arkit_replay_filepath_advanceToFrame" options:1 context:0];
        v52 = _ARLogSensor_5([appleGlobalDomain addObserver:v10 forKeyPath:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier" options:1 context:0]);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          *buf = 138543618;
          v161 = v54;
          v162 = 2048;
          selfCopy2 = v10;
          _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using manual command line mode.", buf, 0x16u);
        }
      }
    }

    else
    {
      v10[8] = 0;
    }

    v10[88] = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replay.display.synchronization.marker", v149, v151];
    *(v10 + 12) = [ARKitUserDefaults integerForKey:@"com.apple.arkit.replay.display.synchronization.marker.frameCount"];
    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.cropFrames"])
    {
      [v10 imageResolution];
      if (v60 == 1920.0 && v59 == 1440.0)
      {
        v61 = [[ARImageCroppingTechnique alloc] initWithCroppedImageSize:1920.0, 1080.0];
        v62 = *(v10 + 16);
        *(v10 + 16) = v61;

        *(v10 + 600) = xmmword_1C25C84C0;
        v64 = _ARLogSensor_5(v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v67 = *(v10 + 75);
          v68 = *(v10 + 76);
          *buf = 138544130;
          v161 = v66;
          v162 = 2048;
          selfCopy2 = v10;
          v164 = 2048;
          v165 = v67;
          v166 = 2048;
          v167 = v68;
          _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Frames will be cropped to %.0f x %.0f", buf, 0x2Au);
        }
      }
    }

    v69 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.jasper.replayFramerate"];
    if (v69)
    {
      v70 = [MEMORY[0x1E696AD98] numberWithInteger:v69];
      [*(v10 + 10) setDepthOutputFrameRate:v70];

      v72 = _ARLogSensor_5(v71);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        depthOutputFrameRate = [*(v10 + 10) depthOutputFrameRate];
        *buf = 138543874;
        v161 = v74;
        v162 = 2048;
        selfCopy2 = v10;
        v164 = 2112;
        v165 = depthOutputFrameRate;
        _os_log_impl(&dword_1C241C000, v72, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting jasper replay rate to: %@ fps", buf, 0x20u);
      }
    }

    *(v10 + 30) = 0;
    v76 = @"JasperCamera";
    v77 = *MEMORY[0x1E6990C88];
    v78 = [*(v10 + 10) containsStream:v76];
    if (v78 & 1) != 0 || (v78 = [*(v10 + 10) containsStream:v77], (v78))
    {
      v80 = 1;
    }

    else
    {
      v78 = [*(v10 + 10) containsMetadataStream:*MEMORY[0x1E698BEF8]];
      if ((v78 & 1) == 0)
      {
        v78 = [*(v10 + 10) containsMetadataStream:*MEMORY[0x1E698BF28]];
        if ((v78 & 1) == 0)
        {
          v78 = [*(v10 + 10) containsMetadataStream:*MEMORY[0x1E698BF30]];
          if (!v78)
          {
LABEL_43:
            v81 = ARDeviceSupportsJasper(v78, v79);
            if (!v81)
            {
              goto LABEL_76;
            }

            grabJasperExtrinsics = [*(v10 + 10) grabJasperExtrinsics];
            v83 = grabJasperExtrinsics;
            if (grabJasperExtrinsics)
            {
              v84 = [grabJasperExtrinsics objectForKeyedSubscript:*(v10 + 67)];
              v86 = v84;
              if (v84)
              {
                v87 = ARMatrix4x3FromNSData(v84);
                *(v10 + 66) = v88;
                *(v10 + 32) = v87;
                *(v10 + 70) = v89;
                *(v10 + 74) = v90;
                *(v10 + 34) = v91;
                *(v10 + 36) = v92;
                *(v10 + 78) = v93;
                *(v10 + 38) = v94;
              }

              if (ARDeviceSupportsUltraWideCamera(v84, v85))
              {
                v95 = [v10 _streamIdentifierForCaptureDeviceType:*MEMORY[0x1E6986948] position:1];
                v96 = [v83 objectForKeyedSubscript:v95];

                if (v96)
                {
                  v97 = ARMatrix4x3FromNSData(v96);
                  *(v10 + 82) = v98;
                  *(v10 + 40) = v97;
                  *(v10 + 86) = v99;
                  *(v10 + 42) = v100;
                  *(v10 + 90) = v101;
                  *(v10 + 44) = v102;
                  *(v10 + 94) = v103;
                  v86 = v96;
                  *(v10 + 46) = v104;
                }

                else
                {
                  v86 = 0;
                }

                v49 = buf;
              }
            }

            else
            {
              v105 = v77;
              if (ARShouldUseLogTypeError_onceToken_4 != -1)
              {
                [ARReplaySensorPublic initWithSequenceURL:replayMode:];
              }

              v106 = ARShouldUseLogTypeError_internalOSVersion_4;
              v107 = _ARLogSensor_5(grabJasperExtrinsics);
              v86 = v107;
              if (v106 == 1)
              {
                v77 = v105;
                if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_60;
                }

                v108 = objc_opt_class();
                v109 = NSStringFromClass(v108);
                *buf = 138543618;
                v161 = v109;
                v162 = 2048;
                selfCopy2 = v10;
                v110 = "%{public}@ <%p>: Unable to get extrinsics to TOF sensor.";
                v111 = v86;
                v112 = OS_LOG_TYPE_ERROR;
              }

              else
              {
                v77 = v105;
                if (!os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_60;
                }

                v113 = objc_opt_class();
                v109 = NSStringFromClass(v113);
                *buf = 138543618;
                v161 = v109;
                v162 = 2048;
                selfCopy2 = v10;
                v110 = "Error: %{public}@ <%p>: Unable to get extrinsics to TOF sensor.";
                v111 = v86;
                v112 = OS_LOG_TYPE_INFO;
              }

              _os_log_impl(&dword_1C241C000, v111, v112, v110, buf, 0x16u);
            }

LABEL_60:

            v114 = [*(v10 + 10) grabSWToWExtrinsics:v10 + 176];
            if (v114)
            {
LABEL_75:

LABEL_76:
              v142 = _ARLogSensor_5(v81);
              if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
              {
                v143 = objc_opt_class();
                v144 = NSStringFromClass(v143);
                v145 = NSStringFromARReplayMode(*(v10 + 63));
                *buf = 138544130;
                v161 = v144;
                v162 = 2048;
                selfCopy2 = v10;
                v164 = 2112;
                v165 = v145;
                v166 = 2112;
                v167 = lCopy;
                _os_log_impl(&dword_1C241C000, v142, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Initialized: ReplayMode: %@, URL:%@", buf, 0x2Au);
              }

              [*(v10 + 48) setRecordedSensorTypes:*(v10 + 62)];
              [*(v10 + 48) setArkitVersion:*(v10 + 60)];
              [*(v10 + 48) setOsVersion:*(v10 + 59)];
              [*(v10 + 48) setDeviceModel:*(v10 + 58)];
              v146 = *(v10 + 30);
              if (v10[425] == 1)
              {
                v9 = v150;
                v7 = v152;
                if (v146 == 1)
                {
                  v147 = 6;
                  goto LABEL_87;
                }

                if (v146 == 2)
                {
                  v147 = 7;
LABEL_87:
                  [*(v10 + 48) setRecordingFormat:v147];
                }
              }

              else
              {
                v9 = v150;
                v7 = v152;
                if (v146 == 1)
                {
                  v147 = 4;
                  goto LABEL_87;
                }

                if (v146 == 2)
                {
                  v147 = 5;
                  goto LABEL_87;
                }
              }

              [ARSessionMetrics recordReplayMetrics:*(v10 + 48)];

              goto LABEL_89;
            }

            v115 = v77;
            if (ARShouldUseLogTypeError_onceToken_4 != -1)
            {
              [ARReplaySensorPublic initWithSequenceURL:replayMode:];
            }

            v116 = ARShouldUseLogTypeError_internalOSVersion_4;
            v117 = _ARLogSensor_5(v114);
            v118 = v117;
            if (v116 == 1)
            {
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                v119 = objc_opt_class();
                v120 = NSStringFromClass(v119);
                *buf = 138543618;
                v161 = v120;
                v162 = 2048;
                selfCopy2 = v10;
                v121 = "%{public}@ <%p>: Unable to get extrinsics from ultrawide to wide, using default hardcoded extrinsics";
                v122 = v118;
                v123 = OS_LOG_TYPE_ERROR;
LABEL_68:
                _os_log_impl(&dword_1C241C000, v122, v123, v121, buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
            {
              v124 = objc_opt_class();
              v120 = NSStringFromClass(v124);
              *buf = 138543618;
              v161 = v120;
              v162 = 2048;
              selfCopy2 = v10;
              v121 = "Error: %{public}@ <%p>: Unable to get extrinsics from ultrawide to wide, using default hardcoded extrinsics";
              v122 = v118;
              v123 = OS_LOG_TYPE_INFO;
              goto LABEL_68;
            }

            deviceString = [*(v10 + 10) deviceString];
            v77 = v115;
            if (deviceString && ([*(v10 + 10) deviceString], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "isEqualToString:", @"ST2")))
            {
              v126 = ARST2UltrawideToWideExtrinsics();
              *(v10 + 46) = v127;
              *(v10 + 22) = v126;
              *(v10 + 50) = v128;
              *(v10 + 54) = v129;
              *(v10 + 24) = v130;
              *(v10 + 26) = v131;
              *(v10 + 58) = v132;
              *(v10 + 28) = v133;
            }

            else
            {
              ARUltrawideToWideExtrinsics();
              *(v10 + 46) = v134;
              *(v10 + 22) = v135;
              *(v10 + 50) = v136;
              *(v10 + 54) = v137;
              *(v10 + 24) = v138;
              *(v10 + 26) = v139;
              *(v10 + 58) = v140;
              *(v10 + 28) = v141;
              if (!deviceString)
              {
LABEL_74:

                goto LABEL_75;
              }
            }

            goto LABEL_74;
          }
        }
      }

      v80 = 2;
    }

    *(v10 + 30) = v80;
    goto LABEL_43;
  }

  v55 = _ARLogSensor_5(v8);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    *buf = 138544130;
    v161 = v57;
    v162 = 2048;
    selfCopy2 = self;
    v164 = 2112;
    v165 = lCopy;
    v166 = 2112;
    v167 = v9;
    _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create MOVStreamReader from URL: %@. Error: %@", buf, 0x2Au);
  }

  selfCopy = 0;
LABEL_90:

  return selfCopy;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v11 = v5;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  [(ARReplaySensorPublic *)self _endReplay];
  if (self->_manualCommandLineMode)
  {
    appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
    [appleGlobalDomain removeObserver:self forKeyPath:@"com_apple_arkit_replay_filepath_advanceToFrame"];
    [appleGlobalDomain removeObserver:self forKeyPath:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
  }

  CVPixelBufferRelease(self->_depthFloat32PixelBuffer);
  CVPixelBufferRelease(self->_synchronizationMarker);
  CVPixelBufferPoolRelease(self->_synchronizationMarkerPool);
  synchronizationTransferSession = self->_synchronizationTransferSession;
  if (synchronizationTransferSession)
  {
    VTPixelTransferSessionInvalidate(synchronizationTransferSession);
    v8 = self->_synchronizationTransferSession;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9.receiver = self;
  v9.super_class = ARReplaySensorPublic;
  [(ARReplaySensorPublic *)&v9 dealloc];
}

- (id)_mainVideoStringID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  firstObject = [dCopy firstObject];
  if ([dCopy count] >= 2 && ((objc_msgSend(firstObject, "isEqualToString:", @"JasperCamera") & 1) != 0 || objc_msgSend(firstObject, "isEqualToString:", *MEMORY[0x1E6990C88])))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = dCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = *MEMORY[0x1E6990C80];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isEqualToString:{v10, v15}])
          {
            v13 = v12;

            self->_usingST2Recording = 1;
            firstObject = v13;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return firstObject;
}

- (id)availableVideoFormatForDeviceType:(id)type position:(int64_t)position
{
  v25 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = [(ARReplaySensorPublic *)self _streamIdentifierForCaptureDeviceType:typeCopy position:position];
  if ([(NSSet *)self->_availableVideoStreams containsObject:v7])
  {
    [(MOVReaderInterface *)self->_reader getSizeForStream:v7];
    v9 = v8;
    v11 = v10;
    v12 = [(MOVReaderInterface *)self->_reader getOutputPixelFormatForStream:v7];
    if ([typeCopy isEqualToString:*MEMORY[0x1E6986948]])
    {
      v13 = &unk_1F4258E30;
    }

    else
    {
      v13 = &unk_1F4258E48;
    }

    v14 = [[ARVideoFormat alloc] initWithImageResolution:position captureDevicePosition:typeCopy captureDeviceType:v13 frameRatesByPowerUsage:v12 pixelFormat:v9, v11];
LABEL_6:
    v15 = v14;
    goto LABEL_13;
  }

  if ([(NSSet *)self->_availableVideoStreams count]== 1)
  {
    v16 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(typeCopy);
    if (v16)
    {
      v17 = _ARLogSensor_5(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v21 = 138543618;
        v22 = v19;
        v23 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: stream identifier not found in the recording, please use new recording format.", &v21, 0x16u);
      }

      v14 = [[ARVideoFormat alloc] initWithImageResolution:position captureDevicePosition:typeCopy captureDeviceType:self->_imageResolution.width, self->_imageResolution.height];
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: start", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__ARReplaySensorPublic_start__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(replayQueue, block);
}

void __29__ARReplaySensorPublic_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareForReplay];
  *(*(a1 + 32) + 72) = 1;
  *(*(a1 + 32) + 73) = 0;
  [*(a1 + 32) startReplayIfNeeded];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 sensorDidStart:*(a1 + 32)];
  }
}

- (void)stop
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: stop", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__ARReplaySensorPublic_stop__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(replayQueue, block);
}

uint64_t __28__ARReplaySensorPublic_stop__block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = 0;
  *(*(result + 32) + 73) = 1;
  return result;
}

- (void)interrupt
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: interrupt", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ARReplaySensorPublic_interrupt__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(replayQueue, block);
}

void __33__ARReplaySensorPublic_interrupt__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72) == 1)
  {
    *(v1 + 73) = 1;
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 sensorDidPause:*(a1 + 32)];
    }
  }
}

- (void)endInterruption
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: endInterruption", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ARReplaySensorPublic_endInterruption__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(replayQueue, block);
}

void __39__ARReplaySensorPublic_endInterruption__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[72] == 1)
  {
    [v2 prepareForReplay];
    [*(a1 + 32) startReplayIfNeeded];
    *(*(a1 + 32) + 73) = 0;
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 sensorDidRestart:*(a1 + 32)];
    }
  }
}

- (void)advanceFrame
{
  if (self->_running)
  {
    if (self->_replayMode)
    {
      block[5] = v2;
      block[6] = v3;
      replayQueue = self->_replayQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__ARReplaySensorPublic_advanceFrame__block_invoke;
      block[3] = &unk_1E817BFE8;
      block[4] = self;
      dispatch_sync(replayQueue, block);
    }
  }
}

- (id)customDataForTimestamp:(double)timestamp
{
  v4 = timestamp - self->_recordTimestampToMovieTimestampDifference;
  customDataClasses = [(ARReplaySensorPublic *)self customDataClasses];
  v6 = [(ARReplaySensorPublic *)self keyedArchiveConverterForClasses:customDataClasses];
  v7 = [(ARReplaySensorPublic *)self getItemsFromStream:@"mdta/com.apple.arkit.customdata" upToMovieTime:v6 converter:v4];
  lastObject = [v7 lastObject];

  return lastObject;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"com_apple_arkit_replay_filepath_advanceToFrame"])
  {
    [ARKitUserDefaults removeCachedObjectForKey:@"com_apple_arkit_replay_filepath_advanceToFrame"];
    [(ARReplaySensorPublic *)self advanceToFrameIndex:[ARKitUserDefaults integerForKey:@"com_apple_arkit_replay_filepath_advanceToFrame"]];
  }

  else if ([pathCopy isEqualToString:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"])
  {
    [ARKitUserDefaults removeCachedObjectForKey:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
    [ARKitUserDefaults floatForKey:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
    [(ARReplaySensorPublic *)self setAdvanceFramesPerSecondMultiplier:?];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ARReplaySensorPublic;
    [(ARReplaySensorPublic *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sequenceURL = self->_sequenceURL;
    v7 = (sequenceURL == v5[57] || [(NSURL *)sequenceURL isEqual:?]) && self->_replayMode == v5[63];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareForReplay
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([(NSSet *)self->_availableVideoStreams count]== 1)
  {
    [v3 addObject:self->_mainVideoStreamIdentifier];
    goto LABEL_19;
  }

  v62 = v3;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  selfCopy = self;
  settings = [(ARParentImageSensorSettings *)self->_parentImageSensorSettings settings];
  v6 = [settings countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *v69;
  v9 = *MEMORY[0x1E6986930];
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v69 != v8)
      {
        objc_enumerationMutation(settings);
      }

      v11 = *(*(&v68 + 1) + 8 * i);
      videoFormat = [v11 videoFormat];
      v13 = videoFormat;
      if (videoFormat)
      {
        captureDeviceType = [videoFormat captureDeviceType];
        v15 = [captureDeviceType isEqualToString:v9];

        if ((v15 & 1) == 0)
        {
          if ([v11 isEnabled])
          {
            captureDeviceType2 = [v13 captureDeviceType];
            v17 = -[ARReplaySensorPublic _streamIdentifierForCaptureDeviceType:position:](selfCopy, "_streamIdentifierForCaptureDeviceType:position:", captureDeviceType2, [v13 captureDevicePosition]);

            if ([(ARReplaySensorPublic *)selfCopy _allStreamsAreAvailable:v17])
            {
              [v62 addObject:v17];

              goto LABEL_13;
            }

            v51 = ARErrorWithCodeAndUserInfo(101, 0);
            v26 = v51;
            if (ARShouldUseLogTypeError_onceToken_4 != -1)
            {
              [ARReplaySensorPublic initWithSequenceURL:replayMode:];
            }

            v3 = v62;
            v52 = ARShouldUseLogTypeError_internalOSVersion_4;
            v53 = _ARLogSensor_5(v51);
            v54 = v53;
            if (v52 == 1)
            {
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v55 = objc_opt_class();
                v56 = NSStringFromClass(v55);
                *buf = 138544130;
                *&buf[4] = v56;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy;
                *&buf[22] = 2112;
                v73 = v17;
                v74 = 2112;
                v75 = v26;
                v57 = "%{public}@ <%p>: Recording doesn't have all the required (%@) video streams: %@";
                v58 = v54;
                v59 = OS_LOG_TYPE_ERROR;
LABEL_43:
                _os_log_impl(&dword_1C241C000, v58, v59, v57, buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v61 = objc_opt_class();
              v56 = NSStringFromClass(v61);
              *buf = 138544130;
              *&buf[4] = v56;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy;
              *&buf[22] = 2112;
              v73 = v17;
              v74 = 2112;
              v75 = v26;
              v57 = "Error: %{public}@ <%p>: Recording doesn't have all the required (%@) video streams: %@";
              v58 = v54;
              v59 = OS_LOG_TYPE_INFO;
              goto LABEL_43;
            }

            [(ARReplaySensorPublic *)selfCopy failWithError:v26];
            goto LABEL_45;
          }
        }
      }

LABEL_13:
    }

    v7 = [settings countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  self = selfCopy;
  v3 = v62;
  if (!selfCopy->_parentImageSensorSettings)
  {
    v19 = _ARLogSensor_5(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = selfCopy;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "%{public}@ <%p>: No image sensor settings defined, adding all available streams", buf, 0x16u);
    }

    allObjects = [(NSSet *)selfCopy->_availableVideoStreams allObjects];
    [v62 addObjectsFromArray:allObjects];
  }

LABEL_19:
  objc_storeStrong(&self->_videoStreamsToReplay, v3);
  startTime = self->_startTime;
  reader = self->_reader;
  if (startTime == 0.0)
  {
    v67 = 0;
    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    [(MOVReaderInterface *)reader resetReaderTo:buf error:&v67];
    v25 = v67;
  }

  else
  {
    objc_msgSend_currentCMTime(self);
    v66 = 0;
    [(MOVReaderInterface *)reader resetReaderTo:buf error:&v66];
    v25 = v66;
  }

  v26 = v25;
  [(MOVReaderInterface *)self->_reader duration];
  v28 = v27;
  v29 = objc_opt_new();
  nextWrappedImageDataForStreamIdentifierMap = self->_nextWrappedImageDataForStreamIdentifierMap;
  self->_nextWrappedImageDataForStreamIdentifierMap = v29;

  v31 = objc_opt_new();
  metadataCache = self->_metadataCache;
  self->_metadataCache = v31;

  settings = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
  v13 = [settings objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
  data = [v13 data];
  objc_msgSend_timestamp(data);
  v35 = v34;
  objc_msgSend_timestamp(v13);
  self->_recordTimestampToMovieTimestampDifference = v35 - v36;

  if (startTime == 0.0)
  {
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __40__ARReplaySensorPublic_prepareForReplay__block_invoke;
    v63[3] = &unk_1E817C038;
    v64 = v13;
    v65 = v28;
    v38 = MEMORY[0x1C691B4C0](v63);
    replaySensorDelegate = [(ARReplaySensorPublic *)self replaySensorDelegate];
    (v38)[2](v38, replaySensorDelegate);

    traceReplaySensorDelegate = [(ARReplaySensorPublic *)self traceReplaySensorDelegate];
    (v38)[2](v38, traceReplaySensorDelegate);
  }

  if (v26)
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v41 = ARShouldUseLogTypeError_internalOSVersion_4;
    v42 = _ARLogSensor_5(v37);
    v43 = v42;
    if (v41 == 1)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138543874;
        *&buf[4] = v45;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v73 = v26;
        v46 = "%{public}@ <%p>: Error reseting reader: %@";
        v47 = v43;
        v48 = OS_LOG_TYPE_ERROR;
        goto LABEL_39;
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v60 = objc_opt_class();
      v45 = NSStringFromClass(v60);
      *buf = 138543874;
      *&buf[4] = v45;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v73 = v26;
      v46 = "Error: %{public}@ <%p>: Error reseting reader: %@";
      v47 = v43;
      v48 = OS_LOG_TYPE_INFO;
LABEL_39:
      _os_log_impl(&dword_1C241C000, v47, v48, v46, buf, 0x20u);
    }

    [(ARReplaySensorPublic *)self failWithError:v26];
  }

  else
  {
    v17 = _ARLogSensor_5(v37);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reset reader", buf, 0x16u);
    }

LABEL_45:
  }
}

void __40__ARReplaySensorPublic_prepareForReplay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) data];
    objc_msgSend_timestamp(v4);
    v6 = v5;

    v7 = v6 + *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__ARReplaySensorPublic_prepareForReplay__block_invoke_2;
    block[3] = &unk_1E817C010;
    v9 = v3;
    v10 = v6;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)startReplayIfNeeded
{
  if (!self->_replayStarted)
  {
    self->_replayStarted = 1;
    [(ARReplaySensorPublic *)self setImageIndex:0];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    self->_startTime = v4;

    self->_tick = 0;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, self->_replayQueue);
    timer = self->_timer;
    self->_timer = v5;

    dispatch_source_set_timer(self->_timer, 0, 0x7F2815uLL, 0);
    objc_initWeak(&location, self);
    v7 = self->_timer;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__ARReplaySensorPublic_startReplayIfNeeded__block_invoke;
    v8[3] = &unk_1E817BD88;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(v7, v8);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __43__ARReplaySensorPublic_startReplayIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tick];
}

- (double)currentTime
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v5 = v4 - self->_startTime;

  return v5;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime
{
  [(ARReplaySensorPublic *)self currentTime];

  return CMTimeMakeWithSeconds(retstr, v4, 1000);
}

- (void)_endReplay
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: endReplay", &v10, 0x16u);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v7 = self->_timer;
    self->_timer = 0;
  }

  metadataCache = self->_metadataCache;
  self->_metadataCache = 0;

  atomic_store(1u, &self->_finishedReplaying);
  depthContainer = self->_depthContainer;
  self->_depthContainer = 0;
}

uint64_t __54__ARReplaySensorPublic_wrappedImageDataOrderedByTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_msgSend_timestamp(v4);
  v7 = v6;
  objc_msgSend_timestamp(v5);
  if (v7 >= v8)
  {
    objc_msgSend_timestamp(v4);
    v11 = v10;
    objc_msgSend_timestamp(v5);
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)tick
{
  if (self->_running && !self->_interrupted)
  {
    if (self->_replayMode != 3 || [(ARReplaySensorPublic *)self targetFrameIndex]< 0 || (v3 = [(ARReplaySensorPublic *)self imageIndex], [(ARReplaySensorPublic *)self targetFrameIndex]>= v3))
    {
      ++self->_tick;
      [(ARReplaySensorPublic *)self currentTime];
      v5 = v4;
      kdebug_trace();
      if (self->_replayMode == 1)
      {
        [(ARReplaySensorPublic *)self advance];

        kdebug_trace();
      }

      else
      {
        peekNextWrappedImageDataForAllRequiredStreams = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
        v19 = peekNextWrappedImageDataForAllRequiredStreams;
        if (peekNextWrappedImageDataForAllRequiredStreams && [peekNextWrappedImageDataForAllRequiredStreams count] && (objc_msgSend(v19, "objectForKeyedSubscript:", self->_mainVideoStreamIdentifier), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
        {
          if (self->_replayMode)
          {
            v8 = [v19 objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
            data = [v8 data];
            captureFramesPerSecond = [data captureFramesPerSecond];
            [(ARReplaySensorPublic *)self advanceFramesPerSecondMultiplier];
            v12 = v11;
            v13 = v11 == 0.0;
            v14 = 1.0;
            if (!v13)
            {
              v14 = v12;
            }

            v15 = v14 * captureFramesPerSecond;

            v16 = (120.0 / v15);
            if (v16 <= 1)
            {
              v16 = 1;
            }

            if (!(self->_tick % v16))
            {
              [(ARReplaySensorPublic *)self advance];
            }
          }

          else
          {
            while (1)
            {
              v17 = [(ARReplaySensorPublic *)self imageDataToReplayForTimestamp:v5];
              v18 = [v17 count];

              if (!v18)
              {
                break;
              }

              [(ARReplaySensorPublic *)self advance];
            }
          }
        }

        else
        {
          [(ARReplaySensorPublic *)self _endReplay];
          [(ARReplaySensorPublic *)self _replaySensorFinishedReplayingData];
        }

        kdebug_trace();
      }
    }
  }
}

- (void)advance
{
  v161 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  getNextWrappedImageDataForReplay = [(ARReplaySensorPublic *)self getNextWrappedImageDataForReplay];
  if (![getNextWrappedImageDataForReplay count])
  {
    [(ARReplaySensorPublic *)self _endReplay];
    [(ARReplaySensorPublic *)self _replaySensorFinishedReplayingData];
    kdebug_trace();
    goto LABEL_78;
  }

  v4 = [getNextWrappedImageDataForReplay objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
  v120 = getNextWrappedImageDataForReplay;
  allValues = [getNextWrappedImageDataForReplay allValues];
  v6 = [(ARReplaySensorPublic *)self wrappedImageDataOrderedByTime:allValues];

  v118 = v6;
  lastObject = [v6 lastObject];
  objc_msgSend_timestamp(lastObject);
  v9 = v8;

  croppingTechnique = self->_croppingTechnique;
  if (croppingTechnique && v4)
  {
    data = [v4 data];
    v12 = [(ARImageCroppingTechnique *)croppingTechnique processData:data];
    [v4 setData:v12];
  }

  v13 = [(MOVReaderInterface *)self->_reader resolvedAccelStreamName:0];
  [(ARReplaySensorPublic *)self getItemsFromStream:v13 upToMovieTime:objc_opt_class() metadataClass:v9];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v14 = v152 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v149 objects:v160 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v150;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v150 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v149 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        objc_msgSend_timestamp(v19);
        v22 = v21;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v19 setTimestamp:v22 + v23];
        objc_msgSend_timestamp(v19);
        kdebug_trace();
        [(ARReplaySensorPublic *)self _didOutputSensorData:v19];
        objc_msgSend_timestamp(v19);
        kdebug_trace();
        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v149 objects:v160 count:16];
    }

    while (v16);
  }

  v24 = [(MOVReaderInterface *)self->_reader resolvedGyroStreamName:0];

  [(ARReplaySensorPublic *)self getItemsFromStream:v24 upToMovieTime:objc_opt_class() metadataClass:v9];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v148 = 0u;
  v25 = [obj countByEnumeratingWithState:&v145 objects:v159 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v146;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v146 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v145 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        objc_msgSend_timestamp(v29);
        v32 = v31;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v29 setTimestamp:v32 + v33];
        objc_msgSend_timestamp(v29);
        kdebug_trace();
        [(ARReplaySensorPublic *)self _didOutputSensorData:v29];
        objc_msgSend_timestamp(v29);
        kdebug_trace();
        objc_autoreleasePoolPop(v30);
      }

      v26 = [obj countByEnumeratingWithState:&v145 objects:v159 count:16];
    }

    while (v26);
  }

  v34 = [(MOVReaderInterface *)self->_reader resolvedDeviceMotionStreamName:0];

  [(ARReplaySensorPublic *)self getItemsFromStream:v34 upToMovieTime:objc_opt_class() metadataClass:v9];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v35 = v144 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v141 objects:v158 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v142;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v142 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v141 + 1) + 8 * k);
        v41 = objc_autoreleasePoolPush();
        objc_msgSend_timestamp(v40);
        v43 = v42;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v40 setTimestamp:v43 + v44];
        objc_msgSend_timestamp(v40);
        kdebug_trace();
        [(ARReplaySensorPublic *)self _didOutputSensorData:v40];
        objc_msgSend_timestamp(v40);
        kdebug_trace();
        objc_autoreleasePoolPop(v41);
      }

      v37 = [v35 countByEnumeratingWithState:&v141 objects:v158 count:16];
    }

    while (v37);
  }

  v122 = v35;
  v123 = v14;
  v119 = v4;

  v45 = [(MOVReaderInterface *)self->_reader resolvedLocationStreamName:0];

  v117 = v45;
  [(ARReplaySensorPublic *)self getItemsFromStream:v45 upToMovieTime:objc_opt_class() metadataClass:v9];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v124 = v140 = 0u;
  v129 = [v124 countByEnumeratingWithState:&v137 objects:v157 count:16];
  if (v129)
  {
    v127 = *v138;
    do
    {
      for (m = 0; m != v129; m = m + 1)
      {
        if (*v138 != v127)
        {
          objc_enumerationMutation(v124);
        }

        v47 = *(*(&v137 + 1) + 8 * m);
        v48 = objc_autoreleasePoolPush();
        objc_msgSend_timestamp(v47);
        v50 = v49;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v47 setTimestamp:v50 + v51];
        kdebug_trace();
        objc_msgSend_timestamp(v47);
        v52 = objc_msgSend_location(v47);
        [v52 coordinate];
        v53 = objc_msgSend_location(v47);
        [v53 coordinate];
        v54 = objc_msgSend_location(v47);
        [v54 horizontalAccuracy];
        kdebug_trace();

        [(ARReplaySensorPublic *)self _didOutputSensorData:v47];
        kdebug_trace();
        kdebug_trace();
        objc_autoreleasePoolPop(v48);
      }

      v129 = [v124 countByEnumeratingWithState:&v137 objects:v157 count:16];
    }

    while (v129);
  }

  if (self->_displaySynchronizationMarker)
  {
    data2 = [v119 data];
    if (data2)
    {
      v56 = data2;
      data3 = [v119 data];
      pixelBuffer = [data3 pixelBuffer];

      if (pixelBuffer)
      {
        if (self->_synchronizationMarker)
        {
          goto LABEL_58;
        }

        data4 = [v119 data];
        [data4 imageResolution];
        v61 = v60;
        data5 = [v119 data];
        [data5 imageResolution];
        ARCreateSynchronizationMarker(v61, v63, &self->_synchronizationMarker);

        data6 = [v119 data];
        [data6 imageResolution];
        LODWORD(data4) = v65;
        data7 = [v119 data];
        [data7 imageResolution];
        LODWORD(data5) = v67;
        data8 = [v119 data];
        PixelFormatType = CVPixelBufferGetPixelFormatType([data8 pixelBuffer]);
        LODWORD(data4) = ar_pixelBufferPoolCreateNew(data4, data5, PixelFormatType, &self->_synchronizationMarkerPool);

        if (!data4)
        {
LABEL_48:
          v80 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_synchronizationTransferSession);
          if (!v80)
          {
            goto LABEL_58;
          }

          if (ARShouldUseLogTypeError_onceToken_4 != -1)
          {
            [ARReplaySensorPublic initWithSequenceURL:replayMode:];
          }

          v81 = ARShouldUseLogTypeError_internalOSVersion_4;
          v82 = _ARLogGeneral_1(v80);
          v83 = v82;
          if (v81 == 1)
          {
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              v84 = objc_opt_class();
              v85 = NSStringFromClass(v84);
              *buf = 138543618;
              *&buf[4] = v85;
              v155 = 2048;
              selfCopy4 = self;
              v86 = "%{public}@ <%p>: Could not create transfer session";
              v87 = v83;
              v88 = OS_LOG_TYPE_ERROR;
LABEL_56:
              _os_log_impl(&dword_1C241C000, v87, v88, v86, buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            v89 = objc_opt_class();
            v85 = NSStringFromClass(v89);
            *buf = 138543618;
            *&buf[4] = v85;
            v155 = 2048;
            selfCopy4 = self;
            v86 = "Error: %{public}@ <%p>: Could not create transfer session";
            v87 = v83;
            v88 = OS_LOG_TYPE_INFO;
            goto LABEL_56;
          }

LABEL_58:
          if (self->_displaySynchronizationMarkerFrames >= [(ARReplaySensorPublic *)self imageIndex])
          {
            *buf = 0;
            CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_synchronizationMarkerPool, buf);
            VTPixelTransferSessionTransferImage(self->_synchronizationTransferSession, self->_synchronizationMarker, *buf);
            v90 = *buf;
            data9 = [v119 data];
            [data9 setPixelBuffer:v90];

            CVPixelBufferRelease(*buf);
          }

          goto LABEL_60;
        }

        if (ARShouldUseLogTypeError_onceToken_4 != -1)
        {
          [ARReplaySensorPublic initWithSequenceURL:replayMode:];
        }

        v71 = ARShouldUseLogTypeError_internalOSVersion_4;
        v72 = _ARLogGeneral_1(v70);
        v73 = v72;
        if (v71 == 1)
        {
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v74 = objc_opt_class();
            v75 = NSStringFromClass(v74);
            *buf = 138543618;
            *&buf[4] = v75;
            v155 = 2048;
            selfCopy4 = self;
            v76 = "%{public}@ <%p>: Could not create pixel buffer pool";
            v77 = v73;
            v78 = OS_LOG_TYPE_ERROR;
LABEL_46:
            _os_log_impl(&dword_1C241C000, v77, v78, v76, buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v79 = objc_opt_class();
          v75 = NSStringFromClass(v79);
          *buf = 138543618;
          *&buf[4] = v75;
          v155 = 2048;
          selfCopy4 = self;
          v76 = "Error: %{public}@ <%p>: Could not create pixel buffer pool";
          v77 = v73;
          v78 = OS_LOG_TYPE_INFO;
          goto LABEL_46;
        }

        goto LABEL_48;
      }
    }
  }

LABEL_60:
  allKeys = [v120 allKeys];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __31__ARReplaySensorPublic_advance__block_invoke;
  v135[3] = &unk_1E817C080;
  v93 = v120;
  v136 = v93;
  v94 = [allKeys sortedArrayUsingComparator:v135];

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v130 = v94;
  v95 = [v130 countByEnumeratingWithState:&v131 objects:v153 count:16];
  v96 = v122;
  if (v95)
  {
    v97 = v95;
    v98 = *v132;
    v126 = *MEMORY[0x1E6986948];
    v121 = *MEMORY[0x1E6986950];
    do
    {
      v99 = 0;
      v128 = v97;
      do
      {
        if (*v132 != v98)
        {
          objc_enumerationMutation(v130);
        }

        v100 = *(*(&v131 + 1) + 8 * v99);
        v101 = objc_autoreleasePoolPush();
        v102 = [v93 objectForKeyedSubscript:v100];
        data10 = [v102 data];
        v104 = data10;
        if (data10 && [data10 pixelBuffer])
        {
          v105 = v98;
          v106 = v93;
          [(ARReplaySensorPublic *)self _appendCalibrationData:v104 streamIdentifier:v100];
          [(ARReplaySensorPublic *)self _appendVisionDataToImageData:v104 streamIdentifier:v100];
          [(ARReplaySensorPublic *)self _populateDepthDataForImageData:v104];
          lastObject2 = [v96 lastObject];
          lastObject3 = [v123 lastObject];
          [(ARReplaySensorPublic *)self _populateDeviceOrientationIfNeededOnImageData:v104 fromDeviceOrientationData:lastObject2 accelerometerData:lastObject3 streamIdentifier:v100];

          [ARImageSensor registerSignPostForImageData:v104];
          objc_msgSend_timestamp(v104);
          kdebug_trace();
          cameraType = [v104 cameraType];
          v110 = [cameraType isEqualToString:v126];

          if (v110)
          {
            IsZero = ARMatrix4x3IsZero(*self->_anon_b0, *&self->_anon_b0[16], *&self->_anon_b0[32], *&self->_anon_b0[48]);
            if (IsZero)
            {
              ARWideToUltrawideExtrinsicsForOldRecordings(IsZero, v112);
            }

            v96 = v122;
            v93 = v106;
            [v104 addExtrinsicMatrix:v121 toDeviceType:?];
          }

          else
          {
            v96 = v122;
            v93 = v106;
          }

          v98 = v105;
          [(ARReplaySensorPublic *)self _didOutputSensorData:v104];
          objc_msgSend_timestamp(v104);
          kdebug_trace();
          v97 = v128;
        }

        objc_autoreleasePoolPop(v101);
        ++v99;
      }

      while (v97 != v99);
      v97 = [v130 countByEnumeratingWithState:&v131 objects:v153 count:16];
    }

    while (v97);
  }

  v113 = [(ARReplaySensorPublic *)self sourceTimestampForMovieTimestamp:v9];
  v115 = v114;
  if (ARDeviceSupportsJasper(v113, v116))
  {
    [(ARReplaySensorPublic *)self readAndVendCVADepthTOFsUntil:v115];
  }

  [(ARReplaySensorPublic *)self readAndVendCMDatasUntil:v115];
  [(ARReplaySensorPublic *)self readAndVendCVAUserEventsUntil:v115];
  kdebug_trace();

  getNextWrappedImageDataForReplay = v120;
LABEL_78:
}

uint64_t __31__ARReplaySensorPublic_advance__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 data];
  objc_msgSend_timestamp(v9);
  v11 = v10;
  v12 = [v8 data];
  objc_msgSend_timestamp(v12);
  v14 = v13;

  if (v11 >= v14)
  {
    v16 = [v7 data];
    objc_msgSend_timestamp(v16);
    v18 = v17;
    v19 = [v8 data];
    objc_msgSend_timestamp(v19);
    v15 = v18 > v20;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (void)_populateDeviceOrientationIfNeededOnImageData:(id)data fromDeviceOrientationData:(id)orientationData accelerometerData:(id)accelerometerData streamIdentifier:(id)identifier
{
  dataCopy = data;
  orientationDataCopy = orientationData;
  accelerometerDataCopy = accelerometerData;
  identifierCopy = identifier;
  if (![dataCopy deviceOrientation])
  {
    if (orientationDataCopy)
    {
      deviceMotion = [orientationDataCopy deviceMotion];
      [deviceMotion gravity];
      v16 = v15;
      v18 = v17;
    }

    else
    {
      if (!accelerometerDataCopy)
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        reader = self->_reader;
        if (reader)
        {
          objc_msgSend_transformForStream_(reader);
        }

        cameraPosition = [dataCopy cameraPosition];
        v24[0] = v25;
        v24[1] = v26;
        v24[2] = v27;
        v21 = ARDeviceOrientationForCameraPositionAndVideoTransform(cameraPosition, v24);
        goto LABEL_16;
      }

      [accelerometerDataCopy acceleration];
      v16 = v19;
      v18 = v20;
    }

    if (fabs(v16) <= fabs(v18))
    {
      if (v18 <= 0.0)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    else if (v16 <= 0.0)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

LABEL_16:
    [dataCopy setDeviceOrientation:v21];
  }
}

- (id)_populateCalibrationStream:(id)stream timestamp:(double)timestamp
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableDictionary *)self->_calibrationBuffer objectForKeyedSubscript:stream];
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:*MEMORY[0x1E698BEE8]])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues = [(NSMutableDictionary *)self->_calibrationBuffer allValues];
    v8 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          lastObject = [v13 lastObject];
          objc_msgSend_timestamp(lastObject);
          if (v11 <= v15)
          {
            lastObject2 = [v13 lastObject];
            objc_msgSend_timestamp(lastObject2);
            v11 = v17;
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v18 = v11 + 0.00000011920929;
    if (v11 + 0.00000011920929 <= timestamp)
    {
      while (1)
      {
        [v6 removeAllObjects];
        grabNextCVACameraCalibrationData = [(MOVReaderInterface *)self->_reader grabNextCVACameraCalibrationData];
        if (![grabNextCVACameraCalibrationData count])
        {
          break;
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v20 = grabNextCVACameraCalibrationData;
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v33;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v33 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v32 + 1) + 8 * j);
              calibrationBuffer = self->_calibrationBuffer;
              streamID = [v25 streamID];
              v28 = [(NSMutableDictionary *)calibrationBuffer objectForKeyedSubscript:streamID];
              [v28 addObject:v25];

              objc_msgSend_timestamp(v25);
              if (v11 <= v29)
              {
                objc_msgSend_timestamp(v25);
                v11 = v30;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v22);
        }

        v18 = v11 + 0.00000011920929;
        if (v11 + 0.00000011920929 > timestamp)
        {
          goto LABEL_27;
        }
      }
    }
  }

LABEL_27:

  return v6;
}

- (id)_cameraCalibrationDataForStream:(id)stream timestamp:(double)timestamp
{
  streamCopy = stream;
  v7 = objc_autoreleasePoolPush();
  v8 = [(ARReplaySensorPublic *)self _populateCalibrationStream:streamCopy timestamp:timestamp];
  if (![v8 count])
  {
    goto LABEL_4;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__ARReplaySensorPublic__cameraCalibrationDataForStream_timestamp___block_invoke;
  v16[3] = &__block_descriptor_40_e41_B32__0__CVACameraCalibrationData_8Q16_B24l;
  *&v16[4] = timestamp;
  v9 = [v8 indexOfObjectPassingTest:v16];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 removeAllObjects];
LABEL_4:

    objc_autoreleasePoolPop(v7);
    v10 = 0;
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v13 = v9;
  v10 = [v8 objectAtIndexedSubscript:v9];
  [v8 removeObjectsInRange:{0, v13}];
  objc_msgSend_timestamp(v10);
  v15 = v14 + -0.00000011920929;

  objc_autoreleasePoolPop(v7);
  if (v15 > timestamp)
  {
    goto LABEL_5;
  }

  v10 = v10;
  v11 = v10;
LABEL_6:

  return v11;
}

- (void)_appendVisionDataToImageData:(id)data streamIdentifier:(id)identifier
{
  v71 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  if (self->_shouldReplayVisionData)
  {
    v8 = [(NSMutableDictionary *)self->_featureBuffers objectForKeyedSubscript:identifierCopy];
    v9 = v8;
    v53 = identifierCopy;
    if (v8)
    {
      v52 = dataCopy;
      objc_msgSend_timestamp(dataCopy);
      v11 = v10;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      allValues = [(NSMutableDictionary *)self->_featureBuffers allValues];
      v13 = [allValues countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v60;
        v16 = 0.0;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v60 != v15)
            {
              objc_enumerationMutation(allValues);
            }

            v18 = *(*(&v59 + 1) + 8 * i);
            lastObject = [v18 lastObject];
            objc_msgSend_timestamp(lastObject);
            if (v16 <= v20)
            {
              lastObject2 = [v18 lastObject];
              objc_msgSend_timestamp(lastObject2);
              v16 = v22;
            }
          }

          v14 = [allValues countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 0.0;
      }

      while (1)
      {
        v32 = v16 + 0.00000011920929;
        if (v16 + 0.00000011920929 > v11)
        {
          break;
        }

        v33 = objc_autoreleasePoolPush();
        [v9 removeAllObjects];
        grabNextFeatureBuffer = [(MOVReaderInterface *)self->_reader grabNextFeatureBuffer];
        if (![grabNextFeatureBuffer count])
        {

          objc_autoreleasePoolPop(v33);
          break;
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v35 = grabNextFeatureBuffer;
        v36 = [v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v56;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v56 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v55 + 1) + 8 * j);
              featureBuffers = self->_featureBuffers;
              sourceStreamID = [v40 sourceStreamID];
              v43 = [(NSMutableDictionary *)featureBuffers objectForKeyedSubscript:sourceStreamID];
              [v43 addObject:v40];

              objc_msgSend_timestamp(v40);
              if (v16 <= v44)
              {
                objc_msgSend_timestamp(v40);
                v16 = v45;
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v37);
        }

        objc_autoreleasePoolPop(v33);
      }

      dataCopy = v52;
      if ([v9 count])
      {
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __70__ARReplaySensorPublic__appendVisionDataToImageData_streamIdentifier___block_invoke;
        v54[3] = &__block_descriptor_40_e33_B32__0__CVAFeatureBuffer_8Q16_B24l;
        *&v54[4] = v11;
        v47 = [v9 indexOfObjectPassingTest:v54];
        if (v47 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 removeAllObjects];
        }

        else
        {
          v48 = v47;
          v49 = [v9 objectAtIndexedSubscript:v47];
          [v9 removeObjectsInRange:{0, v48}];
          objc_msgSend_timestamp(v49);
          if (v11 >= v50 + -0.00000011920929)
          {
            getPixelBufferCopy = [v49 getPixelBufferCopy];
            [v52 setVisionData:getPixelBufferCopy];
            CVPixelBufferRelease(getPixelBufferCopy);
          }
        }
      }

      goto LABEL_43;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic _appendVisionDataToImageData:streamIdentifier:];
    }

    v23 = ARShouldUseLogTypeError_internalOSVersion_4;
    v24 = _ARLogGeneral_1(v8);
    v25 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        NSStringFromClass(v26);
        v28 = v27 = dataCopy;
        *buf = 138543874;
        v66 = v28;
        v67 = 2048;
        selfCopy2 = self;
        v69 = 2114;
        v70 = identifierCopy;
        v29 = "%{public}@ <%p>: Missing feature buffers queue for stream '%{public}@', not appending vision data";
        v30 = v25;
        v31 = OS_LOG_TYPE_ERROR;
LABEL_34:
        _os_log_impl(&dword_1C241C000, v30, v31, v29, buf, 0x20u);

        dataCopy = v27;
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      NSStringFromClass(v46);
      v28 = v27 = dataCopy;
      *buf = 138543874;
      v66 = v28;
      v67 = 2048;
      selfCopy2 = self;
      v69 = 2114;
      v70 = identifierCopy;
      v29 = "Error: %{public}@ <%p>: Missing feature buffers queue for stream '%{public}@', not appending vision data";
      v30 = v25;
      v31 = OS_LOG_TYPE_INFO;
      goto LABEL_34;
    }

LABEL_43:
    identifierCopy = v53;
  }
}

- (void)_appendCalibrationData:(id)data streamIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  if (ARDeviceSupportsJasper(identifierCopy, v9))
  {
    isBackUltraWide = [dataCopy isBackUltraWide];
    v11 = 256;
    if (isBackUltraWide)
    {
      v11 = 320;
    }

    v12 = 272;
    if (isBackUltraWide)
    {
      v12 = 336;
    }

    v13 = 288;
    if (isBackUltraWide)
    {
      v13 = 352;
    }

    v14 = 304;
    if (isBackUltraWide)
    {
      v14 = 368;
    }

    [dataCopy addExtrinsicMatrix:*MEMORY[0x1E6986930] toDeviceType:{*(&self->super.isa + v11), *(&self->super.isa + v12), *(&self->super.isa + v13), *(&self->super.isa + v14)}];
  }

  objc_msgSend_timestamp(dataCopy);
  v15 = [(ARReplaySensorPublic *)self _cameraCalibrationDataForStream:identifierCopy timestamp:?];

  if (v15)
  {
    calibrationData = [v15 calibrationData];
    [dataCopy setCalibrationData:calibrationData];

    calibrationData2 = [dataCopy calibrationData];

    if (!calibrationData2)
    {
      [dataCopy extrinsicMatrixToDeviceType:*MEMORY[0x1E6986930]];
      [v15 setExtrinsicMatrix:?];
      v18 = [MEMORY[0x1E698C160] ar_initWithCVACameraCalibrationData:v15];
      [dataCopy setAdCameraCalibration:v18];

      adCameraCalibration = [dataCopy adCameraCalibration];

      if (!adCameraCalibration)
      {
        v21 = _ARLogSensor_5(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *v47 = 138543618;
          *&v47[4] = v23;
          *&v47[12] = 2048;
          *&v47[14] = self;
          _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CVACameraCalibrationData from recording is missing some info.", v47, 0x16u);
        }
      }
    }
  }

  calibrationData3 = [dataCopy calibrationData];
  if (calibrationData3)
  {
    goto LABEL_18;
  }

  adCameraCalibration2 = [dataCopy adCameraCalibration];

  if (!adCameraCalibration2)
  {
    v27 = _ARLogSensor_5(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *v47 = 138543618;
      *&v47[4] = v29;
      *&v47[12] = 2048;
      *&v47[14] = self;
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing calibration from recording, attempting to use hardcoded calibrations", v47, 0x16u);
    }

    cameraType = [dataCopy cameraType];
    v31 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType);

    if (v31)
    {
      deviceString = [(MOVReaderInterface *)self->_reader deviceString];
      v33 = deviceString;
      if (deviceString && (-[MOVReaderInterface deviceString](self->_reader, "deviceString"), v4 = objc_claimAutoreleasedReturnValue(), deviceString = [v4 isEqualToString:@"ST2"], deviceString))
      {
        calibrationData3 = ARST2JasperWideCameraCalibration(deviceString);
      }

      else
      {
        calibrationData3 = ARJasperWideCameraCalibration(deviceString);
        if (!v33)
        {
          goto LABEL_29;
        }
      }

LABEL_29:
      [calibrationData3 cameraToPlatformTransform];
      [dataCopy addExtrinsicMatrix:*MEMORY[0x1E6986930] toDeviceType:?];
      v34 = [MEMORY[0x1E698C160] ar_calibrationWithImageData:dataCopy adCalibrationData:calibrationData3];
      v35 = v34;
      if (v34)
      {
        v36 = dataCopy;
        v37 = v35;
LABEL_40:
        [v36 setAdCameraCalibration:{v37, *v47, *&v47[8], v48}];

LABEL_18:
        goto LABEL_26;
      }

      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v38 = ARShouldUseLogTypeError_internalOSVersion_4;
      v39 = _ARLogGeneral_1(v34);
      v40 = v39;
      if (v38 == 1)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *v47 = 138543618;
          *&v47[4] = v42;
          *&v47[12] = 2048;
          *&v47[14] = self;
          v43 = "%{public}@ <%p>: failed to create image adjusted calibration data";
          v44 = v40;
          v45 = OS_LOG_TYPE_ERROR;
LABEL_38:
          _os_log_impl(&dword_1C241C000, v44, v45, v43, v47, 0x16u);
        }
      }

      else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v46 = objc_opt_class();
        v42 = NSStringFromClass(v46);
        *v47 = 138543618;
        *&v47[4] = v42;
        *&v47[12] = 2048;
        *&v47[14] = self;
        v43 = "Error: %{public}@ <%p>: failed to create image adjusted calibration data";
        v44 = v40;
        v45 = OS_LOG_TYPE_INFO;
        goto LABEL_38;
      }

      v36 = dataCopy;
      v37 = calibrationData3;
      goto LABEL_40;
    }
  }

LABEL_26:
}

- (void)_populateDepthDataForImageData:(id)data
{
  v48 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self->_shouldReplayPearlDepthData)
  {
    v5 = self->_depthContainer;
    objc_msgSend_timestamp(dataCopy);
    v7 = v6;
    objc_msgSend_timestamp(v5);
    if (v8 + 0.00000011920929 <= v7)
    {
      do
      {
        v9 = objc_autoreleasePoolPush();
        grabNextDepthIR = [(MOVReaderInterface *)self->_reader grabNextDepthIR];
        if (![grabNextDepthIR count])
        {

          objc_autoreleasePoolPop(v9);
          goto LABEL_8;
        }

        lastObject = [grabNextDepthIR lastObject];

        objc_autoreleasePoolPop(v9);
        objc_msgSend_timestamp(lastObject);
        v5 = lastObject;
      }

      while (v12 + 0.00000011920929 <= v7);
      if (lastObject)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_8:
    lastObject = v5;
    if (!v5)
    {
LABEL_35:

      goto LABEL_36;
    }

LABEL_9:
    objc_msgSend_timestamp(lastObject);
    if (v7 < v13 + -0.00000011920929)
    {
      objc_storeStrong(&self->_depthContainer, lastObject);
      goto LABEL_35;
    }

    depthContainer = self->_depthContainer;
    self->_depthContainer = 0;

    dataBuffer = [lastObject dataBuffer];
    attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
    v16 = CVBufferCopyAttachment(dataBuffer, *MEMORY[0x1E69914F0], &attachmentMode);
    v17 = v16;
    if (v16)
    {
      depthFloat32PixelBuffer = self->_depthFloat32PixelBuffer;
      if (!depthFloat32PixelBuffer)
      {
        v27 = *MEMORY[0x1E695E480];
        Width = CVPixelBufferGetWidth(dataBuffer);
        Height = CVPixelBufferGetHeight(dataBuffer);
        v30 = CVPixelBufferCreate(v27, Width, Height, 0x66646570u, 0, &self->_depthFloat32PixelBuffer);
        if (v30)
        {
          v31 = v30;
          if (ARShouldUseLogTypeError_onceToken_4 != -1)
          {
            [ARReplaySensorPublic initWithSequenceURL:replayMode:];
          }

          v32 = ARShouldUseLogTypeError_internalOSVersion_4;
          v33 = _ARLogGeneral_1(v30);
          v19 = v33;
          if (v32 == 1)
          {
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_33;
            }

            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138543874;
            v43 = v35;
            v44 = 2048;
            selfCopy4 = self;
            v46 = 1024;
            v47 = v31;
            v36 = "%{public}@ <%p>: Failed to create float32-formatted pixel buffer for transcoding depth frames, CVReturn=%d";
            v37 = v19;
            v38 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              goto LABEL_33;
            }

            v40 = objc_opt_class();
            v35 = NSStringFromClass(v40);
            *buf = 138543874;
            v43 = v35;
            v44 = 2048;
            selfCopy4 = self;
            v46 = 1024;
            v47 = v31;
            v36 = "Error: %{public}@ <%p>: Failed to create float32-formatted pixel buffer for transcoding depth frames, CVReturn=%d";
            v37 = v19;
            v38 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v37, v38, v36, buf, 0x1Cu);

          goto LABEL_33;
        }

        depthFloat32PixelBuffer = self->_depthFloat32PixelBuffer;
      }

      if (!ARConvertFixedPointUnsigned13_3ToDepthFloat32Buffer(dataBuffer, depthFloat32PixelBuffer))
      {
LABEL_34:

        goto LABEL_35;
      }

      v19 = [objc_alloc(MEMORY[0x1E6987198]) initWithPixelBuffer:self->_depthFloat32PixelBuffer depthMetadataDictionary:v17];
      [dataCopy setDepthData:v19];
LABEL_33:

      goto LABEL_34;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_4;
    v21 = _ARLogGeneral_1(v16);
    v19 = v21;
    if (v20 == 1)
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543618;
      v43 = v23;
      v44 = 2048;
      selfCopy4 = self;
      v24 = "%{public}@ <%p>: Failed to retrieve depth metadata dictionary from depth pixel buffer's attachments";
      v25 = v19;
      v26 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      v39 = objc_opt_class();
      v23 = NSStringFromClass(v39);
      *buf = 138543618;
      v43 = v23;
      v44 = 2048;
      selfCopy4 = self;
      v24 = "Error: %{public}@ <%p>: Failed to retrieve depth metadata dictionary from depth pixel buffer's attachments";
      v25 = v19;
      v26 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v25, v26, v24, buf, 0x16u);

    goto LABEL_33;
  }

LABEL_36:
}

- (void)readAndVendCMDatasUntil:(double)until
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:*MEMORY[0x1E698BEE0]])
  {
    lastObject = [(NSMutableArray *)self->_cmDataBuffer lastObject];
    objc_msgSend_timestamp(lastObject);
    v7 = v6;
    while (1)
    {

      if (v7 >= until)
      {
        goto LABEL_16;
      }

      grabNextCMData = [(MOVReaderInterface *)self->_reader grabNextCMData];
      if (![grabNextCMData count])
      {
        break;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      lastObject = grabNextCMData;
      v9 = [lastObject countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(lastObject);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            objc_msgSend_timestamp(v13);
            if (v14 > v7)
            {
              [(NSMutableArray *)self->_cmDataBuffer addObject:v13];
              objc_msgSend_timestamp(v13);
              v7 = v15;
            }
          }

          v10 = [lastObject countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v10);
      }
    }

LABEL_16:
    if (![(NSMutableArray *)self->_cmDataBuffer count])
    {
      return;
    }

    *&v16 = 138543874;
    v34 = v16;
    while (1)
    {
      firstObject = [(NSMutableArray *)self->_cmDataBuffer firstObject];
      objc_msgSend_timestamp(firstObject);
      if (v18 > until)
      {

        return;
      }

      [(NSMutableArray *)self->_cmDataBuffer removeObjectAtIndex:0];
      if (([firstObject isSent] & 1) == 0)
      {
        break;
      }

LABEL_31:

      if (![(NSMutableArray *)self->_cmDataBuffer count])
      {
        return;
      }
    }

    additionalData = [firstObject additionalData];
    v20 = MEMORY[0x1E696ACD0];
    v21 = objc_opt_class();
    v35 = 0;
    v22 = [v20 ar_unarchivedObjectOfClass:v21 fromData:additionalData error:&v35];
    v23 = v35;
    v24 = v23;
    if (v23)
    {
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v25 = ARShouldUseLogTypeError_internalOSVersion_4;
      v26 = _ARLogSensor_5(v23);
      session = v26;
      if (v25 == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = v34;
          v41 = v29;
          v42 = 2048;
          selfCopy2 = self;
          v44 = 2112;
          v45 = v24;
          v30 = session;
          v31 = OS_LOG_TYPE_ERROR;
          v32 = "%{public}@ <%p>: Replay sensor could not decode collaboration data: %@";
LABEL_29:
          _os_log_impl(&dword_1C241C000, v30, v31, v32, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v29 = NSStringFromClass(v33);
        *buf = v34;
        v41 = v29;
        v42 = 2048;
        selfCopy2 = self;
        v44 = 2112;
        v45 = v24;
        v30 = session;
        v31 = OS_LOG_TYPE_INFO;
        v32 = "Error: %{public}@ <%p>: Replay sensor could not decode collaboration data: %@";
        goto LABEL_29;
      }
    }

    else
    {
      session = [(ARReplaySensorPublic *)self session];
      [session updateWithCollaborationData:v22];
    }

    goto LABEL_31;
  }
}

- (void)readAndVendCVADepthTOFsUntil:(double)until
{
  v43 = *MEMORY[0x1E69E9840];
  lastObject = [(NSMutableArray *)self->_cvaDepthTOFBuffer lastObject];
  objc_msgSend_timestamp(lastObject);
  v7 = v6;
  while (1)
  {

    if (v7 >= until)
    {
      break;
    }

    grabNextDepthTOF = [(MOVReaderInterface *)self->_reader grabNextDepthTOF];
    if (![grabNextDepthTOF count])
    {

      break;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    lastObject = grabNextDepthTOF;
    v9 = [lastObject countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(lastObject);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          objc_msgSend_timestamp(v13);
          if (v14 > v7)
          {
            [(NSMutableArray *)self->_cvaDepthTOFBuffer addObject:v13];
            objc_msgSend_timestamp(v13);
            v7 = v15;
          }
        }

        v10 = [lastObject countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v10);
    }
  }

  if (![(NSMutableArray *)self->_cvaDepthTOFBuffer count])
  {
    return;
  }

  while (1)
  {
    v16 = objc_autoreleasePoolPush();
    firstObject = [(NSMutableArray *)self->_cvaDepthTOFBuffer firstObject];
    objc_msgSend_timestamp(firstObject);
    if (v18 > until)
    {
      break;
    }

    [(NSMutableArray *)self->_cvaDepthTOFBuffer removeObjectAtIndex:0];
    projectorMode = [firstObject projectorMode];
    if ((projectorMode - 1) >= 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = projectorMode;
    }

    v21 = [ARPointCloudSensorData alloc];
    pointCloud = [firstObject pointCloud];
    objc_msgSend_timestamp(firstObject);
    v23 = [(ARPointCloudSensorData *)v21 initWithPointCloudData:pointCloud projectorMode:v20 timestamp:?];

    if (!v23)
    {
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v25 = ARShouldUseLogTypeError_internalOSVersion_4;
      v26 = _ARLogSensor_5(v24);
      v27 = v26;
      if (v25 == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138543618;
          v39 = v29;
          v40 = 2048;
          selfCopy2 = self;
          v30 = v27;
          v31 = OS_LOG_TYPE_ERROR;
          v32 = "%{public}@ <%p>: Replay sensor couldn't not decode PointCloudSensor data";
          goto LABEL_29;
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v29 = NSStringFromClass(v33);
        *buf = 138543618;
        v39 = v29;
        v40 = 2048;
        selfCopy2 = self;
        v30 = v27;
        v31 = OS_LOG_TYPE_INFO;
        v32 = "Error: %{public}@ <%p>: Replay sensor couldn't not decode PointCloudSensor data";
LABEL_29:
        _os_log_impl(&dword_1C241C000, v30, v31, v32, buf, 0x16u);
      }

      goto LABEL_31;
    }

    [ARDepthSensor registerSignPostForPointCloudData:v23];
    [(ARReplaySensorPublic *)self _didOutputSensorData:v23];
LABEL_31:

    objc_autoreleasePoolPop(v16);
    if (![(NSMutableArray *)self->_cvaDepthTOFBuffer count])
    {
      return;
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (void)readAndVendCVAUserEventsUntil:(double)until
{
  v53 = *MEMORY[0x1E69E9840];
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:*MEMORY[0x1E698BF08]])
  {
    lastObject = [(NSMutableArray *)self->_userEventBuffer lastObject];
    objc_msgSend_timestamp(lastObject);
    v7 = v6;
    while (1)
    {

      if (v7 >= until)
      {
        goto LABEL_16;
      }

      grabNextUserEvent = [(MOVReaderInterface *)self->_reader grabNextUserEvent];
      if (![grabNextUserEvent count])
      {
        break;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      lastObject = grabNextUserEvent;
      v9 = [lastObject countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v43;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v43 != v11)
            {
              objc_enumerationMutation(lastObject);
            }

            v13 = *(*(&v42 + 1) + 8 * i);
            objc_msgSend_timestamp(v13);
            if (v14 > v7)
            {
              [(NSMutableArray *)self->_userEventBuffer addObject:v13];
              objc_msgSend_timestamp(v13);
              v7 = v15;
            }
          }

          v10 = [lastObject countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v10);
      }
    }

LABEL_16:
    if (![(NSMutableArray *)self->_userEventBuffer count])
    {
      return;
    }

    *&v16 = 138543874;
    v39 = v16;
    while (1)
    {
      firstObject = [(NSMutableArray *)self->_userEventBuffer firstObject];
      objc_msgSend_timestamp(firstObject);
      if (v18 > until)
      {

        return;
      }

      [(NSMutableArray *)self->_userEventBuffer removeObjectAtIndex:0];
      if ([firstObject eventType] == 4)
      {
        break;
      }

      if ([firstObject eventType] == 13)
      {
        anchorData = [firstObject anchorData];
        v33 = MEMORY[0x1E696ACD0];
        v34 = objc_opt_class();
        v40 = 0;
        v22 = [v33 ar_unarchivedObjectOfClass:v34 fromData:anchorData error:&v40];
        v35 = v40;
        v24 = v35;
        if (!v35)
        {
          session = [(ARReplaySensorPublic *)self session];
          [session removeAnchor:v22];
          goto LABEL_40;
        }

        if (ARShouldUseLogTypeError_onceToken_4 != -1)
        {
          [ARReplaySensorPublic initWithSequenceURL:replayMode:];
        }

        v36 = ARShouldUseLogTypeError_internalOSVersion_4;
        v37 = _ARLogSensor_5(v35);
        session = v37;
        if (v36 == 1)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
LABEL_25:
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            *buf = v39;
            v47 = v29;
            v48 = 2048;
            selfCopy2 = self;
            v50 = 2112;
            v51 = v24;
            v30 = session;
            v31 = OS_LOG_TYPE_ERROR;
            v32 = "%{public}@ <%p>: Replay sensor could not decode anchor data: %@";
            goto LABEL_39;
          }

LABEL_40:

          goto LABEL_41;
        }

        if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

LABEL_38:
        v38 = objc_opt_class();
        v29 = NSStringFromClass(v38);
        *buf = v39;
        v47 = v29;
        v48 = 2048;
        selfCopy2 = self;
        v50 = 2112;
        v51 = v24;
        v30 = session;
        v31 = OS_LOG_TYPE_INFO;
        v32 = "Error: %{public}@ <%p>: Replay sensor could not decode anchor data: %@";
LABEL_39:
        _os_log_impl(&dword_1C241C000, v30, v31, v32, buf, 0x20u);

        goto LABEL_40;
      }

LABEL_41:

      if (![(NSMutableArray *)self->_userEventBuffer count])
      {
        return;
      }
    }

    anchorData = [firstObject anchorData];
    v20 = MEMORY[0x1E696ACD0];
    v21 = objc_opt_class();
    v41 = 0;
    v22 = [v20 ar_unarchivedObjectOfClass:v21 fromData:anchorData error:&v41];
    v23 = v41;
    v24 = v23;
    if (!v23)
    {
      session = [(ARReplaySensorPublic *)self session];
      [session addAnchor:v22];
      goto LABEL_40;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v25 = ARShouldUseLogTypeError_internalOSVersion_4;
    v26 = _ARLogSensor_5(v23);
    session = v26;
    if (v25 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }
}

- (id)keyedArchiveConverter:(Class)converter
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:converter];
  v5 = [(ARReplaySensorPublic *)self keyedArchiveConverterForClasses:v4];

  return v5;
}

- (id)keyedArchiveConverterForClasses:(id)classes
{
  classesCopy = classes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ARReplaySensorPublic_keyedArchiveConverterForClasses___block_invoke;
  v8[3] = &unk_1E817C0E8;
  v9 = classesCopy;
  selfCopy = self;
  v5 = classesCopy;
  v6 = MEMORY[0x1C691B4C0](v8);

  return v6;
}

id __56__ARReplaySensorPublic_keyedArchiveConverterForClasses___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ARApprovedDecoderClasses(v3);
  v5 = [v4 mutableCopy];

  [v5 unionSet:*(a1 + 32)];
  v23 = 0;
  v6 = [MEMORY[0x1E696ACD0] ar_unarchivedObjectOfClasses:v5 fromData:v3 error:&v23];

  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v9 = ARShouldUseLogTypeError_internalOSVersion_4;
    v10 = _ARLogSensor_5(v7);
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = *(a1 + 32);
        v14 = *(a1 + 40);
        *buf = 138544130;
        v25 = v13;
        v26 = 2048;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v8;
        v16 = "%{public}@ <%p>: Replay sensor could not unpack %@, %@";
        v17 = v11;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v13 = NSStringFromClass(v19);
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138544130;
      v25 = v13;
      v26 = 2048;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v8;
      v16 = "Error: %{public}@ <%p>: Replay sensor could not unpack %@, %@";
      v17 = v11;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  return v6;
}

- (id)metadataWrapperConverter:(Class)converter
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__ARReplaySensorPublic_metadataWrapperConverter___block_invoke;
  v5[3] = &unk_1E817C110;
  v5[4] = self;
  v5[5] = converter;
  v3 = MEMORY[0x1C691B4C0](v5, a2);

  return v3;
}

id __49__ARReplaySensorPublic_metadataWrapperConverter___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithMetadataWrapper:v4];

  if (v5)
  {
    v7 = v5;
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_4 != -1)
  {
    [ARReplaySensorPublic _appendVisionDataToImageData:streamIdentifier:];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_4;
  v9 = _ARLogSensor_5(v6);
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v22 = 138543874;
      v23 = v12;
      v24 = 2048;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v15 = "%{public}@ <%p>: Replay sensor could not unpack %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v16, v17, v15, &v22, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v12 = NSStringFromClass(v18);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = 138543874;
    v23 = v12;
    v24 = 2048;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    v15 = "Error: %{public}@ <%p>: Replay sensor could not unpack %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

LABEL_12:

  return v5;
}

- (id)peekNextWrappedImageDataForAllRequiredStreams
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_videoStreamsToReplay;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForStreamIdentifier:*(*(&v11 + 1) + 8 * v7++), v11];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  nextWrappedImageDataForStreamIdentifierMap = self->_nextWrappedImageDataForStreamIdentifierMap;

  return nextWrappedImageDataForStreamIdentifierMap;
}

- (id)peekNextWrappedImageDataForStreamIdentifier:(id)identifier
{
  v78 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap objectForKeyedSubscript:identifierCopy];

  if (v5)
  {
    lastObject = [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap objectForKeyedSubscript:identifierCopy];
    goto LABEL_44;
  }

  v75 = **&MEMORY[0x1E6960CC0];
  reader = self->_reader;
  v74 = 0;
  v8 = [(MOVReaderInterface *)reader copyNextFrameForStream:identifierCopy timestamp:&v75 error:&v74];
  v9 = v74;
  v10 = v9;
  if (v8)
  {
    time = v75;
    Seconds = CMTimeGetSeconds(&time);
    v12 = identifierCopy;
    v13 = v12;
    if ([(NSSet *)self->_availableVideoStreams count]== 1)
    {
      v13 = v12;
      if (![(NSSet *)self->_availableMetadataStreams containsObject:v12])
      {
        v13 = @"mdta/com.apple.arkit.arimagedata";
      }
    }

    v14 = [(ARReplaySensorPublic *)self keyedArchiveConverter:objc_opt_class()];
    v15 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:v13 upToMovieTime:v14 converter:Seconds];
    lastObject = [v15 lastObject];

    if (!lastObject)
    {
      v73 = v10;
      lastObject = objc_opt_new();
      v16 = CVBufferCopyAttachments(v8, kCVAttachmentMode_ShouldPropagate);
      [lastObject setTimestamp:Seconds];
      v17 = [[ARImageData alloc] initWithDictionary:v16];
      v18 = AVCaptureDeviceTypeFromStreamIdentifier(v12);
      [(ARImageData *)v17 setCameraType:v18];

      [(ARImageData *)v17 setCameraPosition:AVCaptureDevicePositionFromStreamIdentifier(v12)];
      [(ARImageData *)v17 setCaptureFramesPerSecond:llround(self->_nominalFrameRate)];
      if (self->_usingST2Recording && (v19 = *MEMORY[0x1E6990D40], [(__CFDictionary *)v16 objectForKey:*MEMORY[0x1E6990D40]], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        v21 = [(__CFDictionary *)v16 objectForKey:v19];

        v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6990FC8]];
        v23 = v22;
        if (v22)
        {
          [v22 doubleValue];
          [(ARImageData *)v17 setExposureDuration:?];
        }

        v72 = v23;
        [(ARImageData *)v17 cameraIntrinsics];
        if (ARMatrix3x3IsZero(v24, v25, v26))
        {
          [(ARImageData *)v17 cameraType];
          v28 = v27 = v21;
          v29 = *MEMORY[0x1E6986948];

          _ZF = v28 == v29;
          v21 = v27;
          if (_ZF)
          {
            v31 = [v27 objectForKey:*MEMORY[0x1E6991150]];
            if (v31)
            {
              v70 = v31;
              v32 = [v31 objectForKeyedSubscript:@"Width"];
              intValue = [v32 intValue];

              v34 = (intValue / 640.0);
              *&v35 = v34 * 245.391312;
              v36 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_n_f64(xmmword_1C25C84D0, v34)));
              *&v37 = v35;
              LODWORD(v38) = 0;
              HIDWORD(v38) = v35;
              __asm { FMOV            V3.2S, #1.0 }

              v43 = _ARLogSensor_5([(ARImageData *)v17 setCameraIntrinsics:v37, v38, v36]);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v44 = objc_opt_class();
                v45 = NSStringFromClass(v44);
                LODWORD(time.value) = 138543874;
                *(&time.value + 4) = v45;
                LOWORD(time.flags) = 2048;
                *(&time.flags + 2) = self;
                HIWORD(time.epoch) = 2048;
                v77 = v17;
                _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Falling back to hardcoded intrinsics for UW for %p.", &time, 0x20u);
              }

              v21 = v27;
              v31 = v70;
            }
          }
        }

        v46 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6990EC8]];
        v47 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6990ED0]];
        v48 = v47;
        if (v46 && v47)
        {
          [v46 floatValue];
          v50 = v49;
          [v48 floatValue];
          *&v52 = log2f(v50 / v51);
          [(ARImageData *)v17 setExposureTargetOffset:v52];
        }

        v69 = v48;
        v71 = v46;
        v53 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6991048]];
        v54 = v53;
        if (v53)
        {
          [v53 floatValue];
          [(ARImageData *)v17 setISO:?];
        }

        v55 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69910F8]];
        v56 = v55;
        if (v55)
        {
          [v55 floatValue];
          [(ARImageData *)v17 setSignalToNoiseRatio:?];
        }
      }

      else
      {
        v21 = v16;
      }

      [lastObject setData:v17];

      v10 = v73;
    }

    data = [lastObject data];
    [data setPixelBuffer:v8];

    v65 = CACurrentMediaTime();
    data2 = [lastObject data];
    [data2 setCurrentCaptureTimestamp:v65];

    CVPixelBufferRelease(v8);
    [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap setObject:lastObject forKeyedSubscript:v12];
    goto LABEL_42;
  }

  if (v9)
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v57 = ARShouldUseLogTypeError_internalOSVersion_4;
    v58 = _ARLogGeneral_1(v9);
    v13 = v58;
    if (v57 == 1)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        LODWORD(time.value) = 138543874;
        *(&time.value + 4) = v60;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = self;
        HIWORD(time.epoch) = 2112;
        v77 = v10;
        v61 = "%{public}@ <%p>: Could not copyNextFrameForStream: %@";
        v62 = v13;
        v63 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v62, v63, v61, &time, 0x20u);
      }
    }

    else if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v67 = objc_opt_class();
      v60 = NSStringFromClass(v67);
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = v60;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2112;
      v77 = v10;
      v61 = "Error: %{public}@ <%p>: Could not copyNextFrameForStream: %@";
      v62 = v13;
      v63 = OS_LOG_TYPE_INFO;
      goto LABEL_40;
    }

    lastObject = 0;
LABEL_42:

    goto LABEL_43;
  }

  lastObject = 0;
LABEL_43:

LABEL_44:

  return lastObject;
}

- (id)getNextWrappedImageDataForReplay
{
  v40 = *MEMORY[0x1E69E9840];
  peekNextWrappedImageDataForAllRequiredStreams = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
  if ([(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap count])
  {
    [(ARReplaySensorPublic *)self currentTime];
    v5 = v4;
    v6 = [(ARReplaySensorPublic *)self imageDataToReplayForTimestamp:?];
    v7 = [v6 mutableCopy];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v28;
      *&v10 = 138544130;
      v25 = v10;
      v26 = allKeys;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap setObject:0 forKeyedSubscript:v14, v25];
          if (self->_replayMode)
          {
            v15 = 1;
          }

          else
          {
            v16 = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForStreamIdentifier:v14];
            if (!v16)
            {
              goto LABEL_17;
            }

            v17 = 0;
            do
            {
              v18 = objc_msgSend_timestamp(v16);
              if (v19 > v5)
              {
                break;
              }

              [v7 setObject:v16 forKeyedSubscript:v14];
              [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap setObject:0 forKeyedSubscript:v14];
              v20 = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForStreamIdentifier:v14];

              ++v17;
              v16 = v20;
            }

            while (v20);
            if (v17)
            {
              v21 = _ARLogSensor_5(v18);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = objc_opt_class();
                v23 = NSStringFromClass(v22);
                *buf = v25;
                v32 = v23;
                v33 = 2048;
                selfCopy = self;
                v35 = 1024;
                v36 = v17;
                v37 = 2112;
                v38 = v14;
                _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Skipped %u replay frames of type: %@", buf, 0x26u);

                allKeys = v26;
              }

              v15 = v17 + 1;
            }

            else
            {
LABEL_17:
              v15 = 1;
            }
          }

          if ([v14 isEqualToString:self->_mainVideoStreamIdentifier])
          {
            [(ARReplaySensorPublic *)self setImageIndex:[(ARReplaySensorPublic *)self imageIndex]+ v15];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter
{
  v5 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:stream upToMovieTime:converter converter:time];
  v6 = [v5 valueForKey:@"data"];

  return v6;
}

- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time metadataClass:(Class)class
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ARReplaySensorPublic_getItemsFromStream_upToMovieTime_metadataClass___block_invoke;
  v8[3] = &unk_1E817C138;
  v8[4] = self;
  v8[5] = class;
  v5 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:stream upToMovieTime:v8 withBlock:time];
  v6 = [v5 valueForKey:@"data"];

  return v6;
}

id __71__ARReplaySensorPublic_getItemsFromStream_upToMovieTime_metadataClass___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v15 = 0.0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 40) grabNextFromReader:*(*(a1 + 32) + 80) timestamp:{&v15, 0}];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = objc_opt_new();
        [v9 setTimestamp:v15];
        [v9 setData:v8];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (BOOL)readNextFrameFromStream:(id)stream forWrapper:(id)wrapper
{
  v46 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  wrapperCopy = wrapper;
  v39 = **&MEMORY[0x1E6960CC0];
  reader = self->_reader;
  v38 = 0;
  v9 = [(MOVReaderInterface *)reader copyNextFrameForStream:streamCopy timestamp:&v39 error:&v38];
  v10 = v38;
  if (!v9)
  {
    v18 = [(MOVReaderInterface *)self->_reader hasReachedEndOfStream:streamCopy];
    if (v18)
    {
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v19 = ARShouldUseLogTypeError_internalOSVersion_4;
      v20 = _ARLogSensor_5(v18);
      v21 = v20;
      if (v19 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          objc_msgSend_timestamp(wrapperCopy);
          LODWORD(time.value) = 138544130;
          *(&time.value + 4) = v23;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = self;
          HIWORD(time.epoch) = 2112;
          v41 = streamCopy;
          v42 = 2048;
          v43 = v24;
          v25 = "%{public}@ <%p>: Replay sensor reached end of stream %@ at %lf";
          v26 = v21;
          v27 = OS_LOG_TYPE_ERROR;
LABEL_18:
          v34 = 42;
LABEL_22:
          _os_log_impl(&dword_1C241C000, v26, v27, v25, &time, v34);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v23 = NSStringFromClass(v32);
        objc_msgSend_timestamp(wrapperCopy);
        LODWORD(time.value) = 138544130;
        *(&time.value + 4) = v23;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = self;
        HIWORD(time.epoch) = 2112;
        v41 = streamCopy;
        v42 = 2048;
        v43 = v33;
        v25 = "Error: %{public}@ <%p>: Replay sensor reached end of stream %@ at %lf";
        v26 = v21;
        v27 = OS_LOG_TYPE_INFO;
        goto LABEL_18;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v28 = ARShouldUseLogTypeError_internalOSVersion_4;
    v29 = _ARLogSensor_5(v18);
    v21 = v29;
    if (v28 == 1)
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v30 = objc_opt_class();
      v23 = NSStringFromClass(v30);
      objc_msgSend_timestamp(wrapperCopy);
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = v23;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2112;
      v41 = streamCopy;
      v42 = 2048;
      v43 = v31;
      v44 = 2112;
      v45 = v10;
      v25 = "%{public}@ <%p>: Replay sensor couldn't get frame for stream %@ at %lf: %@";
      v26 = v21;
      v27 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v35 = objc_opt_class();
      v23 = NSStringFromClass(v35);
      objc_msgSend_timestamp(wrapperCopy);
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = v23;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2112;
      v41 = streamCopy;
      v42 = 2048;
      v43 = v36;
      v44 = 2112;
      v45 = v10;
      v25 = "Error: %{public}@ <%p>: Replay sensor couldn't get frame for stream %@ at %lf: %@";
      v26 = v21;
      v27 = OS_LOG_TYPE_INFO;
    }

    v34 = 52;
    goto LABEL_22;
  }

  time = v39;
  [wrapperCopy setTimestamp:CMTimeGetSeconds(&time)];
  data = [wrapperCopy data];

  if (!data)
  {
    v12 = CVBufferCopyAttachments(v9, kCVAttachmentMode_ShouldPropagate);
    v13 = [[ARImageData alloc] initWithDictionary:v12];
    v14 = AVCaptureDeviceTypeFromStreamIdentifier(streamCopy);
    [(ARImageData *)v13 setCameraType:v14];

    [(ARImageData *)v13 setCameraPosition:AVCaptureDevicePositionFromStreamIdentifier(streamCopy)];
    [(ARImageData *)v13 setCaptureFramesPerSecond:llround(self->_nominalFrameRate)];
    [wrapperCopy setData:v13];
  }

  v15 = CACurrentMediaTime();
  data2 = [wrapperCopy data];
  [data2 setCurrentCaptureTimestamp:v15];

  data3 = [wrapperCopy data];
  [data3 setPixelBuffer:v9];

  CVPixelBufferRelease(v9);
LABEL_24:

  return v9 != 0;
}

- (double)_getMinFrameDurationForStream:(id)stream
{
  reader = self->_reader;
  if (reader)
  {
    objc_msgSend_getMinFrameDurationForStream_(reader, a2, stream);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (id)getWrappedItemsFromPixelBufferStream:(id)stream upToMovieTime:(double)time converter:(id)converter
{
  streamCopy = stream;
  v8 = objc_opt_new();
  [(ARReplaySensorPublic *)self _getMinFrameDurationForStream:streamCopy];
  v10 = v9;
  while (1)
  {
    v11 = objc_opt_new();
    if (![(ARReplaySensorPublic *)self readNextFrameFromStream:streamCopy forWrapper:v11])
    {
      break;
    }

    objc_msgSend_timestamp(v11);
    v13 = v10 + v12;
    [v8 addObject:v11];

    if (v13 > time)
    {
      v14 = v8;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter
{
  streamCopy = stream;
  converterCopy = converter;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__ARReplaySensorPublic_getWrappedItemsFromStream_upToMovieTime_converter___block_invoke;
  v14[3] = &unk_1E817C160;
  v14[4] = self;
  v15 = streamCopy;
  v16 = converterCopy;
  v10 = converterCopy;
  v11 = streamCopy;
  v12 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:v11 upToMovieTime:v14 withBlock:time];

  return v12;
}

- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time withBlock:(id)block
{
  streamCopy = stream;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [(NSMutableDictionary *)self->_metadataCache objectForKeyedSubscript:streamCopy];
  if (!v11)
  {
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_metadataCache setObject:v11 forKeyedSubscript:streamCopy];
  }

  do
  {
    if ([v11 count])
    {
      lastObject = [v11 lastObject];
      objc_msgSend_timestamp(lastObject);
      v14 = v13;

      if (v14 > time + 0.00000011920929)
      {
        break;
      }
    }

    v15 = blockCopy[2](blockCopy);
    [v11 addObjectsFromArray:v15];
    v16 = [v15 count];
  }

  while (v16);
  [(ARReplaySensorPublic *)self _getMinFrameDurationForStream:streamCopy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__ARReplaySensorPublic_getWrappedItemsFromStream_upToMovieTime_withBlock___block_invoke;
  v21[3] = &__block_descriptor_56_e41_B32__0__ARReplayMovieDataWrapper_8Q16_B24l;
  *&v21[4] = v17;
  *&v21[5] = time;
  *&v21[6] = v17 * 0.5;
  v18 = [v11 indexesOfObjectsPassingTest:v21];
  v19 = [v11 objectsAtIndexes:v18];
  [v11 removeObjectsAtIndexes:v18];

  objc_autoreleasePoolPop(v10);

  return v19;
}

BOOL __74__ARReplaySensorPublic_getWrappedItemsFromStream_upToMovieTime_withBlock___block_invoke(double *a1, void *a2)
{
  v4 = a1[5];
  objc_msgSend_timestamp(a2, a1[4]);
  return vabdd_f64(v4, v5) <= a1[6];
}

- (id)getNextWrappedItemsFromStream:(id)stream converter:(id)converter
{
  v33 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  converterCopy = converter;
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v29 = *MEMORY[0x1E6960CA8];
  v30 = v8;
  v31 = *(MEMORY[0x1E6960CA8] + 32);
  v9 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v23 = streamCopy;
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:streamCopy])
  {
    streamCopy = [(MOVReaderInterface *)self->_reader grabNextMetadataOfStream:streamCopy timeRange:&v29, context, streamCopy];
  }

  else
  {
    streamCopy = 0;
  }

  *&time.value = v29;
  time.epoch = v30;
  Seconds = CMTimeGetSeconds(&time);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = streamCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = converterCopy[2](converterCopy, v17);
        if (v19)
        {
          v20 = objc_opt_new();
          [v20 setTimestamp:Seconds];
          [v20 setData:v19];
          [v9 addObject:v20];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);

  return v9;
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  delegate = [(ARReplaySensorPublic *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ARReplaySensorPublic *)self delegate];
    [delegate2 sensor:self didFailWithError:errorCopy];
  }
}

- (void)_didOutputSensorData:(id)data
{
  dataCopy = data;
  delegate = [(ARReplaySensorPublic *)self delegate];
  [delegate sensor:self didOutputSensorData:dataCopy];
}

- (void)setImageIndex:(int)index
{
  v3 = *&index;
  self->_imageIndex = index;
  [(ARReplaySensorPublic *)self setNextFrameIndex:index];
  if (self->_manualCommandLineMode)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [ARKitUserDefaults setObject:v5 forKey:@"com_apple_arkit_replay_filepath_nextFrameIndex"];
  }
}

- (id)imageDataToReplayForTimestamp:(double)timestamp
{
  v26 = *MEMORY[0x1E69E9840];
  peekNextWrappedImageDataForAllRequiredStreams = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
  v6 = objc_opt_new();
  if ([peekNextWrappedImageDataForAllRequiredStreams count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [peekNextWrappedImageDataForAllRequiredStreams allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v22;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [peekNextWrappedImageDataForAllRequiredStreams objectForKeyedSubscript:v12];
        v14 = v13;
        if (!self->_replayMode)
        {
          objc_msgSend_timestamp(v13);
          if (v19 > timestamp)
          {
            goto LABEL_15;
          }

LABEL_14:
          [v6 setObject:v14 forKeyedSubscript:v12];
          goto LABEL_15;
        }

        if ([v12 isEqualToString:self->_mainVideoStreamIdentifier])
        {
          goto LABEL_14;
        }

        v15 = [peekNextWrappedImageDataForAllRequiredStreams objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
        if (v15)
        {
          objc_msgSend_timestamp(v14);
          v17 = v16;
          objc_msgSend_timestamp(v15);
          if (v17 <= v18)
          {
            [v6 setObject:v14 forKeyedSubscript:v12];
          }
        }

LABEL_15:
      }

      v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v9)
      {
LABEL_17:

        break;
      }
    }
  }

  return v6;
}

- (void)readFileMetadata
{
  v64 = *MEMORY[0x1E69E9840];
  self->_recordingFormatVersion = 0;
  grabSummary = [(MOVReaderInterface *)self->_reader grabSummary];
  v4 = [grabSummary objectForKey:@"mdta/com.apple.arkit.customuserdata"];
  customUserData = self->_customUserData;
  self->_customUserData = v4;

  [(MOVReaderInterface *)self->_reader metadataForMovie];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = v57 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v55;
    v10 = *MEMORY[0x1E698BED0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v6);
        }

        identifier = [*(*(&v54 + 1) + 8 * i) identifier];
        v13 = [identifier isEqualToString:v10];

        if (v13)
        {
          self->_recordingFormatVersion = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (self->_recordingFormatVersion == 1)
  {
    v14 = objc_opt_class();
    v15 = ARMetadataIdentifierForARSensorDataClass(v14, self->_recordingFormatVersion);
    v16 = [(MOVReaderInterface *)self->_reader metadataTrackForStream:v15];
    totalSampleDataLength = [v16 totalSampleDataLength];
    if (!v16 || totalSampleDataLength <= 0)
    {
      v18 = _ARLogSensor_5(totalSampleDataLength);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543618;
        v60 = v20;
        v61 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reverting back to legacy format for metadata stream names.", buf, 0x16u);
      }

      self->_recordingFormatVersion = 0;
    }
  }

  v21 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.arsensordatatypeinformation"];
  v22 = v21;
  if (!v21)
  {
    v48 = v6;
    v49 = grabSummary;
    self->_recordedSensorTypes = 1;
    getAllMetadataStreams = [(MOVReaderInterface *)self->_reader getAllMetadataStreams];
    v24 = objc_opt_class();
    v25 = ARMetadataIdentifierForARSensorDataClass(v24, self->_recordingFormatVersion);
    v26 = objc_opt_class();
    v27 = ARMetadataIdentifierForARSensorDataClass(v26, self->_recordingFormatVersion);
    v28 = objc_opt_class();
    v29 = ARMetadataIdentifierForARSensorDataClass(v28, self->_recordingFormatVersion);
    v30 = objc_opt_class();
    v31 = ARMetadataIdentifierForARSensorDataClass(v30, self->_recordingFormatVersion);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v32 = getAllMetadataStreams;
    v33 = [v32 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v33)
    {
      goto LABEL_36;
    }

    v34 = v33;
    v35 = *v51;
    while (1)
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v50 + 1) + 8 * j);
        if ([v37 isEqualToString:v25])
        {
          v38 = 2;
        }

        else if ([v37 isEqualToString:v27])
        {
          v38 = 4;
        }

        else if ([v37 isEqualToString:v29])
        {
          v38 = 8;
        }

        else
        {
          if (![v37 isEqualToString:v31])
          {
            continue;
          }

          v38 = 64;
        }

        self->_recordedSensorTypes |= v38;
      }

      v34 = [v32 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (!v34)
      {
LABEL_36:

        v6 = v48;
        grabSummary = v49;
        v22 = 0;
        goto LABEL_37;
      }
    }
  }

  self->_recordedSensorTypes = [v21 unsignedIntegerValue];
LABEL_37:
  v39 = [grabSummary objectForKeyedSubscript:*MEMORY[0x1E698BF48]];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v39;

  v41 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.osversion"];
  osVersion = self->_osVersion;
  self->_osVersion = v41;

  v43 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.arkitversion"];
  arkitVersion = self->_arkitVersion;
  self->_arkitVersion = v43;

  [(MOVReaderInterface *)self->_reader getSizeForStream:self->_mainVideoStreamIdentifier];
  self->_imageResolution.width = v45;
  self->_imageResolution.height = v46;
  [(MOVReaderInterface *)self->_reader getFrameRateForStream:self->_mainVideoStreamIdentifier];
  self->_nominalFrameRate = v47;
}

- (void)_replaySensorFinishedReplayingData
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke;
  v6[3] = &unk_1E817C1A8;
  v6[4] = self;
  v3 = MEMORY[0x1C691B4C0](v6, a2);
  replaySensorDelegate = [(ARReplaySensorPublic *)self replaySensorDelegate];
  (v3)[2](v3, replaySensorDelegate);

  traceReplaySensorDelegate = [(ARReplaySensorPublic *)self traceReplaySensorDelegate];
  (v3)[2](v3, traceReplaySensorDelegate);
}

void __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_2;
    v4[3] = &unk_1E817BEC8;
    v4[4] = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[ARQATracer isEnabled];
  v3 = v2;
  v4 = _ARLogGeneral_1(v2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      *buf = 138543618;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Waiting 0.5 second for the QATracer to complete the last frame", buf, 0x16u);
    }

    v9 = dispatch_time(0, 500000000);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_79;
    v15[3] = &unk_1E817BEC8;
    v10 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v10;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v15);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138543874;
      v18 = v12;
      v19 = 2048;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: replaySensorDelegate replaySensorDidFinishReplayingData (2): %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) replaySensorDidFinishReplayingData];
  }
}

uint64_t __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_79(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _ARLogGeneral_1(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138543874;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: replaySensorDelegate replaySensorDidFinishReplayingData (1): %{public}@", &v8, 0x20u);
  }

  return [*(a1 + 40) replaySensorDidFinishReplayingData];
}

- (id)_streamIdentifierForCaptureDeviceType:(id)type position:(int64_t)position
{
  typeCopy = type;
  v7 = typeCopy;
  if (self->_usingST2Recording)
  {
    v8 = *MEMORY[0x1E6990C80];
    if (![v7 isEqualToString:*MEMORY[0x1E6986948]])
    {
      goto LABEL_11;
    }

    position2 = *MEMORY[0x1E6990C90];
    goto LABEL_10;
  }

  v8 = ARStreamIdentifierForDeviceTypeAndPosition(typeCopy, position);
  if ([v7 isEqualToString:*MEMORY[0x1E6986948]] && !-[ARReplaySensorPublic _allStreamsAreAvailable:](self, "_allStreamsAreAvailable:", v8))
  {
    position = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%ld", @"AVCaptureDeviceTypeBuiltInSuperWideAngleCamera", position];

    v8 = position;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6986930]] && !-[ARReplaySensorPublic _allStreamsAreAvailable:](self, "_allStreamsAreAvailable:", v8))
  {
    position2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%ld", @"JasperCamera", position];
LABEL_10:
    v11 = position2;

    v8 = v11;
  }

LABEL_11:

  return v8;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ARReplaySensorDelegate)replaySensorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_replaySensorDelegate);

  return WeakRetained;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end