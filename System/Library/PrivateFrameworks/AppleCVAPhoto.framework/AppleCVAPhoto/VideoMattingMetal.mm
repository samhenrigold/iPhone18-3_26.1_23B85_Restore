@interface VideoMattingMetal
+ (id)textureFromCacheUsingPixelBuffer:(__CVBuffer *)buffer textureDescriptor:(id)descriptor plane:(unint64_t)plane textureCache:(__CVMetalTextureCache *)cache;
+ (void)decomposeYuvPixelBuffer:(__CVBuffer *)buffer yTexture:(id *)texture uvTexture:(id *)uvTexture textureCache:(__CVMetalTextureCache *)cache;
+ (void)saveTexture:(id)texture toFilename:(id)filename;
- (CGRect)primaryCaptureRect;
- (VideoMattingMetal)initWithStaticParams:(const VideoMattingStaticParams *)params renderingDisparityUpdateRate:(float)rate renderingDisparityBlurRadius:(float)radius renderingLensFocalLength_mm:(float)length_mm useTemporalConfidence:(BOOL)confidence metalContext:(void *)context error:(id *)error;
- (__CVBuffer)createCVBufferWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format;
- (id)disparityPostprocessingWithCanonicalDisparity:(const __CVBuffer *)disparity color:(const __CVBuffer *)color postProcessedDisparity:(__CVBuffer *)processedDisparity staticParams:(const VideoMattingStaticParams *)params dynamicParams:(const void *)dynamicParams postProcessingParams:(const VideoPostprocessingParams *)processingParams facesArray:(id)array faceModel:(id)self0 isFinalStage:(BOOL)self1 callbackQueue:(id)self2 callback:(id)self3;
- (id)getPTTextureFromLuma:(id)luma chroma:(id)chroma;
- (pair<float,)blurRadiusAndStdAtInfinityForFocalLength:(float)length focusCanonicalDisparity:(float)disparity fNumber:(float)number xResolution:(float)resolution useNewCoCFormula:(BOOL)formula;
- (void)alphaMattingWithPostprocessedDisparity:(const __CVBuffer *)disparity source:(const __CVBuffer *)source inSegmentation:(__CVBuffer *)segmentation alpha:(__CVBuffer *)alpha staticParams:(const VideoMattingStaticParams *)params dynamicParams:(const void *)dynamicParams usePostprocessedDisparity:(BOOL)postprocessedDisparity isFinalStage:(BOOL)self0 dilateForegroundMask:(BOOL)self1 properties:(id)self2 callbackQueue:(id)self3 callback:(id)self4;
- (void)cropFrame:(const __CVBuffer *)frame destination:(__CVBuffer *)destination rect:(CGRect)rect;
- (void)dealloc;
- (void)downsampleWithHWScalerSource:(__CVBuffer *)source destination:(__CVBuffer *)destination;
- (void)encode420Bilinear2xDownsamplingToCommandBuffer:(id)buffer source:(__CVBuffer *)source destination:(__CVBuffer *)destination;
- (void)encode420HybridDownsamplingToCommandBuffer:(id)buffer source:(__CVBuffer *)source destination:(__CVBuffer *)destination;
- (void)encode420ScalingByMPSToCommandBuffer:(id)buffer source:(__CVBuffer *)source destination:(__CVBuffer *)destination;
- (void)encodeBackgroundFillToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputMask:(id)mask outputDisparity:(id)outputDisparity;
- (void)encodeColorSimL1ToCommandBuffer:(id)buffer prevSource:(id)source currSource:(id)currSource destination:(id)destination;
- (void)encodeColorSimToCommandBuffer:(id)buffer prevSource:(id)source currSource:(id)currSource destination:(id)destination similarityScaleFactor:(float)factor;
- (void)encodeConfidenceMaskToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputDisparityNoInvalid:(id)invalid outputConfidenceMask:(id)mask;
- (void)encodeCopyTextureToCommandBuffer:(id)buffer inTexture:(id)texture outTexture:(id)outTexture;
- (void)encodeDiffusionMapToCommandBuffer:(id)buffer color:(id)color diffusionMap:(id)map;
- (void)encodeDisparityCleanupToCommandBuffer:(id)buffer prevDisparity:(id)disparity currDisparity:(id)currDisparity colorSim:(id)sim cleanDisparity:(id)cleanDisparity;
- (void)encodeDisparityDecimateToCommandBuffer:(id)buffer canonicalDisparity:(__CVBuffer *)disparity disparityOut:(id)out;
- (void)encodeDisparityMasksToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputSegmentation:(id)segmentation useSegmentationOnly:(BOOL)only outputForegroundMask:(id)mask outputIsForeground:(id)foreground disparityMin:(float)min focusDisparity:(float)self0 hardness:(float)self1 minDistToDeweight:(float)self2 unconfidentWeight:(float)self3;
- (void)encodeDisparitySmoothingToCommandBuffer:(id)buffer disparity:(id)disparity;
- (void)encodeDisparityTemporalFilterToCommandBuffer:(id)buffer currentDisparity:(id)disparity previousDisparity:(id)previousDisparity currConfidence:(id)confidence prevSmoothConfidence:(id)smoothConfidence colorSim:(id)sim outPrevSmoothConfidence:(id)prevSmoothConfidence outTemporallyFilteredDisparity:(id)self0 disparityFallbackToInvalid:(BOOL)self1 disparityFilterUpdateRate:(float)self2 minimumConfidenceToKeepDisparity:(float)self3 maximumSimilarityToKeepDisparity:(float)self4;
- (void)encodeDomainTransformToCommandBuffer:(id)buffer inputDiffusionMap:(id)map inputDistanceFromKnownDisparity:(id)disparity outputDomainTransformX:(id)x outputDomainTransformY:(id)y;
- (void)encodeEdgeAwareFillToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputDomainTransformX:(id)x inputDomainTransformY:(id)y outputDisparity:(id)outputDisparity;
- (void)encodeFillAlphaToCommandBuffer:(id)buffer alpha:(id)alpha;
- (void)encodeFillBackgroundDisparityToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputFacemask:(id)facemask outputDistanceFromKnownDisparity:(id)knownDisparity outputDisparity:(id)outputDisparity backgroundDisparityValue:(float)value minimumDistanceFromValidDisparity:(float)validDisparity;
- (void)encodeFilterCoefficientToBuffer:(id)buffer inputCoeff:(id)coeff prevCoeff:(id)prevCoeff outCoeff:(id)outCoeff inColorSim:(id)sim updateRate:(float)rate;
- (void)encodeForegroundMaskToBuffer:(id)buffer disparity:(id)disparity inSegmentation:(id)segmentation useSegmentationOnly:(BOOL)only weight:(id)weight foregroundMask:(id)mask erodedForegroundMask:(id)foregroundMask disparityMin:(float)self0 focusDisparity:(float)self1 hardness:(float)self2 minDistToDeweight:(float)self3 unconfidentWeight:(float)self4 dilateForegroundMask:(BOOL)self5 foregroundMaskDilationRadius:(float)self6 properties:(id)self7 applyRotation:(BOOL)self8;
- (void)encodeGuidedFilterWeightToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputSegmentation:(id)segmentation useSegmentationOnly:(BOOL)only inputForegroundDistance:(id)distance outputForegroundMask:(id)mask outputWeight:(id)weight minDistToDeweight:(float)self0 unconfidentWeight:(float)self1 dilateForegroundMask:(BOOL)self2 foregroundMaskDilationRadius:(float)self3;
- (void)encodeInvalidDisparityMaskToCommandBuffer:(id)buffer inputDisparity:(id)disparity outputMask:(id)mask;
- (void)encodeOutputDisparityToCommandBuffer:(id)buffer inputDisparity:(id)disparity outputDisparity:(id)outputDisparity;
- (void)encodeRotateAndFitIntoRectWithCommandBuffer:(id)buffer inTexture:(id)texture outTexture:(id)outTexture rotateClockwise:(BOOL)clockwise;
- (void)encodeScaleSourceToCommandBuffer:(id)buffer source:(__CVBuffer *)source targetWidth:(unint64_t)width targetHeight:(unint64_t)height;
- (void)encodeSimpleConfidenceToCommandBuffer:(id)buffer disparity:(id)disparity outConfidence:(id)confidence;
- (void)encodeUpdateConfidenceAndLastValidDisparityToCommandBuffer:(id)buffer disparity:(id)disparity prevSmoothConfidence:(id)confidence lastValidDisparityIn:(id)in lastValidDisparityOut:(id)out currConfidenceOut:(id)confidenceOut useTemporalConfidence:(BOOL)temporalConfidence;
- (void)initSourceTexture:(__CVBuffer *)texture;
- (void)prewarmGuidedFilter:(id)filter device:(id)device commandBuffer:(id)buffer width:(int)width height:(int)height width2:(int)width2 height2:(int)height2;
- (void)renderContinuousWithSource:(const __CVBuffer *)source segmentationPixelBuffer:(const __CVBuffer *)buffer alpha:(const __CVBuffer *)alpha canonicalDisparity:(const __CVBuffer *)disparity disparityInFocus:(float)focus focusCanonicalDisparity:(float)canonicalDisparity fNumber:(float)number infConvolutionScale:(float)self0 noiseBits:(float)self1 disparityUpdateRate:(float)self2 focusThresholdHardness:(float)self3 cubeIntensity:(float)self4 usePostprocessedDisparity:(BOOL)self5 dstColor:(__CVBuffer *)self6 isFinalStage:(BOOL)self7 properties:(id)self8 callbackQueue:(id)self9 withCallback:(id)callback;
- (void)renderStageLightWithSource:(const __CVBuffer *)source alpha:(const __CVBuffer *)alpha canonicalDisparity:(const __CVBuffer *)disparity dstColor:(__CVBuffer *)color blackBackgroundIntensity:(float)intensity vignetteIntensity:(float)vignetteIntensity isFinalStage:(BOOL)stage callbackQueue:(id)self0 withCallback:(id)self1;
- (void)segmentationAverage:(__CVBuffer *)average callbackQueue:(id)queue callback:(id)callback;
- (void)setAlphaLut:(float)lut gammaExponent:(float)exponent;
- (void)setBgLut:(id)lut;
- (void)setFgLut:(id)lut;
- (void)setPortraitForegroundCubeData:(id)data backgroundCubeData:(id)cubeData;
- (void)setStageLightProxyCubeData:(id)data cubeData:(id)cubeData;
- (void)updateRenderRequestwithPerFrameMetadata:(id)metadata properties:(id)properties;
@end

@implementation VideoMattingMetal

- (CGRect)primaryCaptureRect
{
  objc_copyStruct(v6, &self->_primaryCaptureRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)encodeFillAlphaToCommandBuffer:(id)buffer alpha:(id)alpha
{
  alphaCopy = alpha;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_alphaFillKernel"];
  [computeCommandEncoder setComputePipelineState:self->_alphaFillKernel];
  [computeCommandEncoder setTexture:alphaCopy atIndex:0];
  v10[0] = ([alphaCopy width] + 15) >> 4;
  v10[1] = ([alphaCopy height] + 15) >> 4;
  v10[2] = 1;
  v8 = vdupq_n_s64(0x10uLL);
  v9 = 1;
  [computeCommandEncoder dispatchThreadgroups:v10 threadsPerThreadgroup:&v8];
  [computeCommandEncoder endEncoding];
}

- (void)encode420ScalingByMPSToCommandBuffer:(id)buffer source:(__CVBuffer *)source destination:(__CVBuffer *)destination
{
  bufferCopy = buffer;
  Width = CVPixelBufferGetWidth(source);
  Height = CVPixelBufferGetHeight(source);
  v11 = CVPixelBufferGetWidth(destination);
  v12 = CVPixelBufferGetHeight(destination);
  v13 = v12;
  if (v11 <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3238 description:{@"targetWidth not in [2, inf"}]);

    if (v13 > 1)
    {
      goto LABEL_3;
    }
  }

  else if (v12 > 1)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3239 description:{@"targetHeight not in [2, inf"}]);

LABEL_3:
  IOSurface = CVPixelBufferGetIOSurface(source);
  v15 = CVPixelBufferGetIOSurface(destination);
  v27 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  v17 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v27 iosurface:IOSurface plane:0];
  v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v16 iosurface:IOSurface plane:1];
  v19 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v11 height:v13 mipmapped:0];
  v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v11 >> 1 height:v13 >> 1 mipmapped:0];
  [v19 setUsage:3];
  [v20 setUsage:3];
  v21 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v19 iosurface:v15 plane:0];
  v22 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v20 iosurface:v15 plane:1];
  scaler = [(CVAFilterHybridResampling *)self->_hybridResampler scaler];
  [scaler encodeToCommandBuffer:bufferCopy sourceTexture:v17 destinationTexture:v21];

  scaler2 = [(CVAFilterHybridResampling *)self->_hybridResampler scaler];
  [scaler2 encodeToCommandBuffer:bufferCopy sourceTexture:v18 destinationTexture:v22];
}

- (void)encode420Bilinear2xDownsamplingToCommandBuffer:(id)buffer source:(__CVBuffer *)source destination:(__CVBuffer *)destination
{
  bufferCopy = buffer;
  Width = CVPixelBufferGetWidth(source);
  Height = CVPixelBufferGetHeight(source);
  IOSurface = CVPixelBufferGetIOSurface(source);
  v11 = CVPixelBufferGetIOSurface(destination);
  [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  v12 = Width >> 1;
  v21 = v13 = Height >> 1;
  v25 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  v24 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v21 iosurface:IOSurface plane:0];
  v22 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v25 iosurface:IOSurface plane:1];
  v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width >> 1 height:Height >> 1 mipmapped:0];
  v15 = Width >> 2;
  v16 = Height >> 2;
  v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v15 height:Height >> 2 mipmapped:0];
  [v14 setUsage:3];
  [v17 setUsage:3];
  v23 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14 iosurface:v11 plane:0];
  v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17 iosurface:v11 plane:1];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_halfDownSampler"];
  [computeCommandEncoder setComputePipelineState:self->_halfDownSampler];
  [computeCommandEncoder setTexture:v24 atIndex:0];
  [computeCommandEncoder setTexture:v23 atIndex:1];
  v29 = (v12 + 15) >> 4;
  v30 = (v13 + 15) >> 4;
  v31 = 1;
  v27 = vdupq_n_s64(0x10uLL);
  v28 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_halfDownSampler"];
  [computeCommandEncoder2 setComputePipelineState:self->_halfDownSampler];
  [computeCommandEncoder2 setTexture:v22 atIndex:0];
  [computeCommandEncoder2 setTexture:v18 atIndex:1];
  v29 = (v15 + 15) >> 4;
  v30 = (v16 + 15) >> 4;
  v31 = 1;
  v27 = vdupq_n_s64(0x10uLL);
  v28 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [computeCommandEncoder2 endEncoding];
}

- (void)cropFrame:(const __CVBuffer *)frame destination:(__CVBuffer *)destination rect:(CGRect)rect
{
  CVPixelBufferGetWidth(destination);
  CVPixelBufferGetHeight(destination);
  CVPixelBufferGetIOSurface(frame);
  CVPixelBufferGetIOSurface(destination);
  IOSurfaceAcceleratorTransformSurface();
}

- (void)downsampleWithHWScalerSource:(__CVBuffer *)source destination:(__CVBuffer *)destination
{
  if (!self->_yuvSourceDownsampledBuffer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3060 description:@"Relighting code should be rewritten to support different scale!"];

    v9 = CVPixelBufferGetWidth(source) >> 2;
    v10 = CVPixelBufferGetHeight(source) >> 2;
    PixelFormatType = CVPixelBufferGetPixelFormatType(source);
    self->_yuvSourceDownsampledBuffer = [(VideoMattingMetal *)self createCVBufferWithWidth:v9 height:v10 format:PixelFormatType];
    if (PixelFormatType != 875704422)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3068 description:@"Unexpected source format in downsampleWithHWScalerSource()!"];
    }

    v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:500 width:v9 height:v10 mipmapped:0];
    [v12 setUsage:3];
    v13 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:self->_yuvSourceDownsampledBuffer textureDescriptor:v12 plane:0 textureCache:self->_textureCache];
    yuvSourceDownsampledTexture = self->_yuvSourceDownsampledTexture;
    self->_yuvSourceDownsampledTexture = v13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69A85B8], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69A8508], v16);
  CVPixelBufferGetIOSurface(source);
  CVPixelBufferGetIOSurface(self->_yuvSourceDownsampledBuffer);
  IOSurfaceAcceleratorTransformSurface();
  CVPixelBufferGetIOSurface(self->_yuvSourceDownsampledBuffer);
  CVPixelBufferGetIOSurface(destination);
  IOSurfaceAcceleratorTransformSurface();
  CFRelease(Mutable);
}

- (void)encode420HybridDownsamplingToCommandBuffer:(id)buffer source:(__CVBuffer *)source destination:(__CVBuffer *)destination
{
  bufferCopy = buffer;
  yuvSourceDownsampledBuffer = self->_yuvSourceDownsampledBuffer;
  v23 = bufferCopy;
  if (!yuvSourceDownsampledBuffer)
  {
    Width = CVPixelBufferGetWidth(source);
    Height = CVPixelBufferGetHeight(source);
    PixelFormatType = CVPixelBufferGetPixelFormatType(source);
    v14 = Width >> 1;
    v15 = Height >> 1;
    self->_yuvSourceDownsampledBuffer = [(VideoMattingMetal *)self createCVBufferWithWidth:v14 height:v15 format:PixelFormatType];
    v16 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
    v18 = [v16 containsObject:v17];

    if ((v18 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3018 description:@"Unexpected source format in encode420HybridDownsamplingToCommandBuffer()!"];
    }

    v19 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:500 width:v14 height:v15 mipmapped:0];
    [v19 setUsage:1];
    v20 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:self->_yuvSourceDownsampledBuffer textureDescriptor:v19 plane:0 textureCache:self->_textureCache];
    yuvSourceDownsampledTexture = self->_yuvSourceDownsampledTexture;
    self->_yuvSourceDownsampledTexture = v20;

    yuvSourceDownsampledBuffer = self->_yuvSourceDownsampledBuffer;
    bufferCopy = v23;
  }

  [(VideoMattingMetal *)self encode420Bilinear2xDownsamplingToCommandBuffer:bufferCopy source:source destination:yuvSourceDownsampledBuffer];
  [(VideoMattingMetal *)self encode420ScalingByMPSToCommandBuffer:v23 source:self->_yuvSourceDownsampledBuffer destination:destination];
}

- (void)renderStageLightWithSource:(const __CVBuffer *)source alpha:(const __CVBuffer *)alpha canonicalDisparity:(const __CVBuffer *)disparity dstColor:(__CVBuffer *)color blackBackgroundIntensity:(float)intensity vignetteIntensity:(float)vignetteIntensity isFinalStage:(BOOL)stage callbackQueue:(id)self0 withCallback:(id)self1
{
  stageCopy = stage;
  queueCopy = queue;
  callbackCopy = callback;
  if (intensity < 0.0 || intensity > 1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2881 description:{@"blackBackgroundIntensity not in [0, 1]"}];
  }

  v42[0] = 0;
  v41 = 0;
  v21 = sub_1DED6F954(source);
  v22 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:source textureDescriptor:v21 plane:0 textureCache:self->_textureCache];

  v23 = sub_1DED6F954(alpha);
  v24 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:alpha textureDescriptor:v23 plane:0 textureCache:self->_textureCache];

  CVPixelBufferRetain(source);
  CVPixelBufferRetain(alpha);
  CVPixelBufferRetain(disparity);
  CVPixelBufferRetain(color);
  [VideoMattingMetal decomposeYuvPixelBuffer:color yTexture:v42 uvTexture:&v41 textureCache:self->_textureCache];
  [v42[0] setLabel:@"dstColorTex_Y"];
  [v41 setLabel:@"dstColorTex_uv"];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"renderContinuousWithSource"];
  *&v26 = intensity;
  *&v27 = vignetteIntensity;
  [(CVAFilterRenderStagelight *)self->_stagelightFilter encodeToCommandBuffer:commandBuffer srcColorTex:v22 srcAlphaTex:v24 dstYTex:v42[0] dstUVTex:v41 stageLightProxyLut:self->_stageLightProxyLut stageLightLut:v26 blackBackgroundIntensity:v27 vignetteIntensity:self->_stageLightLut];
  dispatch_semaphore_wait(self->_renderingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1DED62EC4;
  v33[3] = &unk_1E869B040;
  sourceCopy = source;
  alphaCopy = alpha;
  disparityCopy = disparity;
  v28 = queueCopy;
  v34 = v28;
  selfCopy = self;
  v29 = callbackCopy;
  v36 = v29;
  colorCopy = color;
  [commandBuffer addCompletedHandler:v33];
  [commandBuffer commit];

  self->_lastCommittedCommand = 3;
  if (stageCopy)
  {
    ++self->_frameIndex;
  }
}

- (void)renderContinuousWithSource:(const __CVBuffer *)source segmentationPixelBuffer:(const __CVBuffer *)buffer alpha:(const __CVBuffer *)alpha canonicalDisparity:(const __CVBuffer *)disparity disparityInFocus:(float)focus focusCanonicalDisparity:(float)canonicalDisparity fNumber:(float)number infConvolutionScale:(float)self0 noiseBits:(float)self1 disparityUpdateRate:(float)self2 focusThresholdHardness:(float)self3 cubeIntensity:(float)self4 usePostprocessedDisparity:(BOOL)self5 dstColor:(__CVBuffer *)self6 isFinalStage:(BOOL)self7 properties:(id)self8 callbackQueue:(id)self9 withCallback:(id)callback
{
  v127[5] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  queueCopy = queue;
  callbackCopy = callback;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  postprocessedDisparityCopy = postprocessedDisparity;
  [commandBuffer setLabel:@"renderContinuousWithSource"];
  v118 = 0;
  v119 = 0;
  [VideoMattingMetal decomposeYuvPixelBuffer:color yTexture:&v119 uvTexture:&v118 textureCache:self->_textureCache];
  [v119 setLabel:@"dstColorTextureY"];
  [v118 setLabel:@"dstColorTextureUV"];
  CVPixelBufferRetain(source);
  CVPixelBufferRetain(alpha);
  CVPixelBufferRetain(disparity);
  CVPixelBufferRetain(color);
  disparityCopy = disparity;
  pixelBuffer = source;
  if (self->_sdofRenderingHasForegroundBlur)
  {
    if (!self->_renderStateIsConfigured)
    {
      v122 = 0;
      v123 = &v122;
      v124 = 0x2050000000;
      v35 = qword_1ECDE0FA0;
      v125 = qword_1ECDE0FA0;
      if (!qword_1ECDE0FA0)
      {
        *__p = MEMORY[0x1E69E9820];
        *&__p[8] = 3221225472;
        *&__p[16] = sub_1DED5B864;
        *&__p[24] = &unk_1E869AD70;
        v121 = &v122;
        sub_1DED5B864(__p);
        v35 = v123[3];
      }

      v36 = v35;
      _Block_object_dispose(&v122, 8);
      v37 = [[v36 alloc] initWithDevice:self->_device version:objc_msgSend(sub_1DED5B5F4() colorSize:"latestVersion") disparitySize:{self->_width, self->_height, -[MTLTexture width](self->_disparityInScreenAspectRatio, "width"), -[MTLTexture height](self->_disparityInScreenAspectRatio, "height")}];
      [v37 setVerbose:0];
      v126[0] = &unk_1F5A097D8;
      v126[1] = &unk_1F5A097F0;
      v127[0] = MEMORY[0x1E695E110];
      v127[1] = &unk_1F5A09F10;
      v126[2] = &unk_1F5A09808;
      v126[3] = &unk_1F5A09820;
      v127[2] = &unk_1F5A09F20;
      v127[3] = &unk_1F5A09F00;
      deadzoneInCinematic = self->_deadzoneInCinematic;
      v126[4] = &unk_1F5A09838;
      if (deadzoneInCinematic)
      {
        v39 = MEMORY[0x1E695E118];
      }

      else
      {
        v39 = MEMORY[0x1E695E110];
      }

      v127[4] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:5];
      [v37 setOptions:v40];

      v41 = [objc_alloc(sub_1DED5B5F4()) initWithDescriptor:v37];
      ptRenderPipeline = self->_ptRenderPipeline;
      self->_ptRenderPipeline = v41;

      v43 = [(PTRenderPipeline *)self->_ptRenderPipeline createRenderStateWithQuality:0];
      ptRenderState = self->_ptRenderState;
      self->_ptRenderState = v43;

      v122 = 0;
      v123 = &v122;
      v124 = 0x2050000000;
      v45 = qword_1ECDE0F98;
      v125 = qword_1ECDE0F98;
      if (!qword_1ECDE0F98)
      {
        *__p = MEMORY[0x1E69E9820];
        *&__p[8] = 3221225472;
        *&__p[16] = sub_1DED5B79C;
        *&__p[24] = &unk_1E869AD70;
        v121 = &v122;
        sub_1DED5B79C(__p);
        v45 = v123[3];
      }

      v46 = v45;
      _Block_object_dispose(&v122, 8);
      v47 = [[v46 alloc] init];
      ptRenderRequest = self->_ptRenderRequest;
      self->_ptRenderRequest = v47;

      [(PTRenderState *)self->_ptRenderState setSourceColorBitDepth:8];
      v122 = 0;
      v123 = &v122;
      v124 = 0x2050000000;
      v49 = qword_1ECDE0F88;
      v125 = qword_1ECDE0F88;
      if (!qword_1ECDE0F88)
      {
        *__p = MEMORY[0x1E69E9820];
        *&__p[8] = 3221225472;
        *&__p[16] = sub_1DED5B92C;
        *&__p[24] = &unk_1E869AD70;
        v121 = &v122;
        sub_1DED5B92C(__p);
        v49 = v123[3];
      }

      v50 = v49;
      _Block_object_dispose(&v122, 8);
      v51 = v50;
      if (qword_1ECDE10A0 != -1)
      {
        dispatch_once(&qword_1ECDE10A0, &unk_1F59F9F90);
      }

      v52 = qword_1ECDE10A8;
      -[PTRenderState setHwModelID:](self->_ptRenderState, "setHwModelID:", [v50 hwModelIDFromFigModelSpecificName:qword_1ECDE10A8]);

      self->_renderStateIsConfigured = 1;
    }

    v108 = [(VideoMattingMetal *)self getPTTextureFromLuma:v119 chroma:v118];
    v122 = 0;
    v117 = 0;
    [VideoMattingMetal decomposeYuvPixelBuffer:source yTexture:&v122 uvTexture:&v117 textureCache:self->_textureCache];
    blitCommandEncoder = [commandBuffer blitCommandEncoder];
    [blitCommandEncoder copyFromTexture:v122 toTexture:v119];
    [blitCommandEncoder copyFromTexture:v117 toTexture:v118];
    [blitCommandEncoder endEncoding];
    v54 = [(VideoMattingMetal *)self getPTTextureFromLuma:v122 chroma:v117];
    v55 = sub_1DED6F954(disparity);
    colorCopy = color;
    v57 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:disparity textureDescriptor:v55 plane:0 textureCache:self->_textureCache];
    [(VideoMattingMetal *)self encodeRotateAndFitIntoRectWithCommandBuffer:commandBuffer inTexture:v57 outTexture:self->_disparityInScreenAspectRatio rotateClockwise:0];
    origin = self->_primaryCaptureRect.origin;
    size = self->_primaryCaptureRect.size;
    [(VideoMattingMetal *)self updateRenderRequestwithPerFrameMetadata:self->_sbufMetadata properties:propertiesCopy];
    [(PTRenderRequest *)self->_ptRenderRequest setRenderState:self->_ptRenderState];
    [(PTRenderRequest *)self->_ptRenderRequest setSourceColor:v54];
    [(PTRenderRequest *)self->_ptRenderRequest setSourceDisparity:self->_disparityInScreenAspectRatio];
    [(PTRenderRequest *)self->_ptRenderRequest setDestinationColor:v108];
    *&v58 = number;
    [(PTRenderRequest *)self->_ptRenderRequest setFNumber:v58];
    *&v59 = canonicalDisparity;
    [(PTRenderRequest *)self->_ptRenderRequest setFocusDisparity:v59];
    v60 = self->_ptRenderRequest;
    *__p = vcvtq_u64_f64(origin);
    *&__p[16] = vcvtq_u64_f64(size);
    [(PTRenderRequest *)v60 setScissorRect:__p];
    [(PTRenderRequest *)self->_ptRenderRequest setColorCube:self->_fgColorLut];
    [(PTRenderPipeline *)self->_ptRenderPipeline encodeRenderTo:commandBuffer withRenderRequest:self->_ptRenderRequest];

    goto LABEL_49;
  }

  if ((atomic_load_explicit(&qword_1ECDE1630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1630))
  {
    v96 = +[CVAPreferenceManager defaults];
    v97 = [v96 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE1628 = v97;
    __cxa_guard_release(&qword_1ECDE1630);
  }

  if (byte_1ECDE1628 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"fNumber = %f", number];
  }

  self->_infConvolutionScale = scale;
  lastCommittedCommand = self->_lastCommittedCommand;
  if ((lastCommittedCommand - 3) > 0xFFFFFFFD)
  {
    if (lastCommittedCommand != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2726 description:{@"renderContinuousWithSource called in the wrong state: %d not in {%d, %d}", self->_lastCommittedCommand, 1, 2}];

  if (self->_lastCommittedCommand == 2)
  {
LABEL_21:
    NSLog(&cfstr_Rendercontinuo_1.isa);
  }

LABEL_22:
  sub_1DED6FBF4(__p, source, alpha, self->_device);
  v62 = *&__p[8];
  v108 = *__p;
  Width = CVPixelBufferGetWidth(source);
  Height = CVPixelBufferGetHeight(source);
  advancedBuffer = [(CVAPhotoMTLRingBuffer *)self->_disparityConfig advancedBuffer];
  v66 = advancedBuffer;
  contents = [advancedBuffer contents];

  *&v68 = rate;
  [(VideoMattingMetal *)self setRenderingDisparityUpdateRate:v68];
  *contents = canonicalDisparity;
  *(contents + 4) = canonicalDisparity * 0.5;
  [(VideoMattingMetal *)self renderingDisparityUpdateRate];
  colorCopy2 = color;
  *(contents + 8) = v69;
  v70 = 1.0 / fmaxf(canonicalDisparity, 0.001);
  *(contents + 20) = focus;
  *(contents + 24) = v70;
  *(contents + 28) = v70 + v70;
  *(contents + 32) = self->_frameIndex == 0;
  v71 = 1.0 / fmaxf((canonicalDisparity - focus) * hardness, 0.001);
  *(contents + 12) = v71;
  *(contents + 16) = canonicalDisparity - (1.0 / v71);
  if ((atomic_load_explicit(&qword_1ECDE1640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1640))
  {
    qword_1ECDE1638 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1640);
  }

  if ((byte_1ECDE1648 & 1) == 0)
  {
    __p[23] = 21;
    strcpy(__p, "newCoCFormulaDisabled");
    sub_1DED2C8A0(&qword_1ECDE1638, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    byte_1ECDE1648 = 1;
  }

  if ([qword_1ECDE1638 BOOLValue])
  {
    v76 = 0;
  }

  else
  {
    v76 = (sub_1DED2E328([propertiesCopy videoPipelineDevice]) >> 48) & 1;
  }

  if (Width <= Height)
  {
    v77 = Height;
  }

  else
  {
    v77 = Width;
  }

  *&v75 = v77;
  *&v73 = canonicalDisparity;
  *&v74 = number;
  *&v72 = self->_renderingLensFocalLength_mm;
  [(VideoMattingMetal *)self blurRadiusAndStdAtInfinityForFocalLength:v76 focusCanonicalDisparity:v72 fNumber:v73 xResolution:v74 useNewCoCFormula:v75];
  v79 = v78;
  v81 = v80;
  frameIndex = self->_frameIndex;
  v83 = (Height >> 1) - 1;
  if ((Height >> 1) <= 1)
  {
    NSLog(&cfstr_ErrorLargestco.isa);
    v83 = 0;
  }

  v84 = ceilf(bits);
  if (bits < 0.0)
  {
    v85 = 4.0;
  }

  else
  {
    v85 = v84;
  }

  v86 = 1.0;
  if (bits >= 0.0)
  {
    v86 = exp2f(bits - v84);
  }

  [(CVAFilterColorAlphaToFgBg *)self->_colorAlphaToFgBg encodeToCommandBuffer:commandBuffer srcColorTex:v108 srcAlphaTex:v62 dstForegroundTex:0 dstBackgroundTex:self->_bg];
  if (self->_renderingUsesPostprocessing && postprocessedDisparityCopy)
  {
    v87 = &OBJC_IVAR___VideoMattingMetal__smoothDisparity;
  }

  else
  {
    v87 = &OBJC_IVAR___VideoMattingMetal__disparity;
  }

  [(VideoMattingMetal *)self encodeDisparitySmoothingToCommandBuffer:commandBuffer disparity:*(&self->super.super.isa + 8 * (self->_frameIndex & 1) + *v87)];
  if (self->_isBgColorLutBlack)
  {
    v89 = self->_bg;
  }

  else
  {
    LODWORD(v88) = v81;
    [(CVAFilterMaskedVariableBlur *)self->_maskedVariableBlur encodeToCommandBuffer:commandBuffer source:self->_bg destination:self->_blurredBg mask:self->_coc maxBlurRadius:v88];
    v89 = self->_blurredBg;
  }

  v92 = v79 << 32;
  if (!v76)
  {
    v92 = 0;
  }

  LODWORD(v98) = v85;
  *&v90 = v86;
  *&v91 = intensity;
  [(CVAFilterRenderComposite *)self->_renderComposite encodeToCommandBuffer:commandBuffer srcForegroundTex:v108 srcBackgroundTex:v89 srcCocTex:self->_coc dstYTex:v119 dstUVTex:v118 fgColorLut:v90 bgColorLut:v91 frameNumber:self->_fgColorLut seedGeneratorFactor:self->_bgColorLut noiseBits:__PAIR64__(v83 noiseBitsFactor:frameIndex) cubeIntensity:v98 maxBlurRadius:v92 | v76];

  colorCopy = colorCopy2;
LABEL_49:

  dispatch_semaphore_wait(self->_renderingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = sub_1DED63F6C;
  v110[3] = &unk_1E869B040;
  alphaCopy = alpha;
  v115 = disparityCopy;
  v113 = pixelBuffer;
  v110[4] = self;
  v93 = queueCopy;
  v111 = v93;
  v94 = callbackCopy;
  v112 = v94;
  v116 = colorCopy;
  [commandBuffer addCompletedHandler:v110];
  [commandBuffer commit];

  self->_lastCommittedCommand = 3;
  if (stage)
  {
    ++self->_frameIndex;
  }
}

- (void)updateRenderRequestwithPerFrameMetadata:(id)metadata properties:(id)properties
{
  metadataCopy = metadata;
  propertiesCopy = properties;
  v7 = [metadataCopy objectForKeyedSubscript:@"FinalCropRectFromSource"];

  if (v7)
  {
    v8 = [metadataCopy objectForKeyedSubscript:@"FinalCropRectFromSource"];
    v9 = [v8 objectForKeyedSubscript:@"Width"];
    [v9 floatValue];
    v11 = v10;
    v12 = [metadataCopy objectForKeyedSubscript:@"FinalCropRectFromSource"];
    v13 = [v12 objectForKeyedSubscript:@"Height"];
    [v13 floatValue];
    v15 = v14;

    sub_1DED2E328([propertiesCopy videoPipelineDevice]);
    *v16.i32 = 1.0 / v11;
    *&v16.i32[1] = 1.0 / v15;
    __asm { FMOV            V1.2S, #1.0 }

    if (v22)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    v24 = vdup_n_s32(v23);
    _D8 = vbsl_s8(v24, _D1, v16);
    v26 = COERCE_DOUBLE(vbsl_s8(v24, v16, _D1));
  }

  else
  {
    __asm { FMOV            V8.2S, #1.0 }

    v26 = *&_D8;
  }

  width = self->_width;
  v29 = self->_primaryCaptureRect.size.width;
  height = self->_primaryCaptureRect.size.height;
  v30 = self->_height;
  [(PTRenderRequest *)self->_ptRenderRequest setVisCropFactor:v26];
  v31 = v29 / width;
  v32 = height / v30;
  [(PTRenderRequest *)self->_ptRenderRequest setVisCropFactorPreview:COERCE_DOUBLE(vmul_n_f32(_D8, sqrtf((v32 * v32) + (v31 * v31)) / 1.4142))];
  v33 = [metadataCopy objectForKeyedSubscript:@"FocalLenIn35mmFilm"];
  [v33 floatValue];
  [(PTRenderRequest *)self->_ptRenderRequest setFocalLenIn35mmFilm:?];

  v34 = [metadataCopy objectForKeyedSubscript:@"SensorID"];
  -[PTRenderRequest setSensorID:](self->_ptRenderRequest, "setSensorID:", [v34 intValue]);

  v35 = [metadataCopy objectForKeyedSubscript:@"ConversionGain"];
  -[PTRenderRequest setConversionGain:](self->_ptRenderRequest, "setConversionGain:", [v35 intValue]);

  v36 = [metadataCopy objectForKeyedSubscript:@"ReadNoise_1x"];
  -[PTRenderRequest setReadNoise_1x:](self->_ptRenderRequest, "setReadNoise_1x:", [v36 intValue]);

  v37 = [metadataCopy objectForKeyedSubscript:@"ReadNoise_8x"];
  -[PTRenderRequest setReadNoise_8x:](self->_ptRenderRequest, "setReadNoise_8x:", [v37 intValue]);

  v38 = [metadataCopy objectForKeyedSubscript:@"AGC"];
  -[PTRenderRequest setAGC:](self->_ptRenderRequest, "setAGC:", [v38 intValue]);
}

- (id)getPTTextureFromLuma:(id)luma chroma:(id)chroma
{
  lumaCopy = luma;
  chromaCopy = chroma;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = qword_1ECDE0F90;
  v15 = qword_1ECDE0F90;
  if (!qword_1ECDE0F90)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1DED5B52C;
    v11[3] = &unk_1E869AD70;
    v11[4] = &v12;
    sub_1DED5B52C(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v8 createYUV420:lumaCopy chroma:chromaCopy];
  [v9 setColorPrimaries:*MEMORY[0x1E695FFD0]];
  [v9 setTransferFunction:*MEMORY[0x1E6965F50]];
  [v9 setYCbCrMatrix:*MEMORY[0x1E6965FC8]];
  [v9 setYCbCrColorDepth:8];
  [v9 setYCbCrFullRange:1];

  return v9;
}

- (void)encodeDisparitySmoothingToCommandBuffer:(id)buffer disparity:(id)disparity
{
  bufferCopy = buffer;
  disparityCopy = disparity;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_renderingDisparityDeweightKernel"];
  [computeCommandEncoder setComputePipelineState:self->_renderingDisparityDeweightKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_deweightedDisparity atIndex:1];
  currentBuffer = [(CVAPhotoMTLRingBuffer *)self->_disparityConfig currentBuffer];
  [computeCommandEncoder setBuffer:currentBuffer offset:0 atIndex:0];

  v16 = ([disparityCopy width] + 15) >> 4;
  v17 = ([disparityCopy height] + 15) >> 4;
  v18 = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
  [(MPSImageBox *)self->_disparityBlurBoxKernel encodeToCommandBuffer:bufferCopy sourceTexture:self->_deweightedDisparity destinationTexture:self->_shift[self->_frameIndex & 1]];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:self->_colorSim outTexture:self->_colorSim radius:5 normalize:2];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_renderingDisparityFillAndFilterKernel"];
  [computeCommandEncoder2 setComputePipelineState:self->_renderingDisparityFillAndFilterKernel];
  [computeCommandEncoder2 setTexture:self->_shift[(self->_frameIndex & 1) == 0] atIndex:0];
  [computeCommandEncoder2 setTexture:self->_shift[self->_frameIndex & 1] atIndex:1];
  [computeCommandEncoder2 setTexture:self->_colorSim atIndex:2];
  [computeCommandEncoder2 setTexture:self->_shift[self->_frameIndex & 1] atIndex:3];
  [computeCommandEncoder2 setTexture:self->_coc atIndex:4];
  currentBuffer2 = [(CVAPhotoMTLRingBuffer *)self->_disparityConfig currentBuffer];
  [computeCommandEncoder2 setBuffer:currentBuffer2 offset:0 atIndex:0];

  width = [disparityCopy width];
  height = [disparityCopy height];
  v16 = (width + 15) >> 4;
  v17 = (height + 15) >> 4;
  v18 = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder2 endEncoding];
}

- (pair<float,)blurRadiusAndStdAtInfinityForFocalLength:(float)length focusCanonicalDisparity:(float)disparity fNumber:(float)number xResolution:(float)resolution useNewCoCFormula:(BOOL)formula
{
  formulaCopy = formula;
  if ((atomic_load_explicit(&qword_1ECDE1608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1608))
  {
    v27 = +[CVAPreferenceManager defaults];
    v28 = [v27 BOOLForKey:@"CVAPhotoDebugCoC"];

    byte_1ECDE1600 = v28;
    __cxa_guard_release(&qword_1ECDE1608);
  }

  if (byte_1ECDE1600 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"f_mm = %f", length];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"disparity = %f", disparity];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"fDist_mm = %f", (1000.0 / disparity)];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"fN = %f", number];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"useNewCoCFormula = %d", formulaCopy];
  }

  if (disparity >= 2048.0)
  {
    v17 = 0.0;
    if (byte_1ECDE1600 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"cocRadiusInPixels = %d", 0];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"maxBlurRadius = %d", 0];
    }

    v15 = 0.0;
  }

  else if (formulaCopy)
  {
    if ((atomic_load_explicit(&qword_1ECDE1618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1618))
    {
      LODWORD(v29) = 1057896676;
      qword_1ECDE1610 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      __cxa_guard_release(&qword_1ECDE1618);
    }

    if ((byte_1ECDE1620 & 1) == 0)
    {
      v31 = 9;
      strcpy(__p, "blurScale");
      sub_1DED2C8A0(&qword_1ECDE1610, __p);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      byte_1ECDE1620 = 1;
    }

    v12 = ((resolution / 36.0) * (((length * length) * fmaxf(disparity, 0.0)) / (number * 1000.0))) * 0.5;
    [qword_1ECDE1610 floatValue];
    v15 = v12 * v14;
    if ((v12 * v14) >= 2.0)
    {
      v16 = log2f(v15);
    }

    else
    {
      v16 = v15 * 0.5;
    }

    v22 = (pow(6.0, (v16 - floorf(v16))) + -1.0) / 5.0 + v13;
    v17 = exp2f(v22 * 1.585) + 0.5;
    if (byte_1ECDE1600 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"cocRadiusInPixels = %f", v12];

      v23 = MEMORY[0x1E696AEC0];
      [qword_1ECDE1610 floatValue];
      [v23 stringWithFormat:@"blurScale = %f", v24];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"maxBlurRadiusStd = %f", v15];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"mipLevel = %f", v22];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"effectiveRadiusInPixels = %f", v17];
      goto LABEL_25;
    }
  }

  else
  {
    v18 = ((resolution / 36.0) * (((length * length) * fmaxf(disparity, 0.0)) / (number * 1000.0))) * 0.5;
    v15 = v18 * 0.46111;
    if ((v18 * 0.46111) >= 2.0)
    {
      v19 = log2f(v18 * 0.46111);
    }

    else
    {
      v19 = v15 * 0.5;
    }

    v17 = 0.0;
    if (byte_1ECDE1600 == 1)
    {
      v20 = floorf(v19);
      v21 = (pow(6.0, (v19 - v20)) + -1.0) / 5.0 + v20;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"cocRadiusInPixels = %f", v18];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"blurScale = %f", 0x3FDD82D840000000];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"maxBlurRadiusStd = %f", v15];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"mipLevel = %f", v21];
LABEL_25:
    }
  }

  v25 = v17;
  v26 = v15;
  result.var1 = v26;
  result.var0 = v25;
  return result;
}

- (void)encodeDisparityDecimateToCommandBuffer:(id)buffer canonicalDisparity:(__CVBuffer *)disparity disparityOut:(id)out
{
  bufferCopy = buffer;
  outCopy = out;
  Width = CVPixelBufferGetWidth(disparity);
  Height = CVPixelBufferGetHeight(disparity);
  width = [outCopy width];
  height = [outCopy height];
  if (CVPixelBufferGetPixelFormatType(disparity) == 1751411059)
  {
    v14 = 25;
  }

  else
  {
    v14 = 55;
  }

  v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:Width height:Height mipmapped:0];
  v16 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:disparity textureDescriptor:v15 plane:0 textureCache:self->_textureCache];
  if (self->_sdofRenderingHasForegroundBlur)
  {
    [(VideoMattingMetal *)self encodeRotateAndFitIntoRectWithCommandBuffer:bufferCopy inTexture:v16 outTexture:outCopy rotateClockwise:0];
  }

  else
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setLabel:@"_disparityDecimateKernel"];
    [computeCommandEncoder setComputePipelineState:self->_disparityDecimateKernel];
    [computeCommandEncoder setTexture:v16 atIndex:0];
    [computeCommandEncoder setTexture:outCopy atIndex:1];
    v20[0] = (width + 15) >> 4;
    v20[1] = (height + 15) >> 4;
    v20[2] = 1;
    v18 = xmmword_1DED747F0;
    v19 = 1;
    [computeCommandEncoder dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodeForegroundMaskToBuffer:(id)buffer disparity:(id)disparity inSegmentation:(id)segmentation useSegmentationOnly:(BOOL)only weight:(id)weight foregroundMask:(id)mask erodedForegroundMask:(id)foregroundMask disparityMin:(float)self0 focusDisparity:(float)self1 hardness:(float)self2 minDistToDeweight:(float)self3 unconfidentWeight:(float)self4 dilateForegroundMask:(BOOL)self5 foregroundMaskDilationRadius:(float)self6 properties:(id)self7 applyRotation:(BOOL)self8
{
  onlyCopy = only;
  HIDWORD(v44) = dilateForegroundMask;
  bufferCopy = buffer;
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  weightCopy = weight;
  maskCopy = mask;
  foregroundMaskCopy = foregroundMask;
  propertiesCopy = properties;
  sub_1DED2E328([propertiesCopy videoPipelineDevice]);
  if (v35)
  {
    [(VideoMattingMetal *)self encodeRotateAndFitIntoRectWithCommandBuffer:bufferCopy inTexture:segmentationCopy outTexture:self->_correctlyRotatedAndReshapedSegmentation rotateClockwise:rotation];
  }

  else
  {
    objc_storeStrong(&self->_correctlyRotatedAndReshapedSegmentation, segmentation);
  }

  *&v36 = min;
  *&v37 = focusDisparity;
  *&v38 = hardness;
  *&v39 = deweight;
  *&v40 = unconfidentWeight;
  [(VideoMattingMetal *)self encodeDisparityMasksToCommandBuffer:bufferCopy inputDisparity:disparityCopy inputSegmentation:self->_correctlyRotatedAndReshapedSegmentation useSegmentationOnly:onlyCopy outputForegroundMask:maskCopy outputIsForeground:self->_isForegroundTexture disparityMin:v36 focusDisparity:v37 hardness:v38 minDistToDeweight:v39 unconfidentWeight:v40];
  [(CVAFilterDistanceTransform *)self->_distanceTransform encodeToCommandBuffer:bufferCopy sourceTexture:self->_isForegroundTexture destinationTexture:self->_distanceToForegroundTexture];
  LOBYTE(v44) = BYTE4(v44);
  *&v41 = deweight;
  *&v42 = unconfidentWeight;
  *&v43 = radius;
  [(VideoMattingMetal *)self encodeGuidedFilterWeightToCommandBuffer:bufferCopy inputDisparity:disparityCopy inputSegmentation:self->_correctlyRotatedAndReshapedSegmentation useSegmentationOnly:onlyCopy inputForegroundDistance:self->_distanceToForegroundTexture outputForegroundMask:maskCopy outputWeight:v41 minDistToDeweight:v42 unconfidentWeight:v43 dilateForegroundMask:weightCopy foregroundMaskDilationRadius:v44];
  if (foregroundMaskCopy)
  {
    [(MPSImageAreaMin *)self->_fgMaskErosionKernel encodeToCommandBuffer:bufferCopy sourceTexture:maskCopy destinationTexture:foregroundMaskCopy];
  }
}

- (void)encodeRotateAndFitIntoRectWithCommandBuffer:(id)buffer inTexture:(id)texture outTexture:(id)outTexture rotateClockwise:(BOOL)clockwise
{
  textureCopy = texture;
  outTextureCopy = outTexture;
  clockwiseCopy = clockwise;
  *v12.f32 = vcvt_f32_s32(*&self->_width);
  v12.i64[1] = v12.i64[0];
  v18 = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(self->_primaryCaptureRect.origin), self->_primaryCaptureRect.size), v12);
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_rotateAndFitIntoRectKernel"];
  [computeCommandEncoder setComputePipelineState:self->_rotateAndFitIntoRectKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:outTextureCopy atIndex:1];
  [computeCommandEncoder setBytes:&v18 length:16 atIndex:0];
  [computeCommandEncoder setBytes:&clockwiseCopy length:1 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_rotateAndFitIntoRectKernel threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_rotateAndFitIntoRectKernel maxTotalThreadsPerThreadgroup];
  v17[0] = [outTextureCopy width];
  v17[1] = [outTextureCopy height];
  v17[2] = 1;
  v16[0] = threadExecutionWidth;
  v16[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v16[2] = 1;
  [computeCommandEncoder dispatchThreads:v17 threadsPerThreadgroup:v16];
  [computeCommandEncoder endEncoding];
}

- (void)encodeGuidedFilterWeightToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputSegmentation:(id)segmentation useSegmentationOnly:(BOOL)only inputForegroundDistance:(id)distance outputForegroundMask:(id)mask outputWeight:(id)weight minDistToDeweight:(float)self0 unconfidentWeight:(float)self1 dilateForegroundMask:(BOOL)self2 foregroundMaskDilationRadius:(float)self3
{
  _S8 = radius;
  bufferCopy = buffer;
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  distanceCopy = distance;
  maskCopy = mask;
  weightCopy = weight;
  width = [distanceCopy width];
  if (width != [disparityCopy width])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2158 description:@"Precondition: inputForegroundDistance.width == disparity.width"];
  }

  height = [distanceCopy height];
  if (height != [disparityCopy height])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2160 description:@"Precondition: inputForegroundDistance.height == disparity.height"];
  }

  width2 = [weightCopy width];
  if (width2 != [disparityCopy width])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2161 description:@"Precondition: outputWeight.width == disparity.width"];
  }

  height2 = [weightCopy height];
  if (height2 != [disparityCopy height])
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2162 description:@"Precondition: outputWeight.height == disparity.height"];
  }

  *v46 = deweight;
  *&v46[1] = unconfidentWeight;
  onlyCopy = only;
  foregroundMaskCopy = foregroundMask;
  __asm { FCVT            H0, S8 }

  v48 = _H0;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_guidedFilterWeightKernel"];
  [computeCommandEncoder setComputePipelineState:self->_guidedFilterWeightKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:distanceCopy atIndex:1];
  [computeCommandEncoder setTexture:segmentationCopy atIndex:2];
  [computeCommandEncoder setTexture:weightCopy atIndex:3];
  [computeCommandEncoder setTexture:maskCopy atIndex:4];
  [computeCommandEncoder setBytes:v46 length:16 atIndex:0];
  v45[0] = ([disparityCopy width] + 15) >> 4;
  v45[1] = ([disparityCopy height] + 15) >> 4;
  v45[2] = 1;
  v43 = xmmword_1DED747F0;
  v44 = 1;
  [computeCommandEncoder dispatchThreadgroups:v45 threadsPerThreadgroup:&v43];
  [computeCommandEncoder endEncoding];
}

- (void)encodeScaleSourceToCommandBuffer:(id)buffer source:(__CVBuffer *)source targetWidth:(unint64_t)width targetHeight:(unint64_t)height
{
  bufferCopy = buffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(source);
  v11 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = 500;
  }

  else
  {
    v14 = 70;
  }

  v15 = self->_frameIndex & 1;
  scaledSource = self->_scaledSource;
  if (!self->_scaledSource[v15])
  {
    if (v13)
    {
      v17 = PixelFormatType;
    }

    else
    {
      v17 = 1111970369;
    }

    self->_scaledSourceCV[v15] = [(VideoMattingMetal *)self createCVBufferWithWidth:width height:height format:v17];
    v18 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:width height:height mipmapped:0];
    [v18 setUsage:3];
    v19 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:self->_scaledSourceCV[v15] textureDescriptor:v18 plane:0 textureCache:self->_textureCache];
    v20 = scaledSource[v15];
    scaledSource[v15] = v19;
  }

  v21 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v23 = [v21 containsObject:v22];

  if (v23)
  {
    [(VideoMattingMetal *)self encode420HybridDownsamplingToCommandBuffer:bufferCopy source:source destination:self->_scaledSourceCV[v15]];
  }

  else
  {
    Width = CVPixelBufferGetWidth(source);
    v25 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:Width height:CVPixelBufferGetHeight(source) mipmapped:0];
    v26 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:source textureDescriptor:v25 plane:0 textureCache:self->_textureCache];
    [(CVAFilterHybridResampling *)self->_hybridResampler encodeHybridDownsamplingToCommandBuffer:bufferCopy source:v26 destination:scaledSource[v15]];
  }
}

- (__CVBuffer)createCVBufferWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = *MEMORY[0x1E69660D8];
  v13[0] = MEMORY[0x1E695E0F8];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, format, v8, &v11);
  v9 = v11;

  return v9;
}

- (void)encodeFilterCoefficientToBuffer:(id)buffer inputCoeff:(id)coeff prevCoeff:(id)prevCoeff outCoeff:(id)outCoeff inColorSim:(id)sim updateRate:(float)rate
{
  bufferCopy = buffer;
  coeffCopy = coeff;
  prevCoeffCopy = prevCoeff;
  outCoeffCopy = outCoeff;
  simCopy = sim;
  width = [coeffCopy width];
  height = [coeffCopy height];
  v25[0] = self->_frameIndex != 0;
  v26 = 1.0 - rate;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_temporalCoefficientsFilterKernel"];
  [computeCommandEncoder setComputePipelineState:self->_temporalCoefficientsFilterKernel];
  [computeCommandEncoder setTexture:coeffCopy atIndex:0];
  [computeCommandEncoder setTexture:prevCoeffCopy atIndex:1];
  [computeCommandEncoder setTexture:outCoeffCopy atIndex:2];
  [computeCommandEncoder setTexture:simCopy atIndex:3];
  [computeCommandEncoder setBytes:v25 length:12 atIndex:0];
  v24[0] = (width + 15) >> 4;
  v24[1] = (height + 15) >> 4;
  v24[2] = 1;
  v22 = vdupq_n_s64(0x10uLL);
  v23 = 1;
  [computeCommandEncoder dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];
}

- (void)initSourceTexture:(__CVBuffer *)texture
{
  Width = CVPixelBufferGetWidth(texture);
  Height = CVPixelBufferGetHeight(texture);
  PixelFormatType = CVPixelBufferGetPixelFormatType(texture);
  v10 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v8 = [v10 containsObject:v7];

  if (v8)
  {
    v9 = 500;
  }

  else
  {
    v9 = 70;
  }

  v11 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v9 width:Width height:Height mipmapped:0];
  [v11 setStorageMode:0];
}

- (void)alphaMattingWithPostprocessedDisparity:(const __CVBuffer *)disparity source:(const __CVBuffer *)source inSegmentation:(__CVBuffer *)segmentation alpha:(__CVBuffer *)alpha staticParams:(const VideoMattingStaticParams *)params dynamicParams:(const void *)dynamicParams usePostprocessedDisparity:(BOOL)postprocessedDisparity isFinalStage:(BOOL)self0 dilateForegroundMask:(BOOL)self1 properties:(id)self2 callbackQueue:(id)self3 callback:(id)self4
{
  propertiesCopy = properties;
  queueCopy = queue;
  callbackCopy = callback;
  v19 = sub_1DED6F954(source);
  sourceCopy = source;
  v20 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:source textureDescriptor:v19 plane:0 textureCache:self->_textureCache];

  v68 = v20;
  if (segmentation)
  {
    v21 = sub_1DED6F954(segmentation);
    v70 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:segmentation textureDescriptor:v21 plane:0 textureCache:self->_textureCache];
  }

  else
  {
    v70 = 0;
  }

  v22 = sub_1DED6F954(alpha);
  v23 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:alpha textureDescriptor:v22 plane:0 textureCache:self->_textureCache];

  v24 = *(dynamicParams + 4);
  v25 = *(dynamicParams + 10);
  v65 = v23;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"focusCanonicalDisparity = %5.3f", *(dynamicParams + 4)];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"alphaMatte.cutoffCanonicalDisparity = %5.3f", (*(dynamicParams + 4) - *(dynamicParams + 10))];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"alphaMatteDeltaCanonicalDisparity = %5.3f", *(dynamicParams + 10)];

    v26 = *(dynamicParams + 4);
    v27 = 1.0 / (v26 - *(dynamicParams + 10));
    v28 = 1.0 / v26;
    v29 = v27 - v28;
    *&v27 = v27;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"alphaMatte.focus = %5.3fm delta = %5.3fm cutoff = %5.3fm", *&v28, v29, *&v27];
  }

  v30 = *(dynamicParams + 2);
  v31 = atan2f(*(dynamicParams + 8), *(dynamicParams + 7));
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"alphaMattingWithPostprocessedDisparity"];
  *&v33 = 1.0 / ((((v30 / 255.0) * (v30 / 255.0)) + ((v30 / 255.0) * (v30 / 255.0))) * 3.0);
  [(VideoMattingMetal *)self encodeColorSimToCommandBuffer:commandBuffer prevSource:self->_scaledSource[!(self->_frameIndex & 1)] currSource:self->_scaledSource[self->_frameIndex & 1] destination:self->_colorSim similarityScaleFactor:v33];
  if (self->_mattingUsesPostprocessing && postprocessedDisparity)
  {
    v40 = &OBJC_IVAR___VideoMattingMetal__smoothDisparity;
  }

  else
  {
    v40 = &OBJC_IVAR___VideoMattingMetal__disparity;
  }

  LODWORD(v35) = *(dynamicParams + 4);
  LODWORD(v36) = *(dynamicParams + 6);
  *&v38 = params->guidedFilterUnconfidentWeight;
  *&v37 = params->guidedFilterMinDistToDeweight;
  *&v39 = params->foregroundMaskDilationRadius;
  LOBYTE(v62) = *(dynamicParams + 81);
  LOBYTE(v61) = mask;
  *&v34 = v24 - v25;
  [VideoMattingMetal encodeForegroundMaskToBuffer:"encodeForegroundMaskToBuffer:disparity:inSegmentation:useSegmentationOnly:weight:foregroundMask:erodedForegroundMask:disparityMin:focusDisparity:hardness:minDistToDeweight:unconfidentWeight:dilateForegroundMask:foregroundMaskDilationRadius:properties:applyRotation:" disparity:commandBuffer inSegmentation:*(&self->super.super.isa + 8 * (self->_frameIndex & 1) + *v40) useSegmentationOnly:v34 weight:v35 foregroundMask:v36 erodedForegroundMask:v37 disparityMin:v38 focusDisparity:v39 hardness:0 minDistToDeweight:v61 unconfidentWeight:propertiesCopy dilateForegroundMask:v62 foregroundMaskDilationRadius:? properties:? applyRotation:?];
  v41 = &qword_1ECDE1000;
  if ((atomic_load_explicit(&qword_1ECDE15E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15E8))
  {
    LODWORD(v59) = 1008981770;
    qword_1ECDE15E0 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
    __cxa_guard_release(&qword_1ECDE15E8);
  }

  if ((byte_1ECDE15F0 & 1) == 0)
  {
    BYTE7(v78[1]) = 20;
    strcpy(v78, "alphaGuidedFilterEps");
    sub_1DED2C8A0(&qword_1ECDE15E0, v78);
    if (SBYTE7(v78[1]) < 0)
    {
      operator delete(*&v78[0]);
    }

    byte_1ECDE15F0 = 1;
  }

  if ((atomic_load_explicit(&qword_1ECDE15F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15F8))
  {
    v60 = +[CVAPreferenceManager defaults];
    v63 = [v60 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE15F1 = v63;
    __cxa_guard_release(&qword_1ECDE15F8);
    v41 = &qword_1ECDE1000;
  }

  if (byte_1ECDE15F1 == 1)
  {
    v42 = v41;
    v43 = MEMORY[0x1E696AEC0];
    v44 = v42;
    [v42[188] floatValue];
    [v43 stringWithFormat:@"alphaGuidedFilterEps = %f", v45];

    v41 = v44;
  }

  [v41[188] floatValue];
  [(MPSImageGuidedFilter *)self->_guidedFilter setEpsilon:?];
  [(MPSImageGuidedFilter *)self->_guidedFilter encodeRegressionToCommandBuffer:commandBuffer sourceTexture:self->_gfForegroundMask guidanceTexture:self->_scaledSource[self->_frameIndex & 1] weightsTexture:self->_gfWeight destinationCoefficientsTexture:self->_coeff];
  v46 = self->_frameIndex & 1;
  v47 = self->_coeffHistory[v46];
  v48 = self->_coeffHistory[v46 ^ 1];
  LODWORD(v49) = *dynamicParams;
  [(VideoMattingMetal *)self encodeFilterCoefficientToBuffer:commandBuffer inputCoeff:self->_coeff prevCoeff:v48 outCoeff:v47 inColorSim:self->_colorSim updateRate:v49];
  [(MPSImageGuidedFilter *)self->_guidedFilter encodeReconstructionToCommandBuffer:commandBuffer guidanceTexture:v68 coefficientsTexture:v47 destinationTexture:self->_alphaNoPostprocessing];
  v50 = fabsf(*(dynamicParams + 9));
  v51 = fmaxf(v50 * (v50 * (v50 * v50)), 0.1) * 0.5;
  infConvolutionScale = self->_infConvolutionScale;
  *&v53 = infConvolutionScale * (1.0 - v51);
  *&v54 = infConvolutionScale * v51;
  *&v55 = self->_gammaExponent;
  *&v56 = v31;
  [(CVAFilterGuided *)self->_cvaGuidedFilter encodePostProcessAlphaToCommandBuffer:commandBuffer source:self->_alphaNoPostprocessing destination:v65 alphaMaxLaplacian:self->_enableInfConvolution infConvOrientation:COERCE_DOUBLE(LODWORD(params->alphaMaxLaplacian)) infConvMajorRadius:v56 infConvMinorRadius:v53 gammaExponent:v54 enableInfConvolution:v55];
  CVPixelBufferRetain(sourceCopy);
  CVPixelBufferRetain(alpha);
  CVPixelBufferRetain(segmentation);
  dispatch_semaphore_wait(self->_mattingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1DED66914;
  v72[3] = &unk_1E869AFF8;
  v75 = sourceCopy;
  segmentationCopy = segmentation;
  v72[4] = self;
  v57 = queueCopy;
  v73 = v57;
  v58 = callbackCopy;
  v74 = v58;
  alphaCopy = alpha;
  [commandBuffer addCompletedHandler:v72];
  [commandBuffer commit];

  self->_lastCommittedCommand = 1;
  if (stage)
  {
    ++self->_frameIndex;
  }
}

- (id)disparityPostprocessingWithCanonicalDisparity:(const __CVBuffer *)disparity color:(const __CVBuffer *)color postProcessedDisparity:(__CVBuffer *)processedDisparity staticParams:(const VideoMattingStaticParams *)params dynamicParams:(const void *)dynamicParams postProcessingParams:(const VideoPostprocessingParams *)processingParams facesArray:(id)array faceModel:(id)self0 isFinalStage:(BOOL)self1 callbackQueue:(id)self2 callback:(id)self3
{
  queueCopy = queue;
  callbackCopy = callback;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"disparityPostprocessingWithCanonicalDisparity"];
  [(VideoMattingMetal *)self encodeScaleSourceToCommandBuffer:commandBuffer source:color targetWidth:self->_width2 targetHeight:self->_height2];
  disparity = self->_disparity;
  [(VideoMattingMetal *)self encodeDisparityDecimateToCommandBuffer:commandBuffer canonicalDisparity:disparity disparityOut:self->_disparity[self->_frameIndex & 1]];
  if (!self->_sdofRenderingHasForegroundBlur)
  {
    if (self->_doDisparityDiffusion && ![(VideoMattingMetal *)self bypassShiftCleanup]&& (*(dynamicParams + 80) & 1) != 0)
    {
      if (self->_doDisparityDiffusion)
      {
        [(VideoMattingMetal *)self encodeDiffusionMapToCommandBuffer:commandBuffer color:self->_scaledSource[self->_frameIndex & 1] diffusionMap:self->_diffusionMapTexture];
        frameIndex = self->_frameIndex;
        v48 = disparity[frameIndex & 1];
        if (processingParams->useTemporalRejection)
        {
          smoothConfidence = self->_smoothConfidence;
          v50 = !(frameIndex & 1);
          v51 = self->_smoothConfidence[v50];
          v52 = &self->_disparityLastValidValue[v50];
          if (frameIndex)
          {
            v53 = v52;
          }

          else
          {
            v53 = self->_disparity;
          }

          LOBYTE(v98) = self->_useTemporalConfidence;
          [(VideoMattingMetal *)self encodeUpdateConfidenceAndLastValidDisparityToCommandBuffer:commandBuffer disparity:v48 prevSmoothConfidence:v51 lastValidDisparityIn:*v53 lastValidDisparityOut:self->_disparityLastValidValue[self->_frameIndex & 1] currConfidenceOut:self->_disparityConfidenceMaskTexture useTemporalConfidence:v98];
          v57 = self->_frameIndex;
          v58 = disparity[v57 & 1];
          if (v57)
          {
            v59 = !(v57 & 1);
            disparity = &self->_smoothDisparity[v59];
            disparityConfidenceMaskTexture = self->_disparityConfidenceMaskTexture;
            v61 = smoothConfidence[v59];
          }

          else
          {
            disparityConfidenceMaskTexture = self->_disparityConfidenceMaskTexture;
            v61 = disparityConfidenceMaskTexture;
          }

          *&v54 = params->shiftFilterUpdateRate;
          *&v55 = params->minimumConfidenceToKeepDisparity;
          *&v56 = params->maximumSimilarityToKeepDisparity;
          LOBYTE(v99) = self->_isBgColorLutBlack;
          [(VideoMattingMetal *)self encodeDisparityTemporalFilterToCommandBuffer:commandBuffer currentDisparity:v58 previousDisparity:*disparity currConfidence:disparityConfidenceMaskTexture prevSmoothConfidence:v61 colorSim:self->_colorSim outPrevSmoothConfidence:v54 outTemporallyFilteredDisparity:v55 disparityFallbackToInvalid:v56 disparityFilterUpdateRate:smoothConfidence[v57 & 1] minimumConfidenceToKeepDisparity:self->_temporallyFilteredDisparity maximumSimilarityToKeepDisparity:v99];
        }

        else
        {
          [(VideoMattingMetal *)self encodeCopyTextureToCommandBuffer:commandBuffer inTexture:v48 outTexture:self->_temporallyFilteredDisparity];
          [(VideoMattingMetal *)self encodeSimpleConfidenceToCommandBuffer:commandBuffer disparity:disparity[self->_frameIndex & 1] outConfidence:self->_disparityConfidenceMaskTexture];
        }

        facemaskDisparity = self->_facemaskDisparity;
        self->_facemaskDisparity = 0;
        temporallyFilteredDisparity = self->_temporallyFilteredDisparity;
        self->_temporallyFilteredDisparity = 0;
        v91 = self->_facemaskDisparity;
        self->_facemaskDisparity = temporallyFilteredDisparity;

        v92 = self->_temporallyFilteredDisparity;
        self->_temporallyFilteredDisparity = facemaskDisparity;

        facemaskRegionTexture = 0;
        if (model && self->_doFaceMask)
        {
          facemaskRegionTexture = self->_facemaskRegionTexture;
        }

        p_filledDisparityTexture = &self->_filledDisparityTexture;
        LODWORD(v93) = *(dynamicParams + 5);
        *&v94 = processingParams->backgroundFillMarginFromValidDisparity_px;
        [(VideoMattingMetal *)self encodeFillBackgroundDisparityToCommandBuffer:commandBuffer inputDisparity:self->_facemaskDisparity inputFacemask:facemaskRegionTexture outputDistanceFromKnownDisparity:self->_distanceFromKnownDisparityTexture outputDisparity:self->_filledDisparityTexture backgroundDisparityValue:v93 minimumDistanceFromValidDisparity:v94];
        [(VideoMattingMetal *)self encodeDomainTransformToCommandBuffer:commandBuffer inputDiffusionMap:self->_diffusionMapTexture inputDistanceFromKnownDisparity:self->_distanceFromKnownDisparityTexture outputDomainTransformX:self->_domainTransformXTexture outputDomainTransformY:self->_domainTransformYTexture];
        if (!processingParams->fillLargeHolesWithBackground && !self->_isBgColorLutBlack)
        {
          p_filledDisparityTexture = &self->_facemaskDisparity;
        }

        [(VideoMattingMetal *)self encodeEdgeAwareFillToCommandBuffer:commandBuffer inputDisparity:*p_filledDisparityTexture inputDomainTransformX:self->_domainTransformXTexture inputDomainTransformY:self->_domainTransformYTexture outputDisparity:self->_initDisparity];
        [(VideoMattingMetal *)self encodeInvalidDisparityMaskToCommandBuffer:commandBuffer inputDisparity:self->_initDisparity outputMask:self->_invalidDisparityMaskTexture];
        [(VideoMattingMetal *)self encodeBackgroundFillToCommandBuffer:commandBuffer inputDisparity:self->_initDisparity inputMask:self->_invalidDisparityMaskTexture outputDisparity:self->_initDisparity];
        LODWORD(v98) = 15;
        [(CVAFilterDiffusion *)self->_diffusion encodeToCommandBuffer:commandBuffer priorTexture:self->_initDisparity sourceTexture:self->_initDisparity destinationTexture:self->_smoothDisparity[self->_frameIndex & 1] diffusionMapTexture:self->_diffusionMapTexture confidenceTexture:self->_disparityConfidenceMaskTexture iterations:v98];
      }
    }

    else
    {
      objc_storeStrong(&self->_smoothDisparity[self->_frameIndex & 1], disparity[self->_frameIndex & 1]);
    }

    objc_storeStrong(&self->_filteredBeforeSmoothDisparity, self->_smoothDisparity[self->_frameIndex & 1]);
    if (processedDisparity && (*(dynamicParams + 80) & 1) != 0)
    {
      Width = CVPixelBufferGetWidth(processedDisparity);
      Height = CVPixelBufferGetHeight(processedDisparity);
      if (CVPixelBufferGetPixelFormatType(processedDisparity) != 1751411059)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:1675 description:@"Postprocessed disparity buffer is not kCVPixelFormatType_DisparityFloat16"];
      }

      v64 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:Width height:Height mipmapped:0];
      [v64 setUsage:2];
      v65 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:processedDisparity textureDescriptor:v64 plane:0 textureCache:self->_textureCache];
      [(VideoMattingMetal *)self encodeOutputDisparityToCommandBuffer:commandBuffer inputDisparity:self->_smoothDisparity[self->_frameIndex & 1] outputDisparity:v65];
    }

    goto LABEL_69;
  }

  if (self->_deadzoneInCinematic)
  {
    goto LABEL_69;
  }

  CVPixelBufferLockBaseAddress(disparity, 1uLL);
  CVPixelBufferLockBaseAddress(processedDisparity, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(disparity);
  v20 = CVPixelBufferGetHeight(disparity);
  v21 = CVPixelBufferGetWidth(disparity);
  BytesPerRow = CVPixelBufferGetBytesPerRow(disparity);
  v23 = CVPixelBufferGetBaseAddress(processedDisparity);
  CVPixelBufferGetHeight(processedDisparity);
  CVPixelBufferGetWidth(processedDisparity);
  v24 = CVPixelBufferGetBytesPerRow(processedDisparity);
  v25 = sub_1DED5D1F8(@"CVAPhotoBackgroundDeadzoneInCentimeters", @"com.apple.coremedia", 10);
  v26 = sub_1DED5D1F8(@"CVAPhotoForegroundDeadzoneInCentimeters", @"com.apple.coremedia", 10);
  v27 = v25 / 100.0;
  v28 = v26 / 100.0;
  _S10 = *(dynamicParams + 4);
  v30 = 1.0 / ((1.0 / _S10) + v27);
  v31 = 1.0 / fmax(1.0 / _S10 - v28, 0.05);
  v32 = _S10 - v30;
  v33 = fabsf(_S10 - v30);
  v107 = atan(3.14159265);
  v109 = v31;
  v106 = -(v31 - (_S10 * 2.0));
  v105 = _S10 - v106;
  __asm { FCVT            H14, S10 }

  if (fabsf(_S10 - v106) >= 0.01)
  {
    v66 = 0;
    v67 = v33;
    while (1)
    {
      v68 = 0;
      do
      {
        _H0 = *&BaseAddress[2 * v68];
        __asm { FCVT            S1, H0 }

        if (_S10 <= _S1 || v30 > _S1)
        {
          if (_S10 < _S1 && _S1 <= v31)
          {
            v73 = atan(((-(_S1 - (_S10 * 2.0)) - v106) / v105) * 3.14159265);
            v67 = v33;
            *&v73 = v73 / v107;
            _S0 = -(((*&v73 * v105) - (v31 - (_S10 * 2.0))) - (_S10 * 2.0));
LABEL_39:
            __asm { FCVT            H0, S0 }
          }
        }

        else
        {
          _H0 = _H14;
          if (v67 >= 0.01)
          {
            v75 = atan(((_S1 - v30) / v32) * 3.14159265);
            v67 = v33;
            *&v75 = v75 / v107;
            _S0 = v30 + (*&v75 * v32);
            goto LABEL_39;
          }
        }

        *&v23[2 * v68++] = _H0;
      }

      while (v21 >= v68);
      ++v66;
      v23 += v24;
      BaseAddress += BytesPerRow;
      if (v20 < v66)
      {
        goto LABEL_68;
      }
    }
  }

  _S0 = -(_S10 - (_S10 * 2.0));
  __asm { FCVT            H8, S0 }

  if (v33 >= 0.01)
  {
    v76 = 0;
    while (1)
    {
      v77 = 0;
      do
      {
        _H0 = *&BaseAddress[2 * v77];
        __asm { FCVT            S1, H0 }

        if (_S10 <= _S1 || v30 > _S1)
        {
          if (_S10 < _S1 && _S1 <= v109)
          {
            *&v23[2 * v77] = _H8;
            goto LABEL_56;
          }
        }

        else
        {
          v82 = atan(((_S1 - v30) / v32) * 3.14159265) / v107;
          _S0 = v30 + (v82 * v32);
          __asm { FCVT            H0, S0 }
        }

        *&v23[2 * v77] = _H0;
LABEL_56:
        ++v77;
      }

      while (v21 >= v77);
      ++v76;
      v23 += v24;
      BaseAddress += BytesPerRow;
      if (v20 < v76)
      {
        goto LABEL_68;
      }
    }
  }

  v41 = 0;
  do
  {
    v42 = 0;
    do
    {
      _H0 = *&BaseAddress[2 * v42];
      __asm { FCVT            S1, H0 }

      if (_S10 <= _S1 || v30 > _S1)
      {
        if (_S10 >= _S1 || _S1 > v109)
        {
          *&v23[2 * v42] = _H0;
        }

        else
        {
          *&v23[2 * v42] = _H8;
        }
      }

      else
      {
        *&v23[2 * v42] = _H14;
      }

      ++v42;
    }

    while (v21 >= v42);
    ++v41;
    v23 += v24;
    BaseAddress += BytesPerRow;
  }

  while (v20 >= v41);
LABEL_68:
  CVPixelBufferUnlockBaseAddress(disparity, 1uLL);
  CVPixelBufferUnlockBaseAddress(processedDisparity, 0);
LABEL_69:
  sub_1DED49608(*(self->_metalContext + 6), self->_device, self->_commandQueue);
  CVPixelBufferRetain(color);
  CVPixelBufferRetain(processedDisparity);
  dispatch_semaphore_wait(self->_mattingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = sub_1DED675B4;
  v110[3] = &unk_1E869AFD0;
  colorCopy = color;
  v110[4] = self;
  v84 = queueCopy;
  v111 = v84;
  v85 = callbackCopy;
  v112 = v85;
  processedDisparityCopy = processedDisparity;
  [commandBuffer addCompletedHandler:v110];
  [commandBuffer commit];

  if (stage)
  {
    ++self->_frameIndex;
  }

  yuvSourceDownsampledTexture = self->_yuvSourceDownsampledTexture;
  v87 = yuvSourceDownsampledTexture;

  return yuvSourceDownsampledTexture;
}

- (void)segmentationAverage:(__CVBuffer *)average callbackQueue:(id)queue callback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  if (!self->_foregroundRatioBuffer)
  {
    v10 = [(MTLDeviceSPI *)self->_device newBufferWithLength:4 options:0];
    foregroundRatioBuffer = self->_foregroundRatioBuffer;
    self->_foregroundRatioBuffer = v10;
  }

  v12 = sub_1DED6F954(average);
  v13 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:average textureDescriptor:v12 plane:0 textureCache:self->_textureCache];

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"segmentationAverage"];
  [(GlobalReductionAverage *)self->_globalReductionAverage parallelReductionAverage:commandBuffer inTexture:v13 outGlobalAverage:self->_foregroundRatioBuffer];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1DED6796C;
  v17[3] = &unk_1E869AF80;
  v17[4] = self;
  v15 = queueCopy;
  v18 = v15;
  v16 = callbackCopy;
  v19 = v16;
  [commandBuffer addCompletedHandler:v17];
  [commandBuffer commit];
}

- (void)encodeOutputDisparityToCommandBuffer:(id)buffer inputDisparity:(id)disparity outputDisparity:(id)outputDisparity
{
  bufferCopy = buffer;
  disparityCopy = disparity;
  outputDisparityCopy = outputDisparity;
  if ([outputDisparityCopy pixelFormat] != 25)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:1461 description:{@"Output disparity texture should be MTLPixelFormatR16Float (%lu), but is %lu", 25, objc_msgSend(outputDisparityCopy, "pixelFormat")}];
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_internalDisparityToCanonicalDisparityKernel"];
  [computeCommandEncoder setComputePipelineState:self->_internalDisparityToCanonicalDisparityKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_outputCanonicalDisparity atIndex:1];
  width = [(MTLTexture *)self->_outputCanonicalDisparity width];
  height = [(MTLTexture *)self->_outputCanonicalDisparity height];
  v18[0] = (width + 15) >> 4;
  v18[1] = (height + 15) >> 4;
  v18[2] = 1;
  v16 = xmmword_1DED747F0;
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
  [(CVAFilterHybridResampling *)self->_hybridResampler encodeBilinearScalingToCommandBuffer:bufferCopy source:self->_outputCanonicalDisparity destination:outputDisparityCopy mode:2];
}

- (void)encodeConfidenceMaskToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputDisparityNoInvalid:(id)invalid outputConfidenceMask:(id)mask
{
  disparityCopy = disparity;
  invalidCopy = invalid;
  maskCopy = mask;
  v17 = 0x3F800000C59F6000;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_disparityConfidenceMaskKernel"];
  [computeCommandEncoder setComputePipelineState:self->_disparityConfidenceMaskKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:invalidCopy atIndex:1];
  [computeCommandEncoder setTexture:maskCopy atIndex:2];
  [computeCommandEncoder setBytes:&v17 length:8 atIndex:0];
  v16[0] = ([maskCopy width] + 15) >> 4;
  v16[1] = ([maskCopy height] + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodeFillBackgroundDisparityToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputFacemask:(id)facemask outputDistanceFromKnownDisparity:(id)knownDisparity outputDisparity:(id)outputDisparity backgroundDisparityValue:(float)value minimumDistanceFromValidDisparity:(float)validDisparity
{
  bufferCopy = buffer;
  disparityCopy = disparity;
  facemaskCopy = facemask;
  knownDisparityCopy = knownDisparity;
  outputDisparityCopy = outputDisparity;
  *v31 = validDisparity;
  *&v31[1] = value;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_disparityIsValidKernel"];
  [computeCommandEncoder setComputePipelineState:self->_disparityIsValidKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_disparityIsValidTexture atIndex:1];
  v28 = ([disparityCopy width] + 15) >> 4;
  v29 = ([disparityCopy height] + 15) >> 4;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [computeCommandEncoder endEncoding];
  [(CVAFilterDistanceTransform *)self->_distanceTransform encodeToCommandBuffer:bufferCopy sourceTexture:self->_disparityIsValidTexture destinationTexture:knownDisparityCopy];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  if (facemaskCopy)
  {
    [computeCommandEncoder2 setLabel:@"_fillBackgroundDisparityKernel_faceMask"];
    v23 = &OBJC_IVAR___VideoMattingMetal__fillBackgroundDisparityKernel_faceMask;
  }

  else
  {
    [computeCommandEncoder2 setLabel:@"_fillBackgroundDisparityKernel"];
    v23 = &OBJC_IVAR___VideoMattingMetal__fillBackgroundDisparityKernel;
  }

  [computeCommandEncoder2 setComputePipelineState:*(&self->super.super.isa + *v23)];
  [computeCommandEncoder2 setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder2 setTexture:facemaskCopy atIndex:1];
  [computeCommandEncoder2 setTexture:knownDisparityCopy atIndex:2];
  [computeCommandEncoder2 setTexture:outputDisparityCopy atIndex:3];
  [computeCommandEncoder2 setBytes:v31 length:8 atIndex:0];
  width = [outputDisparityCopy width];
  height = [outputDisparityCopy height];
  v28 = (width + 15) >> 4;
  v29 = (height + 15) >> 4;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [computeCommandEncoder2 endEncoding];
}

- (void)encodeDisparityMasksToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputSegmentation:(id)segmentation useSegmentationOnly:(BOOL)only outputForegroundMask:(id)mask outputIsForeground:(id)foreground disparityMin:(float)min focusDisparity:(float)self0 hardness:(float)self1 minDistToDeweight:(float)self2 unconfidentWeight:(float)self3
{
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  maskCopy = mask;
  foregroundCopy = foreground;
  *v32 = min;
  *&v32[1] = 1.0 / fmaxf((focusDisparity - min) * (1.0 - hardness), 0.001);
  *&v32[2] = focusDisparity;
  *&v32[3] = deweight;
  *&v32[4] = weight;
  onlyCopy = only;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_disparityMasksKernel"];
  [computeCommandEncoder setComputePipelineState:self->_disparityMasksKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:segmentationCopy atIndex:1];
  [computeCommandEncoder setTexture:maskCopy atIndex:2];
  [computeCommandEncoder setTexture:foregroundCopy atIndex:3];
  [computeCommandEncoder setBytes:v32 length:24 atIndex:0];
  v31[0] = ([disparityCopy width] + 15) >> 4;
  v31[1] = ([disparityCopy height] + 15) >> 4;
  v31[2] = 1;
  v29 = xmmword_1DED747F0;
  v30 = 1;
  [computeCommandEncoder dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  [computeCommandEncoder endEncoding];
}

- (void)encodeDiffusionMapToCommandBuffer:(id)buffer color:(id)color diffusionMap:(id)map
{
  colorCopy = color;
  mapCopy = map;
  v14 = 0xC1A000003A83126FLL;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_diffusionMapKernel"];
  [computeCommandEncoder setComputePipelineState:self->_diffusionMapKernel];
  [computeCommandEncoder setTexture:colorCopy atIndex:0];
  [computeCommandEncoder setTexture:mapCopy atIndex:1];
  [computeCommandEncoder setBytes:&v14 length:8 atIndex:0];
  v13[0] = ([mapCopy width] + 15) >> 4;
  v13[1] = ([mapCopy height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [computeCommandEncoder endEncoding];
}

- (void)encodeDisparityTemporalFilterToCommandBuffer:(id)buffer currentDisparity:(id)disparity previousDisparity:(id)previousDisparity currConfidence:(id)confidence prevSmoothConfidence:(id)smoothConfidence colorSim:(id)sim outPrevSmoothConfidence:(id)prevSmoothConfidence outTemporallyFilteredDisparity:(id)self0 disparityFallbackToInvalid:(BOOL)self1 disparityFilterUpdateRate:(float)self2 minimumConfidenceToKeepDisparity:(float)self3 maximumSimilarityToKeepDisparity:(float)self4
{
  disparityCopy = disparity;
  previousDisparityCopy = previousDisparity;
  confidenceCopy = confidence;
  smoothConfidenceCopy = smoothConfidence;
  simCopy = sim;
  prevSmoothConfidenceCopy = prevSmoothConfidence;
  filteredDisparityCopy = filteredDisparity;
  *v36 = rate;
  *&v36[1] = keepDisparity;
  *&v36[2] = toKeepDisparity;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v31 = computeCommandEncoder;
  if (invalid)
  {
    [computeCommandEncoder setLabel:@"_temporalDisparityFilterKernel_fallbackToInvalid"];
    v32 = &OBJC_IVAR___VideoMattingMetal__temporalDisparityFilterKernel_fallbackToInvalid;
  }

  else
  {
    [computeCommandEncoder setLabel:@"_temporalDisparityFilterKernel"];
    v32 = &OBJC_IVAR___VideoMattingMetal__temporalDisparityFilterKernel;
  }

  [v31 setComputePipelineState:*(&self->super.super.isa + *v32)];
  [v31 setTexture:disparityCopy atIndex:0];
  [v31 setTexture:previousDisparityCopy atIndex:1];
  [v31 setTexture:confidenceCopy atIndex:2];
  [v31 setTexture:simCopy atIndex:3];
  [v31 setTexture:smoothConfidenceCopy atIndex:4];
  [v31 setTexture:filteredDisparityCopy atIndex:5];
  [v31 setTexture:prevSmoothConfidenceCopy atIndex:6];
  [v31 setBytes:v36 length:12 atIndex:0];
  v35[0] = ([filteredDisparityCopy width] + 15) >> 4;
  v35[1] = ([filteredDisparityCopy height] + 15) >> 4;
  v35[2] = 1;
  v33 = xmmword_1DED747F0;
  v34 = 1;
  [v31 dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
  [v31 endEncoding];
}

- (void)encodeUpdateConfidenceAndLastValidDisparityToCommandBuffer:(id)buffer disparity:(id)disparity prevSmoothConfidence:(id)confidence lastValidDisparityIn:(id)in lastValidDisparityOut:(id)out currConfidenceOut:(id)confidenceOut useTemporalConfidence:(BOOL)temporalConfidence
{
  disparityCopy = disparity;
  confidenceCopy = confidence;
  inCopy = in;
  outCopy = out;
  confidenceOutCopy = confidenceOut;
  v26 = self->_frameIndex == 0;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v21 = computeCommandEncoder;
  if (temporalConfidence)
  {
    [computeCommandEncoder setLabel:@"_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence"];
    v22 = &OBJC_IVAR___VideoMattingMetal__updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence;
  }

  else
  {
    [computeCommandEncoder setLabel:@"_updateConfidenceAndLastValidDisparityKernel"];
    v22 = &OBJC_IVAR___VideoMattingMetal__updateConfidenceAndLastValidDisparityKernel;
  }

  [v21 setComputePipelineState:*(&self->super.super.isa + *v22)];
  [v21 setTexture:disparityCopy atIndex:0];
  [v21 setTexture:confidenceCopy atIndex:1];
  [v21 setTexture:inCopy atIndex:2];
  [v21 setTexture:outCopy atIndex:3];
  [v21 setTexture:confidenceOutCopy atIndex:4];
  [v21 setBytes:&v26 length:1 atIndex:0];
  v25[0] = ([disparityCopy width] + 15) >> 4;
  v25[1] = ([disparityCopy height] + 15) >> 4;
  v25[2] = 1;
  v23 = xmmword_1DED747F0;
  v24 = 1;
  [v21 dispatchThreadgroups:v25 threadsPerThreadgroup:&v23];
  [v21 endEncoding];
}

- (void)encodeSimpleConfidenceToCommandBuffer:(id)buffer disparity:(id)disparity outConfidence:(id)confidence
{
  disparityCopy = disparity;
  confidenceCopy = confidence;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_simpleConfidenceKernel"];
  [computeCommandEncoder setComputePipelineState:self->_simpleConfidenceKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:confidenceCopy atIndex:1];
  v13[0] = ([disparityCopy width] + 15) >> 4;
  v13[1] = ([disparityCopy height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [computeCommandEncoder endEncoding];
}

- (void)encodeBackgroundFillToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputMask:(id)mask outputDisparity:(id)outputDisparity
{
  bufferCopy = buffer;
  disparityCopy = disparity;
  maskCopy = mask;
  outputDisparityCopy = outputDisparity;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_bgFillYKernel"];
  [computeCommandEncoder setComputePipelineState:self->_bgFillYKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setTexture:self->_bgFillTempTexture atIndex:2];
  v20 = vdupq_n_s64(1uLL);
  v17 = xmmword_1DED747D8;
  v18 = 1;
  v19 = ([disparityCopy width] + 31) >> 5;
  [computeCommandEncoder dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_bgFillXKernel"];
  [computeCommandEncoder2 setComputePipelineState:self->_bgFillXKernel];
  [computeCommandEncoder2 setTexture:self->_bgFillTempTexture atIndex:0];
  [computeCommandEncoder2 setTexture:maskCopy atIndex:1];
  [computeCommandEncoder2 setTexture:outputDisparityCopy atIndex:2];
  height = [disparityCopy height];
  v19 = 1;
  v20.i64[0] = (height + 31) >> 5;
  v20.i64[1] = 1;
  v17 = xmmword_1DED747C0;
  v18 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder2 endEncoding];
}

- (void)encodeInvalidDisparityMaskToCommandBuffer:(id)buffer inputDisparity:(id)disparity outputMask:(id)mask
{
  disparityCopy = disparity;
  maskCopy = mask;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_invalidDisparityMaskKernel"];
  [computeCommandEncoder setComputePipelineState:self->_invalidDisparityMaskKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  v13[0] = ([disparityCopy width] + 15) >> 4;
  v13[1] = ([disparityCopy height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [computeCommandEncoder endEncoding];
}

- (void)encodeEdgeAwareFillToCommandBuffer:(id)buffer inputDisparity:(id)disparity inputDomainTransformX:(id)x inputDomainTransformY:(id)y outputDisparity:(id)outputDisparity
{
  bufferCopy = buffer;
  disparityCopy = disparity;
  xCopy = x;
  yCopy = y;
  outputDisparityCopy = outputDisparity;
  v32 = 0x141700000;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_edgeAwareFillXKernel"];
  [computeCommandEncoder setComputePipelineState:self->_edgeAwareFillXKernel];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];
  [computeCommandEncoder setTexture:xCopy atIndex:1];
  [computeCommandEncoder setTexture:self->_edgeAwareFillTempTexture atIndex:2];
  [computeCommandEncoder setBytes:&v32 length:8 atIndex:0];
  v29 = (([xCopy width] >> 1) + 15) >> 4;
  v30 = ([xCopy height] + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_edgeAwareFillYKernel"];
  [computeCommandEncoder2 setComputePipelineState:self->_edgeAwareFillYKernel];
  [computeCommandEncoder2 setTexture:self->_edgeAwareFillTempTexture atIndex:0];
  [computeCommandEncoder2 setTexture:yCopy atIndex:1];
  [computeCommandEncoder2 setTexture:outputDisparityCopy atIndex:2];
  [computeCommandEncoder2 setBytes:&v32 length:8 atIndex:0];
  width = [yCopy width];
  height = [yCopy height];
  v29 = (width + 15) >> 4;
  v30 = ((height >> 1) + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [computeCommandEncoder2 endEncoding];
  computeCommandEncoder3 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder3 setLabel:@"_edgeAwareFillXKernel"];
  [computeCommandEncoder3 setComputePipelineState:self->_edgeAwareFillXKernel];
  [computeCommandEncoder3 setTexture:outputDisparityCopy atIndex:0];
  [computeCommandEncoder3 setTexture:xCopy atIndex:1];
  [computeCommandEncoder3 setTexture:self->_edgeAwareFillTempTexture atIndex:2];
  [computeCommandEncoder3 setBytes:&v32 length:8 atIndex:0];
  width2 = [xCopy width];
  height2 = [xCopy height];
  v29 = ((width2 >> 1) + 15) >> 4;
  v30 = (height2 + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [computeCommandEncoder3 endEncoding];
  computeCommandEncoder4 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder4 setLabel:@"_edgeAwareFillYKernel"];
  [computeCommandEncoder4 setComputePipelineState:self->_edgeAwareFillYKernel];
  [computeCommandEncoder4 setTexture:self->_edgeAwareFillTempTexture atIndex:0];
  [computeCommandEncoder4 setTexture:yCopy atIndex:1];
  [computeCommandEncoder4 setTexture:outputDisparityCopy atIndex:2];
  [computeCommandEncoder4 setBytes:&v32 length:8 atIndex:0];
  width3 = [yCopy width];
  height3 = [yCopy height];
  v29 = (width3 + 15) >> 4;
  v30 = ((height3 >> 1) + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [computeCommandEncoder4 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [computeCommandEncoder4 endEncoding];
}

- (void)encodeDomainTransformToCommandBuffer:(id)buffer inputDiffusionMap:(id)map inputDistanceFromKnownDisparity:(id)disparity outputDomainTransformX:(id)x outputDomainTransformY:(id)y
{
  bufferCopy = buffer;
  mapCopy = map;
  disparityCopy = disparity;
  xCopy = x;
  yCopy = y;
  v23 = 1087373312;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_domainTransformXKernel"];
  [computeCommandEncoder setComputePipelineState:self->_domainTransformXKernel];
  [computeCommandEncoder setTexture:mapCopy atIndex:0];
  [computeCommandEncoder setTexture:disparityCopy atIndex:1];
  [computeCommandEncoder setTexture:xCopy atIndex:2];
  [computeCommandEncoder setBytes:&v23 length:4 atIndex:0];
  v21 = 1;
  v22.i64[0] = ([xCopy height] + 31) >> 5;
  v22.i64[1] = 1;
  v19 = xmmword_1DED747C0;
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_domainTransformYKernel"];
  [computeCommandEncoder2 setComputePipelineState:self->_domainTransformYKernel];
  [computeCommandEncoder2 setTexture:mapCopy atIndex:0];
  [computeCommandEncoder2 setTexture:disparityCopy atIndex:1];
  [computeCommandEncoder2 setTexture:yCopy atIndex:2];
  [computeCommandEncoder2 setBytes:&v23 length:4 atIndex:0];
  v21 = ([yCopy width] + 31) >> 5;
  v22 = vdupq_n_s64(1uLL);
  v19 = xmmword_1DED747D8;
  v20 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder2 endEncoding];
}

- (void)encodeDisparityCleanupToCommandBuffer:(id)buffer prevDisparity:(id)disparity currDisparity:(id)currDisparity colorSim:(id)sim cleanDisparity:(id)cleanDisparity
{
  disparityCopy = disparity;
  currDisparityCopy = currDisparity;
  simCopy = sim;
  cleanDisparityCopy = cleanDisparity;
  v22 = 0x3F0000003D4CCCCDLL;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v17 = computeCommandEncoder;
  if (self->_frameIndex)
  {
    [computeCommandEncoder setLabel:@"_disparityCleanupKernel"];
    v18 = &OBJC_IVAR___VideoMattingMetal__disparityCleanupKernel;
  }

  else
  {
    [computeCommandEncoder setLabel:@"_disparityCleanupKernel_firstFrame"];
    v18 = &OBJC_IVAR___VideoMattingMetal__disparityCleanupKernel_firstFrame;
  }

  [v17 setComputePipelineState:*(&self->super.super.isa + *v18)];
  [v17 setTexture:disparityCopy atIndex:0];
  [v17 setTexture:disparityCopy atIndex:1];
  [v17 setTexture:currDisparityCopy atIndex:2];
  [v17 setTexture:simCopy atIndex:3];
  [v17 setTexture:cleanDisparityCopy atIndex:4];
  [v17 setBytes:&v22 length:8 atIndex:0];
  v21[0] = ([cleanDisparityCopy width] + 15) >> 4;
  v21[1] = ([cleanDisparityCopy height] + 15) >> 4;
  v21[2] = 1;
  v19 = xmmword_1DED747F0;
  v20 = 1;
  [v17 dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [v17 endEncoding];
}

- (void)encodeColorSimL1ToCommandBuffer:(id)buffer prevSource:(id)source currSource:(id)currSource destination:(id)destination
{
  sourceCopy = source;
  currSourceCopy = currSource;
  destinationCopy = destination;
  v17 = 1084227584;
  v18 = sourceCopy == 0;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_colorSimL1Kernel"];
  [computeCommandEncoder setComputePipelineState:self->_colorSimL1Kernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:currSourceCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  [computeCommandEncoder setBytes:&v17 length:8 atIndex:0];
  v16[0] = ([destinationCopy width] + 15) >> 4;
  v16[1] = ([destinationCopy height] + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodeColorSimToCommandBuffer:(id)buffer prevSource:(id)source currSource:(id)currSource destination:(id)destination similarityScaleFactor:(float)factor
{
  sourceCopy = source;
  currSourceCopy = currSource;
  destinationCopy = destination;
  factorCopy = factor;
  v20 = sourceCopy == 0;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_colorSimKernel"];
  [computeCommandEncoder setComputePipelineState:self->_colorSimKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:currSourceCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  [computeCommandEncoder setBytes:&factorCopy length:8 atIndex:0];
  v18[0] = ([destinationCopy width] + 15) >> 4;
  v18[1] = ([destinationCopy height] + 15) >> 4;
  v18[2] = 1;
  v16 = xmmword_1DED747F0;
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)encodeCopyTextureToCommandBuffer:(id)buffer inTexture:(id)texture outTexture:(id)outTexture
{
  bufferCopy = buffer;
  textureCopy = texture;
  outTextureCopy = outTexture;
  width = [textureCopy width];
  height = [textureCopy height];
  depth = [textureCopy depth];
  blitCommandEncoder = [bufferCopy blitCommandEncoder];
  memset(v16, 0, sizeof(v16));
  v15[0] = width;
  v15[1] = height;
  v15[2] = depth;
  memset(v14, 0, sizeof(v14));
  [blitCommandEncoder copyFromTexture:textureCopy sourceSlice:0 sourceLevel:0 sourceOrigin:v16 sourceSize:v15 toTexture:outTextureCopy destinationSlice:0 destinationLevel:0 destinationOrigin:v14];
  [blitCommandEncoder endEncoding];
}

- (void)setStageLightProxyCubeData:(id)data cubeData:(id)cubeData
{
  dataCopy = data;
  cubeDataCopy = cubeData;
  self->_isBgColorLutBlack = 1;
  if (self->_lastStageLightProxyCubeData != dataCopy)
  {
    objc_storeStrong(&self->_lastStageLightProxyCubeData, data);
    v8 = sub_1DED6FF78(dataCopy, self->_device);
    stageLightProxyLut = self->_stageLightProxyLut;
    self->_stageLightProxyLut = v8;
  }

  if (self->_lastStageLightCubeData != cubeDataCopy)
  {
    objc_storeStrong(&self->_lastStageLightCubeData, cubeData);
    v10 = sub_1DED6FF78(cubeDataCopy, self->_device);
    stageLightLut = self->_stageLightLut;
    self->_stageLightLut = v10;
  }
}

- (void)setPortraitForegroundCubeData:(id)data backgroundCubeData:(id)cubeData
{
  dataCopy = data;
  cubeDataCopy = cubeData;
  self->_isBgColorLutBlack = 0;
  [(VideoMattingMetal *)self setFgLut:dataCopy];
  [(VideoMattingMetal *)self setBgLut:cubeDataCopy];
}

- (void)setFgLut:(id)lut
{
  lutCopy = lut;
  if (self->_lastFgLutData != lutCopy)
  {
    v8 = lutCopy;
    objc_storeStrong(&self->_lastFgLutData, lut);
    v6 = sub_1DED6FF78(v8, self->_device);
    fgColorLut = self->_fgColorLut;
    self->_fgColorLut = v6;

    lutCopy = v8;
  }
}

- (void)setBgLut:(id)lut
{
  lutCopy = lut;
  if (self->_lastBgLutData != lutCopy)
  {
    v8 = lutCopy;
    objc_storeStrong(&self->_lastBgLutData, lut);
    v6 = sub_1DED6FF78(v8, self->_device);
    bgColorLut = self->_bgColorLut;
    self->_bgColorLut = v6;

    lutCopy = v8;
  }
}

- (void)setAlphaLut:(float)lut gammaExponent:(float)exponent
{
  if (lut != 2.0)
  {
    exponentCopy = exponent;
    selfCopy = self;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"VideoMattingMetal.mm" lineNumber:945 description:{@"contrastExponent value %f is not supported", lut}];

    exponent = exponentCopy;
    self = selfCopy;
  }

  self->_gammaExponent = exponent;
}

- (void)prewarmGuidedFilter:(id)filter device:(id)device commandBuffer:(id)buffer width:(int)width height:(int)height width2:(int)width2 height2:(int)height2
{
  filterCopy = filter;
  deviceCopy = device;
  bufferCopy = buffer;
  [filterCopy epsilon];
  LODWORD(v14) = 1008981770;
  [filterCopy setEpsilon:v14];
  operator new();
}

- (void)dealloc
{
  scaledSourceCV = self->_scaledSourceCV;
  v4 = self->_scaledSourceCV[0];
  if (v4)
  {
    CVPixelBufferRelease(v4);
  }

  v5 = scaledSourceCV[1];
  if (v5)
  {
    CVPixelBufferRelease(v5);
  }

  yuvSourceDownsampledBuffer = self->_yuvSourceDownsampledBuffer;
  if (yuvSourceDownsampledBuffer)
  {
    CVPixelBufferRelease(yuvSourceDownsampledBuffer);
  }

  hwScaler = self->_hwScaler;
  if (hwScaler)
  {
    CFRelease(hwScaler);
    self->_hwScaler = 0;
  }

  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v9.receiver = self;
  v9.super_class = VideoMattingMetal;
  [(ImageSaverRegistrator *)&v9 dealloc];
}

- (VideoMattingMetal)initWithStaticParams:(const VideoMattingStaticParams *)params renderingDisparityUpdateRate:(float)rate renderingDisparityBlurRadius:(float)radius renderingLensFocalLength_mm:(float)length_mm useTemporalConfidence:(BOOL)confidence metalContext:(void *)context error:(id *)error
{
  v327[1] = *MEMORY[0x1E69E9840];
  v144.receiver = self;
  v144.super_class = VideoMattingMetal;
  v16 = [(ImageSaverRegistrator *)&v144 init];
  v17 = v16;
  if (v16)
  {
    v16->_sdofRenderingHasForegroundBlur = params->supportsForegroundBlur;
    v16->_deadzoneInCinematic = params->deadzoneInCinematic;
    v16->_renderStateIsConfigured = 0;
    v16->_width = params->colorWidth;
    v16->_height = params->colorHeight;
    v16->_width2 = params->guidedFilterWidth;
    p_width2 = &v16->_width2;
    v16->_height2 = params->guidedFilterHeight;
    width2 = v16->_width2;
    v19 = MEMORY[0x1E696AEC0];
    0xFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"_width2: %d outside bounds [2, %d] for guided filter", width2, 0xFFFFLL];
    v21 = [v19 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 423, 0xFFFFLL];
    sub_1DED25D64(width2 < 2, error, 4294944393, v21);

    if (width2 >= 2)
    {
      height2 = v17->_height2;
      v23 = MEMORY[0x1E696AEC0];
      0xFFFFLL2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_height2: %d outside bounds [2, %d] for guided filter", height2, 0xFFFFLL];
      v25 = [v23 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 433, 0xFFFFLL2];
      sub_1DED25D64(height2 < 2, error, 4294944393, v25);

      if (height2 >= 2)
      {
        v17->_infConvolutionScale = 1.0;
        v17->_doDisparityDiffusion = 1;
        v28 = +[CVAPreferenceManager defaults];
        v17->_enableInfConvolution = [v28 BOOLForKey:@"disableInfConvolution"] ^ 1;

        v29 = +[CVAPreferenceManager defaults];
        v17->_mattingUsesPostprocessing = [v29 BOOLForKey:@"disablePostprocessingForMatting"] ^ 1;

        v30 = +[CVAPreferenceManager defaults];
        v17->_renderingUsesPostprocessing = [v30 BOOLForKey:@"disablePostprocessingForRendering"] ^ 1;

        v31 = +[CVAPreferenceManager defaults];
        v17->_doFaceMask = [v31 BOOLForKey:@"enableFaceMaskPostprocessing"];

        v143 = objc_opt_new();
        [v143 setConstantValue:p_width2 type:29 withName:@"kDistanceTransformWidth"];
        [v143 setConstantValue:&v17->_height2 type:29 withName:@"kDistanceTransformHeight"];
        v142 = 0;
        [v143 setConstantValue:&v142 type:53 withName:@"kDoVignetting"];
        objc_storeStrong(&v17->_device, *(context + 1));
        objc_storeStrong(&v17->_commandQueue, *(context + 2));
        objc_storeStrong(&v17->_defaultLibrary, *(context + 3));
        objc_storeStrong(&v17->_pipelineLibrary, *(context + 4));
        v17->_metalContext = context;
        if (v17->_sdofRenderingHasForegroundBlur)
        {
          v32 = [[GlobalReductionAverage alloc] initWithFigMetalContext:*context textureSize:256.0, 192.0];
          globalReductionAverage = v17->_globalReductionAverage;
          v17->_globalReductionAverage = v32;
        }

        v17->_lastCommittedCommand = 0;
        v326 = *MEMORY[0x1E6966000];
        v327[0] = &unk_1F5A09F00;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v327 forKeys:&v326 count:1];
        if (CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], v34, v17->_device, 0, &v17->_textureCache))
        {
          v35 = 1;
        }

        else
        {
          v35 = v17->_textureCache == 0;
        }

        v36 = MEMORY[0x1E696AEC0];
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error allocating texture cache"];
        v38 = [v36 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 479, v37];
        sub_1DED25D64(v35, error, 4294944382, v38);

        if (v35)
        {
          goto LABEL_40;
        }

        v17->_isBgColorLutBlack = 0;
        v17->_renderingDisparityUpdateRate = rate;
        v17->_renderingDisparityBlurRadius = radius;
        v17->_renderingLensFocalLength_mm = length_mm;
        v17->_useTemporalConfidence = confidence;
        v39 = [[CVAPhotoMTLRingBuffer alloc] initWithLength:36 options:0 device:v17->_device];
        disparityConfig = v17->_disparityConfig;
        v17->_disparityConfig = v39;

        v41 = v17->_disparityConfig;
        v42 = MEMORY[0x1E696AEC0];
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[_Nonnull id<MTLDeviceSPI> newBufferWithLength:%lu] is nil", 36];
        v44 = [v42 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 509, v43];
        sub_1DED25D64(v41 == 0, error, 4294944382, v44);

        if (!v41)
        {
          goto LABEL_40;
        }

        v45 = [CVAFilterDiffusion alloc];
        LODWORD(v46) = 998310275;
        LODWORD(v47) = 1.0;
        v48 = [(CVAFilterDiffusion *)v45 initWithFigMetalContext:*context bufferWidth:*p_width2 bufferHeight:v17->_height2 edgeVariance:error stepSize:v46 error:v47];
        diffusion = v17->_diffusion;
        v17->_diffusion = v48;

        if (!v17->_diffusion)
        {
          goto LABEL_40;
        }

        if (v17->_doFaceMask && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CVAPhoto: Facemask-based disparity post-processing has been deprecated.", buf, 2u);
        }

        if ((v50 = [CVAFilterDistanceTransform alloc], v51 = *context, v52 = v17->_height2, *buf = *p_width2, v146 = v52, v147 = 1, v53 = [(CVAFilterDistanceTransform *)v50 initWithFigMetalContext:v51 textureSize:buf error:error], distanceTransform = v17->_distanceTransform, v17->_distanceTransform = v53, distanceTransform, !v17->_distanceTransform)
          || (v55 = [CVAFilterBox alloc], v56 = *context, v57 = v17->_height2, *buf = *p_width2, v146 = v57, v147 = 1, v58 = [(CVAFilterBox *)v55 initWithFigMetalContext:v56 textureSize:buf error:error], boxFilter = v17->_boxFilter, v17->_boxFilter = v58, boxFilter, !v17->_boxFilter)
          || (v60 = [[CVAFilterColorAlphaToFgBg alloc] initWithFigMetalContext:*context error:error], colorAlphaToFgBg = v17->_colorAlphaToFgBg, v17->_colorAlphaToFgBg = v60, colorAlphaToFgBg, !v17->_colorAlphaToFgBg)
          || (v62 = [[CVAFilterHybridResampling alloc] initWithFigMetalContext:*context commandQueue:v17->_commandQueue error:error], hybridResampler = v17->_hybridResampler, v17->_hybridResampler = v62, hybridResampler, !v17->_hybridResampler)
          || (v134 = sub_1DED5D1F8(@"harvesting.enabled", @"com.apple.coremedia", 0), v135 = ((floorf(((params->kernelSize * 0.5) * *p_width2) / params->alphaWidth) * 2.0) + 1.0), !v134) && (v64 = [objc_alloc(MEMORY[0x1E69745D0]) initWithDevice:v17->_device kernelDiameter:v135], guidedFilter = v17->_guidedFilter, v17->_guidedFilter = v64, guidedFilter, v66 = v17->_guidedFilter, v67 = MEMORY[0x1E696AEC0], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"MPSImageGuidedFilter is nil"), v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "stringWithFormat:", @"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 592, v68), v69 = objc_claimAutoreleasedReturnValue(), sub_1DED25D64(v66 == 0, error, 4294944382, v69), v69, v68, !v66)
          || ([(MPSImageGuidedFilter *)v17->_guidedFilter setRescaleCoefficients:0], [(MPSImageGuidedFilter *)v17->_guidedFilter setReconstructionCoefficientsSampleBicubic:1], v70 = [CVAFilterGuided alloc], commandQueue = v17->_commandQueue, v72 = *p_width2, v73 = v17->_height2, laplacianLimitingDownsampling = params->laplacianLimitingDownsampling, infConvolutionDownsampling = params->infConvolutionDownsampling, v76 = *&params->alphaWidth, *&v77 = v76, *(&v77 + 1) = HIDWORD(v76), v140 = v77, v78 = *context, *buf = v72, v146 = v73, v147 = 1, v141 = 1, LODWORD(v132) = laplacianLimitingDownsampling, HIDWORD(v132) = params->laplacianLimitingBlurSize, v79 = [(CVAFilterGuided *)v70 initWithFigMetalContext:v78 commandQueue:commandQueue textureSize:buf alphaSize:&v140 kernelSize:v135 infConvolutionDownsampling:infConvolutionDownsampling laplacianLimitingDownsampling:v132 laplacianLimitingBlurSize:error error:?], cvaGuidedFilter = v17->_cvaGuidedFilter, v17->_cvaGuidedFilter = v79, cvaGuidedFilter, !v17->_cvaGuidedFilter)
          || (v81 = [[CVAFilterMaskedVariableBlur alloc] initWithFigMetalContext:*context commandQueue:v17->_commandQueue kernelSize:7 error:error], maskedVariableBlur = v17->_maskedVariableBlur, v17->_maskedVariableBlur = v81, maskedVariableBlur, !v17->_maskedVariableBlur)
          || (v83 = [[CVAFilterRenderStagelight alloc] initWithFigMetalContext:*v17->_metalContext error:error], stagelightFilter = v17->_stagelightFilter, v17->_stagelightFilter = v83, stagelightFilter, !v17->_stagelightFilter)
          || (v85 = [[CVAFilterRenderComposite alloc] initWithFigMetalContext:*v17->_metalContext error:error], renderComposite = v17->_renderComposite, v17->_renderComposite = v85, renderComposite, !v17->_renderComposite))
        {
LABEL_40:
          v26 = 0;
LABEL_41:

          goto LABEL_5;
        }

        v139 = &v143;
        *buf = &v17->_disparityDecimateKernel;
        v146 = @"disparityDecimate";
        v147 = 0;
        p_colorSimKernel = &v17->_colorSimKernel;
        coeffHistory = @"colorSim";
        v150 = 0;
        p_colorSimL1Kernel = &v17->_colorSimL1Kernel;
        v152 = @"colorSimL1";
        v153 = 0;
        p_temporalCoefficientsFilterKernel = &v17->_temporalCoefficientsFilterKernel;
        v155 = @"temporalFilterCoefficients";
        v156 = 0;
        p_guidedFilterWeightKernel = &v17->_guidedFilterWeightKernel;
        v158 = @"guidedFilterWeight";
        v159 = 0;
        p_disparityConfidenceMaskKernel = &v17->_disparityConfidenceMaskKernel;
        p_gfForegroundMask = @"disparityConfidenceMask";
        v162 = 0;
        p_disparityMasksKernel = &v17->_disparityMasksKernel;
        v164 = @"disparityMasks";
        p_gfWeight = 0;
        p_disparityIsValidKernel = &v17->_disparityIsValidKernel;
        v167 = @"disparityIsValid";
        v168 = 0;
        p_domainTransformXKernel = &v17->_domainTransformXKernel;
        v170 = @"domainTransformX";
        v171 = v143;
        p_domainTransformYKernel = &v17->_domainTransformYKernel;
        v173 = @"domainTransformY";
        v174 = v171;
        p_edgeAwareFillXKernel = &v17->_edgeAwareFillXKernel;
        v176 = @"edgeAwareFillX";
        disparity = v174;
        p_edgeAwareFillYKernel = &v17->_edgeAwareFillYKernel;
        v179 = @"edgeAwareFillY";
        v180 = disparity;
        p_invalidDisparityMaskKernel = &v17->_invalidDisparityMaskKernel;
        v182 = @"invalidDisparityMask";
        v183 = 0;
        p_bgFillXKernel = &v17->_bgFillXKernel;
        p_disparityInScreenAspectRatio = @"bgFillX";
        v186 = 0;
        p_bgFillYKernel = &v17->_bgFillYKernel;
        v188 = @"bgFillY";
        p_facemaskDisparity = 0;
        p_internalDisparityToCanonicalDisparityKernel = &v17->_internalDisparityToCanonicalDisparityKernel;
        v191 = @"internalDisparityToCanonicalDisparity";
        v192 = 0;
        p_simpleConfidenceKernel = &v17->_simpleConfidenceKernel;
        v194 = @"simpleConfidence";
        v195 = 0;
        p_roughDisparityKernel = &v17->_roughDisparityKernel;
        p_filledDisparityNoInvalidTexture = @"roughDisparity";
        v198 = 0;
        p_diffusionMapKernel = &v17->_diffusionMapKernel;
        v200 = @"diffusionMap";
        p_temporallyFilteredDisparity = 0;
        p_renderingDisparityDeweightKernel = &v17->_renderingDisparityDeweightKernel;
        v203 = @"disparityDeweightFg";
        v204 = 0;
        p_renderingDisparityFillAndFilterKernel = &v17->_renderingDisparityFillAndFilterKernel;
        v206 = @"disparityFillAndFilter";
        v207 = 0;
        p_disparityCleanupKernel = &v17->_disparityCleanupKernel;
        smoothConfidence = @"disparityCleanup";
        v210 = sub_1DED6C1F0(&v139, @"kFirstFrame", 0);
        p_disparityCleanupKernel_firstFrame = &v17->_disparityCleanupKernel_firstFrame;
        v212 = @"disparityCleanup";
        v213 = sub_1DED6C1F0(&v139, @"kFirstFrame", 1);
        p_updateConfidenceAndLastValidDisparityKernel = &v17->_updateConfidenceAndLastValidDisparityKernel;
        v215 = @"updateConfidenceAndLastValidDisparity";
        v216 = sub_1DED6C1F0(&v139, @"kUseTemporalConfidence", 0);
        p_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence = &v17->_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence;
        v218 = @"updateConfidenceAndLastValidDisparity";
        v219 = sub_1DED6C1F0(&v139, @"kUseTemporalConfidence", 1);
        p_temporalDisparityFilterKernel = &v17->_temporalDisparityFilterKernel;
        smoothDisparity = @"temporalDisparityFilter";
        v222 = sub_1DED6C1F0(&v139, @"kTemporalDisparityFallbackToInvalid", 0);
        p_temporalDisparityFilterKernel_fallbackToInvalid = &v17->_temporalDisparityFilterKernel_fallbackToInvalid;
        v224 = @"temporalDisparityFilter";
        v225 = sub_1DED6C1F0(&v139, @"kTemporalDisparityFallbackToInvalid", 1);
        p_fillBackgroundDisparityKernel = &v17->_fillBackgroundDisparityKernel;
        v227 = @"fillBackgroundDisparity";
        v228 = sub_1DED6C1F0(&v139, @"kUseFacemaskInFillBackgroundDisparity", 0);
        p_fillBackgroundDisparityKernel_faceMask = &v17->_fillBackgroundDisparityKernel_faceMask;
        v230 = @"fillBackgroundDisparity";
        v231 = sub_1DED6C1F0(&v139, @"kUseFacemaskInFillBackgroundDisparity", 1);
        p_halfDownSampler = &v17->_halfDownSampler;
        p_outputCanonicalDisparity = @"halfDownsample";
        v234 = 0;
        p_alphaFillKernel = &v17->_alphaFillKernel;
        v236 = @"fillAlpha";
        p_diffusionMapTexture = 0;
        p_rotateAndFitIntoRectKernel = &v17->_rotateAndFitIntoRectKernel;
        v239 = @"rotateAndFitIntoRectKernel";
        v240 = 0;
        sub_1DED6C284(&v140, buf, 0x20uLL);

        v88 = *(&v140 + 1);
        v87 = v140;
        if (v140 != *(&v140 + 1))
        {
          while (1)
          {
            sub_1DED422A0(*v87, *context, *(v87 + 8), *(v87 + 16));
            if (!**v87)
            {
              break;
            }

            v87 += 24;
            if (v87 == v88)
            {
              goto LABEL_30;
            }
          }

          v26 = 0;
          goto LABEL_49;
        }

LABEL_30:
        *buf = &v17->_coeff;
        v146 = 125;
        LODWORD(v147) = *p_width2;
        HIDWORD(v147) = v17->_height2;
        p_colorSimKernel = 0;
        coeffHistory = v17->_coeffHistory;
        v150 = 115;
        LODWORD(p_colorSimL1Kernel) = *p_width2;
        HIDWORD(p_colorSimL1Kernel) = v17->_height2;
        v152 = 0;
        v153 = &v17->_coeffHistory[1];
        p_temporalCoefficientsFilterKernel = 115;
        LODWORD(v155) = *p_width2;
        HIDWORD(v155) = v17->_height2;
        v156 = 0;
        p_guidedFilterWeightKernel = &v17->_alphaNoPostprocessing;
        v158 = 10;
        v159 = *&params->alphaWidth;
        p_disparityConfidenceMaskKernel = 0;
        p_gfForegroundMask = &v17->_gfForegroundMask;
        v162 = 10;
        LODWORD(p_disparityMasksKernel) = *p_width2;
        HIDWORD(p_disparityMasksKernel) = v17->_height2;
        v164 = 0;
        p_gfWeight = &v17->_gfWeight;
        p_disparityIsValidKernel = 25;
        LODWORD(v167) = *p_width2;
        HIDWORD(v167) = v17->_height2;
        v168 = 0;
        p_domainTransformXKernel = v17->_disparityLastValidValue;
        v170 = 25;
        LODWORD(v171) = *p_width2;
        HIDWORD(v171) = v17->_height2;
        p_domainTransformYKernel = 0;
        v173 = &v17->_disparityLastValidValue[1];
        v174 = 25;
        LODWORD(p_edgeAwareFillXKernel) = *p_width2;
        HIDWORD(p_edgeAwareFillXKernel) = v17->_height2;
        v176 = 0;
        disparity = v17->_disparity;
        p_edgeAwareFillYKernel = 25;
        LODWORD(v179) = *p_width2;
        HIDWORD(v179) = v17->_height2;
        v180 = 0;
        p_invalidDisparityMaskKernel = &v17->_disparity[1];
        v182 = 25;
        LODWORD(v183) = *p_width2;
        HIDWORD(v183) = v17->_height2;
        p_bgFillXKernel = 0;
        p_disparityInScreenAspectRatio = &v17->_disparityInScreenAspectRatio;
        v186 = 25;
        LODWORD(p_bgFillYKernel) = 2 * *p_width2;
        HIDWORD(p_bgFillYKernel) = 2 * v17->_height2;
        v188 = 0;
        p_facemaskDisparity = &v17->_facemaskDisparity;
        p_internalDisparityToCanonicalDisparityKernel = 25;
        LODWORD(v191) = *p_width2;
        HIDWORD(v191) = v17->_height2;
        v192 = 0;
        p_simpleConfidenceKernel = &v17->_filledDisparityTexture;
        v194 = 25;
        LODWORD(v195) = *p_width2;
        HIDWORD(v195) = v17->_height2;
        p_roughDisparityKernel = 0;
        p_filledDisparityNoInvalidTexture = &v17->_filledDisparityNoInvalidTexture;
        v198 = 25;
        LODWORD(p_diffusionMapKernel) = *p_width2;
        HIDWORD(p_diffusionMapKernel) = v17->_height2;
        v200 = 0;
        p_temporallyFilteredDisparity = &v17->_temporallyFilteredDisparity;
        p_renderingDisparityDeweightKernel = 25;
        LODWORD(v203) = *p_width2;
        HIDWORD(v203) = v17->_height2;
        v204 = 0;
        p_renderingDisparityFillAndFilterKernel = &v17->_disparityConfidenceMaskTexture;
        v206 = 25;
        LODWORD(v207) = *p_width2;
        HIDWORD(v207) = v17->_height2;
        p_disparityCleanupKernel = 0;
        smoothConfidence = v17->_smoothConfidence;
        v210 = 25;
        LODWORD(p_disparityCleanupKernel_firstFrame) = *p_width2;
        HIDWORD(p_disparityCleanupKernel_firstFrame) = v17->_height2;
        v212 = 0;
        v213 = &v17->_smoothConfidence[1];
        p_updateConfidenceAndLastValidDisparityKernel = 25;
        LODWORD(v215) = *p_width2;
        HIDWORD(v215) = v17->_height2;
        v216 = 0;
        p_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence = &v17->_colorSim;
        v218 = 10;
        LODWORD(v219) = *p_width2;
        HIDWORD(v219) = v17->_height2;
        p_temporalDisparityFilterKernel = 0;
        smoothDisparity = v17->_smoothDisparity;
        v222 = 55;
        LODWORD(p_temporalDisparityFilterKernel_fallbackToInvalid) = *p_width2;
        HIDWORD(p_temporalDisparityFilterKernel_fallbackToInvalid) = v17->_height2;
        v224 = 0;
        v225 = &v17->_smoothDisparity[1];
        p_fillBackgroundDisparityKernel = 55;
        LODWORD(v227) = *p_width2;
        HIDWORD(v227) = v17->_height2;
        v228 = 0;
        p_fillBackgroundDisparityKernel_faceMask = &v17->_roughDisparity;
        v230 = 25;
        LODWORD(v231) = *p_width2;
        HIDWORD(v231) = v17->_height2;
        p_halfDownSampler = 0;
        p_outputCanonicalDisparity = &v17->_outputCanonicalDisparity;
        v234 = 25;
        LODWORD(p_alphaFillKernel) = *p_width2;
        HIDWORD(p_alphaFillKernel) = v17->_height2;
        v236 = 0;
        p_diffusionMapTexture = &v17->_diffusionMapTexture;
        p_rotateAndFitIntoRectKernel = 25;
        LODWORD(v239) = *p_width2;
        HIDWORD(v239) = v17->_height2;
        v240 = 0;
        p_disparityIsValidTexture = &v17->_disparityIsValidTexture;
        v242 = 13;
        v243 = *p_width2;
        v244 = v17->_height2;
        v245 = 0;
        p_distanceFromKnownDisparityTexture = &v17->_distanceFromKnownDisparityTexture;
        v247 = 25;
        v248 = *p_width2;
        v249 = v17->_height2;
        v250 = 0;
        p_domainTransformXTexture = &v17->_domainTransformXTexture;
        v252 = 25;
        v253 = *p_width2;
        v254 = v17->_height2;
        v255 = 0;
        p_domainTransformYTexture = &v17->_domainTransformYTexture;
        v257 = 25;
        v258 = *p_width2;
        v259 = v17->_height2;
        v260 = 0;
        p_tempFloatR32FloatTexture = &v17->_tempFloatR32FloatTexture;
        v262 = 55;
        v263 = *p_width2;
        v264 = v17->_height2;
        v265 = 0;
        p_edgeAwareFillTempTexture = &v17->_edgeAwareFillTempTexture;
        v267 = 25;
        v268 = *p_width2;
        v269 = v17->_height2;
        v270 = 0;
        p_bgFillTempTexture = &v17->_bgFillTempTexture;
        v272 = 25;
        v273 = *p_width2;
        v274 = v17->_height2;
        v275 = 0;
        p_invalidDisparityMaskTexture = &v17->_invalidDisparityMaskTexture;
        v277 = 13;
        v278 = *p_width2;
        v279 = v17->_height2;
        v280 = 0;
        p_initDisparity = &v17->_initDisparity;
        v282 = 25;
        v283 = *p_width2;
        v284 = v17->_height2;
        v285 = 0;
        p_isForegroundTexture = &v17->_isForegroundTexture;
        v287 = 13;
        v288 = *p_width2;
        v289 = v17->_height2;
        v290 = 0;
        p_distanceToForegroundTexture = &v17->_distanceToForegroundTexture;
        v292 = 25;
        v293 = *p_width2;
        v294 = v17->_height2;
        v295 = 0;
        p_correctlyRotatedAndReshapedSegmentation = &v17->_correctlyRotatedAndReshapedSegmentation;
        v297 = 25;
        v298 = *p_width2;
        v299 = v17->_height2;
        v300 = 0;
        p_blurredBg = &v17->_blurredBg;
        v302 = 70;
        width = v17->_width;
        height = v17->_height;
        v305 = 0;
        p_deweightedDisparity = &v17->_deweightedDisparity;
        v307 = 65;
        v308 = *p_width2;
        v309 = v17->_height2;
        v310 = 0;
        shift = v17->_shift;
        v312 = 65;
        v313 = *p_width2;
        v314 = v17->_height2;
        v315 = 0;
        v316 = &v17->_shift[1];
        v317 = 65;
        v318 = *p_width2;
        v319 = v17->_height2;
        v320 = 0;
        p_coc = &v17->_coc;
        v322 = 10;
        v323 = *p_width2;
        v324 = v17->_height2;
        v325 = 0;
        sub_1DED6C348(&__p, buf, 0x29uLL);
        v89 = __p;
        v90 = v138;
        if (__p != v138)
        {
          do
          {
            v91 = sub_1DED6FDC8(v17->_device, v89[1], *(v89 + 4), *(v89 + 5), v89[3], error);
            v92 = **v89;
            **v89 = v91;

            if (!**v89)
            {
              goto LABEL_46;
            }

            v89 += 4;
          }

          while (v89 != v90);
        }

        v93 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:*p_width2 height:v17->_height2 mipmapped:0];
        [v93 setUsage:7];
        v94 = [(MTLDeviceSPI *)v17->_device newTextureWithDescriptor:v93];
        facemaskRegionTexture = v17->_facemaskRegionTexture;
        v17->_facemaskRegionTexture = v94;

        v96 = v17->_facemaskRegionTexture;
        v97 = MEMORY[0x1E696AEC0];
        v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_facemaskRegionTexture is nil"];
        v99 = [v97 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 788, v98];
        sub_1DED25D64(v96 == 0, error, 4294944382, v99);

        if (v96)
        {
          if (v17->_height >= v17->_width)
          {
            v100 = v17->_width;
          }

          else
          {
            v100 = v17->_height;
          }

          v101 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:? height:? mipmapped:?];
          [v101 setUsage:3];
          [v101 setMipmapLevelCount:vcvtps_u32_f32(log2f((v100 >> 3)))];
          v102 = [(MTLDeviceSPI *)v17->_device newTextureWithDescriptor:v101];
          v103 = MEMORY[0x1E696AEC0];
          v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_bg is nil"];
          v104 = [v103 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 802, v104];
          sub_1DED25D64(v102 == 0, error, 4294944382, v104);

          if (v102)
          {
            bg = v17->_bg;
            v17->_bg = v102;

            if (v134)
            {
LABEL_39:
              v107 = dispatch_semaphore_create(0);
              semaphore = v17->_semaphore;
              v17->_semaphore = v107;

              v109 = dispatch_semaphore_create(5);
              renderingCallbackSemaphore = v17->_renderingCallbackSemaphore;
              v17->_renderingCallbackSemaphore = v109;

              v111 = dispatch_queue_create("_synchronousRenderingCallbackQueue", 0);
              synchronousRenderingCallbackQueue = v17->_synchronousRenderingCallbackQueue;
              v17->_synchronousRenderingCallbackQueue = v111;

              v113 = dispatch_semaphore_create(5);
              mattingCallbackSemaphore = v17->_mattingCallbackSemaphore;
              v17->_mattingCallbackSemaphore = v113;

              v115 = dispatch_queue_create("_synchronousMattingCallbackQueue", 0);
              synchronousMattingCallbackQueue = v17->_synchronousMattingCallbackQueue;
              v17->_synchronousMattingCallbackQueue = v115;

              v26 = v17;
              goto LABEL_47;
            }

            v117 = objc_alloc(MEMORY[0x1E69745C0]);
            LODWORD(v118) = 1053609165;
            v119 = [v117 initWithDevice:v17->_device sigma:v118];
            smoothFilter = v17->_smoothFilter;
            v17->_smoothFilter = v119;

            v121 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:v17->_device kernelWidth:((v17->_renderingDisparityBlurRadius * 2.0) + 1.0) kernelHeight:((v17->_renderingDisparityBlurRadius * 2.0) + 1.0)];
            disparityBlurBoxKernel = v17->_disparityBlurBoxKernel;
            v17->_disparityBlurBoxKernel = v121;

            [(MPSImageBox *)v17->_disparityBlurBoxKernel setEdgeMode:0];
            v123 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:v17->_device kernelWidth:7 kernelHeight:7];
            fgBlurBoxKernel = v17->_fgBlurBoxKernel;
            v17->_fgBlurBoxKernel = v123;

            [(MPSImageBox *)v17->_fgBlurBoxKernel setEdgeMode:1];
            v125 = [objc_alloc(MEMORY[0x1E6974570]) initWithDevice:v17->_device kernelWidth:3 kernelHeight:3];
            fgMaskErosionKernel = v17->_fgMaskErosionKernel;
            v17->_fgMaskErosionKernel = v125;

            [(MPSImageAreaMin *)v17->_fgMaskErosionKernel setEdgeMode:0];
            v127 = IOSurfaceAcceleratorCreate();
            v128 = MEMORY[0x1E696AEC0];
            v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create IOAccelerator"];
            v129 = [v128 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 836, v129];
            sub_1DED25D64(v127 != 0, error, 4294944396, v129);

            if (!v127)
            {
              commandBuffer = [(MTLCommandQueue *)v17->_commandQueue commandBuffer];
              [commandBuffer setLabel:@"MPS-prewarming"];
              sub_1DED70534(v17->_disparityBlurBoxKernel, v17->_device, commandBuffer, [(MTLTexture *)v17->_deweightedDisparity pixelFormat]);
              LODWORD(v133) = v17->_height2;
              [(VideoMattingMetal *)v17 prewarmGuidedFilter:v17->_guidedFilter device:v17->_device commandBuffer:commandBuffer width:v17->_width height:v17->_height width2:*p_width2 height2:v133];
              [(VideoMattingMetal *)v17 encodeCopyTextureToCommandBuffer:commandBuffer inTexture:v17->_disparity[0] outTexture:v17->_disparity[1]];
              [commandBuffer commit];

              goto LABEL_39;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_46:
        v26 = 0;
LABEL_47:
        if (__p)
        {
          v138 = __p;
          operator delete(__p);
        }

LABEL_49:
        sub_1DED6C3E8(&v140);
        goto LABEL_41;
      }
    }
  }

  v26 = 0;
LABEL_5:

  return v26;
}

+ (void)decomposeYuvPixelBuffer:(__CVBuffer *)buffer yTexture:(id *)texture uvTexture:(id *)uvTexture textureCache:(__CVMetalTextureCache *)cache
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v12 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v14 = [v12 containsObject:v13];

  if ((v14 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3374 description:{@"yuvBuffer is not one of %@", v23}];
  }

  v27 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  [v27 setUsage:3];
  v15 = MEMORY[0x1E69741C0];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
  v17 = [v15 texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(buffer mipmapped:1uLL), 0];
  [v17 setUsage:3];
  v18 = [self textureFromCacheUsingPixelBuffer:buffer textureDescriptor:? plane:? textureCache:?];
  v19 = *texture;
  *texture = v18;

  v20 = [self textureFromCacheUsingPixelBuffer:buffer textureDescriptor:v17 plane:1 textureCache:cache];
  v21 = *uvTexture;
  *uvTexture = v20;
}

+ (id)textureFromCacheUsingPixelBuffer:(__CVBuffer *)buffer textureDescriptor:(id)descriptor plane:(unint64_t)plane textureCache:(__CVMetalTextureCache *)cache
{
  v27[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  image = 0;
  v26[0] = *MEMORY[0x1E6966010];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "usage")}];
  v27[0] = v11;
  v26[1] = *MEMORY[0x1E6966008];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "storageMode")}];
  v27[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  pixelFormat = [descriptorCopy pixelFormat];
  width = [descriptorCopy width];
  height = [descriptorCopy height];
  v17 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], cache, buffer, v13, pixelFormat, width, height, plane, &image);

  if (v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3351 description:{@"Cannot get textureRef from cache. Error code %ul", v17}];
  }

  v18 = image;
  if (!image)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3352 description:@"Cannot get textureRef from cache"];

    v18 = image;
  }

  v19 = CVMetalTextureGetTexture(v18);
  CFRelease(image);
  if (!v19)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3357 description:@"Cannot get texture from textureRef"];
  }

  return v19;
}

+ (void)saveTexture:(id)texture toFilename:(id)filename
{
  textureCopy = texture;
  filenameCopy = filename;
  if ([textureCopy pixelFormat] != 252 && objc_msgSend(textureCopy, "pixelFormat") != 55)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3311 description:@"unsupported pixel format!"];
  }

  width = [textureCopy width];
  height = [textureCopy height];
  v11 = height;
  v12 = malloc_type_malloc(vcvtd_n_u64_f64(width * height, 2uLL), 0xA7B50A40uLL);
  v13 = vcvtd_n_u64_f64(width, 2uLL);
  memset(v18, 0, 24);
  v18[3] = width;
  v18[4] = height;
  v18[5] = 1;
  [textureCopy getBytes:v12 bytesPerRow:v13 fromRegion:v18 mipmapLevel:0];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_32f_%dx%d.raw", width, height];
  v15 = [filenameCopy stringByAppendingString:v14];

  v16 = fopen([v15 cStringUsingEncoding:4], "wb");
  if (v16)
  {
    fwrite(v12, 4uLL, ((v13 >> 2) * v11), v16);
    fclose(v16);
  }

  free(v12);
}

@end