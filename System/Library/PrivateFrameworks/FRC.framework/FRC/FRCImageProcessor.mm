@interface FRCImageProcessor
- (BOOL)shouldCropOutputFrame:(__CVBuffer *)frame;
- (BOOL)shouldScaleBuffer:(__CVBuffer *)buffer;
- (FRCImageProcessor)initWithUsage:(int64_t)usage normalizationMode:(int64_t)mode;
- (unsigned)rgbaPixelFormatForBuffer:(__CVBuffer *)buffer useScaler:(BOOL)scaler;
- (void)allocateNormalizedBuffers;
- (void)allocteRGBABuffersForBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)postProcessNormalizedFrame:(__CVBuffer *)frame output:(__CVBuffer *)output timeScale:(float)scale waitForCompletion:(BOOL)completion;
- (void)preProcessFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput waitForCompletion:(BOOL)completion;
- (void)releaseNormalizedBuffers;
- (void)storeColorProperties:(__CVBuffer *)properties;
@end

@implementation FRCImageProcessor

- (FRCImageProcessor)initWithUsage:(int64_t)usage normalizationMode:(int64_t)mode
{
  v15.receiver = self;
  v15.super_class = FRCImageProcessor;
  v6 = [(FRCImageProcessor *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_usage = usage;
    v6->_inputRotation = 0;
    FRCGetInputFrameSizeForUsage(usage, &v6->_width, &v6->_height);
    v8 = [[Normalization alloc] initWithMode:mode];
    normalization = v7->_normalization;
    v7->_normalization = v8;

    v10 = objc_alloc_init(FRCScaler);
    scaler = v7->_scaler;
    v7->_scaler = v10;

    [(FRCImageProcessor *)v7 allocateNormalizedBuffers];
    v12 = dispatch_semaphore_create(0);
    completionSemaphore = v7->_completionSemaphore;
    v7->_completionSemaphore = v12;
  }

  return v7;
}

- (void)dealloc
{
  [(FRCImageProcessor *)self releaseNormalizedBuffers];
  if (self->_rgbaBuffersAllocated)
  {
    CVPixelBufferRelease(self->_rgbaFirst);
    CVPixelBufferRelease(self->_rgbaSecond);
    self->_rgbaBuffersAllocated = 0;
  }

  denormalizedBufferPool = self->_denormalizedBufferPool;
  if (denormalizedBufferPool)
  {
    CFRelease(denormalizedBufferPool);
    self->_denormalizedBufferPool = 0;
  }

  self->_rgbaPixelFormat = 0;
  v4.receiver = self;
  v4.super_class = FRCImageProcessor;
  [(FRCImageProcessor *)&v4 dealloc];
}

- (void)allocateNormalizedBuffers
{
  v3 = 0;
  v4 = 0;
  FRCGetInputFrameSizeForUsage(self->_usage, &v4, &v3);
  if (!self->_normalizedFirst)
  {
    self->_normalizedFirst = createPixelBuffer(v4, 3 * v3, 0x4C303068u, 0);
  }

  if (!self->_normalizedSecond)
  {
    self->_normalizedSecond = createPixelBuffer(v4, 3 * v3, 0x4C303068u, 0);
  }
}

- (void)releaseNormalizedBuffers
{
  CVPixelBufferRelease(self->_normalizedFirst);
  CVPixelBufferRelease(self->_normalizedSecond);
  self->_normalizedFirst = 0;
  self->_normalizedSecond = 0;
}

- (void)allocteRGBABuffersForBuffer:(__CVBuffer *)buffer
{
  self->_rgbaPixelFormat = [(FRCImageProcessor *)self rgbaPixelFormatForBuffer:buffer useScaler:1];
  Width = CVPixelBufferGetWidth(buffer);
  v8 = Width;
  Height = CVPixelBufferGetHeight(buffer);
  v7 = Height;
  if (self->_inputScaling)
  {
    Width >>= 1;
    Height >>= 1;
    v7 = Height;
    v8 = Width;
  }

  if (Width < Height)
  {
    swapWidthAndHeight(&v8, &v7);
  }

  if (!self->_rgbaFirst)
  {
    self->_rgbaFirst = createPixelBuffer(v8, v7, self->_rgbaPixelFormat, 0);
  }

  if (!self->_rgbaSecond)
  {
    self->_rgbaSecond = createPixelBuffer(v8, v7, self->_rgbaPixelFormat, 0);
  }

  self->_rgbaBuffersAllocated = 1;
}

- (BOOL)shouldScaleBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  v9 = Width;
  Height = CVPixelBufferGetHeight(buffer);
  v8 = Height;
  if (CVPixelBufferGetPixelFormatType(buffer) == 1278226536)
  {
    Height /= 3uLL;
    v8 = Height;
  }

  if (Width < Height)
  {
    swapWidthAndHeight(&v9, &v8);
    Width = v9;
  }

  return self->_width < Width || self->_height < v8;
}

- (void)preProcessFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  kdebug_trace();
  if (!input)
  {
    *&self->_normalizedFirst = vextq_s8(*&self->_normalizedFirst, *&self->_normalizedFirst, 8uLL);
  }

  [(FRCImageProcessor *)self storeColorProperties:secondInput];
  PixelFormatType = CVPixelBufferGetPixelFormatType(secondInput);
  v10 = 0;
  if (PixelFormatType != 1882468912 && PixelFormatType != 1885745712)
  {
    v10 = isYUV420(secondInput);
  }

  self->_isYUV = isBufferYUV(secondInput);
  v11 = [(FRCImageProcessor *)self shouldScaleBuffer:secondInput];
  self->_inputScaling = v11;
  if (!self->_inputRotation && !v11 && (v10 || !self->_isYUV))
  {
    self->_useGPUOnlyForPreProcessing = 1;
    self->_rgbaFirst = input;
    self->_rgbaSecond = secondInput;
    self->_rgbaPixelFormat = [(FRCImageProcessor *)self rgbaPixelFormatForBuffer:secondInput useScaler:0];
    goto LABEL_16;
  }

  if (!self->_rgbaPixelFormat)
  {
    [(FRCImageProcessor *)self allocteRGBABuffersForBuffer:secondInput];
    if (input)
    {
      goto LABEL_12;
    }

LABEL_14:
    v13 = *&self->_rgbaFirst;
    *&self->_rgbaFirst = vextq_s8(v13, v13, 8uLL);
    rgbaSecond = v13.i64[0];
    goto LABEL_15;
  }

  if (!input)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(FRCScaler *)self->_scaler downScaleFrameSource:input destination:self->_rgbaFirst rotate:self->_inputRotation waitForCompletion:completionCopy];
  rgbaSecond = self->_rgbaSecond;
LABEL_15:
  [(FRCScaler *)self->_scaler downScaleFrameSource:secondInput destination:rgbaSecond rotate:self->_inputRotation waitForCompletion:completionCopy];
LABEL_16:
  normalization = self->_normalization;
  if (input)
  {
    rgbaFirst = self->_rgbaFirst;
    normalizedFirst = self->_normalizedFirst;
  }

  else
  {
    rgbaFirst = 0;
    normalizedFirst = 0;
  }

  v17 = self->_rgbaSecond;
  normalizedSecond = self->_normalizedSecond;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__FRCImageProcessor_preProcessFirstInput_secondInput_waitForCompletion___block_invoke;
  v19[3] = &unk_278FEA588;
  v19[4] = self;
  [(Normalization *)normalization normalizeFramesFirstInput:rgbaFirst secondInput:v17 firstOutput:normalizedFirst secondOutput:normalizedSecond callback:v19];
}

uint64_t __72__FRCImageProcessor_preProcessFirstInput_secondInput_waitForCompletion___block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  *(v2 + 92) = *(a2 + 12);
  *(v2 + 80) = v3;
  NSLog(&cfstr_MeanFStdFFirst.isa, *a2, 1.0 / *(a2 + 1), *(a2 + 2), *(a2 + 4), *(a2 + 3), *(a2 + 5));

  return kdebug_trace();
}

- (void)storeColorProperties:(__CVBuffer *)properties
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CC4C00];
  v6 = CMGetAttachment(properties, *MEMORY[0x277CC4C00], 0);
  v7 = *MEMORY[0x277CC4CC0];
  v8 = CMGetAttachment(properties, *MEMORY[0x277CC4CC0], 0);
  v9 = *MEMORY[0x277CC4D10];
  v10 = CMGetAttachment(properties, *MEMORY[0x277CC4D10], 0);
  if (v6)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v10 == 0)
  {
    colorProperties = self->_colorProperties;
    self->_colorProperties = 0;
  }

  else
  {
    v16[0] = v5;
    v16[1] = v7;
    v17[0] = v6;
    v17[1] = v8;
    v16[2] = v9;
    v17[2] = v10;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v15 = self->_colorProperties;
    self->_colorProperties = v14;
  }
}

- (BOOL)shouldCropOutputFrame:(__CVBuffer *)frame
{
  Width = CVPixelBufferGetWidth(frame);
  v8 = Width;
  Height = CVPixelBufferGetHeight(frame);
  if (Width < Height)
  {
    swapWidthAndHeight(&v8, &Height);
    Width = v8;
  }

  return Width < self->_width || Height < self->_height;
}

- (void)postProcessNormalizedFrame:(__CVBuffer *)frame output:(__CVBuffer *)output timeScale:(float)scale waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  if (self->_inputRotation)
  {
    inputScaling = 1;
  }

  else
  {
    inputScaling = self->_inputScaling;
  }

  v12 = inputScaling;
  colorProperties = self->_colorProperties;
  if (colorProperties)
  {
    CMSetAttachments(output, colorProperties, 1u);
  }

  Width = CVPixelBufferGetWidth(output);
  Height = CVPixelBufferGetHeight(output);
  v16 = ((Width | Height) & 1) == 0;
  if ((Width | Height))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [FRCImageProcessor postProcessNormalizedFrame:Height output:? timeScale:? waitForCompletion:?];
    }

    pixelBufferOut = 0;
    p_useGPUOnlyForPreProcessing = &self->_useGPUOnlyForPreProcessing;
  }

  else
  {
    pixelBufferOut = 0;
    p_useGPUOnlyForPreProcessing = &self->_useGPUOnlyForPreProcessing;
    if (self->_useGPUOnlyForPreProcessing)
    {
      pixelBufferOut = output;
      goto LABEL_17;
    }
  }

  denormalizedBufferPool = self->_denormalizedBufferPool;
  if (!denormalizedBufferPool)
  {
    denormalizedBufferPool = createPixelBufferPool(self->_width, self->_height, self->_rgbaPixelFormat, 0);
    self->_denormalizedBufferPool = denormalizedBufferPool;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, denormalizedBufferPool, &pixelBufferOut);
  v19 = self->_colorProperties;
  if (v19 && *p_useGPUOnlyForPreProcessing)
  {
    CMSetAttachments(pixelBufferOut, v19, 1u);
  }

LABEL_17:
  normalization = self->_normalization;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__FRCImageProcessor_postProcessNormalizedFrame_output_timeScale_waitForCompletion___block_invoke;
  v21[3] = &unk_278FEA5B0;
  v22 = v12;
  v23 = completionCopy;
  v21[4] = self;
  [(Normalization *)normalization denormalizeFrame:frame destination:pixelBufferOut params:&self->_normalizationParams timeScale:v21 callback:COERCE_DOUBLE(LODWORD(scale))];
  if (v16 && self->_useGPUOnlyForPreProcessing)
  {
    if (completionCopy)
    {
      dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    [(FRCScaler *)self->_scaler upScaleAndCropFrameSource:pixelBufferOut destination:output upscale:self->_inputScaling rotate:FRCGetReverseRotation(self->_inputRotation) waitForCompletion:completionCopy];
    CVPixelBufferRelease(pixelBufferOut);
  }
}

intptr_t __83__FRCImageProcessor_postProcessNormalizedFrame_output_timeScale_waitForCompletion___block_invoke(intptr_t result)
{
  if ((*(result + 40) & 1) == 0 && *(result + 41) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 112));
  }

  return result;
}

- (unsigned)rgbaPixelFormatForBuffer:(__CVBuffer *)buffer useScaler:(BOOL)scaler
{
  scalerCopy = scaler;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  intValue = [v8 intValue];

  v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = CVPixelBufferGetPixelFormatType(buffer);
  }

  else
  {
    if (scalerCopy)
    {
      v13 = 1999843442;
    }

    else
    {
      v13 = 1815162994;
    }

    if (intValue == 10)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1380411457;
    }

    if (intValue == 8)
    {
      v12 = 1111970369;
    }

    else
    {
      v12 = v14;
    }
  }

  return v12;
}

- (void)postProcessNormalizedFrame:(uint64_t)a1 output:(uint64_t)a2 timeScale:waitForCompletion:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_debug_impl(&dword_24A8C8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Output Buffer not aligned %ld x %ld", &v2, 0x16u);
}

@end