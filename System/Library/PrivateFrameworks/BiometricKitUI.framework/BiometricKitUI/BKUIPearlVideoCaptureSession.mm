@interface BKUIPearlVideoCaptureSession
- (BKUIPearlVideoCaptureSession)init;
- (BKUIVideoCaptureSesssionDelegate)delegate;
- (BOOL)_synchronizedCaptureSessionInterrupted;
- (id)_frontCamera;
- (void)_captureSessionInterrupted:(id)interrupted;
- (void)_captureSessionStarted:(id)started;
- (void)_captureSessionStopped:(id)stopped;
- (void)_setupCaptureStack;
- (void)_stopSessionAndTearDown;
- (void)dealloc;
- (void)endCapture;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startCapture;
- (void)supportMultitaskingCameraAccess;
@end

@implementation BKUIPearlVideoCaptureSession

- (BKUIPearlVideoCaptureSession)init
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8.receiver = self;
  v8.super_class = BKUIPearlVideoCaptureSession;
  v3 = [(BKUIPearlVideoCaptureSession *)&v8 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.biometrickitui.pearlVideoCaptureSessionQueue", v4);
    captureQueue = v3->_captureQueue;
    v3->_captureQueue = v5;

    v3->_additionalPreviewScalingAllowedByCameraFormat = 1.0;
    [(BKUIPearlVideoCaptureSession *)v3 _setupCaptureStack];
  }

  return v3;
}

- (void)dealloc
{
  [(BKUIPearlVideoCaptureSession *)self _stopSessionAndTearDown];
  v3.receiver = self;
  v3.super_class = BKUIPearlVideoCaptureSession;
  [(BKUIPearlVideoCaptureSession *)&v3 dealloc];
}

- (id)_frontCamera
{
  v8[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_captureQueue);
  v2 = MEMORY[0x277CE5AD0];
  v8[0] = *MEMORY[0x277CE5878];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [v2 discoverySessionWithDeviceTypes:v3 mediaType:*MEMORY[0x277CE5EA8] position:2];

  devices = [v4 devices];
  firstObject = [devices firstObject];

  return firstObject;
}

- (void)endCapture
{
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BKUIPearlVideoCaptureSession_endCapture__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

- (void)startCapture
{
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BKUIPearlVideoCaptureSession_startCapture__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

uint64_t __44__BKUIPearlVideoCaptureSession_startCapture__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isRunning];
  if ((result & 1) == 0)
  {
    v3 = _BKUILoggingFacility(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "+++++++++ BKUIPearl: Starting Capture Session", v4, 2u);
    }

    [*(*(a1 + 32) + 8) addObserver:*(a1 + 32) forKeyPath:@"running" options:1 context:@"PSCaptureSessionActiveContext"];
    return [*(*(a1 + 32) + 8) startRunning];
  }

  return result;
}

- (void)_stopSessionAndTearDown
{
  if (self->_captureSession)
  {
    v3 = _BKUILoggingFacility(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "--------- BKUIPearl: Stopping Capture Session", v9, 2u);
    }

    captureSession = self->_captureSession;
    v5 = self->_deviceInput;
    v6 = captureSession;
    [(AVCaptureSession *)v6 removeInput:v5];
    [(AVCaptureSession *)v6 stopRunning];
    [(AVCaptureSession *)self->_captureSession removeObserver:self forKeyPath:@"running" context:@"PSCaptureSessionActiveContext"];
    v7 = self->_captureSession;
    self->_captureSession = 0;

    deviceInput = self->_deviceInput;
    self->_deviceInput = 0;
  }
}

- (void)_setupCaptureStack
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = _BKUILoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setup Capture Stack", buf, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CE5B38]);
  captureSession = self->_captureSession;
  self->_captureSession = v5;

  v7 = _BKUILoggingFacility([(BKUIPearlVideoCaptureSession *)self supportMultitaskingCameraAccess]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "_setupCaptureStack: PreviewLayer will be setup", buf, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x277CE5B68]) initWithSession:self->_captureSession];
  previewLayer = self->_previewLayer;
  self->_previewLayer = v8;

  previewLayer = [(BKUIPearlVideoCaptureSession *)self previewLayer];
  [previewLayer setVideoGravity:*MEMORY[0x277CE5DD8]];

  previewLayer2 = [(BKUIPearlVideoCaptureSession *)self previewLayer];
  [previewLayer2 setOpacity:0.0];

  v13 = _BKUILoggingFacility(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v13, OS_LOG_TYPE_DEFAULT, "_setupCaptureStack: PreviewLayer did setup", buf, 2u);
  }

  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(captureQueue, block);
  v16 = _BKUILoggingFacility(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v16, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setup Capture Stack finished sync work", buf, 2u);
  }
}

void __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = _BKUILoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setup Capture Stack async work", buf, 2u);
  }

  [*(*(a1 + 32) + 8) beginConfiguration];
  v3 = *MEMORY[0x277CE5988];
  v4 = [*(*(a1 + 32) + 8) canSetSessionPreset:*MEMORY[0x277CE5988]];
  if (!v4)
  {
    v14 = _BKUILoggingFacility(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_1(v14);
    }

    v15 = *(a1 + 32);
    v5 = *(v15 + 8);
    *(v15 + 8) = 0;
    goto LABEL_68;
  }

  [*(*(a1 + 32) + 8) setSessionPreset:v3];
  v5 = [*(a1 + 32) _frontCamera];
  if (!v5)
  {
    v16 = _BKUILoggingFacility(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_4(v16);
    }

    v17 = *(a1 + 32);
    v7 = *(v17 + 8);
    *(v17 + 8) = 0;
    goto LABEL_67;
  }

  v53 = 0;
  v6 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:v5 error:&v53];
  v7 = v53;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = v6;

  if (v7)
  {
    v11 = _BKUILoggingFacility(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_2(v7, v11);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *(v12 + 8) = 0;

    goto LABEL_67;
  }

  [*(*(a1 + 32) + 8) addInput:*(*(a1 + 32) + 16)];
  v18 = [MEMORY[0x277D75418] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 != 1)
  {
    goto LABEL_66;
  }

  v20 = +[BKUIDevice sharedInstance];
  v21 = [v20 isRestrictedToLandscapeEnrollment];

  if (v21)
  {
    v22 = MGGetProductType();
    v23 = [*(a1 + 32) previewLayer];
    v24 = [v23 connection];

    v25 = [v24 isVideoOrientationSupported];
    if (v25)
    {
      v26 = _BKUILoggingFacility([v24 setVideoOrientation:3]);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v56 = v22;
        _os_log_impl(&dword_241B0A000, v26, OS_LOG_TYPE_DEFAULT, "Capture orientation: Set to LandscapeRight for model: %ld", buf, 0xCu);
      }
    }

    else
    {
      v26 = _BKUILoggingFacility(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_3(v22, v26);
      }
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = [v5 formats];
  v28 = [v27 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v28)
  {
LABEL_61:

    goto LABEL_63;
  }

  v47 = v5;
  v29 = *v50;
LABEL_25:
  v30 = 0;
  while (1)
  {
    if (*v50 != v29)
    {
      objc_enumerationMutation(v27);
    }

    v31 = *(*(&v49 + 1) + 8 * v30);
    v32 = [v31 formatDescription];
    if (MGGetProductType() == 2023824667 || MGGetProductType() == 3101941570 || MGGetProductType() == 1868379043 || MGGetProductType() == 1373516433 || MGGetProductType() == 746003606 || MGGetProductType() == 1834147427 || MGGetProductType() == 3054476161 || MGGetProductType() == 2628394914 || MGGetProductType() == 3228373941 || MGGetProductType() == 1625227434 || MGGetProductType() == 3361025853 || MGGetProductType() == 2089455188 || (+[BKUIDevice sharedInstance](BKUIDevice, "sharedInstance"), v46 = objc_claimAutoreleasedReturnValue(), v45 = [v46 isRestrictedToLandscapeEnrollment], v46, v45))
    {
      if (CMFormatDescriptionGetMediaType(v32) != 1986618469 || ![v31 isVideoBinned])
      {
        goto LABEL_45;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(v32);
      v34 = 0x2D000000500;
    }

    else
    {
      if (CMFormatDescriptionGetMediaType(v32) != 1986618469 || CMFormatDescriptionGetMediaSubType(v32) != 875704438)
      {
        goto LABEL_45;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(v32);
      v34 = 0x438000005A0;
    }

    if (Dimensions == v34)
    {
      break;
    }

LABEL_45:
    if (v28 == ++v30)
    {
      v35 = [v27 countByEnumeratingWithState:&v49 objects:v54 count:16];
      v28 = v35;
      if (!v35)
      {
        v5 = v47;
        goto LABEL_61;
      }

      goto LABEL_25;
    }
  }

  v28 = v31;

  if (v28)
  {
    v37 = _BKUILoggingFacility(v36);
    v5 = v47;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v28;
      _os_log_impl(&dword_241B0A000, v37, OS_LOG_TYPE_DEFAULT, "will switch active camera format to %@", buf, 0xCu);
    }

    v48 = 0;
    v38 = [v47 lockForConfiguration:&v48];
    v39 = v48;
    v27 = v39;
    if (v38)
    {
      [v47 setActiveFormat:v28];
      v39 = [v47 unlockForConfiguration];
      *(*(a1 + 32) + 64) = 0x3FF5555555555555;
    }

    if (v27)
    {
      v40 = _BKUILoggingFacility(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v27;
        _os_log_impl(&dword_241B0A000, v40, OS_LOG_TYPE_DEFAULT, "lockForConfiguration error %@", buf, 0xCu);
      }
    }

    goto LABEL_61;
  }

  v5 = v47;
LABEL_63:
  v41 = _BKUILoggingFacility(v36);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v5 activeFormat];
    *buf = 138412290;
    v56 = v42;
    _os_log_impl(&dword_241B0A000, v41, OS_LOG_TYPE_DEFAULT, "active camera format %@", buf, 0xCu);
  }

LABEL_66:
  [*(*(a1 + 32) + 8) commitConfiguration];
  v43 = [MEMORY[0x277CCAB98] defaultCenter];
  [v43 addObserver:*(a1 + 32) selector:sel__captureSessionStarted_ name:*MEMORY[0x277CE5930] object:0];

  v44 = [MEMORY[0x277CCAB98] defaultCenter];
  [v44 addObserver:*(a1 + 32) selector:sel__captureSessionStopped_ name:*MEMORY[0x277CE5938] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel__captureSessionInterrupted_ name:*MEMORY[0x277CE59C8] object:0];
LABEL_67:

LABEL_68:
}

- (void)supportMultitaskingCameraAccess
{
  isMultitaskingCameraAccessSupported = [(AVCaptureSession *)self->_captureSession isMultitaskingCameraAccessSupported];
  if (isMultitaskingCameraAccessSupported)
  {
    v4 = _BKUILoggingFacility([(AVCaptureSession *)self->_captureSession setMultitaskingCameraAccessEnabled:1]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "_setupCaptureStack: Supporting Multitasking Camera Access";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = _BKUILoggingFacility(isMultitaskingCameraAccessSupported);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "_setupCaptureStack: Not supporting Multitasking Camera Access";
      v6 = &v7;
      goto LABEL_6;
    }
  }
}

- (void)_captureSessionStarted:(id)started
{
  startedCopy = started;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = _BKUILoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Capture session started", v8, 2u);
  }

  selfCopy->_captureSessionInterrupted = 0;
  objc_sync_exit(selfCopy);
}

- (void)_captureSessionStopped:(id)stopped
{
  stoppedCopy = stopped;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = _BKUILoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Capture session stopped", v8, 2u);
  }

  selfCopy->_captureSessionInterrupted = 0;
  objc_sync_exit(selfCopy);
}

- (void)_captureSessionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = _BKUILoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Capture session interrupted", v8, 2u);
  }

  selfCopy->_captureSessionInterrupted = 1;
  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"PSCaptureSessionActiveContext")
  {
    if ([path isEqualToString:{@"running", object, change}])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = WeakRetained;
      if (WeakRetained)
      {
        if ([WeakRetained expectsRunningVideoCaptureSession:self])
        {
          if (![(AVCaptureSession *)self->_captureSession isRunning])
          {
            _synchronizedCaptureSessionInterrupted = [(BKUIPearlVideoCaptureSession *)self _synchronizedCaptureSessionInterrupted];
            if ((_synchronizedCaptureSessionInterrupted & 1) == 0)
            {
              captureSessionRestarts = self->_captureSessionRestarts;
              if (captureSessionRestarts <= 4)
              {
                self->_captureSessionRestarts = captureSessionRestarts + 1;
                v11 = _BKUILoggingFacility(_synchronizedCaptureSessionInterrupted);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Capture session suddenly stopped running. mediaserverd crash?", buf, 2u);
                }

                captureQueue = self->_captureQueue;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __79__BKUIPearlVideoCaptureSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
                block[3] = &unk_278D09978;
                block[4] = self;
                dispatch_async(captureQueue, block);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BKUIPearlVideoCaptureSession;
    [(BKUIPearlVideoCaptureSession *)&v13 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (BOOL)_synchronizedCaptureSessionInterrupted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  captureSessionInterrupted = selfCopy->_captureSessionInterrupted;
  objc_sync_exit(selfCopy);

  return captureSessionInterrupted;
}

- (BKUIVideoCaptureSesssionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_241B0A000, a2, OS_LOG_TYPE_FAULT, "BKUIPearl: Failed to get input device, %@", &v2, 0xCu);
}

void __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Capture orientation: Failed to set to LandscapeRight for model: %ld - video orientation unsupported", &v2, 0xCu);
}

@end