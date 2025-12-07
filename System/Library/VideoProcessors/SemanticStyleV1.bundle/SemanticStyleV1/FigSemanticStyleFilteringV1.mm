@interface FigSemanticStyleFilteringV1
- (CGRect)destinationRectangleInOutputMaskPixelBuffer;
- (CGRect)inputImageCropRectangle;
- (FigSemanticStyleFilteringV1)initWithCommandQueue:(id)queue;
- (id)_textureFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (int)_applyFeathering:(id)feathering toOutputMaskTexture:(id)texture commandBuffer:(id)buffer;
- (int)_compileShaders;
- (int)_copyAndCenterMask:(id)mask toOutputMaskTexture:(id)texture destinationRectangle:(CGRect)rectangle commandBuffer:(id)buffer;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)process;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (void)dealloc;
@end

@implementation FigSemanticStyleFilteringV1

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smoothstepMask" constants:0];
  v4 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v3;

  if (self->_pipelineStates[1])
  {
    v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"copyAndCenterMask" constants:0];
    v6 = self->_pipelineStates[0];
    self->_pipelineStates[0] = v5;

    if (self->_pipelineStates[0])
    {
      return 0;
    }

    else
    {
      sub_EFEC(&v8);
      return v8;
    }
  }

  else
  {
    sub_F09C(&v9);
    return v9;
  }
}

- (int)finishProcessing
{
  [(MTLCommandBuffer *)self->_previousCommandBuffer waitUntilCompleted];
  previousCommandBuffer = self->_previousCommandBuffer;
  self->_previousCommandBuffer = 0;

  return 0;
}

- (void)dealloc
{
  [(FigSemanticStyleFilteringV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = FigSemanticStyleFilteringV1;
  [(FigSemanticStyleFilteringV1 *)&v3 dealloc];
}

- (int)prepareToProcess:(unsigned int)process
{
  [(FigLKTIIRFilter *)self->_lktiirFilter setMaskInterpolationEnabled:self->_maskInterpolationEnabled];
  v4 = [(FigLKTIIRFilter *)self->_lktiirFilter allocateResourcesForMaskSize:COERCE_DOUBLE(0xC000000100)];
  if (v4)
  {
    sub_DD6C(v4, &v38);
    v32 = 0;
    v5 = 0;
    goto LABEL_23;
  }

  v5 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:256 height:192 mipmapped:0];
  [v5 setUsage:7];
  device = [(FigMetalContext *)self->_metalContext device];
  v7 = [device newTextureWithDescriptor:v5];
  resizedInputImageToMaskSize = self->_resizedInputImageToMaskSize;
  self->_resizedInputImageToMaskSize = v7;

  if (!self->_resizedInputImageToMaskSize)
  {
    sub_E288(&v38);
    goto LABEL_22;
  }

  [v5 setPixelFormat:25];
  device2 = [(FigMetalContext *)self->_metalContext device];
  v10 = [device2 newTextureWithDescriptor:v5];
  nonFeatheredMask = self->_nonFeatheredMask;
  self->_nonFeatheredMask = v10;

  if (!self->_nonFeatheredMask)
  {
    sub_E1DC(&v38);
    goto LABEL_22;
  }

  device3 = [(FigMetalContext *)self->_metalContext device];
  v13 = [device3 newTextureWithDescriptor:v5];
  featheredMask = self->_featheredMask;
  self->_featheredMask = v13;

  if (!self->_featheredMask)
  {
    sub_E130(&v38);
    goto LABEL_22;
  }

  device4 = [(FigMetalContext *)self->_metalContext device];
  v16 = [device4 newTextureWithDescriptor:v5];
  blurredMask = self->_blurredMask;
  self->_blurredMask = v16;

  if (!self->_blurredMask)
  {
    sub_E084(&v38);
    goto LABEL_22;
  }

  device5 = [(FigMetalContext *)self->_metalContext device];
  v19 = [device5 newTextureWithDescriptor:v5];
  smoothedMask = self->_smoothedMask;
  self->_smoothedMask = v19;

  if (!self->_smoothedMask)
  {
    sub_DFD8(&v38);
    goto LABEL_22;
  }

  if (([(FigMetalContext *)self->_metalContext isHarvestingShaders]& 1) == 0)
  {
    FigGetCFPreferenceDoubleWithDefault();
    v22 = v21;
    v23 = [MPSImageGaussianBlur alloc];
    device6 = [(FigMetalContext *)self->_metalContext device];
    *&v25 = v22;
    v26 = [v23 initWithDevice:device6 sigma:v25];
    mpsBlur = self->_mpsBlur;
    self->_mpsBlur = v26;

    if (self->_mpsBlur)
    {
      v28 = [MPSImageMultiply alloc];
      device7 = [(FigMetalContext *)self->_metalContext device];
      v30 = [v28 initWithDevice:device7];
      mpsImageMultiply = self->_mpsImageMultiply;
      self->_mpsImageMultiply = v30;

      if (self->_mpsImageMultiply)
      {
        goto LABEL_10;
      }

      sub_DE1C(&v38);
    }

    else
    {
      sub_DEC8(&v38);
    }

LABEL_22:
    v32 = 0;
    goto LABEL_23;
  }

LABEL_10:
  v36 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v37 = &off_18978;
  v32 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  device8 = [(FigMetalContext *)self->_metalContext device];
  v34 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v32, device8, 0, &self->_textureCache);

  if (!v34)
  {
    self->_frameIndex = 0;
    goto LABEL_12;
  }

  sub_DF74(&v38);
LABEL_23:
  v34 = v38;
  if (v38)
  {
    [(FigSemanticStyleFilteringV1 *)self purgeResources];
  }

LABEL_12:

  return v34;
}

- (int)prewarm
{
  v3 = [FigMetalContext alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v3 initWithbundle:v4 andOptionalCommandQueue:0];
  metalContext = self->_metalContext;
  self->_metalContext = v5;

  if (self->_metalContext)
  {
    v7 = [[FigLKTIIRFilter alloc] initWithMetalContext:self->_metalContext];
    lktiirFilter = self->_lktiirFilter;
    self->_lktiirFilter = v7;

    if (self->_lktiirFilter)
    {
      _compileShaders = [(FigSemanticStyleFilteringV1 *)self _compileShaders];
      if (_compileShaders)
      {
        sub_E334(_compileShaders, &v12);
        LODWORD(v10) = v12;
      }

      else
      {
        v10 = [(FigLKTIIRFilter *)self->_lktiirFilter allocateResourcesForMaskSize:COERCE_DOUBLE(0xC000000100)];
        if (v10)
        {
          sub_E3E4(v10, &v13);
          LODWORD(v10) = v13;
        }
      }
    }

    else
    {
      sub_E494(&v14);
      LODWORD(v10) = v14;
    }
  }

  else
  {
    sub_E540();
    LODWORD(v10) = 0;
  }

  return v10;
}

- (int)purgeResources
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CVMetalTextureCacheFlush(textureCache, 0);
    v4 = self->_textureCache;
    if (v4)
    {
      CFRelease(v4);
      self->_textureCache = 0;
    }
  }

  return 0;
}

- (int)process
{
  if (!self->_inputImagePixelBuffer)
  {
    sub_EF40(&v32);
LABEL_33:
    v15 = 0;
    commandBuffer = 0;
    v5 = 0;
    displacementFWD = 0;
    v4 = 0;
LABEL_50:
    v26 = v32;
    goto LABEL_28;
  }

  outputMaskPixelBuffer = self->_outputMaskPixelBuffer;
  if (!outputMaskPixelBuffer)
  {
    sub_EE94(&v32);
    goto LABEL_33;
  }

  if (CVPixelBufferGetPixelFormatType(outputMaskPixelBuffer) != 1278226536)
  {
    sub_E5C4(&v32);
    goto LABEL_33;
  }

  if (!self->_opticalFlowDisplacementPixelBuffer)
  {
    sub_EDE8(&v32);
    goto LABEL_33;
  }

  v4 = [(FigSemanticStyleFilteringV1 *)self _textureFromPixelBuffer:self->_inputImagePixelBuffer usage:1];
  if (!v4)
  {
    sub_ED3C(&v32);
    v15 = 0;
    commandBuffer = 0;
    v5 = 0;
LABEL_49:
    displacementFWD = 0;
    goto LABEL_50;
  }

  v5 = [(FigSemanticStyleFilteringV1 *)self _textureFromPixelBuffer:self->_outputMaskPixelBuffer usage:1];
  if (!v5)
  {
    sub_EC90(&v32);
    v15 = 0;
    commandBuffer = 0;
    goto LABEL_49;
  }

  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_EBE4(&v32);
LABEL_48:
    v15 = 0;
    goto LABEL_49;
  }

  v8 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_opticalFlowDisplacementPixelBuffer pixelFormat:65 usage:1 plane:0];
  [(FigLKTIIRFilter *)self->_lktiirFilter setDisplacementFWD:v8];

  displacementFWD = [(FigLKTIIRFilter *)self->_lktiirFilter displacementFWD];

  if (!displacementFWD)
  {
    sub_EB38(&v32);
    goto LABEL_41;
  }

  inputMaskPixelBuffer = self->_inputMaskPixelBuffer;
  if (inputMaskPixelBuffer)
  {
    displacementFWD = [(FigSemanticStyleFilteringV1 *)self _textureFromPixelBuffer:inputMaskPixelBuffer usage:1];
    if (displacementFWD)
    {
      if (!self->_maskInterpolationEnabled)
      {
LABEL_14:
        displacementFWD = displacementFWD;
        v14 = commandBuffer;
        v15 = displacementFWD;
        goto LABEL_19;
      }

      lktiirFilter = self->_lktiirFilter;
      frameIndex = self->_frameIndex;
      v31 = commandBuffer;
      v13 = [(FigLKTIIRFilter *)lktiirFilter cacheInputMask:displacementFWD inputImage:v4 frameIndex:frameIndex commandBuffer:&v31];
      v14 = v31;

      if (!v13)
      {
        commandBuffer = v14;
        goto LABEL_14;
      }

      sub_E670(v13, &v32);
      v15 = 0;
LABEL_45:
      v26 = v32;
      commandBuffer = v14;
      goto LABEL_28;
    }

    sub_E720(&v32);
LABEL_41:
    v15 = 0;
    goto LABEL_50;
  }

  if (!self->_maskInterpolationEnabled)
  {
LABEL_47:
    sub_EA8C(&v32);
    goto LABEL_48;
  }

  v16 = self->_lktiirFilter;
  v30 = commandBuffer;
  v17 = [(FigLKTIIRFilter *)v16 updateWarpedKeyFrameToCurrentFrame:&v30 frameIndex:self->_frameIndex];
  v14 = v30;

  if (v17)
  {
    sub_E7CC(v17, &v32);
    v15 = 0;
    displacementFWD = 0;
    goto LABEL_45;
  }

  warpedKeyFrameToCurrentFrameMask = [(FigLKTIIRFilter *)self->_lktiirFilter warpedKeyFrameToCurrentFrameMask];
  if (!warpedKeyFrameToCurrentFrameMask)
  {
    commandBuffer = v14;
    goto LABEL_47;
  }

  v15 = warpedKeyFrameToCurrentFrameMask;
  displacementFWD = 0;
LABEL_19:
  v19 = self->_lktiirFilter;
  v29 = v14;
  v20 = [(FigLKTIIRFilter *)v19 computeLKTIIRFilter:&v29 inputSegmentationMask:v15 filteredSegmentationMask:self->_nonFeatheredMask];
  commandBuffer = v29;

  if (v20)
  {
    sub_E87C(v20, &v32);
    goto LABEL_50;
  }

  if (self->_applyFeathering)
  {
    v21 = [(FigSemanticStyleFilteringV1 *)self _applyFeathering:self->_nonFeatheredMask toOutputMaskTexture:self->_featheredMask commandBuffer:commandBuffer];
    if (v21)
    {
      sub_E92C(v21, &v32);
      goto LABEL_50;
    }

    applyFeathering = self->_applyFeathering;
  }

  else
  {
    applyFeathering = 0;
  }

  v23 = !applyFeathering;
  v24 = 40;
  if (!v23)
  {
    v24 = 64;
  }

  v25 = [(FigSemanticStyleFilteringV1 *)self _copyAndCenterMask:*(&self->super.isa + v24) toOutputMaskTexture:v5 destinationRectangle:commandBuffer commandBuffer:self->_destinationRectangleInOutputMaskPixelBuffer.origin.x, self->_destinationRectangleInOutputMaskPixelBuffer.origin.y, self->_destinationRectangleInOutputMaskPixelBuffer.size.width, self->_destinationRectangleInOutputMaskPixelBuffer.size.height];
  if (v25)
  {
    sub_E9DC(v25, &v32);
    goto LABEL_50;
  }

  ++self->_frameIndex;
  [(FigLKTIIRFilter *)self->_lktiirFilter nextFrame];
  v26 = 0;
LABEL_28:
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  previousCommandBuffer = self->_previousCommandBuffer;
  self->_previousCommandBuffer = commandBuffer;

  return v26;
}

- (int)_applyFeathering:(id)feathering toOutputMaskTexture:(id)texture commandBuffer:(id)buffer
{
  v9 = self->_pipelineStates[1];
  bufferCopy = buffer;
  textureCopy = texture;
  featheringCopy = feathering;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v9];
  [computeCommandEncoder setTexture:featheringCopy atIndex:0];

  [computeCommandEncoder setTexture:self->_smoothedMask atIndex:1];
  [computeCommandEncoder setBytes:&self->_smoothstepLeftEdge length:4 atIndex:0];
  [computeCommandEncoder setBytes:&self->_smoothstepRightEdge length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)v9 threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)v9 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  width = [(MTLTexture *)self->_smoothedMask width];
  height = [(MTLTexture *)self->_smoothedMask height];
  v20[0] = width;
  v20[1] = height;
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = v15;
  v19[2] = 1;
  [computeCommandEncoder dispatchThreads:v20 threadsPerThreadgroup:v19];
  [computeCommandEncoder endEncoding];
  [(MPSImageGaussianBlur *)self->_mpsBlur encodeToCommandBuffer:bufferCopy sourceTexture:self->_smoothedMask destinationTexture:self->_blurredMask];
  [(MPSImageMultiply *)self->_mpsImageMultiply encodeToCommandBuffer:bufferCopy primaryTexture:self->_smoothedMask secondaryTexture:self->_blurredMask destinationTexture:textureCopy];

  return 0;
}

- (int)_copyAndCenterMask:(id)mask toOutputMaskTexture:(id)texture destinationRectangle:(CGRect)rectangle commandBuffer:(id)buffer
{
  width = rectangle.size.width;
  x = rectangle.origin.x;
  v11 = self->_pipelineStates[0];
  bufferCopy = buffer;
  textureCopy = texture;
  maskCopy = mask;
  v26 = llround(x * ([textureCopy width] - 1));
  v25 = llround(width * ([textureCopy width] - 1));
  v15 = width * ([textureCopy width] - 1);
  v16 = v15 / ([maskCopy width] - 1);
  v24 = v16;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:v11];
  [computeCommandEncoder setTexture:maskCopy atIndex:0];

  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [computeCommandEncoder setBytes:&v26 length:4 atIndex:0];
  [computeCommandEncoder setBytes:&v25 length:4 atIndex:1];
  [computeCommandEncoder setBytes:&v24 length:4 atIndex:2];
  threadExecutionWidth = [(MTLComputePipelineState *)v11 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v11 maxTotalThreadsPerThreadgroup];

  width = [textureCopy width];
  LODWORD(v11) = [textureCopy height];

  v23[0] = width;
  v23[1] = v11;
  v23[2] = 1;
  v22[0] = threadExecutionWidth;
  v22[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v22[2] = 1;
  [computeCommandEncoder dispatchThreads:v23 threadsPerThreadgroup:v22];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (id)_textureFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v8 = 0;
  v9 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
  if (PixelFormatType > 875704437)
  {
    if (PixelFormatType > 1278226533)
    {
      if (PixelFormatType != 2084718401)
      {
        if (PixelFormatType == 1278226536)
        {
          v9 = MTLPixelFormatR16Float;
        }

        else
        {
          if (PixelFormatType != 1278226534)
          {
            goto LABEL_22;
          }

          v9 = MTLPixelFormatR32Float;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (PixelFormatType == 875704438)
    {
      goto LABEL_17;
    }

    v10 = 1111970369;
    goto LABEL_15;
  }

  if (PixelFormatType > 792872768)
  {
    if (PixelFormatType != 792872769)
    {
      if (PixelFormatType != 875704422)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (PixelFormatType != 641877825)
  {
    v10 = 759318337;
LABEL_15:
    if (PixelFormatType != v10)
    {
      goto LABEL_22;
    }
  }

LABEL_16:
  v9 = MTLPixelFormatRGBA8Unorm;
LABEL_17:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v19 = kCVMetalTextureUsage;
  v13 = [NSNumber numberWithUnsignedInteger:usage];
  v20 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  image = 0;
  v15 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_textureCache, buffer, v14, v9, WidthOfPlane, HeightOfPlane, 0, &image);
  v8 = 0;
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = image == 0;
  }

  if (!v16)
  {
    v8 = CVMetalTextureGetTexture(image);
    CFRelease(image);
  }

LABEL_22:

  return v8;
}

- (CGRect)inputImageCropRectangle
{
  x = self->_inputImageCropRectangle.origin.x;
  y = self->_inputImageCropRectangle.origin.y;
  width = self->_inputImageCropRectangle.size.width;
  height = self->_inputImageCropRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)destinationRectangleInOutputMaskPixelBuffer
{
  x = self->_destinationRectangleInOutputMaskPixelBuffer.origin.x;
  y = self->_destinationRectangleInOutputMaskPixelBuffer.origin.y;
  width = self->_destinationRectangleInOutputMaskPixelBuffer.size.width;
  height = self->_destinationRectangleInOutputMaskPixelBuffer.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (FigSemanticStyleFilteringV1)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = FigSemanticStyleFilteringV1;
  v6 = [(FigSemanticStyleFilteringV1 *)&v23 init];
  if (v6)
  {
    v7 = [FigMetalContext alloc];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v7 initWithbundle:v8 andOptionalCommandQueue:queueCopy];
    metalContext = v6->_metalContext;
    v6->_metalContext = v9;

    if (v6->_metalContext)
    {
      v11 = [[FigLKTIIRFilter alloc] initWithMetalContext:v6->_metalContext];
      lktiirFilter = v6->_lktiirFilter;
      v6->_lktiirFilter = v11;

      if (v6->_lktiirFilter)
      {
        _compileShaders = [(FigSemanticStyleFilteringV1 *)v6 _compileShaders];
        if (_compileShaders)
        {
          v18 = _compileShaders;
          fig_log_get_emitter();
          v22 = v18;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22, v3, v23.receiver, v23.super_class, v24, v25, v26, v27);
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 2, "<<<< SemanticStyle Filtering >>>>", 119);
        }

        else
        {
          v6->_applyFeathering = FigGetCFPreferenceNumberWithDefault() != 0;
          FigGetCFPreferenceDoubleWithDefault();
          *&v14 = v14;
          v6->_smoothstepLeftEdge = *&v14;
          FigGetCFPreferenceDoubleWithDefault();
          *&v15 = v15;
          v6->_smoothstepRightEdge = *&v15;
        }
      }

      else
      {
        sub_18AC();
        v21 = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v3, v23.receiver, v23.super_class, v24, v25, v26, v27);
        v17 = sub_18AC();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 1, "<<<< SemanticStyle Filtering >>>>", 116);
      }
    }

    else
    {
      fig_log_get_emitter();
      v20 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v3, v23.receiver, v23.super_class, v24, v25, v26, v27);
    }
  }

  return v6;
}

@end