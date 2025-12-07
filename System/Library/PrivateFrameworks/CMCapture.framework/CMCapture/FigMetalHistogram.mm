@interface FigMetalHistogram
- (FigMetalHistogram)initWithMetalContext:(id)context;
- (int)singleComponentCPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average;
- (int)singleComponentCPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect subSampleX:(unsigned int)x subSampleY:(unsigned int)y outputHistogram:(id *)histogram;
- (int)singleComponentGPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average;
- (int)singleComponentGPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputHistogram:(id *)histogram;
- (uint64_t)_initShaders;
@end

@implementation FigMetalHistogram

- (FigMetalHistogram)initWithMetalContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = FigMetalHistogram;
  v6 = [(FigMetalHistogram *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    [FigMetalHistogram initWithMetalContext:];
LABEL_14:
    v18 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, context);
  if (!v7->_metalContext)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v15 andOptionalCommandQueue:0];
      metalContext = v7->_metalContext;
      v7->_metalContext = v16;

      if (v7->_metalContext)
      {

        goto LABEL_6;
      }

      [FigMetalHistogram initWithMetalContext:];
    }

    else
    {
      [FigMetalHistogram initWithMetalContext:];
    }

    goto LABEL_14;
  }

LABEL_6:
  if ([(FigMetalHistogram *)v7 _initShaders:v8])
  {
    [FigMetalHistogram initWithMetalContext:];
    goto LABEL_14;
  }

  v18 = v7;
LABEL_8:

  return v18;
}

- (int)singleComponentGPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputHistogram:(id *)histogram
{
  if (!buffer)
  {
    [(FigMetalHistogram *)self singleComponentGPUHistogramInputPixelBuffer:a2 validRect:0 outputHistogram:histogram, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height];
    return -12780;
  }

  if (!histogram)
  {
    [(FigMetalHistogram *)self singleComponentGPUHistogramInputPixelBuffer:a2 validRect:rect.origin outputHistogram:*&rect.origin.y, rect.size, *&rect.size.height];
    return -12780;
  }

  y = rect.origin.y;
  height = rect.size.height;
  width = rect.size.width;
  __dst = rect.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  result = -12780;
  v10 = 10;
  if (PixelFormatType > 796423727)
  {
    if (PixelFormatType > 2016686639)
    {
      if (PixelFormatType <= 2084075055)
      {
        if (PixelFormatType == 2016686640 || PixelFormatType == 2019963440)
        {
          v10 = 20;
          goto LABEL_38;
        }

        v11 = 2084070960;
        goto LABEL_35;
      }

      if (PixelFormatType == 2084075056)
      {
        goto LABEL_38;
      }

      if (PixelFormatType == 2088265264)
      {
        goto LABEL_32;
      }

      v12 = 2088269360;
    }

    else
    {
      if (PixelFormatType <= 1278226487)
      {
        if (PixelFormatType != 796423728)
        {
          if (PixelFormatType == 875704422)
          {
            goto LABEL_38;
          }

          v11 = 875704438;
          goto LABEL_35;
        }

LABEL_32:
        v10 = 588;
        goto LABEL_38;
      }

      if (PixelFormatType == 1278226488)
      {
        goto LABEL_38;
      }

      if (PixelFormatType == 1882468912)
      {
        goto LABEL_32;
      }

      v12 = 1885745712;
    }

LABEL_31:
    if (PixelFormatType != v12)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (PixelFormatType > 758674991)
  {
    if (PixelFormatType > 792225327)
    {
      if (PixelFormatType == 792225328 || PixelFormatType == 792229424)
      {
        goto LABEL_38;
      }

      v12 = 796419632;
    }

    else
    {
      if (PixelFormatType == 758674992)
      {
        goto LABEL_38;
      }

      if (PixelFormatType == 762865200)
      {
        goto LABEL_32;
      }

      v12 = 762869296;
    }

    goto LABEL_31;
  }

  if (PixelFormatType <= 645424687)
  {
    if (PixelFormatType == 641230384)
    {
      goto LABEL_38;
    }

    v11 = 641234480;
    goto LABEL_35;
  }

  if (PixelFormatType == 645424688 || PixelFormatType == 645428784)
  {
    goto LABEL_32;
  }

  v11 = 758670896;
LABEL_35:
  if (PixelFormatType != v11)
  {
    return result;
  }

LABEL_38:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v43.size.width = width;
  v43.origin.x = __dst;
  v43.origin.y = y;
  v43.size.height = height;
  if (CGRectIsNull(v43))
  {
    v16.i32[0] = 0;
    v16.i16[2] = HeightOfPlane;
    v16.i16[3] = WidthOfPlane;
    goto LABEL_47;
  }

  v17.f64[0] = __dst;
  if (__dst < 0.0 || (v15.n128_f64[0] = __dst + width, __dst + width > WidthOfPlane) || width <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v15 validRect:? outputHistogram:?];
    return -12780;
  }

  v18.f64[0] = height;
  if (y < 0.0 || (v15.n128_f64[0] = y + height, y + height > HeightOfPlane) || height <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v15 validRect:? outputHistogram:?];
    return -12780;
  }

  v17.f64[1] = y;
  v18.f64[1] = width;
  v16 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v17), vcvtq_s64_f64(v18)));
LABEL_47:
  v42[0] = v16;
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (!commandBuffer)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v41 validRect:? outputHistogram:?];
    return v41[0];
  }

  v20 = commandBuffer;
  heightOfPlane = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:buffer pixelFormat:v10 usage:1 textureSize:0 plane:WidthOfPlane, HeightOfPlane];
  if (!heightOfPlane)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v20 validRect:? outputHistogram:?];
    return -12786;
  }

  v22 = heightOfPlane;
  computeCommandEncoder = [v20 computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v22 validRect:v20 outputHistogram:?];
    return -12786;
  }

  v24 = computeCommandEncoder;
  device = [(FigMetalContext *)self->_metalContext device];
  v26 = [device newBufferWithLength:1024 options:0];

  bzero([v26 contents], 0x400uLL);
  v27 = (([v22 width] >> 1) + 15) >> 4;
  v28 = (([v22 height] >> 1) + 15) >> 4;
  [v24 setComputePipelineState:self->_pipelineStates[0]];
  [v24 setTexture:v22 atIndex:0];
  [v24 setBuffer:v26 offset:0 atIndex:0];
  [v24 setBytes:v42 length:8 atIndex:1];
  v41[0] = v27;
  v41[1] = v28;
  v41[2] = 1;
  v39 = vdupq_n_s64(0x10uLL);
  v40 = 1;
  [v24 dispatchThreadgroups:v41 threadsPerThreadgroup:&v39];
  [v24 endEncoding];
  if (*MEMORY[0x1E695FF58])
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke;
    v36[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v37 = WidthOfPlane;
    v38 = HeightOfPlane;
    [v20 addCompletedHandler:v36];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke_2;
    v33[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v34 = WidthOfPlane;
    v35 = HeightOfPlane;
    [v20 addCompletedHandler:v33];
  }

  [(FigMetalContext *)self->_metalContext commitAndWait];
  memcpy(histogram, [v26 contents], sizeof($A1886C520643A86ACC5362F227C8A889));

  return 0;
}

uint64_t __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke(uint64_t result)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return v1;
}

void __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 GPUEndTime];
  [v2 GPUStartTime];

  if (*MEMORY[0x1E695FF58] == 1)
  {

    kdebug_trace();
  }
}

- (int)singleComponentCPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect subSampleX:(unsigned int)x subSampleY:(unsigned int)y outputHistogram:(id *)histogram
{
  if (!buffer)
  {
    [(FigMetalHistogram *)self singleComponentCPUHistogramInputPixelBuffer:a2 validRect:0 subSampleX:*&x subSampleY:*&y outputHistogram:histogram, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height];
    return -12780;
  }

  if (!histogram)
  {
    [(FigMetalHistogram *)self singleComponentCPUHistogramInputPixelBuffer:a2 validRect:rect.origin subSampleX:*&rect.origin.y subSampleY:rect.size outputHistogram:*&rect.size.height];
    return -12780;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((CVPixelBufferGetPixelFormatType(buffer) & 0xFFFFFFEF) != 0x34323066)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  bzero(histogram, 0x400uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v30 = BytesPerRowOfPlane;
  if (!CGRectIsNull(v31))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    if (x < 0.0 || (v21.n128_f64[0] = x + width, x + width > WidthOfPlane) || width <= 0.0)
    {
      [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:v21 validRect:? subSampleX:? subSampleY:? outputHistogram:?];
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      if (y >= 0.0)
      {
        v23.n128_f64[0] = y + height;
        if (y + height <= HeightOfPlane && height > 0.0)
        {
          xCopy = x;
          yCopy = y;
          v16 = width;
          v17 = height;
          goto LABEL_13;
        }
      }

      [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:v23 validRect:? subSampleX:? subSampleY:? outputHistogram:?];
    }

    return -12780;
  }

  v16 = CVPixelBufferGetWidthOfPlane(buffer, 0);
  v17 = CVPixelBufferGetHeightOfPlane(buffer, 0);
  xCopy = 0;
  yCopy = 0;
LABEL_13:
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v25 = yCopy + (y >> 1);
  if (v25 < v17 + yCopy)
  {
    v26 = v16 + xCopy;
    v27 = &BaseAddressOfPlane[v25 * v30];
    do
    {
      for (i = xCopy + (x >> 1); i < v26; i += x)
      {
        ++histogram->var0[v27[i]];
      }

      v27 += v30 * y;
      v25 += y;
    }

    while (v25 < v17 + yCopy);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)singleComponentGPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bzero(v27, 0x400uLL);
  if (CVPixelBufferGetPixelFormatType(buffer) != 1278226488)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  if (!average)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (CGRectIsNull(v28))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
    goto LABEL_12;
  }

  v14 = CVPixelBufferGetWidthOfPlane(buffer, 0);
  if (x < 0.0 || (v15.n128_f64[0] = x + width, x + width > v14) || width <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:v14 validRect:v15 outputAverage:?];
    return -12780;
  }

  v16 = CVPixelBufferGetHeightOfPlane(buffer, 0);
  if (y < 0.0 || (v17.n128_f64[0] = y + height, y + height > v16) || height <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:v16 validRect:v17 outputAverage:?];
    return -12780;
  }

  WidthOfPlane = width;
  HeightOfPlane = height;
LABEL_12:
  height = [(FigMetalHistogram *)self singleComponentGPUHistogramInputPixelBuffer:buffer validRect:v27 outputHistogram:x, y, width, height];
  if (height)
  {
    v25 = height;
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
  }

  else
  {
    v19 = 0;
    v20 = xmmword_1ACF06180;
    v21 = 0uLL;
    v22.i64[0] = 0x400000004;
    v22.i64[1] = 0x400000004;
    v23 = 0uLL;
    do
    {
      v24 = vmulq_s32(*&v27[v19], v20);
      v23 = vaddw_high_u32(v23, v24);
      v21 = vaddw_u32(v21, *v24.i8);
      v20 = vaddq_s32(v20, v22);
      v19 += 16;
    }

    while (v19 != 1024);
    v25 = 0;
    *average = vaddvq_s64(vaddq_s64(v21, v23)) / ((WidthOfPlane * HeightOfPlane) * 255.0);
  }

  return v25;
}

- (int)singleComponentCPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average
{
  if (!buffer)
  {
    [(FigMetalHistogram *)self singleComponentCPUAverageInputPixelBuffer:a2 validRect:0 outputAverage:average, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height];
    return -12780;
  }

  if (!average)
  {
    [(FigMetalHistogram *)self singleComponentCPUAverageInputPixelBuffer:a2 validRect:rect.origin outputAverage:*&rect.origin.y, rect.size, *&rect.size.height];
    return -12780;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CVPixelBufferGetPixelFormatType(buffer) != 1278226488)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectIsNull(v27))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    if (x < 0.0 || (v17.n128_f64[0] = x + width, x + width > WidthOfPlane) || width <= 0.0)
    {
      [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:v17 validRect:? outputAverage:?];
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      if (y >= 0.0)
      {
        v19.n128_f64[0] = y + height;
        if (y + height <= HeightOfPlane && height > 0.0)
        {
          v14 = x;
          v15 = y;
          v12 = width;
          v13 = height;
          goto LABEL_13;
        }
      }

      [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:v19 validRect:? outputAverage:?];
    }

    return -12780;
  }

  v12 = CVPixelBufferGetWidthOfPlane(buffer, 0);
  v13 = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v14 = 0;
  v15 = 0;
LABEL_13:
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v21 = v13 + v15;
  v22 = 0.0;
  if (v15 < v13 + v15)
  {
    v23 = 0;
    v24 = v12 + v14;
    do
    {
      v25 = v14;
      if (v14 < v24)
      {
        do
        {
          v23 += BaseAddressOfPlane[v25++];
        }

        while (v24 != v25);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      ++v15;
    }

    while (v15 != v21);
    v22 = v23;
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  result = 0;
  *average = v22 / ((v13 * v12) * 255.0);
  return result;
}

- (uint64_t)_initShaders
{
  if (!self)
  {
    return 0;
  }

  v11 = [*(self + 8) computePipelineStateFor:@"histogramSingleComponent" constants:{0, a5, a6, a7, a8}];
  v12 = *(self + 16);
  *(self + 16) = v11;

  if (*(self + 16))
  {
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v18, v19, v20, v21, v22, vars0, vars8);
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFEE107, "<<<< FigMetalHistogram >>>>", 0x53, v9, v15, v16, a9);
}

- (void)singleComponentGPUHistogramInputPixelBuffer:(void *)a1 validRect:(const char *)a2 outputHistogram:.cold.3(void *a1, const char *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, a2, v8, v9, vars0, vars8);
}

- (void)singleComponentGPUHistogramInputPixelBuffer:(const char *)a1 validRect:outputHistogram:.cold.4(const char *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

- (uint64_t)singleComponentGPUHistogramInputPixelBuffer:(_DWORD *)a1 validRect:outputHistogram:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFEE107, "<<<< FigMetalHistogram >>>>", 0xB0, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

@end