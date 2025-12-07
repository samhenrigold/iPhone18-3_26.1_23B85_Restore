@interface CRCameraReader
+ (CGRect)aspectRatioPaddedRect:(CGRect)rect expectedWidth:(double)width height:(double)height orientation:(unsigned int)orientation;
+ (CGRect)uniformPadRect:(CGRect)rect widthPadding:(float)padding heightPadding:(float)heightPadding width:(double)width height:(double)height;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer cameraIntrinsicData:(id)data;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation unpaddedCardImage:(id *)self0;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage outputObjectTypes:(id)types;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi outputObjectTypes:(id)types;
+ (id)perspectiveCorrectedImage:(id)image p1:(CGPoint)p1 p2:(CGPoint)p2 p3:(CGPoint)p3 p4:(CGPoint)p4;
+ (id)platformImageFromCIImage:(id)image;
+ (id)scaledImage:(id)image width:(double)width height:(double)height;
+ (id)targetRectsForImage:(id)image;
+ (id)textFeatureWithVNTextObservation:(id)observation;
+ (unint64_t)supportedCameraCount;
+ (void)loadFonts;
- (CGRect)boxLayerPresentationFrame;
- (CRCameraReader)initWithNibName:(id)name bundle:(id)bundle options:(id)options;
- (CRCameraReaderDelegate)callbackDelegate;
- (NSArray)outputObjectTypes;
- (__CVBuffer)createFastAccessPixelBufferWithSize:(CGSize)size videoFormat:(int)format;
- (id)attributedStringWithFrame:(CGSize)frame withFont:(id)font withString:(id)string color:(CGColor *)color;
- (id)cameraIntrinsicDataForSampleBuffer:(opaqueCMSampleBuffer *)buffer width:(unint64_t)width height:(unint64_t)height;
- (id)createTextLayerForRecognizedObject:(id)object;
- (id)currentDeviceID;
- (id)extractFinalDigitStringFromNumbers:(id)numbers;
- (id)findCCExpDateInImageEmbossed:(id)embossed;
- (id)findCCNameInImageEmbossed:(id)embossed;
- (id)findCCNumberInImageEmbossed:(id)embossed;
- (id)findCCNumberInImageEmbossed:(id)embossed withFinalDigit:(id)digit;
- (id)findCCObjectEmbossed:(id)embossed inImage:(id)image forRect:(id)rect;
- (id)findCCObjectsEmbossed:(id)embossed inImage:(id)image numberRects:(id)rects nameRects:(id)nameRects dateRects:(id)dateRects;
- (id)findCCResultsInImageFlat:(id)flat usingTextFeatures:(id)features invert:(BOOL)invert;
- (id)findObjectsEmbossed:(id)embossed inImage:(id)image;
- (id)findObjectsFlat:(id)flat inImage:(id)image numberRects:(id)rects invert:(BOOL)invert;
- (id)generateStringFromDate:(id)date;
- (id)getCorrectedIDImageFromAuxiliaryPoints:(id)points fromPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation unpaddedCardImage:(id *)image;
- (int64_t)currentCameraIdentifier;
- (unint64_t)getFirstTimeFrameIndexForPinnedField:(id)field;
- (void)aetPlacementTextColor:(id)color;
- (void)animatePresentCodeAtFrameTime:(id *)time;
- (void)cancel;
- (void)captureImage;
- (void)captureImageFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)createCorrectedCardBuffer;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)findCodeInSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)findIDObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time;
- (void)findOCRTextObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer attachments:(id)attachments frameTime:(id *)time;
- (void)findObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time;
- (void)flashScreenAndPlayCaptureSound;
- (void)hideBoxLayer;
- (void)loadModels;
- (void)loadView;
- (void)mergeInfo:(id)info intoFindInfo:(id)findInfo;
- (void)orientationDidChange:(id)change;
- (void)pauseBoxLayerHideTimer;
- (void)primeBoxLayerHideTimerWithFrameTime:(id *)time;
- (void)releaseCorrectedCardBuffer;
- (void)removeLayerTree;
- (void)sendDidCancel;
- (void)sendDidDisplayMessageStyle:(int64_t)style;
- (void)sendDidEndAnimation;
- (void)sendDidEndWithError:(id)error;
- (void)sendDidEndWithErrorDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (void)sendDidEndWithInfo:(id)info;
- (void)sendDidFindTarget:(id)target frameTime:(id *)time;
- (void)sendDidRecognizeNewObjects:(id)objects;
- (void)sendProvideOverlayObjects:(id)objects;
- (void)setCapturedTextColor:(id)color;
- (void)setFirstTimeFrameIndexForPinnedField:(id)field;
- (void)setHidePlacementText:(BOOL)text;
- (void)setMaskColor:(id)color;
- (void)setMaskOutlineColor:(id)color;
- (void)setOutputCapturedImageWidth:(unint64_t)width;
- (void)setOutputObjectTypes:(id)types;
- (void)setupInitialLayerConfiguration;
- (void)showMessage:(id)message color:(id)color style:(int64_t)style duration:(double)duration;
- (void)showTextDetectorObjects:(id)objects;
- (void)start;
- (void)startSession;
- (void)stopSession;
- (void)switchToCamera:(int64_t)camera;
- (void)switchToCameraWithDeviceID:(id)d;
- (void)toggleCamera;
- (void)updateContactsCache:(id)cache;
- (void)updatePinnedInfoFrameIndex;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CRCameraReader

+ (unint64_t)supportedCameraCount
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

+ (void)loadFonts
{
  if (+[CRCameraReader loadFonts]::onceToken != -1)
  {
    dispatch_once(&+[CRCameraReader loadFonts]::onceToken, &__block_literal_global);
  }
}

void __27__CRCameraReader_loadFonts__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v1 = [v0 resourceURL];
  v2 = [v1 URLByAppendingPathComponent:?];

  error = 0;
  CTFontManagerRegisterFontsForURL(v2, kCTFontManagerScopeProcess, &error);
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v4 = [v3 resourceURL];
  v5 = [v4 URLByAppendingPathComponent:?];

  CTFontManagerRegisterFontsForURL(v5, kCTFontManagerScopeProcess, &error);
}

- (CRCameraReader)initWithNibName:(id)name bundle:(id)bundle options:(id)options
{
  nameCopy = name;
  bundleCopy = bundle;
  optionsCopy = options;
  v11 = [optionsCopy mutableCopy];
  [(CRCameraReader *)self setOptionsDictionary:?];

  [objc_opt_class() loadFonts];
  v33.receiver = self;
  v33.super_class = CRCameraReader;
  v12 = [(CRCameraReader *)&v33 initWithNibName:nameCopy bundle:bundleCopy];
  if (v12)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults BOOLForKey:?];
    [(CRCameraReader *)v12 setConfigPresentCentered:?];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 BOOLForKey:?];
    [(CRCameraReader *)v12 setConfigDemoSpeed:?];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults3 BOOLForKey:?];
    [(CRCameraReader *)v12 setConfigUseFastScanning:?];

    standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults4 BOOLForKey:?];
    [(CRCameraReader *)v12 setConfigUseJPEGForColor:?];

    standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults5 BOOLForKey:?];
    [(CRCameraReader *)v12 setShowDiagnosticHUD:?];

    [(CRCameraReader *)v12 setCaptureCount:?];
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    [(CRCameraReader *)v12 setCaptureBuffer:?];

    [(CRCameraReader *)v12 setSessionTimeout:?];
    [(CRCameraReader *)v12 setWhiteBalanceMode:?];
    [(CRCameraReader *)v12 setFocusMode:?];
    [(CRCameraReader *)v12 setExposureMode:?];
    [(CRCameraReader *)v12 setTorchMode:?];
    [(CRCameraReader *)v12 setCameraMode:?];
    [(CRCameraReader *)v12 setHidePlacementText:?];
    [(CRCameraReader *)v12 setEnableAltIDCardScan:?];
    [(CRCameraReader *)v12 setEnableManualIDCapture:?];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice userInterfaceIdiom];
    [(CRCameraReader *)v12 setCameraPosition:?];

    v20 = dispatch_semaphore_create(1);
    [(CRCameraReader *)v12 setProcessingImage:?];

    [(CRCameraReader *)v12 setLastBuffer:?];
    [(CRCameraReader *)v12 setBorderPaddingIDCard:?];
    v21 = dispatch_queue_create("com.apple.CoreRecognition.processingQueue", 0);
    [(CRCameraReader *)v12 setProcessingQueue:?];

    v22 = dispatch_queue_create("com.apple.CoreRecognition.callbackQueue", 0);
    [(CRCameraReader *)v12 setDelegateQueue:?];

    v23 = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
    maskColor = v12->_maskColor;
    v12->_maskColor = v23;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    maskOutlineColor = v12->_maskOutlineColor;
    v12->_maskOutlineColor = whiteColor;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    placementTextColor = v12->_placementTextColor;
    v12->_placementTextColor = whiteColor2;

    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    capturedTextColor = v12->_capturedTextColor;
    v12->_capturedTextColor = whiteColor3;

    alignmentLayer = [(CRCameraReader *)v12 alignmentLayer];
    [alignmentLayer propogateMaskColor:? outlineColor:? placementTextColor:? capturedTextColor:?];

    v12->_outputCapturedImageWidth = 1536;
    v12->_outputCapturedImageHeight = 960;
    [(CRCameraReader *)v12 setEnableUnpaddedIDCapture:?];
  }

  return v12;
}

- (void)setMaskColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  maskColor = self->_maskColor;
  self->_maskColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:? outlineColor:? placementTextColor:? capturedTextColor:?];
  }
}

- (void)setMaskOutlineColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  maskOutlineColor = self->_maskOutlineColor;
  self->_maskOutlineColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:? outlineColor:? placementTextColor:? capturedTextColor:?];
  }
}

- (void)aetPlacementTextColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  placementTextColor = self->_placementTextColor;
  self->_placementTextColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:? outlineColor:? placementTextColor:? capturedTextColor:?];
  }
}

- (void)setCapturedTextColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  capturedTextColor = self->_capturedTextColor;
  self->_capturedTextColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:? outlineColor:? placementTextColor:? capturedTextColor:?];
  }
}

- (void)orientationDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CRCameraReader_orientationDidChange___block_invoke;
  v3[3] = &unk_278EAA5E8;
  v3[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (__CVBuffer)createFastAccessPixelBufferWithSize:(CGSize)size videoFormat:(int)format
{
  FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  CFRelease(0);
  return 0;
}

- (void)loadView
{
  sharedInsights = [v2 sharedInsights];
  [sharedInsights attachNewContextToCurrentThreadWithCameraReader:?];

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v7 = [v5 initWithFrame:?];
  [(CRCameraReader *)self setView:?];

  v8 = +[CRColor blackColor];
  view = [(CRCameraReader *)self view];
  [view setBackgroundColor:?];

  sharedInsights2 = [v10 sharedInsights];
  if (sharedInsights2)
  {
    sharedInsights3 = [v11 sharedInsights];
    v14 = [sharedInsights3 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v14 = objc_alloc_init(CRDefaultCaptureSessionManager);
    sharedInsights3 = v14;
  }

  v15 = v14;
  [(CRCameraReader *)self setSessionManager:?];
  if (sharedInsights2)
  {
  }

  sessionManager = [(CRCameraReader *)self sessionManager];
  [sessionManager setCaptureSessionDelegate:?];

  sessionManager2 = [(CRCameraReader *)self sessionManager];
  [sessionManager2 setCaptureSessionMetadataDelegate:?];

  [(CRCameraReader *)self cameraPosition];
  sessionManager3 = [(CRCameraReader *)self sessionManager];
  [sessionManager3 setCameraPosition:?];

  [(CRCameraReader *)self whiteBalanceMode];
  sessionManager4 = [(CRCameraReader *)self sessionManager];
  [sessionManager4 setWhiteBalanceMode:?];

  [(CRCameraReader *)self focusMode];
  sessionManager5 = [(CRCameraReader *)self sessionManager];
  [sessionManager5 setFocusMode:?];

  [(CRCameraReader *)self exposureMode];
  sessionManager6 = [(CRCameraReader *)self sessionManager];
  [sessionManager6 setExposureMode:?];

  [(CRCameraReader *)self torchMode];
  sessionManager7 = [(CRCameraReader *)self sessionManager];
  [sessionManager7 setTorchMode:?];

  v23 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v25 = [v23 setWithArray:?];

  [v25 containsObject:?];
  sessionManager8 = [(CRCameraReader *)self sessionManager];
  [sessionManager8 setEnableMetadataOutput:?];

  if (([v25 containsObject:?] & 1) == 0)
  {
    [v25 containsObject:?];
  }

  sessionManager9 = [(CRCameraReader *)self sessionManager];
  [sessionManager9 setTargetFocusDistance:?];

  cameraMode = [(CRCameraReader *)self cameraMode];
  sessionManager10 = [(CRCameraReader *)self sessionManager];
  [sessionManager10 setCameraMode:?];

  v30 = [v25 containsObject:?];
  v31 = MEMORY[0x277CE59A8];
  if ((v30 & 1) == 0 && ([v25 containsObject:?] & 1) == 0)
  {
    sessionManager11 = [(CRCameraReader *)self sessionManager];
    [sessionManager11 setCameraMode:?];

    sessionManager12 = [(CRCameraReader *)self sessionManager];
    [sessionManager12 setCameraPosition:?];
  }

  sessionManager13 = [(CRCameraReader *)self sessionManager];
  enableMetadataOutput = [sessionManager13 enableMetadataOutput];

  if (enableMetadataOutput)
  {
    [(CRCameraReader *)self setCameraMode:?];
    cameraMode2 = [(CRCameraReader *)self cameraMode];
    sessionManager14 = [(CRCameraReader *)self sessionManager];
    [sessionManager14 setCameraMode:?];
  }

  sessionManager15 = [(CRCameraReader *)self sessionManager];
  [sessionManager15 setupCameraSession];

  sessionManager16 = [(CRCameraReader *)self sessionManager];
  cameraMode3 = [sessionManager16 cameraMode];
  v41 = *v31;

  if (cameraMode3 == v41)
  {
    [(CRCameraReader *)self releaseCorrectedCardBuffer];
    [(CRCameraReader *)self createCorrectedCardBuffer];
  }

  view2 = [(CRCameraReader *)self view];
  layer = [view2 layer];
  sessionManager17 = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager17 previewLayer];
  [layer addSublayer:?];

  v46 = +[CRAlignmentLayer layer];
  [(CRCameraReader *)self setAlignmentLayer:?];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  instructionLayer = [alignmentLayer instructionLayer];
  [(CRCameraReader *)self hidePlacementText];
  [instructionLayer setHidden:?];

  view3 = [(CRCameraReader *)self view];
  layer2 = [view3 layer];
  alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
  [layer2 addSublayer:?];

  alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer3 setDelegate:?];

  if ([(CRCameraReader *)self showDiagnosticHUD])
  {
    v53 = +[DiagnosticHUDLayer layer];
    [(CRCameraReader *)self setDiagnosticHUDLayer:?];

    view4 = [(CRCameraReader *)self view];
    layer3 = [view4 layer];
    diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
    [layer3 addSublayer:?];
  }

  v57 = *(MEMORY[0x277CD9DE8] + 48);
  v78 = *(MEMORY[0x277CD9DE8] + 32);
  v79 = v57;
  v80 = *(MEMORY[0x277CD9DE8] + 64);
  v81 = *(MEMORY[0x277CD9DE8] + 80);
  v58 = *(MEMORY[0x277CD9DE8] + 16);
  v76 = *MEMORY[0x277CD9DE8];
  v77 = v58;
  v59 = *(MEMORY[0x277CD9DE8] + 112);
  v74 = *(MEMORY[0x277CD9DE8] + 96);
  v75 = v59;
  view5 = [(CRCameraReader *)self view];
  layer4 = [view5 layer];
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v65 = v76;
  v66 = v77;
  v70 = v81;
  v71 = 0xBF45D867C3ECE2A5;
  v72 = v74;
  v73 = v75;
  [layer4 setSublayerTransform:?];

  v62 = objc_opt_new();
  [(CRCameraReader *)self setPreviousContactMatches:?];

  processingQueue = [(CRCameraReader *)self processingQueue];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __26__CRCameraReader_loadView__block_invoke_2;
  v64[3] = &unk_278EAA5E8;
  v64[4] = self;
  cr_dispatch_async(processingQueue, v64);
}

CRDefaultCaptureSessionManager *__26__CRCameraReader_loadView__block_invoke()
{
  v0 = objc_alloc_init(CRDefaultCaptureSessionManager);

  return v0;
}

- (void)loadModels
{
  v3 = objc_alloc_init(CRMLEmbossedNumberModel);
  [(CRCameraReader *)self setEmbossedNumberModel:?];

  v4 = objc_alloc_init(CRMLEmbossedCardholderModel);
  [(CRCameraReader *)self setEmbossedCardholderModel:?];

  v5 = objc_alloc_init(CRMLEmbossedExpirationModel);
  [(CRCameraReader *)self setEmbossedExpirationModel:?];

  v6 = objc_alloc_init(CRMLFlatModel);
  [(CRCameraReader *)self setFlatPrintedModel:?];
}

- (void)viewDidLayoutSubviews
{
  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  superlayer = [previewLayer superlayer];
  [superlayer bounds];
  sessionManager2 = [(CRCameraReader *)self sessionManager];
  previewLayer2 = [sessionManager2 previewLayer];
  [previewLayer2 setFrame:?];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  superlayer2 = [alignmentLayer superlayer];
  [superlayer2 bounds];
  alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer2 setFrame:?];

  diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
  superlayer3 = [diagnosticHUDLayer superlayer];
  [superlayer3 bounds];
  diagnosticHUDLayer2 = [(CRCameraReader *)self diagnosticHUDLayer];
  [diagnosticHUDLayer2 setFrame:?];

  sessionManager3 = [(CRCameraReader *)self sessionManager];
  view = [(CRCameraReader *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [windowScene interfaceOrientation];
  [sessionManager3 setPreviewOrientation:?];

  alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer3 setNeedsLayout];

  diagnosticHUDLayer3 = [(CRCameraReader *)self diagnosticHUDLayer];
  [diagnosticHUDLayer3 setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = CRCameraReader;
  [(CRCameraReader *)&v20 viewWillAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice beginGeneratingDeviceOrientationNotifications];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];

  v6 = [CRPollingTimer initWithTarget:"initWithTarget:selector:" selector:?];
  [(CRCameraReader *)self setBoxLayerHideTimer:?];

  if ([(CRCameraReader *)self isCaptureMode])
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:? action:?];
    [(CRCameraReader *)self setTapGestureRecognizer:?];

    tapGestureRecognizer = [(CRCameraReader *)self tapGestureRecognizer];
    [tapGestureRecognizer setNumberOfTapsRequired:?];

    tapGestureRecognizer2 = [(CRCameraReader *)self tapGestureRecognizer];
    [tapGestureRecognizer2 setNumberOfTouchesRequired:?];

    view = [(CRCameraReader *)self view];
    tapGestureRecognizer3 = [(CRCameraReader *)self tapGestureRecognizer];
    [view addGestureRecognizer:?];
  }

  view2 = [(CRCameraReader *)self view];
  layer = [view2 layer];
  [layer setMasksToBounds:?];

  [(CRCameraReader *)self startSession];
  v14 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v16 = [v14 setWithArray:?];

  if ([v16 containsObject:?])
  {
    if (![MEMORY[0x277CBDAB8] authorizationStatusForEntityType:?])
    {
      v17 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v19[5] = MEMORY[0x277D85DD0];
      v19[6] = 3221225472;
      v19[7] = __33__CRCameraReader_viewWillAppear___block_invoke;
      v19[8] = &unk_278EAA630;
      v19[9] = self;
      [v17 requestAccessForEntityType:? completionHandler:?];
      goto LABEL_8;
    }

    if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:?] == 3)
    {
      v17 = dispatch_get_global_queue(0, 0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __33__CRCameraReader_viewWillAppear___block_invoke_3;
      v19[3] = &unk_278EAA5E8;
      v19[4] = self;
      cr_dispatch_async(v17, v19);
LABEL_8:
    }
  }

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer fadePlacementImage];
}

void __33__CRCameraReader_viewWillAppear___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __33__CRCameraReader_viewWillAppear___block_invoke_2;
    v4[3] = &unk_278EAA5E8;
    v4[4] = *(a1 + 32);
    cr_dispatch_async(v3, v4);
  }
}

void __33__CRCameraReader_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsCache];

  if (!v2)
  {
    [*(a1 + 32) updateContactsCache:?];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:? selector:? name:? object:?];
  }
}

void __33__CRCameraReader_viewWillAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsCache];

  if (!v2)
  {
    [*(a1 + 32) updateContactsCache:?];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:? selector:? name:? object:?];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = CRCameraReader;
  [(CRCameraReader *)&v10 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [defaultCenter removeObserver:? name:? object:?];

  tapGestureRecognizer = [(CRCameraReader *)self tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    view = [(CRCameraReader *)self view];
    tapGestureRecognizer2 = [(CRCameraReader *)self tapGestureRecognizer];
    [view removeGestureRecognizer:?];

    [(CRCameraReader *)self setTapGestureRecognizer:?];
  }

  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  [boxLayerHideTimer invalidate];

  [(CRCameraReader *)self setBoxLayerHideTimer:?];
  [(CRCameraReader *)self stopSession];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = CRCameraReader;
  [(CRCameraReader *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [coordinatorCopy animateAlongsideTransition:? completion:?];
}

void __69__CRCameraReader_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) view];
  v2 = [v10 window];

  v3 = *(a1 + 32);
  if (v2)
  {
    v11 = [v3 view];
    v4 = [v11 window];
    v5 = [v4 windowScene];
    v6 = [v5 interfaceOrientation];
  }

  else
  {
    v12 = [v3 parentViewController];
    v7 = [v12 view];
    v8 = [v7 window];

    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = [*(a1 + 32) parentViewController];
    v4 = [v11 view];
    v5 = [v4 window];
    v9 = [v5 windowScene];
    v6 = [v9 interfaceOrientation];
  }

  if (v6)
  {
    v13 = [*(a1 + 32) sessionManager];
    [v13 setPreviewOrientation:?];
  }

LABEL_7:
  v14 = [*(a1 + 32) alignmentLayer];
  [v14 setNeedsLayout];

  v15 = [*(a1 + 32) diagnosticHUDLayer];
  [v15 setNeedsLayout];
}

- (void)releaseCorrectedCardBuffer
{
  correctedCardBuffer = self->_correctedCardBuffer;
  if (correctedCardBuffer)
  {
    CVPixelBufferRelease(correctedCardBuffer);
    self->_correctedCardBuffer = 0;
  }
}

- (void)createCorrectedCardBuffer
{
  v3 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v7 = [v3 setWithArray:?];

  if (([v7 containsObject:?] & 1) != 0 || objc_msgSend(v7, "containsObject:"))
  {
    [(CRCameraReader *)self outputCapturedImageWidth];
    [(CRCameraReader *)self outputCapturedImageHeight];
    sessionManager = [(CRCameraReader *)self sessionManager];
    [sessionManager targetVideoFormat];
    v6 = [CRCameraReader createFastAccessPixelBufferWithSize:"createFastAccessPixelBufferWithSize:videoFormat:" videoFormat:?];
  }

  else
  {
    sessionManager = [(CRCameraReader *)self sessionManager];
    [sessionManager targetVideoFormat];
    v6 = [CRCameraReader createFastAccessPixelBufferWithSize:"createFastAccessPixelBufferWithSize:videoFormat:" videoFormat:?];
  }

  self->_correctedCardBuffer = v6;
}

- (void)dealloc
{
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:? name:? object:?];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];

  [(CRCameraReader *)self removeLayerTree];
  [(CRCaptureSessionManager *)self->_sessionManager teardownCameraSession];
  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  processingQueue = self->_processingQueue;
  self->_processingQueue = 0;

  [(CRCameraReader *)self releaseCorrectedCardBuffer];
  [(NSPointerArray *)self->_captureBuffer compact];
  while (1)
  {
    v8 = [(NSPointerArray *)self->_captureBuffer count];
    captureBuffer = self->_captureBuffer;
    if (!v8)
    {
      break;
    }

    v10 = [(NSPointerArray *)captureBuffer pointerAtIndex:?];
    [(NSPointerArray *)self->_captureBuffer removePointerAtIndex:?];
    CFRelease(v10);
  }

  self->_captureBuffer = 0;

  lastBuffer = self->_lastBuffer;
  if (lastBuffer)
  {
    CFRelease(lastBuffer);
    self->_lastBuffer = 0;
  }

  v12.receiver = self;
  v12.super_class = CRCameraReader;
  [(CRCameraReader *)&v12 dealloc];
}

- (void)setupInitialLayerConfiguration
{
  boxLayer = [(CRCameraReader *)self boxLayer];
  [boxLayer setHidden:?];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer resetLayer];

  [(CRCameraReader *)self hidePlacementText];
  alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
  instructionLayer = [alignmentLayer2 instructionLayer];
  [instructionLayer setHidden:?];

  boxLayer2 = [(CRCameraReader *)self boxLayer];

  if (boxLayer2)
  {
    boxLayer3 = [(CRCameraReader *)self boxLayer];
    [boxLayer3 removeFromSuperlayer];
  }

  v15 = +[CRBoxLayer layer];
  [(CRCameraReader *)self setBoxLayer:?];

  view = [(CRCameraReader *)self view];
  layer = [view layer];
  boxLayer4 = [(CRCameraReader *)self boxLayer];
  [layer addSublayer:?];

  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  [previewLayer setOpacity:?];

  v8 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v18 = [v8 setWithArray:?];

  if (([v18 containsObject:?] & 1) == 0 && (objc_msgSend(v18, "containsObject:") & 1) == 0 && (objc_msgSend(v18, "containsObject:") & 1) == 0 && (objc_msgSend(v18, "containsObject:") & 1) == 0)
  {
    [v18 containsObject:?];
  }

  alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer3 setHidden:?];
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = CRCameraReader;
  [(CRCameraReader *)&v6 didReceiveMemoryWarning];
  if ([(CRCameraReader *)self isViewLoaded])
  {
    view = [(CRCameraReader *)self view];
    window = [view window];

    if (!window)
    {
      [(CRCameraReader *)self setView:?];
      [(CRCameraReader *)self stopSession];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __41__CRCameraReader_didReceiveMemoryWarning__block_invoke;
      v5[3] = &unk_278EAA5E8;
      v5[4] = self;
      cr_dispatch_async(MEMORY[0x277D85CD0], v5);
    }
  }
}

void *__41__CRCameraReader_didReceiveMemoryWarning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  [v2 teardownCameraSession];

  [*(a1 + 32) setSessionManager:?];
  v3 = *(a1 + 32);

  return [v3 releaseCorrectedCardBuffer];
}

- (void)toggleCamera
{
  sessionManager = [(CRCameraReader *)self sessionManager];

  if (sessionManager)
  {
    sessionManager2 = [(CRCameraReader *)self sessionManager];
    [sessionManager2 toggleCamera];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__CRCameraReader_toggleCamera__block_invoke;
    block[3] = &unk_278EAA5E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)switchToCameraWithDeviceID:(id)d
{
  dCopy = d;
  sessionManager = [(CRCameraReader *)self sessionManager];
  [sessionManager switchToCameraWithDeviceID:?];
}

- (int64_t)currentCameraIdentifier
{
  sessionManager = [(CRCameraReader *)self sessionManager];
  cameraPosition = [sessionManager cameraPosition];

  return cameraPosition;
}

- (id)currentDeviceID
{
  sessionManager = [(CRCameraReader *)self sessionManager];
  currentDeviceID = [sessionManager currentDeviceID];

  return currentDeviceID;
}

- (void)switchToCamera:(int64_t)camera
{
  sessionManager = [(CRCameraReader *)self sessionManager];

  if (sessionManager)
  {
    sessionManager2 = [(CRCameraReader *)self sessionManager];
    [sessionManager2 switchToCamera:?];
  }
}

- (void)captureImage
{
  [(CRCameraReader *)self captureCount];
  [(CRCameraReader *)self imagesToCapture];

  [(CRCameraReader *)self setImagesToCapture:?];
}

- (void)start
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __23__CRCameraReader_start__block_invoke;
  v2[3] = &unk_278EAA5E8;
  v2[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __23__CRCameraReader_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startSession];
  v2 = [*(a1 + 32) alignmentLayer];
  [v2 fadePlacementImage];
}

- (void)cancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __24__CRCameraReader_cancel__block_invoke;
  v2[3] = &unk_278EAA5E8;
  v2[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__24__CRCameraReader_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopSession];
  v2 = *(a1 + 32);

  return [v2 sendDidCancel];
}

- (void)startSession
{
  [(CRCameraReader *)self setFoundCode:?];
  [(CRCameraReader *)self setIsQRCode:?];
  [(CRCameraReader *)self setPreviousCode:?];
  v13 = *MEMORY[0x277CC0898];
  v14 = *(MEMORY[0x277CC0898] + 16);
  [(CRCameraReader *)self setSessionStarted:?];
  v3 = MEMORY[0x277CC08A0];
  v13 = *MEMORY[0x277CC08A0];
  v14 = *(MEMORY[0x277CC08A0] + 16);
  [(CRCameraReader *)self setPointsFound:?];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [(CRCameraReader *)self setCodePresented:?];

  [(CRCameraReader *)self setCodeInverted:?];
  [(CRCameraReader *)self setDidSendEndOrCancel:?];
  [(CRCameraReader *)self setDidSendFindBox:?];
  v13 = *v3;
  v14 = *(v3 + 2);
  [(CRCameraReader *)self setLastSendFindBox:?];
  [(CRCameraReader *)self setImagesToCapture:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setCardNumberCounts:?];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setCardholderCounts:?];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setExpirationDateCounts:?];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setPinnedFoundInfo:?];

  v13 = *MEMORY[0x277CC08B0];
  v14 = *(MEMORY[0x277CC08B0] + 16);
  [(CRCameraReader *)self setLastFieldFoundTime:?];
  array = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setNameCutRects:?];

  array2 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setDateCutRects:?];

  array3 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setCardBlurValues:?];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__CRCameraReader_startSession__block_invoke;
  v12[3] = &unk_278EAA5E8;
  v12[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __30__CRCameraReader_startSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  v3 = [v2 isRunning];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setupInitialLayerConfiguration];
    v4 = [*(a1 + 32) sessionManager];
    [v4 startRunning];

    v5 = [*(a1 + 32) diagnosticHUDLayer];
    v6 = [*(a1 + 32) sessionManager];
    v7 = [v6 previewLayer];
    v8 = [*(a1 + 32) sessionManager];
    [v8 previewVisibleRect];
    v9 = [*(a1 + 32) sessionManager];
    [v9 cameraResolution];
    [v5 setPreviewLayer:? visibleRect:? cameraResolution:?];

    v10 = [MEMORY[0x277D75128] sharedApplication];
    [v10 isIdleTimerDisabled];
    [*(a1 + 32) setPreviousIdleState:?];

    v11 = [MEMORY[0x277D75128] sharedApplication];
    [v11 setIdleTimerDisabled:?];

    v12 = *(a1 + 32);

    [v12 setSessionIsStopping:?];
  }
}

- (void)stopSession
{
  [(CRCameraReader *)self setSessionIsStopping:?];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__CRCameraReader_stopSession__block_invoke;
  v3[3] = &unk_278EAA5E8;
  v3[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __29__CRCameraReader_stopSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  v3 = [v2 isRunning];

  if (v3)
  {
    v4 = [*(a1 + 32) sessionManager];
    [v4 stopRunning];

    v5 = [MEMORY[0x277D75128] sharedApplication];
    [*(a1 + 32) previousIdleState];
    [v5 setIdleTimerDisabled:?];

    v6 = [*(a1 + 32) previousContactMatches];
    [v6 removeAllObjects];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setCardNumberCounts:?];

    v8 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setCardholderCounts:?];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setExpirationDateCounts:?];
  }

  v10 = [*(a1 + 32) processingQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__CRCameraReader_stopSession__block_invoke_2;
  v11[3] = &unk_278EAA5E8;
  v11[4] = *(a1 + 32);
  cr_dispatch_async(v10, v11);
}

- (id)cameraIntrinsicDataForSampleBuffer:(opaqueCMSampleBuffer *)buffer width:(unint64_t)width height:(unint64_t)height
{
  v6 = CMGetAttachment(buffer, *MEMORY[0x277CC06B0], 0);
  v7 = CMGetAttachment(buffer, *MEMORY[0x277CF3F30], 0);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:?];
    v10 = v9;
    if (v6)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v9 == 0;
    }

    if (!_ZF)
    {
      [v9 floatValue];
      [v10 floatValue];
      __asm { FMOV            V0.4S, #1.0 }

      [0 getBytes:? length:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v6;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  sharedInsights = [off_278EAA000 sharedInsights];
  [sharedInsights attachNewContextToCurrentThreadWithCameraReader:?];

  memset(&v22, 0, sizeof(v22));
  CMSampleBufferGetPresentationTimeStamp(&v22, buffer);
  [&time sessionStarted];
  if ((time.flags & 1) == 0)
  {
    time = v22;
    [(CRCameraReader *)self setSessionStarted:?];
  }

  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  time = v22;
  [boxLayerHideTimer evalAtTime:?];

  sessionManager = [(CRCameraReader *)self sessionManager];
  if ([sessionManager isAdjustingFocus])
  {
    v21 = v22;
    [&v20 lastFieldFoundTime];
    lhs = v21;
    rhs = v20;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) <= 1.0)
    {
      goto LABEL_16;
    }
  }

  sessionIsStopping = [(CRCameraReader *)self sessionIsStopping];

  if (sessionIsStopping)
  {
    return;
  }

  if ([(CRCameraReader *)self isCaptureMode])
  {
    [(CRCameraReader *)self captureImageFromSampleBuffer:?];
    return;
  }

  v21 = v22;
  [&v20 sessionStarted];
  lhs = v21;
  rhs = v20;
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(CRCameraReader *)self sessionTimeout];
  if (Seconds > v12)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
    v19[3] = &unk_278EAA5E8;
    v19[4] = self;
    cr_dispatch_async(MEMORY[0x277D85CD0], v19);
    return;
  }

  if ([(CRCameraReader *)self lastBuffer])
  {
    CFRelease(self->_lastBuffer);
    [(CRCameraReader *)self setLastBuffer:?];
  }

  CFRetain(buffer);
  [(CRCameraReader *)self setLastBuffer:?];
  processingImage = [(CRCameraReader *)self processingImage];
  v14 = dispatch_semaphore_wait(processingImage, 0);

  if (!v14)
  {
    CFRetain(buffer);
    diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];

    if (diagnosticHUDLayer)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2;
      v18[3] = &unk_278EAA5E8;
      v18[4] = self;
      cr_dispatch_async(MEMORY[0x277D85CD0], v18);
    }

    sessionManager = [(CRCameraReader *)self processingQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_3;
    v16[3] = &unk_278EAA680;
    v16[4] = self;
    v16[5] = buffer;
    v17 = v22;
    cr_dispatch_async(sessionManager, v16);
LABEL_16:
  }
}

void *__69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopSession];
  v2 = *(a1 + 32);

  return [v2 sendDidEndWithErrorDomain:? code:? userInfo:?];
}

void __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) diagnosticHUDLayer];
  [v1 refreshFrameIndicator];
}

void __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_3(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [a2 sharedInsights];
  [v3 notifySampleBufferProcessingStart:?];

  v4 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 32) outputObjectTypes];
  v6 = [v4 setWithArray:?];

  if (([v6 containsObject:?] & 1) == 0)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = [*(a1 + 32) outputObjectTypes];
    v9 = [v7 setWithArray:?];
    v10 = [v9 containsObject:?];

    if (!v10)
    {
      if ([v6 containsObject:?])
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 40));
        v13 = *(a1 + 32);
        CVPixelBufferGetWidth(ImageBuffer);
        CVPixelBufferGetHeight(ImageBuffer);
        v14 = [v13 cameraIntrinsicDataForSampleBuffer:? width:? height:?];
        v15 = *(a1 + 32);
        v16 = [v15 outputObjectTypes];
        CMSampleBufferGetPresentationTimeStamp(&v25, *(a1 + 40));
        [v15 findObjects:? inPixelBuffer:? cameraIntrinsicData:? frameTime:?];
      }

      else
      {
        if (([v6 containsObject:?] & 1) == 0 && !objc_msgSend(v6, "containsObject:"))
        {
          if (![v6 containsObject:?])
          {
            goto LABEL_11;
          }

          CMSampleBufferGetImageBuffer(*(a1 + 40));
          v11 = CMGetAttachment(*(a1 + 40), *MEMORY[0x277CF3F30], 0);
          v23 = *(a1 + 32);
          v24 = [v23 outputObjectTypes];
          [v23 findOCRTextObjects:*(a1 + 48) inPixelBuffer:*(a1 + 64) attachments:? frameTime:?];

          goto LABEL_4;
        }

        v17 = CMSampleBufferGetImageBuffer(*(a1 + 40));
        v18 = *(a1 + 32);
        CVPixelBufferGetWidth(v17);
        CVPixelBufferGetHeight(v17);
        v14 = [v18 cameraIntrinsicDataForSampleBuffer:? width:? height:?];
        v19 = *(a1 + 32);
        v16 = [v19 outputObjectTypes];
        CMSampleBufferGetPresentationTimeStamp(&v25, *(a1 + 40));
        [v19 findIDObjects:? inPixelBuffer:? cameraIntrinsicData:? frameTime:?];
      }

      goto LABEL_11;
    }
  }

  [*(a1 + 32) findCodeInSampleBuffer:?];
  v11 = [*(a1 + 32) sessionManager];
  [v11 highISOAdjustExposure];
LABEL_4:

LABEL_11:
  v20 = [*(a1 + 32) processingImage];
  dispatch_semaphore_signal(v20);

  v22 = [v21 sharedInsights];
  [v22 notifySampleBufferProcessingEnd:?];

  CFRelease(*(a1 + 40));
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  v41 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v40 = *MEMORY[0x277CE5A80];
  v25 = objectsCopy;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  if (objectsCopy && [objectsCopy count])
  {
    v29 = [objectsCopy objectAtIndex:?];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v24;
    v28 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v28)
    {
      goto LABEL_22;
    }

    v27 = *v37;
    while (1)
    {
      for (i = 0; i != v28; i = (i + 1))
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        type = [v29 type];
        v8 = [type isEqualToString:?];

        if (v8)
        {
          stringValue = [v29 stringValue];
          if (([stringValue isEqualToString:?] & 1) == 0)
          {
            callbackDelegate = [(CRCameraReader *)self callbackDelegate];
            stringValue2 = [v29 stringValue];
            v12 = [callbackDelegate cameraReader:? shouldReturnQRCode:?];

            if (!v12)
            {
              continue;
            }

            stringValue = [MEMORY[0x277CBEB18] array];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            corners = [v29 corners];
            v14 = [corners countByEnumeratingWithState:? objects:? count:?];
            if (v14)
            {
              v15 = *v33;
              do
              {
                for (j = 0; j != v14; j = (j + 1))
                {
                  if (*v33 != v15)
                  {
                    objc_enumerationMutation(corners);
                  }

                  v17 = *(*(&v32 + 1) + 8 * j);
                  v18 = [v17 objectForKey:?];
                  [v18 floatValue];
                  sessionManager = [(CRCameraReader *)self sessionManager];
                  [sessionManager cameraResolution];
                  v20 = [v17 objectForKey:?];
                  [v20 floatValue];
                  sessionManager2 = [(CRCameraReader *)self sessionManager];
                  [sessionManager2 cameraResolution];

                  v22 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
                  [stringValue addObject:?];
                }

                v14 = [corners countByEnumeratingWithState:? objects:? count:?];
              }

              while (v14);
            }

            stringValue3 = [v29 stringValue];
            [(CRCameraReader *)self setFoundCode:?];

            [(CRCameraReader *)self setFoundPoints:?];
            CMSampleBufferGetPresentationTimeStamp(&v31, [(CRCameraReader *)self lastBuffer]);
            [(CRCameraReader *)self setPointsFound:?];
            [(CRCameraReader *)self setIsQRCode:?];
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (!v28)
      {
LABEL_22:

        break;
      }
    }
  }
}

- (void)flashScreenAndPlayCaptureSound
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  view = [(CRCameraReader *)self view];
  window = [view window];
  [window frame];
  v6 = [v3 initWithFrame:?];

  v7 = +[CRColor whiteColor];
  [v6 setBackgroundColor:?];

  view2 = [(CRCameraReader *)self view];
  window2 = [view2 window];
  [window2 addSubview:?];

  v10 = MEMORY[0x277D75D18];
  v13 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = v13;
  [v10 animateWithDuration:v11 animations:3221225472 completion:{__48__CRCameraReader_flashScreenAndPlayCaptureSound__block_invoke_2, &unk_278EAA6A8}];
  AudioServicesPlaySystemSound(0x454u);
}

- (void)captureImageFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  CFRetain(buffer);
  captureBuffer = [(CRCameraReader *)self captureBuffer];
  [captureBuffer addPointer:?];

  captureBuffer2 = [(CRCameraReader *)self captureBuffer];
  v6 = [captureBuffer2 count];
  captureCount = [(CRCameraReader *)self captureCount];

  if (v6 > captureCount)
  {
    captureBuffer3 = [(CRCameraReader *)self captureBuffer];
    v9 = [captureBuffer3 pointerAtIndex:?];

    captureBuffer4 = [(CRCameraReader *)self captureBuffer];
    [captureBuffer4 removePointerAtIndex:?];

    CFRelease(v9);
  }

  if ([(CRCameraReader *)self imagesToCapture])
  {
    captureBuffer5 = [(CRCameraReader *)self captureBuffer];
    v12 = [captureBuffer5 copy];

    v13 = 0;
    v14 = MEMORY[0x277D85CD0];
    while ([v12 count] > v13)
    {
      v15 = [v12 pointerAtIndex:?];
      v16 = v15;
      if (v15)
      {
        CFRetain(v15);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke;
        v17[3] = &unk_278EAA6F8;
        v17[4] = self;
        v17[5] = v16;
        cr_dispatch_async(v14, v17);
      }

      ++v13;
    }
  }
}

void __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) imagesToCapture])
  {
    v2 = *(a1 + 32);
    [v2 imagesToCapture];
    [v2 setImagesToCapture:?];
    ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 40));
    CVPixelBufferLockBaseAddress(ImageBuffer, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(ImageBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(ImageBuffer, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(ImageBuffer, 0);
    v8 = CMGetAttachment(*(a1 + 40), *MEMORY[0x277CF3F30], 0);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 generateStringFromDate:?];

    v12 = [v11 stringByAppendingPathExtension:?];
    v25 = BaseAddressOfPlane;
    v26 = HeightOfPlane;
    v27 = WidthOfPlane;
    v28 = BytesPerRowOfPlane;
    writeBuffer();
    v13 = [*(a1 + 32) configUseJPEGForColor];
    v14 = @"jpg";
    if (!v13)
    {
      v14 = @"tif";
    }

    v15 = v14;
    v16 = [v11 stringByAppendingString:?];
    v17 = [v16 stringByAppendingPathExtension:?];
    writeBufferWithFullColor();

    v18 = [*(a1 + 32) callbackDelegate];
    if (v18)
    {
      v19 = [*(a1 + 32) callbackDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObject:? forKey:?];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke_2;
        v23[3] = &unk_278EAA6D0;
        v23[4] = *(a1 + 32);
        v24 = v21;
        v22 = v21;
        cr_dispatch_async(MEMORY[0x277D85CD0], v23);
      }
    }

    CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  }

  CFRelease(*(a1 + 40));
}

void __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) flashScreenAndPlayCaptureSound];
  v2 = [*(a1 + 32) callbackDelegate];
  [v2 cameraReader:? didWriteToFile:?];
}

- (void)findCodeInSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v85 = *MEMORY[0x277D85DE8];
  memset(&v82, 0, sizeof(v82));
  CMSampleBufferGetPresentationTimeStamp(&v82, buffer);
  pixelBuffer = CMSampleBufferGetImageBuffer(buffer);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  if (WidthOfPlane)
  {
    if (HeightOfPlane)
    {
      v7 = BytesPerRowOfPlane;
      if (!CVPixelBufferLockBaseAddress(pixelBuffer, 0))
      {
        CFRetain(buffer);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
        foundCode = [(CRCameraReader *)self foundCode];
        v55 = foundCode != 0;

        v10 = objc_opt_class();
        time.value = BaseAddressOfPlane;
        *&time.timescale = HeightOfPlane;
        time.epoch = WidthOfPlane;
        v81 = v7;
        outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
        v56 = [v10 findCodeInImage:? maxStage:? outputObjectTypes:?];

        v12 = [v56 objectForKey:?];
        v57 = [v56 objectForKey:?];
        v13 = [v56 objectForKey:?];
        bOOLValue = [v13 BOOLValue];

        v14 = [v56 objectForKey:?];
        bOOLValue2 = [v14 BOOLValue];

        array = [MEMORY[0x277CBEB18] array];
        sessionManager = [(CRCameraReader *)self sessionManager];
        previewLayer = [sessionManager previewLayer];
        [previewLayer bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        if (![(CRCameraReader *)self isQRCode]|| ([(CRCameraReader *)self foundCode], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
        {
          foundPoints = v12;
        }

        else
        {
          foundCode2 = [(CRCameraReader *)self foundCode];

          foundCode3 = [(CRCameraReader *)self foundCode];
          [(CRCameraReader *)self setPreviousCode:?];

          foundPoints = [(CRCameraReader *)self foundPoints];

          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke;
          v79[3] = &unk_278EAA5E8;
          v79[4] = self;
          cr_dispatch_async(MEMORY[0x277D85CD0], v79);
          bOOLValue2 = 1;
          v57 = foundCode2;
          v55 = 1;
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        obj = foundPoints;
        v31 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v31)
        {
          v32 = *v76;
          LOBYTE(v33) = 1;
          do
          {
            for (i = 0; i != v31; i = (i + 1))
            {
              if (*v76 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v75 + 1) + 8 * i);
              sessionManager2 = [(CRCameraReader *)self sessionManager];
              [v35 CGPointValue];
              sessionManager3 = [(CRCameraReader *)self sessionManager];
              previewLayer2 = [sessionManager3 previewLayer];
              [sessionManager2 convertCameraPoint:? toLayer:?];
              v40 = v39;
              v42 = v41;

              v43 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
              [array addObject:?];

              if (v33)
              {
                v87.origin.x = v19;
                v87.origin.y = v21;
                v87.size.width = v23;
                v87.size.height = v25;
                v86.x = v40;
                v86.y = v42;
                v33 = CGRectContainsPoint(v87, v86);
              }

              else
              {
                v33 = 0;
              }
            }

            v31 = [obj countByEnumeratingWithState:? objects:? count:?];
          }

          while (v31);
        }

        else
        {
          v33 = 1;
        }

        v44 = bOOLValue2 & v33;
        if ((bOOLValue2 & v33) == 1 && v57)
        {
          previousCode = [(CRCameraReader *)self previousCode];
          if (previousCode && (-[CRCameraReader previousCode](self, "previousCode"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 isEqualToString:?], v46, previousCode, (v47 & 1) != 0))
          {
            v44 = 1;
          }

          else
          {
            [(CRCameraReader *)self setPreviousCode:?];
            v44 = 0;
          }
        }

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        CFRelease(buffer);
        if (v57)
        {
          v48 = v44;
        }

        else
        {
          v48 = 0;
        }

        if (v48 == 1)
        {
          [(CRCameraReader *)self stopSession];
        }

        if (obj)
        {
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_2;
          v66[3] = &unk_278EAA720;
          v66[4] = self;
          v49 = obj;
          v71 = v82;
          v67 = v49;
          v68 = array;
          v72 = v44;
          v73 = bOOLValue;
          v74 = v48;
          v69 = v57;
          bufferCopy = buffer;
          cr_dispatch_async(MEMORY[0x277D85CD0], v66);
        }

        else
        {
          v65 = v82;
          [&v64 pointsFound];
          lhs = v65;
          rhs = v64;
          CMTimeSubtract(&time, &lhs, &rhs);
          if (CMTimeGetSeconds(&time) > 0.3)
          {
            sessionManager4 = [(CRCameraReader *)self sessionManager];
            [sessionManager4 resetFocus];
          }

          [(CRCameraReader *)self setFoundPoints:?];
        }

        if (v55)
        {
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_3;
          v62[3] = &unk_278EAA748;
          v62[4] = self;
          v63 = v82;
          cr_dispatch_async(MEMORY[0x277D85CD0], v62);
        }

        diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
        v52 = diagnosticHUDLayer == 0;

        if (!v52)
        {
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_4;
          v61[3] = &unk_278EAA5E8;
          v61[4] = self;
          cr_dispatch_async(MEMORY[0x277D85CD0], v61);
        }
      }
    }
  }
}

void __41__CRCameraReader_findCodeInSampleBuffer___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) boxLayer];
  [v1 setFrameRatio:?];
}

void __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_2(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) foundPoints];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = 0;
  do
  {
    v4 = [*(a1 + 32) foundPoints];
    v5 = [v4 objectAtIndex:?];
    [v5 CGPointValue];
    v7 = v6;
    v9 = v8;

    v10 = [*(a1 + 40) objectAtIndex:?];
    [v10 CGPointValue];
    v12 = v11;
    v14 = v13;

    v15 = sqrt((v12 - v7) * (v12 - v7) + (v14 - v9) * (v14 - v9));
  }

  while (v15 <= 20.0 && v3++ < 3);
  if (v15 <= 20.0)
  {
    v98 = *(a1 + 72);
    if (*(a1 + 32))
    {
      [&v97 pointsFound];
    }

    else
    {
      memset(&v97, 0, sizeof(v97));
    }

    lhs = v98;
    rhs = v97;
    CMTimeSubtract(time, &lhs, &rhs);
    if (CMTimeGetSeconds(time) > 3.0)
    {
      [*(a1 + 32) stopSession];
      [*(a1 + 32) sendDidEndWithErrorDomain:? code:? userInfo:?];
    }
  }

  else
  {
LABEL_11:
    [*(a1 + 32) setFoundPoints:?];
    *time = *(a1 + 72);
    *&time[16] = *(a1 + 88);
    [*(a1 + 32) setPointsFound:?];
  }

  v17 = [*(a1 + 32) diagnosticHUDLayer];
  [v17 setBoxPoints:?];

  v18 = [*(a1 + 32) boxLayer];
  [v18 positionForCodeBoxPoints:?];

  v19 = [*(a1 + 32) boxLayer];
  [v19 setHidden:?];

  v20 = *(a1 + 32);
  *time = *(a1 + 72);
  *&time[16] = *(a1 + 88);
  [v20 primeBoxLayerHideTimerWithFrameTime:?];
  if (*(a1 + 56) && (*(a1 + 96) & 1) != 0)
  {
    v21 = 0;
    v22 = &time[8];
    do
    {
      v23 = [*(a1 + 40) objectAtIndex:?];
      [v23 CGPointValue];
      *(v22 - 1) = v24;
      *v22 = v25;

      ++v21;
      v22 += 2;
    }

    while (v21 != 4);
    if (*(a1 + 97))
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    v27 = [*(a1 + 32) sessionManager];
    v28 = [*(a1 + 32) sessionManager];
    v29 = [v28 previewLayer];
    __asm { FMOV            V2.2D, #0.5 }

    [v27 convertCameraPoint:? toLayer:?];
    v35 = v34;
    v37 = v36;

    v38 = [*(a1 + 32) sessionManager];
    v39 = [*(a1 + 32) sessionManager];
    v40 = [v39 previewLayer];
    [v38 convertCameraPoint:? toLayer:?];
    v42 = v41;
    v44 = v43;

    if (v42 != v35)
    {
      v57 = [*(a1 + 32) sessionManager];
      [v57 isPreviewVideoMirrored];
      atan((v44 - v37) / (v42 - v35));
    }

    [*(a1 + 32) setFoundCode:?];
    [*(a1 + 32) setCodeInverted:?];
    v58 = [*(a1 + 32) boxLayer];
    v59 = [*(a1 + 32) isQRCode];
    if (v59)
    {
      v60 = &stru_2859636D0;
    }

    else
    {
      v60 = [*(a1 + 32) foundCode];
    }

    v61 = [*(a1 + 32) configPresentCentered];
    if (v61)
    {
      v26 = [*(a1 + 32) sessionManager];
      [v26 isPreviewVideoMirrored];
    }

    if ([*(a1 + 32) configPresentCentered])
    {
      [*(a1 + 32) codeInverted];
    }

    [v58 setString:? mirrored:? inverted:?];
    if (v61)
    {
    }

    if ((v59 & 1) == 0)
    {
    }

    v62 = objc_alloc_init(CRCameraReaderOutput);
    if (*(a1 + 98) != 1)
    {
      goto LABEL_58;
    }

    v63 = MEMORY[0x277CBEB98];
    v64 = [*(a1 + 32) outputObjectTypes];
    v65 = [v63 setWithArray:?];
    if ([v65 containsObject:?])
    {
      v66 = [*(a1 + 32) isQRCode];

      if (v66)
      {
        v67 = [(CRCameraReaderOutput *)v62 objectInternal];
        [v67 setType:?];
        goto LABEL_57;
      }
    }

    else
    {
    }

    v68 = MEMORY[0x277CBEB98];
    v69 = [*(a1 + 32) outputObjectTypes];
    v70 = [v68 setWithArray:?];
    v71 = [v70 containsObject:?];

    if (v71 || (v73 = MEMORY[0x277CBEB98], [*(a1 + 32) outputObjectTypes], v74 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v73, "setWithArray:"), v75 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v75, "containsObject:"), v75, v74, v76))
    {
      v72 = *(a1 + 32);
      [v72 lastBuffer];
      [v72 findCodeInSampleBuffer:?];
      v67 = [(CRCameraReaderOutput *)v62 objectInternal];
      [v67 setType:?];
    }

    else
    {
      v77 = MEMORY[0x277CBEB98];
      v78 = [*(a1 + 32) outputObjectTypes];
      v79 = [v77 setWithArray:?];
      v80 = [v79 containsObject:?];

      if (v80)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer([*(a1 + 32) lastBuffer]);
        v82 = *(a1 + 32);
        CVPixelBufferGetWidth(ImageBuffer);
        CVPixelBufferGetHeight(ImageBuffer);
        v67 = [v82 cameraIntrinsicDataForSampleBuffer:? width:? height:?];
        v83 = *(a1 + 32);
        v84 = [v83 outputObjectTypes];
        lhs = *(a1 + 72);
        [v83 findObjects:? inPixelBuffer:? cameraIntrinsicData:? frameTime:?];

        v85 = [(CRCameraReaderOutput *)v62 objectInternal];
        [v85 setType:?];
      }

      else
      {
        v86 = MEMORY[0x277CBEB98];
        v87 = [*(a1 + 32) outputObjectTypes];
        v88 = [v86 setWithArray:?];
        v89 = [v88 containsObject:?];

        if (!v89)
        {
LABEL_58:
          v92 = [(CRCameraReaderOutput *)v62 objectInternal];
          [v92 setVertices:?];

          v93 = [*(a1 + 32) foundCode];
          v94 = [(CRCameraReaderOutput *)v62 objectInternal];
          [v94 setStringValue:?];

          v95 = *(a1 + 32);
          v96 = [MEMORY[0x277CBEA60] arrayWithObject:?];
          [v95 sendDidEndWithInfo:?];

          return;
        }

        CMSampleBufferGetImageBuffer([*(a1 + 32) lastBuffer]);
        v90 = [*(a1 + 32) lastBuffer];
        v67 = CMGetAttachment(v90, *MEMORY[0x277CF3F30], 0);
        v91 = *(a1 + 32);
        v85 = [v91 outputObjectTypes];
        lhs = *(a1 + 72);
        [v91 findOCRTextObjects:? inPixelBuffer:? attachments:? frameTime:?];
      }
    }

LABEL_57:

    goto LABEL_58;
  }

  v45 = *(a1 + 48);
  v46 = [v45 countByEnumeratingWithState:? objects:? count:?];
  if (v46)
  {
    v47 = 0;
    v48 = MEMORY[0];
    v49 = 0.0;
    v50 = 0.0;
    do
    {
      v51 = 0;
      v52 = v47 + 1;
      v47 += v46;
      do
      {
        if (MEMORY[0] != v48)
        {
          objc_enumerationMutation(v45);
        }

        [*(8 * v51) CGPointValue];
        v53 = 1.0 / v52;
        v50 = v50 * (1.0 - v53) + v54 * v53;
        v49 = v49 * (1.0 - v53) + v55 * v53;
        v51 = (v51 + 1);
        ++v52;
      }

      while (v46 != v51);
      v46 = [v45 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v46);
  }

  v56 = [*(a1 + 32) sessionManager];
  [v56 refocusOnPoint:?];
}

void *__41__CRCameraReader_findCodeInSampleBuffer___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) pauseBoxLayerHideTimer];
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  return [v2 animatePresentCodeAtFrameTime:{v4, *(a1 + 56)}];
}

void __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_4(uint64_t a1)
{
  v8 = [*(a1 + 32) sessionManager];
  v2 = [v8 isFocusPointOfInterestSupported];

  if (v2)
  {
    v9 = [*(a1 + 32) sessionManager];
    [v9 focusPointOfInterest];

    v10 = [*(a1 + 32) sessionManager];
    [v10 cameraResolution];
    v3 = [*(a1 + 32) sessionManager];
    [v3 cameraResolution];

    v11 = [*(a1 + 32) sessionManager];
    v4 = [*(a1 + 32) sessionManager];
    v5 = [v4 previewLayer];
    [v11 convertCameraPoint:? toLayer:?];
  }

  v12 = [*(a1 + 32) diagnosticHUDLayer];
  v6 = [*(a1 + 32) sessionManager];
  [v6 isAdjustingFocus];
  v7 = [*(a1 + 32) sessionManager];
  [v7 isFocusPointOfInterestSupported];
  [v12 setAdjustingFocus:? pointOfInterestSupported:? focusPoint:?];
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer cameraIntrinsicData:(id)data
{
  v6 = [self extractCardImage:? fromPixelBuffer:? withCardBuffer:? withPoints:? cameraIntrinsicData:?];

  return v6;
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data
{
  v7 = [self extractCardImage:? fromPixelBuffer:? withCardBuffer:? withPoints:? cameraIntrinsicData:? padding:? inputOrientation:?];

  return v7;
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation
{
  v9 = [self extractCardImage:0 fromPixelBuffer:? withCardBuffer:? withPoints:? cameraIntrinsicData:? padding:? inputOrientation:? unpaddedCardImage:?];

  return v9;
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation unpaddedCardImage:(id *)self0
{
  v154 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  pointsCopy = points;
  dataCopy = data;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [standardUserDefaults BOOLForKey:?];

  v15 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], buffer, 1u);
  v16 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:? options:?];
  v137 = [v16 imageByApplyingOrientation:?];

  if (v15)
  {
    CFRelease(v15);
  }

  if (pointsCopy)
  {
    v17 = [pointsCopy objectAtIndex:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v19 = [pointsCopy objectAtIndex:?];
    if (isKindOfClass)
    {
      v20 = NSPointFromString(v19);
      y = v20.y;
      v150 = v20;

      v22 = [pointsCopy objectAtIndex:?];
      v23 = NSPointFromString(v22);
      v24 = v23.y;
      v151.x = v23.x;

      v25 = [pointsCopy objectAtIndex:?];
      v26 = NSPointFromString(v25);
      v27 = v26.y;
      v152.x = v26.x;

      v28 = [pointsCopy objectAtIndex:?];
      v31 = NSPointFromString(v28);
      v30 = v31.y;
      x = v31.x;
    }

    else
    {
      [(NSString *)v19 CGPointValue];
      y = v32;
      v150.x = v33;
      v150.y = v32;

      v34 = [pointsCopy objectAtIndex:?];
      [v34 CGPointValue];
      v24 = v35;
      v151.x = v36;
      v151.y = v35;

      v37 = [pointsCopy objectAtIndex:?];
      [v37 CGPointValue];
      v27 = v38;
      v152.x = v39;
      v152.y = v38;

      v28 = [pointsCopy objectAtIndex:?];
      [(NSString *)v28 CGPointValue];
    }

    v40 = v30;
    v153.x = x;

    [v137 extent];
    v150.y = v41 - y;
    [v137 extent];
    v151.y = v42 - v24;
    [v137 extent];
    v152.y = v43 - v27;
    [v137 extent];
    v153.y = v44 - v40;
    v147 = v151;
    v148 = v150;
    v145 = v152;
    v146 = v153;
    v45 = rectFromPoints(&v150);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    [v137 extent];
    v162.origin.x = v45;
    v162.origin.y = v47;
    v162.size.width = v49;
    v162.size.height = v51;
    v52 = CGRectContainsRect(v156, v162);
    v53 = MEMORY[0x277CBEA60];
    v54 = NSStringFromPoint(v148);
    v55 = NSStringFromPoint(v147);
    v56 = NSStringFromPoint(v145);
    v57 = NSStringFromPoint(v146);
    v136 = [v53 arrayWithObjects:{v55, v56, v57, 0}];

    if (v52)
    {
      goto LABEL_33;
    }

LABEL_38:
    v100 = 0;
    goto LABEL_62;
  }

  v128 = objc_opt_new();
  v130 = objc_alloc_init(MEMORY[0x277CE2CB0]);
  [v130 setQuadratureTolerance:?];
  [v130 setMinimumSize:?];
  [v130 setMinimumConfidence:?];
  [v130 setMaximumObservations:?];
  if (dataCopy)
  {
    [v128 setObject:? forKey:?];
  }

  [v130 setMinimumAspectRatio:?];
  [v130 setMaximumAspectRatio:?];
  v126 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCIImage:? options:?];
  if ((v14 & 1) == 0)
  {
    [v130 setRequiredVersion:?];
  }

  v58 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v144 = 0;
  [v126 performRequests:? error:?];
  v124 = 0;

  results = [v130 results];
  if ([results count])
  {
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = results;
    v59 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v59)
    {
      v136 = 0;
      v132 = 0;
      v60 = *v141;
      do
      {
        for (i = 0; i != v59; i = (i + 1))
        {
          if (*v141 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v140 + 1) + 8 * i);
          [v137 extent];
          v64 = v63;
          [v137 extent];
          v66 = v65;
          [v62 topLeft];
          v148.x = v64 * v67;
          v148.y = v66 * v68;
          [v62 topRight];
          v147.x = v64 * v69;
          v147.y = v66 * v70;
          [v62 bottomLeft];
          v146.x = v64 * v71;
          v146.y = v66 * v72;
          [v62 bottomRight];
          v145.x = v64 * v73;
          v145.y = v66 * v74;
          v150 = v148;
          v151 = v147;
          v152 = v145;
          v153 = v146;
          v75 = rectFromPoints(&v150);
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v82 = MEMORY[0x277CBEA60];
          v83 = NSStringFromPoint(v148);
          v84 = NSStringFromPoint(v147);
          v85 = NSStringFromPoint(v145);
          v86 = NSStringFromPoint(v146);
          v87 = [v82 arrayWithObjects:{v84, v85, v86, 0}];

          v136 = v87;
          if (padding > 0.0)
          {
            calculatePointsWithPaddingInCorrectedSpace(&v148.x, &v147.x, &v145.x, &v146.x, v75, v77, v79, v81, padding, [imageCopy width], objc_msgSend(imageCopy, "height"));
            v149[0] = v148;
            v149[1] = v147;
            v149[2] = v145;
            v149[3] = v146;
            v75 = rectFromPoints(v149);
            v77 = v88;
            v79 = v89;
            v81 = v90;
          }

          [v137 extent];
          if (CGRectContainsPoint(v157, v148))
          {
            [v137 extent];
            if (CGRectContainsPoint(v158, v147))
            {
              [v137 extent];
              if (CGRectContainsPoint(v159, v146))
              {
                [v137 extent];
                if (CGRectContainsPoint(v160, v145))
                {
                  [v137 extent];
                  v163.origin.x = v75;
                  v163.origin.y = v77;
                  v163.size.width = v79;
                  v163.size.height = v81;
                  v132 |= CGRectContainsRect(v161, v163);
                }
              }
            }
          }
        }

        v59 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v59);
    }

    else
    {
      v136 = 0;
      LOBYTE(v132) = 0;
    }
  }

  else
  {
    v136 = 0;
    LOBYTE(v132) = 0;
  }

  if ((v132 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v92 = [v137 imageByCroppingToRect:?];
  v93 = [CRCameraReader perspectiveCorrectedImage:"perspectiveCorrectedImage:p1:p2:p3:p4:" p1:? p2:? p3:? p4:?];
  if (cardImage)
  {
    *cardImage = [CRCameraReader perspectiveCorrectedImage:"perspectiveCorrectedImage:p1:p2:p3:p4:" p1:? p2:? p3:? p4:?];
  }

  [v93 extent];
  v95 = v94;
  [v137 extent];
  if (v95 <= v96)
  {
    [v93 extent];
    v98 = v97;
    [v137 extent];
    if (v98 <= v99)
    {
      [v93 extent];
      v102 = v101;
      [v93 extent];
      if (v102 < v103)
      {
        v104 = [v93 imageByApplyingOrientation:?];

        v93 = v104;
      }

      if (!cardImage)
      {
        goto LABEL_48;
      }

      v105 = *cardImage;
      v106 = v105;
      if (padding == 0.0)
      {
        v107 = v93;
        v108 = v93;
      }

      else
      {
        [v105 extent];
        v110 = v109;
        [v106 extent];
        if (v110 >= v111)
        {
LABEL_47:

LABEL_48:
          [imageCopy width];
          [imageCopy height];
          v112 = [CRCameraReader scaledImage:"scaledImage:width:height:" width:? height:?];
          v113 = v112;
          if (cardImage)
          {
            if (padding == 0.0)
            {
              v114 = v112;
              v115 = v113;
            }

            else
            {
              [imageCopy width];
              [imageCopy height];
              v115 = [CRCameraReader scaledImage:"scaledImage:width:height:" width:? height:?];
            }

            *cardImage = v115;
          }

          v116 = [MEMORY[0x277CBF740] contextWithOptions:?];
          [imageCopy width];
          [imageCopy height];
          [v116 render:? toCVPixelBuffer:? bounds:? colorSpace:?];
          CGColorSpaceRelease(DeviceRGB);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(cardBuffer, 0);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(cardBuffer, 0);
          if (WidthOfPlane && HeightOfPlane && !CVPixelBufferLockBaseAddress(cardBuffer, 0))
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(cardBuffer, 0);
            if (imageCopy)
            {
              [&v150 vImage];
              v120 = v150.x;
              [v149 vImage];
              v121 = *(&v149[0] + 1);
              [v138 vImage];
              v122 = v139 * v121;
            }

            else
            {
              v120 = 0.0;
              v122 = 0;
            }

            memcpy(*&v120, BaseAddressOfPlane, v122);
            CVPixelBufferUnlockBaseAddress(cardBuffer, 0);
          }

          v100 = v136;

          goto LABEL_61;
        }

        v108 = [v106 imageByApplyingOrientation:?];
      }

      *cardImage = v108;
      goto LABEL_47;
    }
  }

  CFRelease(DeviceRGB);
  v100 = 0;
LABEL_61:

LABEL_62:

  return v100;
}

- (void)sendProvideOverlayObjects:(id)objects
{
  objectsCopy = objects;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CRCameraReader_sendProvideOverlayObjects___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = objectsCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

void *__44__CRCameraReader_sendProvideOverlayObjects___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) callbackDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:0 objects:? count:?];
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = [*(a1 + 32) callbackDelegate];
          v10 = [v9 cameraReader:? provideOverlayTextForRecognizedObject:?];
          [v8 setOverlayString:?];

          v7 = (v7 + 1);
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v5);
    }
  }

  return [*(a1 + 32) showTextDetectorObjects:?];
}

- (void)findOCRTextObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer attachments:(id)attachments frameTime:(id *)time
{
  v23 = *MEMORY[0x277D85DE8];
  CVPixelBufferRetain(buffer);
  ocrImageReader = [(CRCameraReader *)self ocrImageReader];
  v21 = *MEMORY[0x277D70038];
  v22 = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v10 = [ocrImageReader resultsForPixelBuffer:? options:? error:?];

  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:0 objects:? count:?];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [[CRCameraReaderOutputCameraText alloc] initWithImageReaderOutput:?];
        [array addObject:?];

        v15 = (v15 + 1);
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v13);
  }

  [(CRCameraReader *)self sendProvideOverlayObjects:?];
  CVPixelBufferRelease(buffer);
}

- (void)updatePinnedInfoFrameIndex
{
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v6 = [pinnedFoundInfo objectForKey:?];

  if (v6)
  {
    [v6 unsignedIntegerValue];
  }

  pinnedFoundInfo2 = [(CRCameraReader *)self pinnedFoundInfo];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [pinnedFoundInfo2 setObject:? forKey:?];
}

- (void)setFirstTimeFrameIndexForPinnedField:(id)field
{
  v9 = [field stringByAppendingString:?];
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v5 = [pinnedFoundInfo objectForKey:?];

  if (!v5)
  {
    pinnedFoundInfo2 = [(CRCameraReader *)self pinnedFoundInfo];
    v7 = [pinnedFoundInfo2 objectForKey:?];

    if (v7)
    {
      pinnedFoundInfo3 = [(CRCameraReader *)self pinnedFoundInfo];
      [pinnedFoundInfo3 setObject:? forKey:?];
    }
  }
}

- (unint64_t)getFirstTimeFrameIndexForPinnedField:(id)field
{
  v4 = [field stringByAppendingString:?];
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v6 = [pinnedFoundInfo objectForKey:?];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (id)getCorrectedIDImageFromAuxiliaryPoints:(id)points fromPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation unpaddedCardImage:(id *)image
{
  v72[2] = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v10 = pointsCopy;
  if (!pointsCopy || [pointsCopy count] != 4)
  {
    v44 = 0;
    goto LABEL_34;
  }

  v11 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], buffer, 1u);
  v12 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:? options:?];
  v13 = [v12 imageByApplyingOrientation:?];

  if (v11)
  {
    CFRelease(v11);
  }

  v14 = [v10 objectAtIndexedSubscript:?];
  [v14 CGPointValue];
  v69[0] = v15;
  v69[1] = v16;

  v17 = [v10 objectAtIndexedSubscript:?];
  [v17 CGPointValue];
  v70[0] = v18;
  v70[1] = v19;

  v20 = [v10 objectAtIndexedSubscript:?];
  [v20 CGPointValue];
  v71[0] = v21;
  v71[1] = v22;

  v23 = [v10 objectAtIndexedSubscript:?];
  [v23 CGPointValue];
  v72[0] = v24;
  v72[1] = v25;

  v26 = rectFromPoints(v69);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(CRCameraReader *)self borderPaddingIDCard];
  if (v33 > 0.0)
  {
    [(CRCameraReader *)self borderPaddingIDCard];
    calculatePointsWithPaddingInCorrectedSpace(v69, v70, v71, v72, v26, v28, v30, v32, v34, [(CRCameraReader *)self outputCapturedImageWidth], [(CRCameraReader *)self outputCapturedImageHeight]);
    v26 = rectFromPoints(v69);
    v28 = v35;
    v30 = v36;
    v32 = v37;
  }

  [v13 extent];
  v75.origin.x = v26;
  v75.origin.y = v28;
  v75.size.width = v30;
  v75.size.height = v32;
  if (CGRectContainsRect(v74, v75))
  {
    v68 = [v13 imageByCroppingToRect:?];
    v38 = [CRCameraReader perspectiveCorrectedImage:"perspectiveCorrectedImage:p1:p2:p3:p4:" p1:? p2:? p3:? p4:?];
    if (image)
    {
      [(CRCameraReader *)self borderPaddingIDCard];
      if (v39 == 0.0)
      {
        v45 = v38;
        *image = v38;
      }

      else
      {
        v40 = [v10 objectAtIndexedSubscript:?];
        [v40 CGPointValue];
        v41 = [v10 objectAtIndexedSubscript:?];
        [v41 CGPointValue];
        v42 = [v10 objectAtIndexedSubscript:?];
        [v42 CGPointValue];
        v43 = [v10 objectAtIndexedSubscript:?];
        [v43 CGPointValue];
        *image = [CRCameraReader perspectiveCorrectedImage:"perspectiveCorrectedImage:p1:p2:p3:p4:" p1:? p2:? p3:? p4:?];
      }
    }

    [v38 extent];
    v47 = v46;
    [v13 extent];
    if (v47 > v48 || ([v38 extent], v50 = v49, objc_msgSend(v13, "extent"), v50 > v51))
    {
      v44 = 0;
LABEL_32:

      goto LABEL_33;
    }

    [v38 extent];
    v53 = v52;
    [v38 extent];
    if (v53 < v54)
    {
      v55 = [v38 imageByApplyingOrientation:?];

      v38 = v55;
    }

    if (!image)
    {
LABEL_26:
      [(CRCameraReader *)self outputCapturedImageWidth];
      [(CRCameraReader *)self outputCapturedImageHeight];
      v63 = [CRCameraReader scaledImage:"scaledImage:width:height:" width:? height:?];

      if (image)
      {
        [(CRCameraReader *)self borderPaddingIDCard];
        if (v64 == 0.0)
        {
          v65 = v63;
          v66 = v63;
        }

        else
        {
          [(CRCameraReader *)self outputCapturedImageWidth];
          [(CRCameraReader *)self outputCapturedImageHeight];
          v66 = [CRCameraReader scaledImage:"scaledImage:width:height:" width:? height:?];
        }

        *image = v66;
      }

      v38 = v63;
      v44 = v38;
      goto LABEL_32;
    }

    v56 = *image;
    [(CRCameraReader *)self borderPaddingIDCard];
    if (v57 == 0.0)
    {
      v58 = v38;
      v59 = v38;
    }

    else
    {
      [v56 extent];
      v61 = v60;
      [v56 extent];
      if (v61 >= v62)
      {
LABEL_25:

        goto LABEL_26;
      }

      v59 = [v56 imageByApplyingOrientation:?];
    }

    *image = v59;
    goto LABEL_25;
  }

  v44 = 0;
LABEL_33:

LABEL_34:

  return v44;
}

- (void)findIDObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time
{
  v213 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v203 = [MEMORY[0x277CBEB98] setWithArray:?];
  v204 = @"CRCameraReaderIDCardCapturePathAutomatic";
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  rect_16 = [MEMORY[0x277CBEB18] array];
  array = [MEMORY[0x277CBEB18] array];
  v9 = objc_alloc(MEMORY[0x277D70088]);
  [(CRCameraReader *)self outputCapturedImageWidth];
  [(CRCameraReader *)self outputCapturedImageHeight];
  v202 = [v9 initWithWidth:? height:? colorSpace:?];
  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  connection = [previewLayer connection];
  videoOrientation = [connection videoOrientation];

  if (videoOrientation == 2)
  {
    v199 = 0;
    v15 = 0;
    v14 = 3;
  }

  else if (videoOrientation == 3)
  {
    v15 = 0;
    v14 = 1;
    v199 = 1;
  }

  else
  {
    v199 = 0;
    if (videoOrientation == 4)
    {
      v14 = 6;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }
  }

  sharedInsights = [v14 sharedInsights];
  v198 = v15;
  if (sharedInsights)
  {
    sharedInsights2 = [v16 sharedInsights];
    v19 = [sharedInsights2 allowOverrideWithKey:? forValue:?];
  }

  else
  {
    v19 = 0;
  }

  callbackDelegate = [(CRCameraReader *)self callbackDelegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    callbackDelegate2 = [(CRCameraReader *)self callbackDelegate];
    v23 = [callbackDelegate2 cameraReader:? auxiliaryIDCornerDetection:?];

    enableUnpaddedIDCapture = [(CRCameraReader *)self enableUnpaddedIDCapture];
    if (enableUnpaddedIDCapture)
    {
      v211 = 0;
    }

    v25 = [CRCameraReader getCorrectedIDImageFromAuxiliaryPoints:"getCorrectedIDImageFromAuxiliaryPoints:fromPixelBuffer:orientation:unpaddedCardImage:" fromPixelBuffer:? orientation:? unpaddedCardImage:?];
    v26 = v25;
    if (enableUnpaddedIDCapture)
    {
      v27 = v211;
      if (!v26)
      {
        v200 = v27;
LABEL_34:

        goto LABEL_35;
      }

      if (v27)
      {
        v200 = v27;
        rect = [CRCameraReader platformImageFromCIImage:?];
      }

      else
      {
        v200 = 0;
        rect = 0;
      }
    }

    else
    {
      v200 = 0;
      rect = 0;
      if (!v25)
      {
        goto LABEL_34;
      }
    }

    rect_8 = v26;
    v32 = [CRCameraReader platformImageFromCIImage:?];
    for (i = 0; i != 4; ++i)
    {
      v34 = [v23 objectAtIndexedSubscript:?];
      [v34 CGPointValue];

      normalizedPointForSize();
      v35 = NSStringFromPoint(v214);
      [array addObject:?];
    }

    sessionManager2 = [(CRCameraReader *)self sessionManager];
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer alignmentRect];
    alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
    [sessionManager2 convertCameraRect:? fromLayer:?];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v232.origin.x = v40;
    v232.origin.y = v42;
    v232.size.width = v44;
    v232.size.height = v46;
    CGRectIntegral(v232);
    normalizedRectForSize();
    x = v215.x;
    y = v215.y;
    v50 = v49;
    v52 = v51;
    v53 = NSStringFromPoint(v215);
    [rect_16 addObject:?];

    v54 = x + v50;
    v216.x = v54;
    v216.y = y;
    v55 = NSStringFromPoint(v216);
    [rect_16 addObject:?];

    v56 = y + v52;
    v217.x = v54;
    v217.y = v56;
    v57 = NSStringFromPoint(v217);
    [rect_16 addObject:?];

    v218.x = x;
    v218.y = v56;
    v58 = NSStringFromPoint(v218);
    [rect_16 addObject:?];

    v59 = objc_alloc_init(CRCameraReaderOutputIDCard);
    objectInternal = [(CRCameraReaderOutput *)v59 objectInternal];
    [objectInternal setImageValue:?];

    objectInternal2 = [(CRCameraReaderOutput *)v59 objectInternal];
    [objectInternal2 setUnpaddedImageValue:?];

    objectInternal3 = [(CRCameraReaderOutput *)v59 objectInternal];
    [objectInternal3 setVertices:?];

    objectInternal4 = [(CRCameraReaderOutput *)v59 objectInternal];
    [objectInternal4 setTargetVertices:?];

    objectInternal5 = [(CRCameraReaderOutput *)v59 objectInternal];
    [objectInternal5 setCapturePath:?];

    [v203 containsObject:?];
    objectInternal6 = [(CRCameraReaderOutput *)v59 objectInternal];
    [objectInternal6 setType:?];

    callbackDelegate3 = [(CRCameraReader *)self callbackDelegate];
    if (objc_opt_respondsToSelector())
    {
      callbackDelegate4 = [(CRCameraReader *)self callbackDelegate];
      v68 = [callbackDelegate4 cameraReader:? shouldReturnIDImage:?];

      if (!v68)
      {

        v26 = rect_8;
        goto LABEL_34;
      }
    }

    else
    {
    }

    AudioServicesPlaySystemSound(0xFFFu);
    [(CRCameraReader *)self stopSession];
    v183 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    [(CRCameraReader *)self sendDidEndWithInfo:?];

    [(CRCameraReader *)self sendDidEndAnimation];
    cardBlurValues = [(CRCameraReader *)self cardBlurValues];
    [cardBlurValues removeAllObjects];
    goto LABEL_60;
  }

  v28 = objc_opt_class();
  [(CRCameraReader *)self correctedCardBuffer];
  [(CRCameraReader *)self borderPaddingIDCard];
  enableUnpaddedIDCapture2 = [(CRCameraReader *)self enableUnpaddedIDCapture];
  v30 = &v210;
  if (enableUnpaddedIDCapture2)
  {
    v210 = 0;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v28 extractCardImage:v30 fromPixelBuffer:? withCardBuffer:? withPoints:? cameraIntrinsicData:? padding:? inputOrientation:? unpaddedCardImage:?];
  if (enableUnpaddedIDCapture2)
  {
    v200 = v210;
  }

  else
  {
    v200 = 0;
  }

  v23 = v19;
  v19 = v31;
LABEL_35:

  if (v19)
  {
    sessionManager3 = [(CRCameraReader *)self sessionManager];
    alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer3 alignmentRect];
    alignmentLayer4 = [(CRCameraReader *)self alignmentLayer];
    [sessionManager3 convertCameraRect:? fromLayer:?];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;

    v233.origin.x = v73;
    v233.origin.y = v75;
    v233.size.width = v77;
    v233.size.height = v79;
    v234 = CGRectIntegral(v233);
    v80 = v234.origin.x;
    v81 = v234.origin.y;
    width = v234.size.width;
    height = v234.size.height;
    normalizedRectForSize();
    v84 = v219.x;
    v85 = v219.y;
    v87 = v86;
    v89 = v88;
    v90 = NSStringFromPoint(v219);
    [rect_16 addObject:?];

    v91 = v84 + v87;
    v220.x = v91;
    v220.y = v85;
    v92 = NSStringFromPoint(v220);
    [rect_16 addObject:?];

    v93 = v85 + v89;
    v221.x = v91;
    v221.y = v93;
    v94 = NSStringFromPoint(v221);
    [rect_16 addObject:?];

    v222.x = v84;
    v222.y = v93;
    v95 = NSStringFromPoint(v222);
    [rect_16 addObject:?];

    v235.origin.x = v80;
    v235.origin.y = v81;
    v235.size.width = width;
    v235.size.height = height;
    v236 = CGRectInset(v235, width * 0.1, height * 0.1);
    recta = v236.origin.y;
    v196 = v236.size.height;
    v197 = v236.size.width;
    v96 = v236.origin.x;
    v236.origin.x = v80;
    v236.origin.y = v81;
    v236.size.width = width;
    v236.size.height = height;
    v237 = CGRectInset(v236, width * -0.1, height * -0.1);
    rect_8a = v237.origin.y;
    v97 = v237.size.height;
    if (v199)
    {
      v98 = v237.size.width;
      v99 = v237.origin.x;
      v101 = v196;
      v100 = v197;
      v102 = v96;
    }

    else
    {
      v98 = v237.size.height;
      v97 = v237.size.width;
      v102 = recta;
      v99 = v237.origin.y;
      recta = v96;
      rect_8a = v237.origin.x;
      v100 = v196;
      v101 = v197;
    }

    if (v198)
    {
      v103 = CVPixelBufferGetHeight(buffer);
      v104 = CVPixelBufferGetHeight(buffer);
      v105 = v103 - (v100 + v102);
      v106 = v98 + v99;
      v102 = recta;
      v99 = rect_8a;
      v107 = v97;
      recta = v105;
      rect_8a = v104 - v106;
      v108 = v101;
    }

    else
    {
      v107 = v98;
      v98 = v97;
      v108 = v100;
      v100 = v101;
    }

    v109 = 0;
    v110 = 0;
    p_b = &v212.b;
    do
    {
      v112 = [v19 objectAtIndexedSubscript:?];
      v113 = NSPointFromString(v112);
      *(p_b - 1) = v113;

      normalizedPointForSize();
      v114 = NSStringFromPoint(v223);
      [array addObject:?];

      v238.origin.x = rect_8a;
      v238.origin.y = v99;
      v238.size.width = v98;
      v238.size.height = v107;
      if (!CGRectContainsPoint(v238, v113))
      {
        break;
      }

      v239.origin.x = recta;
      v239.origin.y = v102;
      v239.size.width = v100;
      v239.size.height = v108;
      if (CGRectContainsPoint(v239, v113))
      {
        break;
      }

      v110 = v109 > 2;
      p_b += 2;
      ++v109;
    }

    while (v109 != 4);
    if (v110)
    {
      rectFromPoints(&v212);
      if ((v115 * v116) >= (v197 * v196))
      {
        goto LABEL_54;
      }
    }
  }

  if ([(CRCameraReader *)self enableAltIDCardScan])
  {
    v117 = @"CRCameraReaderIDCardCapturePathFallback";

    v204 = v117;
    sessionManager4 = [(CRCameraReader *)self sessionManager];
    alignmentLayer5 = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer5 alignmentRect];
    alignmentLayer6 = [(CRCameraReader *)self alignmentLayer];
    [sessionManager4 convertCameraRect:? fromLayer:?];
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v128 = v127;

    v240.origin.x = v122;
    v240.origin.y = v124;
    v240.size.width = v126;
    v240.size.height = v128;
    CGRectIntegral(v240);
    CVPixelBufferGetHeight(buffer);
    CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
    CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
    [(CRCameraReader *)self borderPaddingIDCard];
    [(CRCameraReader *)self borderPaddingIDCard];
    CVPixelBufferGetWidth(buffer);
    CVPixelBufferGetHeight(buffer);
    normalizedRectForSize();
    v129 = v224.x;
    v130 = v224.y;
    v132 = v131;
    v134 = v133;
    v135 = NSStringFromPoint(v224);
    [rect_16 addObject:?];

    v136 = v129 + v132;
    v225.x = v136;
    v225.y = v130;
    v137 = NSStringFromPoint(v225);
    [rect_16 addObject:?];

    v138 = v130 + v134;
    v226.x = v136;
    v226.y = v138;
    v139 = NSStringFromPoint(v226);
    [rect_16 addObject:?];

    v227.x = v129;
    v227.y = v138;
    v140 = NSStringFromPoint(v227);
    [rect_16 addObject:?];

    [CRCameraReader uniformPadRect:"uniformPadRect:widthPadding:heightPadding:width:height:" widthPadding:? heightPadding:? width:? height:?];
    [CRCameraReader aspectRatioPaddedRect:"aspectRatioPaddedRect:expectedWidth:height:orientation:" expectedWidth:? height:? orientation:?];
    v142 = v141;
    v144 = v143;
    normalizedRectForSize();
    v145 = v228.x;
    v146 = v228.y;
    v148 = v147;
    v150 = v149;
    v151 = NSStringFromPoint(v228);
    [array addObject:?];

    v152 = v145 + v148;
    v229.x = v152;
    v229.y = v146;
    v153 = NSStringFromPoint(v229);
    [array addObject:?];

    v154 = v146 + v150;
    v230.x = v152;
    v230.y = v154;
    v155 = NSStringFromPoint(v230);
    [array addObject:?];

    v231.x = v145;
    v231.y = v154;
    v156 = NSStringFromPoint(v231);
    [array addObject:?];

    v157 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:?];
    v158 = [v157 imageByCroppingToRect:?];

    CGAffineTransformMakeTranslation(&v212, -v142, -v144);
    v159 = [v158 imageByApplyingTransform:?];

    v160 = [v159 imageByApplyingOrientation:?];

    v161 = [v160 imageByApplyingOrientation:?];

    v162 = CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
    [v161 extent];
    v164 = v163;
    v165 = CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
    [v161 extent];
    v167 = fmin(v162 / v164, v165 / v166);
    CGAffineTransformMakeScale(&v212, v167, v167);
    v23 = [v161 imageByApplyingTransform:?];

    v168 = [MEMORY[0x277CBF740] contextWithOptions:?];
    rect_8 = v168;
    if ([(CRCameraReader *)self enableManualIDCapture])
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      [(CRCameraReader *)self correctedCardBuffer];
      CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
      CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
      [CRCameraReaderOutputIDCard render:v168 toCVPixelBuffer:"render:toCVPixelBuffer:bounds:colorSpace:" bounds:? colorSpace:?];
      CGColorSpaceRelease(DeviceRGB);
      v32 = objc_alloc_init(CRCameraReaderOutputIDCard);
      v170 = MEMORY[0x277CBF758];
      [(CRCameraReader *)self correctedCardBuffer];
      rect = [v170 imageWithCVPixelBuffer:?];
      v59 = [CRCameraReader platformImageFromCIImage:?];
      objectInternal7 = [(CRCameraReaderOutput *)v32 objectInternal];
      [objectInternal7 setImageValue:?];

      objectInternal8 = [(CRCameraReaderOutput *)v32 objectInternal];
      [objectInternal8 setVertices:?];

      objectInternal9 = [(CRCameraReaderOutput *)v32 objectInternal];
      [objectInternal9 setTargetVertices:?];

      objectInternal10 = [(CRCameraReaderOutput *)v32 objectInternal];
      [objectInternal10 setCapturePath:?];

      [v203 containsObject:?];
      objectInternal11 = [(CRCameraReaderOutput *)v32 objectInternal];
      [objectInternal11 setType:?];

      [(CRCameraReader *)self stopSession];
      v185 = [MEMORY[0x277CBEA60] arrayWithObject:?];
      [(CRCameraReader *)self sendDidEndWithInfo:?];

      [(CRCameraReader *)self sendDidEndAnimation];
      cardBlurValues = [(CRCameraReader *)self cardBlurValues];
      [cardBlurValues removeAllObjects];
LABEL_60:

      cardBlurValues3 = rect;
      goto LABEL_61;
    }

    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBF6D8], MEMORY[0x277CBEC28], *MEMORY[0x277CBF6F8], MEMORY[0x277CBEC38], *MEMORY[0x277CBF708], 0}];
    rect = [MEMORY[0x277CBF748] detectorOfType:? context:? options:?];
    v59 = [rect featuresInImage:? options:?];
    v175 = [v23 imageByApplyingOrientation:?];
    cardBlurValues = [rect featuresInImage:? options:?];

    if (-[CRCameraReaderOutputIDCard count](v59, "count") <= 2 && [cardBlurValues count] < 3)
    {
      goto LABEL_60;
    }

    v176 = CGColorSpaceCreateDeviceRGB();
    [(CRCameraReader *)self correctedCardBuffer];
    CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
    CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
    [CRCameraReaderOutputIDCard render:"render:toCVPixelBuffer:bounds:colorSpace:" toCVPixelBuffer:? bounds:? colorSpace:?];
    CGColorSpaceRelease(v176);

LABEL_54:
    v177 = MEMORY[0x277CBF758];
    [(CRCameraReader *)self correctedCardBuffer];
    v23 = [v177 imageWithCVPixelBuffer:?];
    cardBlurValues2 = [(CRCameraReader *)self cardBlurValues];
    v179 = isLeastBlurryFrame(v23, cardBlurValues2, 10);

    if (!v179)
    {
LABEL_63:

      goto LABEL_64;
    }

    rect_8 = objc_alloc_init(CRCameraReaderOutputIDCard);
    if (v200)
    {
      v180 = [CRCameraReader platformImageFromCIImage:?];
      objectInternal12 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [objectInternal12 setUnpaddedImageValue:?];
    }

    v32 = [CRCameraReader platformImageFromCIImage:?];
    objectInternal13 = [(CRCameraReaderOutput *)rect_8 objectInternal];
    [objectInternal13 setImageValue:?];

    [v203 containsObject:?];
    objectInternal14 = [(CRCameraReaderOutput *)rect_8 objectInternal];
    [objectInternal14 setType:?];

    objectInternal15 = [(CRCameraReaderOutput *)rect_8 objectInternal];
    [objectInternal15 setVertices:?];

    objectInternal16 = [(CRCameraReaderOutput *)rect_8 objectInternal];
    [objectInternal16 setTargetVertices:?];

    objectInternal17 = [(CRCameraReaderOutput *)rect_8 objectInternal];
    [objectInternal17 setCapturePath:?];

    callbackDelegate5 = [(CRCameraReader *)self callbackDelegate];
    if (objc_opt_respondsToSelector())
    {
      callbackDelegate6 = [(CRCameraReader *)self callbackDelegate];
      v194 = [callbackDelegate6 cameraReader:? shouldReturnIDImage:?];

      if (!v194)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

    AudioServicesPlaySystemSound(0xFFFu);
    [(CRCameraReader *)self stopSession];
    v195 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    [(CRCameraReader *)self sendDidEndWithInfo:?];

    [(CRCameraReader *)self sendDidEndAnimation];
    cardBlurValues3 = [(CRCameraReader *)self cardBlurValues];
    [cardBlurValues3 removeAllObjects];
LABEL_61:

LABEL_62:
    goto LABEL_63;
  }

LABEL_64:
}

- (void)findObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time
{
  v466 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  dataCopy = data;
  pixelBuffer = buffer;
  CVPixelBufferRetain(buffer);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [standardUserDefaults BOOLForKey:?];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LODWORD(v403) = [standardUserDefaults2 BOOLForKey:?];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v375 = [MEMORY[0x277CBEB98] setWithArray:?];
  [(CRCameraReader *)self updatePinnedInfoFrameIndex];
  v374 = [MEMORY[0x277CBEB18] arrayWithObject:?];
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v14 = [pinnedFoundInfo objectForKey:?];

  nameCutRects = [(CRCameraReader *)self nameCutRects];
  v397 = v11;
  if ([nameCutRects count])
  {
    nameCutRects2 = [(CRCameraReader *)self nameCutRects];
    v17 = [nameCutRects2 count] == 8;
  }

  else
  {
    v17 = 1;
  }

  dateCutRects = [(CRCameraReader *)self dateCutRects];
  if ([dateCutRects count])
  {
    dateCutRects2 = [(CRCameraReader *)self dateCutRects];
    v20 = [dateCutRects2 count] == 8;
  }

  else
  {
    v20 = 1;
  }

  pinnedFoundInfo2 = [(CRCameraReader *)self pinnedFoundInfo];
  v22 = [pinnedFoundInfo2 objectForKey:?];

  cardNumberCounts = [(CRCameraReader *)self cardNumberCounts];
  v24 = [cardNumberCounts count];

  if (v24)
  {
    pinnedFoundInfo3 = [(CRCameraReader *)self pinnedFoundInfo];
    v26 = [pinnedFoundInfo3 objectForKey:?];

    if (v26)
    {
      if (!v14 && [v375 containsObject:?])
      {
        if (!v22 && v17 != v20 && ((v20 ^ 1 | v17) & 1) != 0)
        {
LABEL_16:
          if ([v375 containsObject:?] && (v14 || v17 == v20 || ((v17 ^ 1 | v20) & 1) == 0))
          {
            [v374 addObject:?];
          }

          goto LABEL_22;
        }

        [v374 addObject:?];
      }

      if (!v22)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    [v374 addObjectsFromArray:?];
  }

LABEL_22:
  v27 = [objc_alloc(MEMORY[0x277D70088]) initWithWidth:? height:? colorSpace:?];
  sharedInsights = [v28 sharedInsights];
  if (sharedInsights)
  {
    sharedInsights2 = [v29 sharedInsights];
    v32 = [sharedInsights2 allowOverrideWithKey:? forValue:?];
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_opt_class();
  [(CRCameraReader *)self correctedCardBuffer];
  v34 = [v33 extractCardImage:? fromPixelBuffer:? withCardBuffer:? withPoints:? cameraIntrinsicData:?];

  sharedInsights3 = [v35 sharedInsights];
  v379 = v34;
  if (sharedInsights3)
  {
    sharedInsights4 = [v36 sharedInsights];
    v39 = [sharedInsights4 allowOverrideWithKey:? forValue:?];

    v40 = v39;
  }

  else
  {
    sharedInsights4 = v27;
    v40 = sharedInsights4;
  }

  v376 = v40;
  sharedInsights5 = [v41 sharedInsights];
  if (sharedInsights5)
  {
    sharedInsights6 = [0x277CCA000 sharedInsights];
    v44 = [sharedInsights6 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v44 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights6 = v44;
  }

  if ([v44 BOOLValue])
  {
    [v40 ciImage];
  }

  else
  {
    v45 = MEMORY[0x277CBF758];
    [(CRCameraReader *)self correctedCardBuffer];
    [v45 imageWithCVPixelBuffer:?];
  }
  v371 = ;

  if (sharedInsights5)
  {
  }

  selfCopy = self;

  sharedInsights7 = [v46 sharedInsights];
  if (sharedInsights7)
  {
    sharedInsights8 = [v47 sharedInsights];
    v460[1] = MEMORY[0x277D85DD0];
    v460[2] = 3221225472;
    v460[3] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_2;
    v460[4] = &unk_278EAA790;
    v462 = v403;
    v391 = &v461;
    v461 = v379;
    v50 = [__CFString allowOverrideWithKey:sharedInsights8 forResultFromBlock:"allowOverrideWithKey:forResultFromBlock:"];
  }

  else
  {
    v50 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights8 = v50;
  }

  v51 = v50;
  bOOLValue = [(__CFString *)v50 BOOLValue];
  if (sharedInsights7)
  {
  }

  if (bOOLValue)
  {
    sharedInsights9 = [v53 sharedInsights];
    obj = @"CRInsightsContextImagePath";
    [sharedInsights9 setContextValue:? forKey:?];

    sharedInsights10 = [v55 sharedInsights];
    [sharedInsights10 setContextValue:? forKey:?];

    time = *time;
    [(CRCameraReader *)self setPointsFound:?];
    [dictionary setValue:? forKey:?];
    sharedInsights11 = [v57 sharedInsights];
    [sharedInsights11 provideInsightValue:? forKey:?];

    sharedInsights12 = [v59 sharedInsights];
    [sharedInsights12 provideInsightValue:? forKey:?];

    time = *time;
    [CRCameraReader sendDidFindTarget:"sendDidFindTarget:frameTime:" frameTime:?];
    sharedInsights13 = [v61 sharedInsights];
    if (sharedInsights13)
    {
      sharedInsights14 = [v62 sharedInsights];
      v65 = [sharedInsights14 allowOverrideWithKey:? forResultFromBlock:?];
    }

    else
    {
      v65 = [MEMORY[0x277CCABB0] numberWithBool:?];
      sharedInsights14 = v65;
    }

    bOOLValue2 = [v65 BOOLValue];
    if (sharedInsights13)
    {
    }

    if (bOOLValue2)
    {
      v68 = [CRCameraReader findObjectsEmbossed:"findObjectsEmbossed:inImage:" inImage:?];
      sharedInsights15 = [v69 sharedInsights];
      [sharedInsights15 provideInsightValue:? forKey:?];

      [CRCameraReader mergeInfo:"mergeInfo:intoFindInfo:" intoFindInfo:?];
    }

    sharedInsights16 = [v67 sharedInsights];
    if (sharedInsights16)
    {
      sharedInsights17 = [v71 sharedInsights];
      v459[1] = MEMORY[0x277D85DD0];
      v459[2] = 3221225472;
      v459[3] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_4;
      v459[4] = &unk_278EAA7B8;
      v459[5] = self;
      v460[0] = v371;
      v400 = [sharedInsights17 allowOverrideWithKey:? forResultFromBlock:?];

      v386 = v460;
    }

    else
    {
      sharedInsights17 = [objc_opt_class() targetRectsForImage:?];
      v400 = sharedInsights17;
    }

    sharedInsights18 = [v73 sharedInsights];
    [sharedInsights18 provideInsightValue:? forKey:?];

    if ([v400 count])
    {
      v76 = [CRCameraReader findObjectsFlat:"findObjectsFlat:inImage:numberRects:invert:" inImage:? numberRects:? invert:?];
      sharedInsights19 = [v77 sharedInsights];
      [sharedInsights19 provideInsightValue:? forKey:?];

      [CRCameraReader mergeInfo:"mergeInfo:intoFindInfo:" intoFindInfo:?];
    }

    sharedInsights20 = [v75 sharedInsights];
    if (sharedInsights20)
    {
      sharedInsights21 = [v79 sharedInsights];
      v458[1] = MEMORY[0x277D85DD0];
      v458[2] = 3221225472;
      v458[3] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_5;
      v458[4] = &unk_278EAA7E0;
      v383 = v459;
      v459[0] = dictionary;
      v82 = [sharedInsights21 allowOverrideWithKey:? forResultFromBlock:?];
    }

    else
    {
      v83 = MEMORY[0x277CCABB0];
      sharedInsights21 = [dictionary objectForKey:?];
      v82 = [v83 numberWithBool:?];
    }

    bOOLValue3 = [v82 BOOLValue];

    if (bOOLValue3)
    {
      sharedInsights22 = [v85 sharedInsights];
      [sharedInsights22 setContextValue:? forKey:?];

      sharedInsights23 = [v87 sharedInsights];
      if (sharedInsights23)
      {
        sharedInsights24 = [v88 sharedInsights];
        imageByRotating90CW = [v376 imageByRotating90CW];
        v92 = [sharedInsights24 allowOverrideWithKey:? forValue:?];
      }

      else
      {
        sharedInsights24 = [v376 imageByRotating90CW];
        v92 = sharedInsights24;
      }

      sharedInsights25 = [v93 sharedInsights];
      [sharedInsights25 provideInsightValue:? forKey:?];

      sharedInsights26 = [v95 sharedInsights];
      selfCopy2 = self;
      if (sharedInsights26)
      {
        sharedInsights27 = [v96 sharedInsights];
        v453 = MEMORY[0x277D85DD0];
        v454 = 3221225472;
        v455 = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_6;
        v456 = &unk_278EAA7B8;
        v457 = selfCopy;
        v458[0] = v92;
        v99 = [sharedInsights27 allowOverrideWithKey:? forResultFromBlock:?];
        v381 = v458;
      }

      else
      {
        v100 = objc_opt_class();
        sharedInsights27 = [v92 ciImage];
        v99 = [v100 targetRectsForImage:?];
      }

      v101 = v99;

      sharedInsights28 = [v102 sharedInsights];
      [sharedInsights28 provideInsightValue:? forKey:?];

      if ([v101 count])
      {
        v104 = [CRCameraReader findObjectsFlat:selfCopy inImage:"findObjectsFlat:inImage:numberRects:invert:" numberRects:? invert:?];
        [CRCameraReader mergeInfo:selfCopy intoFindInfo:"mergeInfo:intoFindInfo:"];
        sharedInsights29 = [v105 sharedInsights];
        [sharedInsights29 provideInsightValue:? forKey:?];

        v107 = [dictionary objectForKey:?];
        LODWORD(sharedInsights29) = v107 == 0;

        if (sharedInsights29)
        {
          sharedInsights30 = [v108 sharedInsights];
          [sharedInsights30 setContextValue:? forKey:?];

          selfCopy2 = selfCopy;
          v110 = [CRCameraReader findObjectsFlat:selfCopy inImage:"findObjectsFlat:inImage:numberRects:invert:" numberRects:? invert:?];
          [CRCameraReader mergeInfo:selfCopy intoFindInfo:"mergeInfo:intoFindInfo:"];
        }
      }

      if (sharedInsights26)
      {
      }
    }

    if (sharedInsights20)
    {
    }

    sharedInsights31 = [v85 sharedInsights];
    [sharedInsights31 setContextValue:? forKey:?];

    sharedInsights8 = [v112 sharedInsights];
    [__CFString setContextValue:sharedInsights8 forKey:"setContextValue:forKey:"];

    if (sharedInsights16)
    {
    }
  }

  if (sharedInsights7)
  {
  }

  sharedInsights32 = [v53 sharedInsights];
  if (sharedInsights32)
  {
    sharedInsights33 = [v113 sharedInsights];
    sharedInsights8 = @"kOverrideShouldRunFixedCutPath";
    v450[1] = MEMORY[0x277D85DD0];
    v450[2] = 3221225472;
    v450[3] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_7;
    v450[4] = &unk_278EAA790;
    v452 = v397;
    v451 = dictionary;
    v116 = [sharedInsights33 allowOverrideWithKey:? forResultFromBlock:?];
    v117 = 0;
    v400 = &v451;
  }

  else
  {
    v118 = MEMORY[0x277CCABB0];
    if ((v397 & 1) == 0)
    {
      sharedInsights8 = [dictionary objectForKey:?];
    }

    v116 = [v118 numberWithBool:?];
    v117 = v397 ^ 1;
    sharedInsights33 = v116;
  }

  bOOLValue4 = [v116 BOOLValue];
  if (sharedInsights32)
  {
  }

  if (v117)
  {
  }

  if (bOOLValue4)
  {
    sharedInsights34 = [v120 sharedInsights];
    [sharedInsights34 setContextValue:? forKey:?];

    sharedInsights35 = [v122 sharedInsights];
    [sharedInsights35 setContextValue:? forKey:?];

    sessionManager = [(CRCameraReader *)selfCopy sessionManager];
    alignmentLayer = [(CRCameraReader *)selfCopy alignmentLayer];
    [alignmentLayer alignmentRect];
    alignmentLayer2 = [(CRCameraReader *)selfCopy alignmentLayer];
    [sessionManager convertCameraRect:? fromLayer:?];
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v134 = v133;

    v467.origin.x = v128;
    v467.origin.y = v130;
    v467.size.width = v132;
    v467.size.height = v134;
    v468 = CGRectIntegral(v467);
    width = v468.size.width;
    height = v468.size.height;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    if (WidthOfPlane && HeightOfPlane && !CVPixelBufferLockBaseAddress(pixelBuffer, 0))
    {
      v392 = [objc_alloc(MEMORY[0x277D70088]) initWithCVPixelBuffer:? toColorSpace:?];
      v398 = [v392 imageByCroppingRectangle:?];
      if (height > width)
      {
        imageByRotating90CW2 = [v398 imageByRotating90CW];

        v398 = imageByRotating90CW2;
      }

      sharedInsights36 = [v140 sharedInsights];
      [sharedInsights36 provideInsightValue:? forKey:?];

      sharedInsights37 = [v143 sharedInsights];
      if (sharedInsights37)
      {
        sharedInsights38 = [v144 sharedInsights];
        v449[1] = MEMORY[0x277D85DD0];
        v449[2] = 3221225472;
        v449[3] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_8;
        v449[4] = &unk_278EAA7B8;
        v449[5] = selfCopy;
        v450[0] = v398;
        v146 = [sharedInsights38 allowOverrideWithKey:? forResultFromBlock:?];
        obj = v450;
      }

      else
      {
        v147 = objc_opt_class();
        sharedInsights38 = [v398 ciImage];
        v146 = [v147 targetRectsForImage:?];
      }

      v148 = v146;

      sharedInsights39 = [v149 sharedInsights];
      [sharedInsights39 provideInsightValue:? forKey:?];

      if ([v148 count])
      {
        v152 = [CRCameraReader findObjectsFlat:selfCopy inImage:"findObjectsFlat:inImage:numberRects:invert:" numberRects:? invert:?];
        sharedInsights40 = [v153 sharedInsights];
        [sharedInsights40 provideInsightValue:? forKey:?];

        [CRCameraReader mergeInfo:selfCopy intoFindInfo:"mergeInfo:intoFindInfo:"];
      }

      sharedInsights41 = [v151 sharedInsights];
      if (sharedInsights41)
      {
        sharedInsights42 = [v155 sharedInsights];
        v445 = MEMORY[0x277D85DD0];
        v446 = 3221225472;
        v447 = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_9;
        v448 = &unk_278EAA7E0;
        selfCopy2 = v449;
        v449[0] = dictionary;
        v158 = [sharedInsights42 allowOverrideWithKey:? forResultFromBlock:?];
      }

      else
      {
        v159 = MEMORY[0x277CCABB0];
        sharedInsights42 = [dictionary objectForKey:?];
        v158 = [v159 numberWithBool:?];
      }

      bOOLValue5 = [v158 BOOLValue];

      if (bOOLValue5)
      {
        v161 = [CRCameraReader findObjectsEmbossed:selfCopy inImage:"findObjectsEmbossed:inImage:"];
        sharedInsights43 = [v162 sharedInsights];
        [sharedInsights43 provideInsightValue:? forKey:?];

        [CRCameraReader mergeInfo:selfCopy intoFindInfo:"mergeInfo:intoFindInfo:"];
      }

      if (sharedInsights41)
      {
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

      if (sharedInsights37)
      {
      }
    }

    sharedInsights44 = [v139 sharedInsights];
    [sharedInsights44 setContextValue:? forKey:?];

    sharedInsights45 = [v165 sharedInsights];
    [sharedInsights45 setContextValue:? forKey:?];
  }

  if (sharedInsights32)
  {
  }

  sharedInsights46 = [v120 sharedInsights];
  if (sharedInsights46)
  {
    sharedInsights47 = [v167 sharedInsights];
    v441[1] = MEMORY[0x277D85DD0];
    v441[2] = 3221225472;
    v441[3] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_10;
    v441[4] = &unk_278EAA808;
    v400 = &v442;
    v442 = dictionary;
    v444 = v403;
    v403 = &v443;
    v443 = v379;
    v170 = [sharedInsights47 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v171 = MEMORY[0x277CCABB0];
    sharedInsights47 = [dictionary objectForKey:?];
    [sharedInsights47 BOOLValue];
    v170 = [v171 numberWithBool:?];
  }

  bOOLValue6 = [v170 BOOLValue];

  if (bOOLValue6)
  {
    sharedInsights48 = [v173 sharedInsights];
    [sharedInsights48 setContextValue:? forKey:?];

    sharedInsights49 = [v175 sharedInsights];
    [sharedInsights49 setContextValue:? forKey:?];

    imageByRotating180 = [v376 imageByRotating180];
    sharedInsights50 = [v178 sharedInsights];
    if (sharedInsights50)
    {
      sharedInsights51 = [v179 sharedInsights];
      v182 = [sharedInsights51 allowOverrideWithKey:? forResultFromBlock:?];
    }

    else
    {
      v182 = [MEMORY[0x277CCABB0] numberWithBool:?];
      sharedInsights51 = v182;
    }

    bOOLValue7 = [v182 BOOLValue];
    if (sharedInsights50)
    {
    }

    if (bOOLValue7)
    {
      sharedInsights52 = [v184 sharedInsights];
      [sharedInsights52 provideInsightValue:? forKey:?];

      v186 = [CRCameraReader findObjectsEmbossed:selfCopy inImage:"findObjectsEmbossed:inImage:"];
      sharedInsights53 = [v187 sharedInsights];
      [sharedInsights53 provideInsightValue:? forKey:?];

      v189 = [v186 objectForKey:?];
      LOBYTE(sharedInsights53) = v189 == 0;

      if ((sharedInsights53 & 1) == 0)
      {
        [CRCameraReader mergeInfo:selfCopy intoFindInfo:"mergeInfo:intoFindInfo:"];
        [dictionary setValue:? forKey:?];
      }
    }

    v190 = [dictionary objectForKey:?];
    v191 = v190 == 0;

    if (v191)
    {
      sharedInsights54 = [v192 sharedInsights];
      p_isa = &selfCopy->super.super.super.isa;
      if (sharedInsights54)
      {
        sharedInsights55 = [v193 sharedInsights];
        v436 = MEMORY[0x277D85DD0];
        v437 = 3221225472;
        v438 = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_12;
        v439 = &unk_278EAA7B8;
        v440 = selfCopy;
        v441[0] = imageByRotating180;
        v197 = [sharedInsights55 allowOverrideWithKey:? forResultFromBlock:?];
        p_isa = v441;
      }

      else
      {
        v198 = objc_opt_class();
        sharedInsights55 = [imageByRotating180 ciImage];
        v197 = [v198 targetRectsForImage:?];
      }

      v199 = v197;

      sharedInsights56 = [v200 sharedInsights];
      [sharedInsights56 provideInsightValue:? forKey:?];

      if ([v199 count])
      {
        v202 = [CRCameraReader findObjectsFlat:selfCopy inImage:"findObjectsFlat:inImage:numberRects:invert:" numberRects:? invert:?];
        sharedInsights57 = [v203 sharedInsights];
        [sharedInsights57 provideInsightValue:? forKey:?];

        v205 = [v202 objectForKey:?];
        LOBYTE(sharedInsights57) = v205 == 0;

        if ((sharedInsights57 & 1) == 0)
        {
          [CRCameraReader mergeInfo:selfCopy intoFindInfo:"mergeInfo:intoFindInfo:"];
          [dictionary setValue:? forKey:?];
        }
      }

      if (sharedInsights54)
      {
      }
    }

    sharedInsights58 = [v192 sharedInsights];
    [sharedInsights58 setContextValue:? forKey:?];

    sharedInsights59 = [v207 sharedInsights];
    [sharedInsights59 setContextValue:? forKey:?];
  }

  if (sharedInsights46)
  {
  }

  v378 = [dictionary objectForKey:?];
  v387 = [dictionary objectForKey:?];
  v369 = [dictionary objectForKey:?];
  v370 = [dictionary objectForKey:?];
  v382 = [dictionary objectForKey:?];
  v209 = [dictionary objectForKey:?];
  bOOLValue8 = [v209 BOOLValue];

  [dictionary objectForKey:?];
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  obja = v433 = 0u;
  v396 = [obja countByEnumeratingWithState:? objects:? count:?];
  if (!v396)
  {
    v384 = 0;
    goto LABEL_189;
  }

  v384 = 0;
  v393 = *v433;
  do
  {
    v399 = 0;
    do
    {
      if (*v433 != v393)
      {
        objc_enumerationMutation(obja);
      }

      v401 = *(*(&v432 + 1) + 8 * v399);
      v210 = [v401 objectForKey:?];
      bOOLValue9 = [v210 BOOLValue];

      if (bOOLValue9)
      {
        v404 = [v401 objectForKey:?];
        v212 = [v401 objectForKey:?];
        intValue = [v212 intValue];

        v214 = [v401 objectForKey:?];
        if ([v214 BOOLValue])
        {

          goto LABEL_146;
        }

        v215 = [v401 objectForKey:?];
        if (v215)
        {
          v216 = [v401 objectForKey:?];
          v217 = [v216 integerValue] > intValue;

          if (!v217)
          {
LABEL_146:
            [v401 objectForKey:?];
            v404 = v214 = v404;
            goto LABEL_147;
          }
        }

        else
        {
LABEL_147:
        }

        cardholderCounts = [(CRCameraReader *)selfCopy cardholderCounts];
        v219 = [cardholderCounts objectForKey:?];
        v220 = v219 == 0;

        if (!v220)
        {
          cardholderCounts2 = [(CRCameraReader *)selfCopy cardholderCounts];
          v222 = [cardholderCounts2 objectForKey:?];
          intValue2 = [v222 intValue];

          v430 = 0u;
          v431 = 0u;
          v428 = 0u;
          v429 = 0u;
          cardholderCounts3 = [(CRCameraReader *)selfCopy cardholderCounts];
          v225 = [cardholderCounts3 countByEnumeratingWithState:? objects:? count:?];
          v226 = intValue2 + 1;
          if (v225)
          {
            v227 = *v429;
            while (2)
            {
              for (i = 0; i != v225; i = (i + 1))
              {
                if (*v429 != v227)
                {
                  objc_enumerationMutation(cardholderCounts3);
                }

                v229 = *(*(&v428 + 1) + 8 * i);
                cardholderCounts4 = [(CRCameraReader *)selfCopy cardholderCounts];
                v231 = [cardholderCounts4 objectForKey:?];
                intValue3 = [v231 intValue];

                v233 = intValue3 == 2 || v226 == 2;
                if (v233 && [v404 editDistanceFromString:?] == 1)
                {
                  if (intValue3 == 2)
                  {
                    v236 = v229;

                    v404 = v236;
                  }

                  goto LABEL_171;
                }
              }

              v225 = [cardholderCounts3 countByEnumeratingWithState:? objects:? count:?];
              if (v225)
              {
                continue;
              }

              break;
            }
          }

LABEL_171:

          cardholderCounts5 = [(CRCameraReader *)selfCopy cardholderCounts];
          v243 = [MEMORY[0x277CCABB0] numberWithInt:?];
          [cardholderCounts5 setObject:? forKey:?];
          goto LABEL_172;
        }

        v234 = [v401 objectForKey:?];
        bOOLValue10 = [v234 BOOLValue];

        if (bOOLValue10)
        {
LABEL_169:
          v240 = selfCopy;
        }

        else
        {
          v237 = [v401 objectForKey:?];
          if (!v237 || ([v401 objectForKey:?], v238 = objc_claimAutoreleasedReturnValue(), v239 = objc_msgSend(v238, "integerValue") > intValue, v238, v237, v240 = selfCopy, v239))
          {
            v241 = [v401 objectForKey:?];
            [v241 BOOLValue];

            goto LABEL_169;
          }
        }

        cardholderCounts5 = [(CRCameraReader *)v240 cardholderCounts];
        v243 = [MEMORY[0x277CCABB0] numberWithInt:?];
        [cardholderCounts5 setObject:? forKey:?];
LABEL_172:

        cardholderCounts6 = [(CRCameraReader *)selfCopy cardholderCounts];
        v245 = [cardholderCounts6 objectForKey:?];
        intValue4 = [v245 intValue];

        cardholderCounts7 = [(CRCameraReader *)selfCopy cardholderCounts];
        v248 = [MEMORY[0x277CCABB0] numberWithInt:?];
        [cardholderCounts7 setObject:? forKey:?];

        pinnedFoundInfo4 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
        v250 = [pinnedFoundInfo4 objectForKey:?];

        if (v250)
        {
          cardholderCounts8 = [(CRCameraReader *)selfCopy cardholderCounts];
          v252 = [cardholderCounts8 objectForKey:?];
          intValue5 = [v252 intValue];
        }

        else
        {
          intValue5 = 0;
        }

        if (v387 && intValue4 >= 3 && intValue4 > intValue5)
        {
          pinnedFoundInfo5 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
          v255 = [pinnedFoundInfo5 objectForKey:?];
          v256 = [v255 isEqualToString:?];

          if ((v256 & 1) == 0)
          {
            time = *time;
            [(CRCameraReader *)selfCopy setLastFieldFoundTime:?];
            v384 = 1;
          }

          pinnedFoundInfo6 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
          [pinnedFoundInfo6 setObject:? forKey:?];

          [(CRCameraReader *)selfCopy setFirstTimeFrameIndexForPinnedField:?];
          pinnedFoundInfo7 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
          v259 = [pinnedFoundInfo7 objectForKey:?];
          v260 = v259 == 0;

          if (v260)
          {
            pinnedFoundInfo8 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
            v262 = [v401 objectForKey:?];
            [pinnedFoundInfo8 setObject:? forKey:?];
          }
        }
      }

      v399 = (v399 + 1);
    }

    while (v399 != v396);
    v263 = [obja countByEnumeratingWithState:? objects:? count:?];
    v396 = v263;
  }

  while (v263);
LABEL_189:

  if (v387)
  {
    cardNumberCounts2 = [(CRCameraReader *)selfCopy cardNumberCounts];
    v265 = [cardNumberCounts2 objectForKey:?];
    intValue6 = [v265 intValue];

    v267 = [v387 stringByReplacingOccurrencesOfString:? withString:?];
    v405 = [v267 length];

    cardNumberCounts3 = [(CRCameraReader *)selfCopy cardNumberCounts];
    v402 = intValue6 + 1;
    v269 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [cardNumberCounts3 setObject:? forKey:?];

    if ((v405 & 0xFFFFFFFFFFFFFFFDLL) == 0x11)
    {
      v426 = 0u;
      v427 = 0u;
      v424 = 0u;
      v425 = 0u;
      cardNumberCounts4 = [(CRCameraReader *)selfCopy cardNumberCounts];
      allKeys = [cardNumberCounts4 allKeys];

      v272 = [allKeys countByEnumeratingWithState:? objects:? count:?];
      if (v272)
      {
        v273 = *v425;
        do
        {
          for (j = 0; j != v272; j = (j + 1))
          {
            if (*v425 != v273)
            {
              objc_enumerationMutation(allKeys);
            }

            v275 = [*(*(&v424 + 1) + 8 * j) stringByReplacingOccurrencesOfString:? withString:?];
            v276 = [v275 length];

            if (v276 <= 12)
            {
              cardNumberCounts5 = [(CRCameraReader *)selfCopy cardNumberCounts];
              v278 = [MEMORY[0x277CCABB0] numberWithInt:?];
              [cardNumberCounts5 setObject:? forKey:?];
            }
          }

          v272 = [allKeys countByEnumeratingWithState:? objects:? count:?];
        }

        while (v272);
      }
    }
  }

  else
  {
    v402 = 0;
    v405 = 0;
  }

  v279 = selfCopy;
  if (v382)
  {
    expirationDateCounts = [(CRCameraReader *)selfCopy expirationDateCounts];
    v281 = [expirationDateCounts objectForKey:?];
    intValue7 = [v281 intValue];

    v422 = 0u;
    v423 = 0u;
    v420 = 0u;
    v421 = 0u;
    expirationDateCounts2 = [(CRCameraReader *)selfCopy expirationDateCounts];
    v284 = [expirationDateCounts2 countByEnumeratingWithState:? objects:? count:?];
    v285 = intValue7 + 1;
    if (v284)
    {
      v286 = *v421;
      while (2)
      {
        for (k = 0; k != v284; k = (k + 1))
        {
          if (*v421 != v286)
          {
            objc_enumerationMutation(expirationDateCounts2);
          }

          v288 = *(*(&v420 + 1) + 8 * k);
          expirationDateCounts3 = [(CRCameraReader *)selfCopy expirationDateCounts];
          v290 = [expirationDateCounts3 objectForKey:?];
          intValue8 = [v290 intValue];

          v292 = intValue8 == 2 || v285 == 2;
          if (v292 && [v382 editDistanceFromString:?] == 1)
          {
            if (intValue8 == 2)
            {
              v294 = v288;

              v285 = 3;
              v382 = v294;
            }

            else
            {
              v285 = 3;
            }

            goto LABEL_220;
          }
        }

        v284 = [expirationDateCounts2 countByEnumeratingWithState:? objects:? count:?];
        if (v284)
        {
          continue;
        }

        break;
      }
    }

LABEL_220:

    expirationDateCounts4 = [(CRCameraReader *)selfCopy expirationDateCounts];
    v296 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [expirationDateCounts4 setObject:? forKey:?];

    v293 = v285 < 2;
    v279 = selfCopy;
  }

  else
  {
    v382 = 0;
    v293 = 1;
  }

  v297 = v402 > 1 && v405 > 0xF;
  if (!v297 && v402 < 5)
  {

    v387 = 0;
    goto LABEL_238;
  }

  pinnedFoundInfo9 = [(CRCameraReader *)v279 pinnedFoundInfo];
  v299 = [pinnedFoundInfo9 objectForKey:?];

  if (v299)
  {
    cardNumberCounts6 = [(CRCameraReader *)selfCopy cardNumberCounts];
    v301 = [cardNumberCounts6 objectForKey:?];
    intValue9 = [v301 intValue];

    v303 = [v299 isEqualToString:?];
    if (v402 <= intValue9)
    {
      v304 = 1;
    }

    else
    {
      v304 = v303;
    }

    if ((v304 & 1) == 0)
    {
      time = *time;
      [(CRCameraReader *)selfCopy setLastFieldFoundTime:?];
      pinnedFoundInfo10 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo10 setObject:? forKey:?];
      goto LABEL_236;
    }
  }

  else
  {
    time = *time;
    [(CRCameraReader *)selfCopy setLastFieldFoundTime:?];
    pinnedFoundInfo11 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    [pinnedFoundInfo11 setObject:? forKey:?];

    [(CRCameraReader *)selfCopy setFirstTimeFrameIndexForPinnedField:?];
    pinnedFoundInfo12 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    [pinnedFoundInfo12 setObject:? forKey:?];

    if (v370)
    {
      pinnedFoundInfo13 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo13 setObject:? forKey:?];
    }

    v309 = [dictionary objectForKey:?];
    [v309 BOOLValue];

    pinnedFoundInfo10 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v310 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [pinnedFoundInfo10 setObject:? forKey:?];

LABEL_236:
    v384 = 1;
  }

  if (v387 == 0 || v293)
  {
LABEL_238:

    v311 = selfCopy;
    goto LABEL_239;
  }

  pinnedFoundInfo14 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
  v336 = [pinnedFoundInfo14 objectForKey:?];
  v337 = [v336 isEqualToString:?];

  if ((v337 & 1) == 0)
  {
    time = *time;
    [(CRCameraReader *)selfCopy setLastFieldFoundTime:?];
    v384 = 1;
  }

  pinnedFoundInfo15 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
  [pinnedFoundInfo15 setObject:? forKey:?];

  [(CRCameraReader *)selfCopy setFirstTimeFrameIndexForPinnedField:?];
  pinnedFoundInfo16 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
  v340 = [pinnedFoundInfo16 objectForKey:?];
  v341 = v340 == 0;

  if (v341)
  {
    pinnedFoundInfo17 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v343 = [dictionary objectForKey:?];
    [pinnedFoundInfo17 setObject:? forKey:?];
  }

  v344 = [dictionary objectForKey:?];
  v345 = v344 == 0;

  if (!v345)
  {
    pinnedFoundInfo18 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v347 = [dictionary objectForKey:?];
    [pinnedFoundInfo18 setObject:? forKey:?];
  }

  v348 = [dictionary objectForKey:?];
  v349 = v348 == 0;

  if (!v349)
  {
    pinnedFoundInfo19 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v351 = [dictionary objectForKey:?];
    [pinnedFoundInfo19 setObject:? forKey:?];
  }

  v352 = [dictionary objectForKey:?];
  v353 = v352 == 0;

  if (!v353)
  {
    pinnedFoundInfo20 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v355 = [dictionary objectForKey:?];
    [pinnedFoundInfo20 setObject:? forKey:?];
  }

  v311 = selfCopy;
  if (!v382)
  {
LABEL_239:
    pinnedFoundInfo21 = [(CRCameraReader *)v311 pinnedFoundInfo];
    v382 = [pinnedFoundInfo21 objectForKey:?];

    v311 = selfCopy;
  }

  pinnedFoundInfo22 = [(CRCameraReader *)v311 pinnedFoundInfo];
  v314 = [pinnedFoundInfo22 objectForKey:?];

  if (v314)
  {
    pinnedFoundInfo23 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v316 = [pinnedFoundInfo23 objectForKey:?];
    v317 = NSPointFromString(v316);
    valid = isValidNameLocationForCode(v387, v317.x, v317.y);

    if ((valid & 1) == 0)
    {

      pinnedFoundInfo24 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo24 removeObjectForKey:?];

      pinnedFoundInfo25 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo25 removeObjectForKey:?];

      v314 = 0;
    }
  }

  v321 = [v375 containsObject:?];
  v322 = [v375 containsObject:?];
  v323 = selfCopy;
  if (v382)
  {
    v324 = 0;
  }

  else
  {
    v324 = v321;
  }

  if (v314)
  {
    v325 = 0;
  }

  else
  {
    v325 = v322;
  }

  if (((v324 & 1) != 0 || v325) && (v419 = *time, [&v418 lastFieldFoundTime], lhs = v419, rhs = v418, CMTimeSubtract(&time, &lhs, &rhs), CMTimeGetSeconds(&time) <= 1.0))
  {
    v333 = 0;
    v334 = v387;
    v332 = v387 == 0;
  }

  else
  {
    pinnedFoundInfo26 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v327 = [pinnedFoundInfo26 objectForKey:?];
    v328 = v327 == 0;

    if (v328)
    {
      v323 = selfCopy;
      v331 = v387;
    }

    else
    {
      pinnedFoundInfo27 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      v330 = [pinnedFoundInfo27 objectForKey:?];

      bOOLValue8 = 1;
      v331 = v330;
      v323 = selfCopy;
    }

    v332 = v331 == 0;
    v333 = 1;
    v388 = v331;
    if (v331 && bOOLValue8)
    {
      AudioServicesPlaySystemSound(0xFFFu);
      [(CRCameraReader *)v323 stopSession];
      v332 = 0;
    }

    v334 = v388;
  }

  if (v378)
  {
    v356 = MEMORY[0x277D85CD0];
    v357 = MEMORY[0x277D85CD0];
    v414[0] = MEMORY[0x277D85DD0];
    v414[1] = 3221225472;
    v414[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_13;
    v414[3] = &unk_278EAA830;
    v414[4] = v323;
    v358 = v378;
    v416 = *&time->var0;
    var3 = time->var3;
    v415 = v358;
    v417 = var3;
    cr_dispatch_async(v356, v414);

    v323 = selfCopy;
  }

  if (v384)
  {
    pinnedFoundInfo28 = [(CRCameraReader *)v323 pinnedFoundInfo];
    [(CRCameraReader *)v323 sendDidRecognizeNewObjects:?];

    v323 = selfCopy;
  }

  if (v332)
  {
    v419 = *time;
    [&v418 pointsFound];
    lhs = v419;
    rhs = v418;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) > 0.3)
    {
      sessionManager2 = [(CRCameraReader *)v323 sessionManager];
      [sessionManager2 resetFocus];

      v323 = selfCopy;
    }

    [(CRCameraReader *)v323 setFoundPoints:?];
  }

  else
  {
    v362 = MEMORY[0x277D85CD0];
    v363 = MEMORY[0x277D85CD0];
    v408[0] = MEMORY[0x277D85DD0];
    v408[1] = 3221225472;
    v408[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_14;
    v408[3] = &unk_278EAA880;
    v408[4] = v323;
    v409 = v334;
    v410 = v314;
    v411 = v382;
    v413 = v333;
    v412 = v378;
    cr_dispatch_async(v362, v408);

    v323 = selfCopy;
  }

  diagnosticHUDLayer = [(CRCameraReader *)v323 diagnosticHUDLayer];
  v365 = diagnosticHUDLayer == 0;

  if (!v365)
  {
    v366 = MEMORY[0x277D85CD0];
    v367 = MEMORY[0x277D85CD0];
    v407[0] = MEMORY[0x277D85DD0];
    v407[1] = 3221225472;
    v407[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_17;
    v407[3] = &unk_278EAA5E8;
    v407[4] = selfCopy;
    cr_dispatch_async(v366, v407);
  }

  CVPixelBufferRelease(pixelBuffer);
}

void *__74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_4(uint64_t a1)
{
  v1 = objc_opt_class();

  return [v1 targetRectsForImage:?];
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:?];
  v3 = [v1 numberWithBool:?];

  return v3;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_6(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) ciImage];
  v4 = [v2 targetRectsForImage:?];

  return v4;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    v1 = [*(a1 + 32) objectForKey:?];
  }

  v4 = [v2 numberWithBool:?];
  if ((v3 & 1) == 0)
  {
  }

  return v4;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_8(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) ciImage];
  v4 = [v2 targetRectsForImage:?];

  return v4;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:?];
  v3 = [v1 numberWithBool:?];

  return v3;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_10(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:?];
  [v2 BOOLValue];
  v3 = [v1 numberWithBool:?];

  return v3;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_12(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) ciImage];
  v4 = [v2 targetRectsForImage:?];

  return v4;
}

void __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_13(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) foundPoints];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = 0;
  do
  {
    v4 = [*(a1 + 32) foundPoints];
    v5 = [v4 objectAtIndex:?];
    v6 = NSPointFromString(v5);

    v7 = [*(a1 + 40) objectAtIndex:?];
    v8 = NSPointFromString(v7);

    v9 = sqrt((v8.x - v6.x) * (v8.x - v6.x) + (v8.y - v6.y) * (v8.y - v6.y));
  }

  while (v9 <= 20.0 && v3++ < 3);
  if (v9 <= 20.0)
  {
    v51 = *(a1 + 48);
    if (*(a1 + 32))
    {
      [&v50 pointsFound];
    }

    else
    {
      memset(&v50, 0, sizeof(v50));
    }

    lhs = v51;
    rhs = v50;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) > 3.0)
    {
      [*(a1 + 32) stopSession];
      [*(a1 + 32) sendDidEndWithErrorDomain:? code:? userInfo:?];
    }
  }

  else
  {
LABEL_11:
    [*(a1 + 32) setFoundPoints:?];
    time = *(a1 + 48);
    [*(a1 + 32) setPointsFound:?];
  }

  rect_8 = [MEMORY[0x277CBEB18] array];
  v11 = [*(a1 + 32) sessionManager];
  v12 = [v11 previewLayer];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  Width = CGRectGetWidth(v57);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  v22 = CGRectGetHeight(v58) / -10.0;
  v59.origin.x = v14;
  v59.origin.y = v16;
  v59.size.width = v18;
  v59.size.height = v20;
  v60 = CGRectInset(v59, Width / -10.0, v22);
  rect = v60.origin.x;
  y = v60.origin.y;
  v24 = v60.size.width;
  height = v60.size.height;
  v26 = *(a1 + 40);
  v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = 0;
    v29 = MEMORY[0];
    v30 = 0.0;
    v31 = 0.0;
    do
    {
      v32 = 0;
      v33 = v28 + 1;
      v47 = v28 + v27;
      do
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(v26);
        }

        v34 = *(8 * v32);
        v35 = [*(a1 + 32) sessionManager];
        NSPointFromString(v34);
        v36 = [*(a1 + 32) sessionManager];
        v37 = [v36 previewLayer];
        [v35 convertCameraPoint:? toLayer:? flipped:?];
        v39 = v38;
        v41 = v40;

        v42 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
        [rect_8 addObject:?];

        v61.origin.x = rect;
        v61.origin.y = y;
        v61.size.width = v24;
        v61.size.height = height;
        v56.x = v39;
        v56.y = v41;
        CGRectContainsPoint(v61, v56);
        v43 = 1.0 / v33;
        v31 = v31 * (1.0 - v43) + v39 * v43;
        v30 = v30 * (1.0 - v43) + v41 * v43;
        v32 = (v32 + 1);
        ++v33;
      }

      while (v27 != v32);
      v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
      v28 = v47;
    }

    while (v27);
  }

  if ([rect_8 count])
  {
    v44 = [*(a1 + 32) diagnosticHUDLayer];
    [v44 setBoxPoints:?];

    v45 = [*(a1 + 32) alignmentLayer];
    [v45 animateFoundCardRect:?];

    v46 = [*(a1 + 32) sessionManager];
    [v46 refocusOnPoint:? exposure:?];
  }
}

void __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_14(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) pauseBoxLayerHideTimer];
  v2 = [*(a1 + 32) pinnedFoundInfo];
  v3 = [v2 objectForKey:?];

  if (!v3)
  {
    v9 = [*(a1 + 32) pinnedFoundInfo];
    v65 = [v9 objectForKey:?];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

    v64 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    goto LABEL_10;
  }

  v4 = [*(a1 + 40) componentsSeparatedByString:?];
  v5 = [v4 count];
  if (v5 >= [v3 count])
  {
    v10 = [v4 count];
    if (v10 <= [v3 count])
    {
      goto LABEL_10;
    }

    [v3 count];
    v6 = [v4 subarrayWithRange:?];
  }

  else
  {
    v6 = [v4 mutableCopy];
    for (i = 0; ; ++i)
    {
      v8 = [v3 count];
      if (i >= v8 - [v4 count])
      {
        break;
      }

      [v6 addObject:?];
    }
  }

  v4 = v6;
LABEL_10:
  v11 = [*(a1 + 32) pinnedFoundInfo];
  v12 = [v11 objectForKey:?];
  NSPointFromString(v12);

  v13 = [*(a1 + 32) pinnedFoundInfo];
  v14 = [v13 objectForKey:?];
  NSPointFromString(v14);

  [*(a1 + 32) getFirstTimeFrameIndexForPinnedField:?];
  v15 = [*(a1 + 32) getFirstTimeFrameIndexForPinnedField:?];
  [*(a1 + 32) getFirstTimeFrameIndexForPinnedField:?];
  v16 = [*(a1 + 32) alignmentLayer];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_15;
  v62[3] = &unk_278EAA858;
  v63 = *(a1 + 72);
  v62[4] = *(a1 + 32);
  [v16 animateFoundCodeParts:v15 codePartPositions:v62 codeFrameIndex:? cardHolder:? cardholderPosition:? cardholderFrameIndex:? expDate:? expdatePosition:? expDateFrameIndex:? completionBlock:?];

  if (*(a1 + 72) == 1)
  {
    v17 = [*(a1 + 40) stringByReplacingOccurrencesOfString:? withString:?];
    [*(a1 + 32) setFoundCode:?];

    v18 = objc_alloc_init(CRCameraReaderOutput);
    v19 = [(CRCameraReaderOutput *)v18 objectInternal];
    [v19 setVertices:?];

    v20 = [(CRCameraReaderOutput *)v18 objectInternal];
    [v20 setType:?];

    v21 = [(CRCameraReaderOutput *)v18 objectInternal];
    [v21 setFormattedStringValue:?];

    v22 = [*(a1 + 32) foundCode];
    v23 = [(CRCameraReaderOutput *)v18 objectInternal];
    [v23 setStringValue:?];

    v61 = [MEMORY[0x277CBEB18] arrayWithObject:?];
    v24 = MEMORY[0x277CBEB98];
    v25 = [*(a1 + 32) outputObjectTypes];
    v26 = [v24 setWithArray:?];
    if ([v26 containsObject:?])
    {
      v27 = *(a1 + 48) == 0;

      if (v27)
      {
        goto LABEL_16;
      }

      v25 = objc_alloc_init(CRCameraReaderOutput);
      v28 = [(CRCameraReaderOutput *)v25 objectInternal];
      [v28 setVertices:?];

      v29 = [(CRCameraReaderOutput *)v25 objectInternal];
      [v29 setType:?];

      v30 = [(CRCameraReaderOutput *)v25 objectInternal];
      [v30 setStringValue:?];

      [v61 addObject:?];
    }

    else
    {
    }

LABEL_16:
    v31 = MEMORY[0x277CBEB98];
    v32 = [*(a1 + 32) outputObjectTypes];
    v33 = [v31 setWithArray:?];
    if ([v33 containsObject:?])
    {
      v34 = *(a1 + 56) == 0;

      if (v34)
      {
LABEL_27:
        [*(a1 + 32) sendDidEndWithInfo:?];

        goto LABEL_28;
      }

      v32 = objc_alloc_init(CRCameraReaderOutputExpirationDate);
      v35 = [(CRCameraReaderOutput *)v32 objectInternal];
      [v35 setVertices:?];

      v36 = [(CRCameraReaderOutput *)v32 objectInternal];
      [v36 setType:?];

      v37 = [(CRCameraReaderOutput *)v32 objectInternal];
      [v37 setStringValue:?];

      v38 = [*(a1 + 32) pinnedFoundInfo];
      v39 = [v38 objectForKey:?];
      LOBYTE(v36) = v39 == 0;

      if ((v36 & 1) == 0)
      {
        v40 = MEMORY[0x277CCABB0];
        v41 = [*(a1 + 32) pinnedFoundInfo];
        v42 = [v41 objectForKey:?];
        [v42 integerValue];
        v43 = [v40 numberWithInteger:?];
        v44 = [(CRCameraReaderOutput *)v32 objectInternal];
        [v44 setYearValue:?];
      }

      v45 = [*(a1 + 32) pinnedFoundInfo];
      v46 = [v45 objectForKey:?];
      v47 = v46 == 0;

      if (!v47)
      {
        v48 = MEMORY[0x277CCABB0];
        v49 = [*(a1 + 32) pinnedFoundInfo];
        v50 = [v49 objectForKey:?];
        [v50 integerValue];
        v51 = [v48 numberWithInteger:?];
        v52 = [(CRCameraReaderOutput *)v32 objectInternal];
        [v52 setMonthValue:?];
      }

      v53 = [*(a1 + 32) pinnedFoundInfo];
      v54 = [v53 objectForKey:?];
      v55 = v54 == 0;

      if (!v55)
      {
        v56 = MEMORY[0x277CCABB0];
        v57 = [*(a1 + 32) pinnedFoundInfo];
        v58 = [v57 objectForKey:?];
        [v58 integerValue];
        v59 = [v56 numberWithInteger:?];
        v60 = [(CRCameraReaderOutput *)v32 objectInternal];
        [v60 setDayValue:?];
      }

      [v61 addObject:?];
    }

    else
    {
    }

    goto LABEL_27;
  }

LABEL_28:
}

id *__74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_15(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] sendDidEndAnimation];
  }

  return result;
}

void __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_17(uint64_t a1)
{
  v8 = [*(a1 + 32) sessionManager];
  v2 = [v8 isFocusPointOfInterestSupported];

  if (v2)
  {
    v9 = [*(a1 + 32) sessionManager];
    [v9 focusPointOfInterest];

    v10 = [*(a1 + 32) sessionManager];
    [v10 cameraResolution];
    v3 = [*(a1 + 32) sessionManager];
    [v3 cameraResolution];

    v11 = [*(a1 + 32) sessionManager];
    v4 = [*(a1 + 32) sessionManager];
    v5 = [v4 previewLayer];
    [v11 convertCameraPoint:? toLayer:?];
  }

  v12 = [*(a1 + 32) diagnosticHUDLayer];
  v6 = [*(a1 + 32) sessionManager];
  [v6 isAdjustingFocus];
  v7 = [*(a1 + 32) sessionManager];
  [v7 isFocusPointOfInterestSupported];
  [v12 setAdjustingFocus:? pointOfInterestSupported:? focusPoint:?];
}

- (id)findObjectsEmbossed:(id)embossed inImage:(id)image
{
  embossedCopy = embossed;
  imageCopy = image;
  nameCutRects = [(CRCameraReader *)self nameCutRects];

  if (!nameCutRects)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(CRCameraReader *)self setNameCutRects:?];
  }

  dateCutRects = [(CRCameraReader *)self dateCutRects];

  if (!dateCutRects)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    [(CRCameraReader *)self setDateCutRects:?];
  }

  dateCutRects2 = [(CRCameraReader *)self dateCutRects];
  v13 = [dateCutRects2 count];

  if (!v13)
  {
    v14 = 8;
    y = 0.670120239;
    x = 0.0475194012;
    height = 0.0707215541;
    width = 0.849705277;
    do
    {
      dateCutRects3 = [(CRCameraReader *)self dateCutRects];
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v20 = NSStringFromRect(v46);
      [dateCutRects3 addObject:?];

      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v48 = CGRectOffset(v47, 0.0, 0.0353607771);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      --v14;
    }

    while (v14);
  }

  nameCutRects2 = [(CRCameraReader *)self nameCutRects];
  v22 = [nameCutRects2 count];

  if (!v22)
  {
    v23 = 8;
    v24 = 0.929278433;
    v25 = 0.0475194012;
    v26 = 0.0707215541;
    v27 = 0.849705277;
    do
    {
      nameCutRects3 = [(CRCameraReader *)self nameCutRects];
      v49.origin.x = v25;
      v49.origin.y = v24;
      v49.size.width = v27;
      v49.size.height = v26;
      v29 = NSStringFromRect(v49);
      [nameCutRects3 addObject:?];

      v50.origin.x = v25;
      v50.origin.y = v24;
      v50.size.width = v27;
      v50.size.height = v26;
      v51 = CGRectOffset(v50, 0.0, -0.0353607771);
      v25 = v51.origin.x;
      v24 = v51.origin.y;
      v27 = v51.size.width;
      v26 = v51.size.height;
      --v23;
    }

    while (v23);
  }

  v30 = MEMORY[0x277CBEB18];
  v52.origin.x = 0.0209955056;
  v52.origin.y = 0.546364477;
  v52.size.width = 0.960868335;
  v52.size.height = 0.108566147;
  v31 = NSStringFromRect(v52);
  v32 = [v30 arrayWithObject:?];

  sharedInsights = [v33 sharedInsights];
  [sharedInsights provideInsightValue:? forKey:?];

  sharedInsights2 = [v35 sharedInsights];
  nameCutRects4 = [(CRCameraReader *)self nameCutRects];
  [sharedInsights2 provideInsightValue:? forKey:?];

  sharedInsights3 = [v38 sharedInsights];
  dateCutRects4 = [(CRCameraReader *)self dateCutRects];
  [sharedInsights3 provideInsightValue:? forKey:?];

  nameCutRects5 = [(CRCameraReader *)self nameCutRects];
  dateCutRects5 = [(CRCameraReader *)self dateCutRects];
  v43 = [CRCameraReader findCCObjectsEmbossed:"findCCObjectsEmbossed:inImage:numberRects:nameRects:dateRects:" inImage:? numberRects:? nameRects:? dateRects:?];

  return v43;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage outputObjectTypes:(id)types
{
  v5 = *&image->width;
  v8 = *&image->data;
  v6 = [CRCameraReader findCodeInImage:"findCodeInImage:maxStage:roi:outputObjectTypes:" maxStage:v8 roi:v5 outputObjectTypes:?];

  return v6;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage
{
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v6 = [CRCameraReader findCodeInImage:*&image->data maxStage:image->width roi:image->rowBytes outputObjectTypes:?];

  return v6;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi
{
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v7 = [CRCameraReader findCodeInImage:*&image->data maxStage:image->width roi:image->rowBytes outputObjectTypes:?];

  return v7;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi outputObjectTypes:(id)types
{
  y = roi.origin.y;
  x = roi.origin.x;
  v16[8] = *MEMORY[0x277D85DE8];
  types;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB18] array];
  objc_claimAutoreleasedReturnValue();
  [dictionary setObject:? forKey:?];
  CFAbsoluteTimeGetCurrent();
  v9 = [MEMORY[0x277CBEB98] setWithArray:?];
  v10 = [v9 containsObject:?];

  v11 = *&image->width;
  *v14 = *&image->data;
  v15 = v11;
  _findCodeRectInImageWithModel(v14, v16, 95158272, v10, x, y);
}

+ (id)textFeatureWithVNTextObservation:(id)observation
{
  observationCopy = observation;
  [observationCopy boundingBox];
  v5 = v4;
  [observationCopy boundingBox];
  v7 = v6;
  [observationCopy boundingBox];
  v9 = v8;
  [observationCopy boundingBox];
  v11 = v10;
  [observationCopy boundingBox];
  v31.origin.y = 1.0 - v7 - v9;
  v31.origin.x = v5;
  v31.size.width = v11;
  v12 = NSStringFromRect(v31);
  array = [MEMORY[0x277CBEB18] array];
  characterBoxes = [observationCopy characterBoxes];
  v15 = [characterBoxes countByEnumeratingWithState:? objects:? count:?];
  if (v15)
  {
    v16 = MEMORY[0];
    do
    {
      for (i = 0; i != v15; i = (i + 1))
      {
        if (MEMORY[0] != v16)
        {
          objc_enumerationMutation(characterBoxes);
        }

        v18 = *(8 * i);
        [v18 boundingBox];
        v20 = v19;
        [v18 boundingBox];
        v22 = v21;
        [v18 boundingBox];
        v24 = v23;
        [v18 boundingBox];
        v26 = v25;
        [v18 boundingBox];
        v32.origin.y = 1.0 - v22 - v24;
        v32.origin.x = v20;
        v32.size.width = v26;
        v27 = NSStringFromRect(v32);
        [array addObject:?];
      }

      v15 = [characterBoxes countByEnumeratingWithState:? objects:? count:?];
    }

    while (v15);
  }

  v28 = [objc_alloc(MEMORY[0x277D700A8]) initWithFeatureRect:? subFeatureRects:?];

  return v28;
}

+ (id)targetRectsForImage:(id)image
{
  imageCopy = image;
  array = [MEMORY[0x277CBEB18] array];
  v154 = imageCopy;
  v155 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCIImage:? options:?];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults BOOLForKey:?];

  v156 = objc_alloc_init(MEMORY[0x277CE2CB8]);
  [v156 setAlgorithm:?];
  [v156 setReportCharacterBoxes:?];
  [v156 setDetectDiacritics:?];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [v155 performRequests:? error:?];
  v153 = 0;

  results = [v156 results];
  if (results && [results count])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v5 = results;
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [objc_opt_class() textFeatureWithVNTextObservation:?];
          subFeatures = [v9 subFeatures];
          v4 = [subFeatures count];

          if (v4 - 4 <= 0x18)
          {
            if ([array count] <= 0x13)
            {
              [v9 bounds];
              v12 = v11;
              v14 = v13;
              v16 = v15;
              v18 = v17;
              [v9 bounds];
              v20 = v19;
              [v9 bounds];
              v22 = v21 * -0.100000001;
              v188.origin.x = v12;
              v188.origin.y = v14;
              v188.size.width = v16;
              v188.size.height = v18;
              v189 = CGRectInset(v188, v20 * -0.0500000007, v22);
              x = v189.origin.x;
              y = v189.origin.y;
              width = v189.size.width;
              height = v189.size.height;
              [v9 setShouldExpandToFullWidth:?];
              v27 = MEMORY[0x277CBEAC0];
              v190.origin.x = x;
              v190.origin.y = y;
              v190.size.width = width;
              v190.size.height = height;
              v28 = NSStringFromRect(v190);
              v29 = [v27 dictionaryWithObjectsAndKeys:{@"paddedRect", v9, @"textFeatures", 0}];
              [array addObject:?];
            }

            if (v4 == 4)
            {
              [array2 addObject:?];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    if ([array2 count] >= 4)
    {
      [array2 sortUsingComparator:?];
      v151 = [array2 subarrayWithRange:?];
      v30 = 0;
      v31 = 3.4028e38;
      while ([array2 count] - 3 > v30)
      {
        v173 = [array2 objectAtIndexedSubscript:?];
        [v173 bounds];
        v32 = CGRectGetWidth(v191);
        v172 = [array2 objectAtIndexedSubscript:?];
        [v172 bounds];
        v33 = CGRectGetHeight(v192);
        v34 = v30 + 1;
        v171 = [array2 objectAtIndexedSubscript:?];
        [v171 bounds];
        v35 = CGRectGetWidth(v193);
        v170 = [array2 objectAtIndexedSubscript:?];
        [v170 bounds];
        v36 = v32 * v33 - v35 * CGRectGetHeight(v194);
        [array2 objectAtIndexedSubscript:?];
        if (v36 < 0.0)
          v164 = {;
          [v164 bounds];
          v41 = CGRectGetWidth(v199);
          v160 = [array2 objectAtIndexedSubscript:?];
          [v160 bounds];
          v42 = CGRectGetHeight(v200);
          v159 = [array2 objectAtIndexedSubscript:?];
          [v159 bounds];
          v43 = CGRectGetWidth(v201);
          v158 = [array2 objectAtIndexedSubscript:?];
          [v158 bounds];
          v40 = -(v41 * v42 - v43 * CGRectGetHeight(v202));
        }

        else
          v163 = {;
          [v163 bounds];
          v37 = CGRectGetWidth(v195);
          v162 = [array2 objectAtIndexedSubscript:?];
          [v162 bounds];
          v38 = CGRectGetHeight(v196);
          v161 = [array2 objectAtIndexedSubscript:?];
          [v161 bounds];
          v39 = CGRectGetWidth(v197);
          v4 = [array2 objectAtIndexedSubscript:?];
          [v4 bounds];
          v40 = v37 * v38 - v39 * CGRectGetHeight(v198);
        }

        v182 = v4;
        v44 = [array2 objectAtIndexedSubscript:?];
        [v44 bounds];
        v45 = CGRectGetWidth(v203);
        v169 = [array2 objectAtIndexedSubscript:?];
        [v169 bounds];
        v46 = CGRectGetHeight(v204);
        v168 = [array2 objectAtIndexedSubscript:?];
        [v168 bounds];
        v47 = CGRectGetWidth(v205);
        v167 = [array2 objectAtIndexedSubscript:?];
        [v167 bounds];
        if (v45 * v46 - v47 * CGRectGetHeight(v206) < 0.0)
        {
          v179 = [array2 objectAtIndexedSubscript:?];
          [v179 bounds];
          v53 = CGRectGetWidth(v211);
          aRect = [array2 objectAtIndexedSubscript:?];
          [aRect bounds];
          v54 = CGRectGetHeight(v212);
          v174 = [array2 objectAtIndexedSubscript:?];
          [v174 bounds];
          v55 = CGRectGetWidth(v213);
          v51 = [array2 objectAtIndexedSubscript:?];
          [v51 bounds];
          v52 = -(v53 * v54 - v55 * CGRectGetHeight(v214));
        }

        else
        {
          v179 = [array2 objectAtIndexedSubscript:?];
          [v179 bounds];
          v48 = CGRectGetWidth(v207);
          aRect = [array2 objectAtIndexedSubscript:?];
          [aRect bounds];
          v49 = CGRectGetHeight(v208);
          v174 = [array2 objectAtIndexedSubscript:?];
          [v174 bounds];
          v50 = CGRectGetWidth(v209);
          v51 = [array2 objectAtIndexedSubscript:?];
          [v51 bounds];
          v52 = v48 * v49 - v50 * CGRectGetHeight(v210);
        }

        v166 = [array2 objectAtIndexedSubscript:?];
        [v166 bounds];
        v56 = CGRectGetWidth(v215);
        v165 = [array2 objectAtIndexedSubscript:?];
        [v165 bounds];
        v57 = CGRectGetHeight(v216);
        v58 = [array2 objectAtIndexedSubscript:?];
        [v58 bounds];
        v59 = CGRectGetWidth(v217);
        v60 = [array2 objectAtIndexedSubscript:?];
        [v60 bounds];
        v61 = v40 + v52;
        if (v56 * v57 - v59 * CGRectGetHeight(v218) >= 0.0)
        {
          v62 = [array2 objectAtIndexedSubscript:?];
          [v62 bounds];
          v71 = CGRectGetWidth(v223);
          v64 = [array2 objectAtIndexedSubscript:?];
          [v64 bounds];
          v72 = CGRectGetHeight(v224);
          v66 = [array2 objectAtIndexedSubscript:?];
          [v66 bounds];
          v73 = CGRectGetWidth(v225);
          v68 = [array2 objectAtIndexedSubscript:?];
          [v68 bounds];
          v69 = v44;
          v70 = v61 + v71 * v72 - v73 * CGRectGetHeight(v226);
        }

        else
        {
          v62 = [array2 objectAtIndexedSubscript:?];
          [v62 bounds];
          v63 = CGRectGetWidth(v219);
          v64 = [array2 objectAtIndexedSubscript:?];
          [v64 bounds];
          v65 = CGRectGetHeight(v220);
          v66 = [array2 objectAtIndexedSubscript:?];
          [v66 bounds];
          v67 = CGRectGetWidth(v221);
          v68 = [array2 objectAtIndexedSubscript:?];
          [v68 bounds];
          v69 = v44;
          v70 = v61 - (v63 * v65 - v67 * CGRectGetHeight(v222));
        }

        v30 = v34;
        v74 = v182;
        v76 = v161;
        v75 = v162;
        v77 = v163;
        if (v36 < 0.0)
        {
          v74 = v158;
          v76 = v159;
          v75 = v160;
          v77 = v164;
        }

        v78 = v70;
        v4 = v182;
        if (v31 > v78)
        {
          v79 = [array2 subarrayWithRange:?];

          v151 = v79;
          v31 = v78;
          v4 = v182;
        }
      }

      v80 = [v151 sortedArrayUsingComparator:?];

      v81 = [v80 objectAtIndexedSubscript:?];
      [v81 bounds];
      v83 = v82;
      v85 = v84;
      v86 = [v80 objectAtIndexedSubscript:?];
      v180 = v85;
      v183 = v83;
      [v86 bounds];
      v175 = v88;
      aRectb = v87;

      v89 = [v80 objectAtIndexedSubscript:?];
      [v89 bounds];
      v91 = v90;
      v93 = v92;
      v94 = [v80 objectAtIndexedSubscript:?];
      [v94 bounds];
      v96 = v95;
      v98 = v97;

      v99 = [v80 objectAtIndexedSubscript:?];
      [v99 bounds];
      v101 = v100;
      v103 = v102;
      v104 = [v80 objectAtIndexedSubscript:?];
      [v104 bounds];
      v106 = v105;
      v108 = v107;

      v109 = (v180 - v175) * (v180 - v175) + (v183 - aRectb) * (v183 - aRectb);
      v110 = sqrtf(v109);
      v111 = (v93 - v98) * (v93 - v98) + (v91 - v96) * (v91 - v96);
      v112 = sqrtf(v111);
      if (vabds_f32(v110, v112) < 0.01)
      {
        v113 = (v103 - v108) * (v103 - v108) + (v101 - v106) * (v101 - v106);
        if (vabds_f32(v112, sqrtf(v113)) < 0.01)
        {
          v114 = [objc_alloc(MEMORY[0x277D700B0]) initWithOrderedFeatures:?];
          [v114 bounds];
          v116 = v115;
          v118 = v117;
          v120 = v119;
          v122 = v121;
          [v114 bounds];
          v124 = v123;
          [v114 bounds];
          v126 = v125 * -0.100000001;
          v227.origin.x = v116;
          v227.origin.y = v118;
          v227.size.width = v120;
          v227.size.height = v122;
          v228 = CGRectInset(v227, v124 * -0.0500000007, v126);
          v181 = v228.origin.y;
          v184 = v228.origin.x;
          aRecta = v228.size.width;
          v127 = v228.size.height;
          v128 = MEMORY[0x277CBEB18];
          [v80 count];
          v129 = [v128 arrayWithCapacity:?];
          v130 = v80;
          v131 = [v130 countByEnumeratingWithState:? objects:? count:?];
          if (v131)
          {
            v132 = MEMORY[0];
            do
            {
              for (j = 0; j != v131; j = (j + 1))
              {
                if (MEMORY[0] != v132)
                {
                  objc_enumerationMutation(v130);
                }

                [*(8 * j) bounds];
                v135 = v134;
                v137 = v136;
                v139 = v138;
                v141 = v140;
                [v114 bounds];
                v143 = v142;
                [v114 bounds];
                v145 = v144 * -0.100000001;
                v229.origin.x = v135;
                v229.origin.y = v137;
                v229.size.width = v139;
                v229.size.height = v141;
                v230 = CGRectInset(v229, v143 * -0.0500000007, v145);
                v146 = NSStringFromRect(v230);
                [v129 addObject:?];
              }

              v131 = [v130 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v131);
          }

          v147 = MEMORY[0x277CBEAC0];
          v231.origin.y = v181;
          v231.origin.x = v184;
          v231.size.width = aRecta;
          v231.size.height = v127;
          v148 = NSStringFromRect(v231);
          v149 = [v147 dictionaryWithObjectsAndKeys:{@"paddedRect", v129, @"paddedRects", v114, @"textFeatures", 0}];
          [array addObject:?];
        }
      }
    }
  }

  return array;
}

uint64_t __38__CRCameraReader_targetRectsForImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 bounds];
  Width = CGRectGetWidth(v11);
  [v4 bounds];
  Height = CGRectGetHeight(v12);
  [v5 bounds];
  v8 = CGRectGetWidth(v13);
  [v5 bounds];
  if (Width * Height < v8 * CGRectGetHeight(v14))
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __38__CRCameraReader_targetRectsForImage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 bounds];
  v6 = v5;
  [v4 bounds];
  if (v6 >= v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)findCCObjectEmbossed:(id)embossed inImage:(id)image forRect:(id)rect
{
  embossedCopy = embossed;
  imageCopy = image;
  v29 = NSRectFromString(rect);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  height = [imageCopy height];
  width = [imageCopy width];
  height2 = [imageCopy height];
  v17 = 28.0 / (height * height);
  v18 = v17;
  v30.size.width = v18 * width;
  v30.size.height = v18 * height2;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  CGRectIntegral(v30);
  v19 = [imageCopy imageByScalingToWidth:? height:?];
  width2 = [v19 width];
  width3 = [v19 width];
  height3 = [v19 height];
  height4 = [v19 height];
  v31.origin.x = x * width2;
  v31.size.width = width * width3;
  v31.origin.y = y * height3;
  v31.size.height = height * height4;
  CGRectIntegral(v31);
  v24 = [v19 imageByCroppingRectangle:?];
  if ([embossedCopy isEqualToString:?])
  {
    v25 = [(CRCameraReader *)self findCCNameInImageEmbossed:?];
LABEL_5:
    v26 = v25;
    goto LABEL_7;
  }

  if ([embossedCopy isEqualToString:?])
  {
    v25 = [(CRCameraReader *)self findCCExpDateInImageEmbossed:?];
    goto LABEL_5;
  }

  v26 = 0;
LABEL_7:

  return v26;
}

- (id)findObjectsFlat:(id)flat inImage:(id)image numberRects:(id)rects invert:(BOOL)invert
{
  flatCopy = flat;
  imageCopy = image;
  rectsCopy = rects;
  date = [MEMORY[0x277CBEAA8] date];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults objectForKey:?];
  [v10 BOOLValue];

  [imageCopy height];
  [imageCopy width];
  v105 = [MEMORY[0x277CBEB98] setWithArray:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:? forKey:?];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [dictionary setObject:? forKey:?];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [dictionary setObject:? forKey:?];

  v114 = [v105 containsObject:?];
  v110 = [v105 containsObject:?];
  array = [MEMORY[0x277CBEB18] array];
  sharedInsights = [off_278EAA000 sharedInsights];
  takeContextSnapshot = [sharedInsights takeContextSnapshot];

  v102 = takeContextSnapshot;
  v101 = imageCopy;
  v15 = array;
  v126 = v15;
  [rectsCopy enumerateObjectsWithOptions:? usingBlock:?];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  sharedInsights2 = [off_278EAA000 sharedInsights];
  if (sharedInsights2)
  {
    sharedInsights3 = [off_278EAA000 sharedInsights];
    v18 = [sharedInsights3 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights3 = v18;
  }

  if ([v18 BOOLValue])
  {
    array4 = [MEMORY[0x277CBEB18] array];
    if (!sharedInsights2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  array4 = 0;
  if (sharedInsights2)
  {
LABEL_8:
  }

LABEL_9:

  obj = v15;
  v116 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (!v116)
  {
    goto LABEL_71;
  }

  v115 = MEMORY[0];
  do
  {
    for (i = 0; i != v116; i = (i + 1))
    {
      if (MEMORY[0] != v115)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(8 * i);
      v20 = [v19 objectForKey:?];
      v123 = [v20 mutableCopy];

      v21 = [v19 objectForKey:?];
      v121 = [v21 mutableCopy];

      sharedInsights4 = [off_278EAA000 sharedInsights];
      if (sharedInsights4)
      {
        sharedInsights5 = [off_278EAA000 sharedInsights];
        v23 = [sharedInsights5 allowOverrideWithKey:? forResultFromBlock:?];
        v117 = v23;
      }

      else
      {
        v23 = [MEMORY[0x277CCABB0] numberWithBool:?];
        v119 = v23;
      }

      bOOLValue = [v23 BOOLValue];
      v25 = v119;
      if (sharedInsights4)
      {

        v25 = sharedInsights5;
      }

      if (bOOLValue)
      {
        v26 = [v19 objectForKey:?];
        v27 = [v19 objectForKey:?];

        v28 = v27;
        v29 = [v28 countByEnumeratingWithState:? objects:? count:?];
        if (v29)
        {
          v30 = MEMORY[0];
          do
          {
            for (j = 0; j != v29; j = (j + 1))
            {
              if (MEMORY[0] != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [*(8 * j) mutableCopy];
              v33 = [v32 objectForKey:?];
              v34 = v33 == 0;

              if (!v34)
              {
                v35 = [v19 objectForKey:?];
                [v32 setObject:? forKey:?];

                v36 = [v19 objectForKey:?];
                [v32 setObject:? forKey:?];

                v37 = [v19 objectForKey:?];
                if (v37)
                {
                  [v32 setObject:? forKey:?];
                }

                [array4 addObject:?];
              }
            }

            v29 = [v28 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v29);
        }
      }

      v38 = [v19 objectForKey:?];
      v39 = v38 == 0;

      if (!v39)
      {
        v40 = [v19 objectForKey:?];
        [dictionary setObject:? forKey:?];

        v41 = [v19 objectForKey:?];
        [dictionary setObject:? forKey:?];

        v42 = [v19 objectForKey:?];
        [dictionary setObject:? forKey:?];

        v43 = [v19 objectForKey:?];
        if (v43)
        {
          [dictionary setObject:? forKey:?];
        }

        goto LABEL_35;
      }

      if (v121)
      {
        v44 = v110;
      }

      else
      {
        v44 = 0;
      }

      if (v44 == 1)
      {
        v45 = [v19 objectForKey:?];
        [v121 setObject:? forKey:?];

        v46 = [v19 objectForKey:?];
        [v121 setObject:? forKey:?];

        [array3 addObject:?];
        v47 = [v121 objectForKey:?];
        v48 = v47 == 0;

        if (!v48)
        {
          v49 = [v121 objectForKey:?];
          [dictionary setObject:? forKey:?];

          sharedInsights6 = [off_278EAA000 sharedInsights];
          [sharedInsights6 provideInsightValue:? forKey:?];

          v51 = [v121 objectForKey:?];
          v52 = v51 == 0;

          if (!v52)
          {
            v53 = [v121 objectForKey:?];
            [dictionary setObject:? forKey:?];
          }

          v54 = [v121 objectForKey:?];
          v55 = v54 == 0;

          if (!v55)
          {
            v56 = [v121 objectForKey:?];
            [dictionary setObject:? forKey:?];
          }

          v57 = [v121 objectForKey:?];
          v58 = v57 == 0;

          if (!v58)
          {
            v59 = [v121 objectForKey:?];
            [dictionary setObject:? forKey:?];
          }

          v60 = [v121 objectForKey:?];
          v61 = v60 == 0;

          if (!v61)
          {
            v43 = [v121 objectForKey:?];
            [dictionary setObject:? forKey:?];
LABEL_35:
          }
        }
      }

      if (v123)
      {
        v62 = v114;
      }

      else
      {
        v62 = 0;
      }

      if (v62 == 1)
      {
        v63 = [v123 objectForKey:?];
        v64 = MEMORY[0x277CCABB0];
        isValidNameString(v63);
        v65 = [v64 numberWithBool:?];
        [v123 setObject:? forKey:?];

        v66 = MEMORY[0x277CCABB0];
        isNonNameString(v63);
        v67 = [v66 numberWithBool:?];
        [v123 setObject:? forKey:?];

        v68 = [v19 objectForKey:?];
        [v123 setObject:? forKey:?];

        v69 = [v19 objectForKey:?];
        [v123 setObject:? forKey:?];

        sharedInsights7 = [off_278EAA000 sharedInsights];
        if (sharedInsights7)
        {
          sharedInsights8 = [off_278EAA000 sharedInsights];
          v125 = v123;
          v72 = [sharedInsights8 allowOverrideWithKey:? forResultFromBlock:?];
          v113 = v72;
        }

        else
        {
          v73 = MEMORY[0x277CCABB0];
          sharedInsights8 = [v123 objectForKey:?];
          [sharedInsights8 BOOLValue];
          v72 = [v73 numberWithBool:?];
          v112 = v72;
        }

        bOOLValue2 = [v72 BOOLValue];
        v75 = v112;
        if (sharedInsights7)
        {
          v75 = v113;
        }

        if (bOOLValue2)
        {
          [array2 addObject:?];
        }

        if (sharedInsights7)
        {
        }

        v76 = [v123 objectForKey:?];
        v77 = v76 == 0;

        if (!v77)
        {
          v78 = [v123 objectForKey:?];
          [v123 setObject:? forKey:?];

          v79 = [v123 objectForKey:?];
          [dictionary setObject:? forKey:?];

          v80 = [v19 objectForKey:?];
          [dictionary setObject:? forKey:?];

          v81 = [v19 objectForKey:?];
          [dictionary setObject:? forKey:?];
        }
      }

      v82 = [dictionary objectForKey:?];
      v83 = v82 == 0;

      if (v83)
      {
        v84 = [v123 objectForKey:?];
        v85 = [v123 objectForKey:?];
        bOOLValue3 = [v85 BOOLValue];

        if (bOOLValue3)
        {
          [dictionary setObject:? forKey:?];
          sharedInsights9 = [off_278EAA000 sharedInsights];
          [sharedInsights9 provideInsightValue:? forKey:?];
        }
      }
    }

    v116 = [obj countByEnumeratingWithState:? objects:? count:?];
  }

  while (v116);
LABEL_71:

  v88 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceNow];
  v89 = [v88 numberWithDouble:?];
  [dictionary setObject:? forKey:?];

  sharedInsights10 = [off_278EAA000 sharedInsights];
  v91 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceNow];
  v92 = [v91 numberWithDouble:?];
  [sharedInsights10 provideInsightValue:? forKey:?];

  [dictionary setObject:? forKey:?];
  [dictionary setObject:? forKey:?];
  sharedInsights11 = [off_278EAA000 sharedInsights];
  if (sharedInsights11)
  {
    sharedInsights12 = [off_278EAA000 sharedInsights];
    v95 = [sharedInsights12 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v95 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights12 = v95;
  }

  bOOLValue4 = [v95 BOOLValue];
  if (sharedInsights11)
  {
  }

  if (bOOLValue4)
  {
    [dictionary setObject:? forKey:?];
  }

  sharedInsights13 = [off_278EAA000 sharedInsights];
  [sharedInsights13 provideInsightValue:? forKey:?];

  sharedInsights14 = [off_278EAA000 sharedInsights];
  [sharedInsights14 provideInsightValue:? forKey:?];

  sharedInsights15 = [off_278EAA000 sharedInsights];
  [sharedInsights15 provideInsightValue:? forKey:?];

  return dictionary;
}

void __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = [off_278EAA000 sharedInsights];
  [v3 attachContextCopyToCurrentThread:?];

  v48 = [v49 objectForKey:?];
  v4 = [v49 objectForKey:?];
  v56 = NSRectFromString(v48);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  if (*(a1 + 64))
  {
    v9 = 85.685;
  }

  else
  {
    v9 = 54.05;
  }

  if (*(a1 + 64))
  {
    v10 = 54.05;
  }

  else
  {
    v10 = 85.685;
  }

  v11 = [*(a1 + 40) findCCResultsInImageFlat:? usingTextFeatures:? invert:?];
  v47 = width;
  v12 = [v11 mutableCopy];
  v13 = (1.0 - y - height) * v9;
  v14 = height * v9;
  v15 = x * v10;

  if (*(a1 + 65))
  {
    v16 = 54.05 - v13 - v14;
  }

  else
  {
    v16 = v13;
  }

  v51.x = v15;
  v51.y = v16;
  v17 = NSStringFromPoint(v51);
  [v12 setObject:? forKey:?];

  v57.origin.x = v15;
  v57.origin.y = v13;
  v57.size.width = v47 * v10;
  v57.size.height = v14;
  v18 = NSStringFromRect(v57);
  [v12 setObject:? forKey:?];

  v19 = [v12 objectForKey:?];
  v20 = [v19 objectForKey:?];
  [v20 floatValue];
  v22 = v21;

  v23 = [v12 objectForKey:?];
  v24 = [v23 objectForKey:?];
  [v24 floatValue];
  v26 = v25;

  v52.x = v22 * 85.685;
  v52.y = v16;
  v27 = NSStringFromPoint(v52);
  [v12 setObject:? forKey:?];

  v53.x = v26 * 85.685;
  v53.y = v16;
  v28 = NSStringFromPoint(v53);
  [v12 setObject:? forKey:?];

  v54.x = v15;
  v54.y = v16;
  v29 = NSStringFromPoint(v54);
  [v12 setObject:? forKey:?];

  v30 = [v49 objectForKey:?];
  v31 = v30;
  if (v30)
  {
    v32 = MEMORY[0x277CBEB18];
    [v30 count];
    v33 = [v32 arrayWithCapacity:?];
    v34 = [v12 objectForKey:?];
    for (i = 0; i < [v31 count] && i < objc_msgSend(v34, "count"); ++i)
    {
      v36 = [v31 objectAtIndex:?];
      v58 = NSRectFromString(v36);
      v37 = v58.origin.x;
      v38 = v58.origin.y;
      v39 = v58.size.height;

      if (*(a1 + 65))
      {
        v40 = 54.05 - (1.0 - v38 - v39) * 54.05 - v39 * 54.05;
      }

      else
      {
        v40 = (1.0 - v38 - v39) * 54.05;
      }

      v41 = [v34 objectAtIndex:?];
      v42 = [v41 objectForKey:?];
      [v42 floatValue];
      v44 = v43;

      v55.x = v37 * 85.685 + v44 * 85.685;
      v55.y = v40;
      v45 = NSStringFromPoint(v55);
      [v33 addObject:?];
    }

    [v12 setObject:? forKey:?];
  }

  v46 = *(a1 + 56);
  objc_sync_enter(v46);
  [*(a1 + 56) addObject:?];
  objc_sync_exit(v46);
}

id __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:?];
  [v2 BOOLValue];
  v3 = [v1 numberWithBool:?];

  return v3;
}

- (id)findCCObjectsEmbossed:(id)embossed inImage:(id)image numberRects:(id)rects nameRects:(id)nameRects dateRects:(id)dateRects
{
  embossedCopy = embossed;
  imageCopy = image;
  rectsCopy = rects;
  nameRectsCopy = nameRects;
  dateRectsCopy = dateRects;
  clock();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [standardUserDefaults objectForKey:?];
  bOOLValue = [v13 BOOLValue];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [standardUserDefaults2 objectForKey:?];
  LODWORD(v108) = [v15 BOOLValue];

  height = [imageCopy height];
  width = [imageCopy width];
  v115 = [MEMORY[0x277CBEB98] setWithArray:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v110 = [v115 containsObject:?];
  HIDWORD(v108) = [v115 containsObject:?];
  v163.origin.x = *MEMORY[0x277CBF348];
  v163.origin.y = *(MEMORY[0x277CBF348] + 8);
  v163.size.width = 428.425;
  v163.size.height = 270.25;
  v164 = CGRectIntegral(v163);
  height = v164.size.height;
  y = v164.origin.y;
  if (height <= width)
  {
    width = v164.size.height;
    height = v164.size.width;
    x = v164.origin.y;
    y = v164.origin.x;
  }

  else
  {
    width = v164.size.width;
    x = v164.origin.x;
  }

  clock();
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  obj = rectsCopy;
  v18 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v18)
  {
    v152 = 0;
    v121 = MEMORY[0];
    v19 = 54.05;
    if (height <= width)
    {
      v20 = 54.05;
    }

    else
    {
      v20 = 85.685;
    }

    if (height <= width)
    {
      v19 = 85.685;
    }

    v119 = v19;
    v120 = v20;
    while (2)
    {
      v150 = 0;
      v122 = v18;
      do
      {
        if (MEMORY[0] != v121)
        {
          objc_enumerationMutation(obj);
        }

        v131 = *(8 * v150);
        v165 = NSRectFromString(v131);
        v148 = v165.origin.x;
        v21 = v165.origin.y;
        v22 = v165.size.width;
        v23 = v165.size.height;
        *&v165.origin.x = 28.0 / (width * v165.size.height);
        v165.origin.x = *&v165.origin.x;
        v165.size.width = height * v165.origin.x;
        v165.size.height = width * v165.origin.x;
        v165.origin.x = y;
        v165.origin.y = x;
        v166 = CGRectIntegral(v165);
        v24 = v166.origin.x;
        v25 = v166.origin.y;
        v26 = v166.size.width;
        v27 = v166.size.height;
        v166.origin.x = *MEMORY[0x277CBF348];
        v166.origin.y = *(MEMORY[0x277CBF348] + 8);
        v166.size.height = 405.375;
        v166.size.width = 642.6375;
        CGRectIntegral(v166);
        v138 = v21 + 0.035;
        v135 = v21 + 0.035 + 0.01;
        group = v120 * (1.0 - v21 - v23);
        v129 = v120 * v23;
        if (height > width)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (height > width)
        {
          v29 = v27;
        }

        else
        {
          v29 = v26;
        }

        if (height > width)
        {
          v30 = v24;
        }

        else
        {
          v30 = v25;
        }

        v133 = v30;
        if (height <= width)
        {
          v25 = v24;
        }

        v139 = sharedInsights2;
        width = v28;
        height = v29;
        v31 = [imageCopy imageByScalingToWidth:v108 height:?];
        width2 = [v31 width];
        v32 = v23 * 0.65;
        width3 = [v31 width];
        height2 = [v31 height];
        height3 = [v31 height];
        width4 = [v31 width];
        width5 = [v31 width];
        height4 = [v31 height];
        height5 = [v31 height];
        width6 = [v31 width];
        width7 = [v31 width];
        height6 = [v31 height];
        height7 = [v31 height];
        v167.origin.x = v148 * width2;
        v167.size.width = v22 * width3;
        v167.origin.y = v21 * height2;
        v167.size.height = v23 * height3;
        v168 = CGRectIntegral(v167);
        v42 = v168.origin.x;
        v43 = v168.origin.y;
        v44 = v168.size.width;
        v168.origin.x = width4 * 0.85;
        v168.size.width = width5 * 0.06;
        v168.origin.y = v138 * height4;
        v168.size.height = v32 * height5;
        CGRectIntegral(v168);
        sharedInsights2 = v139;
        v169.origin.x = width6 * 0.85;
        v169.size.width = width7 * 0.06;
        v169.origin.y = v135 * height6;
        v169.size.height = v32 * height7;
        CGRectIntegral(v169);
        v45 = v44 * 0.125;
        v46 = ((ceilf(v45) * 8.0) + -5.0);
        v47 = [v31 imageByCroppingRectangle:?];
        y = v25;
        [(CRCameraReader *)self findCCNumberInImageEmbossed:?];
        v48 = x = v133;

        v49 = [v48 objectForKey:?];
        LODWORD(width7) = v49 == 0;

        if (width7)
        {
          v170.size.height = 28.0;
          v170.origin.x = v42;
          v170.origin.y = v43;
          v170.size.width = v46;
          CGRectInset(v170, 60.0, 0.0);
          v50 = [v31 imageByCroppingRectangle:?];

          v51 = [v31 imageByCroppingRectangle:?];
          v152 = [CRCameraReader findCCNumberInImageEmbossed:"findCCNumberInImageEmbossed:withFinalDigit:" withFinalDigit:?];

          v52 = [v152 objectForKey:?];
          v53 = v52 == 0;

          if (v53)
          {
            v54 = [v31 imageByCroppingRectangle:?];
            v55 = [CRCameraReader findCCNumberInImageEmbossed:"findCCNumberInImageEmbossed:withFinalDigit:" withFinalDigit:?];

            v152 = v55;
          }

          v47 = v50;
        }

        else
        {
          v152 = v48;
        }

        sharedInsights = [off_278EAA000 sharedInsights];
        if (sharedInsights)
        {
          sharedInsights2 = [off_278EAA000 sharedInsights];
          v57 = [sharedInsights2 allowOverrideWithKey:? forResultFromBlock:?];
          v125 = v57;
        }

        else
        {
          v57 = [MEMORY[0x277CCABB0] numberWithBool:?];
          v126 = v57;
        }

        bOOLValue2 = [v57 BOOLValue];
        v59 = v126;
        if (sharedInsights)
        {

          v59 = sharedInsights2;
        }

        if (bOOLValue2)
        {
          sharedInsights3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:?];
          v171.origin.x = v119 * v148;
          v171.origin.y = group;
          v171.size.width = v119 * v22;
          v171.size.height = v129;
          v61 = NSStringFromRect(v171);
          [sharedInsights3 setObject:? forKey:?];

          v160.x = v119 * v148;
          v160.y = group;
          v62 = NSStringFromPoint(v160);
          [sharedInsights3 setObject:? forKey:?];

          v63 = [v152 objectForKey:?];
          LOBYTE(v62) = v63 == 0;

          if ((v62 & 1) == 0)
          {
            [dictionary2 addEntriesFromDictionary:?];
            v161.x = v119 * v148;
            v161.y = group;
            v64 = NSStringFromPoint(v161);
            [dictionary2 setObject:? forKey:?];

            v65 = [MEMORY[0x277CCABB0] numberWithBool:?];
            [dictionary2 setObject:? forKey:?];

            if ((bOOLValue & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          [dictionary addEntriesFromDictionary:?];
          v66 = [v152 objectForKey:?];
          v67 = v66 == 0;

          if (!v67)
          {
            v162.x = v119 * v148;
            v162.y = group;
            v68 = NSStringFromPoint(v162);
            [dictionary setObject:? forKey:?];

            v69 = [MEMORY[0x277CCABB0] numberWithBool:?];
            [dictionary setObject:? forKey:?];

            sharedInsights3 = [off_278EAA000 sharedInsights];
            [sharedInsights3 provideInsightValue:? forKey:?];
LABEL_45:

            goto LABEL_46;
          }
        }

        v150 = (v150 + 1);
      }

      while (v122 != v150);
      v18 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v152 = 0;
  }

LABEL_46:

  clock();
  v70 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [dictionary setObject:? forKey:?];

  sharedInsights4 = [off_278EAA000 sharedInsights];
  if (sharedInsights4)
  {
    sharedInsights5 = [off_278EAA000 sharedInsights];
    v73 = [sharedInsights5 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v73 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights5 = v73;
  }

  if ([v73 BOOLValue])
  {
    bOOLValue3 = 1;
  }

  else
  {
    v75 = [v152 objectForKey:?];
    bOOLValue3 = [v75 BOOLValue];
  }

  if (sharedInsights4)
  {
  }

  if (bOOLValue3)
  {
    groupa = dispatch_group_create();
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    if (v110)
    {
      clock();
      array = [MEMORY[0x277CBEB18] array];
      v140 = [MEMORY[0x277CBEB58] set];
      sharedInsights6 = [off_278EAA000 sharedInsights];
      takeContextSnapshot = [sharedInsights6 takeContextSnapshot];

      v137 = takeContextSnapshot;
      v158 = imageCopy;
      v145 = array;
      v78 = dictionary3;
      v144 = v140;
      [nameRectsCopy enumerateObjectsWithOptions:? usingBlock:?];
      v79 = [v78 objectForKey:?];
      LODWORD(takeContextSnapshot) = v79 == 0;

      if (takeContextSnapshot)
      {
        v80 = v145;
        v81 = [v80 countByEnumeratingWithState:? objects:? count:?];
        if (v81)
        {
          v82 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != v81; i = (i + 1))
            {
              if (MEMORY[0] != v82)
              {
                objc_enumerationMutation(v80);
              }

              v84 = *(8 * i);
              v85 = [v84 objectForKey:?];
              v86 = [v84 objectForKey:?];
              bOOLValue4 = [v86 BOOLValue];

              if (bOOLValue4)
              {
                [v78 setObject:? forKey:?];

                goto LABEL_67;
              }
            }

            v81 = [v80 countByEnumeratingWithState:? objects:? count:?];
            if (v81)
            {
              continue;
            }

            break;
          }
        }

LABEL_67:
      }

      [v78 setObject:? forKey:?];
      [nameRectsCopy removeAllObjects];
      allObjects = [v144 allObjects];
      [nameRectsCopy addObjectsFromArray:?];

      clock();
      v89 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [v78 setObject:? forKey:?];
    }

    if (v109)
    {
      clock();
      v90 = [MEMORY[0x277CBEB58] set];
      array2 = [MEMORY[0x277CBEB18] array];
      sharedInsights7 = [off_278EAA000 sharedInsights];
      takeContextSnapshot2 = [sharedInsights7 takeContextSnapshot];

      v153 = takeContextSnapshot2;
      v154 = imageCopy;
      v155 = array2;
      v156 = v90;
      v157 = dictionary4;
      [dateRectsCopy enumerateObjectsWithOptions:? usingBlock:?];
      [v157 setObject:? forKey:?];
      clock();
      v94 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [v157 setObject:? forKey:?];

      [dateRectsCopy removeAllObjects];
      allObjects2 = [v156 allObjects];
      [dateRectsCopy addObjectsFromArray:?];
    }

    dispatch_group_wait(groupa, 0xFFFFFFFFFFFFFFFFLL);
    clock();
    v96 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [dictionary setObject:? forKey:?];

    [dictionary addEntriesFromDictionary:?];
    [dictionary addEntriesFromDictionary:?];
    sharedInsights8 = [off_278EAA000 sharedInsights];
    if (sharedInsights8)
    {
      sharedInsights9 = [off_278EAA000 sharedInsights];
      v99 = [sharedInsights9 allowOverrideWithKey:? forResultFromBlock:?];
    }

    else
    {
      v99 = [MEMORY[0x277CCABB0] numberWithBool:?];
      sharedInsights9 = v99;
    }

    bOOLValue5 = [v99 BOOLValue];
    if (sharedInsights8)
    {
    }

    if (bOOLValue5)
    {
      [dictionary addEntriesFromDictionary:?];
    }

    sharedInsights10 = [off_278EAA000 sharedInsights];
    [sharedInsights10 provideInsightValue:? forKey:?];

    sharedInsights11 = [off_278EAA000 sharedInsights];
    [sharedInsights11 provideInsightValue:? forKey:?];

    sharedInsights12 = [off_278EAA000 sharedInsights];
    [sharedInsights12 provideInsightValue:? forKey:?];

    sharedInsights13 = [off_278EAA000 sharedInsights];
    [sharedInsights13 provideInsightValue:? forKey:?];

    sharedInsights14 = [off_278EAA000 sharedInsights];
    [sharedInsights14 provideInsightValue:? forKey:?];

    sharedInsights15 = [off_278EAA000 sharedInsights];
    [sharedInsights15 provideInsightValue:? forKey:?];
  }

  return dictionary;
}

void __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_3(uint64_t a1, void *a2)
{
  aString = a2;
  v3 = [off_278EAA000 sharedInsights];
  [v3 attachContextCopyToCurrentThread:?];

  v52 = NSRectFromString(aString);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v8 = [*(a1 + 40) findCCObjectEmbossed:? inImage:? forRect:?];
  v9 = [v8 mutableCopy];

  if (*(a1 + 80))
  {
    v10 = 85.685;
  }

  else
  {
    v10 = 54.05;
  }

  if (*(a1 + 80))
  {
    v11 = 54.05;
  }

  else
  {
    v11 = 85.685;
  }

  v12 = [v9 objectForKey:?];
  v13 = height;
  v14 = (1.0 - y - height) * v10;
  v47 = v13;
  v48 = y;
  v15 = v13 * v10;
  if (*(a1 + 81))
  {
    v16 = 54.05 - v14 - v13 * v10;
  }

  else
  {
    v16 = v14;
  }

  v17 = [v9 objectForKey:?];
  [v17 floatValue];
  v19 = v18;

  v53.origin.x = x * v11;
  v53.origin.y = v14;
  v53.size.width = width * v11;
  v53.size.height = v15;
  v20 = NSStringFromRect(v53);
  [v9 setObject:? forKey:?];

  v51.x = x * v11 + v19 / 7.5;
  v51.y = v16;
  v21 = NSStringFromPoint(v51);
  [v9 setObject:? forKey:?];

  v22 = MEMORY[0x277CCABB0];
  isValidNameString(v12);
  v23 = [v22 numberWithBool:?];
  [v9 setObject:? forKey:?];

  v24 = MEMORY[0x277CCABB0];
  isNonNameString(v12);
  v25 = [v24 numberWithBool:?];
  [v9 setObject:? forKey:?];

  v26 = *(a1 + 56);
  objc_sync_enter(v26);
  [*(a1 + 56) addObject:?];
  v27 = [v9 objectForKey:?];

  if (v27)
  {
    v28 = [v9 objectForKey:?];
    [v9 setObject:? forKey:?];

    v29 = *(a1 + 64);
    v30 = [v9 objectForKey:?];
    [v29 setObject:? forKey:?];
  }

  v31 = [v9 objectForKey:?];
  v32 = [v31 BOOLValue];

  if (v32)
  {
    v33 = *(a1 + 72);
    v54.origin.x = x;
    v54.origin.y = v48;
    v54.size.width = width;
    v54.size.height = v47;
    v34 = NSStringFromRect(v54);
    [v33 addObject:?];

    v55.origin.x = x;
    v55.origin.y = v48;
    v55.size.width = width;
    v55.size.height = v47;
    v56 = CGRectOffset(v55, 0.0, v47 * 0.5);
    v35 = v56.origin.x;
    v36 = v56.origin.y;
    v37 = v56.size.width;
    v38 = v56.size.height;
    v56.origin.x = x;
    v56.origin.y = v48;
    v56.size.width = width;
    v56.size.height = v47;
    v57 = CGRectOffset(v56, 0.0, v47 * -0.5);
    v39 = v57.origin.x;
    v40 = v57.origin.y;
    v41 = v57.size.width;
    v42 = v57.size.height;
    if (v36 < 1.0)
    {
      v43 = *(a1 + 72);
      v58.origin.x = v35;
      v58.origin.y = v36;
      v58.size.width = v37;
      v58.size.height = v38;
      v44 = NSStringFromRect(v58);
      [v43 addObject:?];
    }

    if (v40 > 0.670120259)
    {
      v45 = *(a1 + 72);
      v59.origin.x = v39;
      v59.origin.y = v40;
      v59.size.width = v41;
      v59.size.height = v42;
      v46 = NSStringFromRect(v59);
      [v45 addObject:?];
    }
  }

  objc_sync_exit(v26);
}

void __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  aString = a2;
  v6 = [off_278EAA000 sharedInsights];
  [v6 attachContextCopyToCurrentThread:?];

  v59 = NSRectFromString(aString);
  width = v59.size.width;
  x = v59.origin.x;
  y = v59.origin.y;
  height = v59.size.height;
  v10 = [*(a1 + 40) findCCObjectEmbossed:? inImage:? forRect:?];
  v11 = [v10 mutableCopy];

  v54 = y;
  v12 = 1.0 - y - height;
  if (*(a1 + 80))
  {
    v13 = 85.685;
  }

  else
  {
    v13 = 54.05;
  }

  if (*(a1 + 80))
  {
    v14 = 54.05;
  }

  else
  {
    v14 = 85.685;
  }

  v15 = v12 * v13;
  v16 = height * v13;
  v17 = 54.05 - v12 * v13 - height * v13;
  if (*(a1 + 81))
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  v19 = [v11 objectForKey:?];
  [v19 floatValue];
  v21 = v20;

  v60.origin.x = x * v14;
  v60.origin.y = v15;
  v60.size.width = width * v14;
  v60.size.height = v16;
  v22 = NSStringFromRect(v60);
  [v11 setObject:? forKey:?];

  v58.x = x * v14 + v21 / 7.5;
  v58.y = v18;
  v23 = NSStringFromPoint(v58);
  [v11 setObject:? forKey:?];

  v24 = *(a1 + 56);
  objc_sync_enter(v24);
  [*(a1 + 56) addObject:?];
  v25 = [v11 objectForKey:?];

  if (v25)
  {
    v26 = *(a1 + 64);
    v61.origin.x = x;
    v61.origin.y = v54;
    v61.size.width = width;
    v61.size.height = height;
    v27 = NSStringFromRect(v61);
    [v26 addObject:?];

    v62.origin.x = x;
    v62.origin.y = v54;
    v62.size.width = width;
    v62.size.height = height;
    v63 = CGRectOffset(v62, 0.0, height * 0.5);
    v28 = v63.origin.x;
    v29 = v63.origin.y;
    v30 = v63.size.width;
    v31 = v63.size.height;
    v63.origin.x = x;
    v63.origin.y = v54;
    v63.size.width = width;
    v63.size.height = height;
    v64 = CGRectOffset(v63, 0.0, height * -0.5);
    v32 = v64.origin.x;
    v33 = v64.origin.y;
    v34 = v64.size.width;
    v35 = v64.size.height;
    if (v29 < 1.0)
    {
      v36 = *(a1 + 64);
      v65.origin.x = v28;
      v65.origin.y = v29;
      v65.size.width = v30;
      v65.size.height = v31;
      v37 = NSStringFromRect(v65);
      [v36 addObject:?];
    }

    if (v33 > 0.670120259)
    {
      v38 = *(a1 + 64);
      v66.origin.x = v32;
      v66.origin.y = v33;
      v66.size.width = v34;
      v66.size.height = v35;
      v39 = NSStringFromRect(v66);
      [v38 addObject:?];
    }

    v40 = *(a1 + 72);
    v41 = [v11 objectForKey:?];
    [v40 setObject:? forKey:?];

    v42 = [v11 objectForKey:?];

    if (v42)
    {
      v43 = *(a1 + 72);
      v44 = [v11 objectForKey:?];
      [v43 setObject:? forKey:?];
    }

    v45 = [v11 objectForKey:?];

    if (v45)
    {
      v46 = *(a1 + 72);
      v47 = [v11 objectForKey:?];
      [v46 setObject:? forKey:?];
    }

    v48 = [v11 objectForKey:?];

    if (v48)
    {
      v49 = *(a1 + 72);
      v50 = [v11 objectForKey:?];
      [v49 setObject:? forKey:?];
    }

    v51 = [v11 objectForKey:?];

    if (v51)
    {
      v52 = *(a1 + 72);
      v53 = [v11 objectForKey:?];
      [v52 setObject:? forKey:?];
    }

    if ((*(a1 + 82) & 1) == 0)
    {
      *a4 = 1;
    }
  }

  objc_sync_exit(v24);
}

- (id)findCCResultsInImageFlat:(id)flat usingTextFeatures:(id)features invert:(BOOL)invert
{
  flatCopy = flat;
  featuresCopy = features;
  v90 = featuresCopy;
  sharedInsights = [off_278EAA000 sharedInsights];
  [sharedInsights setContextValue:? forKey:?];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:?];
  [v9 BOOLValue];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [MEMORY[0x277CCAB68] string];
    v10 = MEMORY[0x277CBEB18];
    subFeatures = [featuresCopy subFeatures];
    [subFeatures count];
    v95 = [v10 arrayWithCapacity:?];

    subFeatures2 = [featuresCopy subFeatures];
    v13 = 0;
    v14 = [subFeatures2 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; i = (i + 1))
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(subFeatures2);
          }

          subFeatures3 = [*(8 * i) subFeatures];
          v18 = [subFeatures3 count];

          v13 += v18;
        }

        v14 = [subFeatures2 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v14);
    }

    subFeatures4 = [v90 subFeatures];
    v97 = flatCopy;
    v89 = string;
    v91 = v95;
    [subFeatures4 enumerateObjectsWithOptions:? usingBlock:?];

    v94 = extractCardCode(v89);
    if (v94)
    {
      [v90 bounds];
      if (isValidCodeLocation(v94, 0, v20, v21, v22, v23))
      {
        [dictionary setObject:? forKey:?];
        [dictionary setObject:? forKey:?];
      }
    }

    sharedInsights2 = [off_278EAA000 sharedInsights];
    if (sharedInsights2)
    {
      sharedInsights3 = [off_278EAA000 sharedInsights];
      v26 = [sharedInsights3 allowOverrideWithKey:? forResultFromBlock:?];
    }

    else
    {
      v26 = [MEMORY[0x277CCABB0] numberWithBool:?];
      sharedInsights3 = v26;
    }

    bOOLValue = [v26 BOOLValue];
    if (sharedInsights2)
    {
    }

    if (bOOLValue)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [dictionary2 setObject:? forKey:?];
      if (v94)
      {
        [dictionary2 setObject:? forKey:?];
      }

      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:0];
      [dictionary setObject:? forKey:?];
    }

    [dictionary setObject:? forKey:?];
    dictionary3 = [MEMORY[0x277CBEAC0] dictionary];
    [dictionary setObject:? forKey:?];

    dictionary4 = [MEMORY[0x277CBEAC0] dictionary];
    [dictionary setObject:? forKey:?];

    goto LABEL_61;
  }

  sharedInsights4 = [off_278EAA000 sharedInsights];
  [sharedInsights4 setContextValue:? forKey:?];

  flatPrintedModel = [(CRCameraReader *)self flatPrintedModel];
  v29 = [flatPrintedModel creditcardResultsFromImage:? textFeatures:? invert:? tryPatternMatch:?];

  v89 = v29;
  sharedInsights5 = [off_278EAA000 sharedInsights];
  [sharedInsights5 provideInsightValue:? forKey:?];

  sharedInsights6 = [off_278EAA000 sharedInsights];
  [sharedInsights6 setContextValue:? forKey:?];

  v91 = [v29 objectForKey:?];
  v87 = [v29 objectForKey:?];
  v84 = [v29 objectForKey:?];
  v85 = [v87 objectForKey:?];
  v32 = [v85 objectAtIndex:?];
  v33 = extractCardCode(v32);

  v94 = v33;
  if (!v33)
  {
    v34 = [v91 objectForKey:?];

    v35 = [v34 objectAtIndex:?];
    v36 = extractCardCode(v35);

    v94 = v36;
    if (v36)
    {
      v85 = v34;
    }

    else
    {
      v42 = [v84 objectForKey:?];

      v43 = [v42 objectAtIndex:?];
      v44 = extractCardCode(v43);

      v94 = v44;
      if (!v44)
      {
        v94 = 0;
        v85 = v42;
        goto LABEL_29;
      }

      v85 = v42;
    }
  }

  [featuresCopy bounds];
  if (isValidCodeLocation(v94, 0, v45, v46, v47, v48))
  {
    [dictionary setObject:? forKey:?];
    [dictionary setObject:? forKey:?];
  }

LABEL_29:
  sharedInsights7 = [off_278EAA000 sharedInsights];
  if (sharedInsights7)
  {
    sharedInsights8 = [off_278EAA000 sharedInsights];
    v51 = [sharedInsights8 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v51 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights8 = v51;
  }

  bOOLValue2 = [v51 BOOLValue];
  if (sharedInsights7)
  {
  }

  if (bOOLValue2)
  {
    array = [MEMORY[0x277CBEB18] array];
    v53 = v29;
    v54 = [v53 countByEnumeratingWithState:? objects:? count:?];
    if (v54)
    {
      v55 = MEMORY[0];
      do
      {
        for (j = 0; j != v54; j = (j + 1))
        {
          if (MEMORY[0] != v55)
          {
            objc_enumerationMutation(v53);
          }

          v57 = [v53 objectForKey:?];
          v58 = [v57 objectForKey:?];
          v59 = extractCardNumberResults(v58);

          v60 = [v59 objectForKey:?];
          v61 = [v60 length] == 0;

          if (!v61)
          {
            [array addObject:?];
          }
        }

        v54 = [v53 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v54);
    }

    [dictionary setObject:? forKey:?];
  }

  v62 = [v87 objectForKey:?];
  contactsCache = [(CRCameraReader *)self contactsCache];
  previousContactMatches = [(CRCameraReader *)self previousContactMatches];
  v65 = extractCardholderNameResults(v62, contactsCache, previousContactMatches);

  [dictionary setObject:? forKey:?];
  sharedInsights9 = [off_278EAA000 sharedInsights];
  if (sharedInsights9)
  {
    sharedInsights10 = [off_278EAA000 sharedInsights];
    v68 = [sharedInsights10 allowOverrideWithKey:? forValue:?];
  }

  else
  {
    v68 = 0;
  }

  v69 = computeReferenceDateFromString(v68);
  v70 = [v87 objectForKey:?];
  v71 = extractExpirationDateResults(v70, v69);

  v72 = [v71 objectForKey:?];
  LODWORD(v70) = v72 == 0;

  if (v70)
  {
    v73 = [v84 objectForKey:?];
    v74 = extractExpirationDateResults(v73, v69);

    v71 = v74;
  }

  sharedInsights11 = [off_278EAA000 sharedInsights];
  if (sharedInsights11)
  {
    sharedInsights12 = [off_278EAA000 sharedInsights];
    v77 = [sharedInsights12 allowOverrideWithKey:? forResultFromBlock:?];
  }

  else
  {
    v77 = [MEMORY[0x277CCABB0] numberWithBool:?];
    sharedInsights12 = v77;
  }

  if ([v77 BOOLValue])
  {
    v78 = [v71 objectForKey:?];
    v79 = v78 == 0;

    if (!sharedInsights11)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v79 = 0;
  if (sharedInsights11)
  {
LABEL_57:
  }

LABEL_58:

  if (v79)
  {
    v80 = [v91 objectForKey:?];
    v81 = extractExpirationDateResults(v80, v69);

    v71 = v81;
  }

  [dictionary setObject:? forKey:?];

LABEL_61:
  sharedInsights13 = [off_278EAA000 sharedInsights];
  [sharedInsights13 setContextValue:? forKey:?];

  return dictionary;
}

void __68__CRCameraReader_findCCResultsInImageFlat_usingTextFeatures_invert___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = a2;
  v7 = [v6 sharedInsights];
  [v7 setContextValue:? forKey:?];

  v8 = [*(a1 + 32) flatPrintedModel];
  v9 = [v8 creditcardResultsFromImage:? textFeatures:? invert:? tryPatternMatch:?];

  v11 = [v10 sharedInsights];
  [v11 provideInsightValue:? forKey:?];

  v13 = [v12 sharedInsights];
  [v13 setContextValue:? forKey:?];

  v14 = [v9 objectForKey:?];
  v15 = [v14 objectForKey:?];
  v16 = [v15 objectAtIndex:?];

  if (v16)
  {
    v17 = *(a1 + 48);
    v18 = [v15 objectAtIndex:?];
    [v17 appendString:?];
  }

  v19 = [MEMORY[0x277CBEB38] dictionary];
  if ([v15 count] >= 2)
  {
    v20 = [v15 objectAtIndex:?];
    [v19 setObject:? forKey:?];

    if ([v15 count] >= 3)
    {
      v21 = [v15 objectAtIndex:?];
      [v21 integerValue];
    }

    v22 = [v15 objectAtIndex:?];
    v23 = [v22 objectAtIndex:?];
    [v23 integerValue];

    v24 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v19 setObject:? forKey:?];
  }

  [*(a1 + 56) addObject:?];
  if ((*(a1 + 73) & 1) == 0 && (checkPartialCodePrefix(*(a1 + 48), *(a1 + 64)) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)findCCNumberInImageEmbossed:(id)embossed
{
  embossedCopy = embossed;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  imageByApplyingHistogramCorrection = [embossedCopy imageByApplyingHistogramCorrection];
  sharedInsights = [off_278EAA000 sharedInsights];
  [sharedInsights provideInsightValue:? forKey:?];

  embossedNumberModel = [(CRCameraReader *)self embossedNumberModel];
  v9 = [embossedNumberModel creditcardResultsFromImage:?];
  v10 = [v9 objectForKey:?];

  v11 = 0;
  v12 = 1;
  v13 = MEMORY[0x277CBF398];
  while ([v10 count] > v12)
  {
    v14 = [v10 objectAtIndex:?];
    v15 = extractCardCode(v14);

    if (v15 && isValidCodeLocation(v15, 1, *v13, v13[1], v13[2], v13[3]))
    {
      [dictionary setObject:? forKey:?];
      [dictionary setObject:? forKey:?];
      v11 = v15;
      break;
    }

    ++v12;
    v11 = v15;
  }

  return dictionary;
}

- (id)findCCNumberInImageEmbossed:(id)embossed withFinalDigit:(id)digit
{
  embossedCopy = embossed;
  digitCopy = digit;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [digitCopy height];
  [digitCopy width];
  [digitCopy height];
  v41 = [digitCopy imageByScalingToWidth:? height:?];
  imageByApplyingHistogramCorrection = [v41 imageByApplyingHistogramCorrection];
  embossedExpirationModel = [(CRCameraReader *)self embossedExpirationModel];
  v11 = [embossedExpirationModel creditcardResultsFromImage:?];
  v12 = [v11 objectForKey:?];

  v42 = v12;
  v13 = [(CRCameraReader *)self extractFinalDigitStringFromNumbers:?];
  if ([v13 length] != 1)
  {
    v14 = [imageByApplyingHistogramCorrection imageByAdjustingBrightnessAlpha:? beta:?];
    imageByApplyingHistogramCorrection2 = [v14 imageByApplyingHistogramCorrection];

    embossedExpirationModel2 = [(CRCameraReader *)self embossedExpirationModel];
    v17 = [embossedExpirationModel2 creditcardResultsFromImage:?];
    v18 = [v17 objectForKey:?];

    v19 = [(CRCameraReader *)self extractFinalDigitStringFromNumbers:?];

    imageByApplyingHistogramCorrection = imageByApplyingHistogramCorrection2;
    v42 = v18;
    v13 = v19;
  }

  if ([v13 length] == 1)
  {
    v38 = embossedCopy;
    v39 = dictionary;
    imageByApplyingHistogramCorrection3 = [embossedCopy imageByApplyingHistogramCorrection];
    embossedNumberModel = [(CRCameraReader *)self embossedNumberModel];
    v21 = [embossedNumberModel creditcardResultsFromImage:?];
    v22 = [v21 objectForKey:?];

    v23 = enrichedNumbersListHK(v22);

    v24 = 1;
    while ([v23 count] > v24)
    {
      v25 = [v23 objectAtIndex:?];
      v26 = [v25 stringByAppendingString:?];
      v27 = extractCardCodeHK(v26);

      ++v24;
      if (v27)
      {
        [v39 setObject:? forKey:?];
        [v39 setObject:? forKey:?];
        goto LABEL_14;
      }
    }

    v28 = [imageByApplyingHistogramCorrection3 imageByAdjustingBrightnessAlpha:? beta:?];
    imageByApplyingHistogramCorrection4 = [v28 imageByApplyingHistogramCorrection];

    embossedNumberModel2 = [(CRCameraReader *)self embossedNumberModel];
    v31 = [embossedNumberModel2 creditcardResultsFromImage:?];
    v32 = [v31 objectForKey:?];

    v23 = enrichedNumbersListHK(v32);

    v33 = 1;
    while ([v23 count] > v33)
    {
      v34 = [v23 objectAtIndex:?];
      v35 = [v34 stringByAppendingString:?];
      v36 = extractCardCodeHK(v35);

      ++v33;
      if (v36)
      {
        [v39 setObject:? forKey:?];
        [v39 setObject:? forKey:?];
        goto LABEL_13;
      }
    }

    v36 = 0;
LABEL_13:

    v27 = 0;
LABEL_14:

    embossedCopy = v38;
    dictionary = v39;
  }

  return dictionary;
}

- (id)findCCNameInImageEmbossed:(id)embossed
{
  imageByApplyingHistogramCorrection = [embossed imageByApplyingHistogramCorrection];
  embossedCardholderModel = [(CRCameraReader *)self embossedCardholderModel];
  v6 = [embossedCardholderModel creditcardResultsFromImage:?];
  v7 = [v6 objectForKey:?];

  contactsCache = [(CRCameraReader *)self contactsCache];
  previousContactMatches = [(CRCameraReader *)self previousContactMatches];
  v10 = extractCardholderNameResults(v7, contactsCache, previousContactMatches);

  return v10;
}

- (id)findCCExpDateInImageEmbossed:(id)embossed
{
  imageByApplyingHistogramCorrection = [embossed imageByApplyingHistogramCorrection];
  embossedExpirationModel = [(CRCameraReader *)self embossedExpirationModel];
  v6 = [embossedExpirationModel creditcardResultsFromImage:?];

  v7 = [v6 objectForKey:?];
  sharedInsights = [v8 sharedInsights];
  if (sharedInsights)
  {
    sharedInsights2 = [v9 sharedInsights];
    v12 = [sharedInsights2 allowOverrideWithKey:? forValue:?];
  }

  else
  {
    v12 = 0;
  }

  v13 = computeReferenceDateFromString(v12);
  v14 = extractExpirationDateResults(v7, v13);
  v15 = [v14 objectForKey:?];

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v6 objectForKey:?];
    v18 = extractExpirationDateResults(v17, v13);
    v19 = [v18 objectForKey:?];

    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }

    v16 = v20;
  }

  return v16;
}

- (void)removeLayerTree
{
  diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
  [diagnosticHUDLayer removeFromSuperlayer];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer removeFromSuperlayer];

  boxLayer = [(CRCameraReader *)self boxLayer];
  [boxLayer removeFromSuperlayer];

  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  [previewLayer removeFromSuperlayer];
}

- (void)primeBoxLayerHideTimerWithFrameTime:(id *)time
{
  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  v8 = *time;
  Seconds = CMTimeGetSeconds(&v8);
  [(CRCameraReader *)self configDemoSpeed];
  CMTimeMakeWithSeconds(&v8, Seconds + 0.5 / v7, time->var1);
  [boxLayerHideTimer setFireTime:?];
}

- (void)pauseBoxLayerHideTimer
{
  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  v3 = *MEMORY[0x277CC08B0];
  [boxLayerHideTimer setFireTime:{v3, *(MEMORY[0x277CC08B0] + 16)}];
}

- (void)hideBoxLayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CRCameraReader_hideBoxLayer__block_invoke;
  block[3] = &unk_278EAA5E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __30__CRCameraReader_hideBoxLayer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) boxLayer];
  [v1 setHidden:?];
}

- (CGRect)boxLayerPresentationFrame
{
  view = [(CRCameraReader *)self view];
  layer = [view layer];
  [layer bounds];
  Width = CGRectGetWidth(v28);
  view2 = [(CRCameraReader *)self view];
  layer2 = [view2 layer];
  [layer2 bounds];
  if (Width <= CGRectGetHeight(v29))
  {
    view3 = [(CRCameraReader *)self view];
    layer3 = [view3 layer];
    [layer3 bounds];
    v10 = CGRectGetWidth(v31);
    v11 = 0.8;
  }

  else
  {
    view3 = [(CRCameraReader *)self view];
    layer3 = [view3 layer];
    [layer3 bounds];
    v10 = CGRectGetWidth(v30);
    v11 = 0.65;
  }

  v12 = v10 * v11;

  boxLayer = [(CRCameraReader *)self boxLayer];
  [boxLayer bounds];
  Height = CGRectGetHeight(v32);
  boxLayer2 = [(CRCameraReader *)self boxLayer];
  [boxLayer2 bounds];
  v16 = CGRectGetWidth(v33);

  view4 = [(CRCameraReader *)self view];
  layer4 = [view4 layer];
  [layer4 bounds];
  MidX = CGRectGetMidX(v34);
  view5 = [(CRCameraReader *)self view];
  layer5 = [view5 layer];
  [layer5 bounds];
  v22 = v12 * Height / v16;
  v23 = CGRectGetMidY(v35) - v22 * 0.5;

  v24 = MidX - v12 * 0.5;
  v25 = v23;
  v26 = v12;
  v27 = v22;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)animatePresentCodeAtFrameTime:(id *)time
{
  v64 = *MEMORY[0x277D85DE8];
  boxLayer = [(CRCameraReader *)self boxLayer];
  animationKeys = [boxLayer animationKeys];
  v6 = [animationKeys containsObject:?];

  if ((v6 & 1) == 0)
  {
    boxLayer2 = [(CRCameraReader *)self boxLayer];
    [boxLayer2 removeAllAnimations];
  }

  animation = [MEMORY[0x277CD9E00] animation];
  animation2 = [MEMORY[0x277CD9E00] animation];
  boxLayer3 = [(CRCameraReader *)self boxLayer];
  [boxLayer3 position];
  MidX = v9;
  MidY = v11;

  memset(&v60, 0, sizeof(v60));
  boxLayer4 = [(CRCameraReader *)self boxLayer];
  if (boxLayer4)
  {
    [&v60 transform];
  }

  else
  {
    memset(&v60, 0, sizeof(v60));
  }

  if ([(CRCameraReader *)self configPresentCentered])
  {
    [(CRCameraReader *)self boxLayerPresentationFrame];
    x = v65.origin.x;
    y = v65.origin.y;
    width = v65.size.width;
    height = v65.size.height;
    MidX = CGRectGetMidX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    MidY = CGRectGetMidY(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v18 = CGRectGetWidth(v67);
    boxLayer5 = [(CRCameraReader *)self boxLayer];
    [boxLayer5 bounds];
    v20 = CGRectGetWidth(v68);

    CATransform3DMakeScale(&v59, v18 / v20, v18 / v20, 1.0);
    v60 = v59;
    if ([(CRCameraReader *)self codeInverted])
    {
      v58 = v60;
      CATransform3DRotate(&v59, &v58, 3.14159265, 0.0, 0.0, 1.0);
      v60 = v59;
    }

    sessionManager = [(CRCameraReader *)self sessionManager];
    isPreviewVideoMirrored = [sessionManager isPreviewVideoMirrored];

    if (isPreviewVideoMirrored)
    {
      v58 = v60;
      CATransform3DRotate(&v59, &v58, 3.14159265, 0.0, 1.0, 0.0);
      v60 = v59;
    }

    v23 = [MEMORY[0x277CD9EC8] animationWithKeyPath:?];
    boxLayer6 = [(CRCameraReader *)self boxLayer];
    [boxLayer6 position];
    boxLayer7 = [(CRCameraReader *)self boxLayer];
    [boxLayer7 position];

    v26 = MEMORY[0x277CBEA60];
    v27 = MEMORY[0x277CCAE60];
    boxLayer8 = [(CRCameraReader *)self boxLayer];
    [boxLayer8 position];
    v29 = [v27 valueWithCGPoint:?];
    v30 = [MEMORY[0x277CCABB0] valueWithCGPoint:?];
    v31 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
    v32 = [v26 arrayWithObjects:{v30, v31, 0}];
    [v23 setValues:?];

    [v23 setKeyTimes:?];
    [v23 setCalculationMode:?];
    v33 = [MEMORY[0x277CD9EC8] animationWithKeyPath:?];
    v61 = &unk_285976638;
    v34 = MEMORY[0x277CCABB0];
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    CGRectGetWidth(v69);
    v35 = [v34 numberWithDouble:?];
    v62 = v35;
    v63 = &unk_285976638;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v33 setValues:?];

    [v33 setKeyTimes:?];
    [v33 setCalculationMode:?];
    v37 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
    v38 = MEMORY[0x277CCAE60];
    boxLayer9 = [(CRCameraReader *)self boxLayer];
    if (boxLayer9)
    {
      [&v59 transform];
    }

    else
    {
      memset(&v59, 0, sizeof(v59));
    }

    v42 = [v38 valueWithCATransform3D:?];
    [v37 setFromValue:?];

    v59 = v60;
    v43 = [MEMORY[0x277CCAE60] valueWithCATransform3D:?];
    [v37 setToValue:?];

    v44 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
    v45 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v44 setFromValue:?];

    v46 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v44 setToValue:?];

    [(CRCameraReader *)self configDemoSpeed];
    [animation setDuration:?];
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:{v33, v37, 0}];
    [animation setAnimations:?];

    [(CRCameraReader *)self configDemoSpeed];
    [animation2 setDuration:?];
    v48 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    [animation2 setAnimations:?];
  }

  else
  {
    v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v23 setFromValue:?];

    v41 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v23 setToValue:?];

    [(CRCameraReader *)self configDemoSpeed];
    [animation setDuration:?];
    [(CRCameraReader *)self configDemoSpeed];
    [animation2 setDuration:?];
    v33 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    [animation2 setAnimations:?];
  }

  objc_initWeak(&v59, self);
  boxLayer10 = [(CRCameraReader *)self boxLayer];
  objc_copyWeak(v55, &v59);
  v53 = animation;
  v55[1] = a2;
  v54 = animation2;
  v55[2] = *&MidX;
  v55[3] = *&MidY;
  v56 = v60;
  v57 = 0x3FD999999999999ALL;
  [boxLayer10 addCompletionBlock:?];

  objc_destroyWeak(v55);
  objc_destroyWeak(&v59);
}

void __48__CRCameraReader_animatePresentCodeAtFrameTime___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained boxLayer];
  [v3 removeAllAnimations];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 sessionManager];
  v6 = [v5 previewLayer];
  [v6 removeAllAnimations];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 boxLayer];
  v9 = NSStringFromSelector(*(a1 + 56));
  [v8 addAnimation:? forKey:?];

  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 sessionManager];
  v12 = [v11 previewLayer];
  v13 = NSStringFromSelector(*(a1 + 56));
  [v12 addAnimation:? forKey:?];

  v14 = objc_loadWeakRetained((a1 + 48));
  v15 = [v14 boxLayer];
  [v15 setPosition:?];

  v27 = *(a1 + 144);
  v28 = *(a1 + 160);
  v29 = *(a1 + 176);
  v30 = *(a1 + 192);
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  v25 = *(a1 + 112);
  v26 = *(a1 + 128);
  v16 = objc_loadWeakRetained((a1 + 48));
  v17 = [v16 boxLayer];
  [v17 setTransform:{v23, v24, v25, v26, v27, v28, v29, v30}];

  v18 = objc_loadWeakRetained((a1 + 48));
  v19 = [v18 sessionManager];
  v20 = [v19 previewLayer];
  [v20 setOpacity:?];

  [MEMORY[0x277CD9FF0] commit];
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = objc_loadWeakRetained((a1 + 48));
  [v22 setCodePresented:?];
}

- (void)showMessage:(id)message color:(id)color style:(int64_t)style duration:(double)duration
{
  messageCopy = message;
  colorCopy = color;
  v11 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
      v11 = [v14 localizedStringForKey:? value:? table:?];

      v13 = 0;
      v12 = messageCopy;
      goto LABEL_9;
    }

    if (style != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!style)
  {
LABEL_7:
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
    v11 = [v12 localizedStringForKey:? value:? table:?];
    v13 = messageCopy;
    goto LABEL_9;
  }

  v12 = messageCopy;
  v13 = 0;
  if (style == 1)
  {
LABEL_9:

    messageCopy = v13;
  }

LABEL_10:
  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v16 = [v15 localizedStringForKey:? value:? table:?];

  activityIndicator = [(CRCameraReader *)self activityIndicator];

  if (activityIndicator)
  {
    goto LABEL_21;
  }

  v18 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:?];
  [(CRCameraReader *)self setActivityIndicator:?];

  activityIndicator2 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator2 setHidesWhenStopped:?];

  view = [(CRCameraReader *)self view];
  activityIndicator3 = [(CRCameraReader *)self activityIndicator];
  [view addSubview:?];

  if (![(CRCameraReader *)self configPresentCentered])
  {
    activityIndicator4 = [(CRCameraReader *)self activityIndicator];
    view2 = [(CRCameraReader *)self view];
    [view2 bounds];
    CGRectGetMidX(v79);
    activityIndicator5 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator5 bounds];
    CGRectGetWidth(v80);
    view3 = [(CRCameraReader *)self view];
    [view3 bounds];
    CGRectGetMaxY(v81);
    activityIndicator6 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator6 bounds];
    CGRectGetHeight(v82);
    activityIndicator7 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator7 bounds];
    CGRectGetWidth(v83);
    activityIndicator8 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator8 bounds];
    CGRectGetHeight(v84);
    [activityIndicator4 setFrame:?];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      view4 = [(CRCameraReader *)self view];
      [view4 bounds];
      v91.size.width = 1024.0;
      v91.size.height = 748.0;
      v91.origin.x = 0.0;
      v91.origin.y = 0.0;
      if (CGRectEqualToRect(v85, v91))
      {
      }

      else
      {
        view5 = [(CRCameraReader *)self view];
        [view5 bounds];
        v92.size.width = 768.0;
        v92.size.height = 1004.0;
        v92.origin.x = 0.0;
        v92.origin.y = 0.0;
        v44 = CGRectEqualToRect(v86, v92);

        if (!v44)
        {
LABEL_19:
          activityIndicator9 = [(CRCameraReader *)self activityIndicator];
          [activityIndicator9 setAutoresizingMask:?];
          goto LABEL_20;
        }
      }

      currentDevice = [(CRCameraReader *)self activityIndicator];
      activityIndicator10 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator10 frame];
      CGRectGetMinX(v87);
      activityIndicator11 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator11 frame];
      CGRectGetMinY(v88);
      activityIndicator12 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator12 frame];
      CGRectGetWidth(v89);
      activityIndicator13 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator13 frame];
      CGRectGetHeight(v90);
      [currentDevice setFrame:?];
    }

    goto LABEL_19;
  }

  [(CRCameraReader *)self boxLayerPresentationFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  activityIndicator14 = [(CRCameraReader *)self activityIndicator];
  v73.origin.x = v23;
  v73.origin.y = v25;
  v73.size.width = v27;
  v73.size.height = v29;
  CGRectGetMidX(v73);
  activityIndicator15 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator15 bounds];
  CGRectGetWidth(v74);
  v75.origin.x = v23;
  v75.origin.y = v25;
  v75.size.width = v27;
  v75.size.height = v29;
  CGRectGetMaxY(v75);
  activityIndicator16 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator16 bounds];
  CGRectGetHeight(v76);
  activityIndicator17 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator17 bounds];
  CGRectGetWidth(v77);
  activityIndicator18 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator18 bounds];
  CGRectGetHeight(v78);
  [activityIndicator14 setFrame:?];

  activityIndicator9 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator9 setAutoresizingMask:?];
LABEL_20:

LABEL_21:
  activityIndicator19 = [(CRCameraReader *)self activityIndicator];
  if (style == 1)
  {
    [activityIndicator19 startAnimating];
  }

  else
  {
    [activityIndicator19 stopAnimating];
  }

  objc_initWeak(location, self);
  configPresentCentered = [(CRCameraReader *)self configPresentCentered];
  [(CRCameraReader *)self configDemoSpeed];
  v52 = v51;
  codePresented = [(CRCameraReader *)self codePresented];
  [codePresented timeIntervalSinceNow];
  v55 = 0.25;
  if (configPresentCentered)
  {
    v55 = 0.5;
  }

  v56 = v55 / v52 + v54;

  v57 = dispatch_time(0, (fmax(v56, 0.0) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke;
  block[3] = &unk_278EAA9E0;
  v66 = colorCopy;
  selfCopy = self;
  v68 = messageCopy;
  v71[1] = *&duration;
  v58 = messageCopy;
  v59 = colorCopy;
  objc_copyWeak(v71, location);
  v71[2] = style;
  v69 = v11;
  v70 = v16;
  v60 = v16;
  v61 = v11;
  dispatch_after(v57, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v71);
  objc_destroyWeak(location);
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) boxLayer];
    [v3 animatePulseColor:?];

    v4 = 200000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = dispatch_time(0, v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_2;
  v9[3] = &unk_278EAA9E0;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v7 = v6;
  v14[1] = *(a1 + 80);
  v10 = v7;
  v11 = v2;
  v8 = v2;
  objc_copyWeak(v14, (a1 + 72));
  v14[2] = *(a1 + 88);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  dispatch_after(v5, MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(v14);
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_2(id *a1)
{
  v2 = [a1[4] boxLayer];
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_3;
  v6 = &unk_278EAA9B8;
  v7 = a1[5];
  v11[1] = a1[10];
  v8 = a1[6];
  objc_copyWeak(v11, a1 + 9);
  v11[2] = a1[11];
  v9 = a1[7];
  v10 = a1[8];
  [v2 addCompletionBlock:?];

  objc_destroyWeak(v11);
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x277D75110] alertControllerWithTitle:? message:? preferredStyle:?];
    v5 = MEMORY[0x277D750F8];
    v11 = MEMORY[0x277D85DD0];
    objc_copyWeak(v12, (a1 + 64));
    v12[1] = *(a1 + 80);
    v6 = [v5 actionWithTitle:v11 style:3221225472 handler:{__51__CRCameraReader_showMessage_color_style_duration___block_invoke_5, &unk_278EAA990}];
    [v4 addAction:?];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained presentViewController:? animated:? completion:?];

    objc_destroyWeak(v12);
  }

  else
  {
    v8 = *(a1 + 72);
    [*(a1 + 40) timeIntervalSinceNow];
    v10 = dispatch_time(0, (fmax(v8 + v9, 0.0) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_4;
    block[3] = &unk_278EAA968;
    objc_copyWeak(v14, (a1 + 64));
    v14[1] = *(a1 + 80);
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v14);
  }
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendDidDisplayMessageStyle:?];
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendDidDisplayMessageStyle:?];
}

- (void)sendDidCancel
{
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__CRCameraReader_sendDidCancel__block_invoke;
  v4[3] = &unk_278EAA5E8;
  v4[4] = self;
  cr_dispatch_async(delegateQueue, v4);
}

void __31__CRCameraReader_sendDidCancel__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) didSendEndOrCancel] & 1) == 0)
  {
    [*(a1 + 32) setDidSendEndOrCancel:?];
    v2 = [*(a1 + 32) callbackDelegate];
    [v2 cameraReaderDidCancel:?];
  }
}

- (void)sendDidEndWithInfo:(id)info
{
  infoCopy = info;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__CRCameraReader_sendDidEndWithInfo___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = infoCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

void *__37__CRCameraReader_sendDidEndWithInfo___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) didSendEndOrCancel];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setDidSendEndOrCancel:?];
    v3 = [*(a1 + 32) callbackDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) callbackDelegate];
      [v5 cameraReader:? didRecognizeObjects:?];
    }

    v6 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setPinnedFoundInfo:?];

    [*(a1 + 32) setFoundCode:?];
    v7 = *(a1 + 32);

    return [v7 setPreviousCode:?];
  }

  return result;
}

- (void)sendDidRecognizeNewObjects:(id)objects
{
  objectsCopy = objects;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CRCameraReader_sendDidRecognizeNewObjects___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = objectsCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

void __45__CRCameraReader_sendDidRecognizeNewObjects___block_invoke(uint64_t a1)
{
  v34 = [*(a1 + 32) callbackDelegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v35 = [MEMORY[0x277CBEB18] array];
    v3 = [*(a1 + 40) objectForKey:?];
    v4 = [*(a1 + 40) objectForKey:?];
    v5 = [*(a1 + 40) objectForKey:?];
    if (v3)
    {
      v6 = objc_alloc_init(CRCameraReaderOutput);
      v7 = [(CRCameraReaderOutput *)v6 objectInternal];
      [v7 setType:?];

      v8 = [(CRCameraReaderOutput *)v6 objectInternal];
      [v8 setStringValue:?];

      [v35 addObject:?];
    }

    if (v4)
    {
      v9 = objc_alloc_init(CRCameraReaderOutput);
      v10 = [(CRCameraReaderOutput *)v9 objectInternal];
      [v10 setType:?];

      v11 = [(CRCameraReaderOutput *)v9 objectInternal];
      [v11 setStringValue:?];

      [v35 addObject:?];
    }

    if (v5)
    {
      v12 = objc_alloc_init(CRCameraReaderOutputExpirationDate);
      v13 = [(CRCameraReaderOutput *)v12 objectInternal];
      [v13 setType:?];

      v14 = [(CRCameraReaderOutput *)v12 objectInternal];
      [v14 setStringValue:?];

      v15 = [*(a1 + 40) objectForKey:?];

      if (v15)
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = [*(a1 + 32) pinnedFoundInfo];
        v18 = [v17 objectForKey:?];
        [v18 integerValue];
        v19 = [v16 numberWithInteger:?];
        v20 = [(CRCameraReaderOutput *)v12 objectInternal];
        [v20 setYearValue:?];
      }

      v21 = [*(a1 + 40) objectForKey:?];

      if (v21)
      {
        v22 = MEMORY[0x277CCABB0];
        v23 = [*(a1 + 32) pinnedFoundInfo];
        v24 = [v23 objectForKey:?];
        [v24 integerValue];
        v25 = [v22 numberWithInteger:?];
        v26 = [(CRCameraReaderOutput *)v12 objectInternal];
        [v26 setMonthValue:?];
      }

      v27 = [*(a1 + 40) objectForKey:?];

      if (v27)
      {
        v28 = MEMORY[0x277CCABB0];
        v29 = [*(a1 + 32) pinnedFoundInfo];
        v30 = [v29 objectForKey:?];
        [v30 integerValue];
        v31 = [v28 numberWithInteger:?];
        v32 = [(CRCameraReaderOutput *)v12 objectInternal];
        [v32 setDayValue:?];
      }

      [v35 addObject:?];
    }

    v33 = [*(a1 + 32) callbackDelegate];
    [v33 cameraReader:? didRecognizedNewObjects:?];
  }
}

- (void)sendDidEndAnimation
{
  v3 = dispatch_time(0, 500000000);
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CRCameraReader_sendDidEndAnimation__block_invoke;
  block[3] = &unk_278EAA5E8;
  block[4] = self;
  dispatch_after(v3, delegateQueue, block);
}

void __37__CRCameraReader_sendDidEndAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callbackDelegate];
  [v1 cameraReaderDidEnd:?];
}

- (void)sendDidEndWithError:(id)error
{
  errorCopy = error;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CRCameraReader_sendDidEndWithError___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = errorCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

void *__38__CRCameraReader_sendDidEndWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) didSendEndOrCancel];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setDidSendEndOrCancel:?];
    v3 = [*(a1 + 32) callbackDelegate];
    [v3 cameraReader:? didFailWithError:?];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setPinnedFoundInfo:?];

    [*(a1 + 32) setFoundCode:?];
    v5 = *(a1 + 32);

    return [v5 setPreviousCode:?];
  }

  return result;
}

- (id)attributedStringWithFrame:(CGSize)frame withFont:(id)font withString:(id)string color:(CGColor *)color
{
  height = frame.height;
  width = frame.width;
  name = font;
  stringCopy = string;
  v29 = objc_opt_new();
  [v29 setAlignment:?];
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = width;
  v32.size.height = height;
  path = CGPathCreateWithRect(v32, 0);
  v9 = 0;
  v10 = 512;
  v11 = 256;
  do
  {
    v12 = CTFontCreateWithName(name, v10, 0);
    v13 = objc_alloc(MEMORY[0x277CCA898]);
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v15 = [v13 initWithString:? attributes:?];

    v16 = CTFramesetterCreateWithAttributedString(v15);
    v31.location = 0;
    v31.length = 0;
    Frame = CTFramesetterCreateFrame(v16, v31, path, 0);
    length = CTFrameGetVisibleStringRange(Frame).length;
    v19 = [(__CFAttributedString *)v15 length];
    v20 = v11 >> 1;
    if (v11 >> 1 <= 1)
    {
      v20 = 1;
    }

    v21 = v19 > length;
    v22 = v19 > length;
    if (v22)
    {
      v23 = -v11;
    }

    else
    {
      v23 = v11;
    }

    v10 += v23;
    if (v21)
    {
      v11 = v20;
    }

    else
    {
      v24 = v11 >= 4;
      if (v11 < 4)
      {
        v11 = v20;
      }

      else
      {
        v22 = 1;
        v11 = 1;
      }

      if (v24)
      {
        v10 += 2 * v20;
      }
    }

    CFRelease(Frame);
    CFRelease(v16);
    CFRelease(v12);
    v9 = v15;
  }

  while (v22);
  CGPathRelease(path);

  return v15;
}

- (id)createTextLayerForRecognizedObject:(id)object
{
  objectCopy = object;
  overlayString = [objectCopy overlayString];

  if (overlayString)
  {
    [objectCopy boundingBox];
    sessionManager = [(CRCameraReader *)self sessionManager];
    sessionManager2 = [(CRCameraReader *)self sessionManager];
    previewLayer = [sessionManager2 previewLayer];
    [sessionManager convertCameraPointOCR:? toLayer:? flipped:?];
    v10 = v9;
    v12 = v11;

    sessionManager3 = [(CRCameraReader *)self sessionManager];
    sessionManager4 = [(CRCameraReader *)self sessionManager];
    previewLayer2 = [sessionManager4 previewLayer];
    [sessionManager3 convertCameraPointOCR:? toLayer:? flipped:?];
    v17 = v16;

    sessionManager5 = [(CRCameraReader *)self sessionManager];
    sessionManager6 = [(CRCameraReader *)self sessionManager];
    previewLayer3 = [sessionManager6 previewLayer];
    [sessionManager5 convertCameraPointOCR:? toLayer:? flipped:?];

    sessionManager7 = [(CRCameraReader *)self sessionManager];
    sessionManager8 = [(CRCameraReader *)self sessionManager];
    previewLayer4 = [sessionManager8 previewLayer];
    [sessionManager7 convertCameraPointOCR:? toLayer:? flipped:?];
    v25 = v24;

    v36.size.width = v25 - v10;
    v36.size.height = v17 - v12;
    v36.origin.x = v10;
    v36.origin.y = v12;
    CGRectOffset(v36, -(v25 - v10), 0.0);
    overlayString = [MEMORY[0x277CD9FC8] layer];
    v26 = +[CRColor whiteColor];
    [v26 CGColor];
    [overlayString setBackgroundColor:?];

    [(CRCameraReader *)self ocrOverlayBackgroundOpacity];
    [overlayString setOpacity:?];
    v27 = +[CRColor blackColor];
    [v27 CGColor];
    [overlayString setForegroundColor:?];

    [overlayString setFrame:?];
    [overlayString setAlignmentMode:?];
    [overlayString setFontSize:?];
    [objectCopy rotation];
    CATransform3DMakeRotation(&v34, -v28, 0.0, 0.0, 1.0);
    [overlayString setTransform:{*&v34.m11, *&v34.m12, *&v34.m13, *&v34.m14, *&v34.m21, *&v34.m22, *&v34.m23, *&v34.m24, *&v34.m31, *&v34.m32, *&v34.m33, *&v34.m34, *&v34.m41, *&v34.m42, *&v34.m43, *&v34.m44}];
    [overlayString setAllowsFontSubpixelQuantization:?];
    [overlayString setMasksToBounds:?];
    [overlayString setCornerRadius:?];
    ocrOverlayFontName = [(CRCameraReader *)self ocrOverlayFontName];
    overlayString2 = [objectCopy overlayString];
    string = [overlayString2 string];
    [overlayString foregroundColor];
    v32 = [CRCameraReader attributedStringWithFrame:"attributedStringWithFrame:withFont:withString:color:" withFont:? withString:? color:?];
    [overlayString setString:?];
  }

  return overlayString;
}

- (void)showTextDetectorObjects:(id)objects
{
  objectsCopy = objects;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CRCameraReader_showTextDetectorObjects___block_invoke;
  v6[3] = &unk_278EAA6D0;
  v6[4] = self;
  v7 = objectsCopy;
  v5 = objectsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __42__CRCameraReader_showTextDetectorObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textDetectorRTFeedback];
  v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
  if (v3)
  {
    v4 = MEMORY[0];
    do
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (MEMORY[0] != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(8 * i) removeFromSuperlayer];
      }

      v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v3);
  }

  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
  if (v7)
  {
    v8 = MEMORY[0];
    do
    {
      for (j = 0; j != v7; j = (j + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(a1 + 32) createTextLayerForRecognizedObject:?];
        v11 = [*(a1 + 32) view];
        v12 = [v11 layer];
        [v12 addSublayer:?];

        v13 = [*(a1 + 32) textDetectorRTFeedback];
        [v13 addObject:?];
      }

      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }
}

- (void)sendDidDisplayMessageStyle:(int64_t)style
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CRCameraReader_sendDidDisplayMessageStyle___block_invoke;
  v3[3] = &unk_278EAA6F8;
  v3[4] = self;
  v3[5] = style;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __45__CRCameraReader_sendDidDisplayMessageStyle___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    v2 = [*(a1 + 32) activityIndicator];
    [v2 stopAnimating];

    if (*(a1 + 40) != 1)
    {
      v3 = [*(a1 + 32) callbackDelegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = [*(a1 + 32) callbackDelegate];
        [v5 cameraReaderDidDisplayMessage:?];
      }

      if (*(a1 + 40) != 2)
      {
        v6 = *(a1 + 32);

        [v6 startSession];
      }
    }
  }
}

- (void)sendDidFindTarget:(id)target frameTime:(id *)time
{
  targetCopy = target;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CRCameraReader_sendDidFindTarget_frameTime___block_invoke;
  v9[3] = &unk_278EAA830;
  v9[4] = self;
  v11 = *time;
  v8 = targetCopy;
  v10 = v8;
  cr_dispatch_async(delegateQueue, v9);
}

void __46__CRCameraReader_sendDidFindTarget_frameTime___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) didSendFindBox] & 1) == 0)
  {
    [*(a1 + 32) setDidSendFindBox:?];
    v2 = [*(a1 + 32) callbackDelegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) callbackDelegate];
      [v4 cameraReaderDidFindTarget:?];
    }
  }

  v9 = *(a1 + 48);
  if (*(a1 + 32))
  {
    [&v8 lastSendFindBox];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  lhs = v9;
  rhs = v8;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) > 1.0)
  {
    time = *(a1 + 48);
    [*(a1 + 32) setLastSendFindBox:?];
    v5 = [*(a1 + 32) callbackDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) callbackDelegate];
      [v7 cameraReaderDidFindTarget:? withCorners:?];
    }
  }
}

- (void)sendDidEndWithErrorDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(CRCameraReader *)self sendDidEndWithError:?];
}

- (NSArray)outputObjectTypes
{
  v2 = [(NSArray *)self->_outputObjectTypes copy];

  return v2;
}

- (void)setOutputObjectTypes:(id)types
{
  typesCopy = types;
  if (self->_outputObjectTypes != typesCopy)
  {
    objc_storeStrong(&self->_outputObjectTypes, types);
    [(CRCameraReader *)self releaseCorrectedCardBuffer];
    [(CRCameraReader *)self createCorrectedCardBuffer];
    if ([(NSArray *)self->_outputObjectTypes containsObject:?])
    {
      v6 = MEMORY[0x277CBEB38];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v8 = [v6 dictionaryWithDictionary:?];

      optionsDictionary = [(CRCameraReader *)self optionsDictionary];
      LOBYTE(v7) = optionsDictionary == 0;

      if ((v7 & 1) == 0)
      {
        optionsDictionary2 = [(CRCameraReader *)self optionsDictionary];
        [v8 addEntriesFromDictionary:?];
      }

      v11 = [v8 objectForKey:?];
      v12 = [v11 isEqualToString:?];

      if (v12)
      {
        [v8 setObject:? forKey:?];
      }

      v13 = [objc_alloc(MEMORY[0x277D70090]) initWithOptions:?];
      [(CRCameraReader *)self setOcrImageReader:?];

      ocrImageReader = [(CRCameraReader *)self ocrImageReader];
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:*MEMORY[0x277D70058] count:?];
      [ocrImageReader setOutputObjectTypes:?];

      v16 = objc_opt_new();
      [(CRCameraReader *)self setTextDetectorRTFeedback:?];

      [(CRCameraReader *)self setOcrOverlayBackgroundOpacity:?];
      [(CRCameraReader *)self setOcrOverlayFontName:?];
    }
  }
}

- (void)setOutputCapturedImageWidth:(unint64_t)width
{
  if (width > 0x5FF)
  {
    if (self->_outputCapturedImageWidth != width)
    {
      self->_outputCapturedImageWidth = width;
      self->_outputCapturedImageHeight = [objc_opt_class() capturedCardHeightForTargetWidth:?];
      [(CRCameraReader *)self releaseCorrectedCardBuffer];

      [(CRCameraReader *)self createCorrectedCardBuffer];
    }
  }

  else
  {
    NSLog(&cfstr_IgnoringAttemp.isa, a2, width, 1536);
  }
}

- (void)setHidePlacementText:(BOOL)text
{
  self->_hidePlacementText = text;
  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  instructionLayer = [alignmentLayer instructionLayer];
  [instructionLayer setHidden:?];
}

- (id)generateStringFromDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:?];
  v5 = [v4 stringFromDate:?];

  return v5;
}

- (void)updateContactsCache:(id)cache
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:?] == 3)
  {
    v5 = *MEMORY[0x277CBD000];
    v26 = *MEMORY[0x277CBCFF8];
    v27 = v5;
    v6 = *MEMORY[0x277CBD0B0];
    v28 = *MEMORY[0x277CBD058];
    v29 = v6;
    v7 = *MEMORY[0x277CBD078];
    v30 = *MEMORY[0x277CBD0A8];
    v31 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v9 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:?];
    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    previousContactMatches = [(CRCameraReader *)self previousContactMatches];
    [previousContactMatches removeAllObjects];

    v25 = 0;
    v12 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch:? error:?];
    v13 = v25;
    v14 = [dictionary objectForKey:?];
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12 == 0;
    }

    v16 = !v15;

    if (v16)
    {
      v17 = createCachedContact(v12);
      [dictionary setObject:? forKey:?];

      v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      [(CRCameraReader *)self setContactsCache:?];
    }

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __38__CRCameraReader_updateContactsCache___block_invoke;
    v23 = &unk_278EAAA08;
    v24 = dictionary;
    [v10 enumerateContactsWithFetchRequest:? error:? usingBlock:?];
  }

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
  [(CRCameraReader *)self setContactsCache:?];
}

void __38__CRCameraReader_updateContactsCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 identifier];
  v8 = [v6 objectForKey:?];

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = createCachedContact(v12);
    v11 = [v12 identifier];
    [v9 setObject:? forKey:?];
  }

  if ([*(a1 + 32) count] >= 0x1F4)
  {
    *a3 = 1;
  }
}

- (void)mergeInfo:(id)info intoFindInfo:(id)findInfo
{
  findInfoCopy = findInfo;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __41__CRCameraReader_mergeInfo_intoFindInfo___block_invoke;
  v10 = &unk_278EAAA30;
  v11 = findInfoCopy;
  v6 = findInfoCopy;
  [info enumerateKeysAndObjectsUsingBlock:?];
}

void __41__CRCameraReader_mergeInfo_intoFindInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 32) objectForKeyedSubscript:?], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:?];
    v8 = [v7 arrayByAddingObjectsFromArray:?];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

- (id)extractFinalDigitStringFromNumbers:(id)numbers
{
  numbersCopy = numbers;
  if ([numbersCopy count])
  {
    v4 = [numbersCopy objectAtIndex:?];
    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
    invertedSet = [v5 invertedSet];

    v7 = [v4 componentsSeparatedByCharactersInSet:?];
    v8 = [v7 componentsJoinedByString:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGRect)uniformPadRect:(CGRect)rect widthPadding:(float)padding heightPadding:(float)heightPadding width:(double)width height:(double)height
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = fmin(padding, fmin(rect.origin.x, width - CGRectGetMaxX(rect)));
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = fmin(heightPadding, fmin(y, height - CGRectGetMaxY(v20)));
  if (v15 <= 0.0 || v14 <= 0.0)
  {
    NSLog(&cfstr_Corerecognitio.isa, *&v14, *&v15);
  }

  else
  {
    v16 = fmin(v14 / width, v15 / height);
    v17 = -(height * v16);
    v18 = -(width * v16);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v17, v18);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v26.size.width = width;
  v26.size.height = height;
  v24 = CGRectIntersection(v23, v26);

  return CGRectIntegral(v24);
}

+ (CGRect)aspectRatioPaddedRect:(CGRect)rect expectedWidth:(double)width height:(double)height orientation:(unsigned int)orientation
{
  width = rect.size.width;
  height = rect.size.height;
  x = rect.origin.x;
  y = rect.origin.y;
  v11 = width / height;
  if (orientation != 6)
  {
    width = rect.size.width;
    height = rect.size.height;
    x = rect.origin.x;
    y = rect.origin.y;
    if (orientation != 8)
    {
      width = rect.size.height;
      height = rect.size.width;
      x = rect.origin.y;
      y = rect.origin.x;
    }
  }

  if (width / height <= v11)
  {
    if (v11 <= width / height)
    {
      goto LABEL_22;
    }

    v14 = (height * width / height - width) * 0.5;
    v13 = 0.0;
    if (x >= v14)
    {
      x = v14;
    }

    else
    {
      v13 = (v14 - x) * height / width;
    }

    if (orientation != 8 && orientation != 6)
    {
      v15 = -x;
      goto LABEL_14;
    }

    v16 = -x;
LABEL_20:
    v15 = v13;
    goto LABEL_21;
  }

  v12 = (width * height / width - height) * 0.5;
  v13 = 0.0;
  if (y >= v12)
  {
    y = v12;
  }

  else
  {
    v13 = (v12 - y) * width / height;
  }

  if (orientation != 8 && orientation != 6)
  {
    v16 = -y;
    goto LABEL_20;
  }

  v15 = -y;
LABEL_14:
  v16 = v13;
LABEL_21:
  rect = CGRectInset(rect, v16, v15);
LABEL_22:

  return CGRectIntegral(rect);
}

+ (id)perspectiveCorrectedImage:(id)image p1:(CGPoint)p1 p2:(CGPoint)p2 p3:(CGPoint)p3 p4:(CGPoint)p4
{
  imageCopy = image;
  v8 = [MEMORY[0x277CBF750] filterWithName:?];
  v9 = [MEMORY[0x277CBF788] vectorWithCGPoint:?];
  [v8 setValue:? forKey:?];

  v10 = [MEMORY[0x277CBF788] vectorWithCGPoint:?];
  [v8 setValue:? forKey:?];

  v11 = [MEMORY[0x277CBF788] vectorWithCGPoint:?];
  [v8 setValue:? forKey:?];

  v12 = [MEMORY[0x277CBF788] vectorWithCGPoint:?];
  [v8 setValue:? forKey:?];

  [v8 setValue:? forKey:?];
  v13 = [v8 valueForKey:?];

  return v13;
}

+ (id)scaledImage:(id)image width:(double)width height:(double)height
{
  imageCopy = image;
  [imageCopy extent];
  v9 = v8;
  [imageCopy extent];
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, width / v9, height / v10);
  v11 = [imageCopy imageByApplyingTransform:{*&v13.a, *&v13.b, *&v13.c, *&v13.d, *&v13.tx, *&v13.ty}];

  return v11;
}

+ (id)platformImageFromCIImage:(id)image
{
  imageCopy = image;
  v4 = [MEMORY[0x277CBF740] contextWithOptions:?];
  [imageCopy extent];
  v5 = [v4 createCGImage:? fromRect:?];
  v6 = [MEMORY[0x277D755B8] imageWithCGImage:?];
  CGImageRelease(v5);

  return v6;
}

- (CRCameraReaderDelegate)callbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

  return WeakRetained;
}

@end