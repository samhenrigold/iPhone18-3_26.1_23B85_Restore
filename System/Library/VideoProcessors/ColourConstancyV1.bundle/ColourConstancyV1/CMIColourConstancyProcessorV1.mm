@interface CMIColourConstancyProcessorV1
- (CMIColourConstancyProcessorDelegate)delegate;
- (id)externalMemoryDescriptorForConfiguration:(id)configuration;
- (int)addFrame:(__CVBuffer *)frame metadata:(id)metadata frameType:(unsigned int)type frameParams:(id)params;
- (int)prepareToProcess:(unsigned int)process;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)setup;
- (void)dealloc;
- (void)setExternalMemoryResource:(id)resource;
@end

@implementation CMIColourConstancyProcessorV1

- (void)dealloc
{
  [(CMIColourConstancyProcessorV1 *)self resetState];
  v3.receiver = self;
  v3.super_class = CMIColourConstancyProcessorV1;
  [(CMIColourConstancyProcessorV1 *)&v3 dealloc];
}

- (int)setup
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v3 = [NSBundle bundleForClass:objc_opt_class()];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v4 = [[FigMetalContext alloc] initWithbundle:v3 andOptionalCommandQueue:self->_metalCommandQueue];
  metalContext = self->_metalContext;
  self->_metalContext = v4;

  if (self->_metalContext)
  {
    v6 = [FigMetalAllocator alloc];
    device = [(FigMetalContext *)self->_metalContext device];
    v8 = [v6 initWithDevice:device allocatorType:2];
    [(FigMetalContext *)self->_metalContext setAllocator:v8];

    allocator = [(FigMetalContext *)self->_metalContext allocator];

    if (allocator)
    {
      v10 = sub_14A0C(self);
      if (v10)
      {
        sub_18588();
      }
    }

    else
    {
      sub_185E8(&v12);
      v10 = v12;
    }
  }

  else
  {
    sub_18638(&v13);
    v10 = v13;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v10;
}

- (void)setExternalMemoryResource:(id)resource
{
  objc_storeStrong(&self->_externalMemoryResource, resource);
  resourceCopy = resource;
  [(CMIColourConstancyCoreV1 *)self->_colourConstancyCoreProcessor setExternalMemoryResource:resourceCopy];
}

- (id)externalMemoryDescriptorForConfiguration:(id)configuration
{
  v4 = objc_opt_new();
  if (v4)
  {
    sub_186DC(self, v4);
  }

  else
  {
    sub_18738();
  }

  return v4;
}

- (int)prepareToProcess:(unsigned int)process
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (self->_allocatorSetupComplete)
  {
    LODWORD(v4) = 0;
    goto LABEL_19;
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];

  if (allocator)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (!v6)
    {
      sub_18924(&v22);
      LODWORD(v4) = v22;
      goto LABEL_18;
    }

    [v6 setWireMemory:1];
    [v7 setResourceOptions:512];
    [v7 setLabel:@"FigMetalAllocator_ColourConstancy"];
    if (!self->_externalMemoryResource || ![(CMIColourConstancyProcessorV1 *)self supportsExternalMemoryResource])
    {
      if (self->_allocatorSetupComplete)
      {
        v11 = 0;
      }

      else
      {
        self->_enableDebuggingOutput = 0;
        v11 = 92274688;
      }

      [v7 setMemSize:v11];
      allocator2 = [(FigMetalContext *)self->_metalContext allocator];
      v4 = [allocator2 setupWithDescriptor:v7];

      if (v4)
      {
        sub_188F8(v4, v13, v14, v15, v16, v17, v18, v19, v21, v22, v23[0], v23[1]);
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    allocatorBackend = [(CMIExternalMemoryResource *)self->_externalMemoryResource allocatorBackend];
    v9 = allocatorBackend;
    if (allocatorBackend)
    {
      if (self->_allocatorSetupComplete)
      {
        sub_18844();
      }

      else
      {
        self->_enableDebuggingOutput = 0;
        if ([allocatorBackend memSize] >> 23 >= 0xB)
        {
          [v7 setMemSize:{objc_msgSend(v9, "memSize")}];
          allocator3 = [(FigMetalContext *)self->_metalContext allocator];
          v4 = [allocator3 setupWithDescriptor:v7 allocatorBackend:v9];

          if (!v4)
          {

LABEL_17:
            LODWORD(v4) = 0;
            self->_allocatorSetupComplete = 1;
LABEL_18:

            goto LABEL_19;
          }

          sub_18798(v4);
LABEL_30:

          goto LABEL_18;
        }
      }

      LODWORD(v4) = 0;
      goto LABEL_30;
    }

    sub_188A8(&v21 + 1);
    LODWORD(v4) = HIDWORD(v21);
    goto LABEL_30;
  }

  sub_189CC(v23);
  LODWORD(v4) = v23[0];
LABEL_19:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v4;
}

- (int)process
{
  selfCopy = self;
  if (gGMFigKTraceEnabled == 1)
  {
    self = kdebug_trace();
  }

  if (!selfCopy->_allocatorSetupComplete)
  {
    sub_18A1C(self);
    v57 = 6;
    goto LABEL_60;
  }

  ambientPixelBuffer = selfCopy->_ambientPixelBuffer;
  if (!ambientPixelBuffer)
  {
    sub_197F8();
    goto LABEL_64;
  }

  if (!selfCopy->_processorData.brackets[0].bracketMetadata)
  {
    sub_19798();
    goto LABEL_64;
  }

  if (!selfCopy->_processorData.brackets[0].lumaTexture)
  {
    sub_19738();
    goto LABEL_64;
  }

  if (!selfCopy->_processorData.brackets[0].chromaTexture)
  {
    sub_196D8();
    goto LABEL_64;
  }

  if (!selfCopy->_flashPixelBuffer)
  {
    sub_19678();
    goto LABEL_64;
  }

  if (!selfCopy->_processorData.brackets[1].bracketMetadata)
  {
    sub_19618();
    goto LABEL_64;
  }

  if (!selfCopy->_processorData.brackets[1].lumaTexture)
  {
    sub_195B8();
    goto LABEL_64;
  }

  if (!selfCopy->_processorData.brackets[1].chromaTexture)
  {
    sub_19558();
    goto LABEL_64;
  }

  if (!selfCopy->_outputImagePixelBuffer)
  {
    sub_194F8();
    goto LABEL_64;
  }

  if (!selfCopy->_outputColourAccuracyConfidenceImagePixelBuffer)
  {
    sub_19498();
    goto LABEL_64;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(ambientPixelBuffer);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(selfCopy->_flashPixelBuffer))
  {
    sub_18A7C();
    goto LABEL_59;
  }

  Width = CVPixelBufferGetWidth(selfCopy->_ambientPixelBuffer);
  if (Width != CVPixelBufferGetWidth(selfCopy->_flashPixelBuffer))
  {
    sub_18AE0();
    goto LABEL_64;
  }

  Height = CVPixelBufferGetHeight(selfCopy->_ambientPixelBuffer);
  if (Height != CVPixelBufferGetHeight(selfCopy->_flashPixelBuffer))
  {
    sub_18B40();
    goto LABEL_64;
  }

  v7 = CVPixelBufferGetWidth(selfCopy->_outputImagePixelBuffer);
  if (v7 != CVPixelBufferGetWidth(selfCopy->_flashPixelBuffer))
  {
    sub_18BA0();
    goto LABEL_64;
  }

  v8 = CVPixelBufferGetHeight(selfCopy->_outputImagePixelBuffer);
  if (v8 != CVPixelBufferGetHeight(selfCopy->_flashPixelBuffer))
  {
    sub_18C00();
    goto LABEL_64;
  }

  CVPixelBufferGetPixelFormatType(selfCopy->_outputImagePixelBuffer);
  if (FigCaptureUncompressedPixelFormatForPixelFormat() != 875704422)
  {
    sub_18C60();
    goto LABEL_64;
  }

  CVPixelBufferGetPixelFormatType(selfCopy->_outputColourAccuracyConfidenceImagePixelBuffer);
  if (FigCaptureUncompressedPixelFormatForPixelFormat() != 1278226488)
  {
    sub_18CC4();
    goto LABEL_64;
  }

  v9 = [(FigMetalContext *)selfCopy->_metalContext bindPixelBufferToMTL2DTexture:selfCopy->_outputImagePixelBuffer pixelFormat:10 usage:7 plane:0];
  outputLumaTexture = selfCopy->_processorData.outputLumaTexture;
  selfCopy->_processorData.outputLumaTexture = v9;

  if (!selfCopy->_processorData.outputLumaTexture)
  {
    sub_19438();
LABEL_97:
    v57 = 4;
    goto LABEL_60;
  }

  v11 = [(FigMetalContext *)selfCopy->_metalContext bindPixelBufferToMTL2DTexture:selfCopy->_outputImagePixelBuffer pixelFormat:30 usage:7 plane:1];
  outputChromaTexture = selfCopy->_processorData.outputChromaTexture;
  selfCopy->_processorData.outputChromaTexture = v11;

  if (!selfCopy->_processorData.outputChromaTexture)
  {
    sub_193D8();
    goto LABEL_97;
  }

  v13 = [(FigMetalContext *)selfCopy->_metalContext bindPixelBufferToMTL2DTexture:selfCopy->_outputColourAccuracyConfidenceImagePixelBuffer pixelFormat:10 usage:7 plane:0];
  outputColourAccuracyConfidenceTexture = selfCopy->_processorData.outputColourAccuracyConfidenceTexture;
  selfCopy->_processorData.outputColourAccuracyConfidenceTexture = v13;

  if (!selfCopy->_processorData.outputColourAccuracyConfidenceTexture)
  {
    sub_19378();
    goto LABEL_97;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
      if (gGMFigKTraceEnabled == 1)
      {
        kdebug_trace();
        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }
      }
    }
  }

  v15 = [(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_MinimumValidBufferRectForGDC];
  v16 = [(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_FinalCropRect];
  v17 = v16;
  if (v15)
  {
    memset(&rect, 0, sizeof(rect));
    if (!CGRectMakeWithDictionaryRepresentation(v15, &rect))
    {
      sub_18D28(&rect, v17, v15);
      goto LABEL_101;
    }

    width = rect.size.width;
    height = rect.size.height;
    x = rect.origin.x;
    y = rect.origin.y;
    goto LABEL_37;
  }

  if (!v16)
  {
    width = [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture width];
    v19 = 0;
    height = [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture height];
    goto LABEL_38;
  }

  memset(&rect, 0, sizeof(rect));
  if (!CGRectMakeWithDictionaryRepresentation(v16, &rect))
  {
    sub_18DA0();
LABEL_100:

    goto LABEL_101;
  }

  v23 = [(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_StillImageProcessingMetadata];
  v24 = [v23 objectForKeyedSubscript:kFigCaptureStillImageProcessingMetadataKey_FinalAspectRatio];
  [v24 doubleValue];

  [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture width];
  [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture height];
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect();
  v25 = v63.origin.x;
  v26 = v63.origin.y;
  v27 = v63.size.width;
  v28 = v63.size.height;
  if (CGRectIsNull(v63))
  {
    sub_18E00();
    goto LABEL_100;
  }

  width = v27;
  height = v28;
  x = v25;
  y = v26;
LABEL_37:
  v19 = x | (y << 32);
LABEL_38:
  outputLinearRGBPixelBuffer = selfCopy->_outputLinearRGBPixelBuffer;
  if (!outputLinearRGBPixelBuffer)
  {
    goto LABEL_45;
  }

  v30 = CVPixelBufferGetWidth(outputLinearRGBPixelBuffer);
  v31 = CVPixelBufferGetHeight(selfCopy->_outputLinearRGBPixelBuffer);
  if ((v30 != width || v31 != height) && (v30 != width / 2 || v31 != height / 2))
  {
    sub_18E60(v17, v15);
LABEL_64:
    v57 = 1;
    goto LABEL_60;
  }

  CVPixelBufferGetPixelFormatType(selfCopy->_outputLinearRGBPixelBuffer);
  if (FigCaptureUncompressedPixelFormatForPixelFormat() != 1380410945)
  {
    sub_18ED8(v17, v15);
    goto LABEL_64;
  }

  v32 = [(FigMetalContext *)selfCopy->_metalContext bindPixelBufferToMTL2DTexture:selfCopy->_outputLinearRGBPixelBuffer pixelFormat:125 usage:7 plane:0];
  outputLinearRGBTexture = selfCopy->_processorData.outputLinearRGBTexture;
  selfCopy->_processorData.outputLinearRGBTexture = v32;

  if (!selfCopy->_processorData.outputLinearRGBTexture)
  {
    sub_18F54(v17, v15);
    goto LABEL_97;
  }

LABEL_45:
  if (v15)
  {
    FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata();
    [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture width];
    [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture height];
    CVPixelBufferGetWidth(selfCopy->_outputColourAccuracyConfidenceImagePixelBuffer);
    CVPixelBufferGetHeight(selfCopy->_outputColourAccuracyConfidenceImagePixelBuffer);
    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop();
  }

  else
  {
    confidenceMapMetadata = selfCopy->_confidenceMapMetadata;
    selfCopy->_confidenceMapMetadata = 0;
  }

  v35 = [(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata objectForKeyedSubscript:kFigCaptureStreamMetadata_SensorCropRect];
  if (!v35)
  {
    sub_19300(v17, v15);
LABEL_101:
    v57 = 2;
    goto LABEL_60;
  }

  v36 = v35;
  memset(&v61, 0, sizeof(v61));
  if (!CGRectMakeWithDictionaryRepresentation(v35, &v61))
  {
    sub_18FCC(v36, v17, v15);
    goto LABEL_101;
  }

  v60 = 0;
  v37 = [(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata cmi_intValueForKey:kFigCaptureStreamMetadata_RawSensorWidth defaultValue:0 found:&v60];
  if ((v60 & 1) == 0)
  {
    sub_19054(v36, v17, v15);
    goto LABEL_101;
  }

  v38 = v37;
  v39 = [(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata cmi_intValueForKey:kFigCaptureStreamMetadata_RawSensorHeight defaultValue:0 found:&v60];
  if ((v60 & 1) == 0)
  {
    sub_190DC(v36, v17, v15);
    goto LABEL_101;
  }

  v40 = v39;
  v41 = v38 - [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture width];
  if (v41 < 0)
  {
    sub_19278(v36, v17, v15);
LABEL_92:
    v57 = 2;
    goto LABEL_60;
  }

  v59 = v15;
  v42 = v17;
  v43 = v40 - [(MTLTexture *)selfCopy->_processorData.brackets[1].lumaTexture height];
  if (v43 < 0)
  {
    sub_191F0(v36, v42, v59);
    goto LABEL_92;
  }

  if ([(NSDictionary *)selfCopy->_processorData.brackets[1].bracketMetadata cmi_intValueForKey:kFigCaptureStreamMetadata_QuadraBinningFactor defaultValue:0 found:0]== 1)
  {
    v44 = v61.origin.x + v19;
    v45 = v61.origin.y + HIDWORD(v19);
    v46 = 1;
    v47 = vadd_s32(__PAIR64__(v40, v38), __PAIR64__(v40, v38));
  }

  else
  {
    v46 = 0;
    v44 = v19 + (v41 >> 1);
    v45 = HIDWORD(v19) + (v43 >> 1);
    v47 = __PAIR64__(v40, v38);
  }

  *&rect.origin.x = __PAIR64__(height, width);
  *&rect.origin.y = __PAIR64__(v45, v44);
  LOBYTE(rect.size.width) = v46;
  *(&rect.size.width + 1) = 0;
  BYTE3(rect.size.width) = 0;
  v48 = sub_14B9C(selfCopy, width | (height << 32), v19, &rect, *&v47);
  if (!v48)
  {
    [(NSMutableDictionary *)selfCopy->_outputImageMetadata setObject:&__kCFBooleanTrue forKeyedSubscript:kFigCaptureSampleBufferMetadata_ConstantColorApplied];
    *&v49 = selfCopy->_outputCenterWeightedMeanColourAccuracyConfidenceLevel;
    v50 = [NSNumber numberWithFloat:v49];
    [(NSMutableDictionary *)selfCopy->_outputImageMetadata setObject:v50 forKeyedSubscript:kFigCaptureSampleBufferMetadata_ConstantColorCenterWeightedMeanConfidenceLevel];

    [(NSMutableDictionary *)selfCopy->_outputImageMetadata setObject:&off_357B0 forKeyedSubscript:kFigCaptureSampleBufferMetadata_ConstantColorAnalyticsVersion];
    LODWORD(v51) = *selfCopy->_strobeWhitePoint;
    v52 = [NSNumber numberWithFloat:v51];
    [(NSMutableDictionary *)selfCopy->_outputImageMetadata setObject:v52 forKeyedSubscript:kFigCaptureSampleBufferMetadata_ConstantColorStrobeWhitePointRGain];

    LODWORD(v53) = *&selfCopy->_strobeWhitePoint[4];
    v54 = [NSNumber numberWithFloat:v53];
    [(NSMutableDictionary *)selfCopy->_outputImageMetadata setObject:v54 forKeyedSubscript:kFigCaptureSampleBufferMetadata_ConstantColorStrobeWhitePointGGain];

    LODWORD(v55) = *&selfCopy->_strobeWhitePoint[8];
    v56 = [NSNumber numberWithFloat:v55];
    [(NSMutableDictionary *)selfCopy->_outputImageMetadata setObject:v56 forKeyedSubscript:kFigCaptureSampleBufferMetadata_ConstantColorStrobeWhitePointBGain];

    [(CMIColourConstancyCoreV1 *)selfCopy->_colourConstancyCoreProcessor figProcessorDebugDump];
LABEL_59:
    v57 = 0;
    goto LABEL_60;
  }

  v57 = v48;
  sub_19164(v36, v42, v59);
LABEL_60:
  [(CMIColourConstancyCoreV1 *)selfCopy->_colourConstancyCoreProcessor purgeResources];
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v57;
}

- (int)purgeResources
{
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  usedSizeAll = [allocator usedSizeAll];

  if (usedSizeAll)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -1, v2, v9, v10, v11, v12, vars0, vars8);
  }

  else
  {
    allocator2 = [(FigMetalContext *)self->_metalContext allocator];
    [allocator2 reset];

    allocator3 = [(FigMetalContext *)self->_metalContext allocator];
    [allocator3 purgeResources];
  }

  return 0;
}

- (int)resetState
{
  CVPixelBufferRelease(self->_ambientPixelBuffer);
  self->_ambientPixelBuffer = 0;
  ambientFrameParams = self->_ambientFrameParams;
  self->_ambientFrameParams = 0;

  lumaTexture = self->_processorData.brackets[0].lumaTexture;
  self->_processorData.brackets[0].lumaTexture = 0;

  chromaTexture = self->_processorData.brackets[0].chromaTexture;
  self->_processorData.brackets[0].chromaTexture = 0;

  lscGainsTexture = self->_processorData.brackets[0].lscGainsTexture;
  self->_processorData.brackets[0].lscGainsTexture = 0;

  bracketMetadata = self->_processorData.brackets[0].bracketMetadata;
  self->_processorData.brackets[0].bracketMetadata = 0;

  CVPixelBufferRelease(self->_flashPixelBuffer);
  self->_flashPixelBuffer = 0;
  flashFrameParams = self->_flashFrameParams;
  self->_flashFrameParams = 0;

  *self->_strobeWhitePoint = 0u;
  v9 = self->_processorData.brackets[1].lumaTexture;
  self->_processorData.brackets[1].lumaTexture = 0;

  v10 = self->_processorData.brackets[1].chromaTexture;
  self->_processorData.brackets[1].chromaTexture = 0;

  v11 = self->_processorData.brackets[1].lscGainsTexture;
  self->_processorData.brackets[1].lscGainsTexture = 0;

  v12 = self->_processorData.brackets[1].bracketMetadata;
  self->_processorData.brackets[1].bracketMetadata = 0;

  CVPixelBufferRelease(self->_outputImagePixelBuffer);
  CVPixelBufferRelease(self->_outputColourAccuracyConfidenceImagePixelBuffer);
  self->_outputImagePixelBuffer = 0;
  self->_outputColourAccuracyConfidenceImagePixelBuffer = 0;
  outputLumaTexture = self->_processorData.outputLumaTexture;
  self->_processorData.outputLumaTexture = 0;

  outputChromaTexture = self->_processorData.outputChromaTexture;
  self->_processorData.outputChromaTexture = 0;

  outputColourAccuracyConfidenceTexture = self->_processorData.outputColourAccuracyConfidenceTexture;
  self->_processorData.outputColourAccuracyConfidenceTexture = 0;

  outputLinearRGBTexture = self->_processorData.outputLinearRGBTexture;
  self->_processorData.outputLinearRGBTexture = 0;

  outputImageMetadata = self->_outputImageMetadata;
  self->_outputImageMetadata = 0;

  confidenceMapMetadata = self->_confidenceMapMetadata;
  self->_confidenceMapMetadata = 0;

  self->_isSetupTuningParametersDone = 0;
  return 0;
}

- (int)addFrame:(__CVBuffer *)frame metadata:(id)metadata frameType:(unsigned int)type frameParams:(id)params
{
  metadataCopy = metadata;
  paramsCopy = params;
  if (!self->_allocatorSetupComplete)
  {
    sub_19858();
    newTextureDescriptor = 0;
    v29 = 6;
    goto LABEL_35;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_198B8();
LABEL_28:
    newTextureDescriptor = 0;
    goto LABEL_34;
  }

  if (!paramsCopy)
  {
    sub_19D44();
    goto LABEL_28;
  }

  if (CVPixelBufferGetPixelFormatType([paramsCopy lscGains]) != 1380411457)
  {
    sub_1991C();
    goto LABEL_28;
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_19CE4();
    v29 = 7;
    goto LABEL_35;
  }

  if (!metadataCopy)
  {
    sub_19C84();
    v29 = 2;
    goto LABEL_35;
  }

  CVPixelBufferGetPixelFormatType(frame);
  if (FigCaptureUncompressedPixelFormatForPixelFormat() != 1751527984)
  {
    sub_19980();
    goto LABEL_34;
  }

  if (!self->_isSetupTuningParametersDone)
  {
    v30 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
    v31 = [(NSDictionary *)self->_tuningParameters objectForKeyedSubscript:v30];
    sub_15168(self, v31);
  }

  if (!CVPixelBufferIsPlanar(frame))
  {
    sub_19C24();
    goto LABEL_34;
  }

  if (CVPixelBufferGetPlaneCount(frame) != 2)
  {
    sub_199E4();
    goto LABEL_34;
  }

  if (type)
  {
    if (type == 1)
    {
      v33 = newTextureDescriptor;
      v15 = metadataCopy;
      v16 = 120;
      v17 = 56;
      v18 = 40;
      goto LABEL_18;
    }

LABEL_34:
    v29 = 1;
    goto LABEL_35;
  }

  v33 = newTextureDescriptor;
  v15 = metadataCopy;
  v16 = 80;
  v17 = 48;
  v18 = 32;
LABEL_18:
  *(&self->super.isa + v18) = CVPixelBufferRetain(frame);
  objc_storeStrong((&self->super.isa + v17), params);
  v19 = self + v16;
  objc_storeStrong((&self->_allocatorSetupComplete + v16), metadata);
  if (![paramsCopy lscGains])
  {
    sub_19BC4();
    v29 = 1;
LABEL_40:
    metadataCopy = v15;
LABEL_42:
    newTextureDescriptor = v33;
    goto LABEL_35;
  }

  v20 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](self->_metalContext, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", [paramsCopy lscGains], 115, 23, 0);
  v21 = *(v19 + 3);
  *(v19 + 3) = v20;

  if (!*(v19 + 3))
  {
    sub_19B64();
    v29 = 4;
    goto LABEL_40;
  }

  lscParams = [paramsCopy lscParams];

  metadataCopy = v15;
  if (!lscParams)
  {
    sub_19B04();
    v29 = 1;
    goto LABEL_42;
  }

  lscParams2 = [paramsCopy lscParams];
  v24 = *(v19 + 4);
  *(v19 + 4) = lscParams2;

  v25 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:frame pixelFormat:25 usage:7 plane:0];
  v26 = *v19;
  *v19 = v25;

  newTextureDescriptor = v33;
  if (*v19)
  {
    v27 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:frame pixelFormat:65 usage:7 plane:1];
    v28 = *(v19 + 1);
    *(v19 + 1) = v27;

    if (*(v19 + 1))
    {
      v29 = 0;
      goto LABEL_35;
    }

    sub_19A44();
  }

  else
  {
    sub_19AA4();
  }

  v29 = 4;
LABEL_35:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v29;
}

- (CMIColourConstancyProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)prewarm
{
  if (gGMFigKTraceEnabled == 1)
  {
    sub_98EC(822153733);
  }

  v3 = sub_14A0C(self);
  if (gGMFigKTraceEnabled == 1)
  {
    sub_98EC(822153734);
  }

  return v3;
}

@end