@interface VKAVCaptureFrameProvider
- (CGPoint)interestPoint;
- (VKAVCaptureFrameProvider)initWithConfiguration:(id)configuration;
- (double)_luminosityForSampleBuffer:(uint64_t)buffer;
- (id)_ciImage;
- (uint64_t)_currentFrame;
- (uint64_t)_respondsToDidCapturePhoto;
- (uint64_t)_respondsToDidZoom;
- (uint64_t)_respondsToIsRunning;
- (uint64_t)_stabilityFromSampleBuffer:(uint64_t)buffer;
- (void)_avCapturePreparationComplete;
- (void)_avCapturePreparationComplete2;
- (void)_didChangeDimensions;
- (void)_setCurrentFrame:(uint64_t)frame;
- (void)_setRespondsToDidCapturePhoto:(uint64_t)photo;
- (void)_setRespondsToDidZoom:(uint64_t)zoom;
- (void)_setRespondsToIsRunning:(uint64_t)running;
- (void)avCapture:(id)capture cameraAccessGranted:(BOOL)granted;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)capturePhoto;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepare;
- (void)previewView:(id)view didMoveToWindow:(id)window;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setInterestPoint:(CGPoint)point;
- (void)setRegionOfInterest:(CGRect)interest;
- (void)snapshotWithCompletion:(id)completion;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation VKAVCaptureFrameProvider

- (VKAVCaptureFrameProvider)initWithConfiguration:(id)configuration
{
  v19.receiver = self;
  v19.super_class = VKAVCaptureFrameProvider;
  v3 = [(VKFrameProvider *)&v19 initWithConfiguration:configuration];
  if (v3)
  {
    v4 = objc_alloc_init(VKAVCapturePreviewView);
    v5 = *(v3 + 15);
    *(v3 + 15) = v4;

    [(VKAVCapturePreviewView *)*(v3 + 15) setDelegate:v3];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);

    v8 = dispatch_queue_create("com.apple.visionkit.samplebufferqueue", v7);
    v9 = *(v3 + 18);
    *(v3 + 18) = v8;

    v10 = dispatch_queue_create("com.apple.visionkit.snapshotQueue", v7);
    v11 = *(v3 + 19);
    *(v3 + 19) = v10;

    v12 = objc_alloc_init(VKAVCapture);
    v13 = *(v3 + 16);
    *(v3 + 16) = v12;

    [(VKAVCapture *)*(v3 + 16) setDelegate:v3];
    *(v3 + 168) = VKMRectUnit;
    *(v3 + 184) = *&qword_1B44285A8;
    v14 = MEMORY[0x1E695EFD0];
    v15 = *MEMORY[0x1E695EFD0];
    v16 = *(MEMORY[0x1E695EFD0] + 16);
    *(v3 + 200) = *MEMORY[0x1E695EFD0];
    *(v3 + 216) = v16;
    v17 = *(v14 + 32);
    *(v3 + 232) = v17;
    *(v3 + 248) = v15;
    *(v3 + 264) = v16;
    *(v3 + 280) = v17;
    *(v3 + 312) = v16;
    *(v3 + 328) = v17;
    *(v3 + 296) = v15;
  }

  return v3;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(self);
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Can't remove observer; we never added it. %@", &v3, 0xCu);
  }

  objc_end_catch();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (VKAVCaptureFrameProviderContext == context)
  {
    if ([pathCopy isEqualToString:@"videoZoomFactor"])
    {
      if (self)
      {
        [(VKFrameProvider *)self lock];
        respondsToDidZoom = self->_respondsToDidZoom;
        [(VKFrameProvider *)self unlock];
        if (respondsToDidZoom)
        {
          objc_initWeak(location, self);
          delegateQueue = [(VKFrameProvider *)self delegateQueue];
          [VKAVCaptureFrameProvider observeValueForKeyPath:delegateQueue ofObject:&v29 change:location context:?];
        }
      }
    }

    else if ([pathCopy isEqualToString:@"torchActive"])
    {
      [VKAVCaptureFrameProvider observeValueForKeyPath:? ofObject:? change:? context:?];
    }

    else if ([pathCopy isEqualToString:@"running"])
    {
      if (self)
      {
        [(VKFrameProvider *)self lock];
        respondsToIsRunning = self->_respondsToIsRunning;
        [(VKFrameProvider *)self unlock];
        if (respondsToIsRunning)
        {
          session = [(VKAVCapture *)self->_avCapture session];
          isRunning = [session isRunning];

          objc_initWeak(location, self);
          delegateQueue2 = [(VKFrameProvider *)self delegateQueue];
          [VKAVCaptureFrameProvider observeValueForKeyPath:isRunning ofObject:delegateQueue2 change:&v28 context:location];
        }
      }
    }

    else if ([pathCopy isEqualToString:@"videoRotationAngleForHorizonLevelPreview"])
    {
      isProcessing = [(VKFrameProvider *)self isProcessing];
      [(VKFrameProvider *)self stopProcessing];
      [(AVCaptureDeviceRotationCoordinator *)self->_avDeviceRotationCoordinator videoRotationAngleForHorizonLevelPreview];
      v21 = v20;
      [(VKAVCapturePreviewView *)self->_avCapturePreviewView setVideoRotationAngle:v20];
      objc_initWeak(&from, self);
      avCapture = self->_avCapture;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
      v25[3] = &unk_1E7BE4280;
      objc_copyWeak(&v26, &from);
      [(VKAVCapture *)avCapture setVideoRotationAngle:v25 completion:v21];
      v23 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412546;
        *&location[4] = pathCopy;
        v31 = 2048;
        v32 = v21;
        _os_log_impl(&dword_1B4335000, v23, OS_LOG_TYPE_DEFAULT, "%@ changed to %f", location, 0x16u);
      }

      [(VKAVCaptureFrameProvider *)self _didChangeDimensions];
      if (isProcessing)
      {
        [(VKFrameProvider *)self startProcessing];
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = VKAVCaptureFrameProvider;
    [(VKAVCaptureFrameProvider *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 avCaptureFrameProviderDidZoom:v3];

    WeakRetained = v3;
  }
}

void __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 avCaptureFrameProvider:v4 didChangeIsRunning:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(VKAVCaptureFrameProvider *)WeakRetained _didChangeDimensions];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v10 setDelegate:delegateCopy queue:queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__VKAVCaptureFrameProvider_setDelegate_queue___block_invoke;
  v8[3] = &unk_1E7BE4768;
  v8[4] = self;
  v9 = delegateCopy;
  v7 = delegateCopy;
  vk_performWhileLocked(self, v8);
}

uint64_t __46__VKAVCaptureFrameProvider_setDelegate_queue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 344) = objc_opt_respondsToSelector() & 1;
  *(*(a1 + 32) + 345) = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 346) = result & 1;
  return result;
}

- (void)prepare
{
  objc_initWeak(&location, self);
  avCapture = self->_avCapture;
  configuration = [(VKFrameProvider *)self configuration];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__VKAVCaptureFrameProvider_prepare__block_invoke;
  v5[3] = &unk_1E7BE41E0;
  objc_copyWeak(&v6, &location);
  [(VKAVCapture *)avCapture prepareWithConfiguration:configuration completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __35__VKAVCaptureFrameProvider_prepare__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (a2)
  {
    [(VKAVCaptureFrameProvider *)WeakRetained _avCapturePreparationComplete];
  }

  else if (+[VKAVCapture authorizationStatus]== 2)
  {
    v5 = [v8 delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [v8 delegate];
      [v7 avCaptureFrameProvider:v8 cameraAccessGranted:0];
    }
  }
}

- (void)_avCapturePreparationComplete
{
  if (self)
  {
    device = [(VKAVCapture *)*(self + 128) device];
    [device addObserver:self forKeyPath:@"videoZoomFactor" options:1 context:VKAVCaptureFrameProviderContext];

    device2 = [(VKAVCapture *)*(self + 128) device];
    [device2 addObserver:self forKeyPath:@"torchActive" options:1 context:VKAVCaptureFrameProviderContext];

    session = [(VKAVCapture *)*(self + 128) session];
    [session addObserver:self forKeyPath:@"running" options:1 context:VKAVCaptureFrameProviderContext];

    v6 = *MEMORY[0x1E69874F0];
    previewLayer = [(VKAVCapturePreviewView *)*(self + 120) previewLayer];
    [previewLayer setVideoGravity:v6];

    session2 = [(VKAVCapture *)*(self + 128) session];
    previewLayer2 = [(VKAVCapturePreviewView *)*(self + 120) previewLayer];
    [previewLayer2 setSession:session2];

    videoDataOutput = [(VKAVCapture *)*(self + 128) videoDataOutput];
    [videoDataOutput setSampleBufferDelegate:self queue:*(self + 144)];

    v11 = objc_alloc(MEMORY[0x1E69870B8]);
    device3 = [(VKAVCapture *)*(self + 128) device];
    previewLayer3 = [(VKAVCapturePreviewView *)*(self + 120) previewLayer];
    v14 = [v11 initWithDevice:device3 previewLayer:previewLayer3];
    v15 = *(self + 136);
    *(self + 136) = v14;

    [*(self + 136) videoRotationAngleForHorizonLevelPreview];
    v17 = v16;
    [(VKAVCapturePreviewView *)*(self + 120) setVideoRotationAngle:v16];
    objc_initWeak(&location, self);
    v18 = *(self + 128);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__VKAVCaptureFrameProvider__avCapturePreparationComplete__block_invoke;
    v19[3] = &unk_1E7BE4280;
    objc_copyWeak(&v20, &location);
    [(VKAVCapture *)v18 setVideoRotationAngle:v19 completion:v17];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)startRunning
{
  v5.receiver = self;
  v5.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v5 startRunning];
  session = [(VKAVCapture *)self->_avCapture session];

  if (session)
  {
    [(VKAVCapture *)&self->_avCapture->super.isa startRunning];
    v4 = 0;
  }

  else
  {
    [(VKAVCaptureFrameProvider *)self prepare];
    v4 = 1;
  }

  self->_startWhenReady = v4;
}

- (void)stopRunning
{
  [(VKAVCapture *)&self->_avCapture->super.isa stopRunning];
  v3.receiver = self;
  v3.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v3 stopRunning];
}

- (CGPoint)interestPoint
{
  interestPoint = [(VKAVCapture *)self->_avCapture interestPoint];
  v5 = v4;
  previewLayer = [(VKAVCapturePreviewView *)self->_avCapturePreviewView previewLayer];
  [previewLayer pointForCaptureDevicePointOfInterest:{interestPoint, v5}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setInterestPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  previewLayer = [(VKAVCapturePreviewView *)self->_avCapturePreviewView previewLayer];
  [previewLayer captureDevicePointOfInterestForPoint:{x, y}];

  avCapture = self->_avCapture;

  [VKAVCapture setInterestPoint:?];
}

- (void)capturePhoto
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    photoOutput = [(VKAVCapture *)self->_avCapture photoOutput];
    v8 = 138412546;
    v9 = photoOutput;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "[VKAVCaptureFrameProvider capturePhoto] with photoOutput:%@ self:%@", &v8, 0x16u);
  }

  photoSettings = [MEMORY[0x1E6987100] photoSettings];
  photoOutput2 = [(VKAVCapture *)self->_avCapture photoOutput];
  [photoSettings setMaxPhotoDimensions:{objc_msgSend(photoOutput2, "maxPhotoDimensions")}];

  [photoSettings setEmbedsDepthDataInPhoto:0];
  [photoSettings setDepthDataDeliveryEnabled:0];
  photoOutput3 = [(VKAVCapture *)self->_avCapture photoOutput];
  [photoOutput3 capturePhotoWithSettings:photoSettings delegate:self];
}

void __51__VKAVCaptureFrameProvider_snapshotWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) imageByCroppingToRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  Width = CGRectGetWidth(*(a1 + 56));
  v6 = CGRectGetWidth(*(a1 + 88));
  v7 = *(*(a1 + 32) + 352);
  if (!v7)
  {
    v8 = [MEMORY[0x1E695F620] context];
    v9 = *(a1 + 32);
    v10 = *(v9 + 352);
    *(v9 + 352) = v8;

    v7 = *(*(a1 + 32) + 352);
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  [v11 extent];
  v12 = [v7 createCGImage:v11 fromRect:?];
  v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v12 scale:0 orientation:Width / v6];
  CGImageRelease(v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VKAVCaptureFrameProvider_snapshotWithCompletion___block_invoke_2;
  v16[3] = &unk_1E7BE47E0;
  v14 = *(a1 + 40);
  v17 = v13;
  v18 = v14;
  v15 = v13;
  vk_performBlockOnMainThread(v16);
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  photoCopy = photo;
  errorCopy = error;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = photoCopy;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "AVCapturePhotoCaptureDelegate received callback with photo: %@, error: %@", buf, 0x16u);
  }

  if (self && ([(VKFrameProvider *)self lock], respondsToDidCapturePhoto = self->_respondsToDidCapturePhoto, [(VKFrameProvider *)self unlock], respondsToDidCapturePhoto))
  {
    metadata = [photoCopy metadata];
    v14 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    integerValue = [v14 integerValue];

    v16 = vk_orientationFromCGImagePropertyOrientation(integerValue);
    cGImageRepresentation = [photoCopy CGImageRepresentation];
    v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImageRepresentation scale:v16 orientation:1.0];
    objc_initWeak(buf, self);
    delegateQueue = [(VKFrameProvider *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__VKAVCaptureFrameProvider_captureOutput_didFinishProcessingPhoto_error___block_invoke;
    block[3] = &unk_1E7BE51C8;
    objc_copyWeak(&v24, buf);
    v22 = v18;
    v23 = errorCopy;
    v20 = v18;
    dispatch_async(delegateQueue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    [VKAVCaptureFrameProvider captureOutput:didFinishProcessingPhoto:error:];
  }
}

void __73__VKAVCaptureFrameProvider_captureOutput_didFinishProcessingPhoto_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "VKAVCaptureFrameProviderDelegate Invoking didCapturePhoto on delegate.", v5, 2u);
    }

    v4 = [WeakRetained delegate];
    [v4 avCaptureFrameProvider:WeakRetained didCapturePhoto:*(a1 + 32) error:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__VKAVCaptureFrameProvider_captureOutput_didFinishProcessingPhoto_error___block_invoke_cold_1(v4);
  }
}

void __57__VKAVCaptureFrameProvider__avCapturePreparationComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(VKAVCaptureFrameProvider *)WeakRetained _didChangeDimensions];
    [(VKAVCaptureFrameProvider *)v2 _avCapturePreparationComplete2];
    WeakRetained = v2;
  }
}

__n128 __48__VKAVCaptureFrameProvider__didChangeDimensions__block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 168);
  v2 = *(a1 + 56);
  *v1 = *(a1 + 40);
  v1[1] = v2;
  v3 = (*(a1 + 32) + 200);
  v4 = *(a1 + 104);
  v5 = *(a1 + 88);
  *v3 = *(a1 + 72);
  v3[1] = v5;
  v3[2] = v4;
  v6 = (*(a1 + 32) + 248);
  v7 = *(a1 + 152);
  v8 = *(a1 + 136);
  *v6 = *(a1 + 120);
  v6[1] = v8;
  v6[2] = v7;
  v9 = *(a1 + 32) + 296;
  result = *(a1 + 168);
  v11 = *(a1 + 200);
  *(v9 + 16) = *(a1 + 184);
  *(v9 + 32) = v11;
  *v9 = result;
  return result;
}

- (void)previewView:(id)view didMoveToWindow:(id)window
{
  viewCopy = view;
  windowCopy = window;
  if (windowCopy && self->_startWhenReady)
  {
    [(VKAVCaptureFrameProvider *)self startRunning];
  }
}

- (void)avCapture:(id)capture cameraAccessGranted:(BOOL)granted
{
  grantedCopy = granted;
  delegate = [(VKFrameProvider *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(VKFrameProvider *)self delegate];
    [delegate2 avCaptureFrameProvider:self cameraAccessGranted:grantedCopy];
  }
}

- (uint64_t)_respondsToDidZoom
{
  if (self)
  {
    [self lock];
    v2 = self[345];
    [self unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_respondsToIsRunning
{
  if (self)
  {
    [self lock];
    v2 = self[346];
    [self unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_didChangeDimensions
{
  if (self)
  {
    videoSettings = [(VKAVCapture *)self[16] videoSettings];
    v3 = [videoSettings objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    [v3 doubleValue];
    sx = v4;

    v5 = [videoSettings objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    [v5 doubleValue];
    v7 = v6;

    previewView = [self previewView];
    [previewView bounds];
    v72 = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [self regionOfInterest];
    x = v103.origin.x;
    y = v103.origin.y;
    width = v103.size.width;
    height = v103.size.height;
    IsEmpty = CGRectIsEmpty(v103);
    if (IsEmpty)
    {
      *&v21 = v13;
    }

    else
    {
      *&v21 = width;
    }

    if (IsEmpty)
    {
      *&v22 = v15;
    }

    else
    {
      *&v22 = height;
    }

    v68 = v22;
    v70 = v21;
    if (IsEmpty)
    {
      y = v11;
      v23 = *&v72;
    }

    else
    {
      v23 = x;
    }

    v24 = *&v7;
    if (VKMSizeGetArea(*&sx, *&v7) != 0.0 && VKMSizeGetArea(v13, v15) != 0.0)
    {
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v25 = OUTLINED_FUNCTION_5();
      VKMAffineTransformAspectFill(v26, v25, v27, v13, v15);
      memset(&v98, 0, sizeof(v98));
      memset(&v99, 0, sizeof(v99));
      CGAffineTransformInvert(&v99, &v98);
      memset(&v98, 0, sizeof(v98));
      v28 = OUTLINED_FUNCTION_5();
      VKMAffineTransformNormalize(v29, v28, v30);
      t1 = v99;
      v31 = CGAffineTransformConcat(&v98, &t1, &t2);
      memset(&t2, 0, sizeof(t2));
      OUTLINED_FUNCTION_3_1(0, v39, v40, v41, v31, v32, v33, v34, v35, v36, v37, v38, v7, v68, v70, v72, sx, block, v78, v79, v80, selfCopy, v82, v83, v84, v85, *&v86.a, *&v86.b, *&v86.c, *&v86.d, *&v86.tx, *&v86.ty, *&v87.a, *&v87.b, *&v87.c, *&v87.d, *&v87.tx, *&v87.ty, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), *&v91.a, *&v91.b, *&v91.c, *&v91.d, *&v91.tx, *&v91.ty, *&v92.a, *&v92.b, *&v92.c, *&v92.d, *&v92.tx, *&v92.ty, *&v93.a, *&v93.b, *&v93.c, *&v93.d, *&v93.tx, *&v93.ty, *&v94.a);
      v95 = v98;
      CGAffineTransformConcat(&t2, &v95, &t1);
      t1 = t2;
      v104.origin.x = v23;
      v104.origin.y = y;
      v104.size.height = v69;
      v104.size.width = v71;
      v105 = CGRectApplyAffineTransform(v104, &t1);
      VKMClampRectToRect(v105.origin.x, v105.origin.y, v105.size.width, v105.size.height, 0.0, 0.0, 1.0, 1.0);
      OUTLINED_FUNCTION_7();
      v43 = v42.n128_u64[0];
      v45 = v44.n128_u64[0];
      memset(&t1, 0, sizeof(t1));
      OUTLINED_FUNCTION_3_1(0, v54, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53, sy, *&v69, *&v71, v73, sxa, block, v78, v79, v80, selfCopy, v82, v83, v84, v85, *&v86.a, *&v86.b, *&v86.c, *&v86.d, *&v86.tx, *&v86.ty, *&v87.a, *&v87.b, *&v87.c, *&v87.d, *&v87.tx, *&v87.ty, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), *&v91.a, *&v91.b, *&v91.c, *&v91.d, *&v91.tx, *&v91.ty, *&v92.a, *&v92.b, *&v92.c, *&v92.d, *&v92.tx, *&v92.ty, *&v93.a, *&v93.b, *&v93.c, *&v93.d, *&v93.tx, *&v93.ty, *&v94.a);
      v95 = t1;
      v106.origin.x = y;
      v106.origin.y = v24;
      *&v106.size.width = v43;
      *&v106.size.height = v45;
      CGRectApplyAffineTransform(v106, &v95);
      OUTLINED_FUNCTION_7();
      v56 = v55;
      v58 = v57;
      VKMAffineTransformScaleBySize(&v95, sxb, sya);
      v107.origin.x = OUTLINED_FUNCTION_5();
      v107.size.width = v56;
      v107.size.height = v58;
      CGRectApplyAffineTransform(v107, v59);
      OUTLINED_FUNCTION_7();
      memset(&v95, 0, sizeof(v95));
      VKMAffineTransformScaleBySize(&v94, v60, v61);
      v93 = t1;
      CGAffineTransformConcat(&v95, &v93, &v94);
      memset(&v94, 0, sizeof(v94));
      v62 = OUTLINED_FUNCTION_5();
      CGAffineTransformMakeTranslation(v63, v62, v64);
      v92 = v95;
      CGAffineTransformConcat(&v94, &v92, &v93);
      memset(&v93, 0, sizeof(v93));
      v91 = v99;
      CGAffineTransformInvert(&v92, &v91);
      v91 = v94;
      CGAffineTransformConcat(&v93, &v91, &v92);
      v65 = self[18];
      block = MEMORY[0x1E69E9820];
      v78 = 3221225472;
      v79 = __48__VKAVCaptureFrameProvider__didChangeDimensions__block_invoke;
      v80 = &unk_1E7BE51F0;
      selfCopy = self;
      v82 = *&y;
      v83 = *&v24;
      v84 = v43;
      v85 = v45;
      v86 = v95;
      v87 = v93;
      v90 = v102;
      v89 = v101;
      v88 = v100;
      dispatch_sync(v65, &block);
      [self resetAllProcessors];
    }
  }
}

- (void)setRegionOfInterest:(CGRect)interest
{
  v4.receiver = self;
  v4.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v4 setRegionOfInterest:interest.origin.x, interest.origin.y, interest.size.width, interest.size.height];
  [(VKAVCaptureFrameProvider *)self _didChangeDimensions];
}

- (void)snapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = completionCopy;
  if (self && self->__currentFrame)
  {
    previewView = [(VKAVCaptureFrameProvider *)self previewView];
    [previewView bounds];
    OUTLINED_FUNCTION_7();
    v14 = v13;
    v16 = v15;

    [(VKFrameProvider *)self regionOfInterest];
    OUTLINED_FUNCTION_6();
    if (CGRectIsEmpty(v33))
    {
      v5 = v3;
      v6 = v4;
      v7 = v14;
      v8 = v16;
    }

    info = [(VKFrame *)self->__currentFrame info];
    v18 = info;
    if (info)
    {
      objc_msgSend_imageToLayerTransform(info);
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    CGAffineTransformInvert(&v32, &v31);
    v34.origin.x = v5;
    v34.origin.y = v6;
    v34.size.width = v7;
    v34.size.height = v8;
    CGRectApplyAffineTransform(v34, &v32);
    OUTLINED_FUNCTION_6();

    v32.a = 0.0;
    *&v32.b = &v32;
    *&v32.c = 0x3032000000;
    *&v32.d = __Block_byref_object_copy__5;
    *&v32.tx = __Block_byref_object_dispose__5;
    *&v32.ty = [(VKAVCaptureFrameProvider *)self _ciImage];
    snapshotQueue = self->_snapshotQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VKAVCaptureFrameProvider_snapshotWithCompletion___block_invoke;
    block[3] = &unk_1E7BE51A0;
    v23 = v5;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    v27 = v3;
    v28 = v4;
    v29 = v14;
    v30 = v16;
    v22 = &v32;
    block[4] = self;
    v21 = v11;
    dispatch_async(snapshotQueue, block);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (uint64_t)_currentFrame
{
  if (result)
  {
    return *(result + 392);
  }

  return result;
}

- (id)_ciImage
{
  if (self && *(self + 392))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer([*(self + 392) sampleBuffer]);
    CVPixelBufferLockBaseAddress(ImageBuffer, 0);
    v2 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:ImageBuffer];
    CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_respondsToDidCapturePhoto
{
  if (self)
  {
    [self lock];
    v2 = self[344];
    [self unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setRespondsToDidCapturePhoto:(uint64_t)photo
{
  if (photo)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_setRespondsToDidZoom:(uint64_t)zoom
{
  if (zoom)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_setRespondsToIsRunning:(uint64_t)running
{
  if (running)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_avCapturePreparationComplete2
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 136) addObserver:self forKeyPath:@"videoRotationAngleForHorizonLevelPreview" options:1 context:VKAVCaptureFrameProviderContext];
    [(VKAVCaptureFrameProvider *)self _didChangeDimensions];
    if (*(self + 160) == 1)
    {
      window = [*(self + 120) window];
      if (window)
      {
      }

      else
      {
        configuration = [self configuration];
        allowHeadlessProcessing = [configuration allowHeadlessProcessing];

        if ((allowHeadlessProcessing & 1) == 0)
        {
          v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = 138412290;
            selfCopy = self;
            _os_log_error_impl(&dword_1B4335000, v8, OS_LOG_TYPE_ERROR, "%@ - AVCapturePreviewView doesn't have a window. Can't start running", &v9, 0xCu);
          }

          goto LABEL_7;
        }
      }

      [self startRunning];
    }

LABEL_7:
    delegate = [self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [self delegate];
      [delegate2 avCaptureFrameProviderDidFinishPreparation:self];
    }
  }
}

- (uint64_t)_stabilityFromSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  v4 = CMGetAttachment(target, @"SceneStabilityMetric", 0);
  if (!v4)
  {
    [VKAssert handleFailedAssertWithCondition:"stabilityMetrics != ((void*)0)" functionName:"[VKAVCaptureFrameProvider _stabilityFromSampleBuffer:]" simulateCrash:0 showAlert:0 format:@"Missing stability metric"];
  }

  [v4 doubleValue];
  v6 = v5;
  valuePtr = v5;
  device = [(VKAVCapture *)*(buffer + 128) device];
  activePrimaryConstituentDevice = [device activePrimaryConstituentDevice];

  deviceType = [activePrimaryConstituentDevice deviceType];
  v10 = *MEMORY[0x1E6986948];

  if (deviceType == v10)
  {
    valuePtr = v6 + (1.0 - v6) * 0.25;
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    CMSetAttachment(target, @"SceneStabilityMetric", v11, 1u);
    CFRelease(v11);
    v6 = valuePtr;
  }

  v12 = 3;
  if (v6 < 0.96)
  {
    v12 = 2;
  }

  if (v6 < 0.6)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (double)_luminosityForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0.0;
  }

  v2 = CMCopyDictionaryOfAttachments(0, a2, 1u);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
  CFRelease(v2);
  v4 = [(__CFDictionary *)MutableCopy objectForKeyedSubscript:@"{Exif}"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"FNumber"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v5 objectForKeyedSubscript:@"ExposureTime"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v5 objectForKeyedSubscript:@"ISOSpeedRatings"];
    v13 = [v12 objectAtIndexedSubscript:0];
    [v13 doubleValue];
    v15 = v14;

    if (v11 * v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v8 * (v8 * 50.0) / (v11 * v15);
    }
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  v9 = Dimensions;
  v10 = HIDWORD(Dimensions);
  v11 = objc_alloc_init(VKFrameInfo);
  [(VKFrameInfo *)v11 setDimensions:v9, v10];
  [(VKFrameInfo *)v11 setRegionOfInterest:self->_visionRegionOfInterest.origin.x, self->_visionRegionOfInterest.origin.y, self->_visionRegionOfInterest.size.width, self->_visionRegionOfInterest.size.height];
  [OUTLINED_FUNCTION_1_3() setVisionToCroppedImageTransform:?];
  [OUTLINED_FUNCTION_1_3() setVisionToLayerTransform:?];
  [OUTLINED_FUNCTION_1_3() setImageToLayerTransform:?];
  [(VKFrameInfo *)v11 setSceneStability:[(VKAVCaptureFrameProvider *)self _stabilityFromSampleBuffer:buffer]];
  [(VKFrameInfo *)v11 setLuminosity:[(VKAVCaptureFrameProvider *)self _luminosityForSampleBuffer:buffer]];
  v12 = objc_alloc_init(VKAVCaptureFrame);
  [(VKAVCaptureFrame *)v12 setSampleBuffer:buffer];
  [(VKFrame *)v12 setInfo:v11];
  [(VKFrameProvider *)self sendFrame:v12];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v14[2] = __79__VKAVCaptureFrameProvider_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
  v14[3] = &unk_1E7BE4768;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_setCurrentFrame:(uint64_t)frame
{
  if (frame)
  {
    objc_storeStrong((frame + 392), a2);
  }
}

- (void)observeValueForKeyPath:(id *)from ofObject:change:context:.cold.1(NSObject *a1, id *a2, id *from)
{
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  a2[3] = &unk_1E7BE4280;
  objc_copyWeak(a2 + 4, from);
  dispatch_async(a1, a2);

  objc_destroyWeak(a2 + 4);
  objc_destroyWeak(from);
}

- (void)observeValueForKeyPath:(char)a1 ofObject:(NSObject *)a2 change:(id *)a3 context:(id *)from .cold.2(char a1, NSObject *a2, id *a3, id *from)
{
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  a3[3] = &unk_1E7BE5178;
  objc_copyWeak(a3 + 4, from);
  *(a3 + 40) = a1;
  dispatch_async(a2, a3);

  objc_destroyWeak(a3 + 4);
  objc_destroyWeak(from);
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:change:context:.cold.3(void *a1)
{
  if ([a1 isTorchOn] && (-[VKAVCapture isTorchOn](a1[16]) & 1) == 0)
  {
    v2 = a1[16];

    [(VKAVCapture *)v2 setTorchOn:?];
  }
}

- (void)captureOutput:didFinishProcessingPhoto:error:.cold.1()
{
  v0 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1B4335000, v0, OS_LOG_TYPE_ERROR, "Unexpected error. VKAVCaptureFrameProviderDelegate doesn't respond to didCapturePhoto", v1, 2u);
  }
}

@end