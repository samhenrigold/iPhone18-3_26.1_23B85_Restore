@interface CMISmartStyleProcessorV1
+ (id)getDefaultProcessorConfigurationForStills;
+ (id)getDefaultProcessorConfigurationForStills3x4;
+ (id)getDefaultProcessorConfigurationForStillsReversibility;
+ (id)getDefaultProcessorConfigurationForStillsReversibility3x4;
+ (id)getDefaultProcessorConfigurationForStreaming;
+ (id)getDefaultProcessorConfigurationForStreamingAccelerated;
+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio;
+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatioWithFilterType:(unint64_t)type;
+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedWithFilterType:(unint64_t)type;
+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatio;
+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:(unint64_t)type;
+ (id)getDefaultProcessorConfigurationForStreamingWithFilterType:(unint64_t)type;
+ (unint64_t)getSmartStyleCoefficientsFilterType:(id)type;
+ (unsigned)getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:(unint64_t)type;
+ (unsigned)getRequiredInputBufferSizeForFilterType:(unint64_t)type;
- (BOOL)requiresReconfigurationForConfiguration:(id)configuration;
- (CMISmartStyleProcessorV1)init;
- (CMISmartStyleProcessorV1)initWithOptionalMetalCommandQueue:(id)queue ispSMGProcessingSession:(OpaqueFigCaptureISPProcessingSession *)session;
- (id)externalMemoryDescriptorForConfiguration:(id)configuration;
- (int)_configureInputLinearPixelBufferForPixelBufferRenderer:(__CVBuffer *)renderer withinputLinearCropRect:(CGRect)rect;
- (int)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(__CVBuffer *)renderer withinputUnstyledCropRect:(CGRect)rect inputUnstyledThumbnailPixelBuffer:(__CVBuffer *)buffer withinputUnstyledThumbnailCropRect:(CGRect)cropRect;
- (int)_configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:(__CVBuffer *)renderer unstyledThumbnailPixelBuffer:(__CVBuffer *)buffer;
- (int)_configureStyleEngineTargetThumbnailPixelBuffer:(__CVBuffer *)buffer inputTargetThumbnailPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)process;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)setup;
- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(double)buffer withinputUnstyledCropRect:(double)rect inputUnstyledThumbnailPixelBuffer:(double)pixelBuffer withinputUnstyledThumbnailCropRect:(double)cropRect inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:(double)generationPixelBuffer withInputUnstyledThumbnailUsedForTargetGenerationCropRect:(double)generationCropRect;
- (uint64_t)finishProcessing;
- (uint64_t)prewarm;
- (uint64_t)process;
- (uint64_t)purgeResources;
- (uint64_t)resetState;
- (uint64_t)setup;
- (unint64_t)_requestedMemSize:(unsigned int)size;
- (unsigned)_pixelFormatCompatibleWithStyleProcessing:(unsigned int)processing;
- (void)dealloc;
- (void)setCameraInfoByPortType:(id)type;
- (void)setConfiguration:(id)configuration;
- (void)setTuningParameters:(id)parameters;
@end

@implementation CMISmartStyleProcessorV1

- (CMISmartStyleProcessorV1)init
{
  v8.receiver = self;
  v8.super_class = CMISmartStyleProcessorV1;
  v2 = [(CMISmartStyleProcessorV1 *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_previousSRLCurveParameter = -1.0;
    v4 = [CMISmartStyleCommonSettings tuningParametersForVariant:0];
    [v4 srlCurrentValueWeight];
    v3->_srlWeight = v5;

    v6 = v3;
  }

  else
  {
    [CMISmartStyleProcessorV1 init];
  }

  return v3;
}

- (CMISmartStyleProcessorV1)initWithOptionalMetalCommandQueue:(id)queue ispSMGProcessingSession:(OpaqueFigCaptureISPProcessingSession *)session
{
  queueCopy = queue;
  v8 = [(CMISmartStyleProcessorV1 *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalCommandQueue, queue);
    ispSMGProcessingSession = v9->_ispSMGProcessingSession;
    v9->_ispSMGProcessingSession = session;
    if (session)
    {
      CFRetain(session);
    }

    if (ispSMGProcessingSession)
    {
      CFRelease(ispSMGProcessingSession);
    }

    v11 = v9;
  }

  else
  {
    [CMISmartStyleProcessorV1 initWithOptionalMetalCommandQueue:ispSMGProcessingSession:];
  }

  return v9;
}

- (void)dealloc
{
  [(CMISmartStyleProcessorV1 *)self finishProcessing];
  [(CMISmartStyleProcessorV1 *)self purgeResources];
  utilities = self->_utilities;
  self->_utilities = 0;

  ispSMGProcessingSession = self->_ispSMGProcessingSession;
  if (ispSMGProcessingSession)
  {
    CFRelease(ispSMGProcessingSession);
    self->_ispSMGProcessingSession = 0;
  }

  v5.receiver = self;
  v5.super_class = CMISmartStyleProcessorV1;
  [(CMISmartStyleProcessorV1 *)&v5 dealloc];
}

- (int)prepareToProcess:(unsigned int)process
{
  v3 = *&process;
  if (self->_processingType == process)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_41;
  }

  self->_processingType = process;
  if (process >= 0x20)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
LABEL_48:
    v14 = 0;
    v13 = 0;
    goto LABEL_61;
  }

  configuration = self->_configuration;
  if (!configuration)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
    goto LABEL_48;
  }

  if (self->_isSetupDone)
  {
    goto LABEL_11;
  }

  styleEngineConfiguration = [(CMISmartStyleProcessorBaseConfiguration *)configuration styleEngineConfiguration];
  v7 = [styleEngineConfiguration copy];

  [v7 setFastStyleApplication:{-[CMISmartStyleProcessorBaseConfiguration conformsToProtocol:](self->_configuration, "conformsToProtocol:", &OBJC_PROTOCOL___CMISmartStyleProcessorStreamingConfiguration)}];
  [v7 setShouldFlushCVMTLTextureCacheAfterProcessing:self->_shouldFlushCVMTLTextureCacheAfterProcessing];
  [v7 setShouldFlushCVMTLBufferCacheAfterProcessing:1];
  styleEngineTuningParameters = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineTuningParameters];
  v9 = [NSMutableDictionary dictionaryWithDictionary:styleEngineTuningParameters];

  [v9 addEntriesFromDictionary:self->_tuningParameters];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v9];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v7];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setIspSMGProcessingSession:self->_ispSMGProcessingSession];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setLabel:self->_instanceLabel];
  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
    LODWORD(v19) = v66[0];
    goto LABEL_53;
  }

  if ([(CMISmartStyleProcessorBaseConfiguration *)self->_configuration conformsToProtocol:&OBJC_PROTOCOL___CMISmartStyleProcessorStreamingConfiguration])
  {
    temporalFilterInputBufferSize = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration temporalFilterInputBufferSize];
  }

  else
  {
    temporalFilterInputBufferSize = 0;
  }

  v11 = [[CMISmartStyleProcessorUtilitiesV1 alloc] initWithStyleEngine:self->_styleEngineProcessor temporalFilterBufferSize:temporalFilterInputBufferSize withMetalContext:self->_metalContext];
  utilities = self->_utilities;
  self->_utilities = v11;

  if (!self->_utilities)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:];
    LODWORD(v19) = 7;
LABEL_53:

    v14 = 0;
    v13 = 0;
    if (v19)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_11:
  v13 = objc_opt_new();
  if (!v13)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
    v14 = 0;
    goto LABEL_61;
  }

  [v13 setMemSize:{-[CMISmartStyleProcessorV1 _requestedMemSize:](self, "_requestedMemSize:", self->_processingType)}];
  [v13 setWireMemory:1];
  [v13 setLabel:@"FigMetalAllocator_SmartStyleMetalRenderer_"];
  if ([(FigMetalAllocator *)self->_cmImagingAllocator memSize])
  {
    v14 = 0;
    goto LABEL_21;
  }

  if (![(CMISmartStyleProcessorV1 *)self supportsExternalMemoryResource]|| (externalMemoryResource = self->_externalMemoryResource) == 0)
  {
    v19 = [(FigMetalAllocator *)self->_cmImagingAllocator setupWithDescriptor:v13];
    v14 = objc_alloc_init(CMIExternalMemoryResource);
    backendAllocator = [(FigMetalAllocator *)self->_cmImagingAllocator backendAllocator];
    [(CMIExternalMemoryResource *)v14 setAllocatorBackend:backendAllocator];

    if (v19)
    {
      [CMISmartStyleProcessorV1 prepareToProcess:v19];
      goto LABEL_44;
    }

    goto LABEL_20;
  }

  v14 = externalMemoryResource;
  allocatorBackend = [(CMIExternalMemoryResource *)self->_externalMemoryResource allocatorBackend];
  v17 = allocatorBackend;
  if (!allocatorBackend)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
    LODWORD(v19) = v66[0];
    goto LABEL_67;
  }

  [v13 setMemSize:{objc_msgSend(allocatorBackend, "memSize")}];
  v18 = [(FigMetalAllocator *)self->_cmImagingAllocator setupWithDescriptor:v13 allocatorBackend:v17];
  if (v18)
  {
    LODWORD(v19) = v18;
    [CMISmartStyleProcessorV1 prepareToProcess:v18];
LABEL_67:

    if (v19)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_20:
  objc_storeStrong(&self->_usedMemoryResource, v14);
LABEL_21:
  v21 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration conformsToProtocol:&OBJC_PROTOCOL___CMISmartStyleProcessorStillImageConfiguration];
  v22 = self->_configuration;
  if (v21)
  {
    v23 = v22;
    [(CMISmartStyleProcessorBaseConfiguration *)v23 intermediateStyleRendererThumbnailSize];
    if (v24 <= 0.0 || ([(CMISmartStyleProcessorBaseConfiguration *)v23 intermediateStyleRendererThumbnailSize], v25 <= 0.0))
    {
      [CMISmartStyleProcessorV1 prepareToProcess:v23];
LABEL_56:
      LODWORD(v19) = 1;
      goto LABEL_44;
    }

LABEL_28:
    [(CMISmartStyleProcessorBaseConfiguration *)v23 intermediateStyleRendererThumbnailSize];
    self->_intermediateStyleRendererThumbnailSize.width = v30;
    self->_intermediateStyleRendererThumbnailSize.height = v31;
    styleEngineConfiguration2 = [(CMISmartStyleProcessorBaseConfiguration *)v23 styleEngineConfiguration];
    [styleEngineConfiguration2 thumbnailSize];
    self->_styleEngineTargetThumbnailSize.width = v33;
    self->_styleEngineTargetThumbnailSize.height = v34;

    goto LABEL_30;
  }

  v26 = [(CMISmartStyleProcessorBaseConfiguration *)v22 conformsToProtocol:&OBJC_PROTOCOL___CMISmartStyleProcessorStreamingConfiguration];
  v27 = self->_configuration;
  if (v26)
  {
    v23 = v27;
    [(CMISmartStyleProcessorBaseConfiguration *)v23 intermediateStyleRendererThumbnailSize];
    if (v28 <= 0.0 || ([(CMISmartStyleProcessorBaseConfiguration *)v23 intermediateStyleRendererThumbnailSize], v29 <= 0.0))
    {
      [CMISmartStyleProcessorV1 prepareToProcess:v23];
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  if (v27)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
    goto LABEL_61;
  }

LABEL_30:
  self->_shouldGenerateTarget = (v3 & 8) != 0;
  self->_shouldEncodeLinear = v3 > 0xF;
  self->_shouldLearn = v3 & 1;
  self->_shouldIntegrate = (v3 & 2) != 0;
  self->_shouldApply = (v3 & 4) != 0;
  if (!v3)
  {
    [CMISmartStyleProcessorV1 prepareToProcess:v66];
    goto LABEL_61;
  }

  if (self->_isSetupDone)
  {
    goto LABEL_37;
  }

  if ((v3 & 8) != 0)
  {
    v35 = [[CMISmartStylePixelBufferRendererV1 alloc] initWithOptionalMetalCommandQueue:self->_metalCommandQueue allocator:self->_cmImagingAllocator];
    smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
    self->_smartStylePixelBufferRenderer = v35;

    v37 = self->_smartStylePixelBufferRenderer;
    if (!v37)
    {
      [CMISmartStyleProcessorV1 prepareToProcess:];
      goto LABEL_64;
    }

    [(CMISmartStylePixelBufferRenderer *)v37 setInstanceLabel:self->_instanceLabel];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setUseLiveMetalAllocations:self->_useLiveMetalAllocations];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setUseSemanticSRLByDefault:self->_useSemanticSRLByDefault];
    if (![(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setup])
    {
      v38 = [[CMISubjectRelightingStage alloc] initWithOptionalMetalCommandQueue:self->_metalCommandQueue];
      subjectRelightingStage = self->_subjectRelightingStage;
      self->_subjectRelightingStage = v38;

      if (self->_subjectRelightingStage)
      {
        goto LABEL_36;
      }

      [CMISmartStyleProcessorV1 prepareToProcess:];
LABEL_64:
      LODWORD(v19) = 7;
      goto LABEL_44;
    }

    [CMISmartStyleProcessorV1 prepareToProcess:v66];
LABEL_61:
    LODWORD(v19) = v66[0];
    if (v66[0])
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_36:
  self->_isSetupDone = 1;
LABEL_37:
  v59 = v14;
  v60 = v13;
  v40 = kCVPixelBufferWidthKey;
  v64[0] = kCVPixelBufferWidthKey;
  v41 = [NSNumber numberWithDouble:self->_intermediateStyleRendererThumbnailSize.width];
  v65[0] = v41;
  v42 = kCVPixelBufferHeightKey;
  v64[1] = kCVPixelBufferHeightKey;
  v43 = [NSNumber numberWithDouble:self->_intermediateStyleRendererThumbnailSize.height];
  v44 = kCVPixelBufferBytesPerRowAlignmentKey;
  v65[1] = v43;
  v65[2] = &off_20830;
  v61 = v3;
  v45 = kCVPixelBufferPlaneAlignmentKey;
  v64[2] = kCVPixelBufferBytesPerRowAlignmentKey;
  v64[3] = kCVPixelBufferPlaneAlignmentKey;
  v46 = kCVPixelBufferMetalCompatibilityKey;
  v65[3] = &off_20830;
  v65[4] = &__kCFBooleanTrue;
  v47 = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v64[4] = kCVPixelBufferMetalCompatibilityKey;
  v64[5] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v48 = kCVPixelBufferIOSurfacePropertiesKey;
  v64[6] = kCVPixelBufferIOSurfacePropertiesKey;
  v65[5] = &__kCFBooleanTrue;
  v65[6] = &__NSDictionary0__struct;
  v49 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:7];
  styleRendererPixelBufferAttributes = self->_styleRendererPixelBufferAttributes;
  self->_styleRendererPixelBufferAttributes = v49;

  v62[0] = v40;
  v51 = [NSNumber numberWithDouble:self->_styleEngineTargetThumbnailSize.width];
  v63[0] = v51;
  v62[1] = v42;
  v52 = [NSNumber numberWithDouble:self->_styleEngineTargetThumbnailSize.height];
  v63[1] = v52;
  v63[2] = &off_20830;
  v62[2] = v44;
  v62[3] = v45;
  v3 = v61;
  v63[3] = &off_20830;
  v63[4] = &__kCFBooleanTrue;
  v63[5] = &__kCFBooleanTrue;
  v62[4] = v46;
  v62[5] = v47;
  v62[6] = v48;
  v63[6] = &__NSDictionary0__struct;
  v53 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:7];
  styleEnginePixelBufferAttributes = self->_styleEnginePixelBufferAttributes;
  self->_styleEnginePixelBufferAttributes = v53;

  v55 = [(CMISmartStyleProcessorV1 *)self _rendererProcessingTypeForProcessingType:v61];
  if (v55)
  {
    v14 = v59;
    v13 = v60;
    if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer prepareToProcess:v55])
    {
      [CMISmartStyleProcessorV1 prepareToProcess:v66];
      goto LABEL_61;
    }
  }

  else
  {
    v14 = v59;
    v13 = v60;
  }

LABEL_41:
  v56 = [(CMISmartStyleProcessorV1 *)self _styleEngineProcessingTypeForProcessingType:v3];
  if (v56)
  {
    v57 = v56;
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setExternalMemoryResource:self->_usedMemoryResource];
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setUseLiveMetalAllocations:self->_useLiveMetalAllocations];
    LODWORD(v19) = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor prepareToProcess:v57];
  }

  else
  {
    LODWORD(v19) = 0;
  }

LABEL_44:

  return v19;
}

- (int)process
{
  inputSmartStyle = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSmartStyle];
  inputMetadataDict = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputMetadataDict];
  inputLinearMetadataDict = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearMetadataDict];
  inputUnstyledPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledPixelBuffer];
  inputUnstyledThumbnailPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledThumbnailPixelBuffer];
  inputLearningTargetPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLearningTargetPixelBuffer];
  inputLearningTargetThumbnailPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLearningTargetThumbnailPixelBuffer];
  inputLinearPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearPixelBuffer];
  inputGainMapPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputGainMapPixelBuffer];
  inputPersonMaskPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputPersonMaskPixelBuffer];
  inputSkinMaskPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkinMaskPixelBuffer];
  inputSkyMaskPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkyMaskPixelBuffer];
  inputSRLPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSRLPixelBuffer];
  inputStyleCoefficientsPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputStyleCoefficientsPixelBuffer];
  inputDeltaMapPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputDeltaMapPixelBuffer];
  inputReferenceForDeltaMapComputationPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputReferenceForDeltaMapComputationPixelBuffer];
  semanticStyleSceneType = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput semanticStyleSceneType];
  inputTuningType = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputTuningType];
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput personMasksValidHint];
  v262 = v9;
  inputWeightPlanePixelBufferScaledForISPSMG = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputWeightPlanePixelBufferScaledForISPSMG];
  _isStreaming = [(CMISmartStyleProcessorV1 *)self _isStreaming];
  outputStyledPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputStyledPixelBuffer];
  outputSmallLightMapPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputSmallLightMapPixelBuffer];
  outputSmallLinearLightMapPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputSmallLinearLightMapPixelBuffer];
  outputDeltaMapPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputDeltaMapPixelBuffer];
  outputLearnedStyleCoefficientsPixelBuffer = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputLearnedStyleCoefficientsPixelBuffer];
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledCropRect];
  if (CGRectIsEmpty(v293))
  {
    Width = CVPixelBufferGetWidth(inputUnstyledPixelBuffer);
    Height = CVPixelBufferGetHeight(inputUnstyledPixelBuffer);
    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledCropRect];
    v12 = v14;
    v13 = v15;
    Height = v17;
    Width = v16;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledThumbnailCropRect];
  if (CGRectIsEmpty(v294))
  {
    v280 = CVPixelBufferGetWidth(inputUnstyledThumbnailPixelBuffer);
    v279 = CVPixelBufferGetHeight(inputUnstyledThumbnailPixelBuffer);
    v18 = 0.0;
    v19 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledThumbnailCropRect];
    v18 = v20;
    v19 = v21;
    v279 = v23;
    v280 = v22;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputPersonMaskCropRect];
  if (CGRectIsEmpty(v295))
  {
    v259 = CVPixelBufferGetWidth(inputPersonMaskPixelBuffer);
    v257 = 0.0;
    v258 = CVPixelBufferGetHeight(inputPersonMaskPixelBuffer);
    v256 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputPersonMaskCropRect];
    v256 = v25;
    v257 = v24;
    v258 = v27;
    v259 = v26;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkyMaskCropRect];
  if (CGRectIsEmpty(v296))
  {
    v255 = CVPixelBufferGetWidth(inputSkyMaskPixelBuffer);
    v253 = 0.0;
    v254 = CVPixelBufferGetHeight(inputSkyMaskPixelBuffer);
    v252 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkyMaskCropRect];
    v252 = v29;
    v253 = v28;
    v254 = v31;
    v255 = v30;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkinMaskCropRect];
  if (CGRectIsEmpty(v297))
  {
    v251 = CVPixelBufferGetWidth(inputSkinMaskPixelBuffer);
    v249 = 0.0;
    v250 = CVPixelBufferGetHeight(inputSkinMaskPixelBuffer);
    v248 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkinMaskCropRect];
    v248 = v33;
    v249 = v32;
    v250 = v35;
    v251 = v34;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputStyledCropRect];
  if (CGRectIsEmpty(v298))
  {
    rect = CVPixelBufferGetWidth(outputStyledPixelBuffer);
    v245 = 0.0;
    v243 = CVPixelBufferGetHeight(outputStyledPixelBuffer);
    v244 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputStyledCropRect];
    v244 = v37;
    v245 = v36;
    rect = v38;
    v243 = v39;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputDeltaMapCropRect];
  if (CGRectIsEmpty(v299))
  {
    CVPixelBufferGetWidth(outputDeltaMapPixelBuffer);
    CVPixelBufferGetHeight(outputDeltaMapPixelBuffer);
    v221 = 0.0;
    v222 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputDeltaMapCropRect];
    v221 = v41;
    v222 = v40;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputReferenceForDeltaMapComputationCropRect];
  if (CGRectIsEmpty(v300))
  {
    CVPixelBufferGetWidth(inputReferenceForDeltaMapComputationPixelBuffer);
    CVPixelBufferGetHeight(inputReferenceForDeltaMapComputationPixelBuffer);
    v219 = 0.0;
    v220 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputReferenceForDeltaMapComputationCropRect];
    v219 = v43;
    v220 = v42;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput primaryCaptureRect];
  pixelBuffer = inputReferenceForDeltaMapComputationPixelBuffer;
  if (CGRectIsEmpty(v301))
  {
    v229 = 0.0;
    v237 = 0.0;
    v235 = 1.0;
    v44 = 1.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput primaryCaptureRect];
    v229 = v45;
    v237 = v46;
    v235 = v47;
    v44 = v48;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputCropRectWithinPrimaryCaptureRect];
  v236 = v44;
  if (CGRectIsEmpty(v302))
  {
    v240 = 0.0;
    r1 = 1.0;
    v239 = 0.0;
    v238 = 1.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputCropRectWithinPrimaryCaptureRect];
    v239 = v49;
    v240 = v50;
    v238 = v51;
    r1 = v52;
  }

  v53 = inputSmartStyle;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  v56 = CGRectNull.size.width;
  v57 = CGRectNull.size.height;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputRenderRect];
  v290 = v57;
  v277 = v56;
  v276 = y;
  v275 = CGRectNull.origin.x;
  if (!CGRectIsEmpty(v303))
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputRenderRect];
    v275 = v58;
    v276 = v59;
    v277 = v60;
    v57 = v61;
  }

  v62 = inputPersonMaskPixelBuffer;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput deltaMapRegionToRenderRect];
  IsEmpty = CGRectIsEmpty(v304);
  v64 = v290;
  v65 = v56;
  v66 = y;
  v67 = CGRectNull.origin.x;
  v247 = IsEmpty;
  if (!IsEmpty)
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput deltaMapRegionToRenderRect:CGRectNull.origin.x];
  }

  v224 = v67;
  v225 = v66;
  v215 = v65;
  v216 = v64;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput spotlightAffineTransform];
  v233 = v69;
  v234 = v68;
  v232 = v70;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput globalLinearSystemMixFactor];
  v230 = v71;
  residualsCalculationDisabled = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput residualsCalculationDisabled];
  applyDither = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput applyDither];
  metalSharedEvent = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput metalSharedEvent];
  v278 = metalSharedEvent;
  if (metalSharedEvent)
  {
    v73 = metalSharedEvent;
    commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
    if (!commandBuffer)
    {
      [(CMISmartStyleProcessorV1 *)v292 process];
      v206 = v292[0];
LABEL_155:
      v116 = inputTuningType;
      v117 = v53;
      goto LABEL_142;
    }

    v75 = commandBuffer;
    [commandBuffer encodeWaitForEvent:v73 value:1];
    [(FigMetalContext *)self->_metalContext commit];
  }

  v226 = outputStyledPixelBuffer;
  v227 = outputDeltaMapPixelBuffer;
  if (!self->_shouldGenerateTarget)
  {
    inputPixelBuffer = 0;
    v116 = inputTuningType;
    v117 = v53;
    goto LABEL_71;
  }

  if (!(inputUnstyledPixelBuffer | inputUnstyledThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorV1 process];
LABEL_154:
    v206 = 1;
    goto LABEL_155;
  }

  if (!inputMetadataDict)
  {
    [CMISmartStyleProcessorV1 process];
    goto LABEL_154;
  }

  if (!inputLinearPixelBuffer)
  {
    [CMISmartStyleProcessorV1 process];
    goto LABEL_154;
  }

  v218 = [inputMetadataDict objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  v76 = v290;
  v77 = v56;
  v78 = y;
  v79 = CGRectNull.origin.x;
  v214 = inputSkyMaskPixelBuffer;
  if (_isStreaming)
  {
    v80 = [v218 isEqual:{kFigCapturePortType_FrontFacingSuperWideCamera, CGRectNull.origin.x, y, v56, v290}];
    v76 = v290;
    v77 = v56;
    v78 = y;
    v79 = CGRectNull.origin.x;
    if (v80)
    {
      [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration intermediateStyleRendererThumbnailSize:CGRectNull.origin.x];
      v211 = v12;
      v212 = v19;
      v81 = v13;
      v83 = v82;
      v85 = v84;
      FigCaptureMetadataUtilitiesGetFinalCropRect();
      CMIDenormalizeCropRect();
      FigCaptureAspectRatioForDimensions();
      v86 = v57;
      v87 = v81;
      inputSkyMaskPixelBuffer = v85;
      FigCaptureUnityRect();
      v88 = v86;
      x = CGRectNull.origin.x;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect();
      FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
      v316.origin.x = v89;
      v316.origin.y = v90;
      v316.size.width = v91;
      v316.size.height = v92;
      v305.origin.x = 0.0;
      v305.origin.y = 0.0;
      v305.size.width = v83;
      v305.size.height = v85;
      CGRectIntersection(v305, v316);
      v13 = v87;
      v57 = v88;
      v12 = v211;
      v19 = v212;
      CMINormalizeCropRect();
    }
  }

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setStatsComputationRect:v79, v78, v77, v76];
  v93 = v62;
  if ([(CMISmartStyleProcessorInputOutput *)self->_inputOutput subjectRelightingEnabled]&& inputSkinMaskPixelBuffer && v62)
  {
    if (!inputSRLPixelBuffer)
    {
      [(CMISmartStyleProcessorV1 *)v292 process];
      v206 = v292[0];
      v117 = v53;
      goto LABEL_166;
    }

    v213 = v19;
    v94 = v56;
    v95 = v18;
    v96 = y;
    v97 = x;
    v98 = v13;
    v99 = [inputMetadataDict objectForKeyedSubscript:kFigCaptureStreamMetadata_DetectedObjectsInfo];
    v100 = [v99 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanFaces];

    v101 = [inputMetadataDict objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureBias];
    [v101 floatValue];
    v103 = v102;

    LODWORD(v210) = 0;
    LODWORD(v104) = v103;
    [(CMISubjectRelightingStage *)self->_subjectRelightingStage runSRLForLivePhotosWithInputBuffer:inputSRLPixelBuffer skinMask:inputSkinMaskPixelBuffer personMask:v62 instanceMasks:0 instanceMaskConfidences:0 skinToneClassification:0 expBias:v104 exifOrientation:v210 srlV2Plist:0 faceDataFromANST:v100];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCoefficientsBuf:0];
    previousSRLCurveParameter = self->_previousSRLCurveParameter;
    [(CMISubjectRelightingStage *)self->_subjectRelightingStage lastComputedCurveParameter];
    v107 = -1.0;
    v108 = fminf(fmaxf(v106, 0.25), 0.5);
    if (v106 == -1.0)
    {
      v109 = 0;
    }

    else
    {
      v106 = v108;
      v109 = previousSRLCurveParameter == -1.0;
    }

    if (v109)
    {
      v110 = v106;
    }

    else
    {
      v110 = previousSRLCurveParameter;
    }

    if (v110 != -1.0 || v106 != -1.0)
    {
      v107 = (v106 * self->_srlWeight) + ((1.0 - self->_srlWeight) * v110);
    }

    v111 = v107;
    if (v107 <= 0.499)
    {
      v112 = v107;
    }

    else
    {
      v112 = 0.5;
    }

    *&v111 = v112;
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLCurveParameter:v111];
    *&v113 = v112;
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCurveParameter:v113];
    self->_previousSRLCurveParameter = v112;
    lastComputedRelightingStats = [(CMISubjectRelightingStage *)self->_subjectRelightingStage lastComputedRelightingStats];
    inputSkyMaskPixelBuffer = [NSData dataWithData:lastComputedRelightingStats];
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLStats:inputSkyMaskPixelBuffer];

    v13 = v98;
    x = v97;
    y = v96;
    v18 = v95;
    v56 = v94;
    v19 = v213;
    v93 = v62;
  }

  else
  {
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCoefficientsBuf:0];
    LODWORD(v118) = -1.0;
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCurveParameter:v118];
    LODWORD(v119) = -1.0;
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLCurveParameter:v119];
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLStats:0];
  }

  v117 = v53;
  if (([(CMISmartStyleProcessorInputOutput *)self->_inputOutput computeOnlySubjectRelighting]& 1) != 0)
  {
    v206 = 0;
LABEL_166:

    v116 = inputTuningType;
    goto LABEL_142;
  }

  v279 = [(CMISmartStyleProcessorV1 *)self _configureInputUnstyledPixelBufferForPixelBufferRenderer:inputUnstyledPixelBuffer withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer inputUnstyledThumbnailPixelBuffer:v12 withinputUnstyledThumbnailCropRect:v13, Width, Height, v18, v19, v280, v279];
  if (v279)
  {
    v206 = v279;
    [CMISmartStyleProcessorV1 process];
    goto LABEL_166;
  }

  inputPixelBuffer = [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer inputPixelBuffer];
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
  if (CGRectIsEmpty(v306))
  {
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearPixelBuffer:inputLinearPixelBuffer];
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
    v121 = [(CMISmartStyleProcessorV1 *)self _configureInputLinearPixelBufferForPixelBufferRenderer:inputLinearPixelBuffer withinputLinearCropRect:?];
    if (v121)
    {
      v206 = v121;
      [CMISmartStyleProcessorV1 process];
      goto LABEL_166;
    }
  }

  v122 = [(CMISmartStyleProcessorV1 *)self _configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:inputUnstyledPixelBuffer unstyledThumbnailPixelBuffer:inputUnstyledThumbnailPixelBuffer];
  if (v122)
  {
    v206 = v122;
    [CMISmartStyleProcessorV1 process];
    goto LABEL_166;
  }

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputStyle:v53];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputMetadataDict:inputMetadataDict];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearMetadataDict:inputLinearMetadataDict];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputGainMapPixelBuffer:inputGainMapPixelBuffer];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPersonMaskPixelBuffer:v93];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPersonMaskCropRect:v257, v256, v259, v258];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkinMaskPixelBuffer:inputSkinMaskPixelBuffer];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkinMaskCropRect:v249, v248, v251, v250];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkyMaskPixelBuffer:v214];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkyMaskCropRect:v253, v252, v255, v254];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setSemanticStyleSceneType:semanticStyleSceneType];
  v116 = inputTuningType;
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setTuningParameterVariant:inputTuningType];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setIsStreaming:_isStreaming & ~self->_shouldFlushCVMTLTextureCacheAfterProcessing & 1];
  LODWORD(v123) = v262;
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setPersonMasksValidHint:v123];
  outputImageStatistics = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputImageStatistics];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputImageStatistics:outputImageStatistics];

  outputImageStatisticsExtended = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputImageStatisticsExtended];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputImageStatisticsExtended:outputImageStatisticsExtended];

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputSmallLightMapPixelBuffer:outputSmallLightMapPixelBuffer];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputSmallLinearLightMapPixelBuffer:outputSmallLinearLightMapPixelBuffer];

LABEL_71:
  if (self->_shouldEncodeLinear)
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
    if (CGRectIsEmpty(v307))
    {
      [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearPixelBuffer:inputLinearPixelBuffer];
    }

    else
    {
      [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
      v126 = [(CMISmartStyleProcessorV1 *)self _configureInputLinearPixelBufferForPixelBufferRenderer:inputLinearPixelBuffer withinputLinearCropRect:?];
      if (v126)
      {
        v206 = v126;
        [CMISmartStyleProcessorV1 process];
        goto LABEL_142;
      }
    }

    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputMetadataDict:inputMetadataDict];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearMetadataDict:inputLinearMetadataDict];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputCodedLinearPixelBuffer:[(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputCodedLinearThumbnailPixelBuffer]];
    outputCodedLinearThumbnailMetadata = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputCodedLinearThumbnailMetadata];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputCodedLinearMetadata:outputCodedLinearThumbnailMetadata];
  }

  if (self->_shouldGenerateTarget || self->_shouldEncodeLinear)
  {
    metalSharedEvent = [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer process];
    if (metalSharedEvent)
    {
      [(CMISmartStyleProcessorV1 *)v292 process];
      v206 = v292[0];
      goto LABEL_142;
    }
  }

  if (self->_shouldLearn)
  {
    if (inputUnstyledPixelBuffer | inputUnstyledThumbnailPixelBuffer)
    {
      if (self->_shouldIntegrate || self->_shouldApply || outputLearnedStyleCoefficientsPixelBuffer)
      {
        v128 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineInputUnstyledThumbnailPixelBuffer:inputUnstyledPixelBuffer withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer inputUnstyledThumbnailPixelBuffer:inputPixelBuffer withinputUnstyledThumbnailCropRect:v12 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:v13 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:Width, Height, v18, v19, v280, v279, *&x, *&y, *&v56, *&v290];
        if (v128)
        {
          v206 = v128;
          [CMISmartStyleProcessorV1 process];
          goto LABEL_142;
        }

        inputThumbnailPixelBuffer = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor inputThumbnailPixelBuffer];
        v130 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineTargetThumbnailPixelBuffer:inputLearningTargetPixelBuffer inputTargetThumbnailPixelBuffer:inputLearningTargetThumbnailPixelBuffer];
        if (v130)
        {
          v206 = v130;
          [CMISmartStyleProcessorV1 process];
          goto LABEL_142;
        }

        v131 = inputUnstyledThumbnailPixelBuffer;
        v282 = v56;
        v217 = x;
        v132 = v57;
        v133 = v19;
        v134 = v18;
        v285 = v13;
        v135 = v12;
        [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputWeightPlanePixelBufferScaledForISPSMG:inputWeightPlanePixelBufferScaledForISPSMG];
        [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputLinearSystemCoefficientsPixelBuffer:outputLearnedStyleCoefficientsPixelBuffer];
        tuningParameters = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
        v137 = 0.0;
        [tuningParameters cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
        v139 = v138;
        v140 = 1.0;
        if (v138 < 1.0)
        {
          inputSkyMaskPixelBuffer = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
          [(__CVBuffer *)inputSkyMaskPixelBuffer cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
          if (v141 <= 0.0)
          {
            goto LABEL_91;
          }
        }

        tuningParameters2 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
        [tuningParameters2 cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
        if (v143 < 1.0)
        {
          tuningParameters3 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
          [tuningParameters3 cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
          v140 = v145;
        }

        v137 = v140;
        if (v139 < 1.0)
        {
LABEL_91:

          v140 = v137;
        }

        p_previousStyle = &self->_previousStyle;
        castType = [(CMISmartStyle *)self->_previousStyle castType];
        castType2 = [v117 castType];
        if ([castType isEqualToString:castType2] && (-[CMISmartStyle toneBias](*p_previousStyle, "toneBias"), v150 = v149, objc_msgSend(v117, "toneBias"), vabds_f32(v150, v151) <= 0.00000011921) && (-[CMISmartStyle colorBias](*p_previousStyle, "colorBias"), v153 = v152, objc_msgSend(v117, "colorBias"), vabds_f32(v153, v154) <= 0.00000011921) && (-[CMISmartStyle castIntensity](*p_previousStyle, "castIntensity"), v156 = v155, objc_msgSend(v117, "castIntensity"), vabds_f32(v156, v157) <= 0.00000011921))
        {
          v209 = vabds_f32(self->_previousPriorStrength, v140);

          if (v209 <= 0.00000011921)
          {
            goto LABEL_98;
          }
        }

        else
        {
        }

        castType3 = [v117 castType];
        [v117 toneBias];
        v160 = v159;
        [v117 colorBias];
        v162 = v161;
        [v117 castIntensity];
        LODWORD(v164) = v163;
        LODWORD(v165) = v160;
        LODWORD(v166) = v162;
        *&v167 = v140;
        [CMISmartStyleCCMPriorGenerator calculatePriorCCMforCast:castType3 tone:v165 color:v166 intensity:v164 priorStrength:v167];
        v274 = v168;
        v270 = v169;
        v267 = v170;
        configuration = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor configuration];
        [configuration setLinearSystemPriorMatrix:{v274, v270, v267}];

LABEL_98:
        objc_storeStrong(&self->_previousStyle, v117);
        self->_previousPriorStrength = v140;
        v172 = inputThumbnailPixelBuffer == 0;
        v116 = inputTuningType;
        v12 = v135;
        v13 = v285;
        v18 = v134;
        v19 = v133;
        v57 = v132;
        x = v217;
        v56 = v282;
        inputUnstyledThumbnailPixelBuffer = v131;
        goto LABEL_100;
      }

      [CMISmartStyleProcessorV1 process];
    }

    else
    {
      [CMISmartStyleProcessorV1 process];
    }

    v206 = 1;
    goto LABEL_142;
  }

  v172 = 1;
LABEL_100:
  if (self->_shouldIntegrate)
  {
    if (!self->_shouldLearn)
    {
      if (!inputStyleCoefficientsPixelBuffer)
      {
        [CMISmartStyleProcessorV1 process];
        goto LABEL_169;
      }

      metalSharedEvent = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputLinearSystemCoefficientsPixelBuffer:?];
    }

    if (v172)
    {
      metalSharedEvent = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineInputUnstyledThumbnailPixelBuffer:inputUnstyledPixelBuffer withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer inputUnstyledThumbnailPixelBuffer:inputPixelBuffer withinputUnstyledThumbnailCropRect:v12 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:v13 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:Width, Height, v18, v19, v280, v279, *&x, *&y, *&v56, *&v290];
      if (metalSharedEvent)
      {
        v206 = metalSharedEvent;
        [CMISmartStyleProcessorV1 process];
        goto LABEL_142;
      }
    }
  }

  shouldLearn = self->_shouldLearn;
  if (!self->_shouldApply)
  {
    goto LABEL_132;
  }

  if (!self->_shouldLearn)
  {
    if (inputStyleCoefficientsPixelBuffer)
    {
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputLinearSystemCoefficientsPixelBuffer:?];
      goto LABEL_110;
    }

    [(CMISmartStyleProcessorV1 *)metalSharedEvent process];
LABEL_169:
    v206 = 7;
    goto LABEL_142;
  }

LABEL_110:
  if (v172)
  {
    v174 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineInputUnstyledThumbnailPixelBuffer:inputUnstyledPixelBuffer withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer inputUnstyledThumbnailPixelBuffer:inputPixelBuffer withinputUnstyledThumbnailCropRect:v12 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:v13 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:Width, Height, v18, v19, v280, v279, *&x, *&y, *&v56, *&v290];
    if (v174)
    {
      v206 = v174;
      [CMISmartStyleProcessorV1 process];
      goto LABEL_142;
    }
  }

  configuration2 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor configuration];
  LODWORD(v176) = v230;
  [configuration2 setGlobalLinearSystemMixFactor:v176];

  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setSpotlightAffineTransform:v234, v233, v232];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setApplyDither:applyDither];
  v308.origin.x = v229;
  v308.origin.y = v237;
  v308.size.width = v235;
  v308.size.height = v236;
  if (!CGRectIsEmpty(v308))
  {
    v177 = CVPixelBufferGetWidth([(CMIStyleEngineProcessor *)self->_styleEngineProcessor inputThumbnailPixelBuffer]);
    v178 = CVPixelBufferGetHeight([(CMIStyleEngineProcessor *)self->_styleEngineProcessor inputThumbnailPixelBuffer]);
    v286 = v13;
    v179 = v229 * v177;
    v180 = v235 * v177;
    v181 = v12;
    v182 = v237 * v178;
    v183 = v236 * v178;
    styleEngineConfiguration = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
    [styleEngineConfiguration thumbnailSize];
    v186 = v185;
    styleEngineConfiguration2 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
    [styleEngineConfiguration2 thumbnailSize];
    v317.size.height = v188;
    v317.origin.x = 0.0;
    v317.origin.y = 0.0;
    v309.origin.x = v179;
    v13 = v286;
    v309.origin.y = v182;
    v12 = v181;
    v309.size.width = v180;
    v309.size.height = v183;
    v317.size.width = v186;
    v310 = CGRectIntersection(v309, v317);
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setSpotlightIntegrationROI:v310.origin.x, v310.origin.y, v310.size.width, v310.size.height];
  }

  v318.origin.x = 0.0;
  v318.origin.y = 0.0;
  v318.size.width = 1.0;
  v318.size.height = 1.0;
  v311.origin.x = v239;
  v311.origin.y = v240;
  v311.size.width = v238;
  v311.size.height = r1;
  v312 = CGRectIntersection(v311, v318);
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setSpotlightZoomROI:v312.origin.x, v312.origin.y, v312.size.width, v312.size.height];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputPixelBuffer:inputUnstyledPixelBuffer];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputPixelBuffer:v226];
  v313.origin.x = v12;
  v313.origin.y = v13;
  v313.size.height = Height;
  v313.size.width = Width;
  if (!CGRectIsEmpty(v313))
  {
    v189 = -v13;
    v190 = v13;
    v191 = CVPixelBufferGetWidth(inputUnstyledPixelBuffer);
    v192 = CVPixelBufferGetHeight(inputUnstyledPixelBuffer);
    if (pixelBuffer)
    {
      v193 = !v247;
    }

    else
    {
      v193 = 0;
    }

    v194 = v224 - v12;
    v195 = v225 - v190;
    if (!v193 || v227 == 0)
    {
      v194 = -v12;
      v195 = v189;
    }

    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputImageRect:v194, v195, v191, v192];
  }

  v314.origin.x = v245;
  v314.origin.y = v244;
  v314.size.width = rect;
  v314.size.height = v243;
  if (!CGRectIsEmpty(v314))
  {
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setImageSize:rect, v243];
    v196 = CVPixelBufferGetWidth(v226);
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputImageRect:-v245, -v244, v196, CVPixelBufferGetHeight(v226)];
  }

  if (pixelBuffer)
  {
    if (v227)
    {
      v197 = CVPixelBufferGetWidth(pixelBuffer);
      v198 = CVPixelBufferGetHeight(pixelBuffer);
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputOriginalPixelBuffer:pixelBuffer];
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputOriginalImageRect:-v220, -v219, v197, v198];
      v199 = CVPixelBufferGetWidth(v227);
      v200 = CVPixelBufferGetHeight(v227);
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputDeltaMapPixelBuffer:v227];
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputImageRect:-v222, -v221, v199, v200];
      if (!v247)
      {
        [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setRegionToRender:v224, v225, v215, v216];
      }
    }
  }

  v315.origin.x = v275;
  v315.origin.y = v276;
  v315.size.width = v277;
  v315.size.height = v57;
  if (!CGRectIsEmpty(v315))
  {
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setRegionToRender:v275, v276, v277, v57];
  }

  if (inputDeltaMapPixelBuffer)
  {
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputDeltaMapPixelBuffer:?];
  }

  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setResidualsCalculationDisabled:residualsCalculationDisabled];
  shouldLearn = self->_shouldLearn;
LABEL_132:
  if (!shouldLearn && !self->_shouldIntegrate && !self->_shouldApply)
  {
    v206 = 0;
    goto LABEL_142;
  }

  tuningParameters4 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
  if (v116)
  {
    castType4 = [v117 castType];

    if (castType4)
    {
      castType5 = [v117 castType];
      v204 = [CMISmartStyleCommonSettings styleEngineSpecificTuningForTuningVariant:v116 andCast:castType5];
      v205 = [v204 cmi_dictionaryMergedWithDefaultDict:tuningParameters4];
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v205];
    }
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor process])
  {
    [(CMISmartStyleProcessorV1 *)v292 process];
LABEL_148:
    v206 = v292[0];
    goto LABEL_141;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor resetState])
  {
    [(CMISmartStyleProcessorV1 *)v292 process];
    goto LABEL_148;
  }

  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:tuningParameters4];
  v206 = 0;
LABEL_141:

LABEL_142:
  inputOutput = self->_inputOutput;
  self->_inputOutput = 0;

  return v206;
}

- (int)finishProcessing
{
  if (!self->_smartStylePixelBufferRenderer || !self->_styleEngineProcessor)
  {
    goto LABEL_5;
  }

  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  metalCommandQueue = [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer metalCommandQueue];
  v5 = metalCommandQueue;
  if (commandQueue != metalCommandQueue)
  {

    goto LABEL_8;
  }

  commandQueue2 = [(FigMetalContext *)self->_metalContext commandQueue];
  metalCommandQueue2 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor metalCommandQueue];

  if (commandQueue2 != metalCommandQueue2)
  {
LABEL_8:
    [(CMISmartStyleProcessorV1 *)&v9 finishProcessing];
    return v9;
  }

LABEL_5:
  [(FigMetalContext *)self->_metalContext waitForIdle];
  return 0;
}

- (int)purgeResources
{
  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor purgeResources])
  {
    [(CMISmartStyleProcessorV1 *)&v11 purgeResources];
    v3 = v11;
  }

  else if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer purgeResources])
  {
    [(CMISmartStyleProcessorV1 *)&v12 purgeResources];
    v3 = v12;
  }

  else
  {
    v3 = 0;
  }

  intermediateRendererInputUnstyledPixelBuffer = self->_intermediateRendererInputUnstyledPixelBuffer;
  if (intermediateRendererInputUnstyledPixelBuffer)
  {
    CFRelease(intermediateRendererInputUnstyledPixelBuffer);
    self->_intermediateRendererInputUnstyledPixelBuffer = 0;
  }

  intermediateRendererInputUnstyledThumbnailPixelBuffer = self->_intermediateRendererInputUnstyledThumbnailPixelBuffer;
  if (intermediateRendererInputUnstyledThumbnailPixelBuffer)
  {
    CFRelease(intermediateRendererInputUnstyledThumbnailPixelBuffer);
    self->_intermediateRendererInputUnstyledThumbnailPixelBuffer = 0;
  }

  styleRendererOutputStyledThumbnailPixelBuffer = self->_styleRendererOutputStyledThumbnailPixelBuffer;
  if (styleRendererOutputStyledThumbnailPixelBuffer)
  {
    CFRelease(styleRendererOutputStyledThumbnailPixelBuffer);
    self->_styleRendererOutputStyledThumbnailPixelBuffer = 0;
  }

  styleEngineInputUnstyledThumbnailPixelBuffer = self->_styleEngineInputUnstyledThumbnailPixelBuffer;
  if (styleEngineInputUnstyledThumbnailPixelBuffer)
  {
    CFRelease(styleEngineInputUnstyledThumbnailPixelBuffer);
    self->_styleEngineInputUnstyledThumbnailPixelBuffer = 0;
  }

  styleEngineInputTargetStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
  if (styleEngineInputTargetStyledThumbnailPixelBuffer)
  {
    CFRelease(styleEngineInputTargetStyledThumbnailPixelBuffer);
    self->_styleEngineInputTargetStyledThumbnailPixelBuffer = 0;
  }

  styleRendererInputLinearThumbnailPixelBuffer = self->_styleRendererInputLinearThumbnailPixelBuffer;
  if (styleRendererInputLinearThumbnailPixelBuffer)
  {
    CFRelease(styleRendererInputLinearThumbnailPixelBuffer);
    self->_styleRendererInputLinearThumbnailPixelBuffer = 0;
  }

  self->_previousSRLCurveParameter = -1.0;
  return v3;
}

- (unint64_t)_requestedMemSize:(unsigned int)size
{
  v3 = *&size;
  v5 = [CMIExternalMemoryConfiguration alloc];
  v6 = [NSNumber numberWithUnsignedInt:[(CMISmartStyleProcessorV1 *)self _styleEngineProcessingTypeForProcessingType:v3, @"ProcessingType"]];
  v23 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v8 = [v5 initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:v7];

  if (v8)
  {
    v9 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor externalMemoryDescriptorForConfiguration:v8];
    memSize = [v9 memSize];
    v11 = memSize;
    if (self->_useLiveMetalAllocations)
    {
      v12 = 18253824;
      if (memSize > 0x1168800)
      {
        v12 = memSize;
      }

      if ((v3 & 8) == 0)
      {
        v12 = memSize;
      }

      v13 = (v3 & 1) == 0;
      if (v12 <= 0x2600000)
      {
        v14 = 39845888;
      }

      else
      {
        v14 = v12;
      }

      v15 = (v3 & 6) == 0;
      if (v9)
      {
        v13 = 1;
        v15 = 1;
      }

      if (!v13)
      {
        v12 = v14;
      }

      v16 = 0x800000;
      if (v12 > 0x800000)
      {
        v16 = v12;
      }

      if (!v15)
      {
        v12 = v16;
      }

      if (v12 <= 0x2600000)
      {
        v17 = 39845888;
      }

      else
      {
        v17 = v12;
      }

      v18 = v3 == 0;
    }

    else
    {
      memSize2 = [v9 memSize];
      v12 = memSize2 + v11 + 18253824;
      if ((v3 & 8) == 0)
      {
        v12 = memSize2 + v11 + 428032;
      }

      v18 = v3 == 0;
      v17 = 66488320;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = v12;
    }
  }

  else
  {
    [CMISmartStyleProcessorV1 _requestedMemSize:];
    v20 = 0;
  }

  return v20;
}

- (id)externalMemoryDescriptorForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[CMIExternalMemoryConfiguration alloc] initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:&off_209D0];
  if (v5)
  {
    styleEngineConfiguration = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:styleEngineConfiguration];

    v7 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor externalMemoryDescriptorForConfiguration:v5];
    if (v7)
    {
      processorSpecificOptions = [configurationCopy processorSpecificOptions];
      v9 = [processorSpecificOptions objectForKeyedSubscript:@"ProcessingType"];
      processingType = [v9 unsignedIntValue];
      if (!processingType)
      {
        processingType = self->_processingType;
      }

      [v7 setMemSize:{-[CMISmartStyleProcessorV1 _requestedMemSize:](self, "_requestedMemSize:", processingType)}];
    }

    else
    {
      [CMISmartStyleProcessorV1 externalMemoryDescriptorForConfiguration:];
    }
  }

  else
  {
    [CMISmartStyleProcessorV1 externalMemoryDescriptorForConfiguration:];
    v7 = 0;
  }

  return v7;
}

- (int)setup
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v4)
  {
    [CMISmartStyleProcessorV1 setup];
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v5 = [[FigMetalContext alloc] initWithbundle:v4 andOptionalCommandQueue:self->_metalCommandQueue];
  metalContext = self->_metalContext;
  self->_metalContext = v5;

  if (!self->_metalContext)
  {
    [CMISmartStyleProcessorV1 setup];
    goto LABEL_12;
  }

  v7 = [FigMetalAllocator alloc];
  device = [(FigMetalContext *)self->_metalContext device];
  v9 = [v7 initWithDevice:device allocatorType:2];
  cmImagingAllocator = self->_cmImagingAllocator;
  self->_cmImagingAllocator = v9;

  if (!self->_cmImagingAllocator)
  {
    [(CMISmartStyleProcessorV1 *)&v18 setup];
    v14 = v18;
    goto LABEL_13;
  }

  metalCommandQueue = self->_metalCommandQueue;
  if (metalCommandQueue)
  {
    commandQueue = metalCommandQueue;
  }

  else
  {
    commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  }

  v13 = self->_metalCommandQueue;
  self->_metalCommandQueue = commandQueue;

  if (!self->_metalCommandQueue)
  {
    [CMISmartStyleProcessorV1 setup];
    goto LABEL_12;
  }

  v14 = 0;
  if (!self->_styleEngineProcessor && !CFPreferenceNumberWithDefault)
  {
    v15 = [[CMIStyleEngineProcessor alloc] initWithOptionalMetalCommandQueue:self->_metalCommandQueue withCoefficientSynchronization:1];
    styleEngineProcessor = self->_styleEngineProcessor;
    self->_styleEngineProcessor = v15;

    if (!self->_styleEngineProcessor)
    {
      [CMISmartStyleProcessorV1 setup];
    }

    goto LABEL_12;
  }

LABEL_13:

  return v14;
}

- (int)prewarm
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v4 = [[CMISmartStyleProcessorUtilitiesV1 alloc] initWithStyleEngine:self->_styleEngineProcessor temporalFilterBufferSize:1 withMetalContext:self->_metalContext];
  utilities = self->_utilities;
  self->_utilities = v4;

  if (!self->_utilities)
  {
    [CMISmartStyleProcessorV1 prewarm];
    return 0;
  }

  if (CFPreferenceNumberWithDefault)
  {
    return 0;
  }

  if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v7 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:0];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v7];

  v8 = [CMIStyleEngineCommonSettings configurationForUseCase:0];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v8];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v9 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:1];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v9];

  v10 = [CMIStyleEngineCommonSettings configurationForUseCase:1];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v10];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v11 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:13];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v11];

  v12 = [CMIStyleEngineCommonSettings configurationForUseCase:13];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v12];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v13 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:3];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v13];

  v14 = [CMIStyleEngineCommonSettings configurationForUseCase:3];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v14];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm];
  if (result)
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  return result;
}

- (int)resetState
{
  if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer resetState])
  {
    [(CMISmartStyleProcessorV1 *)&v4 resetState];
    return v4;
  }

  else
  {
    result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor resetState];
    if (result)
    {
      [(CMISmartStyleProcessorV1 *)&v5 resetState];
      return v5;
    }

    else
    {
      self->_processingType = 0;
    }
  }

  return result;
}

- (void)setTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setTuningParameters:parametersCopy];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:parametersCopy];
  tuningParameters = self->_tuningParameters;
  self->_tuningParameters = parametersCopy;
}

- (void)setCameraInfoByPortType:(id)type
{
  smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
  typeCopy = type;
  [(CMISmartStylePixelBufferRenderer *)smartStylePixelBufferRenderer setCameraInfoByPortType:typeCopy];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setCameraInfoByPortType:typeCopy];
}

+ (unint64_t)getSmartStyleCoefficientsFilterType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"iir"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"iir3"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"fir10"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getDefaultProcessorConfigurationForStills
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:1];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:0];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:0];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStills3x4
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:4];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:13];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:13];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreaming
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:0];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:1];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:1];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingAccelerated
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:8];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:4];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:4];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingWithFilterType:(unint64_t)type
{
  getDefaultProcessorConfigurationForStreaming = [self getDefaultProcessorConfigurationForStreaming];
  [getDefaultProcessorConfigurationForStreaming setTemporalFilterInputBufferSize:{objc_msgSend(self, "getRequiredInputBufferSizeForFilterType:", type)}];

  return getDefaultProcessorConfigurationForStreaming;
}

+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedWithFilterType:(unint64_t)type
{
  getDefaultProcessorConfigurationForStreamingAccelerated = [self getDefaultProcessorConfigurationForStreamingAccelerated];
  [getDefaultProcessorConfigurationForStreamingAccelerated setTemporalFilterInputBufferSize:{objc_msgSend(self, "getRequiredInputBufferSizeForFilterType:", type)}];

  return getDefaultProcessorConfigurationForStreamingAccelerated;
}

+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatio
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:7];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:3];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:3];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:9];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:5];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:5];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:(unint64_t)type
{
  getDefaultProcessorConfigurationForStreamingSquareAspectRatio = [self getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
  [getDefaultProcessorConfigurationForStreamingSquareAspectRatio setTemporalFilterInputBufferSize:{objc_msgSend(self, "getRequiredInputBufferSizeForFilterType:", type)}];

  return getDefaultProcessorConfigurationForStreamingSquareAspectRatio;
}

+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatioWithFilterType:(unint64_t)type
{
  getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio = [self getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio];
  [getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio setTemporalFilterInputBufferSize:{objc_msgSend(self, "getRequiredInputBufferSizeForFilterType:", type)}];

  return getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio;
}

+ (unsigned)getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_143A0[type - 1];
  }
}

+ (unsigned)getRequiredInputBufferSizeForFilterType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_143B0[type - 1];
  }
}

+ (id)getDefaultProcessorConfigurationForStillsReversibility
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:3];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:12];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:12];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStillsReversibility3x4
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:5];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:14];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:14];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(CMISmartStyleProcessorV1 *)self requiresReconfigurationForConfiguration:?])
  {
    [(CMISmartStyleProcessorV1 *)self purgeResources];
    objc_storeStrong(&self->_configuration, configuration);
    self->_isSetupDone = 0;
    self->_processingType = 0;
  }
}

- (int)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(__CVBuffer *)renderer withinputUnstyledCropRect:(CGRect)rect inputUnstyledThumbnailPixelBuffer:(__CVBuffer *)buffer withinputUnstyledThumbnailCropRect:(CGRect)cropRect
{
  height = cropRect.size.height;
  width = cropRect.size.width;
  y = cropRect.origin.y;
  x = cropRect.origin.x;
  v11 = rect.size.height;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  if (renderer && !CGRectIsEmpty(rect))
  {
    if (!buffer)
    {
      goto LABEL_17;
    }
  }

  else if (!buffer || (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, CGRectIsEmpty(v30)))
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  if (!CGRectIsEmpty(v31))
  {
    if (self->_intermediateStyleRendererThumbnailSize.width <= width && self->_intermediateStyleRendererThumbnailSize.height <= height)
    {
      v27 = height;
      v28 = width;
      v23 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(buffer)];
      if (!self->_intermediateRendererInputUnstyledPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, self->_intermediateStyleRendererThumbnailSize.width, self->_intermediateStyleRendererThumbnailSize.height, v23, self->_styleRendererPixelBufferAttributes, &self->_intermediateRendererInputUnstyledPixelBuffer))
      {
        [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
        return v29;
      }

      if (self->_intermediateStyleRendererThumbnailSize.width == v28 && self->_intermediateStyleRendererThumbnailSize.height == v27 && (PixelFormatType = CVPixelBufferGetPixelFormatType(buffer), PixelFormatType == CVPixelBufferGetPixelFormatType(self->_intermediateRendererInputUnstyledPixelBuffer)))
      {
        if (x != 0.0 || y != 0.0 || self->_intermediateStyleRendererThumbnailSize.width != v28 || self->_intermediateStyleRendererThumbnailSize.height != v27 || CVPixelBufferGetPixelFormatType(buffer) != v23)
        {
          goto LABEL_16;
        }

        [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPixelBuffer:buffer];
        smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
        intermediateRendererInputUnstyledPixelBuffer = buffer;
      }

      else
      {
        if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:buffer toPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer inputROI:x, y, width, height])
        {
          [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
          return v29;
        }

        [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer];
        intermediateRendererInputUnstyledPixelBuffer = self->_intermediateRendererInputUnstyledPixelBuffer;
        smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
      }

      [(CMISmartStylePixelBufferRenderer *)smartStylePixelBufferRenderer setInputThumbnailPixelBuffer:intermediateRendererInputUnstyledPixelBuffer];
      return 0;
    }

    intermediateRendererInputUnstyledThumbnailPixelBuffer = self->_intermediateRendererInputUnstyledThumbnailPixelBuffer;
    if (!intermediateRendererInputUnstyledThumbnailPixelBuffer)
    {
      v19 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(buffer)];
      if (CVPixelBufferCreate(kCFAllocatorDefault, llround(self->_intermediateStyleRendererThumbnailSize.width * 0.5), llround(self->_intermediateStyleRendererThumbnailSize.height * 0.5), v19, self->_styleRendererPixelBufferAttributes, &self->_intermediateRendererInputUnstyledThumbnailPixelBuffer))
      {
        [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
        return v29;
      }

      intermediateRendererInputUnstyledThumbnailPixelBuffer = self->_intermediateRendererInputUnstyledThumbnailPixelBuffer;
    }

    if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:buffer toPixelBuffer:intermediateRendererInputUnstyledThumbnailPixelBuffer inputROI:x, y, width, height])
    {
      [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
      return v29;
    }

    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputThumbnailPixelBuffer:self->_intermediateRendererInputUnstyledThumbnailPixelBuffer];
  }

LABEL_16:
  if (!renderer)
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

LABEL_17:
  v32.origin.x = v14;
  v32.origin.y = v13;
  v32.size.width = v12;
  v32.size.height = v11;
  if (CGRectIsEmpty(v32))
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

  v20 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(renderer)];
  p_intermediateRendererInputUnstyledPixelBuffer = &self->_intermediateRendererInputUnstyledPixelBuffer;
  v21 = self->_intermediateRendererInputUnstyledPixelBuffer;
  if (!v21)
  {
    goto LABEL_22;
  }

  if (CVPixelBufferGetPixelFormatType(v21) != v20)
  {
    if (*p_intermediateRendererInputUnstyledPixelBuffer)
    {
      CFRelease(*p_intermediateRendererInputUnstyledPixelBuffer);
      *p_intermediateRendererInputUnstyledPixelBuffer = 0;
    }

LABEL_22:
    if (CVPixelBufferCreate(kCFAllocatorDefault, self->_intermediateStyleRendererThumbnailSize.width, self->_intermediateStyleRendererThumbnailSize.height, v20, self->_styleRendererPixelBufferAttributes, &self->_intermediateRendererInputUnstyledPixelBuffer))
    {
      [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
      return v29;
    }
  }

  if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:renderer toPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer inputROI:v14, v13, v12, v11])
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer];
  return 0;
}

- (int)_configureInputLinearPixelBufferForPixelBufferRenderer:(__CVBuffer *)renderer withinputLinearCropRect:(CGRect)rect
{
  if (!renderer)
  {
    [CMISmartStyleProcessorV1 _configureInputLinearPixelBufferForPixelBufferRenderer:? withinputLinearCropRect:?];
    return v20;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_styleRendererInputLinearThumbnailPixelBuffer = &self->_styleRendererInputLinearThumbnailPixelBuffer;
  if (self->_styleRendererInputLinearThumbnailPixelBuffer)
  {
    v11 = [CMIStyleEngineProcessorUtilities numberOfPixelBufferPlanesThatNeedToBeBoundToMTLTextures:renderer];
    v12 = [CMIStyleEngineProcessorUtilities numberOfPixelBufferPlanesThatNeedToBeBoundToMTLTextures:*p_styleRendererInputLinearThumbnailPixelBuffer];
    v13 = *p_styleRendererInputLinearThumbnailPixelBuffer;
    if (v11 == v12)
    {
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else if (v13)
    {
      CFRelease(*p_styleRendererInputLinearThumbnailPixelBuffer);
      *p_styleRendererInputLinearThumbnailPixelBuffer = 0;
    }
  }

  v14 = self->_intermediateStyleRendererThumbnailSize.width;
  v15 = self->_intermediateStyleRendererThumbnailSize.height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(renderer);
  if (CVPixelBufferCreate(kCFAllocatorDefault, v14, v15, PixelFormatType, self->_styleRendererPixelBufferAttributes, p_styleRendererInputLinearThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorV1 _configureInputLinearPixelBufferForPixelBufferRenderer:? withinputLinearCropRect:?];
    return v18;
  }

  v13 = *p_styleRendererInputLinearThumbnailPixelBuffer;
LABEL_10:
  if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:renderer toPixelBuffer:v13 inputROI:x, y, width, height])
  {
    [CMISmartStyleProcessorV1 _configureInputLinearPixelBufferForPixelBufferRenderer:? withinputLinearCropRect:?];
    return v19;
  }

  else
  {
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearPixelBuffer:self->_styleRendererInputLinearThumbnailPixelBuffer];
    return 0;
  }
}

- (int)_configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:(__CVBuffer *)renderer unstyledThumbnailPixelBuffer:(__CVBuffer *)buffer
{
  if (buffer)
  {
    rendererCopy = buffer;
  }

  else
  {
    rendererCopy = renderer;
  }

  v8 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(rendererCopy)];
  if (!self->_styleRendererOutputStyledThumbnailPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, self->_intermediateStyleRendererThumbnailSize.width, self->_intermediateStyleRendererThumbnailSize.height, v8, self->_styleRendererPixelBufferAttributes, &self->_styleRendererOutputStyledThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorV1 _configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:? unstyledThumbnailPixelBuffer:?];
    return v11;
  }

  else
  {
    if (buffer)
    {
      rendererCopy2 = buffer;
    }

    else
    {
      rendererCopy2 = renderer;
    }

    CVBufferPropagateAttachments(rendererCopy2, self->_styleRendererOutputStyledThumbnailPixelBuffer);
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputPixelBuffer:self->_styleRendererOutputStyledThumbnailPixelBuffer];
    return 0;
  }
}

- (int)_configureStyleEngineTargetThumbnailPixelBuffer:(__CVBuffer *)buffer inputTargetThumbnailPixelBuffer:(__CVBuffer *)pixelBuffer
{
  _isStreaming = [(CMISmartStyleProcessorV1 *)self _isStreaming];
  if (_isStreaming)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  if (!self->_shouldGenerateTarget)
  {
    if (pixelBuffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      if (self->_styleEngineTargetThumbnailSize.width != Width || self->_styleEngineTargetThumbnailSize.height != Height)
      {
        [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
        return v39;
      }

      styleEngineProcessor = self->_styleEngineProcessor;
      styleRendererOutputStyledThumbnailPixelBuffer = pixelBuffer;
LABEL_40:
      [(CMIStyleEngineProcessor *)styleEngineProcessor setTargetThumbnailPixelBuffer:styleRendererOutputStyledThumbnailPixelBuffer];
      return 0;
    }

    v26 = CVPixelBufferGetWidth(buffer);
    v27 = CVPixelBufferGetHeight(buffer);
    v28 = self->_styleEngineTargetThumbnailSize.width;
    if (v28 >= v26 && self->_styleEngineTargetThumbnailSize.height >= v27)
    {
      styleEngineProcessor = self->_styleEngineProcessor;
      styleRendererOutputStyledThumbnailPixelBuffer = buffer;
      goto LABEL_40;
    }

    styleEngineInputTargetStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
    if (!styleEngineInputTargetStyledThumbnailPixelBuffer)
    {
      v30 = v28;
      v31 = self->_styleEngineTargetThumbnailSize.height;
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      if (CVPixelBufferCreate(kCFAllocatorDefault, v30, v31, PixelFormatType, self->_styleEnginePixelBufferAttributes, &self->_styleEngineInputTargetStyledThumbnailPixelBuffer))
      {
        [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
        return v39;
      }

      styleEngineInputTargetStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
    }

    y = CGRectNull.origin.y;
    v34 = CGRectNull.size.width;
    v35 = CGRectNull.size.height;
    v36 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:buffer toPixelBuffer:styleEngineInputTargetStyledThumbnailPixelBuffer inputROI:v8 filterOption:CGRectNull.origin.x, y, v34, v35];
    if (v36)
    {
      v37 = _isStreaming;
    }

    else
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      v36 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:buffer toPixelBuffer:self->_styleEngineInputTargetStyledThumbnailPixelBuffer inputROI:0 filterOption:CGRectNull.origin.x, y, v34, v35];
    }

    if (v36)
    {
      [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
      return v39;
    }

    goto LABEL_38;
  }

  v9 = self->_styleEngineTargetThumbnailSize.width;
  v10 = self->_styleEngineTargetThumbnailSize.height;
  if (self->_intermediateStyleRendererThumbnailSize.width == v9 && self->_intermediateStyleRendererThumbnailSize.height == v10)
  {
    styleRendererOutputStyledThumbnailPixelBuffer = self->_styleRendererOutputStyledThumbnailPixelBuffer;
LABEL_39:
    styleEngineProcessor = self->_styleEngineProcessor;
    goto LABEL_40;
  }

  v12 = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
  if (!v12)
  {
    v13 = v9;
    v14 = v10;
    v15 = CVPixelBufferGetPixelFormatType(self->_styleRendererOutputStyledThumbnailPixelBuffer);
    if (CVPixelBufferCreate(kCFAllocatorDefault, v13, v14, v15, self->_styleEnginePixelBufferAttributes, &self->_styleEngineInputTargetStyledThumbnailPixelBuffer))
    {
      [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
      return v39;
    }

    v12 = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
  }

  v16 = CGRectNull.origin.y;
  v17 = CGRectNull.size.width;
  v18 = CGRectNull.size.height;
  v19 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:self->_styleRendererOutputStyledThumbnailPixelBuffer toPixelBuffer:v12 inputROI:v8 filterOption:CGRectNull.origin.x, v16, v17, v18];
  if (v19)
  {
    v20 = _isStreaming;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v19 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:self->_styleRendererOutputStyledThumbnailPixelBuffer toPixelBuffer:self->_styleEngineInputTargetStyledThumbnailPixelBuffer inputROI:0 filterOption:CGRectNull.origin.x, v16, v17, v18];
  }

  if (!v19)
  {
LABEL_38:
    styleRendererOutputStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
    goto LABEL_39;
  }

  [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
  return v39;
}

- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(double)buffer withinputUnstyledCropRect:(double)rect inputUnstyledThumbnailPixelBuffer:(double)pixelBuffer withinputUnstyledThumbnailCropRect:(double)cropRect inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:(double)generationPixelBuffer withInputUnstyledThumbnailUsedForTargetGenerationCropRect:(double)generationCropRect
{
  if (a12)
  {
    pixelBufferCopy = a9;
  }

  else
  {
    pixelBufferCopy = pixelBuffer;
  }

  if (a12)
  {
    rectCopy = generationCropRect;
  }

  else
  {
    rectCopy = rect;
  }

  if (a12)
  {
    bufferCopy = generationPixelBuffer;
  }

  else
  {
    bufferCopy = buffer;
  }

  if (a12)
  {
    cropRectCopy = cropRect;
  }

  else
  {
    cropRectCopy = a2;
  }

  if (a12)
  {
    a11 = a12;
  }

  if (a13)
  {
    a2 = CVPixelBufferGetWidth(a13);
    buffer = *(self + 168);
    if (buffer < a2)
    {
      a2 = CVPixelBufferGetHeight(a13);
      buffer = *(self + 176);
      if (buffer < a2)
      {
        rectCopy = a16;
        pixelBufferCopy = a17;
        a11 = a13;
        cropRectCopy = a14;
        bufferCopy = a15;
      }
    }
  }

  _isStreaming = [self _isStreaming];
  if (a13)
  {
    v25 = _isStreaming;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 3;
  }

  if (*(self + 168) == CVPixelBufferGetWidth(a11))
  {
    Height = CVPixelBufferGetHeight(a11);
    v28 = *(self + 176);
    if (v28 == Height && rectCopy == *(self + 168) && pixelBufferCopy == v28)
    {
      v35 = *(self + 48);
      v34 = a11;
      goto LABEL_42;
    }
  }

  v30 = *(self + 128);
  if (!v30)
  {
    v31 = [self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(a11)];
    if (CVPixelBufferCreate(kCFAllocatorDefault, *(self + 168), *(self + 176), v31, *(self + 144), (self + 128)))
    {
      [CMISmartStyleProcessorV1 _configureStyleEngineInputUnstyledThumbnailPixelBuffer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:? inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:? withInputUnstyledThumbnailUsedForTargetGenerationCropRect:?];
      return v37;
    }

    v30 = *(self + 128);
  }

  v32 = [*(self + 56) downScalePixelBuffer:a11 toPixelBuffer:v30 inputROI:v26 filterOption:{cropRectCopy, bufferCopy, rectCopy, pixelBufferCopy}];
  if (v32)
  {
    v33 = v25;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v32 = [*(self + 56) downScalePixelBuffer:a11 toPixelBuffer:*(self + 128) inputROI:0 filterOption:{cropRectCopy, bufferCopy, rectCopy, pixelBufferCopy}];
  }

  if (!v32)
  {
    v34 = *(self + 128);
    v35 = *(self + 48);
LABEL_42:
    [v35 setInputThumbnailPixelBuffer:v34];
    return 0;
  }

  [CMISmartStyleProcessorV1 _configureStyleEngineInputUnstyledThumbnailPixelBuffer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:? inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:? withInputUnstyledThumbnailUsedForTargetGenerationCropRect:?];
  return v38;
}

- (unsigned)_pixelFormatCompatibleWithStyleProcessing:(unsigned int)processing
{
  v3 = *&processing;
  if ((FigCapturePixelFormatIsBGRA() & 1) == 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:v3];
    v5 = [&off_20A20 containsObject:v4];

    if ((v5 & 1) == 0 && (FigCapturePixelFormatIs444() & 1) == 0)
    {
      FigCaptureUncompressedPixelFormatForPixelFormat();
      v7 = FigCaptureUnPackedPixelFormatForPixelFormat();
      LODWORD(v3) = v7;
      if (v7 <= 2016686639)
      {
        switch(v7)
        {
          case 875704422:
            LODWORD(v3) = 875836518;
            break;
          case 875704438:
            LODWORD(v3) = 875836534;
            break;
          case 1751527984:
            LODWORD(v3) = 1751528500;
            break;
        }
      }

      else if (v7 > 2019963439)
      {
        if (v7 == 2019963440 || v7 == 2019963442)
        {
          LODWORD(v3) = 2019963956;
        }
      }

      else if (v7 == 2016686640 || v7 == 2016686642)
      {
        LODWORD(v3) = 2016687156;
      }
    }
  }

  return v3;
}

- (BOOL)requiresReconfigurationForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = 1;
  if (configurationCopy)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      styleEngineConfiguration = [(CMISmartStyleProcessorBaseConfiguration *)configuration styleEngineConfiguration];
      [styleEngineConfiguration thumbnailSize];
      v9 = v8;
      v46 = v10;
      styleEngineConfiguration2 = [configurationCopy styleEngineConfiguration];
      [styleEngineConfiguration2 thumbnailSize];
      v13 = v12;
      v15 = v14;

      [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration intermediateStyleRendererThumbnailSize];
      v17 = v16;
      v19 = v18;
      [configurationCopy intermediateStyleRendererThumbnailSize];
      v21 = v20;
      v23 = v22;
      styleEngineConfiguration3 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
      [styleEngineConfiguration3 spotlightCount];
      v26 = v25;
      styleEngineConfiguration4 = [configurationCopy styleEngineConfiguration];
      [styleEngineConfiguration4 spotlightCount];
      if (vceq_s32(v26, v28).u8[0])
      {
        v29 = v19 != v23 || v17 != v21;
        v30 = v9 != v13;
        if (v46 != v15)
        {
          v30 = 1;
        }

        v31 = v30 || v29;
        styleEngineConfiguration5 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
        [styleEngineConfiguration5 spotlightCount];
        v34 = v33;
        styleEngineConfiguration6 = [configurationCopy styleEngineConfiguration];
        [styleEngineConfiguration6 spotlightCount];
        v37 = v31 | vmvn_s8(vceq_s32(v34, v36)).i32[1];
      }

      else
      {
        LOBYTE(v37) = 1;
      }

      styleEngineConfiguration7 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
      weightPlaneCount = [styleEngineConfiguration7 weightPlaneCount];
      styleEngineConfiguration8 = [configurationCopy styleEngineConfiguration];
      v41 = v37 | (weightPlaneCount != [styleEngineConfiguration8 weightPlaneCount]);

      styleEngineConfiguration9 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
      linearSystemOrder = [styleEngineConfiguration9 linearSystemOrder];
      styleEngineConfiguration10 = [configurationCopy styleEngineConfiguration];
      v5 = v41 | (linearSystemOrder != [styleEngineConfiguration10 linearSystemOrder]);
    }
  }

  return v5 & 1;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v1, v6, v7, v8, v9, vars0, vars8);
  v3 = qword_27AE0;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, a1, "<<<< CMISmartStyleProcessor >>>>", 276, v1);
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v1, v6, v7, v8, v9, vars0, vars8);
  v3 = qword_27AE0;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, a1, "<<<< CMISmartStyleProcessor >>>>", 285, v1);
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.13(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.15(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.16(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)process
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *self = result;
  return result;
}

- (uint64_t)finishProcessing
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

- (uint64_t)purgeResources
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

- (uint64_t)setup
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM(v2);
  *self = result;
  return result;
}

- (uint64_t)prewarm
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

- (uint64_t)resetState
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputLinearPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputLinearCropRect:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputLinearPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputLinearCropRect:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputLinearPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputLinearCropRect:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)_configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:(_DWORD *)a1 unstyledThumbnailPixelBuffer:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:withInputUnstyledThumbnailUsedForTargetGenerationCropRect:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:withInputUnstyledThumbnailUsedForTargetGenerationCropRect:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

@end