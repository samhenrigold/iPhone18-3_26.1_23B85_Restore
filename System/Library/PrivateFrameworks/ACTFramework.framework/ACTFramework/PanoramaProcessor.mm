@interface PanoramaProcessor
+ (void)prewarm;
- (CGRect)getCropRect;
- (float)getCurrentPanningSpeed;
- (id)encodedFinalAsset;
- (id)init:(id *)init;
- (int)_addLastSlice;
- (int)_commonInitWithContext:(id)context sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height bitDepth:(int)depth;
- (int)_createDummyOutputWidth:(unint64_t)width height:(unint64_t)height;
- (int)addFrame:(opaqueCMSampleBuffer *)frame registrationCallback:(id)callback;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)process;
- (int)resetState;
- (int)setDirection:(int)direction;
- (int)setParameters:(id *)parameters;
- (uint64_t)addFrameForStitching:(double)stitching withInitialHomography:(double)homography registrationCallback:(uint64_t)callback;
- (void)_setPreviousFrameDroppedFlag:(opaqueCMSampleBuffer *)flag dropped:(BOOL)dropped;
- (void)dealloc;
@end

@implementation PanoramaProcessor

- (void)dealloc
{
  toACTFramework = self->_toACTFramework;
  if (toACTFramework)
  {
    CVPixelBufferRelease(toACTFramework);
    self->_toACTFramework = 0;
  }

  vtTransferSession = self->_vtTransferSession;
  if (vtTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtTransferSession);
    CFRelease(self->_vtTransferSession);
    self->_vtTransferSession = 0;
  }

  vtRotationSession = self->_vtRotationSession;
  if (vtRotationSession)
  {
    VTPixelRotationSessionInvalidate(vtRotationSession);
    CFRelease(self->_vtRotationSession);
    self->_vtRotationSession = 0;
  }

  downsampledRegistrationPool = self->_downsampledRegistrationPool;
  if (downsampledRegistrationPool)
  {
    CVPixelBufferPoolRelease(downsampledRegistrationPool);
    self->_downsampledRegistrationPool = 0;
  }

  inputSlicePool = self->_inputSlicePool;
  if (inputSlicePool)
  {
    CVPixelBufferPoolRelease(inputSlicePool);
    self->_inputSlicePool = 0;
  }

  v8.receiver = self;
  v8.super_class = PanoramaProcessor;
  [(PanoramaProcessor *)&v8 dealloc];
}

- (void)_setPreviousFrameDroppedFlag:(opaqueCMSampleBuffer *)flag dropped:(BOOL)dropped
{
  droppedCopy = dropped;
  v6 = CMGetAttachment(flag, @"MetadataDictionary", 0);
  if (v6)
  {
    v7 = v6;
    value = [v6 mutableCopy];
  }

  else
  {
    value = objc_opt_new();
  }

  if (droppedCopy)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  [value setObject:v8 forKeyedSubscript:@"PreviousFrameDropped"];
  CMSetAttachment(flag, @"MetadataDictionary", value, 1u);
}

- (int)addFrame:(opaqueCMSampleBuffer *)frame registrationCallback:(id)callback
{
  callbackCopy = callback;
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(frame);
  CVPixelBufferGetWidth(ImageBuffer);
  CVPixelBufferGetHeight(ImageBuffer);
  v7 = CMGetAttachment(frame, @"MetadataDictionary", 0);
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_nbFramesReceived];
  [v7 setObject:v8 forKeyedSubscript:?];

  if (self->_nbFramesReceived)
  {
    v9 = &unk_284F106E8;
  }

  else
  {
    v9 = &unk_284F10718;
  }

  [v7 setObject:v9 forKeyedSubscript:?];
  if (self->_nbFramesReceived)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = MEMORY[0x277CBEC28];
  }

  [v7 setObject:v10 forKeyedSubscript:@"SkipFrame"];
  ++self->_nbFramesReceived;
  v11 = CMGetAttachment(frame, @"ClientSpecifiedMetadata", 0);
  v12 = [v11 mutableCopy];

  v13 = CMGetAttachment(ImageBuffer, @"MetadataDictionary", 0);
  v14 = v13;
  if (v13 && [v13 count])
  {
    v15 = [v14 mutableCopy];
    v16 = v15;
    if (v12)
    {
      [v15 addEntriesFromDictionary:v12];
    }
  }

  else
  {
    v16 = v12;
  }

  v42 = v14;
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277CF5C30]];
  if (!v17)
  {
    v17 = *MEMORY[0x277CF3CD8];
  }

  v49 = -559038737;
  v18 = MEMORY[0x277CCAC80];
  v19 = [(NSDictionary *)self->tuningParameters objectForKeyedSubscript:@"DefaultSensorIDs"];
  v41 = v17;
  v20 = [v19 objectForKeyedSubscript:v17];
  v21 = [v18 scannerWithString:v20];
  [v21 scanHexInt:&v49];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v49];
  v23 = *MEMORY[0x277CF5168];
  [v16 setObject:v22 forKeyedSubscript:*MEMORY[0x277CF5168]];

  v24 = [v16 objectForKey:v23];
  self->_sensorID = [v24 unsignedIntValue];

  v25 = [v7 objectForKey:@"SkipFrame"];
  v26 = v25;
  if (v25 && [v25 BOOLValue])
  {
    ++self->_nbFramesSkipped;
    v27 = [v7 objectForKeyedSubscript:@"SliceNumber"];
    intValue = [v27 intValue];
    HostTime = ACT_getHostTime();
    CMSampleBufferGetPresentationTimeStamp(&time, frame);
    Seconds = CMTimeGetSeconds(&time);
    panoLog(32, "FrameID:%04d time %.3f: frame skipped PTS:%.3f , total frames skipped %zu\n", intValue, HostTime, Seconds, self->_nbFramesSkipped);
    SampleBuffer = 0;
    v32 = 1;
  }

  else
  {
    CVPixelBufferPoolCreatePixelBuffer(0, self->_inputSlicePool, &pixelBufferOut);
    scalePixelBuffer(self->_vtTransferSession, ImageBuffer, pixelBufferOut);
    ++self->_poolOccupancy;
    SampleBuffer = CreateSampleBuffer();
    CVPixelBufferRelease(pixelBufferOut);
    v33 = [v7 copy];
    CMSetAttachment(SampleBuffer, @"MetadataDictionary", v33, 1u);

    v34 = pixelBufferOut;
    v27 = [v16 copy];
    CMSetAttachment(v34, @"MetadataDictionary", v27, 1u);
    v32 = 0;
  }

  if (frame)
  {
    CFRelease(frame);
  }

  v35 = [v7 objectForKeyedSubscript:@"SliceType"];
  intValue2 = [v35 intValue];

  v37 = [v7 objectForKeyedSubscript:@"SliceNumber"];
  intValue3 = [v37 intValue];

  [(PanoramaGyroStage *)self->_gyroStage update:v16 sliceType:intValue2 sliceID:intValue3];
  if ((v32 & 1) == 0)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C463530;
    block[3] = &unk_278BBD968;
    block[4] = self;
    v45 = v7;
    v47 = SampleBuffer;
    v46 = callbackCopy;
    dispatch_async(processingQueue, block);
  }

  return 0;
}

- (int)finishProcessing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23C475548;
  v5[3] = &unk_278BBD990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)_createDummyOutputWidth:(unint64_t)width height:(unint64_t)height
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = *MEMORY[0x277CC4DE8];
  v15[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = objc_opt_new();
  CVPixelFormat = self->_CVPixelFormat;
  v10 = v7;
  CVPixelBufferCreate(0, width, height, CVPixelFormat, v10, &v13);
  [(PanoramaOutput *)v8 setPixelBuffer:v13];
  output = self->_output;
  self->_output = v8;

  return 0;
}

- (int)prepareToProcess:(unsigned int)process
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C475640;
  block[3] = &unk_278BBD9B8;
  processCopy = process;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(processingQueue, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)encodedFinalAsset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_23C463B38;
  v11 = sub_23C463B48;
  v12 = objc_opt_new();
  processingQueue = self->_processingQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23C47585C;
  v6[3] = &unk_278BBD990;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int)resetState
{
  [(PanoramaRegistrationStage *)self->_registrationStage resetState];
  [(PanoramaParallaxStage *)self->_parallaxStage resetState];
  [(PanoramaStitchingStage *)self->_stitchingStage resetState];
  [(PanoramaAssemblyStage *)self->_assemblyStage resetState];
  [(PanoramaGyroStage *)self->_gyroStage resetState];
  [(PanoramaRectanglingStage *)self->_rectanglingStage resetState];
  self->_poolOccupancy = 0;
  self->_prevFrameDropped = 0;
  self->_hasStitchedSlicesWithNoError = 0;
  self->_curPixbufToStitch = 0;
  self->_nbFramesSkipped = 0;
  self->_nbFramesDropped = 0;
  self->_nbFramesReceived = 0;
  return 0;
}

- (int)setDirection:(int)direction
{
  v3 = *&direction;
  self->_direction = direction;
  [(PanoramaRegistrationStage *)self->_registrationStage setDirection:?];
  [(PanoramaParallaxStage *)self->_parallaxStage setDirection:v3];
  [(PanoramaStitchingStage *)self->_stitchingStage setDirection:v3];
  [(PanoramaAssemblyStage *)self->_assemblyStage setDirection:v3];
  [(PanoramaRectanglingStage *)self->_rectanglingStage setDirection:v3];
  return 0;
}

- (int)setParameters:(id *)parameters
{
  *&self->_params.sliceWidth = *&parameters->var0;
  v3 = *&parameters->var2;
  v4 = *&parameters->var4;
  v5 = *&parameters->var8;
  *&self->_params.bitDepth = *&parameters->var13;
  *&self->_params.enableTranslationCorrection = v4;
  *&self->_params.atlasTranslationShiftHighThreshold = v5;
  *&self->_params.panoWidth = v3;
  return 0;
}

- (CGRect)getCropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)getCurrentPanningSpeed
{
  v3 = -1.0;
  if (FigCapturePlatformIdentifier() >= 11)
  {
    PanningSpeedScalingFactorFromSensorID = getPanningSpeedScalingFactorFromSensorID(self->_sensorID);
    if (PanningSpeedScalingFactorFromSensorID > 0.0)
    {
      v5 = PanningSpeedScalingFactorFromSensorID;
      [(PanoramaGyroStage *)self->_gyroStage currentRotationRate];
      *&v6 = v6;
      return v5 * *&v6;
    }
  }

  return v3;
}

+ (void)prewarm
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x277CF6C78]) initWithbundle:v2 andOptionalCommandQueue:0];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v4 = [[PanoramaRegistrationStage alloc] initWithContext:v3];
  if (!v4)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [[PanoramaParallaxStage alloc] initWithContext:v3 bitDepth:0];
  if (!v5)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = [[PanoramaStitchingStage alloc] initWithContext:v3 bitDepth:0];
  if (!v6)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_8;
  }

  *v10 = xmmword_23C47A9B0;
  memset(&v10[4], 0, 44);
  v11 = 1;
  v12[0] = 0;
  *(v12 + 7) = 0;
  v7 = [[PanoramaAssemblyStage alloc] initWithContext:v3 robustPanoParams:v10];
  if (v7)
  {
    v8 = [[ACTPanoGPUDownscaler alloc] initWithContext:v3];
    if (v8)
    {
      v9 = v8;
    }
  }

LABEL_8:
}

- (id)init:(id *)init
{
  v11.receiver = self;
  v11.super_class = PanoramaProcessor;
  v4 = [(PanoramaProcessor *)&v11 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    memcpy(__dst, init, sizeof(__dst));
    [(PanoramaProcessor *)v4 setParameters:__dst];
    v6 = [objc_alloc(MEMORY[0x277CF6C78]) initWithbundle:v5 andOptionalCommandQueue:0];
    var13 = init->var13;
    v4->_bitDepth = var13;
    v4->_CVPixelFormat = getCVPixelFormat(var13);
    if ([(PanoramaProcessor *)v4 _commonInitWithContext:v6 sliceWidth:init->var0 sliceHeight:init->var1 bitDepth:init->var13])
    {
      v8 = 0;
    }

    else
    {
      fig_note_initialize_category_with_default_work();
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
  }

  return v8;
}

- (int)_commonInitWithContext:(id)context sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height bitDepth:(int)depth
{
  v92[5] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  heightCopy = 0;
  widthCopy = 0;
  objc_storeStrong(&self->_metal, context);
  mEMORY[0x277CF3B80] = [MEMORY[0x277CF3B80] sharedInstance];
  cameraParameters = [mEMORY[0x277CF3B80] cameraParameters];
  cameraSetupPlist = self->_cameraSetupPlist;
  self->_cameraSetupPlist = cameraParameters;

  v13 = [[PanoramaRegistrationStage alloc] initWithContext:self->_metal];
  registrationStage = self->_registrationStage;
  self->_registrationStage = v13;

  if (!self->_registrationStage || (v15 = [[PanoramaParallaxStage alloc] initWithContext:self->_metal bitDepth:self->_bitDepth], parallaxStage = self->_parallaxStage, self->_parallaxStage = v15, parallaxStage, !self->_parallaxStage) || (v17 = [[PanoramaStitchingStage alloc] initWithContext:self->_metal bitDepth:self->_bitDepth], stitchingStage = self->_stitchingStage, self->_stitchingStage = v17, stitchingStage, !self->_stitchingStage) || (v19 = [PanoramaAssemblyStage alloc], metal = self->_metal, memcpy(__dst, &self->_params, sizeof(__dst)), v21 = [(PanoramaAssemblyStage *)v19 initWithContext:metal robustPanoParams:__dst], assemblyStage = self->_assemblyStage, self->_assemblyStage = v21, assemblyStage, !self->_assemblyStage) || ([(PanoramaProcessor *)self setRegistrationProvider:self->_registrationStage], v23 = [[ACTPanoGPUDownscaler alloc] initWithContext:self->_metal], downscaler = self->_downscaler, self->_downscaler = v23, downscaler, !self->_downscaler) || (v25 = dispatch_queue_create("PanoramaProcessing", 0), processingQueue = self->_processingQueue, self->_processingQueue = v25, processingQueue, !self->_processingQueue) || (v27 = [[PanoramaRectanglingStage alloc] initWithContext:self->_metal], rectanglingStage = self->_rectanglingStage, self->_rectanglingStage = v27, rectanglingStage, !self->_rectanglingStage) || (v29 = objc_alloc_init(PanoramaGyroStage), gyroStage = self->_gyroStage, self->_gyroStage = v29, gyroStage, !self->_gyroStage))
  {
    v40 = 0;
    v39 = 0;
    goto LABEL_26;
  }

  v31 = VTPixelTransferSessionCreate(0, &self->_vtTransferSession);
  if (v31 || (v31 = VTPixelRotationSessionCreate(0, &self->_vtRotationSession)) != 0)
  {
    v64 = v31;
    v40 = 0;
    v39 = 0;
    goto LABEL_23;
  }

  self->_doParallaxCorrection = 1;
  self->_direction = 1;
  v32 = [(NSDictionary *)self->_cameraSetupPlist objectForKeyedSubscript:@"TuningParameters"];
  v33 = [v32 objectForKey:@"Common"];
  v34 = [v33 objectForKey:@"NRFParameters"];
  v35 = [v34 objectForKey:@"Version"];
  intValue = [v35 intValue];

  v37 = MEMORY[0x277CCA8D8];
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/VideoProcessors/NRFV%d.bundle", intValue];
  v39 = [v37 bundleWithPath:v38];

  if (!v39)
  {
    goto LABEL_28;
  }

  v79 = 0;
  [v39 loadAndReturnError:&v79];
  v40 = v79;
  if (v40)
  {
LABEL_26:
    v64 = 2;
    goto LABEL_23;
  }

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"NRFProcessorV%d", intValue];
  v42 = [v39 classNamed:v41];

  if (!v42)
  {
LABEL_28:
    v40 = 0;
    goto LABEL_26;
  }

  v77 = contextCopy;
  v43 = [[v42 alloc] initWithCommandQueue:0];
  nrfProcessor = self->_nrfProcessor;
  self->_nrfProcessor = v43;

  v45 = [(NSDictionary *)self->_cameraSetupPlist objectForKeyedSubscript:@"TuningParameters"];
  [(PanoramaProcessor *)self setTuningParameters:v45];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v47 = objc_alloc_init(NSClassFromString(&cfstr_Nrfpreparedesc.isa));
  [v47 setWidth:LODWORD(self->_params.panoWidth)];
  [v47 setHeight:height];
  [v47 setPixelFormat:875704422];
  if (self->_params.useNRFTypePano)
  {
    v48 = 8;
  }

  else
  {
    v48 = 0;
  }

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48];
  [dictionary setObject:v47 forKeyedSubscript:v49];

  v50 = *MEMORY[0x277CF6950];
  v91[0] = *MEMORY[0x277CF4088];
  v91[1] = v50;
  v92[0] = v45;
  v92[1] = &unk_284F106B8;
  v51 = *MEMORY[0x277CF6958];
  v91[2] = *MEMORY[0x277CF6948];
  v91[3] = v51;
  v92[2] = &unk_284F106D0;
  v92[3] = &unk_284F106E8;
  v91[4] = *MEMORY[0x277CF6970];
  v92[4] = dictionary;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:5];
  v53 = [(NRFProcessor *)self->_nrfProcessor setupWithOptions:v52];
  if (v53)
  {
    v64 = v53;

LABEL_31:
    v40 = 0;
    goto LABEL_23;
  }

  [(NRFProcessor *)self->_nrfProcessor setFusionMode:1];
  [(PanoramaAssemblyStage *)self->_assemblyStage setNrfProcessor:self->_nrfProcessor];

  heightCopy = height;
  widthCopy = width;
  v54 = setDownscaledResolution(&widthCopy, &heightCopy, 3uLL, 0x3E8uLL, 0xBDuLL);
  if (v54)
  {
    v64 = v54;
    goto LABEL_31;
  }

  heightCopy2 = height;
  v76 = v39;
  v74 = *MEMORY[0x277CC4E50];
  v89 = *MEMORY[0x277CC4E50];
  v90 = &unk_284F10700;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
  v56 = *MEMORY[0x277CC4DE8];
  v88[0] = MEMORY[0x277CBEC10];
  v57 = *MEMORY[0x277CC4EC8];
  v87[0] = v56;
  v87[1] = v57;
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:widthCopy];
  v88[1] = v58;
  v59 = *MEMORY[0x277CC4DD8];
  v87[2] = *MEMORY[0x277CC4DD8];
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:heightCopy];
  v88[2] = v60;
  v61 = *MEMORY[0x277CC4E30];
  v87[3] = *MEMORY[0x277CC4E30];
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_CVPixelFormat];
  v88[3] = v62;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:4];

  v64 = CVPixelBufferPoolCreate(0, v55, v63, &self->_downsampledRegistrationPool);
  if (v64 || (v85 = v74, v86 = &unk_284F10700, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1], v65 = objc_claimAutoreleasedReturnValue(), v84[0] = MEMORY[0x277CBEC10], v83[0] = v56, v83[1] = v57, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", width), v66 = objc_claimAutoreleasedReturnValue(), v84[1] = v66, v83[2] = v59, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", heightCopy2), v67 = objc_claimAutoreleasedReturnValue(), v84[2] = v67, v83[3] = v61, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", self->_CVPixelFormat), v68 = objc_claimAutoreleasedReturnValue(), v84[3] = v68, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v84, v83, 4), v69 = objc_claimAutoreleasedReturnValue(), v68, v67, v66, v70 = v65, v71 = v69, v64 = CVPixelBufferPoolCreate(0, v70, v71, &self->_inputSlicePool), v71, v70, v64))
  {
    v40 = 0;
  }

  else
  {
    self->_poolOccupancy = 0;
    self->_prevFrameDropped = 0;
    self->_hasStitchedSlicesWithNoError = 0;
    self->_toACTFramework = 0;
    self->_curPixbufToStitch = 0;
    self->_nbFramesSkipped = 0;
    self->_nbFramesDropped = 0;
    self->_nbFramesReceived = 0;
    portType = self->_portType;
    self->_portType = 0;

    v40 = 0;
    self->_sensorID = 0;
  }

  v39 = v76;
  contextCopy = v77;
LABEL_23:

  return v64;
}

- (uint64_t)addFrameForStitching:(double)stitching withInitialHomography:(double)homography registrationCallback:(uint64_t)callback
{
  v128 = *MEMORY[0x277D85DE8];
  v9 = a7;
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a6);
  v11 = CMGetAttachment(a6, @"MetadataDictionary", 0);
  v12 = CMGetAttachment(ImageBuffer, @"MetadataDictionary", 0);
  v13 = [v11 objectForKeyedSubscript:@"SliceNumber"];
  intValue = [v13 intValue];

  HostTime = ACT_getHostTime();
  CMSampleBufferGetPresentationTimeStamp(&time, a6);
  Seconds = CMTimeGetSeconds(&time);
  panoLog(32, "FrameID:%04d time %.3f: starting processing PTS:%.3f\n", intValue, HostTime, Seconds);
  if (!intValue)
  {
    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277CF5C30]];
    v18 = *(self + 296);
    *(self + 296) = v17;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, *(self + 88), &pixelBufferOut);
  if (pixelBufferOut)
  {
    SampleBuffer = CreateSampleBuffer();
    CVPixelBufferRelease(pixelBufferOut);
    if (SampleBuffer)
    {
      v20 = 1;
      [*(self + 72) downsample:ImageBuffer to:pixelBufferOut inputBitDepth:*(self + 308) outputBitDepth:1];
      v21 = [v11 copy];
      CMSetAttachment(SampleBuffer, @"MetadataDictionary", v21, 1u);

      *(self + 120) = CVPixelBufferGetWidth(ImageBuffer);
      *(self + 128) = CVPixelBufferGetHeight(ImageBuffer);
      ACT_getHostTime();
      sub_23C463FBC();
      panoLog(32, "FrameID:%04d time %.3f: starting registration\n", v85, *&v90);
      v22 = *(self + 368);
      if (v22)
      {
        [v22 registerNewSlice:SampleBuffer withHFromGyro:v9 registrationCallback:{a2, stitching, homography}];
        *v108 = v24;
        v114 = v23;
        *v102 = v25;
        if ([*(self + 16) hasHomographyFailureFlag])
        {
          sub_23C463FFC();
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v34 = sub_23C4640B4(v26, v27, v28, v29, v30, v31, v32, v33, v86, v91, v95, v98, v102[0], v102[1], v108[0], v108[1], v114, *(&v114 + 1), v119, SBYTE2(v119), BYTE3(v119), SHIDWORD(v119));
          if (v34)
          {
            v41 = @"MetadataDictionary";
          }

          else
          {
            v41 = @"MetadataDictionary" & 0xFFFFFFFE;
          }

          if (v41)
          {
            ACT_getHostTime();
            LODWORD(v123) = 136315650;
            sub_23C463FCC();
            v34 = sub_23C46404C(v42, v43, v44, v45, &dword_23C440000, v46, v47, "<<<< ACTFramework PanoramaIBP >>>> %s: FrameID:%04d time %.3f: registration has FAILURE flag\n", v87, v92, v96, v99, v103, v105, v109, v111, v115, v117, v120, pixelBufferOut, v123, v124, v125, v126);
            v48 = v34;
          }

          else
          {
            v48 = 0;
          }

          sub_23C46401C(v34, v35, v36, v48, v37, v38, v39, v40, v87, v92, v96, v99, v103, v105, v109, v111, v115, v117, v120, HIDWORD(v120), pixelBufferOut, v123, v124, v125, v126, time.value);

          ACT_getHostTime();
          sub_23C463FBC();
          panoLog(4, "FrameID:%04d time %.3f: registration has FAILURE flag\n");
LABEL_30:
          v79 = 0;
          v20 = 0;
LABEL_34:
          CFRelease(SampleBuffer);

          goto LABEL_35;
        }

        if ([*(self + 16) hasRetrogradeMotionFlag])
        {
          sub_23C463FFC();
          v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v57 = sub_23C4640B4(v49, v50, v51, v52, v53, v54, v55, v56, v86, v91, v95, v98, v102[0], v102[1], v108[0], v108[1], v114, *(&v114 + 1), v119, SBYTE2(v119), BYTE3(v119), SHIDWORD(v119));
          if (v57)
          {
            v64 = @"MetadataDictionary";
          }

          else
          {
            v64 = @"MetadataDictionary" & 0xFFFFFFFE;
          }

          if (v64)
          {
            ACT_getHostTime();
            LODWORD(v123) = 136315650;
            sub_23C463FCC();
            v57 = sub_23C46404C(v65, v66, v67, v68, &dword_23C440000, v69, v70, "<<<< ACTFramework PanoramaIBP >>>> %s: FrameID:%04d time %.3f: registration detected possible retrograde motion\n", v88, v93, v97, v100, v104, v106, v110, v112, v116, v118, v121, pixelBufferOut, v123, v124, v125, v126);
            v71 = v57;
          }

          else
          {
            v71 = 0;
          }

          sub_23C46401C(v57, v58, v59, v71, v60, v61, v62, v63, v88, v93, v97, v100, v104, v106, v110, v112, v116, v118, v121, HIDWORD(v121), pixelBufferOut, v123, v124, v125, v126, time.value);

          ACT_getHostTime();
          sub_23C463FBC();
          panoLog(4, "FrameID:%04d time %.3f: registration detected possible retrograde motion\n");
          goto LABEL_30;
        }

        ACT_getHostTime();
        sub_23C463FBC();
        panoLog(32, "FrameID:%04d time %.3f: starting stitching\n", v86, *&v91);
        v72 = [v11 objectForKeyedSubscript:@"SliceType"];
        intValue2 = [v72 intValue];

        v74 = [*(self + 32) addSlice:ImageBuffer sliceHomography:intValue2 sliceType:{*&v114, *v108, *v102}];
        if (v74)
        {
          v20 = v74;
        }

        else
        {
          registrationWeights = [*(self + 16) registrationWeights];
          [*(self + 32) setMotionMask:registrationWeights];

          if (*(self + 328) != 1 || !intValue2)
          {
            *(self + 272) = ImageBuffer;
            stitchingMask = [*(self + 32) stitchingMask];
LABEL_26:
            v79 = stitchingMask;
            ACT_getHostTime();
            sub_23C463FBC();
            panoLog(32, "FrameID:%04d time %.3f: starting assembly\n", v89, *&v94);
            [*(self + 32) roi];
            sub_23C4640A0();
            sub_23C46408C();
            v20 = [v80 addSlice:? metadata:? sliceHomography:? stitchingMask:? roi:? sliceType:?];
            if (!v20)
            {
              v81 = [v12 copy];
              v82 = *(self + 288);
              *(self + 288) = v81;

              *(self + 264) = intValue > 0;
            }

            goto LABEL_34;
          }

          ACT_getHostTime();
          sub_23C463FBC();
          panoLog(32, "FrameID:%04d time %.3f: starting parallax correction\n", v89, *&v94);
          v76 = *(self + 24);
          stitchingMask2 = [*(self + 32) stitchingMask];
          v20 = [v76 addSlice:ImageBuffer mask:stitchingMask2 homography:objc_msgSend(*(self + 368) residualFlow:{"residualFlow"), *&v114, *v108, *v102}];

          if (!v20)
          {
            *(self + 272) = [*(self + 24) warpedFrame];
            stitchingMask = [*(self + 24) warpedMask];
            goto LABEL_26;
          }
        }
      }

      v79 = 0;
      goto LABEL_34;
    }
  }

  v20 = 2;
LABEL_35:
  v83 = ACT_getHostTime();
  panoLog(32, "FrameID:%04d time %.3f: processing done\n\n", intValue, v83);

  return v20;
}

- (int)_addLastSlice
{
  result = [(PanoramaStitchingStage *)self->_stitchingStage addSlice:self->_curPixbufToStitch sliceHomography:2 sliceType:?];
  if (!result)
  {
    stitchingMask = [(PanoramaStitchingStage *)self->_stitchingStage stitchingMask];
    [(PanoramaStitchingStage *)self->_stitchingStage roi];
    sub_23C4640A0();
    sub_23C46408C();
    v6 = [v5 addSlice:? metadata:? sliceHomography:? stitchingMask:? roi:? sliceType:?];

    return v6;
  }

  return result;
}

@end