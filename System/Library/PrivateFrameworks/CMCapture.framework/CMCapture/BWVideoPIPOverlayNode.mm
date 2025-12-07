@interface BWVideoPIPOverlayNode
+ (void)prewarmCoreImageShaders;
- (BWVideoPIPOverlayNode)initWithDelegate:(id)delegate metalCommandQueue:(id)queue secondaryCameraStreamingEnabled:(BOOL)enabled secondaryCameraFrameRate:(float)rate maxLossyCompressionLevel:(int)level isDeviceBravoVariant:(BOOL)variant baseZoomFactorsByPortType:(id)type;
- (CGPoint)_overlayOffsetForPixelBuffer:(__CVBuffer *)buffer primaryCaptureRect:(CGRect)rect;
- (id)_reticleCIColorForPixelBuffer:(__CVBuffer *)buffer opacity:(float)opacity;
- (id)_strokedRectangleImageWithRect:(CGRect)rect thickness:(float)thickness c:(id)c;
- (int)_drawOverlayRects:(id)rects toPixelBuffer:(__CVBuffer *)buffer withinRect:(CGRect)rect;
- (int)_loadAndConfigureSmartStyleProxyRenderer;
- (int)_renderSmartStyleToIntermediateBufferWithInputSampleBuffer:(opaqueCMSampleBuffer *)buffer pipSourcePixelBuffer:(__CVBuffer *)pixelBuffer inputRect:(CGRect)rect outputRect:(CGRect)outputRect;
- (void)_drawPIPUsingCPUAndMSRToOutputPixelBuffer:(double)buffer attachedPixelBuffer:(double)pixelBuffer outputRect:(double)rect inputRect:(double)inputRect normalizedReticleRect:(double)reticleRect primaryCaptureRect:(double)captureRect uprightExifOrientation:(double)orientation;
- (void)_drawPIPUsingGPUToOutputPixelBuffer:(double)buffer attachedPixelBuffer:(double)pixelBuffer filters:(double)filters outputRect:(double)rect inputRect:(double)inputRect normalizedReticleRect:(double)reticleRect uprightExifOrientation:(double)orientation pipOpacity:(uint64_t)self0;
- (void)_ensureGPUResources;
- (void)_releaseResources;
- (void)_renderAttachedPixelBuffersFromSampleBuffer:(opaqueCMSampleBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)style;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWVideoPIPOverlayNode

- (BWVideoPIPOverlayNode)initWithDelegate:(id)delegate metalCommandQueue:(id)queue secondaryCameraStreamingEnabled:(BOOL)enabled secondaryCameraFrameRate:(float)rate maxLossyCompressionLevel:(int)level isDeviceBravoVariant:(BOOL)variant baseZoomFactorsByPortType:(id)type
{
  v26.receiver = self;
  v26.super_class = BWVideoPIPOverlayNode;
  v15 = [(BWNode *)&v26 init:delegate];
  if (v15)
  {
    *(v15 + 16) = queue;
    v16 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v15];
    [(BWNodeInput *)v16 setPassthroughMode:1];
    v17 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v17 setSupportedPixelFormats:&unk_1F2249018];
    [(BWNodeInput *)v16 setFormatRequirements:v17];

    [v15 addInput:v16];
    v18 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v15];
    [(BWNodeOutput *)v18 setPassthroughMode:1];
    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v18 setFormatRequirements:v19];

    [v15 addOutput:v18];
    v15[152] = 1;
    *(v15 + 39) = 1077936128;
    v15[160] = 0;
    [objc_msgSend(type objectForKeyedSubscript:{*off_1E798A0D8), "floatValue"}];
    v21 = v20;
    [objc_msgSend(type objectForKeyedSubscript:{*off_1E798A0C0), "floatValue"}];
    if (FigCaptureRoundFloatToMultipleOf(1, v21 / v22) <= 4)
    {
      v23 = 276;
    }

    else
    {
      v23 = 312;
    }

    *(v15 + 41) = v23;
    *(v15 + 42) = 1051931443;
    *(v15 + 43) = 1070511405;
    *(v15 + 52) = 1082130432;
    *(v15 + 23) = [type copy];
    v15[196] = enabled;
    *(v15 + 48) = rate;
    *(v15 + 34) = delegate;
    *(v15 + 40) = [[BWRamp alloc] initWithName:@"FadeRamp"];
    *(v15 + 82) = 1050253722;
    *(v15 + 83) = 1050253722;
    *(v15 + 84) = 1069547520;
    *(v15 + 85) = 1086324736;
    *(v15 + 86) = 1041865114;
    v15[432] = 1;
    v15[348] = 1;
    *(v15 + 53) = 1112014848;
    v15[349] = 1;
    v24 = *(MEMORY[0x1E695F050] + 16);
    *(v15 + 280) = *MEMORY[0x1E695F050];
    *(v15 + 296) = v24;
    v15[433] = variant;
  }

  return v15;
}

- (void)dealloc
{
  [(BWVideoPIPOverlayNode *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWVideoPIPOverlayNode;
  [(BWNode *)&v3 dealloc];
}

+ (void)prewarmCoreImageShaders
{
  v2 = MEMORY[0x1E695F620];
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];

  [v2 loadArchiveWithName:@"BWVideoPIPOverlayNodeCoreImageArchive" fromURL:v3];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v6 = [objc_msgSend(input "primaryMediaProperties")];
  if ([v6 pixelFormat] == 875704422 || objc_msgSend(v6, "pixelFormat") == 875704438)
  {
    self->_useGPUForDrawing = 0;
  }

  output = self->super._output;

  [(BWNodeOutput *)output setFormat:format];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (self->_useGPUForDrawing)
  {
    [(BWVideoPIPOverlayNode *)self _ensureGPUResources];
  }

  else
  {
    self->_scalingSession = objc_alloc_init(BWScalingSession);
  }

  if (self->_smartStyleRenderingEnabled)
  {
    [(BWVideoPIPOverlayNode *)self _loadAndConfigureSmartStyleProxyRenderer];
    if (!self->_scalingSession)
    {
      self->_scalingSession = objc_alloc_init(BWScalingSession);
    }
  }

  v3.receiver = self;
  v3.super_class = BWVideoPIPOverlayNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, buffer);
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = v8;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (buffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    if (ImageBuffer)
    {
      [(BWVideoPIPOverlayNode *)self _renderAttachedPixelBuffersFromSampleBuffer:buffer toPixelBuffer:ImageBuffer];
    }
  }

  if (*v6 == 1)
  {
    kdebug_trace();
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (void)_releaseResources
{
  self->_metalCommandQueue = 0;

  self->_scalingSession = 0;
  self->_drawRectangleFilter = 0;

  self->_drawDropShadowFilter = 0;
  self->_roundedCornersMaskFilter = 0;

  self->_sourceOverBlendKernel = 0;
  self->_ciReticleColor = 0;

  self->_ciContext = 0;
  self->_fadeRamp = 0;
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CFRelease(bitmapContext);
    self->_bitmapContext = 0;
  }

  previousAttachedSampleBuffer = self->_previousAttachedSampleBuffer;
  if (previousAttachedSampleBuffer)
  {
    CFRelease(previousAttachedSampleBuffer);
    self->_previousAttachedSampleBuffer = 0;
  }

  fadeReferenceSampleBuffer = self->_fadeReferenceSampleBuffer;
  if (fadeReferenceSampleBuffer)
  {
    CFRelease(fadeReferenceSampleBuffer);
    self->_fadeReferenceSampleBuffer = 0;
  }

  self->_smartStyleProxyRenderer = 0;
  smartStyleIntermediateUnstyled = self->_smartStyleIntermediateUnstyled;
  if (smartStyleIntermediateUnstyled)
  {
    CFRelease(smartStyleIntermediateUnstyled);
    self->_smartStyleIntermediateUnstyled = 0;
  }

  smartStyleIntermediateStyled = self->_smartStyleIntermediateStyled;
  if (smartStyleIntermediateStyled)
  {
    CFRelease(smartStyleIntermediateStyled);
    self->_smartStyleIntermediateStyled = 0;
  }

  self->_currentStyle = 0;
}

- (void)didReachEndOfDataForInput:(id)input
{
  if (self->_releasesResourcesAtEndOfData)
  {
    [(BWVideoPIPOverlayNode *)self _releaseResources];
  }

  v5.receiver = self;
  v5.super_class = BWVideoPIPOverlayNode;
  [(BWNode *)&v5 didReachEndOfDataForInput:input];
}

- (void)_ensureGPUResources
{
  if (!self->_gpuPathInitialized)
  {
    if (!self->_ciContext)
    {
      v5[2] = [MEMORY[0x1E695DFB0] null];
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:3];
      self->_ciContext = [MEMORY[0x1E695F620] contextWithMTLCommandQueue:self->_metalCommandQueue options:v3];
    }

    if (!self->_drawRectangleFilter)
    {
      self->_drawRectangleFilter = [MEMORY[0x1E695F648] roundedRectangleStrokeGeneratorFilter];
    }

    if (!self->_drawDropShadowFilter)
    {
      self->_drawDropShadowFilter = [MEMORY[0x1E695F648] blurredRoundedRectangleGeneratorFilter];
    }

    if (!self->_roundedCornersMaskFilter)
    {
      self->_roundedCornersMaskFilter = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
    }

    if (!self->_sourceOverBlendKernel)
    {
      self->_sourceOverBlendKernel = [MEMORY[0x1E695F608] sourceOver];
    }

    self->_gpuPathInitialized = 1;
  }
}

- (id)_strokedRectangleImageWithRect:(CGRect)rect thickness:(float)thickness c:(id)c
{
  v12 = CGRectInset(rect, thickness * -0.5, thickness * -0.5);
  v13 = CGRectIntegral(v12);
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setExtent:FigCaptureMetadataUtilitiesRoundRectToEvenCoordinatesPreservingSquareness(1u, v13.origin.x, *&v13.origin.y, v13.size.width, v13.size.height, 0.0)];
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setRadius:0.0];
  *&v8 = thickness;
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setWidth:v8];
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setColor:c];
  drawRectangleFilter = self->_drawRectangleFilter;

  return [(CIRoundedRectangleStrokeGenerator *)drawRectangleFilter outputImage];
}

- (id)_reticleCIColorForPixelBuffer:(__CVBuffer *)buffer opacity:(float)opacity
{
  v6 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F30], 0);
  if (v6)
  {
    v7 = CFAutorelease(v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7);
  }

  else
  {
    v7 = 0;
    isEqualToString = objc_msgSend_isEqualToString_(0);
  }

  if (isEqualToString)
  {
    v9 = MEMORY[0x1E695F170];
    v10 = 238.0;
    v11 = 230.0;
    v12 = 120.0;
  }

  else
  {
    v13 = objc_msgSend_isEqualToString_(v7);
    v9 = MEMORY[0x1E695F0B8];
    if (v13)
    {
      v9 = MEMORY[0x1E695F1C0];
      v12 = 20.0;
    }

    else
    {
      v12 = 74.0;
    }

    if (v13)
    {
      v11 = 212.0;
    }

    else
    {
      v11 = 215.0;
    }

    if (v13)
    {
      v10 = 254.0;
    }

    else
    {
      v10 = 248.0;
    }
  }

  v14 = *v9;
  colorSpace = [(CIColor *)self->_ciReticleColor colorSpace];
  if (colorSpace)
  {
    Name = CGColorSpaceGetName(colorSpace);
  }

  else
  {
    Name = 0;
  }

  [(CIColor *)self->_ciReticleColor alpha];
  opacityCopy = opacity;
  v19 = v18 != opacityCopy || Name == 0;
  if (!v19 && CFStringCompare(Name, v14, 0) == kCFCompareEqualTo)
  {
    return self->_ciReticleColor;
  }

  v20 = CGColorSpaceCreateWithName(v14);
  v21 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:v20 green:(v10 / 255.0) blue:(v11 / 255.0) alpha:(v12 / 255.0) colorSpace:opacityCopy];
  CGColorSpaceRelease(v20);
  self->_ciReticleColor = v21;
  return v21;
}

- (CGPoint)_overlayOffsetForPixelBuffer:(__CVBuffer *)buffer primaryCaptureRect:(CGRect)rect
{
  v5 = rect.size.width / rect.size.height;
  if (v5 > 0.75)
  {
    v5 = 0.75;
  }

  v6 = (fmaxf(v5, 0.5625) + -0.5625) / 0.1875;
  v7 = ((v6 * -0.057208) + 0.057208);
  v8 = ((v6 * 0.0) + 0.0099502) * CVPixelBufferGetWidth(buffer);
  v9 = v7 * CVPixelBufferGetHeight(buffer);
  v10 = v8;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)_renderAttachedPixelBuffersFromSampleBuffer:(opaqueCMSampleBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  v7 = MEMORY[0x1E695F058];
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAEB0);
  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  if (!AttachedMedia || self->_frameRate == 0.0)
  {
    previousAttachedSampleBuffer = self->_previousAttachedSampleBuffer;
    if (previousAttachedSampleBuffer)
    {
      if (self->_frameRate != 0.0)
      {
        memset(&v160, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&v160, previousAttachedSampleBuffer);
        memset(&v159, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&v159, buffer);
        memset(&v162, 0, 24);
        *&lhs.value = *&v159.a;
        lhs.epoch = *&v159.c;
        *&rhs.value = v160.origin;
        rhs.epoch = *&v160.size.width;
        CMTimeSubtract(&v162, &lhs, &rhs);
        v13 = (1.0 / self->_frameRate);
        *&lhs.value = v162.origin;
        lhs.epoch = *&v162.size.width;
        if (CMTimeGetSeconds(&lhs) <= v13 + v13)
        {
          AttachedMedia = self->_previousAttachedSampleBuffer;
          v10 = CMGetAttachment(AttachedMedia, v9, 0);
        }
      }
    }
  }

  else
  {
    memset(&v160, 0, 24);
    CMSampleBufferGetPresentationTimeStamp(&v160, AttachedMedia);
    memset(&v159, 0, 24);
    v11 = self->_previousAttachedSampleBuffer;
    if (v11)
    {
      CMSampleBufferGetPresentationTimeStamp(&v159, v11);
    }

    else
    {
      *&v159.a = *MEMORY[0x1E6960CC0];
      v159.c = *(MEMORY[0x1E6960CC0] + 16);
    }

    memset(&v162, 0, 24);
    *&lhs.value = v160.origin;
    lhs.epoch = *&v160.size.width;
    *&rhs.value = *&v159.a;
    rhs.epoch = *&v159.c;
    CMTimeSubtract(&v162, &lhs, &rhs);
    *&lhs.value = v162.origin;
    lhs.epoch = *&v162.size.width;
    Seconds = CMTimeGetSeconds(&lhs);
    v15 = self->_previousAttachedSampleBuffer;
    if (Seconds >= (1.0 / self->_frameRate) + -0.00100000005)
    {
      if (v15)
      {
        CFRelease(v15);
      }

      BWCMSampleBufferCreateCopyIncludingMetadata(AttachedMedia, &self->_previousAttachedSampleBuffer);
    }

    else
    {
      AttachedMedia = self->_previousAttachedSampleBuffer;
    }
  }

  v16 = *v7;
  v17 = *(v7 + 8);
  v18 = *(v7 + 16);
  v19 = *(v7 + 24);
  fadeReferenceSampleBuffer = self->_fadeReferenceSampleBuffer;
  if (AttachedMedia)
  {
    if (fadeReferenceSampleBuffer)
    {
      v21 = 1.0;
      if ([(BWRamp *)self->_fadeRamp isRamping])
      {
        [(BWRamp *)self->_fadeRamp updateRampForNextIteration];
        v21 = v22;
      }
    }

    else
    {
      LODWORD(v160.origin.x) = 0;
      FigCFDictionaryGetFloatIfPresent();
      LODWORD(v24) = llroundf(self->_fadeInDurationSeconds * *&v160.origin.x);
      v21 = 0.0;
      LODWORD(v25) = 1.0;
      [(BWRamp *)self->_fadeRamp startRampFrom:v24 to:1 iterations:0.0 shape:v25];
    }

    v26 = self->_fadeReferenceSampleBuffer;
    if (v26)
    {
      CFRelease(v26);
      self->_fadeReferenceSampleBuffer = 0;
    }

    BWCMSampleBufferCreateCopyIncludingMetadata(AttachedMedia, &self->_fadeReferenceSampleBuffer);
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    goto LABEL_26;
  }

  if (!fadeReferenceSampleBuffer)
  {
LABEL_36:
    v28 = 0;
    goto LABEL_111;
  }

  if ([(BWRamp *)self->_fadeRamp isRamping])
  {
    [(BWRamp *)self->_fadeRamp updateRampForNextIteration];
    v21 = v23;
  }

  else
  {
    CMGetAttachment(self->_fadeReferenceSampleBuffer, v9, 0);
    LODWORD(v160.origin.x) = 0;
    FigCFDictionaryGetFloatIfPresent();
    LODWORD(v38) = llroundf(self->_fadeOutDurationSeconds * *&v160.origin.x);
    v21 = 1.0;
    LODWORD(v39) = 1.0;
    [(BWRamp *)self->_fadeRamp startRampFrom:v38 to:2 iterations:v39 shape:0.0];
  }

  isRamping = [(BWRamp *)self->_fadeRamp isRamping];
  AttachedMedia = self->_fadeReferenceSampleBuffer;
  if (!isRamping)
  {
    if (AttachedMedia)
    {
      CFRelease(self->_fadeReferenceSampleBuffer);
      v28 = 0;
      self->_fadeReferenceSampleBuffer = 0;
      goto LABEL_111;
    }

    goto LABEL_36;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(self->_fadeReferenceSampleBuffer);
  v10 = CMGetAttachment(AttachedMedia, v9, 0);
LABEL_26:
  v28 = AttachedMedia != 0;
  if (AttachedMedia && ImageBuffer)
  {
    v29 = CFGetTypeID(ImageBuffer);
    if (v29 == CVPixelBufferGetTypeID())
    {
      v149 = v21;
      memset(&v160, 0, sizeof(v160));
      v30 = *off_1E798A430;
      v31 = CMGetAttachment(buffer, *off_1E798A430, 0);
      theDict = v10;
      if (v31)
      {
        CGRectMakeWithDictionaryRepresentation(v31, &v160);
        Width = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        FigCaptureMetadataUtilitiesDenormalizeCropRect(v160.origin.x, v160.origin.y, v160.size.width, v160.size.height, Width, Height);
        v160.origin.x = v34;
        v160.origin.y = v35;
        v160.size.width = v36;
        v160.size.height = v37;
      }

      else
      {
        v41 = CVPixelBufferGetWidth(pixelBuffer);
        v42 = CVPixelBufferGetHeight(pixelBuffer);
        v160.origin.x = 0.0;
        v160.origin.y = 0.0;
        v160.size.width = v41;
        v160.size.height = v42;
      }

      v43 = CVPixelBufferGetWidth(ImageBuffer);
      v44 = CVPixelBufferGetHeight(ImageBuffer);
      v159.a = 0.0;
      v159.b = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      *&v159.c = _Q0;
      v49 = CMGetAttachment(AttachedMedia, v30, 0);
      if (v49)
      {
        CGRectMakeWithDictionaryRepresentation(v49, &v159);
        v50 = *(v7 + 16);
        v162.origin = *v7;
        v162.size = v50;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v159.a = FigCaptureMetadataUtilitiesScaleRect(v159.a, v159.b, v159.c, v159.d, (v162.size.width + v162.size.height) * 0.5, v51);
          v159.b = v52;
          v159.c = v53;
          v159.d = v54;
        }
      }

      else
      {
        FigCFDictionaryGetCGRectIfPresent();
      }

      v55 = v44;
      v154 = v43;
      FigCaptureMetadataUtilitiesDenormalizeCropRect(v159.a, v159.b, v159.c, v159.d, v43, v44);
      v150 = v57;
      v152 = v56;
      v59 = v58;
      v61 = v60;
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
      FigCaptureRotationDegreesAndMirroringFromExifOrientation(6, 0);
      [(BWVideoPIPOverlayNode *)self _overlayOffsetForPixelBuffer:pixelBuffer primaryCaptureRect:v160.origin.x, v160.origin.y, v160.size.width, v160.size.height];
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetWidth(pixelBuffer);
      FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
      v155 = v62;
      v156 = v63;
      v157 = v64;
      v158 = v65;
      v66 = CMGetAttachment(AttachedMedia, @"NarrowerCameraPreviewAlignmentShift", 0);
      v10 = theDict;
      v148 = v55;
      if (v66)
      {
        *&lhs.value = *MEMORY[0x1E695EFF8];
        if (CGPointMakeWithDictionaryRepresentation(v66, &lhs))
        {
          v165.origin.y = v150;
          v165.origin.x = v152;
          v165.size.width = v59;
          v165.size.height = v61;
          v166 = CGRectOffset(v165, -*&lhs.value, -*&lhs.timescale);
          x = v166.origin.x;
          y = v166.origin.y;
          v68 = v166.size.width;
          v69 = v166.size.height;
          v162.origin.x = 0.0;
          v162.origin.y = 0.0;
          v162.size.width = v43;
          v162.size.height = v55;
          FigCFDictionaryGetCGRectIfPresent();
          v70 = v162.origin.x;
          v71 = v162.origin.y;
          v73 = v162.size.width;
          v72 = v162.size.height;
          if (v162.size.width >= v68)
          {
            v74 = v68;
          }

          else
          {
            v74 = v162.size.width;
          }

          v59 = fmax(v74, 0.0);
          if (v162.size.height >= v69)
          {
            v75 = v69;
          }

          else
          {
            v75 = v162.size.height;
          }

          v61 = fmax(v75, 0.0);
          MinX = CGRectGetMinX(v162);
          v167.origin.x = v70;
          v167.origin.y = v71;
          v167.size.width = v73;
          v167.size.height = v72;
          v77 = CGRectGetMaxX(v167) - v59;
          if (v77 >= x)
          {
            v77 = x;
          }

          if (MinX >= v77)
          {
            v77 = MinX;
          }

          v152 = v77;
          v168.origin.x = v70;
          v168.origin.y = v71;
          v168.size.width = v73;
          v168.size.height = v72;
          MinY = CGRectGetMinY(v168);
          v169.origin.x = v70;
          v169.origin.y = v71;
          v55 = v148;
          v169.size.width = v73;
          v169.size.height = v72;
          v79 = CGRectGetMaxY(v169) - v61;
          if (v79 >= y)
          {
            v79 = y;
          }

          if (MinY >= v79)
          {
            v79 = MinY;
          }

          v150 = v79;
        }
      }

      v146 = v59;
      if (v154 / v59 >= v55 / v61)
      {
        v80 = v55 / v61;
      }

      else
      {
        v80 = v154 / v59;
      }

      Value = CFDictionaryGetValue(theDict, *off_1E798B540);
      if (self->_isDeviceBravoVariant)
      {
        v82 = Value;
        v83 = CMGetAttachment(AttachedMedia, @"TotalZoomFactor", 0);
        if (v83)
        {
          [v83 floatValue];
          v85 = v84;
        }

        else
        {
          v85 = 1.0;
        }

        v86 = *off_1E798A0D8;
        if (objc_msgSend_isEqualToString_(v82))
        {
          v87 = v80;
          self->_lastTeleMaxScale = v87;
          self->_lastTeleMaxScaleZoomFactor = v85;
        }

        else if (self->_secondaryCameraStreamingEnabled)
        {
          v80 = v80 * 0.699999988;
        }

        else
        {
          lastTeleMaxScale = self->_lastTeleMaxScale;
          if (lastTeleMaxScale <= 0.0)
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_baseZoomFactorsByPortType objectForKeyedSubscript:{v86), "floatValue"}];
            v93 = v92;
            [-[NSDictionary objectForKeyedSubscript:](self->_baseZoomFactorsByPortType objectForKeyedSubscript:{v82), "floatValue"}];
            v95 = v94;
            [-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
            if (v96 == 0.0)
            {
              v96 = 1.0;
            }

            v80 = v80 / (v93 / (v95 * v96));
          }

          else
          {
            v80 = lastTeleMaxScale;
            if (v85 > 0.0)
            {
              lastTeleMaxScaleZoomFactor = self->_lastTeleMaxScaleZoomFactor;
              v90 = lastTeleMaxScaleZoomFactor <= 0.0;
              v91 = v80 * (v85 / lastTeleMaxScaleZoomFactor);
              if (!v90)
              {
                v80 = v91;
              }
            }
          }
        }
      }

      v97 = v61;
      overCaptureTargetRatioInterpolationStart = self->_overCaptureTargetRatioInterpolationStart;
      v99 = overCaptureTargetRatioInterpolationStart;
      v100 = v80 / overCaptureTargetRatioInterpolationStart;
      v101 = self->_overCaptureTargetInterpolationScale * log2f(v100);
      overCaptureTargetRatio = self->_overCaptureTargetRatio;
      v103 = log2f(overCaptureTargetRatio / overCaptureTargetRatioInterpolationStart);
      if (fabs(v101) <= v103 * 1.57079633)
      {
        v104 = v146;
        v105 = sin(v101 / v103) * v103;
      }

      else
      {
        v104 = v146;
        v105 = -v103;
        if (v101 >= 0.0)
        {
          v105 = v103;
        }
      }

      v106 = v105;
      v107 = v99 * exp2f(v106);
      v109 = overCaptureTargetRatio;
      if (v107 > overCaptureTargetRatio)
      {
        v107 = overCaptureTargetRatio;
      }

      if (v80 <= v109)
      {
        v109 = v80;
      }

      if (!self->_overCaptureTargetRatioSmoothingEnabled)
      {
        v107 = v109;
      }

      v110 = v97;
      v111 = FigCaptureMetadataUtilitiesScaleRect(v152, v150, v104, v97, fmax(v107, 1.0), v108);
      v113 = v112;
      v147 = v114;
      v116 = v115;
      v117 = v160.size.width / v160.size.height;
      v118 = [CMGetAttachment(pixelBuffer @"RotationDegrees"];
      v119 = v118;
      if (v118 == 270 || v118 == 90)
      {
        v121 = 1.0 / v117;
      }

      else
      {
        v121 = v117;
      }

      v122 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v152, v150, v104, v110, v121);
      v126 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v122, v123, v124, v125, v111, v113, v147);
      v159.a = v126;
      v159.b = v127;
      v159.c = v128;
      v159.d = v129;
      if (v119 == 270 || v119 == 90)
      {
        v159.a = v127;
        v159.b = v126;
        v159.c = v129;
        v159.d = v128;
      }

      v130 = v154 - v147;
      if (v154 - v147 >= v111)
      {
        v130 = v111;
      }

      v131 = fmax(v130, 0.0);
      v132 = v148 - v116;
      if (v148 - v116 >= v113)
      {
        v132 = v113;
      }

      v133 = fmax(v132, 0.0);
      v16 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v155, v156, v157, v158, v160.origin.x, v160.origin.y, v160.size.width);
      v17 = v134;
      v18 = v135;
      v19 = v136;
      v137 = CMGetAttachment(AttachedMedia, @"FiltersForZoomPIPOverlay", 0);
      if (self->_smartStyleRenderingEnabled)
      {
        [(BWVideoPIPOverlayNode *)self _renderSmartStyleToIntermediateBufferWithInputSampleBuffer:buffer pipSourcePixelBuffer:ImageBuffer inputRect:v131 outputRect:v133, v147, v116, v155, v156, v157, v158];
      }

      if (self->_useGPUForDrawing || v137 || (LODWORD(v138) = 1.0, *&v139 = v149, v149 < 1.0) || (*&v138 = self->_pipCornerRadius, *&v138 > 0.0))
      {
        [(BWVideoPIPOverlayNode *)self _ensureGPUResources:v138];
        *&v145 = v149;
        [(BWVideoPIPOverlayNode *)self _drawPIPUsingGPUToOutputPixelBuffer:pixelBuffer attachedPixelBuffer:ImageBuffer filters:v137 outputRect:6 inputRect:v155 normalizedReticleRect:v156 uprightExifOrientation:v157 pipOpacity:v158, v131, v133, v147, v116, *&v159.a, *&v159.b, *&v159.c, *&v159.d, v145];
      }

      else
      {
        [(BWVideoPIPOverlayNode *)self _drawPIPUsingCPUAndMSRToOutputPixelBuffer:pixelBuffer attachedPixelBuffer:ImageBuffer outputRect:6 inputRect:v155 normalizedReticleRect:v156 primaryCaptureRect:v157 uprightExifOrientation:v158, v131, v133, v147, v116, *&v159.a, *&v159.b, *&v159.c, *&v159.d, *&v160.origin.x, *&v160.origin.y, *&v160.size.width, *&v160.size.height];
      }
    }

    v28 = 1;
  }

LABEL_111:
  v170.origin.x = v16;
  v170.origin.y = v17;
  v170.size.width = v18;
  v170.size.height = v19;
  if (!CGRectEqualToRect(v170, self->_normalizedOutputRect) && self->_delegate)
  {
    self->_normalizedOutputRect.origin.x = v16;
    self->_normalizedOutputRect.origin.y = v17;
    self->_normalizedOutputRect.size.width = v18;
    self->_normalizedOutputRect.size.height = v19;
    if (v10)
    {
      v171.origin.x = v16;
      v171.origin.y = v17;
      v171.size.width = v18;
      v171.size.height = v19;
      if (!CGRectIsEmpty(v171))
      {
        v140 = [CMGetAttachment(pixelBuffer @"RotationDegrees"];
        v141 = [CMGetAttachment(pixelBuffer @"MirroredHorizontal"];
        v142 = [CMGetAttachment(pixelBuffer @"MirroredVertical"];
        v143 = CMGetAttachment(buffer, *off_1E798A438, 0);
        v162.origin.x = 0.0;
        v162.origin.y = 0.0;
        __asm { FMOV            V0.2D, #1.0 }

        v162.size = _Q0;
        CGRectMakeWithDictionaryRepresentation(v143, &v162);
        v161 = 0u;
        memset(&v160, 0, sizeof(v160));
        FigCaptureGetTransformForMirroringRotationAndCrop(v141, v142, v140, &v160, v162.origin.x, v162.origin.y, v162.size.width, v162.size.height);
        *&v159.a = v160.origin;
        *&v159.c = v160.size;
        *&v159.tx = v161;
        v172.origin.x = v16;
        v172.origin.y = v17;
        v172.size.width = v18;
        v172.size.height = v19;
        v173 = CGRectApplyAffineTransform(v172, &v159);
        v16 = v173.origin.x;
        v17 = v173.origin.y;
        v18 = v173.size.width;
        v19 = v173.size.height;
      }
    }

    [(BWVideoPIPOverlayDelegate *)self->_delegate videoPIPOverlayNode:self overlayRectDidChange:v16, v17, v18, v19];
  }

  if (v28)
  {
    BWSampleBufferRemoveAttachedMedia(buffer, 0x1F21AAEB0);
    CMRemoveAttachment(buffer, @"ZoomPIPSource");
  }
}

- (void)_drawPIPUsingGPUToOutputPixelBuffer:(double)buffer attachedPixelBuffer:(double)pixelBuffer filters:(double)filters outputRect:(double)rect inputRect:(double)inputRect normalizedReticleRect:(double)reticleRect uprightExifOrientation:(double)orientation pipOpacity:(uint64_t)self0
{
  v32 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a11];
  pixelBufferCopy = pixelBuffer;
  if (*(self + 350) == 1)
  {
    if (*(self + 368) && *(self + 352))
    {
      v33 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateStyled;
    }

    else
    {
      v33 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateUnstyled;
    }

    v41 = [objc_msgSend(MEMORY[0x1E695F658] imageWithCVPixelBuffer:{*(self + *v33)), "imageByCroppingToRect:", *(self + 400), CVPixelBufferGetHeight(*(self + 392)) - *(self + 408) - *(self + 424), *(self + 416), *(self + 424)}];
    v42 = *(self + 424);
    v43 = *(self + 416);
    memset(&v96, 0, sizeof(v96));
    FigCaptureExifOrientationGetAffineTransform(a14, v43 | (v42 << 32), &v95);
    CGAffineTransformInvert(&v96, &v95);
    v95 = v96;
    v44 = [v41 imageByApplyingTransform:&v95];
    [v44 extent];
    v46 = -v45;
    [v44 extent];
    CGAffineTransformMakeTranslation(&v95, v46, -v47);
    v48 = [v44 imageByApplyingTransform:&v95];
    v49 = ss_conformRectForMSR420vfPixelBuffer(a11, 1, a2, buffer, pixelBuffer, filters);
    v51 = v50;
    v53 = v52;
    v55 = v54;
    [v48 extent];
    v57 = v53 / v56;
    [v48 extent];
    v59 = v55 / v58;
    v60 = CVPixelBufferGetHeight(a11) - v51 - v55;
    CGAffineTransformMakeScale(&v95, v57, v59);
    v61 = [v48 imageByApplyingTransform:&v95];
    CGAffineTransformMakeTranslation(&v95, v49, v60);
    v40 = [v61 imageByApplyingTransform:&v95];
  }

  else
  {
    v34 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a12];
    v35 = CVPixelBufferGetHeight(a12) - inputRect;
    pixelBufferCopy2 = pixelBuffer;
    v37 = v35 - orientation;
    v38 = [v34 imageByCroppingToRect:{rect, v35 - orientation, reticleRect, orientation}];
    Height = CVPixelBufferGetHeight(a11);
    CGAffineTransformMakeTranslation(&v96, a2, Height - buffer - filters);
    t1 = v96;
    CGAffineTransformScale(&v95, &t1, pixelBufferCopy2, filters);
    v96 = v95;
    FigCaptureExifOrientationGetAffineTransform(a14, 0x100000001uLL, &v95);
    CGAffineTransformInvert(&t1, &v95);
    t2 = v96;
    CGAffineTransformConcat(&v95, &t1, &t2);
    v96 = v95;
    t1 = v95;
    CGAffineTransformScale(&v95, &t1, 1.0 / reticleRect, 1.0 / orientation);
    v96 = v95;
    t1 = v95;
    CGAffineTransformTranslate(&v95, &t1, -rect, -v37);
    v96 = v95;
    v40 = [v38 imageByApplyingTransform:&v95 highQualityDownsample:*(self + 432)];
  }

  outputImage = v40;
  v96.a = 0.0;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v63 = [a13 countByEnumeratingWithState:&v89 objects:v88 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v90;
    v66 = *MEMORY[0x1E695FAB0];
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v90 != v65)
        {
          objc_enumerationMutation(a13);
        }

        v68 = *(*(&v89 + 1) + 8 * i);
        [v68 setValue:outputImage forKey:v66];
        outputImage = [v68 outputImage];
      }

      v64 = [a13 countByEnumeratingWithState:&v89 objects:v88 count:16];
    }

    while (v64);
  }

  if (*(self + 212) != 0.0)
  {
    [outputImage extent];
    [*(self + 232) setExtent:?];
    LODWORD(v69) = *(self + 212);
    [*(self + 232) setRadius:v69];
    [*(self + 232) setColor:{objc_msgSend(MEMORY[0x1E695F610], "whiteColor")}];
    LODWORD(v70) = 1.0;
    [*(self + 232) setSmoothness:v70];
    outputImage = [objc_msgSend(MEMORY[0x1E695F608] "sourceIn")];
  }

  if (*(self + 348) == 1)
  {
    [outputImage extent];
    CGRectInset(v97, -*(self + 336), -*(self + 336));
    FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
    [*(self + 224) setExtent:?];
    LODWORD(v71) = *(self + 340);
    [*(self + 224) setSigma:v71];
    *&v72 = *(self + 212) + *(self + 336);
    [*(self + 224) setRadius:v72];
    [*(self + 224) setColor:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:alpha:", 0.0, 0.0, 0.0, *(self + 344))}];
    LODWORD(v73) = 1.0;
    [*(self + 224) setSmoothness:v73];
    outputImage = [outputImage imageByCompositingOverImage:{objc_msgSend(*(self + 224), "outputImage")}];
  }

  if (a19 < 1.0)
  {
    v86 = @"inputAVector";
    v87 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:a19];
    outputImage = [outputImage imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v87, &v86, 1)}];
  }

  v74 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(a15, a16, a17, a18, a2, buffer, pixelBufferCopy);
  v76 = v75;
  v78 = v77;
  v80 = CVPixelBufferGetHeight(a11) - v79;
  v81 = v80 - v78;
  *&v80 = a19;
  v82 = [self _reticleCIColorForPixelBuffer:a11 opacity:v80];
  LODWORD(v83) = *(self + 208);
  v84 = [objc_msgSend(self _strokedRectangleImageWithRect:v82 thickness:v74 c:{v81, v76, v78, v83), "imageByCompositingOverImage:", outputImage}];
  [v32 setBlendKernel:*(self + 240)];
  [objc_msgSend(*(self + 248) startTaskToRender:v84 toDestination:v32 error:{&v96), "waitUntilCompletedAndReturnError:", &v96}];
}

- (void)_drawPIPUsingCPUAndMSRToOutputPixelBuffer:(double)buffer attachedPixelBuffer:(double)pixelBuffer outputRect:(double)rect inputRect:(double)inputRect normalizedReticleRect:(double)reticleRect primaryCaptureRect:(double)captureRect uprightExifOrientation:(double)orientation
{
  array = [MEMORY[0x1E695DF70] array];
  if (*(self + 350) == 1)
  {
    if (*(self + 368) && *(self + 352))
    {
      v34 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateStyled;
    }

    else
    {
      v34 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateUnstyled;
    }

    a12 = *(self + *v34);
    inputRect = *(self + 400);
    reticleRect = *(self + 408);
    captureRect = *(self + 416);
    orientation = *(self + 424);
  }

  v35 = *(self + 144);
  if (a13 < 6)
  {
    [v35 scalePixelBuffer:a12 rect:a11 intoPixelBuffer:inputRect rect:{reticleRect, captureRect, orientation, a2, buffer, pixelBuffer, rect}];
  }

  else
  {
    [v35 scalePixelBuffer:a12 rect:a13 exifOrientation:a11 intoPixelBuffer:inputRect rect:{reticleRect, captureRect, orientation, a2, buffer, pixelBuffer, rect}];
  }

  v36 = [[BWOverlaidRectangle alloc] initWithDisplayStyle:3];
  [(BWOverlaidRectangle *)v36 setBounds:a2, buffer, pixelBuffer, rect];
  [(BWOverlaidRectangle *)v36 setAnimationState:1];
  v37 = [[BWRamp alloc] initWithName:@"OverlaidRectangleDisplayStyleVideo"];
  LODWORD(v38) = 1.0;
  [(BWRamp *)v37 startRampFrom:1 to:2 iterations:0.0 shape:v38];
  [(BWRamp *)v37 updateRampForNextIteration];
  [(BWOverlaidRectangle *)v36 setRampAnimation:v37];
  [array addObject:v36];
  v39 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(a14, a15, a16, a17, a2, buffer, pixelBuffer);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = [[BWOverlaidRectangle alloc] initWithDisplayStyle:4];
  [(BWOverlaidRectangle *)v46 setBounds:v39, v41, v43, v45];
  [(BWOverlaidRectangle *)v46 setAnimationState:1];
  v47 = [[BWRamp alloc] initWithName:@"PiP Reticle"];
  LODWORD(v48) = 1.0;
  [(BWRamp *)v47 startRampFrom:1 to:2 iterations:0.0 shape:v48];
  [(BWRamp *)v47 updateRampForNextIteration];
  [(BWOverlaidRectangle *)v46 setRampAnimation:v47];
  [array addObject:v46];
  if ([array count])
  {
    [objc_msgSend(array "firstObject")];
    a19 = CGRectGetMaxY(v53) + 10.0;
  }

  return [self _drawOverlayRects:array toPixelBuffer:a11 withinRect:{a18, a19, a20, a21}];
}

- (int)_drawOverlayRects:(id)rects toPixelBuffer:(__CVBuffer *)buffer withinRect:(CGRect)rect
{
  result = 0;
  if (rects && buffer)
  {
    CVPixelBufferLockBaseAddress(buffer, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    if (FigCapturePixelFormatIsTenBit(PixelFormatType))
    {
      v12 = 16;
    }

    else
    {
      v12 = 8;
    }

    if (self->_bitmapContext)
    {
      CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      CGBitmapContextSetData();
    }

    else
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      v15 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      self->_bitmapContext = CGBitmapContextCreate(BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, v12, v15, DeviceGray, 0);
      *components = xmmword_1AD046820;
      v16 = CGColorCreate(DeviceGray, components);
      v19.width = 1.0;
      v19.height = -1.0;
      CGContextSetShadowWithColor(self->_bitmapContext, v19, 0.0, v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (DeviceGray)
      {
        CFRelease(DeviceGray);
      }
    }

    if ([rects count])
    {
      CGContextSaveGState(self->_bitmapContext);
      BWOverlaidRectangleDrawRectanglesInBitmapContext(rects, self->_bitmapContext, buffer);
      CGContextRestoreGState(self->_bitmapContext);
    }

    return CVPixelBufferUnlockBaseAddress(buffer, 0);
  }

  return result;
}

- (int)_loadAndConfigureSmartStyleProxyRenderer
{
  v3 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v3;
  if (!v3 || (v4 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProxyRendererV%d", 1])) == 0 || (v5 = objc_msgSend([v4 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProxyRenderer = v5) == 0))
  {
    LODWORD(v14) = -12786;
LABEL_23:

    self->_smartStyleProxyRenderer = 0;
    return v14;
  }

  [(CMISmartStyleProxyRenderer *)v5 setMaxInputStylesCount:1];
  LODWORD(v6) = 0.5;
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setForegroundRatio:v6];
  smartStyleProxyRenderer = self->_smartStyleProxyRenderer;
  v8 = [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer externalMemoryDescriptorForConfiguration:0];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v9 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:objc_msgSend(-[CMISmartStyleProxyRenderer metalCommandQueue](smartStyleProxyRenderer allocatorType:{"metalCommandQueue"), "device"), objc_msgSend(v8, "allocatorType")}];
  if (!v9)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v10 = objc_opt_new();
  if (!v10)
  {
LABEL_18:
    v13 = 0;
LABEL_19:
    v14 = 4294954510;
    goto LABEL_10;
  }

  [v10 setMemSize:{objc_msgSend(v8, "memSize")}];
  [v10 setWireMemory:1];
  [v10 setLabel:@"BWOverCaptureSmartStyleApplyNode-SmartStyleProxyRenderer-FigMetalAllocatorBackend"];
  [v10 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v11 = [v9 setupWithDescriptor:v10];
  if (!v11)
  {
    v12 = objc_opt_new();
    v13 = v12;
    if (v12)
    {
      [v12 setAllocatorBackend:v9];
      [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer setExternalMemoryResource:v13];
      v14 = 0;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v14 = v11;
  v13 = 0;
LABEL_10:

  if (v14)
  {
    [(BWVideoPIPOverlayNode *)v14 _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_23;
  }

  setup = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setup];
  if (setup)
  {
    LODWORD(v14) = setup;
    [BWVideoPIPOverlayNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_23;
  }

  prewarm = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prewarm];
  LODWORD(v14) = prewarm;
  if (prewarm)
  {
    [(BWVideoPIPOverlayNode *)prewarm _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_23;
  }

  self->_smartStyleRenderingMethod = 2;
  return v14;
}

- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)style
{
  v4 = [CMGetAttachment(style *off_1E798A3C8];
  if (v4)
  {
    v5 = [FigCaptureSmartStyle createFromDictionary:v4];
    if (v5)
    {
      v6 = v5;
      currentStyle = self->_currentStyle;
      if (!currentStyle)
      {
        currentStyle = objc_alloc_init(self->_smartStyleClass);
      }

      self->_currentStyle = currentStyle;
      -[CMISmartStyle setCastType:](self->_currentStyle, "setCastType:", [v6 cast]);
      [v6 intensity];
      [(CMISmartStyle *)self->_currentStyle setCastIntensity:?];
      [v6 toneBias];
      [(CMISmartStyle *)self->_currentStyle setToneBias:?];
      [v6 colorBias];
      v8 = self->_currentStyle;

      [(CMISmartStyle *)v8 setColorBias:?];
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWVideoPIPOverlayNode.m", 1541, @"LastShownDate:BWVideoPIPOverlayNode.m:1541", @"LastShownBuild:BWVideoPIPOverlayNode.m:1541", 0);
    free(v11);
  }
}

- (int)_renderSmartStyleToIntermediateBufferWithInputSampleBuffer:(opaqueCMSampleBuffer *)buffer pipSourcePixelBuffer:(__CVBuffer *)pixelBuffer inputRect:(CGRect)rect outputRect:(CGRect)outputRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (outputRect.size.width >= outputRect.size.height)
  {
    v12 = outputRect.size.width;
  }

  else
  {
    v12 = outputRect.size.height;
  }

  if (rect.size.width >= rect.size.height)
  {
    v13 = rect.size.width;
  }

  else
  {
    v13 = rect.size.height;
  }

  v14 = v12 / v13;
  v15 = vcvtpd_u64_f64(rect.size.width * v14);
  v16 = vcvtpd_u64_f64(rect.size.height * v14);
  smartStyleIntermediateUnstyled = self->_smartStyleIntermediateUnstyled;
  if (!smartStyleIntermediateUnstyled || !self->_smartStyleIntermediateStyled)
  {
    goto LABEL_20;
  }

  v18 = CVPixelBufferGetWidth(smartStyleIntermediateUnstyled);
  v19 = CVPixelBufferGetHeight(self->_smartStyleIntermediateUnstyled);
  v20 = self->_smartStyleIntermediateUnstyled;
  if (v18 > ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) || v19 > ((v16 + 15) & 0xFFFFFFFFFFFFFFF0))
  {
    if (v20)
    {
      CFRelease(v20);
      self->_smartStyleIntermediateUnstyled = 0;
    }

    smartStyleIntermediateStyled = self->_smartStyleIntermediateStyled;
    if (!smartStyleIntermediateStyled)
    {
      goto LABEL_20;
    }

    CFRelease(smartStyleIntermediateStyled);
    self->_smartStyleIntermediateStyled = 0;
    v20 = self->_smartStyleIntermediateUnstyled;
  }

  if (!v20 || !self->_smartStyleIntermediateStyled)
  {
LABEL_20:
    CVPixelBufferGetPixelFormatType(pixelBuffer);
    self->_smartStyleIntermediateUnstyled = CreatePixelBuffer();
    self->_smartStyleIntermediateStyled = CreatePixelBuffer();
    CVBufferPropagateAttachments(pixelBuffer, self->_smartStyleIntermediateUnstyled);
    CVBufferPropagateAttachments(pixelBuffer, self->_smartStyleIntermediateStyled);
    v20 = self->_smartStyleIntermediateUnstyled;
  }

  self->_smartStyleIntermediateROI.origin.x = 0.0;
  self->_smartStyleIntermediateROI.origin.y = 0.0;
  self->_smartStyleIntermediateROI.size.width = v15;
  self->_smartStyleIntermediateROI.size.height = v16;
  self->_smartStyleIntermediateROI.origin.x = ss_conformRectForMSR420vfPixelBuffer(v20, 1, 0.0, 0.0, v15, v16);
  self->_smartStyleIntermediateROI.origin.y = v23;
  self->_smartStyleIntermediateROI.size.width = v24;
  self->_smartStyleIntermediateROI.size.height = v25;
  v26 = ss_conformRectForMSR420vfPixelBuffer(self->_smartStyleIntermediateUnstyled, 1, 0.0, 0.0, (v15 + 2), (v16 + 2));
  [(BWScalingSession *)self->_scalingSession scalePixelBuffer:pixelBuffer rect:self->_smartStyleIntermediateUnstyled intoPixelBuffer:x rect:y, width, height, v26, v27, v28, v29];
  [(BWVideoPIPOverlayNode *)self _updateCurrentStyle:buffer];
  if (!self->_currentStyle)
  {
    return 0;
  }

  smartStyleRenderingMethod = self->_smartStyleRenderingMethod;
  if (smartStyleRenderingMethod == 2)
  {
    v31 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prepareToProcess:1];
    if (!v31)
    {
      goto LABEL_29;
    }

LABEL_27:
    smartStyleRenderingMethod = v31;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", smartStyleRenderingMethod);
    return smartStyleRenderingMethod;
  }

  if (smartStyleRenderingMethod != 3)
  {
    if (smartStyleRenderingMethod)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
      smartStyleRenderingMethod = -12782;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -12782);
    }

    return smartStyleRenderingMethod;
  }

  v31 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prepareToProcess:2];
  if (v31)
  {
    goto LABEL_27;
  }

LABEL_29:
  currentStyle = self->_currentStyle;
  -[CMISmartStyleProxyRenderer setInputStyles:](self->_smartStyleProxyRenderer, "setInputStyles:", [MEMORY[0x1E695DEC8] arrayWithObjects:&currentStyle count:1]);
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setInputPixelBuffer:self->_smartStyleIntermediateUnstyled];
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setOutputPixelBuffer:self->_smartStyleIntermediateStyled];
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setInputMetadata:CMGetAttachment(buffer, *off_1E798A3C8, 0)];
  process = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer process];
  if (process)
  {
    smartStyleRenderingMethod = process;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", smartStyleRenderingMethod);
  }

  else
  {
    smartStyleRenderingMethod = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer finishProcessing];
    if (smartStyleRenderingMethod)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", smartStyleRenderingMethod);
    }
  }

  return smartStyleRenderingMethod;
}

@end