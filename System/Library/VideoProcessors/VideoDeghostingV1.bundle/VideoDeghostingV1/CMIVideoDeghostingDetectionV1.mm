@interface CMIVideoDeghostingDetectionV1
- (BOOL)_extractLightAndGhostTilesFromMetadata:(id)metadata imageBufferDimensions:(id)dimensions clippingTuningParams:(ClippingDataTuning *)params adjustedPrincipalPoint:(CGPoint)point ghostSearchTile:(CGRect *)tile;
- (CGPoint)bias;
- (CGPoint)reflectPoint:(CGPoint *)point pivotPoint:(CGPoint *)pivotPoint;
- (CGRect)_computeGhostBoundingBoxFromMaskUsingMax:(__CVBuffer *)max searchROI:(CGRect)i threshold:(float)threshold ghostSize:(float)size detectionScalingFactor:;
- (CMIVideoDeghostingDetectionV1)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters enableMaskRegistration:(BOOL)registration;
- (int)_compileShaders;
- (int)_computeMotionRegisteredMask:(id)mask maskPrev:(id)prev;
- (int)_extractAndCheckTuningParameters:(id)parameters;
- (int)_extractCalibrationDataFromMetadata:(id)metadata pixelBufferDimensions:(id)dimensions;
- (int)_extractCameraInfoFromMetadata:(id)metadata;
- (int)_getShapeMask:(const CGRect *)mask outputMask:(id)outputMask ghostSize:(int)size maskScalingFactor:;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (void)dealloc;
@end

@implementation CMIVideoDeghostingDetectionV1

- (CMIVideoDeghostingDetectionV1)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters enableMaskRegistration:(BOOL)registration
{
  contextCopy = context;
  parametersCopy = parameters;
  if (!contextCopy)
  {
    sub_17A54(self);
    goto LABEL_27;
  }

  v39.receiver = self;
  v39.super_class = CMIVideoDeghostingDetectionV1;
  v13 = [(CMIVideoDeghostingDetectionV1 *)&v39 init];
  v14 = v13;
  if (!v13)
  {
    sub_179DC();
    goto LABEL_14;
  }

  objc_storeStrong(&v13->_metalContext, context);
  objc_storeStrong(&v14->_tuningParameters, parameters);
  v14->_imageDimensions = dimensions;
  v14->_maskRegistrationEnabled = registration;
  v15 = [(CMIVideoDeghostingDetectionV1 *)v14 _extractAndCheckTuningParameters:v14->_tuningParameters];
  if (v15)
  {
    sub_174AC(v15, v14);
    goto LABEL_27;
  }

  v16 = [[VDGMetalUtilsV1 alloc] initWithMetalContext:contextCopy];
  vdgMetalUtils = v14->_vdgMetalUtils;
  v14->_vdgMetalUtils = v16;

  if (!v14->_vdgMetalUtils)
  {
    sub_1795C(v14);
    goto LABEL_27;
  }

  v18 = [[CMIVideoDeghostingBrightLightV1 alloc] initWithMetalContext:v14->_metalContext];
  greenGhostBrightLightDetection = v14->_greenGhostBrightLightDetection;
  v14->_greenGhostBrightLightDetection = v18;

  if (!v14->_greenGhostBrightLightDetection)
  {
    sub_178DC(v14);
    goto LABEL_27;
  }

  v20 = objc_alloc_init(CMIVideoDeghostingBrightLightTuningParamsV1);
  greenGhostBrightLightTuningParameters = v14->_greenGhostBrightLightTuningParameters;
  v14->_greenGhostBrightLightTuningParameters = v20;

  if (!v14->_greenGhostBrightLightTuningParameters)
  {
    sub_1785C(v14);
    goto LABEL_27;
  }

  _compileShaders = [(CMIVideoDeghostingDetectionV1 *)v14 _compileShaders];
  if (_compileShaders)
  {
    sub_1753C(_compileShaders, v14);
    goto LABEL_27;
  }

  resetState = [(CMIVideoDeghostingDetectionV1 *)v14 resetState];
  if (resetState)
  {
    sub_175CC(resetState, v14);
    goto LABEL_27;
  }

  v14->_scaleForGetShapeInputs = FigGetCFPreferenceNumberWithDefault();
  *&v14->_sensorBinningFactorVertical = 0x100000001;
  motionSampleRingBuffer = v14->_motionSampleRingBuffer;
  v14->_motionSampleRingBuffer = 0;

  v25 = vcvt_f32_s32(v14->_imageDimensions);
  __asm
  {
    FMOV            V1.2S, #0.25
    FMOV            V2.2S, #1.0
  }

  *&v14->_detectionScalingFactor[4] = vdiv_f32(vcvt_f32_s32((*&vcvt_s32_f32(vmla_f32(_D2, _D1, v25)) & 0xFFFFFFFEFFFFFFFELL)), v25);
  PixelBuffer = CreatePixelBuffer();
  v14->_detectionMask = PixelBuffer;
  if (!PixelBuffer)
  {
    sub_177DC(v14);
    goto LABEL_27;
  }

  v33 = [(FigMetalContext *)v14->_metalContext bindPixelBufferToMTL2DTexture:PixelBuffer pixelFormat:25 usage:7 plane:0];
  detectionMaskTexture = v14->_detectionMaskTexture;
  v14->_detectionMaskTexture = v33;

  if (!v14->_detectionMaskTexture)
  {
    sub_1775C(v14);
    goto LABEL_27;
  }

  if (v14->_maskRegistrationEnabled)
  {
    v35 = CreatePixelBuffer();
    v14->_detectionMaskPrev = v35;
    if (v35)
    {
      v36 = [(FigMetalContext *)v14->_metalContext bindPixelBufferToMTL2DTexture:v35 pixelFormat:25 usage:7 plane:0];
      detectionMaskPrevTexture = v14->_detectionMaskPrevTexture;
      v14->_detectionMaskPrevTexture = v36;

      if (v14->_detectionMaskPrevTexture)
      {
        goto LABEL_14;
      }

      sub_1765C(v14);
    }

    else
    {
      sub_176DC(v14);
    }

LABEL_27:
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)dealloc
{
  [(CMIVideoDeghostingDetectionV1 *)self finishProcessing];
  [(CMIVideoDeghostingDetectionV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingDetectionV1;
  [(CMIVideoDeghostingDetectionV1 *)&v3 dealloc];
}

- (int)purgeResources
{
  FigMetalDecRef();
  FigMetalDecRef();
  detectionMask = self->_detectionMask;
  if (detectionMask)
  {
    CFRelease(detectionMask);
    self->_detectionMask = 0;
  }

  detectionMaskPrev = self->_detectionMaskPrev;
  if (detectionMaskPrev)
  {
    CFRelease(detectionMaskPrev);
    self->_detectionMaskPrev = 0;
  }

  return 0;
}

- (int)_extractAndCheckTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (!parametersCopy)
  {
    sub_17D68(&v26);
LABEL_19:
    v24 = v26;
    goto LABEL_10;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"GhostDetectionThreshold"];

  if (!v6)
  {
    sub_17D0C(&v26);
    goto LABEL_19;
  }

  v7 = [v5 objectForKeyedSubscript:@"MinShapeScore"];

  if (!v7)
  {
    sub_17CB0(&v26);
    goto LABEL_19;
  }

  v8 = [v5 objectForKeyedSubscript:@"GhostSize"];

  if (!v8)
  {
    sub_17C54(&v26);
    goto LABEL_19;
  }

  v9 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];

  if (!v9)
  {
    sub_17BF8(&v26);
    goto LABEL_19;
  }

  v10 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];

  if (!v10)
  {
    sub_17B9C(&v26);
    goto LABEL_19;
  }

  v11 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];

  if (!v11)
  {
    sub_17B40(&v26);
    goto LABEL_19;
  }

  v12 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];

  if (!v12)
  {
    sub_17AE4(&v26);
    goto LABEL_19;
  }

  v13 = [v5 objectForKeyedSubscript:@"GhostDetectionThreshold"];
  [v13 floatValue];
  self->_detectionThreshold = v14;

  v15 = [v5 objectForKeyedSubscript:@"MinShapeScore"];
  [v15 floatValue];
  self->_minShapeScore = v16;

  v17 = [v5 objectForKeyedSubscript:@"GhostSize"];
  self->_ghostSize = [v17 intValue];

  v18 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];
  self->_searchRangeInPixel = [v18 intValue];

  v19 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];
  [v19 floatValue];
  self->_shapeScoreLambda = v20;

  v21 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];
  [v21 floatValue];
  self->_contextScoreLambda = v22;

  v23 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];
  self->_contextPaddingInPixel = [v23 intValue];

  v24 = 0;
LABEL_10:

  return v24;
}

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::computeShapeMask" constants:0];
  v4 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v3;

  if (!self->_pipelineStates[0])
  {
    sub_17FC8(&v12);
    return v12;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::downscaleAndCrop" constants:0];
  v6 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v5;

  if (!self->_pipelineStates[1])
  {
    sub_17F1C(&v12);
    return v12;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::computeShiftDilateHorizontal" constants:0];
  v8 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v7;

  if (!self->_pipelineStates[2])
  {
    sub_17E70(&v12);
    return v12;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::computeDilateVerticalMultiply" constants:0];
  v10 = self->_pipelineStates[3];
  self->_pipelineStates[3] = v9;

  if (!self->_pipelineStates[3])
  {
    sub_17DC4(&v12);
    return v12;
  }

  return 0;
}

- (int)_getShapeMask:(const CGRect *)mask outputMask:(id)outputMask ghostSize:(int)size maskScalingFactor:
{
  v7 = v6;
  outputMaskCopy = outputMask;
  v133[0] = v7;
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  x = mask->origin.x;
  y = mask->origin.y;
  width = mask->size.width;
  height = mask->size.height;
  v101 = [VDGMetalUtilsV1 getMetalFormatFor:CVPixelBufferGetPixelFormatType(self->_inputPixelBuffer)];
  if (![v101 count])
  {
    sub_183A0(&width);
LABEL_27:
    v82 = width;
    goto LABEL_21;
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_18344(&width);
    goto LABEL_27;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setPixelFormat:25];

  LODWORD(v22) = self->_scaleForGetShapeInputs;
  v23 = (mask->size.width / v22);
  desc3 = [newTextureDescriptor desc];
  [desc3 setWidth:v23];

  LODWORD(v25) = self->_scaleForGetShapeInputs;
  v26 = (mask->size.height / v25);
  desc4 = [newTextureDescriptor desc];
  [desc4 setHeight:v26];

  desc5 = [newTextureDescriptor desc];
  [desc5 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v132 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];

  v95 = v132;
  if (!v132)
  {
    sub_182D0();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v131 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];

  v100 = v131;
  if (!v131)
  {
    sub_1825C();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v130 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];

  v99 = v130;
  if (!v130)
  {
    sub_181E8();
    goto LABEL_27;
  }

  v102 = commandBuffer;
  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v129 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];

  v98 = v129;
  if (!v129)
  {
    sub_18174();
    goto LABEL_40;
  }

  HIDWORD(v89) = size;
  metalContext = self->_metalContext;
  inputPixelBuffer = self->_inputPixelBuffer;
  v35 = [v101 objectAtIndexedSubscript:0];
  v36 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](metalContext, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", inputPixelBuffer, [v35 intValue], 1, 0);

  if (!v36)
  {
    sub_18100();
    goto LABEL_40;
  }

  maskCopy = mask;
  if (self->_scaleForGetShapeInputs >= 2)
  {
    [newTextureDescriptor setLabel:0];
    allocator6 = [(FigMetalContext *)self->_metalContext allocator];
    v38 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
    v124 = v38;

    if (v38)
    {
      v39 = self->_pipelineStates[1];
      *v40.i32 = self->_scaleForGetShapeInputs;
      v123 = vdup_lane_s32(v40, 0);
      v122 = vcvt_f32_f64(mask->origin);
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v39];
      [computeCommandEncoder setTexture:v36 atIndex:0];
      [computeCommandEncoder setTexture:v38 atIndex:1];
      [computeCommandEncoder setBytes:&v123 length:8 atIndex:0];
      [computeCommandEncoder setBytes:&v122 length:8 atIndex:1];
      threadExecutionWidth = [(MTLComputePipelineState *)v39 threadExecutionWidth];
      v93 = v39;
      v96 = v36;
      v43 = outputMaskCopy;
      v44 = [(MTLComputePipelineState *)v39 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
      width = [v38 width];
      height = [v38 height];
      v121 = 1;
      v116 = threadExecutionWidth;
      v117 = v44;
      outputMaskCopy = v43;
      v118 = 1;
      [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v116];
      v94 = computeCommandEncoder;
      [computeCommandEncoder endEncoding];
      LODWORD(v45) = self->_scaleForGetShapeInputs;
      v46 = v45;
      width = width / v46;
      height = height / v46;
      v36 = v38;

      y = 0.0;
      x = 0.0;
      goto LABEL_12;
    }

    sub_18074(v36, newTextureDescriptor, &width);
LABEL_40:
    v82 = width;
    goto LABEL_21;
  }

  v93 = 0;
  v94 = 0;
LABEL_12:
  v47 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeGradientX:v95 GradientY:v100 absGradientX:v99 absGradientY:v98 inputLumaTex:v36 roi:[VDGMetalUtilsV1 isTenBitPixelBufferFormat:?], x, y, width, height, commandBuffer];
  if (v47)
  {
    v82 = v47;
    fig_log_get_emitter();
    LODWORD(v87) = v82;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v87, v5, v5, v89, v90, maskCopy, v93, v94);
LABEL_32:

    goto LABEL_21;
  }

  desc6 = [newTextureDescriptor desc];
  [desc6 setTextureType:2];

  desc7 = [newTextureDescriptor desc];
  [desc7 setPixelFormat:55];

  LODWORD(v50) = self->_scaleForGetShapeInputs;
  v51 = (maskCopy->size.width / v50 + 1.0);
  desc8 = [newTextureDescriptor desc];
  [desc8 setWidth:v51];

  LODWORD(v53) = self->_scaleForGetShapeInputs;
  v54 = (maskCopy->size.height / v53 + 1.0);
  desc9 = [newTextureDescriptor desc];
  [desc9 setHeight:v54];

  desc10 = [newTextureDescriptor desc];
  [desc10 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator7 = [(FigMetalContext *)self->_metalContext allocator];
  v58 = [allocator7 newTextureWithDescriptor:newTextureDescriptor];
  v128 = v58;

  if (!v58)
  {
    fig_log_get_emitter();
    v82 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v88, v5);
    goto LABEL_32;
  }

  v91 = outputMaskCopy;
  [newTextureDescriptor setLabel:0];
  allocator8 = [(FigMetalContext *)self->_metalContext allocator];
  v60 = [allocator8 newTextureWithDescriptor:newTextureDescriptor];
  v127 = v60;

  if (!v60)
  {
    emitter = fig_log_get_emitter();
    v85 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 620);
LABEL_35:
    v82 = v85;

LABEL_37:
    outputMaskCopy = v91;
    goto LABEL_21;
  }

  [newTextureDescriptor setLabel:0];
  allocator9 = [(FigMetalContext *)self->_metalContext allocator];
  v62 = [allocator9 newTextureWithDescriptor:newTextureDescriptor];
  v126 = v62;

  if (!v62)
  {
    v86 = fig_log_get_emitter();
    v85 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 4294954510, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 624);
    goto LABEL_35;
  }

  v97 = v36;
  [newTextureDescriptor setLabel:0];
  allocator10 = [(FigMetalContext *)self->_metalContext allocator];
  v64 = [allocator10 newTextureWithDescriptor:newTextureDescriptor];
  v125 = v64;

  if (!v64)
  {
    fig_log_get_emitter();
    v82 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v88, v5);

    goto LABEL_37;
  }

  v65 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v95 destinationTexture:v58 commandBuffer:commandBuffer];
  v66 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v100 destinationTexture:v60 commandBuffer:commandBuffer]| v65;
  v67 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v99 destinationTexture:v62 commandBuffer:commandBuffer];
  if (v66 | v67 | [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v98 destinationTexture:v64 commandBuffer:commandBuffer])
  {
    fig_log_get_emitter();
    v82 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v88, v5);

    outputMaskCopy = v91;
  }

  else
  {
    v68 = self->_pipelineStates[0];

    computeCommandEncoder2 = [commandBuffer computeCommandEncoder];

    [computeCommandEncoder2 setComputePipelineState:v68];
    [computeCommandEncoder2 setTexture:v58 atIndex:0];
    [computeCommandEncoder2 setTexture:v60 atIndex:1];
    [computeCommandEncoder2 setTexture:v62 atIndex:2];
    [computeCommandEncoder2 setTexture:v64 atIndex:3];
    outputMaskCopy = v91;
    [computeCommandEncoder2 setTexture:v91 atIndex:4];
    scaleForGetShapeInputs = self->_scaleForGetShapeInputs;
    v103[0] = HIDWORD(v89) / scaleForGetShapeInputs;
    v103[1] = HIDWORD(v89) / scaleForGetShapeInputs;
    v104 = llroundf((HIDWORD(v89) / scaleForGetShapeInputs) * 0.33);
    v105 = HIDWORD(v89) / scaleForGetShapeInputs - v104;
    v106 = v104;
    v107 = v105;
    v108 = (HIDWORD(v89) / scaleForGetShapeInputs) >> 1;
    v109 = v108;
    size = maskCopy->size;
    v72 = size.f64[0];
    v110 = (v103[0] * v103[0]);
    v73 = size.f64[1];
    v111 = vmovn_s64(vcvtq_u64_f64(vsubq_f64(vdivq_f64(size, vdupq_lane_s64(COERCE__INT64(scaleForGetShapeInputs), 0)), vdupq_lane_s64(COERCE__INT64(v108), 0))));
    v74 = maskCopy->origin.y;
    v112 = maskCopy->origin.x / 4;
    v113 = v74 / 4;
    v133[0] = vmul_n_f32(v7, scaleForGetShapeInputs);
    v114 = vcvtad_u64_f64(1.0 / v133[0].f32[0]);
    v115 = self->_shapeScoreLambda * scaleForGetShapeInputs;
    [computeCommandEncoder2 setBytes:v103 length:60 atIndex:0];
    [computeCommandEncoder2 setBytes:v133 length:8 atIndex:1];
    threadExecutionWidth2 = [(MTLComputePipelineState *)v68 threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v68 maxTotalThreadsPerThreadgroup];
    v77 = self->_scaleForGetShapeInputs;
    v78 = (v72 / v77 + 1);
    v79 = v73 / v77;
    commandBuffer = v102;
    width = v78;
    height = (v79 + 1);
    v121 = 1;
    v116 = threadExecutionWidth2;
    v117 = maxTotalThreadsPerThreadgroup / threadExecutionWidth2;
    v118 = 1;
    [computeCommandEncoder2 dispatchThreads:&width threadsPerThreadgroup:&v116];
    [computeCommandEncoder2 endEncoding];
    if (gGMFigKTraceEnabled)
    {
      commandQueue2 = [v102 commandQueue];
      commandBuffer2 = [commandQueue2 commandBuffer];

      [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
      [commandBuffer2 addCompletedHandler:&stru_34638];
      [commandBuffer2 commit];
      [v102 addCompletedHandler:&stru_34658];
    }

    [v102 setLabel:@"VideoDeghostingV1Detection_GetShapeMask"];
    [v102 commit];
    [v102 waitUntilScheduled];

    v82 = 0;
  }

LABEL_21:
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  return v82;
}

- (int)_computeMotionRegisteredMask:(id)mask maskPrev:(id)prev
{
  maskCopy = mask;
  prevCopy = prev;
  v65[0] = 0;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v62[0] = sub_A044(&self->_previousCameraInfo.quaternion.w, &self->_centerQuaternion);
  v62[1] = v11;
  v62[2] = v12;
  v62[3] = v13;
  sub_A348(v62, 0, v64);
  v60 = 0;
  *&v60 = self->_previousCameraInfo.lensPosition;
  adjustedPrincipalPoint = self->_previousCameraInfo.adjustedPrincipalPoint;
  v58 = 0;
  *&v58 = self->_lensPosition;
  v59 = self->_adjustedPrincipalPoint;
  [(CMIVideoDeghostingDetectionV1 *)self reflectPoint:&self->_prevGhostLoc pivotPoint:&self->_previousCameraInfo.adjustedPrincipalPoint, sub_A2B8(&v58, &v60, v64, v63)];
  *&v14 = v14;
  *&v15 = v15;
  v57 = 0;
  sub_A7D0(v63, &v57, &v57 + 1, *&v14, *&v15);
  v56 = vcvtq_f64_f32(v57);
  [(CMIVideoDeghostingDetectionV1 *)self reflectPoint:&v56 pivotPoint:&self->_adjustedPrincipalPoint];
  v46 = v17;
  v47 = v16;
  v18 = *&self->_detectionScalingFactor[4];
  prevGhostLoc = self->_prevGhostLoc;
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_18458(&v52);
LABEL_9:
    v43 = v52;
    goto LABEL_6;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  width = [maskCopy width];
  desc4 = [newTextureDescriptor desc];
  [desc4 setWidth:width];

  height = [maskCopy height];
  desc5 = [newTextureDescriptor desc];
  [desc5 setHeight:height];

  desc6 = [newTextureDescriptor desc];
  [desc6 setPixelFormat:25];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v30 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v31 = v65[0];
  v65[0] = v30;

  if (!v30)
  {
    sub_183FC(&v52);
    goto LABEL_9;
  }

  v32.f64[0] = v47;
  v32.f64[1] = v46;
  v55 = vcvt_f32_f64(vmulq_f64(vsubq_f64(v32, prevGhostLoc), vcvtq_f64_f32(v18)));
  v33 = self->_pipelineStates[2];
  [computeCommandEncoder setComputePipelineState:v33];
  v48 = prevCopy;
  [computeCommandEncoder setTexture:prevCopy atIndex:0];
  [computeCommandEncoder setTexture:v30 atIndex:1];
  [computeCommandEncoder setBytes:&v55 length:8 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)v33 threadExecutionWidth];
  v35 = [(MTLComputePipelineState *)v33 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v52 = [maskCopy width] >> 1;
  v53 = [maskCopy height] >> 1;
  v54 = 1;
  v49 = threadExecutionWidth;
  v50 = v35;
  v51 = 1;
  [computeCommandEncoder dispatchThreads:&v52 threadsPerThreadgroup:&v49];
  v36 = self->_pipelineStates[3];

  [computeCommandEncoder setComputePipelineState:v36];
  [computeCommandEncoder setTexture:v30 atIndex:0];
  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  threadExecutionWidth2 = [(MTLComputePipelineState *)v36 threadExecutionWidth];
  v38 = [(MTLComputePipelineState *)v36 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  v39 = [maskCopy width] >> 1;
  height2 = [maskCopy height];
  v52 = v39;
  v53 = height2 >> 1;
  v54 = 1;
  v49 = threadExecutionWidth2;
  v50 = v38;
  v51 = 1;
  [computeCommandEncoder dispatchThreads:&v52 threadsPerThreadgroup:&v49];
  [computeCommandEncoder endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_34678];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_34698];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1Detection_ComputeMotion"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  v43 = 0;
  prevCopy = v48;
LABEL_6:
  FigMetalDecRef();

  return v43;
}

- (int)resetState
{
  self->_bias = CGPointZero;
  self->_confidence = 0.0;
  *&self->_shapeScore = 0;
  currentCameraInfo = self->_currentCameraInfo;
  self->_currentCameraInfo = 0;

  self->_prevGhostLoc = vdupq_n_s64(0x7FF8000000000000uLL);
  currentPortType = self->_currentPortType;
  self->_currentPortType = 0;

  previousPortType = self->_previousPortType;
  self->_previousPortType = 0;

  return 0;
}

- (CGRect)_computeGhostBoundingBoxFromMaskUsingMax:(__CVBuffer *)max searchROI:(CGRect)i threshold:(float)threshold ghostSize:(float)size detectionScalingFactor:
{
  v36 = v6;
  _S9 = threshold;
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  v14 = CGRectNull.origin.y;
  v15 = CGRectNull.size.width;
  v40 = CGRectNull.size.height;
  if (CVPixelBufferGetPixelFormatType(max) != 1278226536)
  {
    sub_184B4();
LABEL_28:
    sizeCopy = v40;
    sizeCopy2 = v15;
    v31 = v14;
    goto LABEL_20;
  }

  if (CVPixelBufferLockBaseAddress(max, 1uLL))
  {
    sub_1852C();
    goto LABEL_28;
  }

  v38 = v15;
  v39 = v14;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v16 = CGPointZero.x;
  v17 = CGPointZero.y;
  BaseAddress = CVPixelBufferGetBaseAddress(max);
  BytesPerRow = CVPixelBufferGetBytesPerRow(max);
  if (height < 1)
  {
    LOWORD(v24) = 0;
  }

  else
  {
    v20 = width;
    v21 = x + width;
    v22 = y;
    v23 = &BaseAddress[2 * (BytesPerRow >> 1) * v22];
    LOWORD(v24) = 0;
    do
    {
      if (v20 >= 1)
      {
        v25 = x;
        do
        {
          if (*&v23[2 * v25] > v24)
          {
            v24 = *&v23[2 * v25];
            v17 = v22;
            v16 = v25;
          }

          ++v25;
        }

        while (v25 < v21);
      }

      ++v22;
      v23 += 2 * (BytesPerRow >> 1);
    }

    while (v22 < y + height);
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (CVPixelBufferUnlockBaseAddress(max, 1uLL))
  {
    sub_185AC();
LABEL_19:
    v31 = v39;
    sizeCopy = v40;
    sizeCopy2 = v38;
LABEL_20:
    v34 = CGRectNull.origin.x;
    goto LABEL_30;
  }

  __asm { FCVT            H0, S9 }

  if (v24 <= _H0)
  {
    goto LABEL_19;
  }

  v35 = (size * 0.5);
  v34 = v16 / *&v36 - v35;
  if (v34 < 0.0)
  {
    goto LABEL_19;
  }

  v31 = v17 / *(&v36 + 1) - v35;
  if (v31 < 0.0)
  {
    goto LABEL_19;
  }

  sizeCopy = size;
  if (v34 + size >= self->_imageDimensions.width)
  {
    goto LABEL_19;
  }

  sizeCopy2 = size;
  if (v31 + sizeCopy >= self->_imageDimensions.height)
  {
    goto LABEL_19;
  }

LABEL_30:
  result.size.height = sizeCopy;
  result.size.width = sizeCopy2;
  result.origin.y = v31;
  result.origin.x = v34;
  return result;
}

- (int)_extractCameraInfoFromMetadata:(id)metadata
{
  v4 = [metadata objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  currentPortType = self->_currentPortType;
  self->_currentPortType = v4;

  if (self->_cameraInfoByPortType || ([(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureSampleBufferProcessorOption_CameraInfoByPortType], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_cameraInfoByPortType, self->_cameraInfoByPortType = v6, v7, self->_cameraInfoByPortType))
  {
    if ([(NSString *)self->_currentPortType isEqualToString:self->_previousPortType])
    {
      LODWORD(cameraInfoByPortType) = 0;
    }

    else
    {
      cameraInfoByPortType = self->_cameraInfoByPortType;
      if (cameraInfoByPortType)
      {
        v9 = [(NSDictionary *)cameraInfoByPortType objectForKeyedSubscript:self->_currentPortType];
        currentCameraInfo = self->_currentCameraInfo;
        self->_currentCameraInfo = v9;

        v11 = [(NSDictionary *)self->_currentCameraInfo objectForKeyedSubscript:kFigCaptureCameraInfoKey_PixelSize];
        [v11 floatValue];
        v13 = v12;

        LODWORD(cameraInfoByPortType) = 0;
        v14 = 1.0;
        if (v13 > 0.0)
        {
          v14 = 1.0 / v13;
        }

        self->_pixelsPerMicron = v14;
      }
    }
  }

  else
  {
    sub_1862C(&v16);
    LODWORD(cameraInfoByPortType) = v16;
  }

  return cameraInfoByPortType;
}

- (CGPoint)reflectPoint:(CGPoint *)point pivotPoint:(CGPoint *)pivotPoint
{
  __asm { FMOV            V2.2D, #2.0 }

  v9 = vaddq_f64(vmlaq_f64(vnegq_f64(*point), _Q2, *pivotPoint), self->_bias);
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (CGPoint)bias
{
  x = self->_bias.x;
  y = self->_bias.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)process
{
  *&self->_shapeScore = 0;
  self->_confidence = 0.0;
  detectedGhostBoundingBoxes = self->_detectedGhostBoundingBoxes;
  self->_detectedGhostBoundingBoxes = 0;
  self->_greenGhostsMaskPixelBuffer = 0;

  if (self->_inputPixelBuffer)
  {
    if (self->_metadataDictionary)
    {
      v4 = [(CMIVideoDeghostingDetectionV1 *)self _extractCameraInfoFromMetadata:?];
      if (v4 || (v4 = [(CMIVideoDeghostingDetectionV1 *)self _extractCalibrationDataFromMetadata:self->_metadataDictionary pixelBufferDimensions:*&self->_imageDimensions]) != 0)
      {
        v15 = v4;
        fig_log_get_emitter();
        sub_4C30();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        return v15;
      }

      __dst[0] = 0.0;
      v5 = sub_9F08(self->_metadataDictionary, __dst, 0.5);
      if (!v5)
      {
        [(CMIMotionSampleRingBufferV1 *)self->_motionSampleRingBuffer computeQuaternionForTimeStamp:__dst[0]];
        self->_centerQuaternion.w = v6;
        self->_centerQuaternion.x = v7;
        self->_centerQuaternion.y = v8;
        self->_centerQuaternion.z = v9;
        sub_4C7C();
        if (v10)
        {
          sub_4C5C(822152653);
        }

        size = CGRectNull.size;
        origin = CGRectNull.origin;
        v56 = size;
        greenGhostBrightLightTuningParameters = self->_greenGhostBrightLightTuningParameters;
        if (greenGhostBrightLightTuningParameters)
        {
          objc_msgSend_tuningParams(greenGhostBrightLightTuningParameters);
        }

        else
        {
          memset(&__src[8], 0, 128);
        }

        v54 = *(&__src[8] + 4);
        v49 = vdivq_f64(self->_adjustedPrincipalPoint, vcvtq_f64_f32(vcvt_f32_s32(self->_imageDimensions)));
        if (![(CMIVideoDeghostingDetectionV1 *)self _extractLightAndGhostTilesFromMetadata:self->_metadataDictionary imageBufferDimensions:*&self->_imageDimensions clippingTuningParams:&v54 adjustedPrincipalPoint:&origin ghostSearchTile:?])
        {
          return 0;
        }

        sub_4C7C();
        if (v10)
        {
          sub_4C5C(822152654);
        }

        memset(__src, 0, 128);
        v13 = self->_greenGhostBrightLightTuningParameters;
        if (v13)
        {
          objc_msgSend_tuningParams(v13);
          v14 = self->_greenGhostBrightLightTuningParameters;
        }

        else
        {
          v14 = 0;
        }

        *&__src[2] = vcvt_f32_f64(v49);
        memcpy(__dst, __src, sizeof(__dst));
        [(CMIVideoDeghostingBrightLightTuningParamsV1 *)v14 setTuningParams:__dst];
        sub_4C7C();
        if (v10)
        {
          sub_4C5C(822152657);
        }

        v15 = [(CMIVideoDeghostingBrightLightV1 *)self->_greenGhostBrightLightDetection greenGhostDetectionWithInputPixelBuffer:self->_inputPixelBuffer outputMask:self->_detectionMaskTexture roi:self->_greenGhostBrightLightTuningParameters tuning:*vuzp1q_s32(vcvtq_u64_f64(origin), vcvtq_u64_f64(v56)).i64];
        sub_4C7C();
        if (v10)
        {
          sub_4C5C(822152658);
        }

        if (v15)
        {
          return v15;
        }

        v16 = [(CMIVideoDeghostingDetectionV1 *)self _getShapeMask:&origin outputMask:self->_detectionMaskTexture ghostSize:self->_adjustedGhostSize maskScalingFactor:*&self->_detectionScalingFactor[4]];
        if (v16)
        {
          return v16;
        }

        detectionThreshold = self->_detectionThreshold;
        v18 = [CMIMotionSampleRingBufferV1 isUnitQuaternion:&self->_centerQuaternion, self->_prevGhostLoc.y];
        v19 = [CMIMotionSampleRingBufferV1 isUnitQuaternion:&self->_previousCameraInfo.quaternion];
        if (!self->_maskRegistrationEnabled || (v18 & 1) != 0 || (v19 & 1) != 0)
        {
LABEL_32:
          v20 = COERCE_FLOAT(HIDWORD(*&self->_detectionScalingFactor[4]));
          v21 = origin.f64[1] * v20;
          v22 = v56.height * v20;
          *&v20 = self->_adjustedGhostSize;
          [(CMIVideoDeghostingDetectionV1 *)self _computeGhostBoundingBoxFromMaskUsingMax:self->_detectionMask searchROI:origin.f64[0] * COERCE_FLOAT(*&self->_detectionScalingFactor[4]) threshold:v21 ghostSize:v56.width * COERCE_FLOAT(*&self->_detectionScalingFactor[4]) detectionScalingFactor:v22, COERCE_DOUBLE(__PAIR64__(HIDWORD(v56.height), LODWORD(detectionThreshold))), v20];
          x = v58.origin.x;
          y = v58.origin.y;
          width = v58.size.width;
          height = v58.size.height;
          v51 = v58;
          v60.origin.x = CGRectNull.origin.x;
          v60.origin.y = CGRectNull.origin.y;
          v60.size.width = CGRectNull.size.width;
          v60.size.height = CGRectNull.size.height;
          if (CGRectEqualToRect(v58, v60) || (v61.origin.x = CGRectZero.origin.x, v61.origin.y = CGRectZero.origin.y, v61.size.width = CGRectZero.size.width, v61.size.height = CGRectZero.size.height, v59.origin.x = x, v59.origin.y = y, v59.size.width = width, v59.size.height = height, CGRectEqualToRect(v59, v61)) || (*&v27 = self->_shapeScoreLambda, *&v28 = self->_contextScoreLambda, LODWORD(v46) = self->_contextPaddingInPixel, [(VDGMetalUtilsV1 *)self->_vdgMetalUtils updateGhostPositionsUsingSourceImageFeatureMatching:&v51 shapeScore:&self->_shapeScore contextScore:&self->_contextScore confidenceOut:&self->_confidence pixelBuffer:self->_inputPixelBuffer searchRangeInPixel:self->_adjustedSearchRange shapeScoreLambda:v27 contextScoreLambda:v28 contextPaddingInPixel:v46], v51.origin.x = v29, v51.origin.y = v30, v51.size.width = v31, v51.size.height = v32, self->_shapeScore <= self->_minShapeScore))
          {
            self->_prevGhostLoc = vdupq_n_s64(0x7FF8000000000000uLL);
          }

          else
          {
            self->_prevGhostLoc.x = v29 + v31 * 0.5;
            self->_prevGhostLoc.y = v30 + v32 * 0.5;
            v33 = [NSArray alloc];
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v51);
            v35 = [v33 initWithObjects:{DictionaryRepresentation, 0}];
            v36 = self->_detectedGhostBoundingBoxes;
            self->_detectedGhostBoundingBoxes = v35;
          }

          self->_greenGhostsMaskPixelBuffer = self->_detectionMask;
          if (self->_maskRegistrationEnabled)
          {
            detectionMaskPrev = self->_detectionMaskPrev;
            v38 = self->_detectionMaskPrevTexture;
            detectionMaskTexture = self->_detectionMaskTexture;
            self->_detectionMaskPrev = self->_detectionMask;
            objc_storeStrong(&self->_detectionMaskPrevTexture, detectionMaskTexture);
            v40 = self->_detectionMaskTexture;
            self->_detectionMask = detectionMaskPrev;
            self->_detectionMaskTexture = v38;
          }

          self->_previousCameraInfo.lensPosition = self->_lensPosition;
          v41 = *&self->_centerQuaternion.w;
          v42 = *&self->_centerQuaternion.y;
          self->_previousCameraInfo.adjustedPrincipalPoint = self->_adjustedPrincipalPoint;
          *&self->_previousCameraInfo.quaternion.w = v41;
          *&self->_previousCameraInfo.quaternion.y = v42;
          objc_storeStrong(&self->_previousPortType, self->_currentPortType);
          return 0;
        }

        v5 = [(CMIVideoDeghostingDetectionV1 *)self _computeMotionRegisteredMask:self->_detectionMaskTexture maskPrev:self->_detectionMaskPrevTexture];
        if (!v5)
        {
          detectionThreshold = detectionThreshold * detectionThreshold;
          goto LABEL_32;
        }
      }

      v15 = v5;
      fig_log_get_emitter();
      sub_4C30();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return v15;
    }

    sub_4C9C();
    sub_4C88();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v47, v48, v50, LODWORD(v51.origin.x), *&v51.origin.y, *&v51.size.width, LODWORD(v51.size.height));
    v44 = sub_4C9C();
    v45 = 288;
  }

  else
  {
    sub_4C9C();
    sub_4C88();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v47, v48, v50, LODWORD(v51.origin.x), *&v51.origin.y, *&v51.size.width, LODWORD(v51.size.height));
    v44 = sub_4C9C();
    v45 = 287;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 4294954516, "<<<< CMIVideoDeghostingDetectionV1 >>>>", v45);
}

- (int)_extractCalibrationDataFromMetadata:(id)metadata pixelBufferDimensions:(id)dimensions
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    sub_2B2C();
    sub_4C48();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, v49, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v51, LODWORD(time.value));
    v43 = sub_2B2C();
    v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 4294954516, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 1013);
    goto LABEL_29;
  }

  if (dimensions.var0 < 1 || dimensions.var1 <= 0)
  {
    sub_2B2C();
    sub_4C48();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, v49, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v51, LODWORD(time.value));
    v44 = sub_2B2C();
    v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 4294954516, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 1014);
    goto LABEL_29;
  }

  v8 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_SphereMode];
  v9 = v8 != 0;

  v10 = [metadataCopy objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_FramePTSSeconds];
  [v10 doubleValue];
  v12 = v11;

  if (v12 != 0.0 || ([metadataCopy objectForKeyedSubscript:kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp], v13 = objc_claimAutoreleasedReturnValue(), CMTimeMakeFromDictionary(&time, v13), CMTimeGetSeconds(&time), time.value = 0, v14 = sub_98B8(metadataCopy, &time.value), v13, !v14))
  {
    v15 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_PinholeCameraFocalLength];
    [v15 floatValue];
    v17 = v16;

    if (v17 == 0.0)
    {
      sub_2B2C();
      sub_4C48();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, v49, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v51, LODWORD(time.value));
      v45 = sub_2B2C();
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 4294954516, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 1032);
      goto LABEL_29;
    }

    v18 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
    intValue = [v18 intValue];

    if (intValue <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = intValue;
    }

    v21 = self->_sensorBinningFactorHorizontal * v20;
    v22 = (self->_sensorBinningFactorVertical * v20);
    v23 = [metadataCopy objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor];
    [v23 floatValue];
    v25 = v24;

    *(&v51 + 1) = v25;
    if (v25 == 0.0)
    {
      v26 = sub_9658(metadataCopy, dimensions.var0, HIDWORD(*&dimensions), v21, v22, &v51 + 1);
      if (v26)
      {
        goto LABEL_29;
      }

      v25 = *(&v51 + 1);
    }

    if (v25 <= 0.0)
    {
      sub_2B2C();
      sub_4C48();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, v49, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v51, LODWORD(time.value));
      v46 = sub_2B2C();
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 4294954516, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 1047);
    }

    else
    {
      pixelsPerMicron = self->_pixelsPerMicron;
      self->_lensPosition = (v17 * v25) * pixelsPerMicron;
      self->_adjustedPrincipalPoint = CGPointZero;
      v26 = sub_1C5B8(metadataCopy, dimensions.var0, dimensions.var1, v21, v22, v9, &self->_adjustedPrincipalPoint, pixelsPerMicron, v25);
      if (!v26)
      {
        size = CGRectNull.size;
        rect.origin = CGRectNull.origin;
        rect.size = size;
        v29 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_ValidBufferRect];
        v30 = CGRectMakeWithDictionaryRepresentation(v29, &rect);

        if (v30 && !CGRectIsEmpty(rect) && !CGRectContainsPoint(rect, self->_adjustedPrincipalPoint))
        {
          fig_log_get_emitter();
          sub_4C20();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, v49, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v51, LODWORD(time.value));
        }

        v31 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_Fnumber];
        [v31 floatValue];
        v33 = v32;

        v34 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_EffectiveFocalLength];
        [v34 floatValue];
        v36 = v35;

        v37 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PracticalFocalLength];
        [v37 floatValue];
        v39 = v38;

        if (v33 > 0.0)
        {
          v14 = 0;
          v40 = fmaxf(vabds_f32(v36, v39) + -5.0, 0.0);
          v41 = self->_lensPosition / 1630.0;
          self->_adjustedGhostSize = llroundf(((((v40 * *(&v51 + 1)) * self->_pixelsPerMicron) + ((v40 * *(&v51 + 1)) * self->_pixelsPerMicron)) / v33) + (v41 * self->_ghostSize));
          self->_adjustedSearchRange = llroundf(v41 * self->_searchRangeInPixel);
          goto LABEL_23;
        }

        sub_2B2C();
        sub_4C48();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, v49, *&rect.origin.x, *&rect.origin.y, LODWORD(rect.size.width), *&rect.size.height, v51, LODWORD(time.value));
        v47 = sub_2B2C();
        v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 4294954516, "<<<< CMIVideoDeghostingDetectionV1 >>>>", 1069);
      }
    }

LABEL_29:
    v14 = v26;
  }

LABEL_23:

  return v14;
}

- (BOOL)_extractLightAndGhostTilesFromMetadata:(id)metadata imageBufferDimensions:(id)dimensions clippingTuningParams:(ClippingDataTuning *)params adjustedPrincipalPoint:(CGPoint)point ghostSearchTile:(CGRect *)tile
{
  y = point.y;
  x = point.x;
  metadataCopy = metadata;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v26 = size;
  v21 = size;
  v22 = origin;
  v23 = origin;
  v24 = size;
  if (!sub_1BEB4(metadataCopy, params, origin.f64, &v23, x, y))
  {
    goto LABEL_8;
  }

  FigCFDictionaryGetCGRectIfPresent();
  v27.origin = v22;
  v27.size = v21;
  if (CGRectIsEmpty(v27) || (v14 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vcvt_f32_s32(dimensions)), v21))), v15 = vmulq_f64(origin, v14), v16 = vmulq_f64(v26, v14), origin = v15, v26 = v16, v23 = vcvtq_f64_f32(vcvt_f32_s32((*&vmovn_s64(vcvtq_s64_f64(vmulq_f64(v23, v14))) & 0xFFFFFFFCFFFFFFFCLL))), v24 = vcvtq_f64_f32(vcvt_f32_s32((*&vmovn_s64(vcvtq_s64_f64(vmulq_f64(v24, v14))) & 0xFFFFFFFCFFFFFFFCLL))), v14.f64[0] = v15.f64[1], v17 = v16.f64[1], CGRectIsEmpty(*(&v14 - 8))) || (v28.origin = v23, v28.size = v24, CGRectIsEmpty(v28)))
  {
    fig_log_get_emitter();
    sub_4C20();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_8:
    v19 = 0;
    goto LABEL_6;
  }

  v18 = v24;
  tile->origin = v23;
  tile->size = v18;
  v19 = 1;
LABEL_6:

  return v19;
}

@end