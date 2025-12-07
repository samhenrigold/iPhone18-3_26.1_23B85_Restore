@interface RTSCProcessorV1
- (CGPoint)warpCGPoint:(CGPoint)point;
- (CGRect)_calculateCropRectForOutputFOV:(float)v;
- (CGRect)_confineCropRectToValidImageCircle:(CGRect)circle;
- (CGRect)outputROI;
- (CGRect)warpCGRect:(CGRect)rect;
- (RTSCProcessorV1)init;
- (__n128)setCameraExtrinsicMatrix:(__n128)matrix;
- (__n128)setRenderingHomography:(__n128)homography;
- (id)_bindCVPixleBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (id)_cachedTextureFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (int)_createRenderTargetForOutputTex:(id)tex renderTargetTex:(id *)targetTex;
- (int)_encodeDownsample:(id)downsample inputTex:(id)tex outputTex:(id)outputTex;
- (int)_encodeRender:(id)render inputTex:(id)tex outputTex:(id)outputTex;
- (int)_encodeRenderTargetResolve:(id)resolve renderTargetTex:(id)tex outputTex:(id)outputTex;
- (int)_extractFinalCropRect;
- (int)_fillRenderParams:(id *)params;
- (int)_loadTuningParameters;
- (int)_processPreview;
- (int)_processStill;
- (int)_processVideo;
- (int)_render;
- (int)_updateCandidateFramingCropRects;
- (int)_updateInputCameraCalibration;
- (int)_updateOutputFOV;
- (int)_updateOutputFOVRect;
- (int)_updateStabilization;
- (int)_updateTransformAndMetadataForPreview;
- (int)prepareToProcess:(unsigned int)process;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)setup;
- (uint64_t)_processPreview;
- (void)_updateOutputIntrinsicForCropRect:(CGRect)rect;
- (void)dealloc;
- (void)setInputPTS:(id *)s;
- (void)setMetalCommandQueue:(id)queue;
- (void)setOutputFOV:(float)v;
- (void)setOutputFOVPreset:(unint64_t)preset;
@end

@implementation RTSCProcessorV1

- (RTSCProcessorV1)init
{
  v4.receiver = self;
  v4.super_class = RTSCProcessorV1;
  result = [(RTSCProcessorV1 *)&v4 init];
  v3 = matrix_identity_float3x3.columns[1];
  *result->_anon_170 = matrix_identity_float3x3.columns[0];
  *&result->_anon_170[16] = v3;
  *&result->_anon_170[32] = matrix_identity_float3x3.columns[2];
  return result;
}

- (int)setup
{
  v3 = [FigMetalContext alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v3 initWithbundle:v4 andOptionalCommandQueue:self->_metalCommandQueue];
  context = self->_context;
  self->_context = v5;

  if (self->_context)
  {
    v7 = [FigMetalAllocator alloc];
    device = [(FigMetalContext *)self->_context device];
    v9 = [v7 initWithDevice:device allocatorType:2];
    [(FigMetalContext *)self->_context setAllocator:v9];

    allocator = [(FigMetalContext *)self->_context allocator];

    if (allocator)
    {
      v11 = objc_alloc_init(FigMetalAllocatorDescriptor);
      [v11 setLabel:@"RTSCMetalAllocator"];
      [v11 setWireMemory:1];
      [v11 setMemSize:20971520];
      [v11 setResourceOptions:512];
      allocator2 = [(FigMetalContext *)self->_context allocator];
      [allocator2 setupWithDescriptor:v11];

      commandQueue = [(FigMetalContext *)self->_context commandQueue];
      metalCommandQueue = self->_metalCommandQueue;
      self->_metalCommandQueue = commandQueue;

      _loadTuningParameters = [(RTSCProcessorV1 *)self _loadTuningParameters];
      v16 = _loadTuningParameters;
      if (_loadTuningParameters)
      {
        [(RTSCProcessorV1 *)_loadTuningParameters setup];
      }

      else
      {
        self->_outputFOVPreset = 2;
        __asm { FMOV            V0.2D, #1.0 }

        self->_outputROI.size = _Q0;
        v22 = matrix_identity_float3x3.columns[1];
        *self->_anon_b0 = matrix_identity_float3x3.columns[0];
        *&self->_anon_b0[16] = v22;
        v23 = matrix_identity_float3x3.columns[2];
        self->_outputROI.origin.x = 0.0;
        self->_outputROI.origin.y = 0.0;
        self->_maxOutputFOV = 0.0;
        *&self->_rollingShutterCompensationEnabled = 0;
        *&self->_anon_b0[32] = v23;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    [RTSCProcessorV1 setup];
    return 0;
  }

  return v16;
}

- (int)prewarm
{
  v3 = [[RTSCShadersV1 alloc] initWithContext:self->_context];
  shaders = self->_shaders;
  self->_shaders = v3;

  if (self->_shaders)
  {
    p_cvMetalTextureCacheRef = &self->_cvMetalTextureCacheRef;
    if (!self->_cvMetalTextureCacheRef)
    {
      v9 = kCVMetalTextureCacheMaximumTextureAgeKey;
      v10 = &off_18750;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      device = [(FigMetalContext *)self->_context device];
      CVMetalTextureCacheCreate(kCFAllocatorDefault, v6, device, 0, p_cvMetalTextureCacheRef);
    }
  }

  else
  {
    [RTSCProcessorV1 prewarm];
  }

  return 0;
}

- (int)process
{
  if (!self->_inputPixelBuffer)
  {
    [RTSCProcessorV1 process];
    return -1;
  }

  if (!self->_inputMetadata)
  {
    [RTSCProcessorV1 process];
    return -1;
  }

  if (!self->_outputPixelBuffer)
  {
    [RTSCProcessorV1 process];
    return -1;
  }

  processingType = self->_processingType;
  switch(processingType)
  {
    case 2u:

      return [(RTSCProcessorV1 *)self _processPreview];
    case 1u:

      return [(RTSCProcessorV1 *)self _processStill];
    case 0u:

      return [(RTSCProcessorV1 *)self _processVideo];
    default:
      return -1;
  }
}

- (int)purgeResources
{
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
    v4 = self->_cvMetalTextureCacheRef;
    if (v4)
    {
      CFRelease(v4);
      self->_cvMetalTextureCacheRef = 0;
    }
  }

  allocator = [(FigMetalContext *)self->_context allocator];
  [allocator reset];

  allocator2 = [(FigMetalContext *)self->_context allocator];
  [allocator2 purgeResources];

  return 0;
}

- (void)dealloc
{
  [(RTSCProcessorV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = RTSCProcessorV1;
  [(RTSCProcessorV1 *)&v3 dealloc];
}

- (void)setMetalCommandQueue:(id)queue
{
  queueCopy = queue;
  if (self->_metalCommandQueue == queueCopy)
  {
    v6 = queueCopy;
    objc_storeStrong(&self->_metalCommandQueue, queue);
    queueCopy = v6;
  }
}

- (int)_loadTuningParameters
{
  if (!self->_tuningParameters)
  {
    v6 = objc_alloc_init(RTSCTuningParametersV1);
    tuning = self->_tuning;
    self->_tuning = v6;

    if (!self->_tuning)
    {
      v5 = 466;
      goto LABEL_7;
    }

    return 0;
  }

  v3 = [[RTSCTuningParametersV1 alloc] initWithDictionary:self->_tuningParameters];
  v4 = self->_tuning;
  self->_tuning = v3;

  if (self->_tuning)
  {
    return 0;
  }

  v5 = 460;
LABEL_7:
  [(RTSCProcessorV1 *)v5 _loadTuningParameters];
  return -16680;
}

- (void)setOutputFOVPreset:(unint64_t)preset
{
  if (preset <= 4)
  {
    self->_outputFOVPreset = preset;
  }
}

- (void)setOutputFOV:(float)v
{
  if (!self->_outputFOVPreset)
  {
    self->_outputFOV = v;
  }
}

- (int)_processVideo
{
  if (self->_inputCalibrationData)
  {
    _updateInputCameraCalibration = [(RTSCProcessorV1 *)self _updateInputCameraCalibration];
    if (_updateInputCameraCalibration)
    {
      v8 = _updateInputCameraCalibration;
      [RTSCProcessorV1 _processVideo];
    }

    else
    {
      _updateOutputFOVRect = [(RTSCProcessorV1 *)self _updateOutputFOVRect];
      if (_updateOutputFOVRect)
      {
        v8 = _updateOutputFOVRect;
        [RTSCProcessorV1 _processVideo];
      }

      else
      {
        _updateStabilization = [(RTSCProcessorV1 *)self _updateStabilization];
        if (_updateStabilization)
        {
          v8 = _updateStabilization;
          [RTSCProcessorV1 _processVideo];
        }

        else
        {
          _updateCandidateFramingCropRects = [(RTSCProcessorV1 *)self _updateCandidateFramingCropRects];
          if (_updateCandidateFramingCropRects)
          {
            v8 = _updateCandidateFramingCropRects;
            [RTSCProcessorV1 _processVideo];
          }

          else
          {
            _render = [(RTSCProcessorV1 *)self _render];
            v8 = _render;
            if (_render)
            {
              [(RTSCProcessorV1 *)_render _processVideo];
            }

            else
            {
              [(RTSCProcessorV1 *)self _updateOutputIntrinsicForCropRect:self->_outputFOVRect.origin.x, self->_outputFOVRect.origin.y, self->_outputFOVRect.size.width, self->_outputFOVRect.size.height];
            }
          }
        }
      }
    }
  }

  else
  {
    [RTSCProcessorV1 _processVideo];
    return -1;
  }

  return v8;
}

- (int)_processStill
{
  _render = [(RTSCProcessorV1 *)self _render];
  v3 = _render;
  if (_render)
  {
    [(RTSCProcessorV1 *)_render _processStill];
  }

  return v3;
}

- (int)_processPreview
{
  if (self->_inputCalibrationData)
  {
    Width = CVPixelBufferGetWidth(self->_outputPixelBuffer);
    if (Width == CVPixelBufferGetWidth(self->_inputPixelBuffer) && (Height = CVPixelBufferGetHeight(self->_outputPixelBuffer), Height == CVPixelBufferGetHeight(self->_inputPixelBuffer)))
    {
      _updateInputCameraCalibration = [(RTSCProcessorV1 *)self _updateInputCameraCalibration];
      if (_updateInputCameraCalibration)
      {
        v10 = _updateInputCameraCalibration;
        [RTSCProcessorV1 _processPreview];
      }

      else
      {
        _updateOutputFOVRect = [(RTSCProcessorV1 *)self _updateOutputFOVRect];
        if (_updateOutputFOVRect)
        {
          v10 = _updateOutputFOVRect;
          [RTSCProcessorV1 _processPreview];
        }

        else
        {
          _updateStabilization = [(RTSCProcessorV1 *)self _updateStabilization];
          if (_updateStabilization)
          {
            v10 = _updateStabilization;
            [RTSCProcessorV1 _processPreview];
          }

          else
          {
            _updateTransformAndMetadataForPreview = [(RTSCProcessorV1 *)self _updateTransformAndMetadataForPreview];
            if (_updateTransformAndMetadataForPreview)
            {
              v10 = _updateTransformAndMetadataForPreview;
              [RTSCProcessorV1 _processPreview];
            }

            else
            {
              _render = [(RTSCProcessorV1 *)self _render];
              v10 = _render;
              if (_render)
              {
                [(RTSCProcessorV1 *)_render _processPreview];
              }

              else
              {
                [(RTSCProcessorV1 *)self _updateOutputIntrinsicForCropRect:self->_outputFOVRect.origin.x, self->_outputFOVRect.origin.y, self->_outputFOVRect.size.width, self->_outputFOVRect.size.height];
              }
            }
          }
        }
      }
    }

    else
    {
      [(RTSCProcessorV1 *)&v12 _processPreview];
      return v12;
    }
  }

  else
  {
    [RTSCProcessorV1 _processPreview];
    return -1;
  }

  return v10;
}

- (id)_cachedTextureFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  v4 = 0;
  image = 0;
  if (buffer && self->_cvMetalTextureCacheRef)
  {
    CVPixelBufferGetPixelFormatType(buffer);
    v21 = 1;
    v20 = 0;
    v8 = CMIGetMetalPixelFormatForPixelBuffer();
    if (!v8)
    {
      v4 = 0;
      goto LABEL_10;
    }

    v9 = v8;
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v18 = kCVMetalTextureUsage;
    v12 = [NSNumber numberWithUnsignedInteger:usage];
    v19 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v14 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_cvMetalTextureCacheRef, buffer, v13, v9, Width, Height, 0, &image);
    v15 = image;
    if (v14)
    {
      v4 = 0;
      if (!image)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = CVMetalTextureGetTexture(image);
      v15 = image;
      v4 = v16;
      if (!image)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v15);
  }

LABEL_10:

  return v4;
}

- (id)_bindCVPixleBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  v7 = [RTSCProcessorV1 _cachedTextureFromPixelBuffer:"_cachedTextureFromPixelBuffer:usage:" usage:?];
  if (!v7)
  {
    CVPixelBufferGetPixelFormatType(buffer);
    v7 = CMIGetMetalPixelFormatForPixelBuffer();
    if (v7)
    {
      v7 = [(FigMetalContext *)self->_context bindPixelBufferToMTL2DTexture:buffer pixelFormat:v7 usage:usage plane:0];
    }
  }

  return v7;
}

- (int)_fillRenderParams:(id *)params
{
  v3 = *&self->_anon_b0[16];
  v4 = *&self->_anon_b0[32];
  *params = *self->_anon_b0;
  *(params + 1) = v3;
  *(params + 2) = v4;
  *&v3 = vcvt_f32_f64(self->_outputROI.size);
  *(params + 6) = vcvt_f32_f64(self->_outputROI.origin);
  *(params + 7) = v3;
  return 0;
}

- (int)_encodeRender:(id)render inputTex:(id)tex outputTex:(id)outputTex
{
  renderCopy = render;
  texCopy = tex;
  outputTexCopy = outputTex;
  memset(v20, 0, 48);
  v12 = [(RTSCProcessorV1 *)self _fillRenderParams:v20];
  if (v12)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v12, v5, v15.i64[0], v15.i64[1], v16, width, height, v19);
  }

  else
  {
    v13 = [(RTSCShadersV1 *)self->_shaders objectAtIndexedSubscript:0];
    [renderCopy setComputePipelineState:v13];

    [renderCopy setTexture:texCopy atIndex:0];
    [renderCopy setTexture:outputTexCopy atIndex:1];
    [renderCopy setBytes:v20 length:64 atIndex:0];
    [renderCopy setImageblockWidth:32 height:32];
    width = [outputTexCopy width];
    height = [outputTexCopy height];
    v19 = 1;
    v15 = vdupq_n_s64(0x20uLL);
    v16 = 1;
    [renderCopy dispatchThreads:&width threadsPerThreadgroup:&v15];
  }

  return v12;
}

- (int)_encodeDownsample:(id)downsample inputTex:(id)tex outputTex:(id)outputTex
{
  downsampleCopy = downsample;
  texCopy = tex;
  outputTexCopy = outputTex;
  v11 = [(RTSCShadersV1 *)self->_shaders objectAtIndexedSubscript:1];
  [downsampleCopy setComputePipelineState:v11];

  [downsampleCopy setTexture:texCopy atIndex:0];
  [downsampleCopy setTexture:outputTexCopy atIndex:1];
  [downsampleCopy setImageblockWidth:32 height:32];
  v15[0] = [outputTexCopy width];
  v15[1] = [outputTexCopy height];
  v15[2] = 1;
  v13 = vdupq_n_s64(0x20uLL);
  v14 = 1;
  [downsampleCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_createRenderTargetForOutputTex:(id)tex renderTargetTex:(id *)targetTex
{
  texCopy = tex;
  Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  inputPixelBuffer = self->_inputPixelBuffer;
  if (Width >= Height)
  {
    v11 = CVPixelBufferGetHeight(inputPixelBuffer);
  }

  else
  {
    v11 = CVPixelBufferGetWidth(inputPixelBuffer);
  }

  v12 = v11;
  v13 = CVPixelBufferGetWidth(self->_outputPixelBuffer);
  v14 = CVPixelBufferGetHeight(self->_outputPixelBuffer);
  outputPixelBuffer = self->_outputPixelBuffer;
  if (v13 >= v14)
  {
    v16 = CVPixelBufferGetHeight(outputPixelBuffer);
  }

  else
  {
    v16 = CVPixelBufferGetWidth(outputPixelBuffer);
  }

  v17 = llroundf(log2f(v12 / v16));
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 - 1;
  if (v17 <= 5)
  {
    v20 = v19;
  }

  else
  {
    v20 = 4;
  }

  if (v20)
  {
    allocator = [(FigMetalContext *)self->_context allocator];
    newTextureDescriptor = [allocator newTextureDescriptor];

    [newTextureDescriptor setLabel:0];
    desc = [newTextureDescriptor desc];
    [desc setPixelFormat:115];

    width = [texCopy width];
    desc2 = [newTextureDescriptor desc];
    [desc2 setWidth:width << v20];

    height = [texCopy height];
    desc3 = [newTextureDescriptor desc];
    [desc3 setHeight:height << v20];

    desc4 = [newTextureDescriptor desc];
    [desc4 setUsage:65543];

    allocator2 = [(FigMetalContext *)self->_context allocator];
    *targetTex = [allocator2 newTextureWithDescriptor:newTextureDescriptor];

    if (*targetTex)
    {
      v30 = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v33, v34, v35, v36, v37, v38);
      v30 = -1;
    }
  }

  else
  {
    FigMetalIncRef();
    v31 = texCopy;
    v30 = 0;
    *targetTex = texCopy;
  }

  return v30;
}

- (int)_encodeRenderTargetResolve:(id)resolve renderTargetTex:(id)tex outputTex:(id)outputTex
{
  resolveCopy = resolve;
  texCopy = tex;
  outputTexCopy = outputTex;
  location = 0;
  if (texCopy != outputTexCopy)
  {
    FigMetalIncRef();
    objc_storeStrong(&location, tex);
    v12 = 0;
    for (i = texCopy; ; i = location)
    {
      width = [i width];
      if ([outputTexCopy width] >= width >> 1)
      {
        newTextureDescriptor = v12;
        v12 = outputTexCopy;
      }

      else
      {
        allocator = [(FigMetalContext *)self->_context allocator];
        newTextureDescriptor = [allocator newTextureDescriptor];

        [newTextureDescriptor setLabel:0];
        pixelFormat = [location pixelFormat];
        desc = [newTextureDescriptor desc];
        [desc setPixelFormat:pixelFormat];

        width2 = [location width];
        desc2 = [newTextureDescriptor desc];
        [desc2 setWidth:width2 >> 1];

        height = [location height];
        desc3 = [newTextureDescriptor desc];
        [desc3 setHeight:height >> 1];

        desc4 = [newTextureDescriptor desc];
        [desc4 setUsage:65543];

        allocator2 = [(FigMetalContext *)self->_context allocator];
        v25 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];

        if (!v25)
        {
          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v28, location, v30, v31, v32, v33);

          v12 = 0;
          v26 = -1;
          goto LABEL_12;
        }

        v12 = v25;
      }

      v26 = [(RTSCProcessorV1 *)self _encodeDownsample:resolveCopy inputTex:location outputTex:v12];
      if (v26)
      {
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, v5, v28, location, v30, v31, v32, v33);
        goto LABEL_12;
      }

      FigMetalDecRef();
      if (v12 == outputTexCopy)
      {
        goto LABEL_11;
      }

      objc_storeStrong(&location, v12);
    }
  }

  v12 = 0;
LABEL_11:
  v26 = 0;
LABEL_12:

  return v26;
}

- (int)_render
{
  v4 = [(RTSCProcessorV1 *)self _bindCVPixleBuffer:self->_inputPixelBuffer usage:1];
  if (v4 && ([(RTSCProcessorV1 *)self _bindCVPixleBuffer:self->_outputPixelBuffer usage:65543], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v18 = v6;
    commandBuffer = [(FigMetalContext *)self->_context commandBuffer];
    v8 = commandBuffer;
    if (commandBuffer)
    {
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      if (computeCommandEncoder)
      {
        v10 = [(RTSCProcessorV1 *)self _encodeRender:computeCommandEncoder inputTex:v4 outputTex:v6];
        if (v10)
        {
          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v2, v16, v6, v19, v20, v21, v22);
        }

        else
        {
          [computeCommandEncoder endEncoding];
          [(FigMetalContext *)self->_context commit];
          v10 = 0;
        }

        v11 = v8;
        v12 = computeCommandEncoder;
      }

      else
      {
        fig_log_get_emitter();
        v12 = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v16, v6, v19, v20, v21, v22);
        v10 = -1;
        v11 = v8;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v16, v6, v19, v20, v21, v22);
      fig_log_get_emitter();
      v11 = 0;
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v17);
      v12 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    v11 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v16, 0, v19, v20, v21, v22);
    v10 = -1;
    v12 = 0;
    v6 = 0;
  }

  FigMetalDecRef();

  return v10;
}

- (CGPoint)warpCGPoint:(CGPoint)point
{
  x = point.x;
  v8 = x;
  y = point.y;
  v9 = y;
  v10 = __invert_f3(*self->_anon_b0);
  v10.columns[0] = vaddq_f32(v10.columns[2], vmlaq_n_f32(vmulq_n_f32(v10.columns[0], v8), v10.columns[1], v9));
  v6 = vmlaq_f64(self->_outputROI.origin, vcvtq_f64_f32(vdiv_f32(*v10.columns[0].f32, vdup_laneq_s32(v10.columns[0], 2))), self->_outputROI.size);
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (CGRect)warpCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v33 = MinX;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MaxX = CGRectGetMaxX(v36);
  v32 = MaxX;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinY = CGRectGetMinY(v37);
  v31 = MinY;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MaxY = CGRectGetMaxY(v38);
  *&v13 = v32;
  *&v12 = v33;
  *&MaxY = MaxY;
  HIDWORD(v13) = LODWORD(MaxY);
  HIDWORD(v12) = LODWORD(MaxY);
  v34[0] = __PAIR64__(LODWORD(v31), LODWORD(v33));
  v34[1] = __PAIR64__(LODWORD(v31), LODWORD(v32));
  v34[2] = v13;
  v34[3] = v12;
  v35 = __invert_f3(*self->_anon_b0);
  for (i = 0; i != 4; ++i)
  {
    v15 = vaddq_f32(v35.columns[2], vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(v34[i])), v35.columns[1], v34[i], 1));
    v34[i] = vdiv_f32(*v15.i8, vdup_laneq_s32(v15, 2));
  }

  v16 = 0;
  v17 = -2.0;
  v18 = 2.0;
  v19 = 2.0;
  v20 = -2.0;
  do
  {
    v21 = v34[v16];
    v18 = fminf(v18, *&v21);
    v17 = fmaxf(v17, *&v21);
    v19 = fminf(v19, *(&v21 + 1));
    v20 = fmaxf(v20, *(&v21 + 1));
    ++v16;
  }

  while (v16 != 4);
  v22 = v18;
  v23 = v17 - v18;
  v24 = self->_outputROI.size.width;
  v25 = self->_outputROI.size.height;
  v26 = self->_outputROI.origin.x + v24 * v22;
  v27 = (v20 - v19);
  v28 = self->_outputROI.origin.y + v25 * v19;
  v29 = v24 * v23;
  v30 = v25 * v27;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v26;
  return result;
}

- (int)_updateInputCameraCalibration
{
  v3 = [(NSDictionary *)self->_inputCalibrationData objectForKeyedSubscript:kFigCameraCalibrationDataMetadataAttachmentKey_IntrinsicMatrix];
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  [v3 getBytes:self->_anon_60 length:48];

  v5 = [(NSDictionary *)self->_inputCalibrationData objectForKeyedSubscript:kFigCameraCalibrationDataMetadataAttachmentKey_IntrinsicMatrixReferenceDimensions];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v12 = CGSizeZero;
  CGSizeMakeWithDictionaryRepresentation(v5, &v12);
  *self->_inputCameraIntrinsicRefSize = vcvt_f32_f64(v12);

  v7 = [(NSDictionary *)self->_inputCalibrationData objectForKeyedSubscript:kFigCameraCalibrationDataMetadataAttachmentKey_PixelSize];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    self->_inputCameraPixelSize = v9;
    if (v9 > 0.0)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (int)_updateOutputFOVRect
{
  if (self->_outputFOVPreset == 4)
  {
    _extractFinalCropRect = [(RTSCProcessorV1 *)self _extractFinalCropRect];
    v3 = _extractFinalCropRect;
    if (_extractFinalCropRect)
    {
      [(RTSCProcessorV1 *)_extractFinalCropRect _updateOutputFOVRect];
    }
  }

  else
  {
    _updateOutputFOV = [(RTSCProcessorV1 *)self _updateOutputFOV];
    v3 = _updateOutputFOV;
    if (_updateOutputFOV)
    {
      [(RTSCProcessorV1 *)_updateOutputFOV _updateOutputFOVRect];
    }
  }

  return v3;
}

- (int)_updateOutputFOV
{
  v3 = (self->_outputROI.size.width * CVPixelBufferGetWidth(self->_outputPixelBuffer));
  v4 = (self->_outputROI.size.height * CVPixelBufferGetHeight(self->_outputPixelBuffer));
  v5 = *self->_anon_60;
  v5.i32[1] = *&self->_anon_60[20];
  *v6.f32 = vmul_f32(*self->_inputCameraIntrinsicRefSize, 0x3F0000003F000000);
  x = v5;
  v7 = _simd_atan2_f4(v6, v5).u64[0];
  v8 = vadd_f32(v7, v7);
  if (v3 <= v4)
  {
    v8.f32[0] = v8.f32[1];
  }

  v9 = v8.f32[0] / 3.14159265 * 180.0;
  self->_maxOutputFOV = v9;
  [(RTSCTuningParametersV1 *)self->_tuning stabilizationReservedFOV];
  maxOutputFOV = self->_maxOutputFOV + (v10 * -2.0);
  self->_maxOutputFOV = maxOutputFOV;
  self->_configuredOutputFOV = 0.0;
  outputFOVPreset = self->_outputFOVPreset;
  outputFOV = 0.0;
  if (outputFOVPreset > 1)
  {
    if (outputFOVPreset == 2)
    {
      [(RTSCTuningParametersV1 *)self->_tuning naturalOutputFOV];
    }

    else
    {
      if (outputFOVPreset != 3)
      {
        goto LABEL_19;
      }

      [(RTSCTuningParametersV1 *)self->_tuning faceReframingOutputFOV];
    }

    self->_configuredOutputFOV = outputFOV;
    maxOutputFOV = self->_maxOutputFOV;
LABEL_17:
    if (outputFOV <= maxOutputFOV)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!outputFOVPreset)
  {
    outputFOV = self->_outputFOV;
    if (outputFOV < 0.0)
    {
      outputFOV = 0.0;
    }

    if (outputFOV <= 0.0)
    {
      outputFOV = maxOutputFOV;
    }

    self->_configuredOutputFOV = outputFOV;
    goto LABEL_17;
  }

  if (outputFOVPreset == 1)
  {
LABEL_18:
    self->_configuredOutputFOV = maxOutputFOV;
    outputFOV = maxOutputFOV;
  }

LABEL_19:
  if (self->_zoomOutForMultiSubjects)
  {
    [(NSMutableDictionary *)self->_inputMetadata cmi_cgRectForKey:@"SmartFramingSuggestedFieldOfViewRectForSmartCrop" defaultValue:0 found:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    v35 = v15;
    v36 = v14;
    if (CGRectIsNull(*(&v15 - 24)))
    {
      maxOutputFOV = self->_maxOutputFOV;
      outputFOV = (maxOutputFOV + self->_configuredOutputFOV) * 0.5;
    }

    else
    {
      v16.f64[0] = v36;
      *&v16.f64[1] = v35;
      *&v16.f64[0] = vmul_f32(vmul_f32(*self->_inputCameraIntrinsicRefSize, vcvt_f32_f64(v16)), 0x3F0000003F000000);
      v17 = _simd_atan2_f4(v16, x).u64[0];
      v18 = vadd_f32(v17, v17);
      if (v3 <= v4)
      {
        v18.f32[0] = v18.f32[1];
      }

      v19 = v18.f32[0] / 3.14159265 * 180.0;
      maxOutputFOV = self->_maxOutputFOV;
      outputFOV = fminf(fmaxf(v19, 0.0), maxOutputFOV);
    }
  }

  if (outputFOV == 0.0)
  {
    v20 = maxOutputFOV;
  }

  else
  {
    v20 = outputFOV;
  }

  v21 = 1.0 / tan((v20 * 0.5) * 3.14159265 / 180.0);
  outputFocalLengthAnimation = self->_outputFocalLengthAnimation;
  if (outputFocalLengthAnimation && (objc_msgSend_currentTime(outputFocalLengthAnimation), (BYTE12(v38) & 1) != 0))
  {
    [(RTSCSpringAnimation *)self->_outputFocalLengthAnimation setTargetValue:v21];
    v24 = self->_outputFocalLengthAnimation;
    v38 = *&self->_inputPTS.value;
    epoch = self->_inputPTS.epoch;
    [(RTSCSpringAnimation *)v24 updateToTime:&v38];
  }

  else
  {
    v23 = self->_outputFocalLengthAnimation;
    v38 = *&self->_inputPTS.value;
    epoch = self->_inputPTS.epoch;
    [(RTSCSpringAnimation *)v23 startAtTime:&v38 withValue:v21, v35];
  }

  [(RTSCSpringAnimation *)self->_outputFocalLengthAnimation currentValue];
  v26 = v25;
  v27 = atan2f(1.0, v26);
  v28 = v27 / 3.14159265 * 180.0 + v27 / 3.14159265 * 180.0;
  if (self->_outputFOVPreset)
  {
    v29 = v28;
  }

  else
  {
    v29 = v20;
  }

  self->_outputFOV = v29;
  [(RTSCProcessorV1 *)self _calculateCropRectForOutputFOV:?];
  self->_outputFOVRect.origin.x = v30;
  self->_outputFOVRect.origin.y = v31;
  self->_outputFOVRect.size.width = v32;
  self->_outputFOVRect.size.height = v33;
  return 0;
}

- (int)_extractFinalCropRect
{
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return 0;
  }

  v4 = self->_outputROI.size.width * CVPixelBufferGetWidth(self->_outputPixelBuffer);
  v5 = self->_outputROI.size.height * CVPixelBufferGetHeight(self->_outputPixelBuffer);
  Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  v8 = fmin(v4 / Width, 1.0);
  v9 = fmin(v5 / Height, 1.0);
  self->_outputFOVRect.origin.x = (1.0 - v8) * 0.5;
  self->_outputFOVRect.origin.y = (1.0 - v9) * 0.5;
  self->_outputFOVRect.size.width = v8;
  self->_outputFOVRect.size.height = v9;
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954513, "<<<< RTSCProcessorV1 >>>>", 1289);
}

- (int)_updateStabilization
{
  Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  LODWORD(v5) = 1.0;
  [(RTSCRealTimeStabilization *)self->_stabilizer setFaceReframingStrength:v5];
  if (self->_zoomOutForMultiSubjects)
  {
    *&v6 = fminf(fmaxf((self->_maxOutputFOV - self->_outputFOV) / (self->_maxOutputFOV - self->_configuredOutputFOV), 0.0), 1.0);
    [(RTSCRealTimeStabilization *)self->_stabilizer setFaceReframingStrength:v6];
  }

  v7 = [(RTSCRealTimeStabilization *)self->_stabilizer updateStabilizationHomographyUsingMetadata:self->_inputMetadata inputCalibration:self->_inputCalibrationData pixelBufferDimensions:Width | (Height << 32) outputFOVRect:self->_outputFOVRect.origin.x, self->_outputFOVRect.origin.y, self->_outputFOVRect.size.width, self->_outputFOVRect.size.height];
  [(RTSCRealTimeStabilization *)self->_stabilizer stabilizationHomography];
  *&self->_anon_b0[8] = v8;
  *self->_anon_b0 = v9;
  *&self->_anon_b0[24] = v10;
  *&self->_anon_b0[16] = v11;
  *&self->_anon_b0[40] = v12;
  *&self->_anon_b0[32] = v13;
  return v7;
}

- (int)_updateTransformAndMetadataForPreview
{
  Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  v5 = 0;
  __asm { FMOV            V1.2D, #1.0 }

  v11 = vcvt_f32_f64(vdivq_f64(_Q1, self->_outputFOVRect.size));
  *v12.i8 = vcvt_f32_f64(vmulq_f64(vnegq_f64(self->_outputFOVRect.origin), vcvtq_f64_f32(v11)));
  LODWORD(v13) = 0;
  HIDWORD(v13) = v11.i32[1];
  v14 = v11.i32[0];
  v12.i64[1] = 1065353216;
  v15 = *self->_anon_b0;
  v16 = *&self->_anon_b0[16];
  v17 = *&self->_anon_b0[32];
  v55 = v14;
  v56 = v13;
  v57 = v12;
  do
  {
    v18 = *(&v55 + v5);
    v19 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v18.f32[0]), v16, *v18.f32, 1), v17, v18, 2);
    *(&v58 + v5) = v19;
    v5 += 16;
  }

  while (v5 != 48);
  v18.f32[0] = Width;
  v19.f32[0] = Height;
  v51 = *v19.f32;
  v52 = *v18.f32;
  v20 = v58.i64[0];
  v21 = v59;
  v22 = v60;
  *&self->_anon_b0[8] = v58.i32[2];
  *self->_anon_b0 = v20;
  *&self->_anon_b0[24] = v21.i32[2];
  *&self->_anon_b0[40] = v22.i32[2];
  *&self->_anon_b0[16] = v21.i64[0];
  *&self->_anon_b0[32] = v22.i64[0];
  v23 = Width;
  v24 = Height;
  v53 = v23;
  v54 = v24;
  v25 = kFigCaptureStreamMetadata_ValidBufferRect;
  FigCFDictionaryGetCGRectIfPresent();
  v26.i32[1] = HIDWORD(v54);
  v27 = v23;
  v50 = vmlaq_n_f32(vdupq_lane_s32(COERCE_UNSIGNED_INT(0.0), 0), xmmword_11AE0, v27);
  v28 = v24;
  *v26.i32 = 0.0;
  v49 = vmlaq_n_f32(vdupq_lane_s32(v26, 0), xmmword_11AF0, v28);
  v61 = __invert_f3(*self->_anon_b0);
  v29 = 0;
  v30 = vdivq_f32(v50, vdupq_lane_s32(v52, 0));
  v31 = vdivq_f32(v49, vdupq_lane_s32(v51, 0));
  v32 = vzip1q_s32(v61.columns[0], v61.columns[2]);
  v55 = vzip1q_s32(v32, v61.columns[1]);
  v56 = vzip2q_s32(v32, vdupq_lane_s32(*v61.columns[1].f32, 1));
  v57 = vzip1q_s32(vzip2q_s32(v61.columns[0], v61.columns[2]), vdupq_laneq_s32(v61.columns[1], 2));
  do
  {
    *(&v58 + v29) = vaddq_f32(vdupq_laneq_s32(*(&v55 + v29), 2), vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v55 + v29))), v31, *&v55.i8[v29], 1));
    v29 += 16;
  }

  while (v29 != 48);
  v33.i64[0] = 0x3400000034000000;
  v33.i64[1] = 0x3400000034000000;
  v34 = vmaxnmq_f32(v60, v33);
  v35 = vrecpeq_f32(v34);
  v36 = vmulq_f32(v35, vrecpsq_f32(v34, v35));
  v37 = vmulq_f32(v36, vrecpsq_f32(v34, v36));
  v38 = vmulq_n_f32(vmulq_f32(v58, v37), *v52.i32);
  v39 = vmulq_n_f32(vmulq_f32(v59, v37), *v51.i32);
  v37.f32[0] = roundf(fmaxf(v38.f32[0], v38.f32[3]));
  v36.f32[0] = roundf(fminf(v38.f32[1], v38.f32[2]));
  v40 = roundf(fmaxf(v39.f32[0], v39.f32[1]));
  *v38.i64 = v37.f32[0];
  *v39.i64 = v40;
  *v37.i64 = (v36.f32[0] - v37.f32[0]);
  *v36.i64 = (roundf(fminf(v39.f32[2], v39.f32[3])) - v40);
  v65.origin.x = self->_outputFOVRect.origin.x * v23;
  v65.size.width = self->_outputFOVRect.size.width * v23;
  v65.origin.y = self->_outputFOVRect.origin.y * v24;
  v65.size.height = self->_outputFOVRect.size.height * v24;
  v62 = CGRectUnion(*(&v36 - 24), v65);
  v66.origin.x = 0.0;
  v66.origin.y = 0.0;
  v66.size.width = v23;
  v66.size.height = v24;
  v63 = CGRectIntersection(v62, v66);
  x = v63.origin.x;
  y = v63.origin.y;
  v43 = v63.size.width;
  v44 = v63.size.height;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v63);
  [(NSMutableDictionary *)self->_inputMetadata setObject:DictionaryRepresentation forKeyedSubscript:v25];

  v46 = kFigCaptureStreamMetadata_SensorRawValidBufferRect;
  if (FigCFDictionaryGetCGRectIfPresent() || FigCFDictionaryGetCGRectIfPresent())
  {
    v64.origin.x = *v58.i64 - 0.0 * (*v59.i64 / v53) + x * (*v59.i64 / v53);
    v64.origin.y = *&v58.i64[1] - 0.0 * (*&v59.i64[1] / v54) + y * (*&v59.i64[1] / v54);
    v64.size.width = v43 * (*v59.i64 / v53);
    v64.size.height = v44 * (*&v59.i64[1] / v54);
    v47 = CGRectCreateDictionaryRepresentation(v64);
    [(NSMutableDictionary *)self->_inputMetadata setObject:v47 forKeyedSubscript:v46];
  }

  return 0;
}

- (int)_updateCandidateFramingCropRects
{
  v3 = +[NSMutableArray array];
  if (self->_zoomOutForMultiSubjects)
  {
    *&v4 = self->_configuredOutputFOV;
    [(RTSCProcessorV1 *)self _calculateCropRectForOutputFOV:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (self->_enableFaceReframing)
    {
      [(RTSCRealTimeStabilization *)self->_stabilizer nominalFaceFramingOffset];
      v14 = v13;
      v31.origin.x = v6;
      v31.origin.y = v8;
      v31.size.width = v10;
      v31.size.height = v12;
      MidX = CGRectGetMidX(v31);
      v32.origin.x = v6;
      v32.origin.y = v8;
      v32.size.width = v10;
      v32.size.height = v12;
      MidY = CGRectGetMidY(v32);
      v16.f64[0] = MidX;
      v16.f64[1] = MidY;
      v17 = vcvt_f32_f64(v16);
      *v16.f64 = v10;
      *&v18 = v12;
      __asm { FMOV            V6.2S, #1.0 }

      v24 = vminnm_f32(vmaxnm_f32(vadd_f32(v14, v17), vmul_f32(__PAIR64__(v18, LODWORD(v16.f64[0])), 0x3F0000003F000000)), vmla_f32(_D6, 0xBF000000BF000000, __PAIR64__(v18, LODWORD(v16.f64[0]))));
      v6 = (v24.f32[0] + (*v16.f64 * -0.5));
      v8 = (v24.f32[1] + (*&v18 * -0.5));
      v10 = *v16.f64;
      v12 = *&v18;
    }

    v33.origin.x = v6;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = v12;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v33);
    [(NSArray *)v3 addObject:DictionaryRepresentation];

    *&v26 = self->_maxOutputFOV;
    [(RTSCProcessorV1 *)self _calculateCropRectForOutputFOV:v26];
    v27 = CGRectCreateDictionaryRepresentation(v34);
    [(NSArray *)v3 addObject:v27];
  }

  candidateFramingCropRects = self->_candidateFramingCropRects;
  self->_candidateFramingCropRects = v3;

  return 0;
}

- (CGRect)_calculateCropRectForOutputFOV:(float)v
{
  v5 = (self->_outputROI.size.width * CVPixelBufferGetWidth(self->_outputPixelBuffer));
  v6 = (self->_outputROI.size.height * CVPixelBufferGetHeight(self->_outputPixelBuffer));
  Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  v9 = v6;
  if (v5 <= v6)
  {
    v13 = (*&self->_anon_60[20] + *&self->_anon_60[20]);
    v12 = tan(v * 3.14159265 / 180.0 * 0.5) * v13;
    v11 = v12 * (v5 / v9);
  }

  else
  {
    v10 = (*self->_anon_60 + *self->_anon_60);
    v11 = tan(v * 3.14159265 / 180.0 * 0.5) * v10;
    v12 = v11 * (v9 / v5);
  }

  v14 = v12 * (Height / COERCE_FLOAT(HIDWORD(*self->_inputCameraIntrinsicRefSize))) / Height;
  v15 = v11 * (Width / COERCE_FLOAT(*self->_inputCameraIntrinsicRefSize)) / Width * -0.5 + 0.5;

  [(RTSCProcessorV1 *)self _confineCropRectToValidImageCircle:v15, v14 * -0.5 + 0.5];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_confineCropRectToValidImageCircle:(CGRect)circle
{
  height = circle.size.height;
  width = circle.size.width;
  y = circle.origin.y;
  x = circle.origin.x;
  v7 = [(NSMutableDictionary *)self->_inputMetadata objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_ImageCircle];
  if (v7 && FigCFDictionaryGetCGPointIfPresent() && FigCFDictionaryGetCGSizeIfPresent())
  {
    v8 = hypot(width * 0.5 / v15, height * 0.5 / v16);
    v9 = 1.0 / v8;
    if (v9 >= 1.0)
    {
      v9 = 1.0;
    }

    v10 = v9;
    width = width * v10;
    height = height * v10;
    x = v17 + width * -0.5;
    y = v18 + height * -0.5;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_updateOutputIntrinsicForCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = CVPixelBufferGetWidth(self->_outputPixelBuffer);
  v9 = self->_outputROI.size.width;
  v10 = CVPixelBufferGetHeight(self->_outputPixelBuffer);
  v11 = *self->_inputCameraIntrinsicRefSize;
  v12 = (self->_outputROI.size.height * v10);
  if (*&v11 <= *(&v11 + 1))
  {
    LODWORD(v13) = HIDWORD(*self->_inputCameraIntrinsicRefSize);
  }

  else
  {
    v13 = *&v11;
  }

  v14 = (v9 * v8);
  v15 = *self->_anon_60 / v13;
  v16 = *&self->_anon_60[20] / v13;
  *&v11 = ((COERCE_FLOAT(*&self->_anon_60[32]) / *&v11) - x) / width;
  if (v14 <= v12)
  {
    v18 = (self->_outputROI.size.height * v10);
  }

  else
  {
    v18 = (v9 * v8);
  }

  *&v11 = v14 * *&v11;
  LODWORD(v19) = 0;
  *(&v19 + 1) = v16 * v18;
  v17 = ((COERCE_FLOAT(HIDWORD(*&self->_anon_60[32])) / *(&v11 + 1)) - y) / height;
  *(&v11 + 1) = v12 * v17;
  LODWORD(self[1]._context) = 0;
  self[1].super.isa = COERCE_UNSIGNED_INT(v15 * v18);
  LODWORD(self[1]._tuning) = 0;
  self[1]._shaders = v19;
  LODWORD(self[1]._stabilizer) = 1065353216;
  *&self[1]._processingType = v11;
}

- (__n128)setRenderingHomography:(__n128)homography
{
  result[11] = a2;
  result[12] = homography;
  result[13] = a4;
  return result;
}

- (__n128)setCameraExtrinsicMatrix:(__n128)matrix
{
  result[23] = a2;
  result[24] = matrix;
  result[25] = a4;
  return result;
}

- (void)setInputPTS:(id *)s
{
  v3 = *&s->var0;
  self->_inputPTS.epoch = s->var3;
  *&self->_inputPTS.value = v3;
}

- (CGRect)outputROI
{
  x = self->_outputROI.origin.x;
  y = self->_outputROI.origin.y;
  width = self->_outputROI.size.width;
  height = self->_outputROI.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)prepareToProcess:(unsigned int)process
{
  if (process > 2)
  {
    return -1;
  }

  if (process == 2)
  {
    if (self->_zoomOutForMultiSubjects)
    {
      p_enableFaceReframing = &self->_enableFaceReframing;
      enableFaceReframing = self->_enableFaceReframing;
      self->_zoomOutForMultiSubjects = 0;
      if (!enableFaceReframing)
      {
LABEL_11:
        v17 = __invert_f3(*self->_anon_170);
        v15 = *v17.columns[1].i64;
        v16 = *v17.columns[0].i64;
        v14 = *v17.columns[2].i64;
        v8 = self->_enableFaceReframing;
        [(RTSCTuningParametersV1 *)self->_tuning stabilizationReservedFOV];
        v10 = [[RTSCRealTimeStabilization alloc] initWithCameraExtrinsics:v8 | (v9 << 32) faceReframingSettings:v16, v15, v14];
        stabilizer = self->_stabilizer;
        self->_stabilizer = v10;

        [(RTSCRealTimeStabilization *)self->_stabilizer setStabilizationSmoothingDisabled:self->_stabilizationSmoothingDisabled];
        [(RTSCRealTimeStabilization *)self->_stabilizer setRollingShutterCompensationEnabled:self->_rollingShutterCompensationEnabled];
        v12 = objc_alloc_init(RTSCSpringAnimation);
        outputFocalLengthAnimation = self->_outputFocalLengthAnimation;
        self->_outputFocalLengthAnimation = v12;

        [(RTSCSpringAnimation *)self->_outputFocalLengthAnimation configureWithPreset:2];
        goto LABEL_12;
      }
    }

    else
    {
      p_enableFaceReframing = &self->_enableFaceReframing;
      if (!self->_enableFaceReframing)
      {
        goto LABEL_11;
      }
    }

    *p_enableFaceReframing = 0;
    goto LABEL_11;
  }

  if (!process)
  {
    if (self->_zoomOutForMultiSubjects && self->_outputFOVPreset - 4 < 0xFFFFFFFFFFFFFFFELL)
    {
      return -1;
    }

    goto LABEL_11;
  }

LABEL_12:
  result = 0;
  self->_processingType = process;
  return result;
}

- (uint64_t)_processPreview
{
  fig_log_get_emitter();
  v4 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v1, v7, v9, v10, v11, vars0, vars8);
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v8);
  *self = result;
  return result;
}

@end