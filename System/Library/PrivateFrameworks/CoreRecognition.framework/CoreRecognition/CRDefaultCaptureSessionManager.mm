@interface CRDefaultCaptureSessionManager
- (AVCaptureInputPort)inputPortFormatSender;
- (AVCaptureMetadataOutputObjectsDelegate)captureSessionMetadataDelegate;
- (AVCaptureVideoDataOutputSampleBufferDelegate)captureSessionDelegate;
- (BOOL)isAdjustingFocus;
- (BOOL)isFocusPointOfInterestSupported;
- (BOOL)isPreviewVideoMirrored;
- (BOOL)isRearCamera;
- (BOOL)isRunning;
- (BOOL)switchToCamera:(int64_t)camera;
- (BOOL)switchToCameraWithDeviceID:(id)d;
- (BOOL)toggleCamera;
- (CGPoint)convertCameraPoint:(CGPoint)point fromLayer:(id)layer;
- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer;
- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer flipped:(BOOL)flipped;
- (CGPoint)convertCameraPointOCR:(CGPoint)r toLayer:(id)layer flipped:(BOOL)flipped;
- (CGPoint)focusPointOfInterest;
- (CGRect)convertCameraRect:(CGRect)rect fromLayer:(id)layer;
- (CGRect)previewVisibleRect;
- (CGSize)cameraResolution;
- (id)captureDeviceWithIdentifier:(id)identifier;
- (id)captureDeviceWithPosition:(int64_t)position;
- (unint64_t)cameraCount;
- (void)_refocusOnPoint:(CGPoint)point focusMode:(int64_t)mode exposure:(BOOL)exposure;
- (void)cacheCameraResolution:(id)resolution;
- (void)cameraSessionWasInterrupted:(id)interrupted;
- (void)changeCameraConfiguration;
- (void)highISOAdjustExposure;
- (void)refocusOnPoint:(CGPoint)point exposure:(BOOL)exposure;
- (void)resetFocus;
- (void)setPreviewOrientation:(int64_t)orientation;
- (void)setupCameraSession;
- (void)setupCameraSessionWithCaptureDevice:(id)device;
- (void)setupHighISO:(id)o;
- (void)startRunning;
- (void)stopRunning;
- (void)teardownCameraSession;
@end

@implementation CRDefaultCaptureSessionManager

- (void)stopRunning
{
  inputPortFormatObserver = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];

  if (inputPortFormatObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    inputPortFormatObserver2 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];
    inputPortFormatSender = [(CRDefaultCaptureSessionManager *)self inputPortFormatSender];
    [defaultCenter removeObserver:? name:? object:?];

    [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:?];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:? name:? object:?];

  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession stopRunning];
}

- (void)cacheCameraResolution:(id)resolution
{
  formatDescription = [resolution formatDescription];
  if (formatDescription)
  {
    CMVideoFormatDescriptionGetDimensions(formatDescription);

    [(CRDefaultCaptureSessionManager *)self setCameraResolution:?];
  }
}

- (void)startRunning
{
  inputPortFormatObserver = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];

  if (inputPortFormatObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    inputPortFormatObserver2 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];
    inputPortFormatSender = [(CRDefaultCaptureSessionManager *)self inputPortFormatSender];
    [defaultCenter removeObserver:? name:? object:?];

    [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:?];
  }

  [(CRDefaultCaptureSessionManager *)self changeCameraConfiguration];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:? selector:? name:? object:?];

  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession startRunning];

  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  ports = [deviceInput ports];

  v11 = [ports countByEnumeratingWithState:? objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(ports);
        }

        mediaType = [*(8 * i) mediaType];
        v16 = [mediaType isEqualToString:?];

        if (v16)
        {
          [(CRDefaultCaptureSessionManager *)self cacheCameraResolution:?];
          [(CRDefaultCaptureSessionManager *)self setInputPortFormatSender:?];
          defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
          mainQueue = [MEMORY[0x277CCABD8] mainQueue];
          v19 = [defaultCenter3 addObserverForName:MEMORY[0x277D85DD0] object:3221225472 queue:? usingBlock:?];
          [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:?];

          goto LABEL_13;
        }
      }

      v12 = [ports countByEnumeratingWithState:? objects:? count:?];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (BOOL)isRunning
{
  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  isRunning = [captureSession isRunning];

  return isRunning;
}

- (void)setupCameraSession
{
  [(CRDefaultCaptureSessionManager *)self cameraPosition];
  v3 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithPosition:?];
  if (!v3)
  {
    v3 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithPosition:?];
  }

  v4 = v3;
  [(CRDefaultCaptureSessionManager *)self setupCameraSessionWithCaptureDevice:?];
}

- (void)setupCameraSessionWithCaptureDevice:(id)device
{
  deviceCopy = device;
  targetVideoFormat = [(CRDefaultCaptureSessionManager *)self targetVideoFormat];
  [(CRDefaultCaptureSessionManager *)self stopRunning];
  [(CRDefaultCaptureSessionManager *)self setCameraResolution:?];
  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];

  if (!captureSession)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE5B38]);
    [(CRDefaultCaptureSessionManager *)self setCaptureSession:?];
  }

  captureSession2 = [(CRDefaultCaptureSessionManager *)self captureSession];
  isMultitaskingCameraAccessSupported = [captureSession2 isMultitaskingCameraAccessSupported];

  if (isMultitaskingCameraAccessSupported)
  {
    captureSession3 = [(CRDefaultCaptureSessionManager *)self captureSession];
    [captureSession3 setMultitaskingCameraAccessEnabled:?];
  }

  v11 = [deviceCopy lockForConfiguration:?];
  v12 = 0;
  v13 = v12;
  if (!v11)
  {
    NSLog(&cfstr_FailedToObtain.isa, v12);
LABEL_51:
    deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device = [deviceInput device];
    [device position];
    [(CRDefaultCaptureSessionManager *)self setCameraPosition:?];

    deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device2 = [deviceInput2 device];
    uniqueID = [device2 uniqueID];
    [(CRDefaultCaptureSessionManager *)self setCurrentDeviceID:?];

    goto LABEL_52;
  }

  v83 = v12;
  captureSession4 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession4 beginConfiguration];

  captureSession5 = [(CRDefaultCaptureSessionManager *)self captureSession];
  deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  [captureSession5 removeInput:?];

  captureSession6 = [(CRDefaultCaptureSessionManager *)self captureSession];
  captureVideoDataOutput = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
  [captureSession6 removeOutput:?];

  v19 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:? error:?];
  v82 = 0;
  [(CRDefaultCaptureSessionManager *)self setDeviceInput:?];

  captureSession7 = [(CRDefaultCaptureSessionManager *)self captureSession];
  deviceInput4 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v22 = [captureSession7 canAddInput:?];

  if (v22)
  {
    captureSession8 = [(CRDefaultCaptureSessionManager *)self captureSession];
    deviceInput5 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    [captureSession8 addInput:?];
  }

  cameraMode = [(CRDefaultCaptureSessionManager *)self cameraMode];
  v26 = *MEMORY[0x277CE59A8];

  if (cameraMode == v26)
  {
    v81 = deviceCopy;
    formats = [deviceCopy formats];
    v35 = [formats countByEnumeratingWithState:? objects:? count:?];
    if (!v35)
    {
      v37 = 0;
LABEL_36:

LABEL_37:
      v51 = v37;
      if (!v51)
      {
        goto LABEL_41;
      }

      activeFormat = v51;
      v37 = v51;
LABEL_39:
      [v81 setActiveFormat:?];
      CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
      [(CRDefaultCaptureSessionManager *)self setCameraResolution:?];
      [v81 setProvidesStortorgetMetadata:?];
      [(CRDefaultCaptureSessionManager *)self setupHighISO:?];

LABEL_40:
LABEL_41:
      v52 = objc_alloc(MEMORY[0x277CE5B68]);
      captureSession9 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v54 = [v52 initWithSession:?];
      [(CRDefaultCaptureSessionManager *)self setAvfPreviewLayer:?];

      v55 = objc_alloc_init(MEMORY[0x277CE5B60]);
      v56 = MEMORY[0x277CBEAC0];
      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      v58 = [v56 dictionaryWithObject:? forKey:?];
      [v55 setVideoSettings:?];

      [v55 setAlwaysDiscardsLateVideoFrames:?];
      [(CRDefaultCaptureSessionManager *)self setCaptureVideoDataOutput:?];
      v59 = dispatch_queue_create("com.apple.CoreRecognition.videoQueue", 0);
      captureVideoDataOutput2 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      captureSessionDelegate = [(CRDefaultCaptureSessionManager *)self captureSessionDelegate];
      [captureVideoDataOutput2 setSampleBufferDelegate:? queue:?];

      deviceCopy = v81;
      if ([(CRDefaultCaptureSessionManager *)self enableMetadataOutput])
      {
        v62 = objc_alloc_init(MEMORY[0x277CE5B00]);
        captureSession10 = [(CRDefaultCaptureSessionManager *)self captureSession];
        v64 = [captureSession10 canAddOutput:?];

        if (v64)
        {
          captureSession11 = [(CRDefaultCaptureSessionManager *)self captureSession];
          [captureSession11 addOutput:?];
        }

        captureSessionMetadataDelegate = [(CRDefaultCaptureSessionManager *)self captureSessionMetadataDelegate];
        [v62 setMetadataObjectsDelegate:? queue:?];

        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [v62 setMetadataObjectTypes:?];
      }

      captureSession12 = [(CRDefaultCaptureSessionManager *)self captureSession];
      captureVideoDataOutput3 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v70 = [captureSession12 canAddOutput:?];

      if (v70)
      {
        captureSession13 = [(CRDefaultCaptureSessionManager *)self captureSession];
        captureVideoDataOutput4 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
        [captureSession13 addOutput:?];
      }

      captureVideoDataOutput5 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v74 = [captureVideoDataOutput5 connectionWithMediaType:?];

      if ([v74 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v74 setCameraIntrinsicMatrixDeliveryEnabled:?];
      }

      else
      {
        NSLog(&cfstr_Cameraintrisic.isa);
      }

      captureSession14 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [captureSession14 commitConfiguration];

      [v81 unlockForConfiguration];
      v13 = v83;
      goto LABEL_51;
    }

    v36 = v35;
    v37 = 0;
    v38 = MEMORY[0];
    v80 = MEMORY[0];
LABEL_14:
    v39 = 0;
    while (1)
    {
      if (MEMORY[0] != v38)
      {
        objc_enumerationMutation(formats);
      }

      v40 = *(8 * v39);
      formatDescription = [v40 formatDescription];
      MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
      Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
      if (v37 || MediaSubType != targetVideoFormat)
      {
        if (MediaSubType != targetVideoFormat)
        {
          goto LABEL_29;
        }

        if (Dimensions.width > CMVideoFormatDescriptionGetDimensions([v37 formatDescription]).width)
        {
          selfCopy = self;
          v46 = targetVideoFormat;
          v47 = formats;
          v48 = v40;

          v37 = v48;
          formats = v47;
          targetVideoFormat = v46;
          self = selfCopy;
          v38 = v80;
        }
      }

      else
      {
        v37 = v40;
      }

      if (Dimensions == 0x99000000CC0 && MediaSubType == targetVideoFormat)
      {
        activeFormat = v40;

        if (activeFormat)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

LABEL_29:
      if (v36 == ++v39)
      {
        v36 = [formats countByEnumeratingWithState:? objects:? count:?];
        if (v36)
        {
          goto LABEL_14;
        }

        goto LABEL_36;
      }
    }
  }

  captureSession15 = [(CRDefaultCaptureSessionManager *)self captureSession];
  cameraMode2 = [(CRDefaultCaptureSessionManager *)self cameraMode];
  v29 = [captureSession15 canSetSessionPreset:?];

  if (v29)
  {
    captureSession16 = [(CRDefaultCaptureSessionManager *)self captureSession];
    cameraMode3 = [(CRDefaultCaptureSessionManager *)self cameraMode];
    [captureSession16 setSessionPreset:?];

    v81 = deviceCopy;
    activeFormat = [deviceCopy activeFormat];
    formatDescription2 = [activeFormat formatDescription];
    [(CRDefaultCaptureSessionManager *)self setupHighISO:?];
    CMVideoFormatDescriptionGetDimensions(formatDescription2);
    [(CRDefaultCaptureSessionManager *)self setCameraResolution:?];
    goto LABEL_40;
  }

  NSLog(&cfstr_NotSupported.isa);
  captureSession17 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession17 commitConfiguration];

  [deviceCopy unlockForConfiguration];
  deviceInput2 = v82;
  v13 = v83;
LABEL_52:
}

- (void)teardownCameraSession
{
  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  captureVideoDataOutput = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
  [captureSession removeOutput:?];

  captureSession2 = [(CRDefaultCaptureSessionManager *)self captureSession];
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  [captureSession2 removeInput:?];

  [(CRDefaultCaptureSessionManager *)self setCaptureSession:?];
  [(CRDefaultCaptureSessionManager *)self setAvfPreviewLayer:?];
  if ([(CRDefaultCaptureSessionManager *)self exposure_table])
  {
    free(*[(CRDefaultCaptureSessionManager *)self exposure_table]);
    free([(CRDefaultCaptureSessionManager *)self exposure_table]);

    [(CRDefaultCaptureSessionManager *)self setExposure_table:?];
  }
}

- (void)changeCameraConfiguration
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];

  deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device2 = [deviceInput2 device];
  [device2 lockForConfiguration:?];
  v7 = 0;

  if ([device hasTorch])
  {
    [(CRDefaultCaptureSessionManager *)self torchMode];
    if ([device isTorchModeSupported:?])
    {
      if ([(CRDefaultCaptureSessionManager *)self isRearCamera])
      {
        [(CRDefaultCaptureSessionManager *)self torchMode];
        [device setTorchMode:?];
      }
    }
  }

  if ([device isFocusPointOfInterestSupported])
  {
    [(CRDefaultCaptureSessionManager *)self focusMode];
    if ([device isFocusModeSupported:?])
    {
      [device setFocusPointOfInterest:?];
      [(CRDefaultCaptureSessionManager *)self focusMode];
      [device setFocusMode:?];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [device isAutoFocusRangeRestrictionSupported])
  {
    [device setAutoFocusRangeRestriction:?];
  }

  [(CRDefaultCaptureSessionManager *)self whiteBalanceMode];
  if ([device isWhiteBalanceModeSupported:?])
  {
    [(CRDefaultCaptureSessionManager *)self whiteBalanceMode];
    [device setWhiteBalanceMode:?];
  }

  if ([device isExposurePointOfInterestSupported])
  {
    [(CRDefaultCaptureSessionManager *)self exposureMode];
    if ([device isExposureModeSupported:?])
    {
      [device setExposurePointOfInterest:?];
      [(CRDefaultCaptureSessionManager *)self exposureMode];
      [device setExposureMode:?];
    }
  }

  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer setVideoGravity:?];

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 setOpaque:?];

  [device unlockForConfiguration];
  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)isRearCamera
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  v4 = [device position] == 1;

  return v4;
}

- (unint64_t)cameraCount
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE5AD0];
  v3 = *MEMORY[0x277CE5870];
  v9 = *MEMORY[0x277CE5878];
  v10 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v5 = [v2 discoverySessionWithDeviceTypes:? mediaType:? position:?];

  devices = [v5 devices];
  v7 = [devices count];

  return v7;
}

- (id)captureDeviceWithPosition:(int64_t)position
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE5AD0];
  v42 = *MEMORY[0x277CE5878];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v7 = [v5 discoverySessionWithDeviceTypes:? mediaType:? position:?];

  v39 = v7;
  devices = [v7 devices];
  v9 = [devices countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(devices);
        }

        v14 = *(8 * i);
        position = [v14 position];
        if (!position || position == position)
        {
          if (-[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance") < 1 || (v16 = [v14 minimumFocusDistance], v16 <= -[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance")))
          {
            v20 = CROSLogForCategory(8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              localizedName = [v14 localizedName];
              *buf = 138412290;
              v41 = localizedName;
              _os_log_impl(&dword_2477E8000, v20, OS_LOG_TYPE_DEFAULT, "Selecting device %@", buf, 0xCu);
            }

            v22 = v14;
            v23 = v39;
            goto LABEL_38;
          }

          v17 = CROSLogForCategory(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            localizedName2 = [v14 localizedName];
            *buf = 138412290;
            v41 = localizedName2;
            _os_log_impl(&dword_2477E8000, v17, OS_LOG_TYPE_DEFAULT, "%@ does not meet focus requirements", buf, 0xCu);
          }

          v19 = v14;
          v11 = v19;
        }
      }

      v10 = [devices countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v24 = MEMORY[0x277CE5AD0];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v23 = [v24 discoverySessionWithDeviceTypes:? mediaType:? position:?];

  devices2 = [v23 devices];

  devices = devices2;
  v27 = [devices countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0];
    while (2)
    {
      for (j = 0; j != v28; j = (j + 1))
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(devices);
        }

        v31 = *(8 * j);
        position2 = [v31 position];
        if (!position || position2 == position)
        {
          if (-[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance") < 1 || (v33 = [v31 minimumFocusDistance], v33 <= -[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance")))
          {
            if ([v31 isFocusPointOfInterestSupported])
            {
              v36 = CROSLogForCategory(8);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                localizedName3 = [v31 localizedName];
                *buf = 138412290;
                v41 = localizedName3;
                _os_log_impl(&dword_2477E8000, v36, OS_LOG_TYPE_DEFAULT, "Selecting device %@", buf, 0xCu);
              }

              v22 = v31;
              goto LABEL_38;
            }
          }
        }
      }

      v28 = [devices countByEnumeratingWithState:? objects:? count:?];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v34 = CROSLogForCategory(8);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    localizedName4 = [v11 localizedName];
    *buf = 138412290;
    v41 = localizedName4;
    _os_log_impl(&dword_2477E8000, v34, OS_LOG_TYPE_DEFAULT, "Falling back to device %@", buf, 0xCu);
  }

  v11 = v11;
  v22 = v11;
LABEL_38:

  return v22;
}

- (id)captureDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = MEMORY[0x277CE5AD0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v6 = [v4 discoverySessionWithDeviceTypes:? mediaType:? position:?];

  devices = [v6 devices];
  v8 = [devices countByEnumeratingWithState:0 objects:? count:?];
  if (v8)
  {
    v9 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(8 * i);
        uniqueID = [v11 uniqueID];
        v13 = [uniqueID isEqualToString:?];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [devices countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)toggleCamera
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  position = [device position];

  if (position != 1 && position != 2)
  {
    return 0;
  }

  return [(CRDefaultCaptureSessionManager *)self switchToCamera:?];
}

- (BOOL)switchToCameraWithDeviceID:(id)d
{
  v4 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithIdentifier:?];
  if (v4)
  {
    [(CRDefaultCaptureSessionManager *)self setupCameraSessionWithCaptureDevice:?];
  }

  return v4 != 0;
}

- (BOOL)switchToCamera:(int64_t)camera
{
  if ([(CRDefaultCaptureSessionManager *)self cameraCount]< 2)
  {
    goto LABEL_5;
  }

  if (camera == 1)
  {
    v5 = objc_alloc(MEMORY[0x277CE5AD8]);
    backFacingCamera = [(CRDefaultCaptureSessionManager *)self backFacingCamera];
    v35 = 0;
    v7 = &v35;
    goto LABEL_7;
  }

  if (camera != 2)
  {
LABEL_5:
    LOBYTE(v8) = 0;
    return v8;
  }

  v5 = objc_alloc(MEMORY[0x277CE5AD8]);
  backFacingCamera = [(CRDefaultCaptureSessionManager *)self frontFacingCamera];
  v36 = 0;
  v7 = &v36;
LABEL_7:
  v9 = [v5 initWithDevice:? error:?];
  v10 = *v7;

  if (v9)
  {
    [(CRDefaultCaptureSessionManager *)self stopRunning];
    device = [v9 device];
    v8 = [device lockForConfiguration:?];
    v12 = 0;

    if (v8)
    {
      captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
      [captureSession beginConfiguration];

      captureSession2 = [(CRDefaultCaptureSessionManager *)self captureSession];
      deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
      [captureSession2 removeInput:?];

      device2 = [v9 device];
      v17 = [device2 supportsAVCaptureSessionPreset:?];

      if ((v17 & 1) != 0 || ([v9 device], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "supportsAVCaptureSessionPreset:"), v18, v19))
      {
        captureSession3 = [(CRDefaultCaptureSessionManager *)self captureSession];
        [captureSession3 setSessionPreset:?];
      }

      if ([(CRDefaultCaptureSessionManager *)self enableMetadataOutput])
      {
        device3 = [v9 device];
        [device3 supportsAVCaptureSessionPreset:?];

        captureSession4 = [(CRDefaultCaptureSessionManager *)self captureSession];
        [captureSession4 setSessionPreset:?];
      }

      captureSession5 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v24 = [captureSession5 canAddInput:?];

      captureSession6 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v26 = captureSession6;
      if (v24)
      {
        [captureSession6 addInput:?];

        [(CRDefaultCaptureSessionManager *)self setDeviceInput:?];
      }

      else
      {
        deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
        [v26 addInput:?];
      }

      device4 = [v9 device];
      activeFormat = [device4 activeFormat];

      [(CRDefaultCaptureSessionManager *)self setupHighISO:?];
      captureSession7 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [captureSession7 commitConfiguration];

      device5 = [v9 device];
      [device5 unlockForConfiguration];

      deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      device6 = [deviceInput3 device];
      [device6 position];
      [(CRDefaultCaptureSessionManager *)self setCameraPosition:?];

      [(CRDefaultCaptureSessionManager *)self startRunning];
    }

    else
    {
      NSLog(&cfstr_FailedToObtain.isa, v12);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_refocusOnPoint:(CGPoint)point focusMode:(int64_t)mode exposure:(BOOL)exposure
{
  y = point.y;
  x = point.x;
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];

  if (([device isAdjustingFocus] & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__CRDefaultCaptureSessionManager__refocusOnPoint_focusMode_exposure___block_invoke;
    v12[3] = &unk_278EAAAF8;
    v12[4] = self;
    v13 = device;
    modeCopy = mode;
    v15 = x;
    v16 = y;
    exposureCopy = exposure;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __69__CRDefaultCaptureSessionManager__refocusOnPoint_focusMode_exposure___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceInput];
  v3 = [v2 device];
  v4 = [v3 lockForConfiguration:?];
  v5 = 0;

  if (v4)
  {
    if ([*(a1 + 40) isFocusPointOfInterestSupported] && objc_msgSend(*(a1 + 40), "isFocusModeSupported:"))
    {
      [*(a1 + 40) setFocusPointOfInterest:?];
      [*(a1 + 40) setFocusMode:?];
    }

    if (*(a1 + 72) == 1)
    {
      if ([*(a1 + 40) isExposurePointOfInterestSupported])
      {
        v6 = *(a1 + 40);
        [*(a1 + 32) exposureMode];
        if ([v6 isExposureModeSupported:?])
        {
          [*(a1 + 40) setExposurePointOfInterest:?];
          v7 = *(a1 + 40);
          [*(a1 + 32) exposureMode];
          [v7 setExposureMode:?];
        }
      }
    }

    [*(a1 + 40) unlockForConfiguration];
  }

  else
  {
    NSLog(&cfstr_FailedToLockCo.isa, v5);
  }
}

- (void)refocusOnPoint:(CGPoint)point exposure:(BOOL)exposure
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isFocusPointOfInterestSupported = [device isFocusPointOfInterestSupported];

  if (isFocusPointOfInterestSupported)
  {
    avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    [avfPreviewLayer captureDevicePointOfInterestForPoint:?];
    v10 = v9;
    v12 = v11;

    deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device2 = [deviceInput2 device];
    [device2 focusPointOfInterest];
    *&v15 = (v16 - v12) * (v16 - v12) + (v15 - v10) * (v15 - v10);
    v17 = sqrtf(*&v15);

    if (v17 <= 0.05)
    {
      deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      device3 = [deviceInput3 device];
      isAdjustingFocus = [device3 isAdjustingFocus];

      if ((isAdjustingFocus & 1) == 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__CRDefaultCaptureSessionManager_refocusOnPoint_exposure___block_invoke;
        block[3] = &unk_278EAAB20;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      [(CRDefaultCaptureSessionManager *)self focusMode];

      [CRDefaultCaptureSessionManager _refocusOnPoint:"_refocusOnPoint:focusMode:exposure:" focusMode:? exposure:?];
    }
  }
}

void __58__CRDefaultCaptureSessionManager_refocusOnPoint_exposure___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceInput];
  v3 = [v2 device];
  v13 = 0;
  v4 = [v3 lockForConfiguration:?];
  v5 = v13;

  if (v4)
  {
    v6 = [*(a1 + 32) deviceInput];
    v7 = [v6 device];
    v8 = [v7 isFocusModeSupported:?];

    if (v8)
    {
      v9 = [*(a1 + 32) deviceInput];
      v10 = [v9 device];
      [v10 setFocusMode:?];
    }

    v11 = [*(a1 + 32) deviceInput];
    v12 = [v11 device];
    [v12 unlockForConfiguration];
  }
}

- (void)resetFocus
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isFocusPointOfInterestSupported = [device isFocusPointOfInterestSupported];

  if (isFocusPointOfInterestSupported)
  {
    deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device2 = [deviceInput2 device];
    [device2 focusPointOfInterest];
    if (v7 == 0.5)
    {
    }

    else
    {
      deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      device3 = [deviceInput3 device];
      [device3 focusPointOfInterest];
      v11 = v10;

      if (v11 != 0.5)
      {
        [(CRDefaultCaptureSessionManager *)self focusMode];

        [CRDefaultCaptureSessionManager _refocusOnPoint:"_refocusOnPoint:focusMode:exposure:" focusMode:? exposure:?];
      }
    }
  }
}

- (void)setPreviewOrientation:(int64_t)orientation
{
  if ((orientation - 1) <= 3)
  {
    avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    connection = [avfPreviewLayer connection];
    [connection setVideoOrientation:?];
  }
}

- (BOOL)isAdjustingFocus
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isAdjustingFocus = [device isAdjustingFocus];

  return isAdjustingFocus;
}

- (CGPoint)convertCameraPoint:(CGPoint)point fromLayer:(id)layer
{
  layerCopy = layer;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer convertPoint:? fromLayer:?];

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 captureDevicePointOfInterestForPoint:?];
  v9 = v8;
  v11 = v10;

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v13 = v9 * v12;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v15 = v11 * v14;
  v16 = v13;
  result.y = v15;
  result.x = v16;
  return result;
}

- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer
{
  [CRDefaultCaptureSessionManager convertCameraPoint:"convertCameraPoint:toLayer:flipped:" toLayer:? flipped:?];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  layerCopy = layer;
  if (flippedCopy)
  {
    [(CRDefaultCaptureSessionManager *)self cameraResolution];
  }

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer pointForCaptureDevicePointOfInterest:?];

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 convertPoint:? toLayer:?];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)convertCameraPointOCR:(CGPoint)r toLayer:(id)layer flipped:(BOOL)flipped
{
  layerCopy = layer;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer pointForCaptureDevicePointOfInterest:?];

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 convertPoint:? toLayer:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertCameraRect:(CGRect)rect fromLayer:(id)layer
{
  layerCopy = layer;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer convertRect:? fromLayer:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  if (!CGRectIsEmpty(v31))
  {
    avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    [avfPreviewLayer2 metadataOutputRectOfInterestForRect:?];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
  }

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v21 = v8 * v20;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v23 = v10 * v22;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v25 = v12 * v24;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v27 = v14 * v26;
  v28 = v21;
  v29 = v23;
  v30 = v25;
  result.size.height = v27;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)setupHighISO:(id)o
{
  v76 = *MEMORY[0x277D85DE8];
  oCopy = o;
  [oCopy maxISO];
  [(CRDefaultCaptureSessionManager *)self setMaxISO:?];
  [oCopy minISO];
  [(CRDefaultCaptureSessionManager *)self setMinISO:?];
  CMTimeMakeWithSeconds(&v60, 0.00207900208, 1000000000);
  *values = *&v60.value;
  *&v72 = v60.epoch;
  [(CRDefaultCaptureSessionManager *)self setHighISOThresholdDuration:?];
  v5 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  *values = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *v66 = 0u;
  v6 = *MEMORY[0x277CBECE8];
  v7 = &gDefaultExposureTable;
  do
  {
    values[v5] = CFNumberCreate(v6, kCFNumberDoubleType, v7);
    v66[v5++] = CFNumberCreate(v6, kCFNumberDoubleType, v7 + 80);
    v7 += 8;
  }

  while (v5 != 10);
  v8 = MEMORY[0x277CBF128];
  v9 = CFArrayCreate(v6, values, 10, MEMORY[0x277CBF128]);
  v10 = CFArrayCreate(v6, v66, 10, v8);
  *keys = xmmword_278EAAB40;
  v64[0] = v9;
  v64[1] = v10;
  v11 = CFDictionaryCreate(v6, keys, v64, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([(CRDefaultCaptureSessionManager *)self exposure_table])
  {
    free(*[(CRDefaultCaptureSessionManager *)self exposure_table]);
    free([(CRDefaultCaptureSessionManager *)self exposure_table]);
    [(CRDefaultCaptureSessionManager *)self setExposure_table:?];
  }

  malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
  [(CRDefaultCaptureSessionManager *)self setExposure_table:?];
  exposure_table = [(CRDefaultCaptureSessionManager *)self exposure_table];
  *&exposure_table->var2 = xmmword_24783F5C0;
  p_var2 = &exposure_table->var2;
  Value = CFDictionaryGetValue(v11, @"ExposureDelta");
  if (Value)
  {
    v15 = Value;
    v16 = CFGetTypeID(Value);
    if (v16 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v15, kCFNumberDoubleType, p_var2);
      if (*p_var2 > 1.0)
      {
        *p_var2 = 1.0 / *p_var2;
      }
    }
  }

  v17 = CFDictionaryGetValue(v11, @"StabilityZone");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v18, kCFNumberDoubleType, &exposure_table->var3);
      var3 = exposure_table->var3;
      if (var3 > 1.0)
      {
        exposure_table->var3 = 1.0 / var3;
      }
    }
  }

  v21 = CFDictionaryGetValue(v11, @"IntegrationTime");
  if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFArrayGetTypeID()))
  {
    v24 = CFDictionaryGetValue(v11, @"MaxGain");
    if (v24 && (v25 = v24, v26 = CFGetTypeID(v24), v26 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v22);
      v28 = CFArrayGetCount(v25);
      if (Count == v28)
      {
        theArray = v25;
        v59 = Count;
        v56 = 2 * Count;
        v29 = malloc_type_calloc(0x18uLL, 2 * Count, 0x6150010CuLL);
        ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
        v31 = CFGetTypeID(ValueAtIndex);
        if (v31 == CFNumberGetTypeID())
        {
          valuePtr = 0.0;
          CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
          if (valuePtr > 1.0)
          {
            valuePtr = 1.0 / valuePtr;
          }

          v54 = v10;
          v55 = v9;
          if (v59 < 1)
          {
            v49 = -1;
LABEL_52:
            exposure_table->var0 = exposure_table_create_lookup_table(v29, v56, exposure_table->var2);
            exposure_table->var1 = v49;
            v10 = v54;
            v9 = v55;
          }

          else
          {
            v32 = 0;
            v33 = 0;
            v57 = v29;
            while (1)
            {
              v61 = 0.0;
              v62 = 0.0;
              v34 = CFArrayGetValueAtIndex(v22, v32);
              v35 = CFGetTypeID(v34);
              if (v35 != CFNumberGetTypeID())
              {
                v9 = v55;
                NSLog(&cfstr_ExposuretableI.isa, v32);
                goto LABEL_55;
              }

              v36 = CFArrayGetValueAtIndex(theArray, v32);
              v37 = CFGetTypeID(v34);
              if (v37 != CFNumberGetTypeID())
              {
                break;
              }

              CFNumberGetValue(v34, kCFNumberDoubleType, &v62);
              CFNumberGetValue(v36, kCFNumberDoubleType, &v61);
              v38 = v62;
              v39 = 1.0;
              if (v62 > 1.0)
              {
                v38 = 1.0 / v62;
              }

              v40 = *p_var2 + 1.0;
              if (v33 >= 1)
              {
                v41 = v33;
                do
                {
                  v39 = v40 * v39;
                  --v41;
                }

                while (v41);
              }

              v42 = v61;
              v43 = valuePtr / v38 * v39;
              if (v33 <= 4095)
              {
                v44 = 4095;
              }

              else
              {
                v44 = v33;
              }

              v45 = v33 + 1;
              v46 = v33;
              v29 = v57;
              do
              {
                if (v46 == v44)
                {
                  v49 = -1;
                  goto LABEL_42;
                }

                v47 = v43;
                v48 = 1.0;
                v49 = v46;
                if ((v46 & 0x80000000) == 0)
                {
                  v50 = v45;
                  do
                  {
                    v48 = v40 * v48;
                    --v50;
                  }

                  while (v50);
                }

                v46 = v49 + 1;
                v43 = valuePtr / v38 * v48;
                ++v45;
              }

              while (v43 < v61);
              if (v61 - v47 >= v43 - v61)
              {
                ++v49;
              }

LABEL_42:
              v51 = v57 + 48 * v32;
              *v51 = v33;
              *(v51 + 4) = 0;
              *(v51 + 8) = v38;
              *(v51 + 16) = v42;
              v52 = v57 + 24 * ((2 * v32) | 1);
              *v52 = v49;
              *(v52 + 4) = 0;
              *(v52 + 8) = v38;
              *(v52 + 16) = v42;
              v33 = v49 + 1;
              if (++v32 == v59)
              {
                goto LABEL_52;
              }
            }

            v9 = v55;
            NSLog(&cfstr_ExposuretableM.isa, v32);
LABEL_55:
            v10 = v54;
            v29 = v57;
          }
        }

        else
        {
          NSLog(&cfstr_ExposuretableI.isa, 0);
        }

        if (v29)
        {
          free(v29);
        }
      }

      else
      {
        NSLog(&cfstr_ExposuretableT.isa, Count, v28);
      }
    }

    else
    {
      NSLog(&cfstr_ExposuretableN_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_ExposuretableN.isa);
  }

  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v10);
  for (i = 0; i != 10; ++i)
  {
    CFRelease(values[i]);
    CFRelease(v66[i]);
  }
}

- (void)highISOAdjustExposure
{
  memset(&v34, 0, sizeof(v34));
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];

  [device ISO];
  v6 = v5;
  memset(&v33, 0, sizeof(v33));
  if (device)
  {
    [&v33 exposureDuration];
  }

  time = v33;
  Seconds = CMTimeGetSeconds(&time);
  [device exposureTargetOffset];
  v9 = v8;
  [device lensAperture];
  v11 = v10;
  if ([(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgress])
  {
    [(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgressTimeoutCount];
    [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgressTimeoutCount:?];
    if (![(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgressTimeoutCount])
    {
      [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgress:?];
    }
  }

  if ([(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgress])
  {
    goto LABEL_15;
  }

  [&time highISOThresholdDuration];
  time1 = v33;
  if (CMTimeCompare(&time1, &time) < 0)
  {
    if ([(CRDefaultCaptureSessionManager *)self runningManualExposure])
    {
      [device lockForConfiguration:?];
      v24 = 0;
      [device setExposureMode:?];
      [(CRDefaultCaptureSessionManager *)self setRunningManualExposure:?];
LABEL_24:
      [device unlockForConfiguration];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v11 * v11;
  v13 = log2(v12 / (v6 / 100.0 * Seconds));
  v14 = v13 + v9;
  if (vabdd_f64(v13, v14) <= *([(CRDefaultCaptureSessionManager *)self exposure_table]+ 3))
  {
LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  [(CRDefaultCaptureSessionManager *)self minISO];
  v16 = v15;
  v17 = *[(CRDefaultCaptureSessionManager *)self exposure_table];
  v18 = v17 + 24 * *([(CRDefaultCaptureSessionManager *)self exposure_table]+ 2);
  v19 = log2(v12 / (*(v17 + 8) * ((*(v17 + 16) * v16) / 100.0)));
  v20 = (*v17 + (v14 - v19) * ((*(v18 - 24) - *v17) / (log2(v12 / (*(v18 - 16) * ((*(v18 - 8) * v16) / 100.0))) - v19)) + 0.5);
  if (v20 < 0)
  {
    [(CRDefaultCaptureSessionManager *)self minISO];
    v26 = v12 / (exp2(v14) * (v25 / 100.0));
    v23 = 1.0;
    v22 = 0.00001;
    if (v26 >= 0.00001)
    {
      v22 = v26;
    }
  }

  else
  {
    if (*([(CRDefaultCaptureSessionManager *)self exposure_table]+ 2) <= v20)
    {
      v20 = *([(CRDefaultCaptureSessionManager *)self exposure_table]+ 2) - 1;
    }

    v21 = *[(CRDefaultCaptureSessionManager *)self exposure_table]+ 24 * v20;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
  }

  CMTimeMakeWithSeconds(&v34, v22, 1000000000);
  [(CRDefaultCaptureSessionManager *)self maxISO];
  v28 = v27;
  [(CRDefaultCaptureSessionManager *)self minISO];
  if (v23 * v29 <= v28)
  {
    [(CRDefaultCaptureSessionManager *)self minISO];
  }

  else
  {
    [(CRDefaultCaptureSessionManager *)self maxISO];
  }

  v30 = [device lockForConfiguration:?];
  v24 = 0;
  if (v30)
  {
    [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgressTimeoutCount:?];
    [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgress:?];
    [(CRDefaultCaptureSessionManager *)self setRunningManualExposure:?];
    time = v34;
    [device setExposureModeCustomWithDuration:? ISO:? completionHandler:?];
    goto LABEL_24;
  }

LABEL_16:
}

- (BOOL)isFocusPointOfInterestSupported
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isFocusPointOfInterestSupported = [device isFocusPointOfInterestSupported];

  return isFocusPointOfInterestSupported;
}

- (CGPoint)focusPointOfInterest
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  [device focusPointOfInterest];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)isPreviewVideoMirrored
{
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  connection = [avfPreviewLayer connection];
  isVideoMirrored = [connection isVideoMirrored];

  return isVideoMirrored;
}

- (CGRect)previewVisibleRect
{
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  previewLayer = [(CRDefaultCaptureSessionManager *)self previewLayer];
  [previewLayer bounds];
  [avfPreviewLayer metadataOutputRectOfInterestForRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)cameraSessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  name = [interruptedCopy name];
  v4 = [name isEqualToString:?];

  if (v4)
  {
    userInfo = [interruptedCopy userInfo];
    v6 = [userInfo valueForKey:?];
    integerValue = [v6 integerValue];

    if (integerValue - 1 > 3)
    {
      v8 = @"CoreRecogntion: Unable to display camera view due to connection inturrupted notification %@";
    }

    else
    {
      v8 = off_278EAAB78[integerValue - 1];
    }

    NSLog(&v8->isa, interruptedCopy);
  }
}

- (AVCaptureVideoDataOutputSampleBufferDelegate)captureSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSessionDelegate);

  return WeakRetained;
}

- (AVCaptureMetadataOutputObjectsDelegate)captureSessionMetadataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSessionMetadataDelegate);

  return WeakRetained;
}

- (CGSize)cameraResolution
{
  objc_copyStruct(v4, &self->_cameraResolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (AVCaptureInputPort)inputPortFormatSender
{
  WeakRetained = objc_loadWeakRetained(&self->_inputPortFormatSender);

  return WeakRetained;
}

@end