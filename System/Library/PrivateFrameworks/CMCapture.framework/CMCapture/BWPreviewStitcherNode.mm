@interface BWPreviewStitcherNode
+ (void)prewarmCoreImageShaders;
- (BOOL)_currentlyZoomingOrSwitchingCameras;
- (BOOL)centerRegistrationValid;
- (BOOL)displaysWidestCameraOnly;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWPreviewStitcherNode)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor inputBuffersHaveHorizontalOverscanOnly:(BOOL)only registrationType:(int)registrationType registrationMetalCommandQueue:(id)queue excludeStaticComponentFromAlignmentShifts:(BOOL)shifts propagateDepth:(BOOL)depth propagateStyles:(BOOL)self0 smartFramingZoomFactorsByFieldOfView:(id)self1 sensorOrientationByPortType:(id)self2 singleCameraOverCaptureEnabled:(BOOL)self3 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)self4 zoomPIPOverlayEnabled:(BOOL)self5 zoomPIPMinimumUIZoomFactor:(float)self6 zoomPIPSingleStreamModeEnabled:(BOOL)self7 preallocateOutputBufferPool:(BOOL)self8 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)self9 propagatePrimaryPreviewSource:(BOOL)source;
- (BWPreviewStitcherNode)initWithStitchingDisabledAndZoomPIPOverlayEnabled:(BOOL)enabled zoomPIPMinimumUIZoomFactor:(float)factor zoomPIPSingleStreamModeEnabled:(BOOL)modeEnabled propagateDepth:(BOOL)depth propagateStyles:(BOOL)styles smartFramingZoomFactorsByFieldOfView:(id)view sensorOrientationByPortType:(id)type singleCameraOverCaptureEnabled:(BOOL)self0 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)self1 preallocateOutputBufferPool:(BOOL)self2 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)self3 propagatePrimaryPreviewSource:(BOOL)self4;
- (CGPoint)primaryCaptureRectCenter;
- (CMSampleBufferRef)_copySampleBufferToAttachForZoomPIPFromWiderCameraSampleBuffer:(const void *)buffer narrowerCameraSampleBuffer:;
- (CMSampleBufferRef)_newStitchedSampleBufferFromWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(float64x2_t *)narrowerCamera widerCameraRegionsShifts:(double *)shifts teleShift:(double *)shift primaryCaptureRectOut:(double *)out primaryCaptureRectBeforeCroppingOut:(void *)croppingOut centerWiderCameraShiftOut:(float64_t)shiftOut currentFrameRate:(float64_t)self0 inputCropRectOut:(float)self1;
- (CMSampleBufferRef)copySampleBufferToAttachForPropagatePrimaryPreviewSourceFromWiderCameraSampleBuffer:(CMSampleBufferRef)sbuf narrowerCameraSampleBuffer:;
- (_BYTE)_updateOverCaptureStatusWithWiderCameraSampleBuffer:(const void *)buffer narrowerCameraSampleBuffer:;
- (_DWORD)_setOverCaptureStatus:(_DWORD *)result;
- (__CFString)_displayStringForPortType:(__CFString *)result;
- (char)_rectangularFeatheredImageWithNarrowerCameraImage:(uint64_t)image widerCameraImage:(int)cameraImage narrowerCameraClipRect:(int)rect zoomingIn:(void *)in progress:(CGFloat)progress rampCameraTransition:(CGFloat)transition narrowerCameraEdgeExpansionRamp:(CGFloat)ramp;
- (char)_updateShiftCorrectionsAsyncFromComputedShift:(void *)shift byRegisteringWiderCamera:(uint64_t)camera narrowerCamera:(double)narrowerCamera macroTransitionType:(double)type;
- (double)_computeBravoWiderToNarrowerCameraShiftFromWiderCameraSampleBuffer:(uint64_t)buffer narrowerCameraSampleBuffer:;
- (double)_scaleFactorAppliedForPixelBuffer:(void *)buffer usedSourceRect:(double)result primaryCaptureRectAspectRatio:(double)ratio metadata:(double)metadata;
- (double)_wideBaseZoomFactorWithOverride;
- (double)_wideBaseZoomFactorWithOverrideLocked;
- (double)primaryCameraAspectRatio;
- (double)trueVideoTransitionPercentComplete;
- (id)_updateInputRequirements;
- (id)focusingDescription;
- (id)overCaptureStatusString;
- (id)previewRegistrationType;
- (id)primaryCameraShortDisplayName;
- (id)wideFallbackDescription;
- (int32x2_t)_cameraTransitionPool;
- (opaqueCMSampleBuffer)trueVideoTransitionReferenceSampleBuffer;
- (uint64_t)_applyBrightnessCompensationToImage:(void *)image referenceImage:(double)referenceImage bounds:(double)bounds compensationLevel:(double)level;
- (uint64_t)_cameraDisplayTransitionFrameCountForCameraFallbackChange:(float)change currentFrameRate:;
- (uint64_t)_featheredImageWithNarrowerCameraImage:(uint64_t)image widerCameraImage:(int)cameraImage narrowerCameraClipRect:(int)rect widerCameraClipRect:(int)clipRect zoomingIn:(int)in progress:(void *)progress featherEdges:(double)edges rampCameraTransition:(double)self0 renderEnhancedFeathering:(CGFloat)self1 narrowerCameraEdgeExpansionRamp:(CGFloat)self2 qsubToQsumEdgeOpacityRamp:(double)self3 qsubToQsumEdgeOpacityRampFromProgress:(double)self4;
- (uint64_t)_primaryCameraPortType;
- (unint64_t)_scaleCameraTransitionFrameCount:(int)count forCameraFallbackFromWideToTele:(double)tele recenteringShiftOffset:(double)offset recenteringStrength:(float)strength registrationShiftOffset:(double)shiftOffset;
- (unsigned)_renderCameraTransitionRampToPixelBuffer:(__CVBuffer *)buffer bounds:(__CVBuffer *)bounds withWiderCameraPixelBuffer:(int)pixelBuffer narrowerCameraPixelBuffer:(int)cameraPixelBuffer zoomingIn:(int)in progress:(int)progress narrowerCameraBounds:(double)cameraBounds narrowerCameraShift:(double)self0 featherEdges:(double)self1 rampCameraTransition:(double)self2 renderEnhancedFeathering:(float)self3 narrowerCameraEdgeExpansionRamp:(double)self4 qsubToQsumEdgeOpacityRamp:(double)self5 qsubToQsumEdgeOpacityRampFromProgress:(double)self6 renderBrightnessCompensation:(double)self7;
- (void)_callDelegateWithAppliedWiderCameraShift:(CVPixelBufferRef)shift narrowerCameraShift:(int)cameraShift widerCameraScaleFactor:(int)factor narrowerCameraScaleFactor:(int)scaleFactor widerCameraPixelBuffer:(int)buffer narrowerCameraPixelBuffer:(int)pixelBuffer widerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)zoomFactor narrowerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)self0 widerCameraPortType:narrowerCameraPortType:inSuperWideMacroMode:widerCameraShiftAtBaseZoom:;
- (void)_compensateForMissingFOVUsingPixelBuffer:(__CVBuffer *)buffer sourceRect:(int)rect destinationContainingRect:(int)containingRect destinationInsetRect:(int)insetRect outputPixelBuffer:(int)pixelBuffer;
- (void)_coreImageMetalLibraryURL;
- (void)_getInputRect:(uint64_t)rect outputRect:(uint64_t)outputRect inputShiftAppliedInOutputRect:(uint64_t)inOutputRect toTransferPixelBuffer:(uint64_t)buffer rect:(uint64_t)a7 intoPixelBufferDimensions:(uint64_t)dimensions rect:(double)a9 withInputShift:(double)self0 shiftOutsideBoundingRectAllowed:(double)self1 ignoreBounds:(double)self2 scale:(double)self3 forFinalOutput:(double)self4;
- (void)_initCameraTransitionCIContextWithColorManagementEnabled:(void *)enabled;
- (void)_preheatCIRenderingAsync;
- (void)_releaseResources;
- (void)_renderHDRPixelBufferToSDR:(uint64_t)r toOutputPixelBuffer:(float)buffer progress:;
- (void)_restitchAndEmitLastInputForAspectAndCenterChange;
- (void)_transferPixelBuffer:(CVPixelBufferRef)pixelBuffer rect:(int)rect intoPixelBuffer:(_OWORD *)buffer rect:(int)a6 isFinalOutput:(int)output withInputShift:(int)shift scale:(uint64_t)scale inputSourceRectOut:(uint64_t)self0;
- (void)_updateAndGetWiderCameraRegionShifts:(double *)shifts teleShift:(int)shift widerCameraIsSuperWide:(int)wide forComputedShift:(double)computedShift registrationEnabled:(double)enabled currentFrameRate:(float)rate;
- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)needed;
- (void)_updateZoomStatusFromWiderCameraSampleBuffer:narrowerCameraSampleBuffer:;
- (void)_waitForCIPreheatingToFinish;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)markDelayedEndOfData;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)rampToAdditionalZoomFactor:(double)factor momentMovieRecordingRecenteringEnabled:(BOOL)enabled;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setDisplaysWidestCameraOnly:(BOOL)only;
- (void)setEmitSampleBufferSemaphore:(id)semaphore;
- (void)setMaxLossyCompressionLevel:(int)level;
- (void)setPrimaryCameraAspectRatio:(double)ratio;
- (void)setPrimaryCaptureRectAspectRatio:(double)ratio center:(CGPoint)center trueVideoTransitionPercentComplete:(double)complete trueVideoTransitionReferenceSampleBuffer:(opaqueCMSampleBuffer *)buffer smartFramingTransitionPercentComplete:(double)percentComplete smartFramingTransitionTargetFieldOfView:(int)view fencePortSendRight:(id)right;
- (void)setStoppingForModeSwitch:(BOOL)switch delayedEndOfDataEnabled:(BOOL)enabled ispFastSwitchEnabled:(BOOL)switchEnabled smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)graph;
@end

@implementation BWPreviewStitcherNode

- (id)_updateInputRequirements
{
  if (result)
  {
    v1 = result;
    formatRequirements = [result[1] formatRequirements];
    v3 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248328];
    FigCaptureSupportedPixelFormatsForCompressionType(1, 1, 1, 0);
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 1, *(v1 + 49));
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];

    return [formatRequirements setSupportedPixelFormats:v3];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v21.i32[0] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] width];
  v21.i32[1] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] height];
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v21, self->_rotationDegrees);
  v3 = *MEMORY[0x1E695E480];
  VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &self->_intermediateRotationSession);
  v4 = *MEMORY[0x1E6983D68];
  VTSessionSetProperty(self->_intermediateRotationSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
  v5 = MEMORY[0x1E6983E28];
  if (self->_zoomPIPSingleStreamModeEnabled)
  {
    VTSessionSetProperty(self->_intermediateRotationSession, *MEMORY[0x1E6983E28], MEMORY[0x1E695E118]);
  }

  VTPixelRotationSessionCreate(v3, &self->_outputRotationSession);
  outputRotationSession = self->_outputRotationSession;
  v7 = *MEMORY[0x1E6983D98];
  v8 = FigCaptureVTRotationFromDegrees(self->_rotationDegrees);
  VTSessionSetProperty(outputRotationSession, v7, v8);
  VTSessionSetProperty(self->_outputRotationSession, v4, MEMORY[0x1E695E118]);
  if (self->_zoomPIPSingleStreamModeEnabled)
  {
    VTSessionSetProperty(self->_outputRotationSession, *v5, MEMORY[0x1E695E118]);
  }

  if (self->_flipHorizontal)
  {
    VTSessionSetProperty(self->_outputRotationSession, *MEMORY[0x1E6983D78], MEMORY[0x1E695E118]);
  }

  if (self->_flipVertical)
  {
    VTSessionSetProperty(self->_outputRotationSession, *MEMORY[0x1E6983D80], MEMORY[0x1E695E118]);
    flipVertical = self->_flipVertical;
  }

  else
  {
    flipVertical = 0;
  }

  v20 = 0;
  v10 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(self->_rotationDegrees, self->_flipHorizontal, flipVertical, &v20);
  FigCaptureMakeMirrorAndRotateVideoTransform(v21.i32[0], v21.i32[1], v20, v10, v19);
  v11 = v19[1];
  *&self->_outputTransform.a = v19[0];
  *&self->_outputTransform.c = v11;
  *&self->_outputTransform.tx = v19[2];
  if (self->_generatesHistogram)
  {
    VTSessionSetProperty(self->_outputRotationSession, *MEMORY[0x1E6983D70], [MEMORY[0x1E696AD98] numberWithBool:1]);
  }

  if (self->_primaryCaptureRectYInset != 0.0)
  {
    self->_primaryCaptureRectPixelInset = (self->_primaryCaptureRectYInset * [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]);
    if (self->_primaryCaptureRectPixelInset > ([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]- 2) >> 1)
    {
      [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height];
    }

    height = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height];
    primaryCaptureRectPixelInset = self->_primaryCaptureRectPixelInset;
    if (primaryCaptureRectPixelInset > (height - 2) >> 1)
    {
      primaryCaptureRectPixelInset = ([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]+ 0x1FFFFFFFELL) >> 1;
    }

    self->_primaryCaptureRectPixelInset = primaryCaptureRectPixelInset;
  }

  x = self->_primaryCaptureRectCenter.x;
  if (x != 0.5)
  {
    self->_primaryCaptureRectCenterXPixelOffset = ((x + -0.5) * v21.i32[0]);
  }

  y = self->_primaryCaptureRectCenter.y;
  if (y != 0.5)
  {
    self->_primaryCaptureRectCenterYPixelOffset = ((y + -0.5) * v21.i32[1]);
  }

  v16 = MEMORY[0x1E6960CC0];
  *&self->_lastSampleBuffer = *MEMORY[0x1E6960CC0];
  *&self->_lastInputPTS.timescale = *(v16 + 16);
  self->_lastFrameDroppedByBackpressure = 0;
  if (LOBYTE(self->_lastInputPTS.epoch) == 1)
  {
    self->_drawWiderCameraOnly = 1;
  }

  MGGetFloat32Answer();
  self->_screenScale = FigCaptureRoundFloatToMultipleOf(1, v17);
  BYTE1(self->_trueVideo16x9ZoomRamp) = BWColorSpacePropertiesIsHDR([(BWVideoFormat *)[(BWNodeInputMediaProperties *)[(BWNodeInput *)self->super._input primaryMediaProperties] resolvedVideoFormat] colorSpaceProperties]);
  if ((self->_trueVideo16x9ZoomRamp & 1) != 0 || ((BYTE2(self->_blackFilledBorderRectsBySurfaceID) | LOBYTE(self->_lastInputPTS.epoch)) & 1) == 0)
  {
    self->_havePreheatedCI = 1;
  }

  else
  {
    self->_cameraTransitionPoolReadyAssertion = [+[BWMemoryPool sharedMemoryPool](BWMemoryPool newFlushAssertion:"newFlushAssertion:", @"BWPreviewStitcherNode cameraTransitionPool"];
    if (BYTE2(self->_blackFilledBorderRectsBySurfaceID) == 1)
    {
      [(BWPreviewStitcherNode *)self _preheatCIRenderingAsync];
    }
  }

  self->_metalSubmissionQueue = FigDispatchQueueCreateWithPriority();
  v18.receiver = self;
  v18.super_class = BWPreviewStitcherNode;
  [(BWNode *)&v18 prepareForCurrentConfigurationToBecomeLive];
}

- (double)primaryCameraAspectRatio
{
  os_unfair_lock_lock(&self->_configurationLock);
  primaryCameraAspectRatio = self->_primaryCameraAspectRatio;
  os_unfair_lock_unlock(&self->_configurationLock);
  return primaryCameraAspectRatio;
}

- (CGPoint)primaryCaptureRectCenter
{
  x = self->_primaryCaptureRectCenter.x;
  y = self->_primaryCaptureRectCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (uint64_t)_primaryCameraPortType
{
  if (result)
  {
    if (*(result + 1224))
    {
      v1 = *off_1E798A0D0;
      v2 = *off_1E798A0C0;
      if (*(result + 944))
      {
        v1 = *off_1E798A0C0;
        v2 = *off_1E798A0D8;
      }

      if (*(result + 907))
      {
        return v1;
      }

      else
      {
        return v2;
      }
    }

    else
    {
      return *(result + 936);
    }
  }

  return result;
}

- (BOOL)_currentlyZoomingOrSwitchingCameras
{
  if (result)
  {
    v1 = result;
    return *(result + 912) != 0.0 || ([*(result + 952) isRamping] & 1) != 0 || v1[906] != objc_msgSend(v1, "displaysWidestCameraOnly");
  }

  return result;
}

- (BOOL)displaysWidestCameraOnly
{
  os_unfair_lock_lock(&self->_configurationLock);
  displaysWidestCameraOnly = self->_displaysWidestCameraOnly;
  os_unfair_lock_unlock(&self->_configurationLock);
  return (displaysWidestCameraOnly || self->_currentZoomRequiresWiderCamera) && LOBYTE(self->_lastInputPTS.epoch) == 1 && !self->_displaysPrimaryCameraOnly;
}

- (double)_wideBaseZoomFactorWithOverride
{
  if (!self)
  {
    return 0.0;
  }

  v1 = self[62];
  if (v1 <= 0.0)
  {
    v1 = self[61];
    if (v1 <= 0.0)
    {
      v1 = self[59];
      if (v1 <= 0.0)
      {
        v1 = self[56];
      }
    }
  }

  *&result = OUTLINED_FUNCTION_16_12(self, 288, v1);
  return result;
}

- (void)_restitchAndEmitLastInputForAspectAndCenterChange
{
  if (self)
  {
    os_unfair_lock_lock((self + 476));
    v2 = *(self + 1192);
    if (v2)
    {
      v3 = CFRetain(v2);
      os_unfair_lock_unlock((self + 476));
      if (v3)
      {
        v4 = [BWNodeSampleBufferMessage newMessageWithSampleBuffer:v3];
        [objc_msgSend(*(self + 8) "connection")];

        CFRelease(v3);
      }
    }

    else
    {

      os_unfair_lock_unlock((self + 476));
    }
  }
}

+ (void)prewarmCoreImageShaders
{
  v2 = MEMORY[0x1E695F620];
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];

  [v2 loadArchiveWithName:@"BWPreviewStitcherNodeCoreImageArchive" fromURL:v3];
}

- (BWPreviewStitcherNode)initWithStitchingDisabledAndZoomPIPOverlayEnabled:(BOOL)enabled zoomPIPMinimumUIZoomFactor:(float)factor zoomPIPSingleStreamModeEnabled:(BOOL)modeEnabled propagateDepth:(BOOL)depth propagateStyles:(BOOL)styles smartFramingZoomFactorsByFieldOfView:(id)view sensorOrientationByPortType:(id)type singleCameraOverCaptureEnabled:(BOOL)self0 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)self1 preallocateOutputBufferPool:(BOOL)self2 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)self3 propagatePrimaryPreviewSource:(BOOL)self4
{
  *(&v16 + 5) = __PAIR16__(source, offsetEnabled);
  BYTE4(v16) = pool;
  BYTE3(v16) = modeEnabled;
  BYTE2(v16) = enabled;
  LOWORD(v16) = __PAIR16__(factorEnabled, captureEnabled);
  BYTE1(v15) = styles;
  LOBYTE(v15) = depth;
  return [BWPreviewStitcherNode initWithCameraInfoByPortType:"initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:" sensorBinningFactor:0 inputBuffersHaveHorizontalOverscanOnly:0 registrationType:0 registrationMetalCommandQueue:0 excludeStaticComponentFromAlignmentShifts:0 propagateDepth:0 propagateStyles:v15 smartFramingZoomFactorsByFieldOfView:view sensorOrientationByPortType:type singleCameraOverCaptureEnabled:v16 parallaxMitigationBasedOnZoomFactorEnabled:? zoomPIPOverlayEnabled:? zoomPIPMinimumUIZoomFactor:? zoomPIPSingleStreamModeEnabled:? preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
}

- (BWPreviewStitcherNode)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor inputBuffersHaveHorizontalOverscanOnly:(BOOL)only registrationType:(int)registrationType registrationMetalCommandQueue:(id)queue excludeStaticComponentFromAlignmentShifts:(BOOL)shifts propagateDepth:(BOOL)depth propagateStyles:(BOOL)self0 smartFramingZoomFactorsByFieldOfView:(id)self1 sensorOrientationByPortType:(id)self2 singleCameraOverCaptureEnabled:(BOOL)self3 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)self4 zoomPIPOverlayEnabled:(BOOL)self5 zoomPIPMinimumUIZoomFactor:(float)self6 zoomPIPSingleStreamModeEnabled:(BOOL)self7 preallocateOutputBufferPool:(BOOL)self8 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)self9 propagatePrimaryPreviewSource:(BOOL)source
{
  shiftsCopy = shifts;
  v77.receiver = self;
  v77.super_class = BWPreviewStitcherNode;
  v27 = [(BWNode *)&v77 init];
  v28 = v27;
  if (!v27)
  {
    return v28;
  }

  v75 = shiftsCopy;
  LOBYTE(v27->_lastInputPTS.epoch) = type != 0;
  v27->_additionalZoomFactorSpring = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v28];
  v74 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v30 primaryMediaConfiguration] setFormatRequirements:v74];
  [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v30 primaryMediaConfiguration] setRetainedBufferCount:1];
  LOBYTE(v28->_borderStretchScaleFactor) = overlayEnabled;
  v28->_borderStretchNextNarrowerBaseZoomFactorMultiplier = zoomFactor;
  BYTE1(v28->_borderStretchScaleFactor) = modeEnabled;
  BYTE2(v28->_borderStretchScaleFactor) = modeEnabled;
  epoch_low = LOBYTE(v28->_lastInputPTS.epoch);
  if (epoch_low & 1) != 0 || (LOBYTE(v28->_borderStretchScaleFactor))
  {
    v32 = LOBYTE(v28->_borderStretchScaleFactor) & 1 | ((epoch_low & 1) == 0) ? 2 : 0;
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v30 primaryMediaConfiguration] setIndefinitelyHeldBufferCount:v32 | epoch_low];
    if ((v28->_lastInputPTS.epoch & 1) != 0 || LOBYTE(v28->_borderStretchScaleFactor) == 1 && (BYTE1(v28->_borderStretchScaleFactor) & 1) == 0)
    {
      v33 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v33 setFormatRequirements:v74];
      [(BWNodeInputMediaConfiguration *)v33 setPassthroughMode:0];
      [(BWNodeInputMediaConfiguration *)v33 setRetainedBufferCount:1];
      [(BWNodeInputMediaConfiguration *)v33 setIndefinitelyHeldBufferCount:epoch_low];
      [(BWNodeInput *)v30 setMediaConfiguration:v33 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    }
  }

  *(&v28->_zoomPIPUseNarrowerCamera + 1) = depth;
  if (depth)
  {
    v34 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v34 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v34 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v34 setRetainedBufferCount:1];
    [(BWNodeInput *)v30 setMediaConfiguration:v34 forAttachedMediaKey:@"Depth"];
  }

  LOBYTE(v28->_zoomPIPMinimumUIZoomFactor) = styles;
  if (styles)
  {
    v35 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v35 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v35 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v35 setRetainedBufferCount:1];
    [(BWNodeInput *)v30 setMediaConfiguration:v35 forAttachedMediaKey:0x1F21AB070];
    v36 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v36 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v36 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v36 setRetainedBufferCount:1];
    [(BWNodeInput *)v30 setMediaConfiguration:v36 forAttachedMediaKey:0x1F21AB0D0];
  }

  v37 = objc_alloc_init(BWNodeInputMediaConfiguration);
  [(BWNodeInputMediaConfiguration *)v37 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInputMediaConfiguration *)v37 setPassthroughMode:0];
  [(BWNodeInputMediaConfiguration *)v37 setRetainedBufferCount:1];
  [(BWNodeInput *)v30 setUnspecifiedAttachedMediaConfiguration:v37];
  [(BWNode *)v28 addInput:v30];

  [(BWPreviewStitcherNode *)&v28->super.super.isa _updateInputRequirements];
  v38 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v28];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v38 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutput *)v38 setPoolPreallocationEnabled:pool];
  v28->_zoomPIPUseNarrowerCamera = source;
  if (source)
  {
    v39 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v39 setPassthroughMode:1];
    v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWNodeInput index](v30, "index")}];
    -[BWNodeOutputMediaConfiguration setIndexesOfInputsWhichDrivesThisOutput:](v39, "setIndexesOfInputsWhichDrivesThisOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1]);
    [(BWNodeOutputMediaConfiguration *)v39 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"PrimaryFormat"];
    [(BWNodeOutput *)v38 setMediaConfiguration:v39 forAttachedMediaKey:0x1F21AAAD0];
  }

  [(BWNode *)v28 addOutput:v38];

  v28->_primaryCaptureRectYInset = 0.0;
  __asm { FMOV            V0.2D, #0.5 }

  v28->_primaryCaptureRectCenter = _Q0;
  v28->_shiftSmoothingFactor = 1.0;
  v28->_applyShift = 1;
  v45 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!type)
  {
    goto LABEL_35;
  }

  v46 = [type objectForKeyedSubscript:*off_1E798A0D0];
  v47 = v46;
  if (v46)
  {
    v28->_haveSuperWideCamera = 1;
    [objc_msgSend(v46 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
    v28->_superWideBaseZoomFactor = v48;
    [objc_msgSend(v47 objectForKeyedSubscript:{*off_1E7989E58), "floatValue"}];
    v28->_superWideCorrectedBaseZoomFactor = v49;
    v28->_superWideNondisruptiveSwitchingZoomFactors = [v47 objectForKeyedSubscript:*off_1E7989F00];
    v28->_superWideNondisruptiveSwitchingScaleFactor = 1.0;
    v50 = v28->_superWideNondisruptiveSwitchingZoomFactors != 0;
    LOBYTE(v28->_narrowerCameraFoVFillsOverCapture.name) = v50;
    BYTE1(v28->_zoomInFeatheringOuterRadiusExpanded) = v50;
    v28->_superWideNondisruptiveSwitchingWaitsForSuperWideFallback = 0;
  }

  v51 = [type objectForKeyedSubscript:*off_1E798A0C0];
  if (v51)
  {
    v52 = v51;
    [objc_msgSend(v51 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
    v28->_wideBaseZoomFactor = v53;
    v54 = [v52 objectForKeyedSubscript:*off_1E7989F00];
    v28->_wideNondisruptiveSwitchingZoomFactors = v54;
    v28->_wideNondisruptiveSwitchingScaleFactor = 1.0;
    v28->_lastWideNondisruptiveSwitchingScaleFactor = 1.0;
    if (v47)
    {
      v28->_wideBaseZoomFactorOverride = v28->_wideBaseZoomFactor;
      if ([&unk_1F22482F8 containsObject:{FigCaptureGetModelSpecificName(v54, v55)}])
      {
        v28->_wideBaseZoomFactorDynamicOverrideEnabled = 1;
        if ((v28->_narrowerCameraFoVFillsOverCapture.name & 1) == 0)
        {
          v56 = v28->_wideBaseZoomFactorOverride * 1.03916449;
          v28->_wideBaseZoomFactorOverrideMacro = v56;
          v28->_widePinholeFocalLengthInfinity = 4250.0;
          v28->_widePinholeFocalLengthMacro = 4577.0;
          v57 = 1.0;
          v58 = &OBJC_IVAR___BWPreviewStitcherNode__dynamicWideBaseZoomFactorSmoothingFactor;
LABEL_28:
          *(&v28->super.super.isa + *v58) = v57;
          goto LABEL_29;
        }

LABEL_27:
        v57 = v28->_wideBaseZoomFactorOverride * 1.03;
        v58 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactorOverrideMacro;
        goto LABEL_28;
      }

      name = v28->_narrowerCameraFoVFillsOverCapture.name;
      v28->_wideBaseZoomFactorDynamicOverrideEnabled = name;
      if (name)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  v60 = [type objectForKeyedSubscript:*off_1E798A0D8];
  v45 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (v60)
  {
    v61 = v60;
    v28->_haveTeleCamera = 1;
    v62 = [objc_msgSend(v60 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
    v28->_teleBaseZoomFactor = v63;
    if (v63 <= 0.0)
    {
      [BWPreviewStitcherNode initWithCameraInfoByPortType:v62 sensorBinningFactor:? inputBuffersHaveHorizontalOverscanOnly:? registrationType:? registrationMetalCommandQueue:? excludeStaticComponentFromAlignmentShifts:? propagateDepth:? propagateStyles:? smartFramingZoomFactorsByFieldOfView:? sensorOrientationByPortType:? singleCameraOverCaptureEnabled:? parallaxMitigationBasedOnZoomFactorEnabled:? zoomPIPOverlayEnabled:? zoomPIPMinimumUIZoomFactor:? zoomPIPSingleStreamModeEnabled:? preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
      goto LABEL_62;
    }

    v28->_teleNondisruptiveSwitchingZoomFactors = [v61 objectForKeyedSubscript:*off_1E7989F00];
    v28->_teleNondisruptiveSwitchingScaleFactor = 1.0;
    v28->_lastTeleNondisruptiveSwitchingScaleFactor = 1.0;
    v28->_teleBaseZoomFactorOverride = 0.0;
  }

  v28->_sensorBinningFactor = factor;
  if (factor.var0 < 1 || *&factor <= 0)
  {
    [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
    goto LABEL_62;
  }

  v28->_inputBuffersHaveHorizontalOverscanOnly = only;
  v28->_dynamicCameraScaleMSRMarginPercentage = 5.0;
LABEL_35:
  LOBYTE(v28->_restitchingQueue) = view != 0;
  if (view)
  {
    *&v28->_smartFramingConfiguredFieldOfView = view;
    if (portType)
    {
      v28->_smartFramingZoomFactorsByFieldOfView = portType;
    }
  }

  BYTE1(v28->_sensorOrientationByPortType) = 1;
  LOBYTE(v28->_sensorOrientationByPortType) = 1;
  BYTE2(v28->_sensorOrientationByPortType) = enabled;
  if (enabled && (v28->_restitchingQueue & 1) == 0)
  {
    [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
    goto LABEL_62;
  }

  v28->_configurationLock._os_unfair_lock_opaque = 0;
  if (type && (v28->_lastInputPTS.epoch & 1) != 0)
  {
    v28->_registrationType = registrationType;
    v64 = [[BWPreviewRegistration alloc] initWithCameraInfoByPortType:type sensorBinningFactor:factor registrationType:v28->_registrationType metalCommandQueue:queue excludeStaticComponentFromAlignmentShifts:v75];
    v28->_registration = v64;
    if (v64)
    {
      v28->_excludeStaticComponentFromAlignmentShiftsEnabled = v75;
      v28->_registrationEnabled = 1;
      v28->_shiftCorrectionsUpdateLock._os_unfair_lock_opaque = 0;
      v28->_registrationFrameSkipCount = 22;
      v28->_registrationUpdateRampFrameCount = 21;
      v28->_registerFirstFrame = 1;
      v28->_firstRegistrationIsSynchronous = 0;
      v28->_registrationTranslationOverride = 0;
      goto LABEL_44;
    }

    [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
LABEL_62:

    return 0;
  }

LABEL_44:
  v28->_primaryCameraAspectRatio = 0.0;
  v28->_displaysWidestCameraOnly = 0;
  v28->_displaysPrimaryCameraOnly = 0;
  v28->_primaryCaptureRectCenterXPixelOffsetFudge = 0;
  v28->_primaryCaptureRectCenterYPixelOffsetFudge = 0;
  v28->_primaryCaptureRectCenterYPixelOffsetEnabled = offsetEnabled;
  v28->_frameRateBasedRampsEnabled = 1;
  v28->_ciPreheatingQueue = FigDispatchQueueCreateWithPriority();
  WORD2(v28->_firstFramePTS.epoch) = 1;
  *&v28->_edgeFeatheringEnabled = 1064514355;
  v28->_edgeFeatheringAspectCompensation = 0.01;
  v28->_zoomInFeatheringInnerRadiusStart = 1.4;
  v28->_zoomInFeatheringInnerRadiusEnd = 0.55;
  v28->_zoomInFeatheringOuterRadiusStart = 1.95;
  v28->_zoomInFeatheringOuterRadiusEnd = 1.5;
  v28->_zoomOutFeatheringInnerRadiusStart = 0.2;
  v28->_zoomOutFeatheringInnerRadiusEnd = 1.56;
  v28->_zoomOutFeatheringOuterRadiusStart = 0.96;
  v28->_zoomOutFeatheringOuterRadiusEnd = 1.1;
  v28->_zoomInFeatheringInnerRadiusInterim = 1.65;
  v28->_zoomInFeatheringOuterRadiusInterim = 1.4;
  v28->_zoomInFeatheringInnerRadiusExpanded = 1.95;
  BYTE2(v28->_zoomInFeatheringOuterRadiusExpanded) = FigCapturePlatformIdentifier() > 8;
  *&v28->_featherEdgesForCameraTransitionRamp = 50;
  v28->_cameraTransitionEdgeFeatheringZoomInStartSigma = 10;
  v28->_cameraTransitionEdgeFeatheringZoomInEndSigma = 10;
  v28->_cameraTransitionEdgeFeatheringZoomOutStartSigma = 50;
  v28->_cameraTransitionEdgeFeatheringZoomOutEndSigma = 1;
  v28->_cameraTransitionEdgeFeatheringBorderInsetFactor = 1063675494;
  LODWORD(v28->_cameraTransitionEdgeFeatheringZoomInTeleEdgeExpansionStartFrameFill) = 5;
  v28->_cameraTransitionEdgeFeatheringZoomInTeleEdgeExpansionFrameDuration = 7;
  LOBYTE(v28->_cameraTransitionEdgeFeatheringZoomOutQsubToQsumEdgeOpacityRampFrameDuration) = 1;
  BYTE1(v28->_cameraTransitionEdgeFeatheringZoomOutQsubToQsumEdgeOpacityRampFrameDuration) = FigCapturePlatformIdentifier() > 8;
  *&v28->_cameraTransitionBorderEdgeFeatheringEnabled = 1036831949;
  v65 = objc_alloc_init(BWSpringSimulation);
  v28->_additionalZoomFactorSpringStartPTS.epoch = v65;
  [(BWSpringSimulation *)v65 resetWithInput:1.0 initialOutput:1.0 initialVelocity:0.0];
  LODWORD(v28->_lastRenderTime) = 1065353216;
  HIDWORD(v28->_lastRenderTime) = 0;
  BWSmartCameraSceneInitialize(&v28->_waitsForFencedUpdateBeforeFirstEmit, 1, 4, 1, "Wide Focus Distance Far Enough", 41.0, 6.0, 0.25);
  v28->_waitingForFencedUpdateBeforeFirstEmit = 1;
  if (LOBYTE(v28->_lastInputPTS.epoch))
  {
    v66 = 4;
  }

  else
  {
    v66 = 0;
  }

  HIDWORD(v28->_trueVideoCaptureAdditionalZoomFactor) = v66;
  LOBYTE(v28->_wideFocusDistanceFarEnoughForStitching.name) = 1;
  BYTE3(v28->_wideFocusDistanceFarEnoughForStitching.name) = 1;
  BYTE4(v28->_wideFocusDistanceFarEnoughForStitching.name) = 1;
  BWSmartCameraSceneInitialize(&v28->_hideSuperWideOverCaptureWhenTooClose, 1, 4, 1, "Wider Camera FoV Fills Over Capture", 20.0, 16.0, 0.75);
  v28->_superWideOccludedByWide = 1;
  BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&v28->_hideSuperWideOverCaptureWhenTooClose);
  BYTE4(v28->_widerCameraFoVFillsOverCapture.name) = 1;
  LODWORD(v28->_uiZoomFactor) = 1;
  BWSmartCameraSceneInitialize(&v28->_wideFallbackMode, 1, 10, 7, "Wide Focus Distance Far Enough To Use Tele", 61.0, 6.0, 0.2);
  BYTE1(v28->_wideFallbackMode) = 1;
  *&v28->_wideFocusingOneShot = [[BWRamp alloc] initWithName:@"WideFallbackShiftRamp"];
  BYTE2(v28->_wideFallbackRecenteringShiftOffset.y) = v75;
  *&v28->_superMacroEdgeFeatheringShowBlurMask = [[BWFencedAnimationQueue alloc] initWithQueueSize:1];
  BWSmartCameraSceneInitialize(&v28->_wantWideFallbackDueToTeleAEAF, 1, 3, 0, "Wide Focus Distance Far Enough To Use Wide", 16.0, 2.0, 0.8);
  v28->_wideFallbackShiftRampTargetValueIsWide = 1;
  v28->_wideFocusDistanceFarEnoughToUseWide.name = [[BWRamp alloc] initWithName:@"SuperWideFallbackShiftRamp"];
  LODWORD(v28->_superWideFallbackRecenteringShiftOffset.y) = 1050253722;
  BYTE1(v28->_superWideFallbackRecenteringStrength) = 1;
  BYTE6(v28->_superWideFallbackRecenteringShiftOffset.y) = 1;
  LOWORD(v28->_superWideFocusDistanceFarEnoughForRegistration.name) = 1;
  HIDWORD(v28->_superWideFocusDistanceFarEnoughForRegistration.name) = 1028443341;
  v28->_superMacroCameraTransitionRampOnFullPrimaryRectEnabled = 0;
  BWSmartCameraSceneInitialize(&v28->_inSuperMacroRange, 1, 4, 2, "Super Wide Focus Distance Far Enough For Registration", 7.5, 1.5, 0.5);
  v67 = 0;
  v28->_superMacroRangeRegistrationTuningEnabled = 1;
  HIDWORD(v28->_fencedAnimationQueue) = 30;
  if (LOBYTE(v28->_lastInputPTS.epoch) == 1)
  {
    v67 = v28->_wideNondisruptiveSwitchingZoomFactors != 0;
  }

  v28->_momentMovieRecordingRecenteringEnabled = v67;
  v28->_momentMovieRecordingRecenteringShiftRampFrameCount = 1098907648;
  wideNondisruptiveSwitchingZoomFactors = v28->_wideNondisruptiveSwitchingZoomFactors;
  v69 = 0.0;
  if (wideNondisruptiveSwitchingZoomFactors)
  {
    teleBaseZoomFactor = v28->_teleBaseZoomFactor;
    [-[NSArray lastObject](wideNondisruptiveSwitchingZoomFactors lastObject];
    v69 = teleBaseZoomFactor / v71;
  }

  v73 = v69 < 2.0 && v69 > 0.0;
  v28->_borderBlurEnabled = v28->_lastInputPTS.epoch & v73;
  v28->_borderBlurStrength = 1.22;
  *&v28->_borderStretchEnabled = 1069547520;
  v28->_wideNondisruptiveSwitchingCroppedFrameEnabled = v28->_wideNondisruptiveSwitchingZoomFactors != 0;
  v28->_teleNondisruptiveSwitchingCroppedFrameEnabled = *(&v28->super.super.isa + v45[330]) != 0;
  v28->_zoomPIPSingleStreamModeEnabled = FigCapturePlatformIdentifier() > 8;
  v28->_propagateStyles = factorEnabled;
  BWSmartCameraSceneInitialize(&v28->_parallaxMitigationBasedOnZoomFactorEnabled, 1, 16, 0, "Narrower Camera FoV Fills Over Capture", 0.99, 0.0, 0.9);
  *(&v28->_parallaxMitigationBasedOnZoomFactorEnabled + 1) = 1;
  LOBYTE(v28->_trueVideoTransitionPercentComplete) = 1;
  [(BWNode *)v28 setSupportsLiveReconfiguration:1];
  LOBYTE(v28->_lastStitchedBufferPTS.flags) = 1;
  LODWORD(v28->_lastStitchedBufferPTS.epoch) = 4;
  return v28;
}

- (void)dealloc
{
  [(BWPreviewStitcherNode *)self _releaseResources];
  intermediateRotationSession = self->_intermediateRotationSession;
  if (intermediateRotationSession)
  {
    CFRelease(intermediateRotationSession);
  }

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  outputRotationSession = self->_outputRotationSession;
  if (outputRotationSession)
  {
    CFRelease(outputRotationSession);
  }

  v6 = 3;
  selfCopy = self;
  do
  {

    selfCopy = (selfCopy + 56);
    --v6;
  }

  while (v6);
  v8 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *&self->_allowEdgeInsetDuringTrueVideoTransitions;
  if (v9)
  {
    CFRelease(v9);
  }

  transitionReferenceSampleBuffer = self->_transitionReferenceSampleBuffer;
  if (transitionReferenceSampleBuffer)
  {
    CFRelease(transitionReferenceSampleBuffer);
  }

  self->_emitSampleBufferSemaphore = 0;
  v11.receiver = self;
  v11.super_class = BWPreviewStitcherNode;
  [(BWNode *)&v11 dealloc];
}

- (void)setPrimaryCaptureRectAspectRatio:(double)ratio center:(CGPoint)center trueVideoTransitionPercentComplete:(double)complete trueVideoTransitionReferenceSampleBuffer:(opaqueCMSampleBuffer *)buffer smartFramingTransitionPercentComplete:(double)percentComplete smartFramingTransitionTargetFieldOfView:(int)view fencePortSendRight:(id)right
{
  v84.i32[0] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] width];
  v84.i32[1] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] height];
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v84, self->_rotationDegrees);
  v77 = v84;
  if (!BYTE2(self->_blackFilledBorderRectsBySurfaceID))
  {
    buffer = 0;
  }

  ratioCopy = ratio;
  os_unfair_lock_lock(&self->_configurationLock);
  primaryCameraAspectRatio = self->_primaryCameraAspectRatio;
  if (FigCaptureMetadataUtilitiesSizeIsInLandscapeOrientation(v84.i32[0], v84.i32[1]))
  {
    ratioCopy2 = ratio;
  }

  else
  {
    ratioCopy2 = 1.0 / ratio;
    if (ratioCopy2 >= 1.0)
    {
      ratioCopy = 1.0 / ratioCopy;
      primaryCameraAspectRatio = 1.0 / primaryCameraAspectRatio;
    }
  }

  v74 = 1749;
  if (ratioCopy >= primaryCameraAspectRatio)
  {
    v18 = BYTE5(self->_narrowerCameraFoVFillsOverCapture.name);
  }

  else
  {
    v18 = 0;
  }

  v19 = BYTE3(self->_blackFilledBorderRectsBySurfaceID);
  v20 = v18 & (v19 ^ 1);
  if (complete < 0.999 && (v19 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_14:
    v21 = v20;
    goto LABEL_15;
  }

  if (complete > 0.0)
  {
LABEL_12:
    v21 = 1;
    goto LABEL_15;
  }

  v21 = BYTE1(self->_lastInputPTS.epoch);
  if (v21 != 1)
  {
    if (buffer)
    {
      goto LABEL_12;
    }

    goto LABEL_157;
  }

  if (!buffer && (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
  {
LABEL_157:
    if (self->_primaryCameraAspectRatio == ratio || (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_15:
  v22 = 0;
  if (!view)
  {
    if (v21)
    {
      v22 = 1;
      if (ratioCopy2 < 1.33233333 && ratioCopy2 > 0.751 && (LOBYTE(self->_restitchingQueue) != 1 || (BYTE2(self->_restitchingQueue) & 1) == 0 && (BYTE1(self->_restitchingQueue) & 1) == 0 && !LODWORD(self->_smartFramingTransitionPercentComplete)))
      {
        v22 = 0;
      }
    }
  }

  v75 = v20;
  v23 = CMGetAttachment(buffer, @"LandscapeAspectRatioBeforeTrueVideoTransition", 0);
  if (v23)
  {
    [v23 floatValue];
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  if (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) == v22)
  {
    v76 = 0;
  }

  else
  {
    BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) = v22;
    v26 = v22 ^ 1;
    if (BYTE3(self->_blackFilledBorderRectsBySurfaceID) == 1)
    {
      v76 = !v22 || self->_landscapeAspectRatioBeforeTrueVideoTransition > complete;
    }

    else
    {
      LODWORD(v76) = v22;
      HIDWORD(v76) = (v26 & BYTE2(self->_blackFilledBorderRectsBySurfaceID));
    }

    v27 = fmin(fabs(v25 + -1.77777778), fabs(v25 + -0.5625)) >= 0.001;
    if (fmin(fabs(ratioCopy2 + -1.77777778), fabs(ratioCopy2 + -0.5625)) >= 0.001)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0 && !v27 && self->_lastPrimaryCameraAspectRatio == 0.0)
    {

      trueVideoHDRtoSDRBlendRamp = [[BWRamp alloc] initWithName:@"TrueVideoSpecialZoomRamp"];
      self->_trueVideoHDRtoSDRBlendRamp = trueVideoHDRtoSDRBlendRamp;
      if (BYTE3(self->_blackFilledBorderRectsBySurfaceID) == 1)
      {
        self->_trueVideoTransitionEnteringAspectRatio = v25;
        trueVideoHDRtoSDRBlendRamp = self->_trueVideoHDRtoSDRBlendRamp;
        LODWORD(v31) = 1128792064;
        LODWORD(v33) = 981668463;
        LODWORD(v34) = 1114636288;
        v29 = 0.0;
        LODWORD(v30) = 1.0;
      }

      else
      {
        LODWORD(v31) = 1128005632;
        LODWORD(v33) = 981668463;
        LODWORD(v34) = 1114636288;
        LODWORD(v29) = 1.0;
        v30 = 0.0;
      }

      LODWORD(v32) = 17.0;
      [(BWRamp *)trueVideoHDRtoSDRBlendRamp startSpringRampFrom:v29 to:v30 withTension:v31 friction:v32 snapFraction:v33 frameRate:v34, 1749];
    }
  }

  v35 = [CMGetAttachment(buffer *off_1E798A3C8];
  if (buffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    if (ImageBuffer)
    {
      v37 = !BWPixelBufferIsHDR(ImageBuffer);
    }

    else
    {
      v37 = 1;
    }

    v38 = BYTE1(self->_trueVideo16x9ZoomRamp);
    trueVideo16x9ZoomRamp = self->_trueVideo16x9ZoomRamp;
    if (!*&self->_allowEdgeInsetDuringTrueVideoTransitions && !*&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount && (self->_trueVideo16x9ZoomRamp & 1) == 0 && ((v38 | v37) & 1) != 0)
    {
      *&self->_allowEdgeInsetDuringTrueVideoTransitions = CFRetain(buffer);
      *&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount = [[BWRamp alloc] initWithName:@"TrueVideoTransitionOpacityRamp"];
      AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB070);
      if (BYTE1(self->_zoomPIPMinimumUIZoomFactor) == 1 && AttachedMedia)
      {
        transitionReferenceSampleBuffer = self->_transitionReferenceSampleBuffer;
        self->_transitionReferenceSampleBuffer = AttachedMedia;
        CFRetain(AttachedMedia);
        if (transitionReferenceSampleBuffer)
        {
          CFRelease(transitionReferenceSampleBuffer);
        }

        LODWORD(self->_transitionReferenceLearnedCoefficientsSampleBuffer) = 0;
      }

      if (BYTE3(self->_blackFilledBorderRectsBySurfaceID))
      {
        v52 = 147.0;
      }

      else
      {
        v52 = 166.0;
      }

      v53 = [CMGetAttachment(buffer @"TrueVideoTransitionLargeSphereTravelDetected"];
      if (BYTE4(self->_blackFilledBorderRectsBySurfaceID) & 1) != 0 || (v58 = v53, ([v35 isEqual:*off_1E798A0E0]) || objc_msgSend(v35, "isEqual:", *off_1E798A0F8))
      {
        v59 = v52 * 0.843373494;
        *&v54 = v59;
      }

      else if (v58)
      {
        *&v54 = v52 + -4.0;
      }

      else
      {
        *&v54 = v52;
      }

      LODWORD(v56) = 981668463;
      LODWORD(v57) = 1114636288;
      LODWORD(v59) = 1.0;
      LODWORD(v55) = 24.0;
      [*&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount startSpringRampFrom:v59 to:0.0 withTension:v54 friction:v55 snapFraction:v56 frameRate:{v57, v74}];
      goto LABEL_62;
    }
  }

  else
  {
    LOBYTE(v38) = BYTE1(self->_trueVideo16x9ZoomRamp);
    trueVideo16x9ZoomRamp = self->_trueVideo16x9ZoomRamp;
  }

  if ((v22 & BYTE3(self->_blackFilledBorderRectsBySurfaceID)) == 1 && ((self->_landscapeAspectRatioBeforeTrueVideoTransition > complete) & v38) == 1 && !self->_transitionReferenceOpacityRamp && !(trueVideo16x9ZoomRamp & 1 | (*&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount != 0)))
  {
    if (BYTE4(self->_blackFilledBorderRectsBySurfaceID))
    {
      v40 = 7;
    }

    else
    {
      v40 = 12;
    }

    v41 = [[BWRamp alloc] initWithName:@"TrueVideoHDRtoSDRTransitionRamp"];
    self->_transitionReferenceOpacityRamp = v41;
    LODWORD(v42) = 1045220557;
    LODWORD(v43) = 1.0;
    [(BWRamp *)v41 startRampFrom:v40 to:0 iterations:v43 shape:v42];
  }

LABEL_62:
  landscapeAspectRatioBeforeTrueVideoTransition = self->_landscapeAspectRatioBeforeTrueVideoTransition;
  if (landscapeAspectRatioBeforeTrueVideoTransition > complete && (setPrimaryCaptureRectAspectRatio_center_trueVideoTransitionPercentComplete_trueVideoTransitionReferenceSampleBuffer_smartFramingTransitionPercentComplete_smartFramingTransitionTargetFieldOfView_fencePortSendRight__trueVideoTransitionExitObservedForSignpost & 1) == 0)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v46 = fig_log_handle();
      if (os_signpost_enabled(v46))
      {
        *buf = 67240448;
        v81 = 16;
        v82 = 1026;
        v83 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CameraCaptureTrueVideoExitAnimationDelay", " enableTelemetry=YES N1=%{public,signpost.telemetry:number1}d N2=%{public,signpost.telemetry:number2}d", buf, 0xEu);
      }
    }

    v45 = 1;
    goto LABEL_70;
  }

  if (landscapeAspectRatioBeforeTrueVideoTransition < complete)
  {
    v45 = 0;
LABEL_70:
    setPrimaryCaptureRectAspectRatio_center_trueVideoTransitionPercentComplete_trueVideoTransitionReferenceSampleBuffer_smartFramingTransitionPercentComplete_smartFramingTransitionTargetFieldOfView_fencePortSendRight__trueVideoTransitionExitObservedForSignpost = v45;
  }

  if (buffer && (BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) != 0 && (([v35 isEqual:*off_1E798A0E0] & 1) != 0 || objc_msgSend(v35, "isEqual:", *off_1E798A0F8)))
  {
    v47 = CMGetAttachment(buffer, @"TotalZoomFactor", 0);
    if (v47)
    {
      [v47 floatValue];
      v49 = v48;
    }

    else
    {
      v49 = 1.0;
    }

    *&self->_forceBlackFillBorderEnabled = *&self->_forceBlackFillBorderEnabled / v49;
  }

  v60 = self->_landscapeAspectRatioBeforeTrueVideoTransition;
  if (v60 <= 0.0)
  {
    v62 = 0;
    v61 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  }

  else
  {
    v61 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    v62 = v60 < complete || complete == 1.0 && v60 == 1.0;
  }

  if ((BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) != 0 || (v62 & BYTE4(self->_narrowerCameraFoVFillsOverCapture.name)) != 1 || ratioCopy <= primaryCameraAspectRatio)
  {
    if (*(&self->super.super.isa + v74) == 1 && *&self->_superWideSensorCenterOffsetEnabled > ratioCopy)
    {
      *(&self->super.super.isa + v74) = 0;
    }
  }

  else
  {
    *(&self->super.super.isa + v74) = 1;
    *&self->_superWideSensorCenterOffsetEnabled = ratioCopy;
  }

  v64 = v22 && (v63 = self->_landscapeAspectRatioBeforeTrueVideoTransition, v63 <= complete) && v63 != 0.0;
  if (((v64 | BYTE3(self->_blackFilledBorderRectsBySurfaceID) | v75) & 1) == 0)
  {
    self->_trueVideoTransitionEnteringAspectRatio = ratioCopy2;
  }

  self->_landscapeAspectRatioBeforeTrueVideoTransition = complete;
  restitchingQueue_low = LOBYTE(self->_restitchingQueue);
  if (restitchingQueue_low == 1)
  {
    if (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) == 1 && ((*(&self->super.super.isa + v61[461]) & 1) != 0 || LODWORD(self->_smartFramingTransitionPercentComplete)))
    {
      LOBYTE(restitchingQueue_low) = 1;
      if ((BYTE2(self->_restitchingQueue) & 1) == 0)
      {
        BYTE2(self->_restitchingQueue) = 1;
        LOBYTE(restitchingQueue_low) = self->_restitchingQueue;
      }
    }

    else
    {
      LOBYTE(restitchingQueue_low) = 1;
    }
  }

  v66 = 0;
  if (view && percentComplete > 0.0 && percentComplete < 0.999 && (restitchingQueue_low & 1) != 0)
  {
    if (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name))
    {
      v66 = 0;
    }

    else
    {
      smartFramingTransitionPercentComplete_low = LODWORD(self->_smartFramingTransitionPercentComplete);
      if (smartFramingTransitionPercentComplete_low != view)
      {
        if (smartFramingTransitionPercentComplete_low)
        {
          HIDWORD(self->_smartFramingTransitionPercentComplete) = smartFramingTransitionPercentComplete_low;
        }

        LODWORD(self->_smartFramingTransitionPercentComplete) = view;
      }

      if (*&self->_smartFramingEnabled != percentComplete)
      {
        *&self->_smartFramingEnabled = percentComplete;
      }

      v66 = 1;
    }
  }

  if (restitchingQueue_low)
  {
    if (v66)
    {
      if (percentComplete != 1.0 || !view)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (view)
      {
        v68 = percentComplete == 1.0;
      }

      else
      {
        v68 = 0;
      }

      if (!v68 && (*(&self->super.super.isa + v61[461]) & 1) == 0)
      {
        goto LABEL_147;
      }
    }

    if (LODWORD(self->_smartFramingTransitionPercentComplete) != view)
    {
      LODWORD(self->_smartFramingTransitionPercentComplete) = view;
    }
  }

LABEL_147:
  v69 = ((center.x + -0.5) * v77.i32[0]);
  v70 = ((center.y + -0.5) * v77.i32[1]);
  v71 = v61[461];
  if (*(&self->super.super.isa + v71) != v66)
  {
    *(&self->super.super.isa + v71) = v66;
  }

  self->_primaryCameraAspectRatio = ratio;
  self->_primaryCaptureRectCenter = center;
  self->_primaryCaptureRectCenterXPixelOffset = v69;
  self->_primaryCaptureRectCenterYPixelOffset = v70;
  os_unfair_lock_unlock(&self->_configurationLock);
  if (right)
  {
    [*&self->_superMacroEdgeFeatheringShowBlurMask enqueueFencedAnimation:{+[BWPreviewStitcherFencedAnimationInfo fencedAnimationInfoWithAspectRatio:center:centerXPixelOffset:centerYPixelOffset:fencePortSendRight:](BWPreviewStitcherFencedAnimationInfo, "fencedAnimationInfoWithAspectRatio:center:centerXPixelOffset:centerYPixelOffset:fencePortSendRight:", v69, v70, right, ratio, center.x, center.y)}];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [*&self->_superMacroEdgeFeatheringShowBlurMask count];
      [right port];
      kdebug_trace();
    }

    if (BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) == 1)
    {
      BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) = 0;
      if (!*&self->_thermalPressureIsCritical)
      {
        mach_absolute_time();
      }

      mach_absolute_time();
      FigHostTimeToNanoseconds();
    }

    [(BWPreviewStitcherNode *)self _restitchAndEmitLastInputForAspectAndCenterChange];
  }

  if (v76)
  {
    [(BWPreviewStitcherDelegate *)self->_delegate trueVideoCaptureAdditionalZoomFactorForPreviewStitcher:self];
    if (v72 > 0.0)
    {
      v73 = v72;
      os_unfair_lock_lock(&self->_configurationLock);
      *&self->_forceBlackFillBorderEnabled = v73;
      os_unfair_lock_unlock(&self->_configurationLock);
    }
  }

  if (HIDWORD(v76))
  {
    [(BWPreviewStitcherDelegate *)self->_delegate previewStitcherTrueVideoExitTransitionDidComplete:self];
  }
}

- (double)trueVideoTransitionPercentComplete
{
  os_unfair_lock_lock(&self->_configurationLock);
  landscapeAspectRatioBeforeTrueVideoTransition = self->_landscapeAspectRatioBeforeTrueVideoTransition;
  os_unfair_lock_unlock(&self->_configurationLock);
  return landscapeAspectRatioBeforeTrueVideoTransition;
}

- (opaqueCMSampleBuffer)trueVideoTransitionReferenceSampleBuffer
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  CMSetAttachment(v4, @"LandscapeAspectRatioBeforeTrueVideoTransition", [MEMORY[0x1E696AD98] numberWithDouble:self->_trueVideoTransitionEnteringAspectRatio], 1u);
  os_unfair_lock_unlock(&self->_configurationLock);

  return v4;
}

- (void)setDisplaysWidestCameraOnly:(BOOL)only
{
  os_unfair_lock_lock(&self->_configurationLock);
  self->_displaysWidestCameraOnly = only;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)rampToAdditionalZoomFactor:(double)factor momentMovieRecordingRecenteringEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_configurationLock);
  epoch = self->_additionalZoomFactorSpringStartPTS.epoch;
  if (*&self->_lastRenderTime >= factor)
  {
    v8 = 22.0;
  }

  else
  {
    v8 = 24.0;
  }

  [self->_additionalZoomFactorSpringStartPTS.epoch setTension:dbl_1AD046ED0[*&self->_lastRenderTime < factor]];
  [epoch setFriction:v8];
  [epoch resetWithInput:1.0 initialOutput:0.0 initialVelocity:0.0 convergedSpeed:0.001];
  HIDWORD(self->_lastRenderTime) = self->_lastRenderTime;
  factorCopy = factor;
  *&self->_lastRenderTime = factorCopy;
  v10 = MEMORY[0x1E6960C70];
  *&self->_additionalZoomFactor = *MEMORY[0x1E6960C70];
  *&self->_additionalZoomFactorSpringStartPTS.timescale = *(v10 + 16);
  LOBYTE(self->_fencedAnimationQueue) = enabled;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setStoppingForModeSwitch:(BOOL)switch delayedEndOfDataEnabled:(BOOL)enabled ispFastSwitchEnabled:(BOOL)switchEnabled smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)graph
{
  enabledCopy = enabled;
  self->_stoppingForModeSwitch = switch;
  BYTE1(self->_narrowerCameraFoVFillsOverCapture.name) = enabled;
  BYTE3(self->_narrowerCameraFoVFillsOverCapture.name) = switchEnabled;
  BYTE1(self->_zoomPIPMinimumUIZoomFactor) = graph;
  v8 = LOBYTE(self->_lastInputPTS.epoch) != 1 || !switch;
  if (!v8 && ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0 || enabled))
  {
    [(BWPreviewStitcherNode *)self _setOverCaptureStatus:?];
  }

  if ((BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0 && ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0 || enabledCopy))
  {
    LOBYTE(self->_fencedAnimationQueue) = 1;
  }
}

- (void)markDelayedEndOfData
{
  if (BYTE1(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
  {
    if (BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
    {
      v3 = +[BWNodeEndOfDataMessage newMessage];
      [(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] consumeMessage:v3 fromOutput:[(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] output]];
    }

    else
    {
      BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) = 1;
    }
  }
}

- (void)setPrimaryCameraAspectRatio:(double)ratio
{
  os_unfair_lock_lock(&self->_configurationLock);
  self->_primaryCameraAspectRatio = ratio;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setMaxLossyCompressionLevel:(int)level
{
  if (self->_maxLossyCompressionLevel != level)
  {
    self->_maxLossyCompressionLevel = level;
    [(BWPreviewStitcherNode *)&self->super.super.isa _updateInputRequirements];
  }
}

- (void)setEmitSampleBufferSemaphore:(id)semaphore
{
  emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
  if (emitSampleBufferSemaphore != semaphore)
  {

    self->_emitSampleBufferSemaphore = semaphore;
  }
}

- (id)focusingDescription
{
  if (BYTE1(self->_wideFocusDistanceFarEnoughToUseTele.name))
  {
    v3 = @" T: One Shot";
  }

  else
  {
    v3 = &stru_1F216A3D0;
  }

  v4 = MEMORY[0x1E696AEC0];
  [(BWPreviewStitcherNode *)self wideFocusDistance];
  v6 = v5;
  if (LOBYTE(self->_wideFocusDistanceFarEnoughToUseTele.name))
  {
    v7 = " One Shot";
  }

  else
  {
    v7 = "";
  }

  return [v4 stringWithFormat:@"W: \t%.1fcm%s\t%@", *&v6, v7, v3];
}

- (id)overCaptureStatusString
{
  trueVideoCaptureAdditionalZoomFactor_high = HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor);
  if (trueVideoCaptureAdditionalZoomFactor_high > 6)
  {
    return 0;
  }

  else
  {
    return off_1E79909C8[trueVideoCaptureAdditionalZoomFactor_high];
  }
}

- (id)primaryCameraShortDisplayName
{
  _primaryCameraPortType = [(BWPreviewStitcherNode *)self _primaryCameraPortType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(BWPreviewStitcherNode *)self _displayStringForPortType:_primaryCameraPortType];
  return [v4 stringWithFormat:@"%@ (Rec %@)", v5, -[BWPreviewStitcherNode _displayStringForPortType:](self, self->_lastRecommendedMasterPortType)];
}

- (BOOL)centerRegistrationValid
{
  if (LOBYTE(self->_lastInputPTS.epoch) == 1)
  {
    os_unfair_lock_lock(&self->_shiftCorrectionsUpdateLock);
    if (self->_lastNarrowerCameraIsTele)
    {
      v3 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
    }

    else
    {
      v3 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
    }

    v4 = *(&self->_primaryCaptureRectYInset + *v3 + 1);
    os_unfair_lock_unlock(&self->_shiftCorrectionsUpdateLock);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)wideFallbackDescription
{
  if (BYTE1(self->_wideFallbackRecenteringShiftOffset.y))
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v4 = MEMORY[0x1E696AEC0];
  [*&self->_wideFocusingOneShot currentValue];
  v6 = v5 * 100.0;
  v7 = 0.3;
  if (BYTE2(self->_wideFallbackRecenteringShiftOffset.y))
  {
    v7 = 0.001;
  }

  return [v4 stringWithFormat:@"%@ : %ld%%", v3, llroundf(v6 * v7)];
}

- (id)previewRegistrationType
{
  if ([(BWPreviewRegistration *)self->_registration previewRegistrationType]== 1)
  {
    return @"AdaptiveCorrection";
  }

  else
  {
    return @"Vision";
  }
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWPreviewStitcherNode;
  hasNonLiveConfigurationChanges = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (hasNonLiveConfigurationChanges)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWPreviewStitcherNode with changing formats is not supported", 0}]);
  }

  return hasNonLiveConfigurationChanges;
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  formatRequirements = [(BWNodeOutput *)self->super._output formatRequirements];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248310];
  v9 = v8;
  if ((self->_lastInputPTS.epoch & 1) == 0)
  {
    [v8 insertObject:&unk_1F2242EC8 atIndex:0];
  }

  pixelFormat = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat];
  IsFullRange = FigCapturePixelFormatIsFullRange(pixelFormat);
  IsTenBit = FigCapturePixelFormatIsTenBit(pixelFormat);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__BWPreviewStitcherNode_didSelectFormat_forInput___block_invoke;
  v19[3] = &__block_descriptor_34_e35_B24__0__NSNumber_8__NSDictionary_16l;
  v20 = IsFullRange;
  v21 = IsTenBit;
  [v9 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v19)}];
  [(BWFormatRequirements *)formatRequirements setSupportedPixelFormats:v9];
  outputDimensions = self->_outputDimensions;
  if (outputDimensions.width < 1 || outputDimensions.height < 1)
  {
    -[BWFormatRequirements setWidth:](formatRequirements, "setWidth:", [objc_msgSend(input "videoFormat")]);
    height = [objc_msgSend(input "videoFormat")];
  }

  else
  {
    [(BWFormatRequirements *)formatRequirements setWidth:*&self->_outputDimensions & 0x7FFFFFFFLL];
    height = self->_outputDimensions.height;
  }

  [(BWFormatRequirements *)formatRequirements setHeight:height];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
  -[BWFormatRequirements setSupportedColorSpaceProperties:](formatRequirements, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);
  if (self->_zoomPIPUseNarrowerCamera)
  {
    v16 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);
    v17 = [v16 mediaPropertiesForAttachedMediaKey:0x1F21AAAD0];
    if (!v17)
    {
      v17 = objc_alloc_init(BWNodeOutputMediaProperties);
      [v16 _setMediaProperties:v17 forAttachedMediaKey:0x1F21AAAD0];
    }

    [(BWNodeOutputMediaProperties *)v17 setResolvedFormat:format];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (LOBYTE(self->_lastInputPTS.epoch) == 1)
  {
    [(BWPreviewStitcherDelegate *)self->_delegate previewStitcher:self overCaptureStatusDidChange:HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor)];
  }

  v9.receiver = self;
  v9.super_class = BWPreviewStitcherNode;
  [(BWNode *)&v9 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v155 = 0;
  v156 = 0;
  if (self->_superMacroEdgeFeatheringBlurEnabled)
  {
    [(BWPreviewRegistration *)self->_registration waitForRegistrationToComplete:buffer];
  }

  memset(&v154, 0, sizeof(v154));
  CMSampleBufferGetPresentationTimeStamp(&v154, buffer);
  v6 = CMGetAttachment(buffer, @"UIZoomFactor", 0);
  if (v6)
  {
    [v6 floatValue];
  }

  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    BWGetOriginalPresentationTimeStampFromBuffer(buffer, &time2);
    time = time2;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    goto LABEL_71;
  }

  time = v154;
  time2 = *&self->_lastSampleBuffer;
  if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
  {
    if (LOBYTE(self->_lastInputPTS.epoch) == 1 && !BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame"))
    {
      v17 = [CMGetAttachment(buffer @"OverCaptureSlaveStreamStatus"];
      if (v17 == 4 || v17 == 1 && !self->_previewsWideBeforeSlaveStreamStarts)
      {
LABEL_71:
        if (*v7 == 1)
        {
          kdebug_trace();
        }

        return;
      }
    }

    os_unfair_lock_lock(&self->_configurationLock);
    v8 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
    time.value = 0;
    BWCMSampleBufferCreateCopyIncludingMetadata(buffer, &time);
    *&v141.origin.x = v8;
    if (v8 == buffer)
    {
      if (!time.value)
      {
        os_unfair_lock_unlock(&self->_configurationLock);
        bufferCopy = 0;
        goto LABEL_38;
      }

      bufferCopy = CFRetain(time.value);
    }

    else
    {
      v9 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
      value = time.value;
      *&self->_cameraTransitionBrightnessCompensationInsetPercentage = time.value;
      if (value)
      {
        CFRetain(value);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      *&self->_lastSampleBuffer = v154;
      bufferCopy = buffer;
    }

    if (time.value)
    {
      CFRelease(time.value);
    }

    os_unfair_lock_unlock(&self->_configurationLock);
    if (*&v141.origin.x != buffer)
    {
      if ((self->_lastInputPTS.epoch & 0x100) != 0 || self->_trueVideoHDRtoSDRBlendRamp || BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v14 = UpTimeNanoseconds;
        if (BYTE1(self->_lastInputPTS.epoch) == 1 && UpTimeNanoseconds - *&self->_multiCameraStitchingEnabled <= 24000000)
        {
          goto LABEL_71;
        }

        os_unfair_lock_lock(&self->_configurationLock);
        trueVideoHDRtoSDRBlendRamp = self->_trueVideoHDRtoSDRBlendRamp;
        if (trueVideoHDRtoSDRBlendRamp)
        {
          isRamping = [(BWRamp *)trueVideoHDRtoSDRBlendRamp isRamping];
        }

        else
        {
          isRamping = self->_landscapeAspectRatioBeforeTrueVideoTransition > 0.002;
        }

        if (BYTE3(self->_blackFilledBorderRectsBySurfaceID) == 1)
        {
          if ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (!isRamping && (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0 && (BYTE5(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
          {
            if (v14 - *&self->_multiCameraStitchingEnabled > 110000000)
            {
              BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) = 0;

              self->_trueVideoHDRtoSDRBlendRamp = 0;
              v20 = BYTE2(self->_blackFilledBorderRectsBySurfaceID);
              os_unfair_lock_unlock(&self->_configurationLock);
              if (v20 == 1)
              {
                [(BWPreviewStitcherDelegate *)self->_delegate previewStitcherTrueVideoExitTransitionDidComplete:self];
              }

              goto LABEL_56;
            }

LABEL_55:
            os_unfair_lock_unlock(&self->_configurationLock);
LABEL_56:
            v18 = 0;
            BYTE1(self->_lastInputPTS.epoch) = 0;
LABEL_57:
            if (v154.flags)
            {
              v21 = &self->_havePreheatedCI + 4;
              if (self->_firstFramePTS.timescale)
              {
                if (!self->_havePreheatedCI)
                {
                  memset(&time, 0, sizeof(time));
                  time2 = v154;
                  *&rhs.value = *v21;
                  rhs.epoch = *&self->_firstFramePTS.flags;
                  CMTimeSubtract(&time, &time2, &rhs);
                  CMTimeMake(&time2, 750, 1000);
                  rhs = time;
                  if ((CMTimeCompare(&rhs, &time2) & 0x80000000) == 0)
                  {
                    [(BWPreviewStitcherNode *)self _preheatCIRenderingAsync];
                  }
                }
              }

              else
              {
                *v21 = *&v154.value;
                *&self->_firstFramePTS.flags = v154.epoch;
                [(BWPreviewStitcherDelegate *)self->_delegate previewStitcherReadyForPrimaryCaptureRectUpdates:self];
              }
            }

            if (BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) == 1)
            {
              v22 = *&self->_thermalPressureIsCritical;
              v23 = mach_absolute_time();
              if (!v22)
              {
                *&self->_thermalPressureIsCritical = v23;
                goto LABEL_71;
              }

              if (((FigHostTimeToNanoseconds() / 1000) / 1000000.0) < 0.11)
              {
                goto LABEL_71;
              }

              BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) = 0;
            }

            if (*(&self->_zoomPIPUseNarrowerCamera + 1) && (AttachedMedia = BWSampleBufferGetAttachedMedia(bufferCopy, @"Depth")) != 0)
            {
              v138 = CFRetain(AttachedMedia);
            }

            else
            {
              v138 = 0;
            }

            zoomPIPMinimumUIZoomFactor_low = LOBYTE(self->_zoomPIPMinimumUIZoomFactor);
            if ((self->_lastInputPTS.epoch & 1) != 0 || LOBYTE(self->_borderStretchScaleFactor) == 1)
            {
              v26 = BWOverCaptureSampleBufferUnpackAndRetain(bufferCopy, zoomPIPMinimumUIZoomFactor_low ^ 1u, &v156, &v155, 0, 0);
              if (v155)
              {
LABEL_78:
                if (LOBYTE(self->_zoomPIPMinimumUIZoomFactor) == 1)
                {
                  v27 = v155;
                  if (psn_attachedMediaKeysToPropagateForStyles_onceToken != -1)
                  {
                    [BWPreviewStitcherNode renderSampleBuffer:forInput:];
                  }

                  BWSampleBufferFilterWithAllowedAttachedMedia(v27, psn_attachedMediaKeysToPropagateForStyles_propagatingKeysForStyles);
                  v28 = v156;
                  if (psn_attachedMediaKeysToPropagateForStyles_onceToken != -1)
                  {
                    [BWPreviewStitcherNode renderSampleBuffer:forInput:];
                  }

                  BWSampleBufferFilterWithAllowedAttachedMedia(v28, psn_attachedMediaKeysToPropagateForStyles_propagatingKeysForStyles);
                }

                if (*(&self->_zoomPIPUseNarrowerCamera + 1))
                {
                  if ([CMGetAttachment(v155 @"DepthDisabled"])
                  {
                    v129 = 1;
                  }

                  else
                  {
                    v129 = [CMGetAttachment(v156 @"DepthDisabled"];
                  }
                }

                else
                {
                  v129 = 0;
                }

                v32 = *MEMORY[0x1E695EFF8];
                v31 = *(MEMORY[0x1E695EFF8] + 8);
                v139 = [(BWPreviewStitcherNode *)self _copySampleBufferToAttachForZoomPIPFromWiderCameraSampleBuffer:v156 narrowerCameraSampleBuffer:v155];
                cf = [(BWPreviewStitcherNode *)self copySampleBufferToAttachForPropagatePrimaryPreviewSourceFromWiderCameraSampleBuffer:v33 narrowerCameraSampleBuffer:v155];
                epoch = self->_lastInputPTS.epoch;
                if (LOBYTE(self->_borderStretchScaleFactor) == 1 && (self->_lastInputPTS.epoch & 1) == 0 && v156)
                {
                  CFRelease(v156);
                  v156 = 0;
                  epoch = self->_lastInputPTS.epoch;
                }

                if ((epoch & 1) == 0)
                {
                  if (!self->_lastNarrowerCameraPortType)
                  {
                    [(BWPreviewStitcherDelegate *)self->_delegate previewStitcher:self overCaptureStatusDidChange:HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor)];
                  }

                  v36 = *off_1E798A3C8;
                  v38 = CMGetAttachment(v155, *off_1E798A3C8, 0);

                  v39 = *off_1E798B540;
                  v131 = 0;
                  self->_lastNarrowerCameraPortType = [v38 objectForKeyedSubscript:*off_1E798B540];
                  v37 = v39;
                  goto LABEL_104;
                }

                [BWPreviewStitcherNode _updateZoomStatusFromWiderCameraSampleBuffer:narrowerCameraSampleBuffer:];
                v131 = v35;
                v36 = *off_1E798A3C8;
                if (!v156)
                {
                  v37 = *off_1E798B540;
LABEL_104:
                  v40 = v31;
                  v41 = v32;
                  goto LABEL_111;
                }

                v42 = CMGetAttachment(v156, *off_1E798A3C8, 0);
                v136 = CMGetAttachment(v155, v36, 0);
                v43 = *off_1E798B730;
                dictionary = [v42 objectForKeyedSubscript:*off_1E798B730];
                if (!dictionary)
                {
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  [v42 setObject:dictionary forKeyedSubscript:v43];
                }

                v132 = *off_1E798B540;
                v45 = [v136 objectForKeyedSubscript:?];
                if (v45)
                {
                  v46 = v45;
                  if (![dictionary objectForKeyedSubscript:v45])
                  {
                    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                    [dictionary2 setObject:objc_msgSend(v136 forKeyedSubscript:{"objectForKeyedSubscript:"), *off_1E798B3C0}];
                    [dictionary2 setObject:objc_msgSend(v136 forKeyedSubscript:{"objectForKeyedSubscript:"), *off_1E798B3C8}];
                    [dictionary setObject:dictionary2 forKeyedSubscript:v46];
                  }

                  v41 = [(BWPreviewStitcherNode *)self _computeBravoWiderToNarrowerCameraShiftFromWiderCameraSampleBuffer:v156 narrowerCameraSampleBuffer:v155];
                  v40 = v48;
                  v37 = v132;
LABEL_111:
                  v49 = [CMGetAttachment(v156 v36];
                  isEqualToString = objc_msgSend_isEqualToString_(v49);
                  registrationEnabled = self->_registrationEnabled;
                  if (v156)
                  {
                    v51 = v156;
                  }

                  else
                  {
                    v51 = v155;
                  }

                  v52 = [objc_msgSend(CMGetAttachment(v51 v36];
                  if (self->_deviceIsStationary != v52)
                  {
                    if (BYTE1(self->_superWideFallbackRecenteringStrength) == 1)
                    {
                      v53 = LOBYTE(self->_superWideFallbackRecenteringStrength) ^ 1;
                    }

                    else
                    {
                      v53 = 1;
                    }

                    self->_pendingRegistrationAfterDeviceBecomesStationary = v52 & v53;
                    self->_deviceIsStationary = v52;
                  }

                  v54 = CMGetAttachment(v155, v36, 0);
                  v133 = v37;
                  v55 = [v54 objectForKeyedSubscript:v37];
                  if (LOBYTE(self->_lastInputPTS.epoch) == 1 && self->_excludeStaticComponentFromAlignmentShiftsEnabled)
                  {
                    v56 = v55;
                    time = v154;
                    time2 = *(&self->_havePreheatedCI + 4);
                    if (!CMTimeCompare(&time, &time2))
                    {
                      if (objc_msgSend_isEqualToString_(v56))
                      {
                        ImageBuffer = CMSampleBufferGetImageBuffer(v155);
                        v58 = psn_pixelBufferDimensions(ImageBuffer);
                        [(BWPreviewRegistration *)self->_registration computeApproximateCorrectionForWiderCamera:v155 narrowerCameraPortType:*off_1E798A0D8 narrowerPixelBufferDimensions:v58 widerToNarrowerCameraScale:((self->_teleBaseZoomFactor * self->_teleNondisruptiveSwitchingScaleFactor) / (self->_wideBaseZoomFactor * self->_wideNondisruptiveSwitchingScaleFactor))];
                        v60 = v59;
                        v62 = v61;
                        [objc_msgSend(v54 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
                        if (v63 != 0.0)
                        {
                          v64 = v63;
                          v60 = v60 / v64;
                          v62 = v62 / v64;
                        }

                        os_unfair_lock_lock(&self->_shiftCorrectionsUpdateLock);
                        p_valueIsUpdated = &self->_wideToTeleShiftCorrections[0].valueIsUpdated;
                        v66 = 3;
                        do
                        {
                          *(p_valueIsUpdated - 2) = v60;
                          *(p_valueIsUpdated - 1) = v62;
                          *p_valueIsUpdated = 1;
                          p_valueIsUpdated += 56;
                          --v66;
                        }

                        while (v66);
                        *&self->_wideFallbackShiftRamp = self->_wideToTeleShiftCorrections[2].updatedValue;
                        os_unfair_lock_unlock(&self->_shiftCorrectionsUpdateLock);
                      }
                    }
                  }

                  key = v36;
                  v134 = v18;
                  v135 = bufferCopy;
                  if (LOBYTE(self->_lastInputPTS.epoch) == 1 && registrationEnabled)
                  {
                    if (v156)
                    {
                      v68 = v155 == 0;
                    }

                    else
                    {
                      v68 = 1;
                    }

                    registrationEnabled = !v68;
                  }

                  if (LOBYTE(self->_lastInputPTS.epoch))
                  {
                    v69 = !registrationEnabled;
                  }

                  else
                  {
                    v69 = 1;
                  }

                  if (!v69 && (!self->_lastRegistrationEnabled || *&v141.origin.x != buffer))
                  {
                    if (v131 & 1 | ![(BWPreviewStitcherNode *)self _currentlyZoomingOrSwitchingCameras])
                    {
                      if (!v156)
                      {
                        goto LABEL_203;
                      }
                    }

                    else
                    {
                      if (self->_lastRegisteredFrameCaptureID)
                      {
                        v72 = 1;
                      }

                      else
                      {
                        v72 = v156 == 0;
                      }

                      if (v72)
                      {
                        goto LABEL_203;
                      }
                    }

                    v73 = [objc_msgSend(v54 objectForKeyedSubscript:{*off_1E798B708), "intValue"}];
                    v74 = v73;
                    registrationFrameSkipCount = self->_registrationFrameSkipCount;
                    lastRegisteredFrameCaptureID = self->_lastRegisteredFrameCaptureID;
                    v77 = v73 - lastRegisteredFrameCaptureID;
                    if (v77 < 0)
                    {
                      v77 = lastRegisteredFrameCaptureID - v73;
                    }

                    if (v131)
                    {
                      registrationFrameSkipCount /= 4;
                    }

                    else if (HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor) == 3)
                    {
                      registrationFrameSkipCount = (registrationFrameSkipCount * 1.5);
                    }

                    if (v77 >= registrationFrameSkipCount || self->_registerFirstFrame && !lastRegisteredFrameCaptureID || self->_pendingRegistrationAfterDeviceBecomesStationary)
                    {
                      if (isEqualToString)
                      {
                        LODWORD(v141.origin.x) = 0;
                        v78 = BYTE4(self->_superWideFallbackRecenteringShiftOffset.y);
                      }

                      else
                      {
                        v78 = 0;
                        LODWORD(v141.origin.x) = LOBYTE(self->_wideFallbackRecenteringShiftOffset.y);
                      }

                      if (v156)
                      {
                        v79 = v156;
                      }

                      else
                      {
                        v79 = v155;
                      }

                      v80 = CMGetAttachment(v79, @"TotalZoomFactor", 0);
                      v81 = 1.0;
                      if (v80)
                      {
                        [v80 floatValue];
                        v81 = v82;
                      }

                      if (!(v78 & 1 | ((isEqualToString & 1) == 0)))
                      {
                        v78 = [self->_wideFocusDistanceFarEnoughToUseWide.name isRamping] && (self->_superWideFallbackShiftRamp & 1) == 0 && self->_haveSuperWideCamera && self->_haveTeleCamera && v81 >= self->_teleBaseZoomFactor;
                      }

                      v83 = self->_deviceIsStationary && !self->_pendingRegistrationAfterDeviceBecomesStationary;
                      if (isEqualToString)
                      {
                        superMacroRangeRegistrationTuningEnabled = self->_superMacroRangeRegistrationTuningEnabled;
                        if (!superMacroRangeRegistrationTuningEnabled)
                        {
                          if (self->_lastRegisteredFrameCaptureID)
                          {
                            goto LABEL_203;
                          }

                          os_unfair_lock_lock(&self->_shiftCorrectionsUpdateLock);
                          self->_lastRegisteredFrameCaptureID = self->_superWideToWideShiftCorrections[2].registeredFrameCaptureID;
                          os_unfair_lock_unlock(&self->_shiftCorrectionsUpdateLock);
                        }

                        if (!self->_lastRegisteredFrameCaptureID)
                        {
                          if ((HIDWORD(self->_wideFallbackRecenteringShiftOffset.y) - 1) <= 1)
                          {
                            if (BYTE4(self->_superWideFallbackRecenteringShiftOffset.y))
                            {
                              v85 = 1;
                            }

                            else
                            {
                              v85 = 2;
                            }

LABEL_202:
                            self->_lastRegisteredFrameCaptureID = v74;
                            self->_pendingRegistrationAfterDeviceBecomesStationary = 0;
                            [(BWPreviewStitcherNode *)self _updateShiftCorrectionsAsyncFromComputedShift:v156 byRegisteringWiderCamera:v155 narrowerCamera:v85 macroTransitionType:v41, v40];
                            goto LABEL_203;
                          }

LABEL_198:
                          if (BYTE1(self->_superWideFallbackRecenteringStrength) == 1 && (LOBYTE(self->_superWideFallbackRecenteringStrength) & isEqualToString & 1) != 0)
                          {
                            v85 = BYTE4(self->_superWideFallbackRecenteringShiftOffset.y) ^ 1u;
                          }

                          else
                          {
                            v85 = 0;
                          }

                          goto LABEL_202;
                        }

                        v86 = !superMacroRangeRegistrationTuningEnabled;
                      }

                      else
                      {
                        if (!self->_lastRegisteredFrameCaptureID)
                        {
                          goto LABEL_198;
                        }

                        v86 = 0;
                      }

                      if (((LODWORD(v141.origin.x) | v78 | v83) & 1) == 0 && !v86)
                      {
                        goto LABEL_198;
                      }
                    }
                  }

LABEL_203:
                  v150[0] = *MEMORY[0x1E695EFF8];
                  v150[1] = v150[0];
                  v150[2] = v150[0];
                  v141.origin = v150[0];
                  v149 = v150[0];
                  [objc_msgSend(v54 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
                  v88 = v87;
                  [(BWPreviewStitcherNode *)self _updateAndGetWiderCameraRegionShifts:v150 teleShift:v149.f64 widerCameraIsSuperWide:isEqualToString forComputedShift:registrationEnabled registrationEnabled:v41 currentFrameRate:v40, v87];
                  if ((self->_lastInputPTS.epoch & 1) != 0 || BYTE2(self->_sensorOrientationByPortType) == 1)
                  {
                    [(BWPreviewStitcherNode *)self _updateOverCaptureStatusWithWiderCameraSampleBuffer:v156 narrowerCameraSampleBuffer:v155];
                  }

                  v30 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                  emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
                  v29 = emitSampleBufferSemaphore != 0;
                  bufferCopy = v135;
                  v18 = v134;
                  if (emitSampleBufferSemaphore)
                  {
                    if ([(BWNodeConnection *)[(BWNodeOutput *)self->super._output connection] suspended]&& ![(BWNodeConnection *)[(BWNodeOutput *)self->super._output connection] bypassed])
                    {
                      goto LABEL_212;
                    }

                    v90 = 0;
                    if (v88 > 0.0 && !self->_lastFrameDroppedByBackpressure)
                    {
                      v90 = dispatch_time(0, (1000000000.0 / (v88 + v88)));
                    }

                    v91 = dispatch_semaphore_wait(self->_emitSampleBufferSemaphore, v90);
                    self->_lastFrameDroppedByBackpressure = v91 != 0;
                    if (v91)
                    {
LABEL_212:
                      v29 = 0;
                      goto LABEL_213;
                    }
                  }

                  v147 = 0u;
                  v148 = 0u;
                  v145 = 0u;
                  v146 = 0;
                  v143 = 0u;
                  v144 = 0u;
                  origin = v141.origin;
                  v97 = [(BWPreviewStitcherNode *)self _newStitchedSampleBufferFromWiderCamera:v156 narrowerCamera:v155 widerCameraRegionsShifts:v150 teleShift:&v147 primaryCaptureRectOut:&v145 primaryCaptureRectBeforeCroppingOut:&origin.x centerWiderCameraShiftOut:&v143 currentFrameRate:v149.f64[0] inputCropRectOut:v149.f64[1], v88];
                  if (!v97)
                  {
LABEL_213:
                    v92 = 0;
                    if (!v29 && *(&self->super.super.isa + v30[452]))
                    {
                      *&v141.size.height = *(&self->super.super.isa + v30[452]);
                      v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141.size.height count:1];
                    }

                    CMSampleBufferGetPresentationTimeStamp(&time, bufferCopy);
                    [(BWNodeOutput *)self->super._output emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BF70 pts:&time backPressureSemaphoresToIgnore:v92]];
                    v93 = 0;
                    transitionReferenceSampleBuffer = 0;
                    v95 = 1;
LABEL_217:
                    if (bufferCopy)
                    {
                      v96 = v18;
                    }

                    else
                    {
                      v96 = 0;
                    }

                    if (v96 == 1)
                    {
                      CFRelease(bufferCopy);
                    }

                    if (v156)
                    {
                      CFRelease(v156);
                    }

                    if (v155)
                    {
                      CFRelease(v155);
                    }

                    if (v139)
                    {
                      CFRelease(v139);
                    }

                    if (v138)
                    {
                      CFRelease(v138);
                    }

                    if (transitionReferenceSampleBuffer)
                    {
                      CFRelease(transitionReferenceSampleBuffer);
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (*v7 == 1)
                    {
                      [CMGetAttachment(v93 @"CAContextFencePortGenerationID"];
                      kdebug_trace();
                    }

                    if ((v95 & 1) == 0)
                    {
                      CFRelease(v93);
                    }

                    return;
                  }

                  v93 = v97;
                  if (LOBYTE(self->_borderStretchScaleFactor) == 1 && v139)
                  {
                    v98 = CMGetAttachment(v156, key, 0);
                    v99 = CMGetAttachment(v139, key, 0);
                    x = origin.x;
                    if (origin.x != v32 || (x = origin.y, origin.y != v31))
                    {
                      v101 = [v98 objectForKeyedSubscript:{v133, x}];
                      [v99 objectForKeyedSubscript:v133];
                      if (objc_msgSend_isEqualToString_(v101))
                      {
                        DictionaryRepresentation = CGPointCreateDictionaryRepresentation(origin);
                        CMSetAttachment(v139, @"NarrowerCameraPreviewAlignmentShift", DictionaryRepresentation, 1u);
                        if (DictionaryRepresentation)
                        {
                          CFRelease(DictionaryRepresentation);
                        }
                      }
                    }

                    BWSampleBufferSetAttachedMedia(v93, 0x1F21AAEB0, v139);
                  }

                  v103 = off_1E798A440;
                  if (self->_zoomPIPUseNarrowerCamera)
                  {
                    if (cf)
                    {
                      psn_attachCropRectToSampleBuffer(cf, *off_1E798A398, *&v143, *(&v143 + 1), *&v144, *(&v144 + 1));
                      psn_attachCropRectToSampleBuffer(cf, *off_1E798A360, *&v143, *(&v143 + 1), *&v144, *(&v144 + 1));
                      CMSetAttachment(cf, @"RotationDegrees", [MEMORY[0x1E696AD98] numberWithInt:self->_rotationDegrees], 1u);
                      BWSampleBufferSetAttachedMedia(v93, 0x1F21AAAD0, cf);
                      if (LOBYTE(self->_restitchingQueue) == 1)
                      {
                        v104 = CMSampleBufferGetImageBuffer(cf);
                        Width = CVPixelBufferGetWidth(v104);
                        Height = CVPixelBufferGetHeight(v104);
                        FigCaptureDenormalizeCropRect(Width | (Height << 32), *&v143, *(&v143 + 1), *&v144, *(&v144 + 1));
                        v109 = FigCaptureMetadataUtilitiesSizeIsInLandscapeOrientation(v107, v108);
                        CMSetAttachment(v93, *off_1E798A440, [MEMORY[0x1E696AD98] numberWithBool:v109], 1u);
                      }
                    }
                  }

                  if (v138)
                  {
                    BWSampleBufferSetAttachedMedia(v93, @"Depth", v138);
                  }

                  if (*(&self->_zoomPIPUseNarrowerCamera + 1) && ((v129 & 1) != 0 || BYTE4(self->_superWideFallbackRecenteringShiftOffset.y) == 1))
                  {
                    CMSetAttachment(v93, @"DepthDisabled", MEMORY[0x1E695E118], 1u);
                  }

                  if (LOBYTE(self->_zoomPIPMinimumUIZoomFactor) != 1)
                  {
                    transitionReferenceSampleBuffer = 0;
LABEL_272:
                    v112 = v147;
                    v113 = v148;
                    v114 = v145;
                    *&v141.origin.x = v145;
                    v115 = v146;
                    v116 = CMSampleBufferGetImageBuffer(v93);
                    v117 = CVPixelBufferGetWidth(v116);
                    v118 = CVPixelBufferGetHeight(v116);
                    FigCaptureMetadataUtilitiesNormalizeCropRect(*&v112, *(&v112 + 1), *&v113, *(&v113 + 1), v117, v118);
                    v119 = CGRectCreateDictionaryRepresentation(v158);
                    CMSetAttachment(v93, *off_1E798A430, v119, 1u);
                    if (v119)
                    {
                      CFRelease(v119);
                    }

                    v159.origin.x = v141.origin.x;
                    v159.origin.y = *(&v114 + 1);
                    v159.size = v115;
                    v120 = CGRectCreateDictionaryRepresentation(v159);
                    CMSetAttachment(v93, *off_1E798A438, v120, 1u);
                    if (v120)
                    {
                      CFRelease(v120);
                    }

                    if ((BYTE1(self->_zoomPIPMinimumUIZoomFactor) & 1) == 0)
                    {
                      if ((BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0 && BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
                      {
                        CMSetAttachment(v93, @"SmartStyleApplyWithIdentityCoefficients", MEMORY[0x1E695E118], 1u);
                      }

                      if (BYTE2(self->_blackFilledBorderRectsBySurfaceID) == 1 && (BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0)
                      {
                        if ((BYTE2(self->_zoomPIPMinimumUIZoomFactor) & 1) == 0)
                        {
                          time = v154;
                          v121 = CMTimeGetSeconds(&time) + 0.3;
                          *&self->_previewTapRegistered = v121;
                          BYTE2(self->_zoomPIPMinimumUIZoomFactor) = 1;
                        }

                        time = v154;
                        v18 = v134;
                        if (CMTimeGetSeconds(&time) < *&self->_previewTapRegistered)
                        {
                          CMSetAttachment(v93, @"SmartStyleApplyWithIdentityCoefficients", MEMORY[0x1E695E118], 1u);
                        }
                      }
                    }

                    v122 = CMGetAttachment(v93, key, 0);
                    v123 = [CMGetAttachment(v93 *v103];
                    smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors = self->_smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors;
                    self->_smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors = v123;
                    if ((self->_lastStitchedBufferPTS.flags & 1) != 0 && (v125 = v123, time = v154, time2 = *&self->_singleCameraOverCaptureRemainingFramesUntilStopOverCaptureRendering, !CMTimeCompare(&time, &time2)) && smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors == v125 && (epoch_high = HIDWORD(self->_lastStitchedBufferPTS.epoch), epoch_high <= LODWORD(self->_lastStitchedBufferPTS.epoch)))
                    {
                      v127 = 0;
                      HIDWORD(self->_lastStitchedBufferPTS.epoch) = epoch_high + 1;
                      v128 = 1;
                    }

                    else
                    {
                      v128 = 0;
                      v127 = 0;
                      HIDWORD(self->_lastStitchedBufferPTS.epoch) = 0;
                      if (BYTE1(self->_restitchingQueue) == 1)
                      {
                        v128 = 0;
                        v127 = LODWORD(self->_smartFramingTransitionPercentComplete) == 4;
                      }
                    }

                    [v122 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v128), *off_1E798A660}];
                    [v122 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v127), *off_1E798A838}];
                    *&self->_singleCameraOverCaptureRemainingFramesUntilStopOverCaptureRendering = v154;
                    [(BWNodeOutput *)self->super._output emitSampleBuffer:v93];
                    v95 = 0;
                    v7 = MEMORY[0x1E695FF58];
                    bufferCopy = v135;
                    goto LABEL_217;
                  }

                  transitionReferenceSampleBuffer = self->_transitionReferenceSampleBuffer;
                  if (transitionReferenceSampleBuffer)
                  {
                    v110 = 8;
                  }

                  else
                  {
                    v110 = 18;
                  }

                  if (BYTE1(self->_zoomPIPMinimumUIZoomFactor) == 1 && transitionReferenceSampleBuffer)
                  {
                    CFRetain(self->_transitionReferenceSampleBuffer);
                    ++LODWORD(self->_transitionReferenceLearnedCoefficientsSampleBuffer);
                    v18 = v134;
                    if ((BYTE1(self->_zoomPIPMinimumUIZoomFactor) & 1) == 0)
                    {
                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    transitionReferenceSampleBuffer = 0;
                    v18 = v134;
                    if (!BYTE1(self->_zoomPIPMinimumUIZoomFactor))
                    {
LABEL_271:
                      psn_attachCropRectToSampleBuffer(v93, *off_1E798A398, *&v143, *(&v143 + 1), *&v144, *(&v144 + 1));
                      CMSetAttachment(v93, @"PreviewStitcherPrimaryCameraTransitionInProgress", [MEMORY[0x1E696AD98] numberWithInt:self->_cameraTransitionRamp != 0], 1u);
                      v103 = off_1E798A440;
                      goto LABEL_272;
                    }
                  }

                  v111 = self->_transitionReferenceSampleBuffer;
                  if (v111 && SLODWORD(self->_transitionReferenceLearnedCoefficientsSampleBuffer) >= v110)
                  {
                    CFRelease(v111);
                    self->_transitionReferenceSampleBuffer = 0;
                  }

                  goto LABEL_271;
                }

                [BWPreviewStitcherNode renderSampleBuffer:forInput:];
                v29 = 0;
LABEL_92:
                v30 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                goto LABEL_213;
              }

              [BWPreviewStitcherNode renderSampleBuffer:v26 forInput:?];
            }

            else
            {
              if (bufferCopy)
              {
                v71 = CFRetain(bufferCopy);
                v155 = v71;
                if (v71)
                {
                  if ((zoomPIPMinimumUIZoomFactor_low & 1) == 0)
                  {
                    BWSampleBufferRemoveAllAttachedMedia(v71);
                  }

                  goto LABEL_78;
                }
              }

              else
              {
                v155 = 0;
              }

              [BWPreviewStitcherNode renderSampleBuffer:forInput:];
            }

            v29 = 0;
            v139 = 0;
            cf = 0;
            goto LABEL_92;
          }

          if ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0 || self->_landscapeAspectRatioBeforeTrueVideoTransition > 0.99)
          {
            goto LABEL_55;
          }
        }

        os_unfair_lock_unlock(&self->_configurationLock);
        if (BYTE1(self->_lastInputPTS.epoch) == 1 && v14 - *&self->_multiCameraStitchingEnabled < 110000001)
        {
          goto LABEL_71;
        }

        goto LABEL_56;
      }

      v19 = FigGetUpTimeNanoseconds();
      v18 = 0;
LABEL_39:
      *&self->_multiCameraStitchingEnabled = v19;
      goto LABEL_57;
    }

LABEL_38:
    v18 = 1;
    BYTE1(self->_lastInputPTS.epoch) = 1;
    v19 = FigGetUpTimeNanoseconds();
    goto LABEL_39;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  if ([*&self->_superMacroEdgeFeatheringShowBlurMask count])
  {
    metalSubmissionQueue = self->_metalSubmissionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BWPreviewStitcherNode_renderSampleBuffer_forInput___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(metalSubmissionQueue, block);
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_emitSampleBufferSemaphore)
  {
    emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
    v6 = +[BWDroppedSample newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:](BWDroppedSample, "newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:", sample, [MEMORY[0x1E695DEC8] arrayWithObjects:&emitSampleBufferSemaphore count:1]);
    [(BWNodeOutput *)self->super._output emitDroppedSample:sample];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BWPreviewStitcherNode;
    [(BWNode *)&v7 handleDroppedSample:sample forInput:input];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (d)
  {
    [(BWNode *)&v6 didReachEndOfDataForConfigurationID:v5.receiver input:v5.super_class, self, BWPreviewStitcherNode];
  }

  else if (BYTE1(self->_narrowerCameraFoVFillsOverCapture.name) != 1 || (BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0)
  {
    if (!self->_stoppingForModeSwitch)
    {
      [(BWPreviewStitcherNode *)self _setOverCaptureStatus:?];
    }

    [(BWPreviewStitcherNode *)self _waitForCIPreheatingToFinish];

    self->_fencePortSendRight = 0;
    [*&self->_superMacroEdgeFeatheringShowBlurMask flush];
    dispatch_sync(self->_metalSubmissionQueue, &__block_literal_global_30);
    if ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0 && (BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0)
    {
      [(BWPreviewStitcherNode *)self _releaseResources];
    }

    [(BWNode *)&v5 didReachEndOfDataForConfigurationID:self input:BWPreviewStitcherNode, v6.receiver, v6.super_class];
  }

  else
  {
    dispatch_group_enter([(BWNode *)self currentConfigurationGroup]);
    BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) = 1;
  }
}

void __131__BWPreviewStitcherNode__updateShiftCorrectionsAsyncFromComputedShift_byRegisteringWiderCamera_narrowerCamera_macroTransitionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 64))
  {
    v5 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
  }

  else
  {
    v5 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
  }

  v6 = *v5;
  v7 = *(v4 + 872);
  if (v7)
  {
    v19 = *MEMORY[0x1E695EFF8];
    CGPointMakeWithDictionaryRepresentation(v7, &v19);
    v8 = (a2 + 8);
    v9 = 3;
    do
    {
      LOBYTE(v8[-1].y) = 1;
      *v8 = v19;
      v8 = (v8 + 24);
      --v9;
    }

    while (v9);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = v4;
  }

  v11 = v4 + v6;
  os_unfair_lock_lock(v10 + 129);
  v12 = 0;
  v13 = *(*(a1 + 32) + 908);
  v14 = (a2 + 8);
  do
  {
    v15 = LOBYTE(v14[-1].f64[1]);
    if (v15 == 1)
    {
      v16 = *(a1 + 56);
      if (v16 == 0.0)
      {
        v17 = *v14;
      }

      else
      {
        v17 = vdivq_f64(*v14, vdupq_lane_s64(COERCE__INT64(v16), 0));
        *v14 = v17;
      }

      *(v11 + v12 + 16) = vsubq_f64(v17, *(a1 + 40));
      if ((v13 & 1) == 0)
      {
        *(v11 + v12 + 32) = 1;
      }
    }

    v18 = v11 + v12;
    *(v18 + 33) = v15;
    *(v18 + 36) = *(a1 + 60);
    v12 += 56;
    v14 = (v14 + 24);
  }

  while (v12 != 168);
  os_unfair_lock_unlock((*(a1 + 32) + 516));
}

- (void)_releaseResources
{
  if (self)
  {
    [*(self + 504) cleanupResources];
    *(self + 512) = 0;
    VTPixelRotationSessionInvalidate(*(self + 392));
    v2 = *(self + 392);
    if (v2)
    {
      CFRelease(v2);
      *(self + 392) = 0;
    }

    VTPixelRotationSessionInvalidate(*(self + 400));
    v3 = *(self + 400);
    if (v3)
    {
      CFRelease(v3);
      *(self + 400) = 0;
    }

    v4 = *(self + 1192);
    if (v4)
    {
      CFRelease(v4);
      *(self + 1192) = 0;
    }

    *(self + 960) = 0;
    *(self + 984) = 0;

    *(self + 968) = 0;
  }
}

- (_DWORD)_setOverCaptureStatus:(_DWORD *)result
{
  if (result)
  {
    v3 = result;
    if (result[327] != a2)
    {
      [result overCaptureStatusString];
      v3[327] = a2;
      v4 = *(v3 + 58);

      return [v4 previewStitcher:v3 overCaptureStatusDidChange:a2];
    }
  }

  return result;
}

- (double)_wideBaseZoomFactorWithOverrideLocked
{
  if (!self)
  {
    return 0.0;
  }

  os_unfair_lock_lock((self + 476));
  _wideBaseZoomFactorWithOverride = [(BWPreviewStitcherNode *)self _wideBaseZoomFactorWithOverride];
  v3 = LODWORD(_wideBaseZoomFactorWithOverride);
  os_unfair_lock_unlock((self + 476));
  LODWORD(result) = v3;
  return result;
}

- (__CFString)_displayStringForPortType:(__CFString *)result
{
  if (result)
  {
    if (objc_msgSend_isEqualToString_(a2, a2, *off_1E798A0D0))
    {
      return @"SuperWide";
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      return @"Wide";
    }

    else if (objc_msgSend_isEqualToString_(a2))
    {
      return @"Tele";
    }

    else
    {

      return BWPortTypeToDisplayString(a2, v3);
    }
  }

  return result;
}

- (void)_preheatCIRenderingAsync
{
  if (self && (*(self + 1832) & 1) == 0 && ((*(self + 1290) | *(self + 1224)) & 1) != 0 && !*(self + 1056) && (*(self + 1064) & 1) == 0)
  {
    *(self + 1056) = dispatch_group_create();
    OUTLINED_FUNCTION_21_4(1064);
    v2 = *(self + 1056);
    v3 = *(self + 1048);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BWPreviewStitcherNode__preheatCIRenderingAsync__block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_group_async(v2, v3, block);
  }
}

- (CMSampleBufferRef)_copySampleBufferToAttachForZoomPIPFromWiderCameraSampleBuffer:(const void *)buffer narrowerCameraSampleBuffer:
{
  if (result)
  {
    v3 = result;
    sampleBufferOut = 0;
    if (*(result + 1676) != 1)
    {
      return 0;
    }

    v6 = ((a2 == 0) | (*(result + 1678) & 1) ? buffer : a2);
    v7 = OUTLINED_FUNCTION_69();
    v10 = CMGetAttachment(v7, v8, v9);
    if (v10)
    {
      [v10 floatValue];
      v12 = v11;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = OUTLINED_FUNCTION_22(buffer);
    v14 = *off_1E798B540;
    v15 = [v13 objectForKeyedSubscript:*off_1E798B540];
    v16 = OUTLINED_FUNCTION_22(a2);
    v17 = objc_msgSend_isEqualToString_(v15) ? v13 : v16;
    [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
    v19 = v18;
    v20 = *(v3 + 420);
    if (v20 != 0.0 && v12 < v20)
    {
      return 0;
    }

    v22 = [OUTLINED_FUNCTION_22(v6) objectForKeyedSubscript:v14];
    if ((*(v3 + 1684) | objc_msgSend_isEqualToString_(v22)))
    {
      v6 = 0;
    }

    v23 = OUTLINED_FUNCTION_69();
    v26 = [CMGetAttachment(v23 v24] & 0xFFFFFFFE;
    v27 = !v6 || v26 == 2;
    if (!v27 && (v28 = OUTLINED_FUNCTION_69(), [CMGetAttachment(v28 v29] <= 2) && (v19 == 2.0 ? (v31 = v19 == 0.0) : (v31 = 1), v31 ? (v32 = 0) : (v32 = 1), (*(v3 + 1678) & 1) != 0 || (v32 & 1) != 0))
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(v6, &sampleBufferOut);
      BWSampleBufferRemoveAllAttachedMedia(sampleBufferOut);
      return sampleBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CMSampleBufferRef)copySampleBufferToAttachForPropagatePrimaryPreviewSourceFromWiderCameraSampleBuffer:(CMSampleBufferRef)sbuf narrowerCameraSampleBuffer:
{
  if (result)
  {
    sampleBufferOut = 0;
    if (*(result + 1686) == 1)
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(sbuf, &sampleBufferOut);
      BWSampleBufferRemoveAllAttachedMedia(sampleBufferOut);
      return sampleBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateZoomStatusFromWiderCameraSampleBuffer:narrowerCameraSampleBuffer:
{
  OUTLINED_FUNCTION_135();
  v5 = v4;
  if (!v1)
  {
    goto LABEL_289;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = OUTLINED_FUNCTION_71_0(v3);
  v10 = *off_1E798B540;
  [v9 objectForKeyedSubscript:*off_1E798B540];
  v11 = OUTLINED_FUNCTION_111();
  v146 = OUTLINED_FUNCTION_71_0(v11);
  v12 = [v146 objectForKeyedSubscript:v10];
  v141 = *off_1E798A0D8;
  isEqualToString = objc_msgSend_isEqualToString_(v0);
  OUTLINED_FUNCTION_117();
  v15 = *(v8 + v14);
  v16 = 0.0;
  if ((v17 & 1) == 0)
  {
    [objc_msgSend(*(v8 + 280) "firstObject")];
    v16 = v18;
  }

  target = v7;
  if (v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v6;
  }

  v20 = CMGetAttachment(v19, @"TotalZoomFactor", 0);
  v21 = 1.0;
  if (v20)
  {
    [v20 floatValue];
    v21 = v22;
  }

  v23 = *off_1E798A0C0;
  v24 = objc_msgSend_isEqualToString_(v0);
  v142 = v12;
  v140 = v23;
  v138 = objc_msgSend_isEqualToString_(v12);
  v143 = *off_1E798A0D0;
  v144 = v0;
  v25 = objc_msgSend_isEqualToString_(v0);
  *(v8 + 330) = 0;
  if (v24)
  {
    v26 = v9;
  }

  else
  {
    v26 = v146;
  }

  v27 = *off_1E798B508;
  [objc_msgSend(v26 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
  if (v28 == 0.0)
  {
    v28 = 1.0;
  }

  *(v8 + 288) = v28;
  v29 = *(v8 + 292);
  v30 = *(v8 + 288);
  if (v29 != v30)
  {
    if (v24 && (v29 == 2.0 ? (v31 = v30 == 1.0) : (v31 = 0), v31 && (*(v8 + 328) & 1) != 0 && [v9 objectForKeyedSubscript:*off_1E798B7A0]))
    {
      OUTLINED_FUNCTION_21_4(330);
    }

    else
    {
      OUTLINED_FUNCTION_21_4(332);
      *(v8 + 292) = *(v8 + 288);
    }
  }

  if (v25)
  {
    v32 = v9;
  }

  else
  {
    v32 = 0;
  }

  if (v24)
  {
    v33 = v146;
  }

  else
  {
    v33 = v32;
  }

  [objc_msgSend(v33 objectForKeyedSubscript:{v27), "floatValue"}];
  if (v34 == 0.0)
  {
    v34 = 1.0;
  }

  *(v8 + 304) = v34;
  if (isEqualToString)
  {
    v35 = v9;
  }

  else
  {
    v35 = 0;
  }

  [objc_msgSend(v35 objectForKeyedSubscript:{v27), "floatValue"}];
  if (v36 == 0.0)
  {
    v36 = 1.0;
  }

  *(v8 + 320) = v36;
  v37 = *(v8 + 324);
  v38 = *(v8 + 320);
  v39 = target;
  if (v37 != v38)
  {
    if (isEqualToString && (v37 > 1.0 ? (v40 = v38 == 1.0) : (v40 = 0), v40 && (*(v8 + 329) & 1) != 0 && [v9 objectForKeyedSubscript:*off_1E798B7A0]))
    {
      OUTLINED_FUNCTION_21_4(330);
    }

    else
    {
      OUTLINED_FUNCTION_21_4(332);
      *(v8 + 324) = *(v8 + 320);
    }
  }

  if (*(v8 + 332) == 1 && !*(v8 + 1024))
  {
    *(v8 + 332) = 0;
    *(v8 + 484) = 0;
  }

  if (*(v8 + 240) != 1)
  {
    *(v8 + 244) = 0;
    v44 = v144;
    goto LABEL_89;
  }

  if (*(v8 + 1744) == 1)
  {
    v41 = *(v8 + 236);
    if ((v24 | v25))
    {
      v42 = *(v8 + 252);
      v43 = *(v8 + 952);
      v44 = v144;
      if (v43)
      {
        [v43 currentValue];
        OUTLINED_FUNCTION_46_3(v56);
        v41 = *(v8 + 236);
      }

      OUTLINED_FUNCTION_35_3();
      if (!(v55 ^ v59 | v31))
      {
        v57 = v58;
      }

      if (v57 < 0.0)
      {
        v57 = 0.0;
      }

      v41 = v41 + ((v42 - v41) * v57);
    }

    else
    {
      v44 = v144;
    }

    v60 = OUTLINED_FUNCTION_83();
    os_unfair_lock_lock(v60);
    goto LABEL_80;
  }

  v44 = v144;
  if ((v24 | v138))
  {
    [objc_msgSend(v26 objectForKeyedSubscript:{*off_1E798B530), "floatValue"}];
    v46 = v45;
    v47 = *(v8 + 252);
    v48 = *(v8 + 236);
    v49 = *(v8 + 256);
    v50 = *(v8 + 260);
    if (v50 <= v49)
    {
      HIDWORD(v135) = *(v8 + 256);
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v135, v5, v137, v140, v141, v12);
      v49 = v136;
      v47 = v139;
    }

    if (v50 >= v46)
    {
      v51 = v46;
    }

    else
    {
      v51 = v50;
    }

    if (v51 < v49)
    {
      v51 = v49;
    }

    v41 = v48 + ((v47 - v48) * ((v51 - v49) / (v50 - v49)));
    v52 = *(v8 + 264);
    v53 = OUTLINED_FUNCTION_83();
    os_unfair_lock_lock(v53);
    v54 = *(v8 + 244);
    v55 = v54 > 0.0 && v52 < 1.0;
    if (v55)
    {
      *(v8 + 244) = BWModifiedMovingAverage(v41, v54, v52);
LABEL_81:
      v61 = OUTLINED_FUNCTION_83();
      os_unfair_lock_unlock(v61);
      goto LABEL_82;
    }

LABEL_80:
    *(v8 + 244) = v41;
    goto LABEL_81;
  }

LABEL_82:
  v62 = OUTLINED_FUNCTION_83();
  os_unfair_lock_lock(v62);
  v63 = 0.0;
  if (isEqualToString)
  {
    v64 = *(v8 + 952);
    if (v64)
    {
      [v64 currentValue];
    }

    else
    {
      v63 = 1.0;
      if (*(v8 + 906))
      {
        v63 = 0.0;
      }
    }
  }

  *(v8 + 248) = *(v8 + 236) + ((*(v8 + 244) - *(v8 + 236)) * (1.0 - v63));
  v65 = OUTLINED_FUNCTION_83();
  os_unfair_lock_unlock(v65);
  v39 = target;
LABEL_89:
  v66 = OUTLINED_FUNCTION_22(v6);
  if (!v66)
  {
    v66 = OUTLINED_FUNCTION_22(v39);
    if (!v66)
    {
      goto LABEL_115;
    }
  }

  v68 = v66;
  if (!v6 || (v69 = OUTLINED_FUNCTION_97_1(v66, v67), v39) || v69) && (!v39 || (v70 = objc_msgSend_isEqualToString_(v68), v6) || (v70))
  {
    OUTLINED_FUNCTION_33();
    if (!v31)
    {
      goto LABEL_112;
    }

    v73 = objc_msgSend_isEqualToString_(v68);
    if (v73)
    {
      if (!v6)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v73 = objc_msgSend_isEqualToString_(v68);
      if (!v6 || (v73 & 1) == 0)
      {
        goto LABEL_112;
      }
    }

    v75 = OUTLINED_FUNCTION_97_1(v73, v74);
    if (v39)
    {
      if (!v75)
      {
        v76 = objc_msgSend_isEqualToString_(v68);
        v72 = v140;
        if ((v76 & 1) == 0)
        {
          goto LABEL_100;
        }
      }
    }
  }

  else
  {
    v71 = objc_msgSend_isEqualToString_(v44);
    v72 = v142;
    if (v6)
    {
      v72 = v44;
    }

    if ((v71 & 1) == 0)
    {
LABEL_100:
      v68 = v72;
      if (!v72)
      {
        goto LABEL_115;
      }
    }
  }

LABEL_112:
  if ((objc_msgSend_isEqualToString_(v68) & 1) == 0)
  {

    v77 = v68;
    *(v8 + 920) = v77;
    OUTLINED_FUNCTION_97_1(v77, v78);
  }

LABEL_115:
  v79 = OUTLINED_FUNCTION_22(v6);
  if (v79 || (v79 = OUTLINED_FUNCTION_22(v39)) != 0)
  {
    v80 = v79;
    if ((objc_msgSend_isEqualToString_(v79) & 1) == 0)
    {

      *(v8 + 928) = v80;
    }
  }

  if (*(v8 + 200) == 1)
  {
    v81 = [*(v8 + 928) isEqual:v143] && v21 >= *(v8 + 224);
    if (*(v8 + 1576) != v81)
    {
      *(v8 + 1576) = v81;
      if (isEqualToString & 1) == 0 && v81 && (*(v8 + 1577))
      {
        *(v8 + 484) = 0;
      }
    }
  }

  if (isEqualToString)
  {
    v82 = *off_1E798B320;
    if ((*(v8 + 1417) & 1) == 0 && [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B320), "intValue"}] == 1)
    {
      goto LABEL_134;
    }

    v83 = v146;
  }

  else
  {
    v82 = *off_1E798B320;
    v83 = v9;
  }

  psn_updateFocusDistanceBasedScene(v8 + 1416, v83);
  psn_updateFocusDistanceBasedScene(v8 + 1496, v83);
LABEL_134:
  if (isEqualToString)
  {
    v84 = v146;
  }

  else
  {
    v84 = v9;
  }

  *(v8 + 1456) = [objc_msgSend(v84 objectForKeyedSubscript:{v82), "intValue"}] == 1;
  if (isEqualToString)
  {
    *(v8 + 1457) = [objc_msgSend(v9 objectForKeyedSubscript:{v82), "intValue"}] == 1;
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (v31 && [objc_msgSend(v146 objectForKeyedSubscript:{v82), "intValue"}] != 1)
    {
      psn_updateFocusDistanceBasedScene(v8 + 1584, v146);
    }
  }

  v85 = OUTLINED_FUNCTION_71_0(v6);
  if (!v85)
  {
    v85 = OUTLINED_FUNCTION_71_0(v39);
  }

  [v85 floatValue];
  v87 = v86;
  v88 = 1488;
  v89 = *(v8 + 1488);
  v90 = *(v8 + 1408);
  if (!v90)
  {
    *(v8 + 1488) = 0;
    goto LABEL_169;
  }

  v91 = *(v8 + 228);
  if (v21 < v91 && v87 != v91)
  {
    if (*(v8 + 217) == 1)
    {
      v94 = *(v8 + 218);
    }

    else
    {
      v94 = 0;
    }

    if (v90 == 1 || (v94 & 1) != 0)
    {
      v95 = 1;
      goto LABEL_164;
    }

    if (v90 != 2)
    {
      goto LABEL_169;
    }

LABEL_162:
    OUTLINED_FUNCTION_44_3();
LABEL_164:
    *(v8 + v88) = v95;
    goto LABEL_169;
  }

  if (v90 == 2)
  {
    goto LABEL_162;
  }

  if (v90 == 1)
  {
    if (objc_msgSend_isEqualToString_(*(v8 + 920)))
    {
      v93 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_33();
      if (v31)
      {
        v93 = objc_msgSend_isEqualToString_(*(v8 + 920));
      }

      else
      {
        v93 = 0;
      }
    }

    *(v8 + 1488) = v93;
  }

LABEL_169:
  if (*(v8 + 1488) == v89)
  {
    if (isEqualToString)
    {
      v96 = v89 != *(v8 + 1489);
    }

    else
    {
      v96 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (v31)
    {
      *(v8 + 1491) = (*(v8 + 1492) & 0xFFFFFFFD) == 0;
    }

    v96 = 1;
  }

  [*(v8 + 1464) updateRampForNextIteration];
  v97 = OUTLINED_FUNCTION_71_0(v6);
  if (v97 || (v97 = OUTLINED_FUNCTION_71_0(v39)) != 0)
  {
    *(v8 + 1492) = [v97 intValue];
  }

  OUTLINED_FUNCTION_33();
  if (v31)
  {
    v98 = *(v8 + 1572);
    if (v90)
    {
      if (v90 == 2)
      {
        OUTLINED_FUNCTION_44_3();
        *(v8 + v103) = v104;
      }

      else if (v90 == 1)
      {
        if ((v99 = *(v8 + 224), v21 >= v99) && *(v8 + 1492) || v87 == v99)
        {
          *(v8 + 1572) = objc_msgSend_isEqualToString_(*(v8 + 920));
          if ((isEqualToString & 1) == 0)
          {
            if (v98)
            {
              OUTLINED_FUNCTION_35_3();
              if (v55 ^ v59 | v31)
              {
                v100 = 0;
              }

              else
              {
                v100 = 1;
              }

              *(v8 + 1572) |= v100;
              v101 = [CMGetAttachment(target @"NondisruptiveSwitchOverInProgress"];
              if (v87 == 0.0)
              {
                v102 = v101;
              }

              else
              {
                v102 = 0;
              }

              *(v8 + 1572) |= v102;
            }
          }
        }
      }
    }

    else
    {
      *(v8 + 1572) = 0;
    }

    if (*(v8 + 1572) == v98)
    {
      if (isEqualToString)
      {
        v147 = 0;
LABEL_208:
        [*(v8 + 1536) updateRampForNextIteration];
        goto LABEL_209;
      }

      v105 = v98 != *(v8 + 1544);
    }

    else
    {
      OUTLINED_FUNCTION_33();
      if (v31)
      {
        *(v8 + 1575) = *(v8 + 1492) == 2;
      }

      v105 = 1;
    }

    v147 = v105;
    goto LABEL_208;
  }

  v147 = 0;
LABEL_209:
  v106 = v96;
  [(BWPreviewStitcherNode *)v8 _primaryCameraPortType];
  v107 = *(v8 + 936);
  if (!v144 || (objc_msgSend_isEqualToString_(v144) & 1) != 0)
  {
    v108 = 0;
    v109 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    goto LABEL_222;
  }

  v109 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (objc_msgSend_isEqualToString_(v144) && (*(v8 + 906) != 1 || *(v8 + 952)))
  {
    OUTLINED_FUNCTION_21_4(906);

    *(v8 + 952) = 0;
    v110 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionRampForSuperMacroFallback;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v144) || (*(v8 + 906) & 1) == 0 && !*(v8 + 952))
    {
      goto LABEL_221;
    }

    *(v8 + 906) = 0;

    *(v8 + 952) = 0;
    *(v8 + 1000) = 0;
    v110 = &OBJC_IVAR___BWPreviewStitcherNode__teleFocusingOneShot;
  }

  *(v8 + *v110) = 0;
LABEL_221:
  *(v8 + 912) = 0;
  *(v8 + 484) = 0;

  *(v8 + 936) = v144;
  *(v8 + 944) = isEqualToString;
  *(v8 + 1573) = *(v8 + 1572);
  v108 = 1;
LABEL_222:
  v111 = *(v8 + v109[443]);
  if (v111)
  {
    isRampingUp = [v111 isRampingUp];
    if ((isEqualToString & 1) == 0)
    {
      if (isRampingUp)
      {
        if (v21 < v15 && v21 > v87)
        {

          *(v8 + v109[443]) = 0;
          *(v8 + 1000) = 0;
        }
      }
    }
  }

  if ((v108 | (v87 == 0.0) & ~[(BWPreviewStitcherNode *)v8 _currentlyZoomingOrSwitchingCameras]) == 1)
  {
    if (v21 >= v15)
    {
      v115 = &OBJC_IVAR___BWPreviewStitcherNode__wantSuperWideFallback;
      if (isEqualToString)
      {
        v115 = &OBJC_IVAR___BWPreviewStitcherNode__wantWideFallbackDueToTeleAEAF;
      }

      v114 = *(v8 + *v115);
    }

    else
    {
      v114 = 1;
    }

    *(v8 + 907) = v114 & 1;
    if (!target && *(v8 + 907) == 1)
    {
      *(v8 + 907) = 0;
    }

    if (!v107)
    {
      v116 = *(v8 + 907);
      if (*(v8 + 906) != v116)
      {
        *(v8 + 906) = v116;
      }
    }
  }

  if (!isEqualToString)
  {
    if (*(v8 + 288) != 2.0)
    {
      OUTLINED_FUNCTION_35_3();
      if (!v31)
      {
        goto LABEL_255;
      }

      OUTLINED_FUNCTION_33();
      if (!v31)
      {
        goto LABEL_255;
      }
    }

    v118 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingZoomFactors;
LABEL_247:
    [objc_msgSend(*(v8 + *v118) "firstObject")];
    v120 = v21 < v119;
    goto LABEL_256;
  }

  OUTLINED_FUNCTION_35_3();
  if (!(v55 ^ v59 | v117) || v117 && (*(v8 + 330) & 1) != 0)
  {
    v118 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingZoomFactors;
    goto LABEL_247;
  }

LABEL_255:
  v120 = 0;
LABEL_256:
  *(v8 + 331) = v120;
  v121 = *(v8 + 912);
  v122 = v121 == 0.0;
  if (v87 == 0.0)
  {
    v122 = 0;
  }

  v123 = v21;
  if (v122 || v121 != 0.0 && (v123 = 0.0, v87 == 0.0))
  {
    *(v8 + 916) = v123;
  }

  *(v8 + 912) = v87;
  if (v87 > 0.0 && (v87 == v15 || v87 == v16))
  {
    v125 = *(v8 + 912);
    if (v125 == 0.0 || vabds_f32(1.0, *(v8 + 916) / v125) < 0.1)
    {
      if (!v106)
      {
        goto LABEL_278;
      }

      if ((*(v8 + 1490) & 1) == 0)
      {
        _primaryCameraPortType = [(BWPreviewStitcherNode *)v8 _primaryCameraPortType];
        v128 = target;
        goto LABEL_279;
      }
    }

    if (v21 >= 1.07)
    {
      v127 = &OBJC_IVAR___BWPreviewStitcherNode__wantSuperWideFallback;
      if (isEqualToString)
      {
        v127 = &OBJC_IVAR___BWPreviewStitcherNode__wantWideFallbackDueToTeleAEAF;
      }

      v126 = *(v8 + *v127);
    }

    else
    {
      v126 = 1;
    }

    *(v8 + 907) = v126 & 1;
  }

LABEL_278:
  v128 = target;
  _primaryCameraPortType = [(BWPreviewStitcherNode *)v8 _primaryCameraPortType];
  if (!v106 && !v147)
  {
LABEL_280:
    OUTLINED_FUNCTION_97_1(_primaryCameraPortType, v130);
    goto LABEL_282;
  }

LABEL_279:
  _primaryCameraPortType = OUTLINED_FUNCTION_97_1(_primaryCameraPortType, v130);
  if (_primaryCameraPortType)
  {
    goto LABEL_280;
  }

  *(v8 + 484) = 0;
LABEL_282:
  v131 = CMGetAttachment(v128, @"UIZoomFactor", 0);
  if (v131)
  {
    [v131 floatValue];
    v133 = v132;
  }

  else
  {
    v133 = 1.0;
  }

  v134 = *(v8 + 1400);
  if (v133 != v134)
  {
    if (v134 != 0.0)
    {
      BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering((v8 + 1360));
      BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering((v8 + 1704));
    }

    *(v8 + 1400) = v133;
  }

LABEL_289:
  OUTLINED_FUNCTION_68();
}

- (double)_computeBravoWiderToNarrowerCameraShiftFromWiderCameraSampleBuffer:(uint64_t)buffer narrowerCameraSampleBuffer:
{
  if (!self)
  {
    return 0.0;
  }

  v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
  isEqualToString = objc_msgSend_isEqualToString_([v6 objectForKeyedSubscript:*off_1E798B540]);
  if (isEqualToString)
  {
    _wideBaseZoomFactorWithOverrideLocked = [(BWPreviewStitcherNode *)self _wideBaseZoomFactorWithOverrideLocked];
    v11 = &OBJC_IVAR___BWPreviewStitcherNode__superWideNondisruptiveSwitchingScaleFactor;
    v12 = &OBJC_IVAR___BWPreviewStitcherNode__superWideBaseZoomFactor;
  }

  else
  {
    v8 = *(self + 336);
    if (v8 <= 0.0)
    {
      v8 = *(self + 228);
      v9 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingScaleFactor;
    }

    else
    {
      v9 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
    }

    *&_wideBaseZoomFactorWithOverrideLocked = v8 * *(self + *v9);
    v11 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingScaleFactor;
    v12 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
  }

  [*(self + 504) computeCameraShiftForWiderCamera:target narrowerCamera:buffer widerToNarrowerCameraScale:(*&_wideBaseZoomFactorWithOverrideLocked / (*(self + *v12) * *(self + *v11)))];
  if (*(self + 352))
  {
    v15 = v14;
  }

  else
  {
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (*(self + 352))
  {
    v16 = v13;
  }

  else
  {
    v16 = *MEMORY[0x1E695EFF8];
  }

  [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
  if (v17 != 0.0)
  {
    v16 = v16 / v17;
    v15 = v15 / v17;
  }

  OUTLINED_FUNCTION_35_3();
  if (v20 ^ v21 | v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  if ((isEqualToString & v18 & v22) == 1)
  {
    v16 = *(self + 360);
    v15 = *(self + 368);
  }

  v23 = *(self + 348);
  OUTLINED_FUNCTION_117();
  v25 = (self + v24);
  v26 = v16;
  v27 = *v25;
  *v25 = BWModifiedMovingAverage(v26, v27, v23);
  v28 = v15;
  v29 = v25[1];
  v25[1] = BWModifiedMovingAverage(v28, v29, v23);
  return *v25;
}

- (char)_updateShiftCorrectionsAsyncFromComputedShift:(void *)shift byRegisteringWiderCamera:(uint64_t)camera narrowerCamera:(double)narrowerCamera macroTransitionType:(double)type
{
  if (result)
  {
    v11 = result;
    v12 = *off_1E798A3C8;
    v13 = CMGetAttachment(target, *off_1E798A3C8, 0);
    isEqualToString = objc_msgSend_isEqualToString_([v13 objectForKeyedSubscript:*off_1E798B540]);
    v15 = isEqualToString;
    if (isEqualToString)
    {
      _wideBaseZoomFactorWithOverrideLocked = [(BWPreviewStitcherNode *)v11 _wideBaseZoomFactorWithOverrideLocked];
      v18 = *&_wideBaseZoomFactorWithOverrideLocked;
    }

    else
    {
      v16 = *(v11 + 84);
      if (v16 <= 0.0)
      {
        v16 = *(v11 + 57);
        v17 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingScaleFactor;
      }

      else
      {
        v17 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
      }

      v18 = (v16 * *&v11[*v17]) / (*(v11 + 56) * *(v11 + 72));
    }

    [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
    v20 = v19;
    v21 = [objc_msgSend(CMGetAttachment(shift v12];
    if (v11[1417] == 1)
    {
      v22 = v11[1313] ^ 1;
    }

    else
    {
      v22 = 1;
    }

    v23 = v18;
    if ((v11[512] & 1) == 0)
    {
      memset(&v30, 0, sizeof(v30));
      CMSampleBufferGetPresentationTimeStamp(&v30, shift);
      if (*MEMORY[0x1E695FF58] == 1)
      {
        time = v30;
        CMTimeGetSeconds(&time);
        kdebug_trace();
      }

      [*(v11 + 63) allocateResourcesAsynchronouslyWithVideoFormat:objc_msgSend(*(v11 + 1), "videoFormat")];
      v11[512] = 1;
    }

    v24 = *(v11 + 63);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __131__BWPreviewStitcherNode__updateShiftCorrectionsAsyncFromComputedShift_byRegisteringWiderCamera_narrowerCamera_macroTransitionType___block_invoke;
    v26[3] = &unk_1E79909A8;
    v29 = v15;
    v26[4] = v11;
    v27 = v20;
    *&v26[5] = narrowerCamera;
    *&v26[6] = type;
    v28 = v21;
    return [v24 registerWiderCamera:target narrowerCamera:shift widerToNarrowerCameraScale:v22 & 1 isMacroScene:camera macroTransitionType:v26 completionHandler:v23];
  }

  return result;
}

- (void)_updateAndGetWiderCameraRegionShifts:(double *)shifts teleShift:(int)shift widerCameraIsSuperWide:(int)wide forComputedShift:(double)computedShift registrationEnabled:(double)enabled currentFrameRate:(float)rate
{
  *(&v185 + 1) = rate;
  HIDWORD(v182) = shift;
  if (!self)
  {
    return;
  }

  v12 = MEMORY[0x1E695EFF8];
  v189 = *MEMORY[0x1E695EFF8];
  v190 = v189;
  v176 = v189;
  v191 = v189;
  v13 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v14 = MEMORY[0x1E695FF58];
  v178 = a2;
  shiftsCopy = shifts;
  if (wide)
  {
    v15 = *(self + 513);
    v16 = v15 ^ 1;
    if (*(self + 488))
    {
      HIDWORD(v175) = v15 ^ 1;
    }

    else if ((*(self + 514) & 1) != 0 || (v15 & 1) != 0 || (OUTLINED_FUNCTION_38_0(), v17))
    {
      [*(self + v13[345]) waitForRegistrationToComplete];
      OUTLINED_FUNCTION_115(513);
      HIDWORD(v175) = v16;
      if (*v14 == 1)
      {
        OUTLINED_FUNCTION_79_0();
      }
    }

    else
    {
      HIDWORD(v175) = 1;
    }
  }

  else
  {
    HIDWORD(v175) = 0;
  }

  displaysWidestCameraOnly = [self displaysWidestCameraOnly];
  v19 = *(self + 906);
  os_unfair_lock_lock((self + 516));
  if (!wide)
  {
    goto LABEL_19;
  }

  if (*(self + 513))
  {
LABEL_14:
    v20 = 1;
    goto LABEL_20;
  }

  v20 = *(self + 484);
  if (v20)
  {
    v21 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
    if (HIDWORD(v182))
    {
      v21 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
    }

    if (*(self + *v21 + 148) < v20)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_115(513);
    if (*v14 == 1)
    {
      OUTLINED_FUNCTION_79_0();
      goto LABEL_14;
    }
  }

LABEL_20:
  LODWORD(v181) = *(self + 488);
  v22 = v20;
  if (v181 != v20)
  {
    *(self + 488) = v20;
    v23 = self + 32;
    v24 = 3;
    do
    {
      *(v23 + 688) = 1;
      *(v23 + 520) = 1;
      v23 += 56;
      --v24;
    }

    while (v24);
  }

  LODWORD(v182) = v22;
  v25 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v26 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v27 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!displaysWidestCameraOnly)
  {
    if ((*(self + 906) & 1) == 0)
    {
      v29 = OUTLINED_FUNCTION_86_1();
      if (v29)
      {
        v30 = v25;
        [v29 isRamping];
        OUTLINED_FUNCTION_64_2();
        if ((v31 & 1) == 0)
        {
          [OUTLINED_FUNCTION_86_1() currentValue];
          OUTLINED_FUNCTION_64_2();
          if (v32 == 0.0)
          {
            OUTLINED_FUNCTION_115(906);

            OUTLINED_FUNCTION_64_2();
            *(self + v30[443]) = 0;
            *(self + v26[538]) = 0;
          }
        }
      }
    }

    if (*(self + 906) != 1)
    {
      goto LABEL_41;
    }

    if (!v182)
    {
      HIDWORD(v180) = 0;
LABEL_254:
      *(self + 906) = 0;
      if (!*(self + v25[443]))
      {
        v165 = v27;
        v166 = BYTE4(v180);
        *(self + v26[538]) = BYTE4(v180) & BYTE4(v182);
        v167 = v25;
        *(self + v25[443]) = [[BWRamp alloc] initWithName:@"CameraTransitionRamp"];
        v168 = [(BWPreviewStitcherNode *)self _cameraDisplayTransitionFrameCountForCameraFallbackChange:*(&v185 + 1) currentFrameRate:?];
        LODWORD(v169) = 1065017672;
        LODWORD(v170) = 1.0;
        [*(self + v167[443]) startRampFrom:v168 to:2 iterations:0.0 shape:v170 exponentialConvergenceFraction:v169];
        if (*(self + 1092) == 1)
        {
          v171 = *(self + 912);
          v166 = BYTE4(v180);
          if (v171 != 0.0)
          {
            v166 = BYTE4(v180);
            if ((v171 / *(self + 916)) > 1.1)
            {
              v166 = 1;
            }
          }
        }

        *(self + v165[545]) = v166;
        goto LABEL_260;
      }

      goto LABEL_42;
    }

    v34 = *(self + 484);
    if (v34)
    {
      v71 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
      if (HIDWORD(v182))
      {
        v71 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
      }

      v34 = *(self + *v71 + 148) >= v34;
      if ((v182 & 0x100000000) == 0)
      {
LABEL_39:
        if ((*(self + 1488) & 1) == 0)
        {
          v35 = &OBJC_IVAR___BWPreviewStitcherNode__wideFallbackShiftRampTargetValueIsWide;
LABEL_248:
          HIDWORD(v180) = *(self + *v35);
          goto LABEL_249;
        }

        goto LABEL_114;
      }
    }

    else if ((v182 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    if ((*(self + 1572) & 1) == 0)
    {
      v35 = &OBJC_IVAR___BWPreviewStitcherNode__superWideFallbackShiftRampTargetValueIsSuperWide;
      goto LABEL_248;
    }

LABEL_114:
    HIDWORD(v180) = 0;
LABEL_249:
    if ((*(self + 1490) & 1) != 0 || *(self + 912) != *(self + 228))
    {
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
      HIDWORD(v180) = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_254;
  }

  if (*(self + 906))
  {
LABEL_41:
    HIDWORD(v180) = 0;
    goto LABEL_42;
  }

  if (!v22)
  {
    HIDWORD(v180) = 0;
    goto LABEL_116;
  }

  v28 = *(self + 484);
  if (!v28)
  {
    if ((v182 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_104:
    if (*(self + 1572) == 1)
    {
      goto LABEL_105;
    }

    goto LABEL_115;
  }

  v68 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
  if (HIDWORD(v182))
  {
    v68 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
  }

  v28 = *(self + *v68 + 148) >= v28;
  if ((v182 & 0x100000000) != 0)
  {
    goto LABEL_104;
  }

LABEL_28:
  if ((*(self + 1488) & 1) == 0)
  {
LABEL_115:
    HIDWORD(v180) = 0;
    if (v28)
    {
      goto LABEL_116;
    }

LABEL_42:
    os_unfair_lock_unlock((self + 516));
    v36 = 0;
    v37 = v182;
    goto LABEL_43;
  }

LABEL_105:
  OUTLINED_FUNCTION_89_0();
  if (v17)
  {
    v70 = 1;
  }

  else
  {
    v70 = 0;
  }

  HIDWORD(v180) = v70;
  if (!v69)
  {
    goto LABEL_42;
  }

LABEL_116:
  OUTLINED_FUNCTION_38_0();
  if (v17)
  {
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v72 = OUTLINED_FUNCTION_86_1();
        if (v72)
        {
          [v72 isRamping];
          OUTLINED_FUNCTION_64_2();
          if ((v73 & 1) == 0)
          {
            [OUTLINED_FUNCTION_86_1() currentValue];
            OUTLINED_FUNCTION_64_2();
            OUTLINED_FUNCTION_35_3();
            if (v17)
            {

              OUTLINED_FUNCTION_64_2();
              OUTLINED_FUNCTION_107();
            }
          }
        }
      }
    }
  }

  v75 = OUTLINED_FUNCTION_86_1();
  v79 = v77;
  if (v75)
  {
    if (([v75 isRamping] & 1) == 0)
    {
      OUTLINED_FUNCTION_115(906);

      OUTLINED_FUNCTION_107();
    }

    goto LABEL_42;
  }

  *(self + *(v78 + 2152)) = BYTE4(v180) & BYTE4(v182);
  v80 = v76;
  *(self + *(v77 + 1772)) = [[BWRamp alloc] initWithName:@"CameraTransitionRamp"];
  v81 = [(BWPreviewStitcherNode *)self _cameraDisplayTransitionFrameCountForCameraFallbackChange:*(&v185 + 1) currentFrameRate:?];
  LODWORD(v82) = 1065017672;
  LODWORD(v83) = 1.0;
  [*(self + *(v79 + 1772)) startRampFrom:v81 to:2 iterations:v83 shape:0.0 exponentialConvergenceFraction:v82];
  *(self + *(v80 + 2180)) = *(self + 1092);
LABEL_260:
  v37 = v182;
  os_unfair_lock_unlock((self + 516));
  [*(self + 504) waitForRegistrationToComplete];
  v36 = 1;
LABEL_43:
  os_unfair_lock_lock((self + 516));
  v44 = v37 ^ 1;
  v45 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
  if (HIDWORD(v182))
  {
    v45 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
  }

  v46 = self + *v45;
  if (v36)
  {
    *(v46 + 32) = 1;
    *(v46 + 88) = 1;
    *(v46 + 144) = 1;
  }

  v186 = v12[1];
  v187 = *v12;
  v47 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  HIDWORD(v181) = v36;
  if (displaysWidestCameraOnly)
  {
    if (!v37)
    {
      v188 = 1;
      v48.f64[0] = v12[1];
      v49.f64[0] = *v12;
      v183 = v48.f64[0];
      v184 = *v12;
      if ((v36 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_59:
      v50 = v19 == displaysWidestCameraOnly;
      v51 = *(self + 1489);
      v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      goto LABEL_77;
    }
  }

  else if (!HIDWORD(v182) || ((v44 | *(self + 1313)) & 1) != 0)
  {
    v48.f64[0] = v12[1];
    v49.f64[0] = *v12;
    v183 = v48.f64[0];
    v184 = *v12;
    v188 = v37 ^ 1;
    goto LABEL_57;
  }

  if ((*(v46 + 32) & 1) != 0 || (v48.f64[0] = v12[1], v49.f64[0] = *v12, v183 = v48.f64[0], v184 = *v12, v188 = v37 ^ 1, *(v46 + 88) == 1))
  {
    v49.f64[0] = *(v46 + 128);
    v48.f64[0] = *(v46 + 136);
    v183 = v48.f64[0];
    v184 = v49.f64[0];
    v188 = 1;
  }

LABEL_57:
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_59;
    }

LABEL_62:
    for (i = 0; i != 168; i += 56)
    {
      if (!displaysWidestCameraOnly || i == 112 || (*(self + 1573) & 1) != 0)
      {
        v54 = v46 + i;

        *(v54 + 40) = 0;
        *(v54 + 48) = 0;
        v55 = v188 ^ 1;
        if (i == 112)
        {
          v55 = 1;
        }

        if (v55)
        {
          v48 = *(v54 + 16);
          *v54 = v48;
        }

        else
        {
          v48.f64[0] = v183;
          v49.f64[0] = v184;
          *v54 = v184;
          *(v54 + 8) = v183;
        }

        *(v46 + i + 32) = 0;
      }
    }

    *(self + 1573) = 0;
    v50 = v19 == displaysWidestCameraOnly;
    v51 = *(self + 1489);
    v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    v47 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if ((v181 & 0x100000000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  if (!((v181 == v37) | displaysWidestCameraOnly & 1 | v44 & 1))
  {
    goto LABEL_62;
  }

LABEL_61:
  v50 = v19 == displaysWidestCameraOnly;
  v51 = *(self + 1489);
  v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
LABEL_74:
  if (((HIDWORD(v182) | displaysWidestCameraOnly) & 1) == 0 || !v50)
  {
    v62 = *(self + v47[519]);
    v63 = HIDWORD(v182);
    goto LABEL_158;
  }

  v50 = 1;
LABEL_77:
  if (v51 != *(self + 1488))
  {
    if (*(self + 1488))
    {
      *(self + 1472) = *(self + 648);
      OUTLINED_FUNCTION_89_0();
      v58 = 0.699999988;
      if (!v17)
      {
        v58 = *(v57 + 3616);
      }

      v49 = *(self + v56);
      v48 = vmulq_n_f64(v49, v58);
      *(self + v56) = v48;
    }

    OUTLINED_FUNCTION_104(v48.f64[0], v49.f64[0], v38, v39, v40, v41, v42, v43, *&v172, *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&shiftsCopy, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
    if (v59 ^ v60 | v17)
    {
      OUTLINED_FUNCTION_103_0();
      if (v17)
      {
        v64 = 90;
      }

      else
      {
        v64 = 55;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v61 = OUTLINED_FUNCTION_11_15(90.0, v172, v175, v176, *(&v176 + 1), v177, v178, shiftsCopy, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
        FigCaptureRoundFloatToMultipleOf(1, v61);
      }

      OUTLINED_FUNCTION_103_0();
      if (v17)
      {
        v64 = v65;
      }

      else
      {
        v64 = 55;
      }

      if (v66)
      {
        OUTLINED_FUNCTION_38_0();
        if (v17)
        {
          v67 = OUTLINED_FUNCTION_11_15(55.0, v172, v175, v176, *(&v176 + 1), v177, v178, shiftsCopy, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
          v64 = FigCaptureRoundFloatToMultipleOf(1, v67);
        }

        else
        {
          v64 = 55;
        }
      }
    }

    v84 = 0.0;
    if ((*(self + 1488) & 1) == 0)
    {
      [OUTLINED_FUNCTION_99() currentValue];
      v84 = v85;
    }

    if ([OUTLINED_FUNCTION_99() isRamping])
    {
      [OUTLINED_FUNCTION_99() currentValue];
      v84 = *v86.f64;
      v89 = *(self + 1488);
      if ((v89 & 1) == 0 && *v86.f64 != 0.0)
      {
        OUTLINED_FUNCTION_89_0();
        v90 = 0.699999988;
        if (!v17)
        {
          v90 = 0.999;
        }

        v87 = (1.0 - v84) / v84;
        v88 = *(self + 1472);
        v86 = vsubq_f64(v88, vmulq_n_f64(vsubq_f64(*(self + 648), vdivq_f64(v88, vdupq_lane_s64(*&v90, 0))), v87));
        *(self + 1472) = v86;
      }
    }

    else
    {
      v89 = *(self + 1488);
    }

    LODWORD(v86.f64[0]) = 1.0;
    if (!v50)
    {
      *v86.f64 = v84;
    }

    if (*(self + 496) == 1)
    {
      OUTLINED_FUNCTION_89_0();
      LODWORD(v97) = 20.0;
      if (!v17)
      {
        *&v97 = 49.0;
      }

      LODWORD(v95) = 981668463;
      if (v91)
      {
        LODWORD(v93) = 1.0;
        LODWORD(v94) = 24.0;
      }

      else
      {
        v93 = 0.0;
        LODWORD(v94) = 24.0;
        *&v92 = v84;
      }

      LODWORD(v96) = HIDWORD(v185);
      [*(self + 1464) startSpringRampFrom:v92 to:v93 withTension:v97 friction:v94 snapFraction:v95 frameRate:v96];
    }

    else
    {
      LODWORD(v88.f64[0]) = 1065269330;
      if (v89)
      {
        LODWORD(v87) = 1.0;
      }

      else
      {
        v87 = 0.0;
        *v86.f64 = v84;
      }

      [*(self + 1464) startRampFrom:v64 to:2 iterations:v86.f64[0] shape:v87 exponentialConvergenceFraction:v88.f64[0]];
    }

    v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      [OUTLINED_FUNCTION_99() updateRampForNextIteration];
    }

    *(self + 1489) = *(self + 1488);
    v47 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  }

  v62 = *(self + v47[519]);
  v63 = HIDWORD(v182);
  if ((v181 & 0x100000000) == 0)
  {
LABEL_158:
    if ((v63 & (displaysWidestCameraOnly ^ 1) & 1) != 0 || !v50)
    {
      goto LABEL_194;
    }
  }

  if (v62 != *(self + v52[518]))
  {
    if (*(self + v52[518]))
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v48 = v176;
      }

      else
      {
        *(self + 1568) = 1050253722;
        if ((*(self + 1575) | HIDWORD(v175)))
        {
          *(self + 1568) = 0;
        }

        *(self + 1552) = *(self + 816);
        v49 = *(self + 1552);
        v48 = vmulq_n_f64(v49, 1.0 - *(self + 1568));
      }

      *(self + 1552) = v48;
    }

    OUTLINED_FUNCTION_104(v48.f64[0], v49.f64[0], v38, v39, v40, v41, v42, v43, *&v172, *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&shiftsCopy, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
    if (!(v59 ^ v60 | v17))
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v98 = OUTLINED_FUNCTION_11_15(90.0, v173, v175, v176, *(&v176 + 1), v177, v178, shiftsCopy, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
        FigCaptureRoundFloatToMultipleOf(1, v98);
      }
    }

    OUTLINED_FUNCTION_81_0();
    if (v99 == 1 && (*(self + 1648) & 1) == 0 && *(self + 1568) == 0.0)
    {
      v100 = 1;
      v101 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_89_0();
      if (v17)
      {
        v101 = v102;
      }

      else
      {
        v101 = 55;
      }

      OUTLINED_FUNCTION_104(v103, v104, v105, v106, v107, v108, v109, v110, *&v173, *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&shiftsCopy, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
      if (!(v59 ^ v60 | v17) && v111)
      {
        if (*(self + 1040) == 1)
        {
          v112 = OUTLINED_FUNCTION_11_15(55.0, v174, v175, v176, *(&v176 + 1), v177, v178, shiftsCopy, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
          v101 = FigCaptureRoundFloatToMultipleOf(1, v112);
          OUTLINED_FUNCTION_81_0();
          if (v113)
          {
            goto LABEL_188;
          }

          goto LABEL_187;
        }

        v101 = 55;
      }
    }

    if (v100)
    {
LABEL_188:
      if ([OUTLINED_FUNCTION_80_0() isRamping])
      {
        [OUTLINED_FUNCTION_80_0() currentValue];
        OUTLINED_FUNCTION_81_0();
        if ((v115 & 1) == 0 && v114 != 0.0)
        {
          *(self + 1552) = vsubq_f64(*(self + 1552), vmulq_n_f64(vsubq_f64(*(self + 816), vdivq_f64(*(self + 1552), vdupq_lane_s64(COERCE__INT64(1.0 - *(self + 1568)), 0))), (1.0 - v114) / v114));
        }
      }

      else
      {
        OUTLINED_FUNCTION_81_0();
      }

      [OUTLINED_FUNCTION_80_0() startRampFrom:v101 to:2 iterations:? shape:? exponentialConvergenceFraction:?];
      OUTLINED_FUNCTION_81_0();
      *(self + 1544) = v116;
      goto LABEL_194;
    }

LABEL_187:
    [OUTLINED_FUNCTION_80_0() currentValue];
    goto LABEL_188;
  }

LABEL_194:
  v117 = &v189 + 1;
  v118 = -3;
  v120 = v186;
  v119 = v187;
  do
  {
    v121 = v118 + 3;
    v122 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
    if (v118 >= 0xFFFFFFFD)
    {
      v123 = v118 + 3;
    }

    else
    {
      v122 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
      v123 = v118;
    }

    v124 = self + *v122 + 56 * v123;
    if (*(v124 + 32) == 1)
    {
      v125 = v123 != 2;
      if ((v188 & v125) != 0)
      {
        v126 = v184;
      }

      else
      {
        v126 = *(v124 + 16);
      }

      if ((v188 & v125) != 0)
      {
        v127 = v183;
      }

      else
      {
        v127 = *(v124 + 24);
      }

      *(v124 + 32) = 0;
      v128 = *(v124 + 40);
      if (v128)
      {
        [v128 updateRampForNextIteration];
        *v124 = v129;
      }

      v130 = *(v124 + 48);
      if (v130)
      {
        [v130 updateRampForNextIteration];
        *(v124 + 8) = v131;
      }

      v132 = [BWRamp alloc];
      v133 = -[BWRamp initWithName:](v132, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"ShiftCorrectionRampX[%d]", v118 + 3]);
      v134 = [BWRamp alloc];
      v135 = -[BWRamp initWithName:](v134, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"ShiftCorrectionRampY[%d]"]);
      OUTLINED_FUNCTION_104(v136, v137, v138, v139, v140, v141, v142, v143, COERCE_DOUBLE((v118 + 3)), *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&shiftsCopy, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
      if (!(v59 ^ v60 | v17))
      {
        OUTLINED_FUNCTION_38_0();
        if (v17)
        {
          v147 = OUTLINED_FUNCTION_33_5();
          v144 = FigCaptureRoundFloatToMultipleOf(v147, v148);
        }
      }

      if (*(self + 1308) == 3)
      {
        v144 = (v144 * 1.7);
      }

      if (HIDWORD(v181))
      {
        v144 = [(BWPreviewStitcherNode *)self _cameraDisplayTransitionFrameCountForCameraFallbackChange:*(&v185 + 1) currentFrameRate:?];
      }

      if (v181 == v182)
      {
        v149 = v144;
      }

      else
      {
        v149 = 6;
      }

      v150 = *v124;
      *&v150 = *v124;
      *&v145 = v126;
      LODWORD(v146) = 1065017672;
      [(BWRamp *)v133 startRampFrom:v149 to:2 iterations:v150 shape:v145 exponentialConvergenceFraction:v146];
      v151 = *(v124 + 8);
      *&v151 = v151;
      *&v152 = v127;
      LODWORD(v153) = 1065017672;
      [(BWRamp *)v135 startRampFrom:v149 to:2 iterations:v151 shape:v152 exponentialConvergenceFraction:v153];

      *(v124 + 40) = v133;
      *(v124 + 48) = v135;
      *v124 = v126;
      *(v124 + 8) = v127;
      v63 = HIDWORD(v182);
    }

    if (v121 >= 3 && v63)
    {
      computedShift = *(self + 376);
      enabled = *(self + 384);
    }

    v154 = *(v124 + 40);
    if (!v154)
    {
      v158 = (v124 + 48);
      v157 = *(v124 + 48);
      v156 = *v124;
      if (!v157)
      {
        v159 = *(v124 + 8);
        goto LABEL_234;
      }

LABEL_228:
      [v157 updateRampForNextIteration];
      v159 = v160;
      goto LABEL_229;
    }

    [v154 updateRampForNextIteration];
    v156 = v155;
    v158 = (v124 + 48);
    v157 = *(v124 + 48);
    if (v157)
    {
      goto LABEL_228;
    }

    v159 = *(v124 + 8);
LABEL_229:
    if (([*(v124 + 40) isRamping] & 1) == 0)
    {

      *(v124 + 40) = 0;
    }

    if (([*v158 isRamping] & 1) == 0)
    {

      *v158 = 0;
    }

LABEL_234:
    v161 = enabled + v159;
    v162 = computedShift + v156;
    if (v63)
    {
      if (v121 > 2)
      {
        if (v118 == 2)
        {
          v120 = enabled + v159;
          v119 = computedShift + v156;
        }
      }

      else
      {
        *(v117 - 1) = v162;
        *v117 = v161;
      }
    }

    else
    {
      v120 = v186;
      v119 = v187;
      if (v121 >= 3)
      {
        v163 = (&v189 + v118);
        *v163 = v162;
        v163[1] = v161;
        v120 = v186;
        v119 = v187;
      }
    }

    ++v118;
    v117 += 2;
  }

  while (v118 != 3);
  *(self + 908) = [(BWPreviewStitcherNode *)self _currentlyZoomingOrSwitchingCameras];
  os_unfair_lock_unlock((self + 516));
  if (v178)
  {
    v164 = v190;
    *v178 = v189;
    v178[1] = v164;
    v178[2] = v191;
  }

  if (shiftsCopy)
  {
    *shiftsCopy = v119;
    shiftsCopy[1] = v120;
  }
}

- (_BYTE)_updateOverCaptureStatusWithWiderCameraSampleBuffer:(const void *)buffer narrowerCameraSampleBuffer:
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (result[1746] & 1) != 0 || (result[472])
  {
    return result;
  }

  if ((result[1289] & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_69();
    v10 = CMGetAttachment(v7, v8, v9);
    v11 = 1.0;
    if (v10)
    {
      [v10 floatValue];
      v11 = v12;
    }

    v13 = v11;
    OUTLINED_FUNCTION_33();
    if (!v26)
    {
      OUTLINED_FUNCTION_33();
      if (v26)
      {
        if (*(v3 + 226) || *(v3 + 227))
        {
          v4 = 4;
        }

        else if (v3[1923])
        {
          v4 = 2;
        }

        else
        {
          [objc_msgSend(*(v3 + 238) objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(v3 + 474))), "doubleValue"}];
          v37 = v36;
          v38 = *(v3 + 474);
          v39 = v38 == 1 && (v3[1873] & 1) == 0 && *(v3 + 472) <= 1u && vabdd_f64(v13, v36) < 0.005;
          v40 = *(v3 + 472) == 1 || v13 - v36 > 0.005 && v38 == 2;
          [objc_msgSend(*(v3 + 238) objectForKeyedSubscript:{@"FieldOfViewPortrait", "doubleValue"}];
          if (vabdd_f64(v13, v42) >= 0.005)
          {
            v44 = 0;
          }

          else
          {
            v43 = *(v3 + 110);
            v44 = v43 == 1.0;
            if (v43 != *(v3 + 222))
            {
              v44 = 0;
            }
          }

          v46 = v13 - v37 > 0.005 && (v45 = *(v3 + 110), v45 == *(v3 + 222)) && v45 == 1.0;
          if (v39 || v44 || v40 || v46)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }
      }

      else
      {
        v4 = 1;
      }

      goto LABEL_63;
    }

    v14 = *off_1E798A3C8;
    v15 = [CMGetAttachment(a2 *off_1E798A3C8];
    isEqualToString = objc_msgSend_isEqualToString_(v15);
    if (isEqualToString)
    {
      bufferCopy = buffer;
    }

    else
    {
      bufferCopy = a2;
    }

    v18 = CMGetAttachment(bufferCopy, v14, 0);
    psn_updateFocusDistanceBasedScene((v3 + 1312), v18);
    v19 = v3[1356];
    if (!isEqualToString)
    {
      v25 = 1;
      if ((v3[217] & 1) == 0 && v3[1356])
      {
        if (v13 >= 1.7 || *(v3 + 228) == *(v3 + 57))
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }
      }

      goto LABEL_55;
    }

    v20 = v3[1352];
    v21 = *(v3 + 56);
    v22 = *(v3 + 228);
    v23 = v22 == v21 && v22 != 0.0;
    if (v23 || v11 >= v21)
    {
      if ((v3[1353] & 1) == 0)
      {
        if (!v3[1356])
        {
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_123_0();
        if (((v30 | v29) & 1) == 0)
        {
LABEL_66:
          v25 = 2;
LABEL_55:
          v32 = OUTLINED_FUNCTION_69();
          v35 = [CMGetAttachment(v32 v33];
          if (v35 == 1 || (OUTLINED_FUNCTION_33(), v26) && (v3[513] & 1) == 0)
          {
            v25 = 4;
          }

          if ((((v35 & 0xFFFFFFFE) == 2) & v3[1404]) != 0)
          {
            v4 = 5;
          }

          else
          {
            v4 = v25;
          }

          goto LABEL_63;
        }

        if (*(v3 + 37))
        {
          if (v3[*(v28 + 2072)])
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          if ((v3[*(v28 + 2072)] & 1) != 0 || !v20)
          {
            goto LABEL_55;
          }
        }

        else
        {
LABEL_49:
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        OUTLINED_FUNCTION_123_0();
        if (v31 != 1 || (OUTLINED_FUNCTION_33(), v26))
        {
          v25 = 3;
          goto LABEL_55;
        }
      }
    }

    else if ((v3[1356] & 1) != 0 || v3[1352])
    {
      if (v3[1352])
      {
        OUTLINED_FUNCTION_44_3();
      }

      if ((v19 & 1) == 0 && (v20 & 1) == 0 || (OUTLINED_FUNCTION_123_0(), v24 == 1))
      {
        if (v20)
        {
          v25 = 3;
        }

        else
        {
          v25 = 1;
        }

        goto LABEL_55;
      }

      goto LABEL_66;
    }

LABEL_54:
    v25 = 1;
    goto LABEL_55;
  }

  v4 = 0;
LABEL_63:

  return [(BWPreviewStitcherNode *)v3 _setOverCaptureStatus:v4];
}

- (CMSampleBufferRef)_newStitchedSampleBufferFromWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(float64x2_t *)narrowerCamera widerCameraRegionsShifts:(double *)shifts teleShift:(double *)shift primaryCaptureRectOut:(double *)out primaryCaptureRectBeforeCroppingOut:(void *)croppingOut centerWiderCameraShiftOut:(float64_t)shiftOut currentFrameRate:(float64_t)self0 inputCropRectOut:(float)self1
{
  *&v1576 = rectOut;
  if (!result)
  {
    return result;
  }

  cameraCopy = a2;
  v16 = result;
  croppingOutCopy = croppingOut;
  if (a2)
  {
    OUTLINED_FUNCTION_18_7();
    if (!_ZF || (*(v16 + 513) & 1) != 0 || (OUTLINED_FUNCTION_18_7(), _ZF))
    {
      pixelBuffer = CMSampleBufferGetImageBuffer(cameraCopy);
      v72 = 1;
    }

    else
    {
      v72 = 0;
      pixelBuffer = 0;
    }
  }

  else
  {
    v72 = 0;
    pixelBuffer = 0;
    cameraCopy = camera;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(camera);
  v18 = [objc_msgSend(*(v16 + 2) "livePixelBufferPool")];
  v1777.i32[0] = CVPixelBufferGetWidth(v18);
  v1777.i32[1] = CVPixelBufferGetHeight(v18);
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v1777, *(v16 + 34));
  v1776 = 0;
  v19 = CMGetAttachment(cameraCopy, @"TotalZoomFactor", 0);
  if (v19)
  {
    [v19 floatValue];
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *off_1E798A3C8;
  v1763 = OUTLINED_FUNCTION_71_0(camera);
  v1741 = 0;
  if (v72)
  {
    v1741 = OUTLINED_FUNCTION_71_0(a2);
  }

  if (v18 && ImageBuffer)
  {
    v1613 = v22;
    v1545 = v11;
    v1762 = ImageBuffer;
    outCopy = out;
    v1650 = v18;
    LODWORD(v1708) = *(v16 + 1685);
    v23 = [objc_msgSend(v1763 objectForKeyedSubscript:{*off_1E798A8A8), "intValue"}];
    os_unfair_lock_lock(v16 + 119);
    v24 = objc_autoreleasePoolPush();
    dequeueFencedAnimation = [*(v16 + 205) dequeueFencedAnimation];
    cameraCopy2 = camera;
    if (dequeueFencedAnimation)
    {
      v26 = dequeueFencedAnimation;
      [dequeueFencedAnimation primaryCaptureAspectRatio];
      v1742 = v27;
      primaryCaptureRectCenterXPixelOffset = [v26 primaryCaptureRectCenterXPixelOffset];
      primaryCaptureRectCenterYPixelOffset = [v26 primaryCaptureRectCenterYPixelOffset];
      *(v16 + 112) = [v26 fencePortSendRight];
      fencePortGenerationCount = [v26 fencePortGenerationCount];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        [*(v16 + 205) count];
        [*(v16 + 112) port];
        kdebug_trace();
      }
    }

    else
    {
      fencePortGenerationCount = 0;
      v1742 = *(v16 + 110);
      primaryCaptureRectCenterXPixelOffset = *(v16 + 44);
      primaryCaptureRectCenterYPixelOffset = *(v16 + 45);
    }

    objc_autoreleasePoolPop(v24);
    value = *(v16 + 112);
    *(v16 + 112) = 0;
    v1685 = *(v16 + 46);
    v1714 = *(v16 + 47);
    if ([OUTLINED_FUNCTION_110() isCompleted])
    {
      goto LABEL_33;
    }

    if ((*(v16 + 1260) & 1) == 0)
    {
      CMSampleBufferGetPresentationTimeStamp(propertyValueOut, camera);
      *(v16 + 78) = *&propertyValueOut[0].a;
      *(v16 + 158) = *&propertyValueOut[0].c;
    }

    memset(propertyValueOut, 0, 24);
    CMSampleBufferGetPresentationTimeStamp(propertyValueOut, camera);
    *lhs = *&propertyValueOut[0].a;
    *&lhs[16] = propertyValueOut[0].c;
    rhs = *(v16 + 52);
    CMTimeSubtract(&time, lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v29 = FigCaptureRoundFloatToMultipleOf(1, Seconds * 60.0);
    updateCount = [OUTLINED_FUNCTION_110() updateCount];
    _VF = __OFSUB__(v29, updateCount);
    v32 = v29 - updateCount;
    if (!((v32 < 0) ^ _VF | (v32 == 0)))
    {
      do
      {
        [OUTLINED_FUNCTION_110() update];
        --v32;
      }

      while (v32);
    }

    if (*(v16 + 311) <= 0.0)
    {
LABEL_33:
      v35 = *(v16 + 310);
    }

    else
    {
      [OUTLINED_FUNCTION_110() output];
      v34 = v33;
      if (v34 > 1.0)
      {
        v34 = 1.0;
      }

      if (v34 < 0.0)
      {
        v34 = 0.0;
      }

      v35 = *(v16 + 311) + ((*(v16 + 310) - *(v16 + 311)) * v34);
    }

    v1702 = v35;
    v36 = *(v16 + 1648);
    v37 = *(v16 + 1748);
    v38 = *(v16 + 162);
    if (*(v16 + 1872) == 1)
    {
      if (v23 != *(v16 + 474))
      {
        *(v16 + 474) = v23;
        if ((*(v16 + 1873) & 1) == 0)
        {
          v39 = *(v16 + 472);
          if (v39 == v23 || !v39)
          {
            *(v16 + 473) = v39;
            *(v16 + 472) = 0;
          }
        }
      }

      v40 = *(v16 + 472);
      v41 = *(v16 + 473);
      if (!v41)
      {
        v41 = *(v16 + 474);
      }

      v42 = *(v16 + 1874);
      if (v40 && v41 && v40 != v41)
      {
        [objc_msgSend(*(v16 + 238) objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(v16 + 472))), "doubleValue"}];
        v44 = v43;
        [objc_msgSend(*(v16 + 238) objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(v41)), "doubleValue"}];
        v46 = *(v16 + 235);
        if (v45 <= v44)
        {
          v47 = v44;
        }

        else
        {
          v46 = 1.0 - v46;
          v47 = v45;
        }

        if (v45 > v44)
        {
          v45 = v44;
        }

        v48 = v46;
        v49 = v45;
        v50 = v47;
        if (v48 > 1.0)
        {
          v48 = 1.0;
        }

        if (v48 < 0.0)
        {
          v48 = 0.0;
        }

        v1702 = (v49 + ((v50 - v49) * v48)) / v21;
      }

      v51 = v42 ^ 1;
    }

    else
    {
      v41 = 0;
      v40 = 0;
      v51 = 1;
    }

    v1642 = v51;
    os_unfair_lock_unlock(v16 + 119);
    v52 = MEMORY[0x1E695EFF8];
    if (v36)
    {
      OUTLINED_FUNCTION_18_7();
      if (_ZF)
      {
        _ZF = *(v16 + 194) == v52->x && *(v16 + 195) == v52->y;
        if (!_ZF)
        {
          v56 = *v52;
          *(v16 + 97) = *v52;
          v55 = *(v16 + 413);
          LODWORD(v56.x) = v1576;
          if (*&v1576 > 0.0)
          {
            OUTLINED_FUNCTION_18_7();
            if (_ZF)
            {
              v57 = OUTLINED_FUNCTION_33_5();
              v59 = FigCaptureRoundFloatToMultipleOf(v57, v58);
              v53 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
              v55 = v59;
            }
          }

          v60 = *(v16 + 392);
          v61 = v53;
          if ([*(v16 + v53[405]) isRamping])
          {
            [*(v16 + v61[405]) currentValue];
            v60 = v60 * *&v62;
          }

          LODWORD(v64) = 1065269330;
          LODWORD(v63) = 1.0;
          *&v62 = v60;
          [*(v16 + v61[405]) startRampFrom:v55 to:2 iterations:v62 shape:v63 exponentialConvergenceFraction:v64];
          if (*(v16 + 1291) & 1) != 0 || (v37)
          {
            v71 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
            if (*(v16 + 1291))
            {
              goto LABEL_79;
            }
          }

          else
          {
            v71 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
            if ((*(v16 + 1745) & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          if (*(v16 + 1747))
          {
            *&v67 = 88.0;
          }

          else
          {
            *&v67 = 70.0;
          }

          LODWORD(v69) = 981668463;
          LODWORD(v70) = 1114636288;
          LODWORD(v66) = 1.0;
          LODWORD(v68) = 17.0;
          *&v65 = v60;
          [*(v16 + v71[405]) startSpringRampFrom:v65 to:v66 withTension:v67 friction:v68 snapFraction:v69 frameRate:v70];
        }
      }
    }

LABEL_79:
    v1661 = *off_1E798B540;
    v73 = [v1763 objectForKeyedSubscript:?];
    isEqualToString = objc_msgSend_isEqualToString_(v73);
    v1691 = v73;
    v1664 = v38;
    if (isEqualToString)
    {
      v74 = *(v16 + 57);
      v1735 = v74 * *(v16 + 80);
      v75 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
      if (*(v16 + 84) > 0.0)
      {
        v76 = *(v16 + 84);
      }

      else
      {
        v75 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingScaleFactor;
        v76 = *(v16 + 57);
      }

      v77 = v76 * *(v16 + *v75);
      v78 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingZoomFactors;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v73))
      {
        v77 = 1.0;
        v80 = 0;
        LODWORD(v1569) = 1;
        v74 = 1.0;
        v1735 = 1.0;
LABEL_90:
        v82 = [v1741 objectForKeyedSubscript:v1661];
        if (a2 | v82)
        {
          v83 = v82;
          v84 = objc_msgSend_isEqualToString_(v82);
        }

        else
        {
          v85 = *off_1E798A0D0;
          v86 = objc_msgSend_isEqualToString_(v1691);
          if (isEqualToString)
          {
            v87 = *off_1E798A0C0;
          }

          else
          {
            v87 = v85;
          }

          if (v86)
          {
            v83 = 0;
            v84 = objc_msgSend_isEqualToString_(0);
          }

          else
          {
            v83 = v87;
            v84 = objc_msgSend_isEqualToString_(v87);
          }
        }

        if (v84)
        {
          v88 = *(v16 + 56) * *(v16 + 72);
LABEL_108:
          LODWORD(v1573) = 1.0;
          v1645 = v88;
          goto LABEL_109;
        }

        if (!objc_msgSend_isEqualToString_(v83) || (OUTLINED_FUNCTION_18_7(), !_ZF))
        {
          v88 = v74 * 0.5;
          goto LABEL_108;
        }

        v89 = *(v16 + 55);
        v90 = *(v16 + 76);
        v91 = CMGetAttachment(a2, @"ZoomFactorLowerBoundAfterGDCAndFocus", 0);
        LODWORD(v92) = 1.0;
        if (v91)
        {
          [v91 floatValue];
        }

        v93 = *(v16 + 76);
        v1645 = v89 * v90;
        if ((*&v92 * v93) <= 1.0)
        {
          v528 = *(v16 + 58);
          LODWORD(v1573) = 1.0;
          if (v528 <= 0.0 || v528 == *(v16 + 55))
          {
LABEL_109:
            OUTLINED_FUNCTION_18_7();
            v1630 = v83;
            LODWORD(v1582) = v80;
            if (_ZF)
            {
              v97 = *(v16 + 905);
            }

            else
            {
              v97 = 1;
            }

            v1651 = v97;
            v1692 = *(v16 + 906);
            *v1614 = *(v16 + 50);
            if (isEqualToString)
            {
              v98 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingScaleFactor;
            }

            else
            {
              v98 = &OBJC_IVAR___BWPreviewStitcherNode__superWideNondisruptiveSwitchingScaleFactor;
            }

            v99 = *(v16 + *v98);
            v1694 = vmulq_n_f64(*narrowerCamera, v99);
            v1698 = vmulq_n_f64(narrowerCamera[1], v99);
            v100 = narrowerCamera[2].f64[0] * v99;
            v101 = narrowerCamera[2].f64[1] * v99;
            v1658 = *(v16 + 72);
            x = v52->x;
            y = v52->y;
            v1678 = vmulq_n_f64(*(v16 + 97), *(v16 + 76));
            v1709 = vmulq_n_f64(*(v16 + 92), v1658);
            HIDWORD(v1573) = v96;
            if (v95)
            {
              OUTLINED_FUNCTION_117();
              v106 = *(v16 + v105);
              v109 = v108 / v107;
              if (v74 >= v21)
              {
                v110 = v21;
              }

              else
              {
                v110 = v74;
              }

              if (v110 < v109)
              {
                v110 = v109;
              }

              v111 = (((v110 - v109) / (v74 - v109)) + 0.0) * 1.57079633;
              v112 = v104;
              if (fabs(v111) <= 1.57079633)
              {
                v113 = sin(v111);
              }

              else
              {
                _NF = v111 < 0.0;
                v113 = 1.0;
                if (_NF)
                {
                  v113 = -1.0;
                }
              }

              rect2a = v113;
              [v106 currentValue];
              v115 = OUTLINED_FUNCTION_46_3(v114);
              v117 = v116 - rect2a * v115;
              OUTLINED_FUNCTION_18_7();
              if (_ZF)
              {
                v1757 = v118;
                v119 = objc_msgSend_isEqualToString_(v1691);
                v118 = v1757;
                if (v119)
                {
                  v117 = 0.0;
                }
              }

              v120 = -(v117 * v100);
              v121 = v117 == 0.0;
              if (v117 == 0.0)
              {
                v122 = y;
              }

              else
              {
                v122 = -(v117 * v101);
              }

              if (v121)
              {
                v120 = x;
              }

              v1756 = v120;
              v1694 = vmulq_n_f64(v1694, v118);
              v1698 = vmulq_n_f64(v1698, v118);
              v100 = v100 * v118;
              v101 = v101 * v118;
              if (v112)
              {
                v123 = v1709;
                v124 = v1709.f64[0] == x;
                v125 = v1709.f64[1];
              }

              else
              {
                v123 = v1678;
                v124 = v1678.f64[0] == x;
                v125 = v1678.f64[1];
              }

              if (!v124 || v125 != y)
              {
                *dictb = v123;
                [v106 currentValue];
                v1656 = v127;
                [v106 currentValue];
                v129 = vmulq_f64(*dictb, vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(v128, v1656)), rect2a));
                v1694 = vaddq_f64(v1694, v129);
                v1698 = vaddq_f64(v1698, v129);
                v100 = v100 + v129.f64[0];
                v101 = v101 + v129.f64[1];
                v1756 = v1756 + v129.f64[0];
                v122 = v122 + v129.f64[1];
              }

              rect2 = v122;
            }

            else
            {
              rect2 = v52->y;
              v1756 = v52->x;
              v112 = isEqualToString;
            }

            memset(&recta, 0, sizeof(recta));
            recta.origin.x = psn_pixelBufferRect(v1762);
            recta.origin.y = v130;
            recta.size.width = v131;
            recta.size.height = v132;
            v1557 = *off_1E798B7A0;
            CGRectMakeWithDictionaryRepresentation([v1763 objectForKeyedSubscript:?], &recta);
            r2 = *&ymmword_1AD046EE0[16];
            r2_16 = *ymmword_1AD046EE0;
            v1773 = *ymmword_1AD046EE0;
            v1657 = *off_1E798A5C8;
            CGRectMakeWithDictionaryRepresentation([v1763 objectForKeyedSubscript:?], &v1773);
            if (v1702 > 0.0)
            {
              v133 = OUTLINED_FUNCTION_124_0();
              v1773.origin.x = FigCaptureMetadataUtilitiesScaleRect2D(v133, v135, v136, v137, v134 / v1702);
              v1773.origin.y = v138;
              v1773.size.width = v139;
              v1773.size.height = v140;
            }

            v1626 = v1702;
            *v1772 = 0u;
            v1771 = 0u;
            Width = CVPixelBufferGetWidth(v1762);
            CVPixelBufferGetHeight(v1762);
            v142 = OUTLINED_FUNCTION_124_0();
            FigCaptureMetadataUtilitiesDenormalizeCropRect(v142, v143, v144, v145, Width, v146);
            OUTLINED_FUNCTION_4_25(v147, v148, v149, v150);
            v151 = CMGetAttachment(cameraCopy2, *off_1E798A428, 0);
            *v1561 = *v52;
            point = *v52;
            v1712 = v21;
            v1648 = y;
            v1649 = x;
            *(&v1576 + 1) = v74;
            *&v1586 = v77;
            dict = v151;
            *&v1646 = v101;
            *&v1647 = v100;
            if (!v151 || (CGPointMakeWithDictionaryRepresentation(v151, &point), (v1692 & 1) != 0))
            {
LABEL_166:
              OUTLINED_FUNCTION_45_4();
              if (v171 != 1)
              {
                v174 = 0;
                v175 = v1756 - point.x;
                v176 = rect2 - point.y;
                v177 = 1.0;
                v1660 = v100;
                v1659 = v101;
                v178 = v1735;
                goto LABEL_203;
              }

              v172 = *(v16 + 57);
              if (v172 <= 0.0)
              {
                v173 = 1;
              }

              else
              {
                v173 = v112;
              }

              if (v173)
              {
                v172 = v74 + v74;
              }

              else
              {
                v179 = *(v16 + 35);
                if (v179)
                {
                  [objc_msgSend(v179 "firstObject")];
                  OUTLINED_FUNCTION_45_4();
                  v181 = 1.0;
                  v178 = v1735;
                  if ((v182 & 1) == 0)
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_177;
                }
              }

              v180 = v74;
              v178 = v1735;
LABEL_177:
              v181 = (v1645 / v77);
LABEL_178:
              v1639 = v181;
              v183.f64[0] = shiftOut;
              v183.f64[1] = rate;
              if (v172 >= v21)
              {
                v184 = v21;
              }

              else
              {
                v184 = v172;
              }

              if (v184 < v180)
              {
                v184 = v180;
              }

              v185 = (((v184 - v180) / (v172 - v180)) + 0.0) * 1.57079633;
              if (fabs(v185) <= 1.57079633)
              {
                v1747 = v183;
                v187 = sin(v185);
                v183 = v1747;
                v186 = v187;
              }

              else
              {
                v186 = -1.0;
                if (v185 >= 0.0)
                {
                  v186 = 1.0;
                }
              }

              v188 = vmulq_n_f64(v183, v1658);
              if (v112)
              {
                v189 = v1639;
                v190 = vmulq_n_f64(vmulq_n_f64(v188, v186), v1639);
                if (v1678.f64[0] == x && v1678.f64[1] == y)
                {
                  goto LABEL_200;
                }

                *v1672 = v190;
                _wideBaseZoomFactorWithOverride = [(BWPreviewStitcherNode *)v16 _wideBaseZoomFactorWithOverride];
                v1710 = (*&_wideBaseZoomFactorWithOverride / *(v16 + 55));
                [*(v16 + 192) currentValue];
                v1748 = v193;
                [*(v16 + 192) currentValue];
                v194 = *v1672;
                v195 = vsubq_f64(vmulq_n_f64(v1678, v1710), vmulq_n_f64(*v1614, v1710));
                v189 = v1639;
                v197 = vcvtq_f64_f32(__PAIR64__(v196, v1748));
              }

              else
              {
                v1749 = v186;
                v1679 = v188;
                [*(v16 + 183) currentValue];
                v199 = OUTLINED_FUNCTION_46_3(v198);
                v189 = v1639;
                v190 = vmulq_n_f64(vmulq_n_f64(v1679, v200 * v199), v1639);
                if (v1709.f64[0] == x && v1709.f64[1] == y)
                {
                  goto LABEL_200;
                }

                *v1673 = v190;
                [*(v16 + 183) currentValue];
                v1680 = v202;
                [*(v16 + 183) currentValue];
                v194 = *v1673;
                v189 = v1639;
                v197 = vmulq_n_f64(vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(v203, v1680)), v1749), v1639);
                v195 = v1709;
              }

              v190 = vaddq_f64(v194, vmulq_f64(v195, v197));
LABEL_200:
              v204 = vmlsq_lane_f64(v190, point, v189, 0);
              v1694 = vaddq_f64(v1694, v204);
              v1698 = vaddq_f64(v1698, v204);
              v1660 = v100 + v204.f64[0];
              v1659 = v101 + v204.f64[1];
              OUTLINED_FUNCTION_45_4();
              if (v207)
              {
                v177 = (v77 / v1645);
                v174 = 1;
              }

              else
              {
                v174 = 0;
                v175 = v175 - v205;
                v176 = v176 - v206;
                v177 = 1.0;
              }

LABEL_203:
              v208 = MEMORY[0x1E695F058];
              v209 = v1742;
              v1681 = v175;
              v1674 = v176;
              if (*(v16 + 1744) == 1)
              {
                if (objc_msgSend_isEqualToString_(v1691))
                {
                  v177 = 1.0;
                }

                OUTLINED_FUNCTION_45_4();
              }

              *v1608 = v208[1];
              v1610 = *v208;
              v1769.origin = *v208;
              v1769.size = *v1608;
              v210 = *v1772 / *&v1772[1];
              v1641 = v210;
              if (v209 <= 0.0)
              {
                *&v211 = *v1772 / *&v1772[1];
              }

              else
              {
                *&v211 = v1742;
              }

              if (v174)
              {
                if (v178 != *&v1586)
                {
                  v212 = OUTLINED_FUNCTION_47_5();
                  v217 = FigCaptureMetadataUtilitiesScaleRect2D(v212, v213, v214, v215, v216);
                  OUTLINED_FUNCTION_4_25(v217, v218, v219, v220);
                }

                if (v112)
                {
                  [(BWPreviewStitcherNode *)v16 _wideBaseZoomFactorWithOverride];
                  v657 = OUTLINED_FUNCTION_47_5();
                  v662 = FigCaptureMetadataUtilitiesScaleRect2D(v657, v658, v659, v660, v661);
                  OUTLINED_FUNCTION_4_25(v662, v663, v664, v665);
                }
              }

              v1743 = v21;
              v221 = off_1E798A6F0;
              v222 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
              v1711 = *&v211;
              rect2b = v177;
              if ((v37 & 1) == 0)
              {
                OUTLINED_FUNCTION_18_7();
                if (!_ZF)
                {
                  OUTLINED_FUNCTION_18_7();
                  if (v231 && v40 && v41 && v40 != v41)
                  {
                    LODWORD(v233) = *(v16 + *(v232 + 1856));
                    if (v209 == 1.0 && *&v233 == v209)
                    {
                      [objc_msgSend(*(v16 + 239) objectForKeyedSubscript:{v1691, v233), "floatValue"}];
                      IsSensorMountedInPortraitOrientation = FigCaptureSourceIsSensorMountedInPortraitOrientation(v561);
                      v563 = BWSmartFramingSceneMonitorAspectRatioFromFieldOfView(*(v16 + 474), IsSensorMountedInPortraitOrientation);
                      v564 = BWAspectRatioValueFromAspectRatio(v563);
                      FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(recta.size.width, recta.size.height, v564);
                      v567 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(v565, v566, *&v211);
                      OUTLINED_FUNCTION_4_25(v567, v568, v569, v570);
                      v572 = recta.origin.x;
                      v571 = recta.origin.y;
                      v574 = recta.size.width;
                      height = recta.size.height;
                      FigCaptureMetadataUtilitiesScaleRect2D(v575, v576, v577, v578, 1.0 / (v1743 * v1626));
                      v224 = v1762;
                      OUTLINED_FUNCTION_85_1();
                      v226 = cameraCopy2;
                    }

                    else
                    {
                      v235 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(recta.size.width, recta.size.height, *&v211);
                      OUTLINED_FUNCTION_4_25(v235, v236, v237, v238);
                      [v1763 objectForKeyedSubscript:*off_1E798A6F0];
                      v224 = v1762;
                      if (*(v16 + 1921))
                      {
                        CVPixelBufferGetWidth(v1762);
                        CVPixelBufferGetHeight(v1762);
                        v239.n128_f64[0] = OUTLINED_FUNCTION_0_29();
                        v247 = OUTLINED_FUNCTION_96_0(v239, v240, v241, v242, v243, v244, v245, v246);
                        OUTLINED_FUNCTION_4_25(v247, v248, v249, v250);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_0_29();
                      }

                      OUTLINED_FUNCTION_85_1();
                      v226 = cameraCopy2;
                      v572 = recta.origin.x;
                      v571 = recta.origin.y;
                      v574 = recta.size.width;
                      height = recta.size.height;
                      FigCaptureMetadataUtilitiesScaleRect2D(v648, v649, v650, v651, 1.0 / (v1743 * v1626));
                    }

                    v652 = OUTLINED_FUNCTION_100_0(v574 - v579);
                    OUTLINED_FUNCTION_4_25(v572 + v652, v571 + (height - v653) * v654, v655, v653);
                    v251 = 1.0;
                    if (*(v16 + 1920) == 1)
                    {
                      [*(v16 + 58) previewStitcherSmartFramingFieldOfViewTransitionAppliedZoomFactor:v16 zoomFactor:v1743 * v1626];
                    }

                    goto LABEL_284;
                  }

                  v251 = 1.0;
                  if (v209 > 0.0)
                  {
                    v252 = OUTLINED_FUNCTION_47_5();
                    v256 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v252, v253, v254, v255, v209);
                    OUTLINED_FUNCTION_4_25(v256, v257, v258, v259);
                  }

                  v224 = v1762;
                  OUTLINED_FUNCTION_85_1();
                  v260 = primaryCaptureRectCenterYPixelOffset;
                  v261 = v1714;
                  v226 = cameraCopy2;
LABEL_306:
                  v373 = v261 + v260;
                  v374.n128_f64[0] = OUTLINED_FUNCTION_0_29();
                  if (LODWORD(v1708))
                  {
                    v378 = psn_rectBoundedByRect(v374.n128_f64[0], v375, v376, v377, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
                  }

                  else
                  {
                    v378 = psn_conformRectForMSR420vfBoundedByRect(0, v374, v375, v376, v377, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
                  }

                  v1634 = v1685 + primaryCaptureRectCenterXPixelOffset;
                  OUTLINED_FUNCTION_4_25(v378, v379, v380, v381);
                  v1820.origin.x = OUTLINED_FUNCTION_58_4();
                  v1821 = CGRectInset(v1820, v382, v382);
                  v383 = v1821.origin.y;
                  v384 = v1821.size.width;
                  v1666 = v251;
                  if (v251 > 1.0)
                  {
                    OUTLINED_FUNCTION_18_7();
                    if (_ZF)
                    {
                      v1821.origin.x = FigCaptureMetadataUtilitiesScaleRect2D(v1821.origin.x, v383, v384, v1821.size.height, (v385 / v251));
                      v383 = v386;
                      v384 = v387;
                    }
                  }

                  v1617 = v1634;
                  if (v1634)
                  {
                    v388 = v1821.origin.x + v1634;
                  }

                  else
                  {
                    v388 = v1821.origin.x;
                  }

                  if (v373)
                  {
                    OUTLINED_FUNCTION_18_7();
                    if (_ZF)
                    {
                      v383 = v383 + v373;
                    }
                  }

                  v1752 = v1821.size.height;
                  v389 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v388, v383, v384, v1821.size.height, *&v211);
                  OUTLINED_FUNCTION_23_3(v389, v390, v391, v392);
                  if (v373)
                  {
                    OUTLINED_FUNCTION_18_7();
                    if (_ZF)
                    {
                      v383 = v383 - v373;
                    }
                  }

                  v1759 = v383;
                  v394 = OUTLINED_FUNCTION_41_3(v16 + 26, v393);
                  v398 = v396;
                  v399 = v397;
                  if (shifts)
                  {
                    *shifts = v394;
                    shifts[1] = v395;
                    shifts[2] = v396;
                    shifts[3] = v397;
                  }

                  v1725 = v395;
                  v1727 = v394;
                  if (shift)
                  {
                    v400 = v1641;
                    v401 = *&v211;
                    if (*&v211 <= v1641)
                    {
                      v403 = 1.0;
                      v402 = v400 / v401;
                    }

                    else
                    {
                      v402 = 1.0;
                      v403 = v401 / v400;
                    }

                    *shift = (1.0 - v402) * 0.5;
                    shift[1] = (1.0 - v403) * 0.5;
                    shift[2] = v402;
                    shift[3] = v403;
                  }

                  LODWORD(v1548) = v373;
                  OUTLINED_FUNCTION_18_7();
                  if (_ZF)
                  {
                    v404.n128_f64[0] = OUTLINED_FUNCTION_126();
                    v1822.origin.x = psn_conformRectForMSR420vfBoundedByRect(1, v404, v405, v398, v399, v404.n128_f64[0], v405, v398, v399);
                    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v1822);
                    VTSessionSetProperty(*(v16 + 50), *MEMORY[0x1E6983D90], DictionaryRepresentation);
                    if (DictionaryRepresentation)
                    {
                      CFRelease(DictionaryRepresentation);
                    }
                  }

                  v1715 = v399;
                  v407 = 1.0;
                  if (*(v16 + 330) == 1)
                  {
                    v408 = recta.size.width;
                    v409 = v408 / CVPixelBufferGetWidth(v224);
                    v410 = recta.size.height;
                    if (v409 >= v410 / CVPixelBufferGetHeight(v224))
                    {
                      v411 = recta.size.height;
                      v412 = CVPixelBufferGetHeight(v224);
                    }

                    else
                    {
                      v411 = recta.size.width;
                      v412 = CVPixelBufferGetWidth(v224);
                    }

                    v407 = v411 / v412;
                  }

                  _NF = v21 < v178 || v21 < (v178 / v407);
                  if (_NF)
                  {
                    v414 = OUTLINED_FUNCTION_8_18();
                    acpr_conformRectForMSR420vf(v414, v415, v416, v417);
                    v419.f64[1] = v418;
                    v420 = vaddvq_f64(vdivq_f64(v419, vaddq_f64(*v1772, *v1772)));
                    if (v407 != 1.0)
                    {
                      v420 = v420 * v407;
                    }

                    v1744 = v420;
                    v1823 = v1769;
                    *&v426 = CGRectInset(v1769, (1.0 - v1823.origin.y) * v1769.size.width * 0.5, (1.0 - v1823.origin.y) * v1769.size.height * 0.5);
                  }

                  else
                  {
                    v421 = OUTLINED_FUNCTION_8_18();
                    v426 = psn_smallestBoundingRectAlignedToMultipleOf(v422, 0, v421, v423, v424, v425);
                    v1744 = 0.0;
                  }

                  v430 = v388 - v1617;
                  OUTLINED_FUNCTION_23_3(v426, v427, v428, v429);
                  v431 = [objc_msgSend(*(v16 + 2) "videoFormat")];
                  v1686 = v398;
                  if (FigCapturePixelFormatIsTenBit(v431))
                  {
                    *&propertyValueOut[0].a = 0x200000002;
                    if (FigCapturePixelFormatIsTenBitPacked(v431))
                    {
                      *&propertyValueOut[0].a = 0x200000006;
                    }

                    else if (FigCapturePixelFormatGetCompressionType(v431))
                    {
                      *&propertyValueOut[0].a = FigCapturePixelFormatTileAlignment(v431);
                    }

                    FigCaptureSwapVideoDimensionsFor90Or270Rotation(propertyValueOut, *(v16 + 34));
                    OUTLINED_FUNCTION_8_18();
                    a_high = HIDWORD(propertyValueOut[0].a);
                    a_low = LODWORD(propertyValueOut[0].a);
                    v472 = v1777.i32[0];
                    v471 = v1777.i32[1];
                    OUTLINED_FUNCTION_40_4();
                    v479 = psn_rectBoundedByRect(v473, v474, v475, v476, v477, v478, v384, v1752);
                    v481 = v480;
                    v483 = v482;
                    v1722 = v484;
                    v485 = v479 + 0.001;
                    v486 = FigCaptureFloorFloatToMultipleOf(a_low, v485);
                    v487 = v481 + 0.001;
                    v488 = FigCaptureFloorFloatToMultipleOf(a_high, v487);
                    v489 = v479 + v483 + -0.001;
                    v490 = FigCaptureCeilFloatToMultipleOf(a_low, v489);
                    v491 = v481 + *&v1722 + -0.001;
                    v492 = FigCaptureCeilFloatToMultipleOf(a_high, v491);
                    v1826.origin.x = v430;
                    v1826.origin.y = v1759;
                    v1826.size.width = v384;
                    v1826.size.height = v1752;
                    MinX = CGRectGetMinX(v1826);
                    v493 = a_low;
                    v1827.origin.x = v430;
                    v1827.origin.y = v1759;
                    v1827.size.width = v384;
                    v1827.size.height = v1752;
                    MinY = CGRectGetMinY(v1827);
                    v495 = v472;
                    if (v490 <= v472)
                    {
                      v1828.origin.x = OUTLINED_FUNCTION_116_1();
                      if (CGRectGetMaxX(v1828) >= v490)
                      {
                        v495 = v490;
                      }

                      else
                      {
                        v495 = v490 - v493;
                      }
                    }

                    v398 = a_high;
                    v522 = v471;
                    v313 = v492 <= v471;
                    v224 = v1762;
                    v454 = a2;
                    LODWORD(v222) = isEqualToString;
                    if (v313)
                    {
                      v1833.origin.x = OUTLINED_FUNCTION_116_1();
                      if (CGRectGetMaxY(v1833) >= v492)
                      {
                        v522 = v492;
                      }

                      else
                      {
                        v522 = v492 - v398;
                      }
                    }

                    if (MinY <= v488)
                    {
                      v523 = -0.0;
                    }

                    else
                    {
                      v523 = a_high;
                    }

                    v524 = v486;
                    v453 = v523 + v488;
                    if (MinX <= v486)
                    {
                      v525 = -0.0;
                    }

                    else
                    {
                      v525 = v493;
                    }

                    v450 = v525 + v524;
                    v451 = v495 - (v525 + v524);
                    v452 = v522 - v453;
                    v1769.origin.x = v525 + v524;
                    v1769.origin.y = v453;
                    v1769.size.width = v451;
                    v1769.size.height = v522 - v453;
                    if (v1666 > 1.0)
                    {
                      v21 = v1712;
                      *&v211 = v1711;
                      v178 = v1735;
                      v455 = rect2b;
                      if ((*(v16 + 1291) & 1) != 0 && (v1777.i32[0] % SLODWORD(propertyValueOut[0].a) || v1777.i32[1] % SHIDWORD(propertyValueOut[0].a)))
                      {
                        v526 = v1777.i32[0];
                        v527 = v450 == 0.0 || v450 + v451 == v526;
                        if (!v527 && (*(v16 + 52) < 0.0 || *(v16 + 53) < 0.0))
                        {
                          v450 = v450 + (v1777.i32[0] % SLODWORD(propertyValueOut[0].a));
                          v1769.origin.x = v450;
                          if (v451 + v450 > v526)
                          {
                            v451 = v451 - SLODWORD(propertyValueOut[0].a);
                            v1769.size.width = v451;
                          }
                        }

                        if (v453 != 0.0 && v453 + v452 != v1777.i32[1] && (*(v16 + 54) < 0.0 || *(v16 + 55) < 0.0))
                        {
                          v453 = v453 + (v1777.i32[1] % SHIDWORD(propertyValueOut[0].a));
                          v1769.origin.y = v453;
                          if (v452 + v453 > v1777.i32[1])
                          {
                            v452 = v452 - SHIDWORD(propertyValueOut[0].a);
                            v1769.size.height = v452;
                          }
                        }
                      }

LABEL_353:
                      v1589 = v450;
                      v1592 = v453;
                      v457 = v1648;
                      v456 = v1649;
                      v458 = v1681 == v1649 && v1674 == v1648;
                      *&v1596 = v452;
                      *&v1603 = v451;
                      v459 = v452;
                      v460 = v451;
                      v1625 = v1674 * v455;
                      v1629 = v1681 * v455;
                      if (!v458)
                      {
                        v580 = v451 / (*v1772 + *v1772) + v452 / (*&v1772[1] + *&v1772[1]);
                        HIDWORD(v398) = HIDWORD(recta.size.width);
                        *&propertyValueOut[0].a = *v1561;
                        OUTLINED_FUNCTION_45_4();
                        v584 = v583;
                        v585 = v582;
                        if ((v581 & 1) == 0)
                        {
                          v584 = v583;
                          v585 = v582;
                          if (*(v16 + 1696) == 1)
                          {
                            v586 = CVPixelBufferGetWidth(v224);
                            CVPixelBufferGetHeight(v224);
                            v587 = OUTLINED_FUNCTION_0_29();
                            FigCaptureMetadataUtilitiesNormalizeCropRect(v587, v588, v589, v590, v586, v591);
                            v593 = v592;
                            v211 = (1.0 - v595) * 0.5;
                            v585 = v1629 - (v596 - (1.0 - v594) * 0.5) * CVPixelBufferGetWidth(v224);
                            v597 = v593 - v211;
                            *&v211 = v1711;
                            v584 = v1625 - v597 * CVPixelBufferGetHeight(v224);
                            v455 = rect2b;
                          }
                        }

                        v598 = v580;
                        v1477 = v598;
                        v1466 = v584;
                        v599 = OUTLINED_FUNCTION_3();
                        [(BWPreviewStitcherNode *)v16 _getInputRect:v600 outputRect:v601 inputShiftAppliedInOutputRect:v602 toTransferPixelBuffer:v224 rect:v603 intoPixelBufferDimensions:0 rect:v221 withInputShift:v599 shiftOutsideBoundingRectAllowed:v604 ignoreBounds:v605 scale:v606 forFinalOutput:v1589, v1592, v607, v608, v585, v1466, v1477, 0];
                        v456 = propertyValueOut[0].a / v455;
                        v460 = v1769.size.width;
                        v459 = v1769.size.height;
                        v457 = propertyValueOut[0].b / v455;
                        v21 = v1712;
                        v178 = v1735;
                      }

                      *&v1554 = v457;
                      *v1561 = v456;
                      v461 = v460 / *v1772;
                      v462 = v459 / *&v1772[1];
                      if (FigCapturePlatformIdentifier() <= 11)
                      {
                        v463 = 4.0;
                      }

                      else
                      {
                        v463 = 8.0;
                      }

                      OUTLINED_FUNCTION_18_7();
                      if (_ZF)
                      {
                        v463 = v463 / ((*(v16 + 68) / 100.0 + 1.0) * (v178 / v1645));
                      }

                      v1644 = *MEMORY[0x1E695F050];
                      if (v461 <= v463 && v462 <= v463)
                      {
                        v468 = 1.0;
                      }

                      else
                      {
                        v1824.origin.x = OUTLINED_FUNCTION_8_18();
                        v466 = CGRectGetWidth(v1824) / v463;
                        v1753 = v462;
                        if (LODWORD(v1708))
                        {
                          v1825.origin.x = OUTLINED_FUNCTION_8_18();
                          v467 = CGRectGetHeight(v1825) / v463;
                        }

                        else
                        {
                          v496 = v466;
                          v466 = FigCaptureCeilFloatToMultipleOf(2, v496);
                          v1829.origin.x = OUTLINED_FUNCTION_8_18();
                          v497 = CGRectGetHeight(v1829) / v463;
                          v467 = FigCaptureCeilFloatToMultipleOf(2, v497);
                        }

                        HIDWORD(v398) = HIDWORD(v1772[0]);
                        v498 = *&v1772[1];
                        OUTLINED_FUNCTION_28_3();
                        v1830.size.height = v498;
                        v499 = CGRectGetMidX(v1830) - v466 * 0.5;
                        v1831.origin.x = OUTLINED_FUNCTION_0_29();
                        MidY = CGRectGetMidY(v1831);
                        v1771.f64[0] = v499;
                        v1771.f64[1] = MidY - v467 * 0.5;
                        *v1772 = v466;
                        *&v1772[1] = v467;
                        psn_rectBoundedByRect(v499, v1771.f64[1], v466, v467, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
                        OUTLINED_FUNCTION_26_2();
                        OUTLINED_FUNCTION_0_29();
                        OUTLINED_FUNCTION_48();
                        if (!CGRectEqualToRect(v1832, v1887))
                        {
                          OUTLINED_FUNCTION_45_4();
                          if ((v501 & 1) == 0)
                          {
                            v1771.f64[0] = v466;
                            v1771.f64[1] = v467;
                            *v1772 = v499;
                            v1772[1] = 0.5;
                            OUTLINED_FUNCTION_28_3();
                            OUTLINED_FUNCTION_48();
                            v1644 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v502, v503, v504, v505, v506, v507, v508);
                          }
                        }

                        if ((LOBYTE(v1708) & 1) == 0)
                        {
                          v509 = OUTLINED_FUNCTION_0_29();
                          v513 = acpr_conformRectForMSR420vf(v509, v510, v511, v512);
                          OUTLINED_FUNCTION_4_25(v513, v514, v515, v516);
                        }

                        v468 = OUTLINED_FUNCTION_100_0(v461 + v1753) / v463;
                        OUTLINED_FUNCTION_45_4();
                        v21 = v1712;
                        *&v211 = v1711;
                        v178 = v1735;
                      }

                      v517 = 0;
                      *&v1723 = v468;
                      if ((v464 & 1) != 0 && !v221 && v21 > v178)
                      {
                        if (([*(v16 + 119) isRamping] & 1) == 0 && *(v16 + 906) == -[opaqueCMSampleBuffer displaysWidestCameraOnly](v16, "displaysWidestCameraOnly"))
                        {
                          v1760 = OUTLINED_FUNCTION_57_3();
                          v519 = v518;
                          v1754 = v520;
                          rect2c = v521;
                          OUTLINED_FUNCTION_18_7();
                          if (_ZF)
                          {
                            HIDWORD(v398) = HIDWORD(recta.origin.y);
                          }

                          else
                          {
                            psn_pixelBufferRect(v224);
                            OUTLINED_FUNCTION_21_5();
                          }

                          v530 = OUTLINED_FUNCTION_0_29();
                          v535 = FigCaptureMetadataUtilitiesScaleRect2D(v530, v532, v533, v534, v531 / v468);
                          v539 = v536;
                          if (!LODWORD(v1708))
                          {
                            v535 = acpr_conformRectForMSR420vf(v535, v536, v537, v538);
                            v539 = v540;
                          }

                          *&v1689 = v535;
                          v1682 = v539;
                          v1675 = v537;
                          if (v468 <= 1.0)
                          {
                            OUTLINED_FUNCTION_25_3();
                          }

                          OUTLINED_FUNCTION_32_2();
                          FigCaptureMetadataUtilitiesRectNormalizedToRect(v541, v542, v543, v544, v545, v546, v547);
                          OUTLINED_FUNCTION_21_5();
                          v1888.origin.x = v1760;
                          v1888.origin.y = v519;
                          v1888.size.width = v1754;
                          v1888.size.height = rect2c;
                          v548 = CGRectContainsRect(v1834, v1888);
                          if (dict)
                          {
                            OUTLINED_FUNCTION_73();
                            OUTLINED_FUNCTION_121();
                            v1836 = CGRectIntersection(v1835, v1889);
                            v549 = v1836.size.width * v1836.size.height / (v1754 * rect2c);
                            if ((v548 & 1) == 0)
                            {
                              if (v549 >= 0.99)
                              {
                                v609 = v549 * 0.95;
                                v549 = v609;
                              }

                              BWSmartCameraSceneUpdateWithConfidence(v16 + 1704, v549);
                              v517 = 0;
                              v454 = a2;
                              v21 = v1712;
                              *&v211 = v1711;
                              goto LABEL_449;
                            }

                            BWSmartCameraSceneUpdateWithConfidence(v16 + 1704, v549);
                            v548 = *(v16 + 1705);
                          }

                          if ((v548 & (*&v1582 > 0.0) & v1569) == 1)
                          {
                            v550 = psn_pixelBufferRect(v224);
                            v554 = FigCaptureMetadataUtilitiesScaleRect2D(v550, v551, v552, v553, (1.0 / (*&v1582 / *(&v1576 + 1))));
                            v558 = *&v1689;
                            v559 = v1682;
                            v560 = v1675;
                            if (v468 <= 1.0)
                            {
                              OUTLINED_FUNCTION_25_3();
                            }

                            v1837.origin.x = FigCaptureMetadataUtilitiesRectNormalizedToRect(v554, v555, v556, v557, v558, v559, v560);
                            v1890.origin.x = v1760;
                            v1890.origin.y = v519;
                            v1890.size.width = v1754;
                            v1890.size.height = rect2c;
                            if (!CGRectContainsRect(v1837, v1890))
                            {
                              goto LABEL_437;
                            }
                          }

                          else if ((v548 & 1) == 0)
                          {
LABEL_437:
                            v517 = 0;
LABEL_445:
                            v454 = a2;
                            v21 = v1712;
                            *&v211 = v1711;
LABEL_449:
                            v178 = v1735;
                            goto LABEL_450;
                          }

                          v517 = *(v16 + 128) == 0;
                          goto LABEL_445;
                        }

                        v517 = 0;
                      }

LABEL_450:
                      v1736 = v178;
                      v610 = v21;
                      if (!v454 && (*(v16 + 1224) & 1) != 0)
                      {
                        v517 = *(v16 + 327) != 4;
                        v611 = *(v16 + 119);
                        if (v611)
                        {

                          *(v16 + 119) = 0;
                          *(v16 + 1000) = 0;
                        }

                        goto LABEL_482;
                      }

                      if (!v454 || v222 == 1)
                      {
                        goto LABEL_482;
                      }

                      if (*(v16 + 1353) == v517)
                      {
                        if (*(v16 + 1354) == 1 && ((*(v16 + 1313) & 1) != 0 || *(v16 + 907) == 1))
                        {
                          *(v16 + 1354) = 0;
                        }

                        goto LABEL_467;
                      }

                      if (v517)
                      {
                        v612 = 0;
                      }

                      else
                      {
                        if (*(v16 + 1313))
                        {
LABEL_466:
                          *(v16 + 1353) = v517;
LABEL_467:
                          v613 = *(v16 + 228);
                          v614 = *(v16 + 1355);
                          if (*(v16 + 482) == 1 && (OUTLINED_FUNCTION_18_7(), _ZF))
                          {
                            v615 = objc_msgSend_isEqualToString_(v1630);
                            v616 = *(v16 + 121);
                            if (v616)
                            {
                              v617 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
                              if (v615)
                              {
                                v617 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
                              }

                              LOBYTE(v616) = *(v16 + *v617 + 148) >= v616;
                            }
                          }

                          else
                          {
                            LOBYTE(v616) = 1;
                          }

                          if (v1769.size.height >= v1777.i32[1] && (v221 & 1) == 0 && (!(v1651 & 1 | ((*(v16 + 1354) & 1) == 0)) && v613 != *(&v1573 + 1) && v614 || !(v616 & 1 | ((*(v16 + 1573) & 1) == 0))))
                          {
                            v618 = *(v16 + 128) == 0;
                            v517 |= v618;
                            v1651 |= v618;
                          }

LABEL_482:
                          v619 = vaddvq_f64(vdivq_f64(v1769.size, vaddq_f64(*v1772, *v1772)));
                          if (v1744 > 0.0 && v221)
                          {
                            v619 = v1744 * (v610 / v1736);
                          }

                          *&v620 = COERCE_DOUBLE(&time);
                          v621 = v208->x;
                          d = v208[1].y;
                          v622 = v208[1].x;
                          b = v208->y;
                          v623 = v208->x;
                          *&v1667 = d;
                          rect2d = d;
                          dicta = v622;
                          v1761 = v622;
                          v1690 = b;
                          v1755 = b;
                          v1745 = v208->x;
                          v18 = v1650;
                          if (!pixelBuffer)
                          {
LABEL_488:
                            if (v221)
                            {
LABEL_489:
                              OUTLINED_FUNCTION_20_4();
                              v634 = v610;
                              goto LABEL_718;
                            }

LABEL_562:
                            v1738 = v622;
                            *&v1584 = v621;
                            if (v517)
                            {

                              *(v16 + 128) = 0;
                              v623 = recta.origin.x;
                              v621 = recta.origin.y;
                              v935 = recta.size.width;
                              v622 = recta.size.height;
                              propertyValueOut[0].a = recta.origin.x;
                              propertyValueOut[0].b = recta.origin.y;
                              *&propertyValueOut[0].c = recta.size;
                              v936 = v1629;
                              if (v1634)
                              {
                                v936 = v1629 + v1617 / v619;
                              }

                              OUTLINED_FUNCTION_18_7();
                              if (_ZF)
                              {
                                OUTLINED_FUNCTION_35_3();
                                if (!(_NF ^ _VF | _ZF))
                                {
                                  if (objc_msgSend_isEqualToString_(v1691))
                                  {
                                    v1708 = FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(v226);
                                    v938 = v937;
                                    v939 = CVPixelBufferGetWidth(v224);
                                    CVPixelBufferGetHeight(v224);
                                    v936 = v936 - FigCaptureMetadataUtilitiesDenormalizePoint(v1708, v938, v939);
                                  }
                                }
                              }

                              *&v1174 = v619;
                              v1485 = v1174;
                              OUTLINED_FUNCTION_55_2();
                              v1473 = v1175;
                              OUTLINED_FUNCTION_3();
                              OUTLINED_FUNCTION_87();
                              [(BWPreviewStitcherNode *)v1176 _transferPixelBuffer:v1177 rect:v1178 intoPixelBuffer:v1179 rect:v1180 isFinalOutput:v1181 withInputShift:v1182 scale:v1183 inputSourceRectOut:*&v936, v1473, v1485];
                              OUTLINED_FUNCTION_2_3();
                              OUTLINED_FUNCTION_82_0();
                              if (!OUTLINED_FUNCTION_17_6(v1192, v1193, v1194, v1184, v1185, v1186, v1187, v1188, v1189, v1190, v1191, v1464, v1474, v1486, v1488, v1493, v1498, v1503, v1509, v1515, v1522, v1525, v1529, v1534, v1539, v1545, v1548, v1554, v1557, v1561[0], v1561[1], v1566, v1569, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1584))
                              {
                                v1195 = OUTLINED_FUNCTION_3();
                                OUTLINED_FUNCTION_133_1(v1195, v1196, v1197, v1198, v1745, v1755);
                                OUTLINED_FUNCTION_2_3();
                              }

                              v634 = v1712;
                              OUTLINED_FUNCTION_20_4();
                              v1771 = *&propertyValueOut[0].a;
                              *v1772 = *&propertyValueOut[0].c;
                              rect2d = v622;
                              v1761 = v935;
                              v1755 = v621;
                              v1745 = v623;
                              OUTLINED_FUNCTION_49_2();
                              *&v211 = v1711;
LABEL_718:
                              OUTLINED_FUNCTION_18_7();
                              v1654 = *&v623;
                              if (_ZF && (OUTLINED_FUNCTION_18_7(), _ZF) && ([objc_msgSend(*(v16 + 35) "firstObject")], v634 >= v1199) && v634 < *(v16 + 57))
                              {
                                v1200 = v1690;
                                if ((v517 & 1) == 0)
                                {
                                  [(BWPreviewStitcherNode *)v16 _initCameraTransitionCIContextWithColorManagementEnabled:?];
                                  psn_blurPixelBufferBorder(*(v16 + 123), v18, v1745, v1755, v1761, rect2d, *(v16 + 415));
                                  v1906.origin.x = v621;
                                  v1713 = v1201;
                                  v1203 = v1202;
                                  v1205 = v1204;
                                  v1870.origin.x = v1745;
                                  v1870.origin.y = v1755;
                                  v1870.size.width = v1761;
                                  v1870.size.height = rect2d;
                                  v1906.origin.y = v1690;
                                  v1206 = v1906.origin.x;
                                  v1906.size.width = dicta;
                                  *&v1906.size.height = v1667;
                                  if (CGRectEqualToRect(v1870, v1906))
                                  {
                                    rect2d = v1205;
                                    v1761 = v1203;
                                    OUTLINED_FUNCTION_72_0(*&v1713);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_39_3();
                                    v1909.origin.x = v1745;
                                    v1909.origin.y = v1755;
                                    v1909.size.width = v1761;
                                    v1909.size.height = rect2d;
                                    v1883 = CGRectUnion(v1882, v1909);
                                    OUTLINED_FUNCTION_6_20(v1883.origin.x, v1883.origin.y, v1883.size.width, v1883.size.height);
                                  }

                                  v621 = v1206;
                                  v1200 = v1690;
                                  *&v211 = v1711;
                                }
                              }

                              else
                              {
                                v1200 = v1690;
                              }

                              v1207 = *(v16 + 160);
                              if (v1207 && (v1208 = *(v16 + 1288), (IOSurface = CVPixelBufferGetIOSurface(v18)) != 0))
                              {
                                ID = IOSurfaceGetID(IOSurface);
                                *&propertyValueOut[0].a = v1610;
                                *&propertyValueOut[0].c = *v1608;
                                if ((v1208 & 1) == 0)
                                {
                                  [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID];
                                  v1211 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
                                  CGRectMakeWithDictionaryRepresentation(v1211, propertyValueOut);
                                }

                                v1871.origin.x = OUTLINED_FUNCTION_24_4();
                                v1907.origin.x = v621;
                                v1907.origin.y = v1200;
                                v1907.size.width = dicta;
                                *&v1907.size.height = v1667;
                                if (CGRectEqualToRect(v1871, v1907) || (v1872.origin.x = OUTLINED_FUNCTION_52_3(), v1872.size.height = rect2d, !CGRectContainsRect(v1872, v1908)))
                                {
                                  OUTLINED_FUNCTION_52_3();
                                  VTFillPixelBufferBorderWithBlack();
                                }

                                v1873.origin.x = OUTLINED_FUNCTION_52_3();
                                v1873.size.height = rect2d;
                                v1212 = CGRectCreateDictionaryRepresentation(v1873);
                                [v1207 setObject:CFAutorelease(v1212) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", ID)}];
                                v224 = v1762;
                              }

                              else
                              {
                                VTFillPixelBufferBorderWithBlack();
                              }

                              if (v221)
                              {
                                v1213 = a2;
                              }

                              else
                              {
                                v1213 = cameraCopy2;
                              }

                              v1135 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v1213, v18, v16 + 51, &v1776);
                              if (!v1135)
                              {
                                if (v221)
                                {
                                  v1214 = pixelBuffer;
                                }

                                else
                                {
                                  v1214 = v224;
                                }

                                v1215 = OUTLINED_FUNCTION_71_0(v1214);
                                OUTLINED_FUNCTION_129_0(v1215);
                                [(BWPreviewStitcherNode *)v16 _scaleFactorAppliedForPixelBuffer:v1741 usedSourceRect:v623 primaryCaptureRectAspectRatio:b metadata:v622, d, *&v211];
                                v1216 = OUTLINED_FUNCTION_0_29();
                                [(BWPreviewStitcherNode *)v16 _scaleFactorAppliedForPixelBuffer:v224 usedSourceRect:v1763 primaryCaptureRectAspectRatio:v1216 metadata:v1217, v1218, v1219, *&v211];
                                v1220 = *off_1E798B508;
                                [objc_msgSend(v1763 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
                                [objc_msgSend(v1741 objectForKeyedSubscript:{v1220), "floatValue"}];
                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  OUTLINED_FUNCTION_18_7();
                                  if (_ZF && (OUTLINED_FUNCTION_18_7(), _ZF) && ([*(v16 + 119) isRamping] & 1) == 0)
                                  {
                                    OUTLINED_FUNCTION_18_7();
                                    if (_ZF)
                                    {
                                      v1223 = [*(v16 + 192) isRamping] ^ 1;
                                    }

                                    else
                                    {
                                      v1223 = 1;
                                    }
                                  }

                                  else
                                  {
                                    v1223 = 0;
                                  }
                                }

                                else
                                {
                                  v1223 = 0;
                                }

                                [BWPreviewStitcherNode _callDelegateWithAppliedWiderCameraShift:v16 narrowerCameraShift:pixelBuffer widerCameraScaleFactor:v224 narrowerCameraScaleFactor:v1630 widerCameraPixelBuffer:v1691 narrowerCameraPixelBuffer:v1223 widerCameraNondisruptiveSwitchingZoomFactor:v1221 narrowerCameraNondisruptiveSwitchingZoomFactor:v1222 widerCameraPortType:v1647 narrowerCameraPortType:v1646 inSuperWideMacroMode:? widerCameraShiftAtBaseZoom:?];
                                OUTLINED_FUNCTION_71_0(v1776);
                                if (*&v1723 <= 1.0 && (v1874.origin.x = OUTLINED_FUNCTION_13_11(), CGRectIsNull(v1874)))
                                {
                                  [OUTLINED_FUNCTION_69() setObject:? forKeyedSubscript:?];
                                  v1224 = v1715;
                                }

                                else
                                {
                                  v1875.origin.x = OUTLINED_FUNCTION_13_11();
                                  if (CGRectIsNull(v1875))
                                  {
                                    v1225 = OUTLINED_FUNCTION_126();
                                    v1228 = FigCaptureMetadataUtilitiesScaleRect2D(v1225, v1226, v1686, v1715, v1227);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_77_1();
                                    OUTLINED_FUNCTION_2_29(v16 + 416);
                                    CGAffineTransformInvert(propertyValueOut, &time);
                                    OUTLINED_FUNCTION_10_13();
                                    v1876.origin.x = OUTLINED_FUNCTION_126();
                                    v1876.size.width = v1686;
                                    v1876.size.height = v1715;
                                    CGRectApplyAffineTransform(v1876, v1230);
                                    OUTLINED_FUNCTION_8_3();
                                    v1231 = OUTLINED_FUNCTION_13_11();
                                    v1877.origin.x = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1231, v1232, v1233, v1234, v1235, v1236, v1237);
                                    v1238 = *(v16 + 27);
                                    *&time.a = *(v16 + 26);
                                    *&time.c = v1238;
                                    *&time.tx = *(v16 + 28);
                                    *&v1228 = CGRectApplyAffineTransform(v1877, &time);
                                  }

                                  OUTLINED_FUNCTION_90(v1228, v1229);
                                  psn_pixelBufferRect(v18);
                                  OUTLINED_FUNCTION_26_2();
                                  v1243 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v1239, v1240, v1241, v1242, v1727, v1725, v1686);
                                  FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1243, v1244, v1245, v1246, *&v1763, *&v1762, *&v1644);
                                  OUTLINED_FUNCTION_48();
                                  FigCaptureMetadataUtilitiesRectNormalizedToRect(v1247, v1248, v1249, v1250, v1251, v1252, v1253);
                                  FigCFDictionarySetCGRect();
                                  *&v211 = v1711;
                                  v1224 = *&v1723;
                                }

                                v1878.origin.x = v1745;
                                v1878.origin.y = v1755;
                                v1878.size.width = v1761;
                                v1878.size.height = rect2d;
                                if (!CGRectIsEmpty(v1878))
                                {
                                  v1254 = CVPixelBufferGetWidth(v18);
                                  CVPixelBufferGetHeight(v18);
                                  OUTLINED_FUNCTION_55_2();
                                  OUTLINED_FUNCTION_37_5();
                                  v1255 = v1254;
                                  v1224 = v1715;
                                  v1879.origin.x = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v1256, v1257, v1258, v1259, v1260, v1261, v1255, v1262);
                                  v1263 = CGRectCreateDictionaryRepresentation(v1879);
                                  CMSetAttachment(v1776, @"OverCaptureStitchedValidBufferRect", v1263, 1u);
                                  if (v1263)
                                  {
                                    CFRelease(v1263);
                                  }
                                }

                                if (value)
                                {
                                  CMSetAttachment(v1776, @"CAContextFencePortSendRight", value, 1u);
                                }

                                if (fencePortGenerationCount >= 1)
                                {
                                  [MEMORY[0x1E696AD98] numberWithLongLong:fencePortGenerationCount];
                                  v1264 = OUTLINED_FUNCTION_4();
                                  CMSetAttachment(v1264, @"CAContextFencePortGenerationID", v1265, 1u);
                                }

                                if (*&v211 != *(v16 + 222))
                                {
                                  *(v16 + 222) = LODWORD(v211);
                                }

                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  propertyValueOut[0].a = 0.0;
                                  VTSessionCopyProperty(*(v16 + 50), *MEMORY[0x1E6983D88], *MEMORY[0x1E695E480], propertyValueOut);
                                  v1266 = [*&propertyValueOut[0].a copy];
                                  CMSetAttachment(v1776, *off_1E798A520, v1266, 1u);
                                }

                                if (pixelBuffer)
                                {
                                  [MEMORY[0x1E696AD98] numberWithBool:1];
                                  v1267 = OUTLINED_FUNCTION_4();
                                  CMSetAttachment(v1267, @"IsOverCaptureFrame", v1268, 1u);
                                }

                                if (*(v16 + 34))
                                {
                                  OUTLINED_FUNCTION_129_0([MEMORY[0x1E696AD98] numberWithInt:?]);
                                }

                                if (*(v16 + 140))
                                {
                                  v1269 = kBWNodeBufferAttachmentKey_MirroredHorizontal;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_18_7();
                                  if (!_ZF)
                                  {
                                    goto LABEL_780;
                                  }

                                  v1269 = kBWNodeBufferAttachmentKey_MirroredVertical;
                                }

                                CMSetAttachment(v18, *v1269, MEMORY[0x1E695E118], 1u);
LABEL_780:
                                [(BWPreviewStitcherNode *)v16 _updateUprightExifOrientationOnSampleBufferIfNeeded:v1776];
                                OUTLINED_FUNCTION_77_1();
                                OUTLINED_FUNCTION_2_29(v16 + 416);
                                CGAffineTransformInvert(propertyValueOut, &time);
                                OUTLINED_FUNCTION_10_13();
                                v1880.origin.x = v1727;
                                v1880.origin.y = v1725;
                                v1880.size.width = v1686;
                                v1880.size.height = v1224;
                                CGRectApplyAffineTransform(v1880, v1270);
                                OUTLINED_FUNCTION_2_3();
                                OUTLINED_FUNCTION_10_13();
                                v1881.origin.x = v1745;
                                v1881.origin.y = v1755;
                                v1881.size.width = v1761;
                                v1881.size.height = rect2d;
                                CGRectApplyAffineTransform(v1881, v1271);
                                OUTLINED_FUNCTION_8_3();
                                v1272 = OUTLINED_FUNCTION_3();
                                v1279 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v1272, v1273, v1274, v1275, v1276, v1277, v1278);
                                if (v221)
                                {
                                  FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1279, v1280, v1281, v1282, *&v1654, b, v622);
                                  OUTLINED_FUNCTION_2_3();
                                }

                                else
                                {
                                  if (v517)
                                  {
                                    OUTLINED_FUNCTION_25_3();
                                    FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1283, v1284, v1285, v1286, v1287, v1288, v1289);
                                    OUTLINED_FUNCTION_2_3();
                                  }

                                  pixelBuffer = v224;
                                }

                                if (croppingOutCopy)
                                {
                                  v1290 = CVPixelBufferGetWidth(pixelBuffer);
                                  CVPixelBufferGetHeight(pixelBuffer);
                                  v1291 = OUTLINED_FUNCTION_3();
                                  FigCaptureMetadataUtilitiesNormalizeCropRect(v1291, v1292, v1293, v1294, v1290, v1295);
                                  *croppingOutCopy = v1296;
                                  croppingOutCopy[1] = v1297;
                                  croppingOutCopy[2] = v1298;
                                  croppingOutCopy[3] = v1299;
                                }

                                LOBYTE(time.a) = 0;
                                ptn_rotationDegreesAndMirroringFromLiveConfiguration(*(v16 + 34), *(v16 + 140), *(v16 + 141), &time);
                                OUTLINED_FUNCTION_3();
                                OUTLINED_FUNCTION_105();
                                BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(v1300, v1301, v1302, v1303, v1304, v1305, v1306, v1307, v1308, v1309, v1310, v1715);
                                v1311 = OUTLINED_FUNCTION_3();
                                FigCaptureMetadataUtilitiesScaleRect2D(v1311, v1312, v1313, v1314, v1315);
                                OUTLINED_FUNCTION_2_3();
                                CVPixelBufferGetWidth(v224);
                                CVPixelBufferGetHeight(v224);
                                OUTLINED_FUNCTION_3();
                                OUTLINED_FUNCTION_105();
                                BWUpdateTrackedFacesMetadataOnSampleBuffer(v1316, v1317, v1318, v1319, v1320, v1321, v1322, v1323, v1324, v1325, v1326, v1715);
                                if (outCopy)
                                {
                                  *outCopy = v1660;
                                  outCopy[1] = v1659;
                                }

                                OUTLINED_FUNCTION_18_7();
                                v955 = v1708;
                                if (_ZF && v1776)
                                {
                                  v1327 = CVBufferCopyAttachment(v18, *MEMORY[0x1E6965D88], 0);
                                  if (v1327)
                                  {
                                    v1328 = CFAutorelease(v1327);
                                  }

                                  else
                                  {
                                    v1328 = 0;
                                  }

                                  v1329 = CVBufferCopyAttachment(v18, *MEMORY[0x1E6965F30], 0);
                                  if (v1329)
                                  {
                                    v1329 = CFAutorelease(v1329);
                                  }

                                  if ((objc_msgSend_isEqualToString_(v1329) & 1) == 0 && ((objc_msgSend_isEqualToString_(v1328) & 1) != 0 || objc_msgSend_isEqualToString_(v1328)))
                                  {
                                    *lhs = 0;
                                    LOBYTE(rhs.value) = 0;
                                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                    v1331 = *lhs;
                                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
                                    {
                                      v1332 = v1331;
                                    }

                                    else
                                    {
                                      v1332 = v1331 & 0xFFFFFFFE;
                                    }

                                    if (v1332)
                                    {
                                      LODWORD(time.a) = 136315138;
                                      *(&time.a + 4) = "[BWPreviewStitcherNode _newStitchedSampleBufferFromWiderCamera:narrowerCamera:widerCameraRegionsShifts:teleShift:primaryCaptureRectOut:primaryCaptureRectBeforeCroppingOut:centerWiderCameraShiftOut:currentFrameRate:inputCropRectOut:]";
                                      _os_log_send_and_compose_impl();
                                    }

                                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                                    if (v1776)
                                    {
                                      CFRelease(v1776);
                                      v1776 = 0;
                                    }
                                  }
                                }

                                goto LABEL_808;
                              }

                              goto LABEL_910;
                            }

                            OUTLINED_FUNCTION_18_7();
                            if (_ZF && (*(v16 + 1000) & 1) != 0)
                            {
                              v841 = 1;
                            }

                            else
                            {
                              v841 = 0;
                              v1589 = v1769.origin.x;
                              v1592 = v1769.origin.y;
                              v1596 = *&v1769.size.height;
                              v1603 = *&v1769.size.width;
                            }

                            v842.n128_f64[0] = OUTLINED_FUNCTION_0_29();
                            v849 = OUTLINED_FUNCTION_134(v842, v843, v844, v845, v846, v847);
                            v851 = v850;
                            v853 = v852;
                            if (!LODWORD(v1708))
                            {
                              v854 = OUTLINED_FUNCTION_22_3();
                              v849 = acpr_conformRectForMSR420vf(v854, v855, v856, v857);
                              v851 = v858;
                              v853 = v859;
                            }

                            v1699 = v848;
                            *&v1570 = v619;
                            OUTLINED_FUNCTION_18_7();
                            v860 = !_ZF || v468 <= 1.0;
                            v861 = 0;
                            if (!v860)
                            {
                              v621 = OUTLINED_FUNCTION_57_3();
                              v398 = v862;
                              v864 = v863;
                              v866 = v865;
                              v867 = OUTLINED_FUNCTION_0_29();
                              v1850.origin.x = FigCaptureMetadataUtilitiesRectNormalizedToRect(v867, v868, v869, v870, v849, v851, v853);
                              v1898.origin.x = v621;
                              v1898.origin.y = v398;
                              v1898.size.width = v864;
                              v1898.size.height = v866;
                              v871 = CGRectContainsRect(v1850, v1898);
                              if (!v871 || (OUTLINED_FUNCTION_25_3(), !CGRectContainsRect(v1851, v1899)))
                              {
                                v861 = 1;
                              }
                            }

                            OUTLINED_FUNCTION_77_1();
                            OUTLINED_FUNCTION_2_29(v16 + 416);
                            CGAffineTransformInvert(propertyValueOut, &time);
                            OUTLINED_FUNCTION_10_13();
                            v1852.origin.x = OUTLINED_FUNCTION_126();
                            v1852.size.width = v1686;
                            v1852.size.height = v1715;
                            CGRectApplyAffineTransform(v1852, v872);
                            OUTLINED_FUNCTION_118();
                            v878.n128_u64[0] = *&v1769.origin.x;
                            if (v861)
                            {
                              v873.n128_u64[0] = *&v1769.origin.y;
                              v874.n128_u64[0] = *&v1769.size.width;
                              v875.n128_u64[0] = *&v1769.size.height;
                              v879 = OUTLINED_FUNCTION_134(v878, v873, v874, v875, v876, v877);
                              *&r2 = acpr_conformRectForMSR420vf(v879, v880, v881, v882);
                              v1542 = v883;
                              v1697 = v884;
                              *&r2_16 = v885;
                              v886.n128_f64[0] = v1589;
                              v887.n128_f64[0] = v1592;
                              v889.n128_u64[0] = v1596;
                              v888.n128_u64[0] = v1603;
                              v892 = OUTLINED_FUNCTION_134(v886, v887, v888, v889, v890, v891);
                              v1589 = acpr_conformRectForMSR420vf(v892, v893, v894, v895);
                              v1592 = v896;
                              v1596 = v898;
                              v1603 = v897;
                              v899.n128_f64[0] = OUTLINED_FUNCTION_109();
                              v905 = OUTLINED_FUNCTION_134(v899, v900, v901, v902, v903, v904);
                              acpr_conformRectForMSR420vf(v905, v906, v907, v908);
                              OUTLINED_FUNCTION_118();
                            }

                            else
                            {
                              *&r2 = v1769.origin.x;
                              v1542 = v1769.origin.y;
                              v1697 = v1769.size.width;
                              *&r2_16 = v1769.size.height;
                              v849 = v1771.f64[0];
                              v853 = *v1772;
                              v1699 = *&v1772[1];
                            }

                            v909 = (*(v16 + 331) & 1) != 0 || *(v16 + 128) || *(v16 + 126) != 0;
                            if (*(v16 + 119))
                            {
                              if (pixelBuffer)
                              {
                                goto LABEL_627;
                              }
                            }

                            else
                            {
                              if (pixelBuffer)
                              {
                                v910 = v909;
                              }

                              else
                              {
                                v910 = 0;
                              }

                              if (*(v16 + 1150) && v910)
                              {
LABEL_627:
                                v940 = v909 & *(v16 + 1150);
                                if (*(v16 + 1000))
                                {
                                  v941 = v940;
                                }

                                else
                                {
                                  v941 = *(v16 + 1150);
                                }

                                v942 = OUTLINED_FUNCTION_109();
                                v1857.origin.x = psn_smallestBoundingRectAlignedToMultipleOf(1, 1, v942, v943, v944, v945);
                                *&v1901.origin.x = r2;
                                v1901.origin.y = v1542;
                                v1901.size.width = v1697;
                                *&v1901.size.height = r2_16;
                                v1858 = CGRectUnion(v1857, v1901);
                                v946 = v1858.size.width;
                                v947 = v1858.size.height;
                                v1635 = *&v1584;
                                v1618 = v1690;
                                v948 = *&v1603;
                                v1662 = *&v1596;
                                LODWORD(v1576) = v941;
                                if (v941 == 1)
                                {
                                  v1635 = *&r2 - v1858.origin.x;
                                  v1618 = v1542 - v1858.origin.y;
                                  v948 = v1858.size.width;
                                  v1662 = v1858.size.height;
                                }

                                v1559 = v1858.origin.y;
                                v1550 = v1858.origin.x;
                                [(BWPreviewStitcherNode *)v16 _waitForCIPreheatingToFinish];
                                *&v620 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);
                                newPixelBuffer = [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                                v226 = newPixelBuffer;
                                v1708 = *&v620;
                                if (*&v620 == 0.0)
                                {
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_1_35();
                                  LODWORD(v1455) = 0;
                                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455, v1465, v1476, v1488, v1493, v1498, v1503, v1509);
                                  v955 = 0.0;
                                  v18 = v1650;
                                  goto LABEL_808;
                                }

                                if (newPixelBuffer)
                                {
                                  v1532 = *&v947;
                                  v1537 = v946;
                                  v1739 = v948;
                                  OUTLINED_FUNCTION_101();
                                  OUTLINED_FUNCTION_22_3();
                                  v950 = v1697;
                                  v951 = *&r2_16;
                                  v952 = VTPixelRotationSessionRotateSubImage();
                                  *&v620 = COERCE_DOUBLE(&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled);
                                  if (!v952)
                                  {
                                    v1859.origin.x = v1589;
                                    v1859.origin.y = v1592;
                                    *&v1859.size.height = v1596;
                                    *&v1859.size.width = v1603;
                                    *&v1902.origin.x = r2;
                                    v1902.origin.y = v1542;
                                    v1902.size.width = v1697;
                                    *&v1902.size.height = r2_16;
                                    if (CGRectEqualToRect(v1859, v1902) || (v1860.origin.x = v1589, v1860.origin.y = v1592, *&v1860.size.height = v1596, *&v1860.size.width = v1603, *&v1903.origin.x = r2, v1903.origin.y = v1542, v1903.size.width = v1697, *&v1903.size.height = r2_16, !CGRectContainsRect(v1860, v1903)))
                                    {
                                      v953 = v1660 - *v1561;
                                      v954 = v1659 - *&v1554;
                                    }

                                    else
                                    {
                                      v1648 = v1542 - v1592;
                                      v1649 = *&r2 - v1589;
                                      v953 = v1660;
                                      v954 = v1659;
                                    }

                                    v990 = *&v1570 * (*&v1586 / v1645);
                                    psn_pixelBufferRect(pixelBuffer);
                                    v991 = OUTLINED_FUNCTION_54_3();
                                    v1000 = psn_widerCameraBoundingRect(v991, v992, v993, v994, v995, v996, v997, v998, v999);
                                    OUTLINED_FUNCTION_42_3(v1000, v1001, v1002, v1003);
                                    if (v1576)
                                    {
                                      v1862.origin.x = v1589;
                                      v1862.origin.y = v1592;
                                      v1704 = *&v1570 * (*&v1586 / v1645);
                                      *&v1862.size.width = v1603;
                                      *&v1862.size.height = v1596;
                                      MidX = CGRectGetMidX(v1862);
                                      v1863.origin.x = v1550;
                                      v1863.origin.y = v1559;
                                      v1863.size.width = v1537;
                                      v1863.size.height = v947;
                                      v1008 = MidX - CGRectGetMidX(v1863);
                                      v1009 = v990;
                                      *&r2 = v1008 / v990;
                                      v950 = v1697;
                                      v951 = *&r2_16;
                                      OUTLINED_FUNCTION_92_0();
                                      v1010 = CGRectGetMidY(v1864);
                                      v1865.origin.x = v1550;
                                      v1865.origin.y = v1559;
                                      v1865.size.width = v1537;
                                      v1865.size.height = v947;
                                      v1011 = v1010 - CGRectGetMidY(v1865);
                                      v990 = v1704;
                                      v953 = v953 + *&r2;
                                      v954 = v954 + v1011 / v1009;
                                    }

                                    v1012 = v1739;
                                    [(BWPreviewStitcherNode *)v16 _transferPixelBuffer:v226 rect:0 intoPixelBuffer:&time rect:v1004 isFinalOutput:v1005 withInputShift:v1006 scale:*&v953 inputSourceRectOut:*&v954, SLODWORD(v990)];
                                    if (v1576)
                                    {
                                      OUTLINED_FUNCTION_76_0();
                                      v1662 = v1013;
                                    }

                                    a = time.a;
                                    if (v861)
                                    {
                                      OUTLINED_FUNCTION_75_0();
                                      a = FigCaptureMetadataUtilitiesScaleRect2D(a, v1015, v1016, v1017, *&v1723);
                                      b = v1018;
                                      c = v1019;
                                      d = v1020;
                                    }

                                    else
                                    {
                                      b = time.b;
                                      c = time.c;
                                      d = time.d;
                                    }

                                    v1021 = *(v16 + 226);
                                    v224 = v1762;
                                    if (v1021)
                                    {

                                      *(v16 + 226) = 0;
                                      v1022 = *(v16 + 223);
                                      if (v1022)
                                      {
                                        CFRelease(v1022);
                                        *(v16 + 223) = 0;
                                      }
                                    }

                                    if (*(v16 + 119) || (OUTLINED_FUNCTION_18_7(), _ZF))
                                    {

                                      *(v16 + 128) = 0;
                                    }

                                    if (!v1576)
                                    {
                                      goto LABEL_839;
                                    }

                                    v1023 = *(v16 + 126);
                                    *&v620 = COERCE_DOUBLE(&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled);
                                    if (v1023)
                                    {
                                      if (*(v16 + 1016) != isEqualToString)
                                      {
LABEL_674:

                                        *(v16 + 126) = 0;
                                        goto LABEL_833;
                                      }

                                      if (([OUTLINED_FUNCTION_70_0() isRamping] & 1) != 0 && (objc_msgSend(OUTLINED_FUNCTION_70_0(), "isRampingUp") & 1) == 0)
                                      {
                                        v1023 = *(v16 + 126);
                                        goto LABEL_674;
                                      }
                                    }

LABEL_833:
                                    if (!*(v16 + 126))
                                    {
                                      if ([*(v16 + 119) isRampingUp])
                                      {
                                        OUTLINED_FUNCTION_18_7();
                                        if (_ZF)
                                        {
                                          v1352 = v950 / v1012;
                                          if (*(v16 + 293) < v1352)
                                          {
                                            v1353 = [[BWRamp alloc] initWithName:@"NarrowerCameraEdgeExpansionRamp"];
                                            *(v16 + 126) = v1353;
                                            LODWORD(v1354) = 1.0;
                                            [(BWRamp *)v1353 startRampFrom:*(v16 + 294) to:0 iterations:0.0 shape:v1354];
                                            *(v16 + 1016) = isEqualToString;
                                          }
                                        }
                                      }
                                    }

LABEL_839:
                                    *&v1655 = a;
                                    [OUTLINED_FUNCTION_70_0() updateRampForNextIteration];
                                    v1355 = OUTLINED_FUNCTION_70_0();
                                    if (v1355)
                                    {
                                      isRampingUp = [v1355 isRampingUp];
                                      [OUTLINED_FUNCTION_70_0() currentValue];
                                      if (isRampingUp)
                                      {
                                        v1356 = v1358;
                                      }

                                      else
                                      {
                                        v1356 = 1.0 - v1358;
                                      }
                                    }

                                    else
                                    {
                                      v1356 = 1.0;
                                      if (v1576 && ((*(v16 + 331) & 1) != 0 || *(v16 + 128)))
                                      {
                                        OUTLINED_FUNCTION_117();
                                        [objc_msgSend(*(v16 + v1359) "firstObject")];
                                        isRampingUp = 0;
                                        v1361 = v1712;
                                        if (v1360 < v1712)
                                        {
                                          v1361 = v1360;
                                        }

                                        if (v1361 < *(&v1576 + 1))
                                        {
                                          v1361 = *(&v1576 + 1);
                                        }

                                        v1356 = 1.0 - (((v1361 - *(&v1576 + 1)) / (v1360 - *(&v1576 + 1))) + 0.0);
                                      }

                                      else
                                      {
                                        isRampingUp = 1;
                                      }
                                    }

                                    [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                                    OUTLINED_FUNCTION_130();
                                    *(v16 + *(v1576 + 0x6F4)) = 0;
                                    v1521 = *(v16 + 1185);
                                    v1519 = *(v16 + 258);
                                    v1507 = *(v16 + 126);
                                    v1513 = *(v16 + 128);
                                    v1362 = OUTLINED_FUNCTION_36_4();
                                    [(BWPreviewStitcherNode *)v1363 _renderCameraTransitionRampToPixelBuffer:v1364 bounds:v226 withWiderCameraPixelBuffer:*&v1708 narrowerCameraPixelBuffer:isRampingUp zoomingIn:v1365 progress:v1366 narrowerCameraBounds:v1576 narrowerCameraShift:v1362 featherEdges:v1367 rampCameraTransition:v1012 renderEnhancedFeathering:v1662 narrowerCameraEdgeExpansionRamp:v1356 qsubToQsumEdgeOpacityRamp:v1368 qsubToQsumEdgeOpacityRampFromProgress:v1369 renderBrightnessCompensation:v1370, v1635, v1618, v950, v951, v1649, v1648, v1507, v1513, v1519, v1521];
                                    *(v16 + 1064) = 1;
                                    v1371 = OUTLINED_FUNCTION_70_0();
                                    if (v1371)
                                    {
                                      if (([v1371 isRamping] & 1) == 0)
                                      {
                                        [*(v16 + 119) currentValue];
                                        OUTLINED_FUNCTION_35_3();
                                        if (_ZF)
                                        {
                                          if (!v841 || ![*(v16 + 192) isRamping] || (OUTLINED_FUNCTION_18_7(), _ZF))
                                          {

                                            *(v16 + 119) = 0;
                                            *(v16 + 1000) = 0;
                                          }
                                        }
                                      }
                                    }

                                    v1372 = *(v16 + 126);
                                    v18 = v1650;
                                    if (v1372)
                                    {
                                      if ([v1372 isRamping])
                                      {
                                        [*(v16 + 126) updateRampForNextIteration];
                                      }

                                      else if (!*(v16 + 119))
                                      {

                                        *(v16 + 126) = 0;
                                      }
                                    }

                                    v1373 = *(v16 + 128);
                                    if (v1373)
                                    {
                                      isRamping = [v1373 isRamping];
                                      v1375 = *(v16 + 128);
                                      if (isRamping)
                                      {
                                        [v1375 updateRampForNextIteration];
                                      }

                                      else
                                      {

                                        *(v16 + 128) = 0;
                                      }
                                    }

                                    OUTLINED_FUNCTION_18_7();
                                    if (_ZF)
                                    {
                                      OUTLINED_FUNCTION_18_7();
                                      if (_ZF)
                                      {
                                        v1376 = [[BWRamp alloc] initWithName:@"QsubToQsumEdgeOpacityRamp"];
                                        *(v16 + 128) = v1376;
                                        LODWORD(v1377) = 1.0;
                                        [(BWRamp *)v1376 startRampFrom:*(v16 + 295) to:2 iterations:0.0 shape:v1377];
                                        *(v16 + 258) = v1356;
                                        [*(v16 + 128) updateRampForNextIteration];
                                      }
                                    }

                                    OUTLINED_FUNCTION_2_29(v16 + 416);
                                    if (v1576)
                                    {
                                      v1378 = v1550;
                                      v1379 = v1559;
                                      v1381 = v1532;
                                      v1380 = v1537;
                                    }

                                    else
                                    {
                                      v1378 = v1589;
                                      v1379 = v1592;
                                      v1381 = v1596;
                                      v1380 = *&v1603;
                                    }

                                    v1884 = CGRectApplyAffineTransform(*&v1378, &time);
                                    v1382 = v1884.size.width;
                                    v1383 = v1884.size.height;
                                    LODWORD(v221) = v1692;
                                    OUTLINED_FUNCTION_36_4();
                                    v1720 = v1384;
                                    v1386 = v1385;
                                    v1135 = VTPixelRotationSessionRotateSubImage();
                                    if (v1135)
                                    {
LABEL_910:
                                      v1449 = v1135;
                                      fig_log_get_emitter();
                                      OUTLINED_FUNCTION_1_35();
                                      LODWORD(v1455) = v1449;
                                      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455);
LABEL_911:
                                      v955 = v1708;
                                      goto LABEL_808;
                                    }

                                    OUTLINED_FUNCTION_43_3();
                                    OUTLINED_FUNCTION_82_0();
                                    v622 = c;
                                    if (OUTLINED_FUNCTION_17_6(v1395, v1396, v1397, v1387, v1388, v1389, v1390, v1391, v1392, v1393, v1394, v1455, v1475, v1487, v1492, v1497, v1502, v1508, v1514, v1520, v1522, v1525, v1532, *&v1537, *&v1542, v1545, *&v1550, v1554, *&v1559, v1561[0], v1561[1], v1566, v1570, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1584))
                                    {
                                      rect2d = v1383;
                                      v1761 = v1382;
                                      v1755 = v1386;
                                      v1745 = *&v1720;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_40_4();
                                      v1404 = OUTLINED_FUNCTION_133_1(v1398, v1399, v1400, v1401, v1402, v1403);
                                      OUTLINED_FUNCTION_6_20(v1404, v1405, v1406, v1407);
                                    }

                                    v933 = &unk_1F224A7D0;
                                    v634 = v1712;
                                    v623 = *&v1655;
                                    goto LABEL_883;
                                  }

                                  v1451 = v952;
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_1_35();
                                  LODWORD(v1455) = v1451;
                                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455);
                                }

                                else
                                {
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_1_35();
                                  LODWORD(v1455) = 0;
                                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455);
                                }

                                *&v620 = 0.0;
                                v18 = v1650;
                                goto LABEL_911;
                              }
                            }

                            if (*(v16 + 226))
                            {
                              [(BWPreviewStitcherNode *)v16 _waitForCIPreheatingToFinish];
                              v955 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);
                              newPixelBuffer2 = [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                              v226 = newPixelBuffer2;
                              v18 = v1650;
                              if (v955 == 0.0 || !newPixelBuffer2)
                              {
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                LODWORD(v1455) = 0;
                                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_101();
                                OUTLINED_FUNCTION_22_3();
                                v957 = VTPixelRotationSessionRotateSubImage();
                                if (!v957)
                                {
                                  v1708 = v955;
                                  *lhs = 0;
                                  BWCMSampleBufferCreateCopyIncludingMetadata(*(v16 + 223), lhs);
                                  rhs.value = 0;
                                  cf = 0;
                                  BWOverCaptureSampleBufferUnpackAndRetain(*lhs, 1, &rhs, &cf, 0, 0);
                                  if (*lhs)
                                  {
                                    CFRelease(*lhs);
                                  }

                                  v958 = cf;
                                  [CMGetAttachment(rhs.value v1613];
                                  v959 = OUTLINED_FUNCTION_8();
                                  v1663 = v960;
                                  if ([v959 isEqual:?])
                                  {
                                    v961 = rhs.value;
                                  }

                                  else
                                  {
                                    v961 = v958;
                                  }

                                  v962 = CMSampleBufferGetImageBuffer(v961);
                                  v963 = *off_1E798B7B0;
                                  v964 = [v1763 objectForKeyedSubscript:*off_1E798B7B0];
                                  if (v964)
                                  {
                                    [v964 floatValue];
                                  }

                                  v1039 = *off_1E798B508;
                                  v1040 = [v1763 objectForKeyedSubscript:*off_1E798B508];
                                  if (v1040)
                                  {
                                    [v1040 floatValue];
                                  }

                                  *&v620 = COERCE_DOUBLE(CMGetAttachment(v961, v1613, 0));
                                  v1041 = [v620 objectForKeyedSubscript:v963];
                                  if (v1041)
                                  {
                                    [v1041 floatValue];
                                  }

                                  v1042 = [v620 objectForKeyedSubscript:v1039];
                                  v1043 = v1042;
                                  if (v1042)
                                  {
                                    [v1042 floatValue];
                                  }

                                  psn_pixelBufferRect(v1762);
                                  v1044 = OUTLINED_FUNCTION_22_3();
                                  FigCaptureMetadataUtilitiesScaleRect2D(v1044, v1045, v1046, v1699, v1047);
                                  OUTLINED_FUNCTION_21_5();
                                  v1048 = psn_pixelBufferRect(v962);
                                  v1717 = v1049;
                                  v1051 = v1050;
                                  v1053 = v1052;
                                  OUTLINED_FUNCTION_32_2();
                                  FigCaptureMetadataUtilitiesScaleRect2D(v1054, v1055, v1056, v1057, v1058);
                                  v1060 = v1059;
                                  v1061 = v1048 + OUTLINED_FUNCTION_100_0(v1051 - v1059);
                                  v1064 = *&v1717 + (v1053 - v1062) * v1063;
                                  [v1043 floatValue];
                                  OUTLINED_FUNCTION_35_3();
                                  if (_NF ^ _VF | _ZF)
                                  {
                                    v18 = v1650;
                                    v1072 = *&v1584;
                                    v1065 = v1690;
                                    v1066 = *&r2_16;
                                  }

                                  else
                                  {
                                    v18 = v1650;
                                    v1065 = v1690;
                                    v1066 = *&r2_16;
                                    if (objc_msgSend_isEqualToString_(v1663))
                                    {
                                      v1067 = FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(v961);
                                      v1069 = v1068;
                                      v1070 = psn_pixelBufferDimensions(v962);
                                      v1061 = v1061 + FigCaptureMetadataUtilitiesDenormalizePoint(v1067, v1069, v1070);
                                      v1064 = v1064 + v1071;
                                    }

                                    v1072 = *&v1584;
                                  }

                                  v224 = v1762;
                                  if (v1061 < 0.0 || v1064 < 0.0)
                                  {
                                    v1073 = 1.0;
                                    if (v1061 < 0.0)
                                    {
                                      v1073 = (v1060 + v1061 * 2.0) / v1060;
                                    }

                                    v1074 = OUTLINED_FUNCTION_114();
                                    v1061 = FigCaptureMetadataUtilitiesScaleRect2D(v1074, v1075, v1076, v1077, v1073);
                                    v1064 = v1078;
                                    v1060 = v1079;
                                    v1718 = FigCaptureMetadataUtilitiesScaleRect2D(*&v1584, v1065, v1697, v1066, v1073);
                                    v1705 = v1080;
                                    v1700 = v1081;
                                  }

                                  else
                                  {
                                    v1718 = v1072;
                                    v1705 = *&v1065;
                                    v1700 = v1697;
                                  }

                                  memset(&time, 0, 32);
                                  v1082 = psn_pixelBufferRect(v962);
                                  OUTLINED_FUNCTION_42_3(v1082, v1083, v1084, v1085);
                                  CGRectMakeWithDictionaryRepresentation([v620 objectForKeyedSubscript:v1557], &time);
                                  v1086 = OUTLINED_FUNCTION_114();
                                  v1094 = psn_rectBoundedByRect(v1086, v1087, v1088, v1089, v1090, v1091, v1092, v1093);
                                  v1098 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v1094, v1095, v1096, v1097, v1061, v1064, v1060);
                                  FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1098, v1099, v1100, v1101, v1718, *&v1705, v1700);
                                  OUTLINED_FUNCTION_8_3();
                                  OUTLINED_FUNCTION_101();
                                  v1102 = VTPixelRotationSessionRotateSubImage();
                                  if (rhs.value)
                                  {
                                    CFRelease(rhs.value);
                                  }

                                  LODWORD(v221) = v1692;
                                  v621 = *&v1584;
                                  if (cf)
                                  {
                                    CFRelease(cf);
                                  }

                                  if (v1102)
                                  {
                                    fig_log_get_emitter();
                                    OUTLINED_FUNCTION_1_35();
                                    LODWORD(v1455) = v1102;
                                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455, v1465, v1476, v1488, v1493, v1498, v1503, v1509);
                                    *&v620 = 0.0;
                                    goto LABEL_911;
                                  }

                                  [OUTLINED_FUNCTION_59_1() currentValue];
                                  v1104 = v1103;
                                  [OUTLINED_FUNCTION_59_1() updateRampForNextIteration];
                                  if (llroundf(*&v1576) <= 59 && (*(v16 + 1225) & 1) == 0 && v1104 != 1.0)
                                  {
                                    [OUTLINED_FUNCTION_59_1() updateRampForNextIteration];
                                  }

                                  [OUTLINED_FUNCTION_59_1() currentValue];
                                  [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                                  OUTLINED_FUNCTION_130();
                                  *(v16 + *(v1102 + 1780)) = 0;
                                  v623 = v1690;
                                  OUTLINED_FUNCTION_37_5();
                                  OUTLINED_FUNCTION_112_1();
                                  [(BWPreviewStitcherNode *)v1105 _renderCameraTransitionRampToPixelBuffer:v1106 bounds:v1107 withWiderCameraPixelBuffer:v1108 narrowerCameraPixelBuffer:v1109 zoomingIn:v1110 progress:v1111 narrowerCameraBounds:v1112 narrowerCameraShift:v1113 featherEdges:v1114 rampCameraTransition:v1115 renderEnhancedFeathering:v1116 narrowerCameraEdgeExpansionRamp:v1117 qsubToQsumEdgeOpacityRamp:v1118 qsubToQsumEdgeOpacityRampFromProgress:v1119 renderBrightnessCompensation:v1120, *&v1584, v1690, v1697, *&r2_16, v1649, v1648, 0, 0, 0.0, 0];
                                  *(v16 + 1064) = 1;
                                  *&v1121 = OUTLINED_FUNCTION_2_29(v16 + 416).n128_u64[0];
                                  OUTLINED_FUNCTION_74(v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, v1461, v1470, v1482, v1491, v1496, v1501, v1506, v1512, v1518, *&v1522, *&v1525, *&v1529, *&v1534, v1542, *&v1545, *&v1548, *&v1554, *&v1557, *v1561, *&v1561[1], *&v1566, *&v1570, v1573, *&v1576, *&r2);
                                  OUTLINED_FUNCTION_37_5();
                                  CGRectApplyAffineTransform(v1866, v1129);
                                  OUTLINED_FUNCTION_8_3();
                                  OUTLINED_FUNCTION_37_5();
                                  v1719 = v1130;
                                  v1706 = v1131;
                                  v1701 = v1132;
                                  v1134 = v1133;
                                  v1135 = VTPixelRotationSessionRotateSubImage();
                                  if (v1135)
                                  {
                                    goto LABEL_910;
                                  }

                                  v622 = v1745;
                                  OUTLINED_FUNCTION_82_0();
                                  OUTLINED_FUNCTION_40_4();
                                  v1904.size.width = dicta;
                                  *&v1904.size.height = v1667;
                                  if (CGRectEqualToRect(v1867, v1904))
                                  {
                                    rect2d = v1134;
                                    v1761 = v1701;
                                    OUTLINED_FUNCTION_72_0(*&v1706);
                                  }

                                  else
                                  {
                                    v1136 = OUTLINED_FUNCTION_133_1(*&v1719, *&v1706, v1701, v1134, v1745, v1755);
                                    OUTLINED_FUNCTION_6_20(v1136, v1137, v1138, v1139);
                                  }

                                  *&v211 = v1711;
                                  v634 = v1712;
                                  v1140 = OUTLINED_FUNCTION_108_0();
                                  BWPropagatePixelBufferDolbyVisionRPUData(v1140, v1141);
                                  v1142 = OUTLINED_FUNCTION_108_0();
                                  BWPropagatePixelBufferAmbientViewingEnvironment(v1142, v1143);
                                  v1144 = MEMORY[0x1E696AD98];
                                  [OUTLINED_FUNCTION_59_1() currentValue];
                                  *&v1146 = 1.0 - v1145;
                                  v933 = [v1144 numberWithFloat:v1146];
                                  [OUTLINED_FUNCTION_59_1() isRamping];
                                  OUTLINED_FUNCTION_49_2();
                                  if ((v1147 & 1) == 0)
                                  {
                                    [OUTLINED_FUNCTION_59_1() currentValue];
                                    if (v1148 == 0.0)
                                    {

                                      *(v16 + 226) = 0;
                                      v1149 = *(v16 + 223);
                                      if (v1149)
                                      {
                                        CFRelease(v1149);
                                        *(v16 + 223) = 0;
                                      }
                                    }
                                  }

                                  goto LABEL_614;
                                }

                                v1452 = v957;
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                LODWORD(v1455) = v1452;
                                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455);
                              }

                              *&v620 = 0.0;
                              goto LABEL_808;
                            }

                            v18 = v1650;
                            v224 = v1762;
                            v634 = v1712;
                            if (*(v16 + 227))
                            {
                              [(BWPreviewStitcherNode *)v16 _waitForCIPreheatingToFinish];
                              [*(v16 + 227) updateRampForNextIteration];
                              [*(v16 + 227) currentValue];
                              LODWORD(v398) = v965;
                              *&v966 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);
                              *&v620 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);

                              *(v16 + 121) = 0;
                              OUTLINED_FUNCTION_101();
                              OUTLINED_FUNCTION_55_2();
                              OUTLINED_FUNCTION_22_3();
                              v967 = VTPixelRotationSessionRotateSubImage();
                              if (v967)
                              {
                                v1453 = v967;
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                LODWORD(v1455) = v1453;
                                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1455, v1465, v1476, v1488, v1493, v1498, v1503, v1509);
                                v226 = 0;
                                v955 = *&v966;
                                goto LABEL_808;
                              }

                              v1708 = *&v966;
                              [(BWPreviewStitcherNode *)v16 _renderHDRPixelBufferToSDR:v966 toOutputPixelBuffer:v620 progress:*&v398];
                              *&v968 = OUTLINED_FUNCTION_2_29(v16 + 416).n128_u64[0];
                              OUTLINED_FUNCTION_74(v968, v969, v970, v971, v972, v973, v974, v975, *&v1455, *&v1465, *&v1476, *&v1488, *&v1493, *&v1498, *&v1503, *&v1509, *&v1515, *&v1522, *&v1525, *&v1529, *&v1534, v1542, *&v1545, *&v1548, *&v1554, *&v1557, *v1561, *&v1561[1], *&v1566, *&v1570, v1573, *&v1576, *&r2);
                              OUTLINED_FUNCTION_92_0();
                              CGRectApplyAffineTransform(v1861, v976);
                              OUTLINED_FUNCTION_21_5();
                              OUTLINED_FUNCTION_58_4();
                              OUTLINED_FUNCTION_92_0();
                              v1703 = v977;
                              OUTLINED_FUNCTION_121();
                              v978 = VTPixelRotationSessionRotateSubImage();
                              LODWORD(v221) = v1692;
                              if (v978)
                              {
                                v1454 = v978;
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                LODWORD(v1460) = v1454;
                                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1460, v1469, v1481, v1490, v1495, v1500, v1505, v1511);
                                v226 = 0;
                                goto LABEL_911;
                              }

                              OUTLINED_FUNCTION_43_3();
                              OUTLINED_FUNCTION_82_0();
                              if (OUTLINED_FUNCTION_17_6(v987, v988, v989, v979, v980, v981, v982, v983, v984, v985, v986, v1460, v1469, v1481, v1490, v1495, v1500, v1505, v1511, v1517, v1524, v1528, v1533, v1538, v1544, v1547, v1551, v1556, v1560, v1563, v1565, v1568, v1572, v1575, v1578, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1584))
                              {
                                rect2d = *&v1723;
                                v1761 = v849;
                                v1755 = v398;
                                v1745 = *&v1703;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_32_2();
                                OUTLINED_FUNCTION_40_4();
                                v1030 = OUTLINED_FUNCTION_133_1(v1024, v1025, v1026, v1027, v1028, v1029);
                                OUTLINED_FUNCTION_6_20(v1030, v1031, v1032, v1033);
                              }

                              v1034 = OUTLINED_FUNCTION_108_0();
                              BWPropagatePixelBufferDolbyVisionRPUData(v1034, v1035);
                              v1036 = OUTLINED_FUNCTION_108_0();
                              BWPropagatePixelBufferAmbientViewingEnvironment(v1036, v1037);
                              LODWORD(v1038) = LODWORD(v398);
                              v933 = [MEMORY[0x1E696AD98] numberWithFloat:v1038];
                              v226 = 0;
                              v622 = v1738;
LABEL_883:
                              v621 = *&v1585;
                              *&v211 = v1711;
                              goto LABEL_614;
                            }

                            OUTLINED_FUNCTION_18_7();
                            LODWORD(v221) = v1692;
                            v623 = *&v1570;
                            if (!_ZF)
                            {
                              goto LABEL_608;
                            }

                            if ([CMGetAttachment(v226 *off_1E798D4E0] < 3)
                            {
                              if (!*(v16 + 1923))
                              {
                                goto LABEL_603;
                              }

                              v911 = 0;
                              *(v16 + 1923) = 0;
                            }

                            else
                            {
                              if (*(v16 + 1923))
                              {
                                goto LABEL_603;
                              }

                              *(v16 + 1923) = 1;
                              v911 = (BWOverCaptureRenderDurationInSecondsAfterThermalMitigationStart() * *&v1576);
                            }

                            *(v16 + 481) = v911;
LABEL_603:
                            OUTLINED_FUNCTION_18_7();
                            if (_ZF)
                            {
                              v912 = *(v16 + 481);
                              _VF = __OFSUB__(v912, 1);
                              v913 = v912 - 1;
                              if (v913 < 0 != _VF)
                              {
                                goto LABEL_608;
                              }

                              *(v16 + 481) = v913;
                            }

                            if (v1712 != 1.0)
                            {
                              *&v211 = v1711;
                              *&v1150 = *&v1570;
                              v1483 = v1150;
                              OUTLINED_FUNCTION_55_2();
                              v1462 = v1151;
                              v1471 = v1152;
                              OUTLINED_FUNCTION_87();
                              [(BWPreviewStitcherNode *)v1153 _transferPixelBuffer:v1154 rect:v1155 intoPixelBuffer:v1156 rect:0 isFinalOutput:v1157 withInputShift:v1158 scale:v1159 inputSourceRectOut:v1462, v1471, v1483];
                              v1707 = v1160;
                              v1162 = v1161;
                              v622 = v1163;
                              v1164 = OUTLINED_FUNCTION_43_3();
                              if (OUTLINED_FUNCTION_17_6(v1164, v1173, v1761, v1165, v1166, v1167, v1168, v1169, v1170, v1171, v1172, v1463, v1472, v1484, v1488, v1493, v1498, v1503, v1509, v1515, v1522, v1525, v1529, v1534, *&v1542, v1545, v1548, v1554, v1557, v1561[0], v1561[1], v1566, v1570, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1584))
                              {
                                OUTLINED_FUNCTION_20_4();
                                rect2d = v622;
                                v1761 = v1162;
                                OUTLINED_FUNCTION_72_0(*&v1707);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_40_4();
                                v1905.size.width = v1761;
                                v1905.size.height = v853;
                                v1869 = CGRectUnion(v1868, v1905);
                                OUTLINED_FUNCTION_6_20(v1869.origin.x, v1869.origin.y, v1869.size.width, v1869.size.height);
                                OUTLINED_FUNCTION_20_4();
                              }

                              v933 = &unk_1F224A7D0;
LABEL_613:
                              OUTLINED_FUNCTION_49_2();
                              v634 = v1712;
LABEL_614:
                              OUTLINED_FUNCTION_18_7();
                              if (_ZF)
                              {
                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  CMSetAttachment(v18, @"AmbientViewingEnvironmentStrength", v933, 1u);
                                  v934 = CVPixelBufferGetIOSurface(v18);
                                  BWUtilitiesApplyAVEStrength(v934, v933);
                                }
                              }

                              goto LABEL_718;
                            }

LABEL_608:
                            *&v914 = OUTLINED_FUNCTION_2_29(v16 + 416).n128_u64[0];
                            v1853.origin.x = OUTLINED_FUNCTION_74(v914, v915, v916, v917, v918, v919, v920, v921, *&v1455, *&v1465, *&v1476, *&v1488, *&v1493, *&v1498, *&v1503, *&v1509, *&v1515, *&v1522, *&v1525, *&v1529, *&v1534, v1542, *&v1545, *&v1548, *&v1554, *&v1557, *v1561, *&v1561[1], *&v1566, *&v1570, v1573, *&v1576, *&r2);
                            v1853.size.width = v1697;
                            *&v1853.size.height = r2_16;
                            v1854 = CGRectApplyAffineTransform(v1853, v922);
                            v623 = v1854.origin.x;
                            v621 = v1854.origin.y;
                            v923 = v1854.size.width;
                            v924 = v1854.size.height;
                            OUTLINED_FUNCTION_22_3();
                            v925 = VTPixelRotationSessionRotateSubImage();
                            if (v925)
                            {
                              v1450 = v925;
                              fig_log_get_emitter();
                              OUTLINED_FUNCTION_1_35();
                              LODWORD(v1459) = v1450;
                              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1459, v1468, v1480, v1489, v1494, v1499, v1504, v1510);
                              *&v620 = 0.0;
                              v226 = 0;
                              v955 = 0.0;
                              goto LABEL_808;
                            }

                            v622 = v1755;
                            if (OUTLINED_FUNCTION_19_7(v1745, v1755, v1761, rect2d, v925, v926, v927, v928, v929, v930, v931, v932, v1459, v1468, v1480, v1489, v1494, v1499, v1504, v1510, v1516, v1523, v1527, v1531, v1536, v1543, v1546, v1549, v1555, v1558, v1562, v1564, v1567, v1571, v1574, v1577, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1584))
                            {
                              OUTLINED_FUNCTION_20_4();
                              rect2d = v924;
                              v1761 = v923;
                              v1755 = v621;
                              v1745 = v623;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_28_3();
                              v1855.size.height = v924;
                              v1900.origin.x = v1745;
                              v1900.origin.y = v1755;
                              v1900.size.width = v1761;
                              v1900.size.height = rect2d;
                              v1856 = CGRectUnion(v1855, v1900);
                              OUTLINED_FUNCTION_6_20(v1856.origin.x, v1856.origin.y, v1856.size.width, v1856.size.height);
                              OUTLINED_FUNCTION_20_4();
                            }

                            v933 = &unk_1F224A7D0;
                            *&v211 = v1711;
                            goto LABEL_613;
                          }

                          *&propertyValueOut[0].a = r2_16;
                          *&propertyValueOut[0].c = r2;
                          CGRectMakeWithDictionaryRepresentation([v1741 objectForKeyedSubscript:v1657], propertyValueOut);
                          v624 = CVPixelBufferGetWidth(pixelBuffer);
                          CVPixelBufferGetHeight(pixelBuffer);
                          v625 = OUTLINED_FUNCTION_24_4();
                          FigCaptureMetadataUtilitiesDenormalizeCropRect(v625, v626, v627, v628, v624, v629);
                          v623 = v630;
                          b = v631;
                          v622 = v632;
                          d = v633;
                          if ((v1651 | v517))
                          {
                            rect2d = *&v1667;
                            v1761 = dicta;
                            v1755 = v1690;
                            v1745 = v621;
                            goto LABEL_488;
                          }

                          *&v1652 = v630;
                          v635 = v619 * (*&v1586 / v1645);
                          v636 = *(v16 + 57) * *(v16 + 418);
                          OUTLINED_FUNCTION_18_7();
                          if (_ZF && (OUTLINED_FUNCTION_18_7(), _ZF) && (([objc_msgSend(*(v16 + 35) "firstObject")], v610 > v637) ? (v638 = v610 < v636) : (v638 = 0), v638))
                          {
                            v1846.origin.x = v1589;
                            v1846.origin.y = v1592;
                            *&v1846.size.height = v1596;
                            *&v1846.size.width = v1603;
                            v639 = CGRectGetMaxX(v1846) < v1777.i32[0];
                          }

                          else
                          {
                            v639 = 0;
                          }

                          *&r2 = v636;
                          *&v1569 = v619;
                          *&v640 = v635;
                          *&v1583 = v621;
                          LODWORD(r2_16) = v640;
                          if (v221)
                          {
                            v641 = v1660;
                            if (v1634)
                            {
                              v641 = v1660 + (v1634 / *&v640);
                            }

                            if (v639)
                            {
                              v641 = v641 + (v1777.i32[0] - (v1769.origin.x + v1769.size.width - v1777.i32[0] + v1777.i32[0] + 2.0)) * 0.5 / *&v640;
                            }

                            OUTLINED_FUNCTION_18_7();
                            if (_ZF && (OUTLINED_FUNCTION_35_3(), !(_NF ^ _VF | _ZF)) && objc_msgSend_isEqualToString_(v1630))
                            {
                              v642 = FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(a2);
                              v644 = v643;
                              v645 = CVPixelBufferGetWidth(pixelBuffer);
                              *&v620 = COERCE_DOUBLE(&time);
                              CVPixelBufferGetHeight(pixelBuffer);
                              v641 = v641 - FigCaptureMetadataUtilitiesDenormalizePoint(v642, v644, v645);
                              v647 = v1659 - v646;
                            }

                            else
                            {
                              v647 = v1659;
                            }

                            v696 = psn_pixelBufferRect(pixelBuffer);
                            psn_widerCameraBoundingRect(*(v16 + 268), v696, v697, v698, v699, *(&v1573 + 1) / *(v16 + 76), v1712, v1702, *&v1573);
                            OUTLINED_FUNCTION_18_7();
                            v1695 = v701;
                            v1684 = v703;
                            v1677 = v700;
                            *&v1653 = v702;
                            if (_ZF && ((*&v700 = v1712 / v1736, *(v16 + 76) > 1.0) ? (v705 = *&v700 < 1.0) : (v705 = 0), v705))
                            {
                              v798 = *&v700;
                              *&time.a = v1610;
                              *&time.c = *v1608;
                              *lhs = v1610;
                              *&lhs[16] = *v1608;
                              OUTLINED_FUNCTION_55_2();
                              OUTLINED_FUNCTION_112_1();
                              [(BWPreviewStitcherNode *)v799 _getInputRect:v800 outputRect:v801 inputShiftAppliedInOutputRect:v802 toTransferPixelBuffer:v803 rect:v804 intoPixelBufferDimensions:v805 rect:v806 withInputShift:v807 shiftOutsideBoundingRectAllowed:v808 ignoreBounds:v809 scale:v810 forFinalOutput:v811, v812, v813, v814, v641, v647, *&v640, 1u];
                              *lhs = OUTLINED_FUNCTION_41_3(v16 + 26, *lhs);
                              *&lhs[8] = v815;
                              *&lhs[16] = v816;
                              *&lhs[24] = v817;
                              v818 = FigCaptureMetadataUtilitiesScaleRect2D(*lhs, v815, v816, v817, 1.0 / v798);
                              v820 = v819;
                              v398 = v821;
                              v211 = v822;
                              OUTLINED_FUNCTION_75_0();
                              [(BWPreviewStitcherNode *)v16 _compensateForMissingFOVUsingPixelBuffer:v1650 sourceRect:v823 destinationContainingRect:v824 destinationInsetRect:v825 outputPixelBuffer:v826, v827, v828, v829, v830, v831, v818, v820, v398, v211, *lhs, *&lhs[8], *&lhs[16], *&lhs[24]];
                              v621 = *&v1583;
                              OUTLINED_FUNCTION_27_2();
                              if (CGRectEqualToRect(v1847, v1896))
                              {
                                v1761 = v398;
                                rect2d = v211;
                                v1745 = v818;
                                v1755 = v820;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_27_2();
                                v1849 = CGRectUnion(v1848, v1897);
                                OUTLINED_FUNCTION_6_20(v1849.origin.x, v1849.origin.y, v1849.size.width, v1849.size.height);
                              }

                              v610 = v1712;
                              v623 = time.a;
                              v832 = OUTLINED_FUNCTION_56_1(time.a - v1677, time.b - v1695);
                              v1737 = v834;
                              v835 = OUTLINED_FUNCTION_56_1(v832, v833 + *&v1653 - (v623 + v834));
                              d = v837;
                              v839 = OUTLINED_FUNCTION_14_7(v835, v836 + v1684 - (v838 + v837));
                              if (_NF)
                              {
                                v787 = v840;
                              }

                              else
                              {
                                v787 = v839;
                              }
                            }

                            else
                            {
                              propertyValueOut[0].a = v704;
                              OUTLINED_FUNCTION_78_1(v700, v701, v702, v703);
                              OUTLINED_FUNCTION_55_2();
                              OUTLINED_FUNCTION_87();
                              [(BWPreviewStitcherNode *)v706 _transferPixelBuffer:v707 rect:v708 intoPixelBuffer:v709 rect:v710 isFinalOutput:v711 withInputShift:v712 scale:v713 inputSourceRectOut:*&v641, *&v647, v640];
                              v211 = v714;
                              v716 = v715;
                              v718 = v717;
                              v398 = v719;
                              v621 = *&v1583;
                              OUTLINED_FUNCTION_27_2();
                              if (CGRectEqualToRect(v1839, v1892))
                              {
                                v1761 = v718;
                                rect2d = v398;
                                v1745 = v211;
                                v1755 = v716;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_27_2();
                                v1845 = CGRectUnion(v1844, v1895);
                                OUTLINED_FUNCTION_6_20(v1845.origin.x, v1845.origin.y, v1845.size.width, v1845.size.height);
                              }

                              v610 = v1712;
                              v623 = propertyValueOut[0].a;
                              v789 = OUTLINED_FUNCTION_56_1(propertyValueOut[0].a - v1677, propertyValueOut[0].b - v1695);
                              v1737 = v791;
                              v792 = OUTLINED_FUNCTION_56_1(v789, v790 + *&v1653 - (v623 + v791));
                              d = v794;
                              v796 = OUTLINED_FUNCTION_14_7(v792, v793 + v1684 - (v795 + v794));
                              if (_NF)
                              {
                                v787 = v797;
                              }

                              else
                              {
                                v787 = v796;
                              }
                            }
                          }

                          else
                          {
                            v1737 = v622;
                            v666 = psn_pixelBufferRect(pixelBuffer);
                            v1755 = v1702;
                            propertyValueOut[0].a = psn_widerCameraBoundingRect(*(v16 + 268), v666, v667, v668, v669, *(&v1573 + 1), v610, v1702, *&v1573);
                            OUTLINED_FUNCTION_78_1(propertyValueOut[0].a, v670, v671, v672);
                            v1761 = *&v640;
                            *&v1478 = v635;
                            *&v1456 = v1694.f64[0] + (vcvtd_n_f64_s32(v1777.u32[0], 1uLL) + v1617 + 2.0) * 0.5 / *&v640 - 2.0 / *&v640;
                            OUTLINED_FUNCTION_55_2();
                            v1694.f64[0] = v673;
                            v1745 = v674;
                            v1540 = v675;
                            rect2d = v676;
                            OUTLINED_FUNCTION_87();
                            [(BWPreviewStitcherNode *)v677 _transferPixelBuffer:v678 rect:v679 intoPixelBuffer:v680 rect:v681 isFinalOutput:v682 withInputShift:v683 scale:v684 inputSourceRectOut:v1456, *&v1694.f64[1], v1478];
                            v686 = v685;
                            v688 = v687;
                            v690 = v689;
                            v692 = v691;
                            OUTLINED_FUNCTION_122_0();
                            if (CGRectEqualToRect(v1838, v1891))
                            {
                              v693 = v692;
                              v694 = v690;
                              v695 = v686;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_120();
                              OUTLINED_FUNCTION_122_0();
                              v1841 = CGRectUnion(v1840, v1893);
                              v695 = v1841.origin.x;
                              v688 = v1841.origin.y;
                              v694 = v1841.size.width;
                              v693 = v1841.size.height;
                            }

                            v720 = OUTLINED_FUNCTION_24_4();
                            v724 = v720 - v1694.f64[0];
                            if (v720 - v1694.f64[0] >= v721 - v1745)
                            {
                              v724 = v721 - v1745;
                            }

                            v725 = OUTLINED_FUNCTION_106(v720, v721, v722, v723, v724, v1694.f64[0] + *&v1540);
                            v729 = OUTLINED_FUNCTION_14_7(v725, v726 + rect2d - (v727 + v728));
                            if (_NF)
                            {
                              v729 = v730;
                            }

                            v1696 = v729;
                            psn_pixelBufferRect(pixelBuffer);
                            v731 = OUTLINED_FUNCTION_54_3();
                            propertyValueOut[0].a = psn_widerCameraBoundingRect(v731, v732, v733, v734, v735, v736, v737, v1755, v738);
                            OUTLINED_FUNCTION_78_1(propertyValueOut[0].a, v739, v740, v741);
                            v746 = v1777.i32[0] - (vcvtd_n_f64_s32(v1777.u32[0], 1uLL) + v1617);
                            v747 = v688;
                            v211 = v694;
                            v748 = v693;
                            if (v639)
                            {
                              v746 = v746 + v1769.origin.x + v1769.size.width - v1777.i32[0] + 2.0;
                            }

                            *&v1457 = v1698.f64[0] + v746 * -0.5 / v1761;
                            v1526 = v745;
                            v1530 = v742;
                            v1535 = v743;
                            v1541 = v744;
                            OUTLINED_FUNCTION_87();
                            [(BWPreviewStitcherNode *)v749 _transferPixelBuffer:v750 rect:v751 intoPixelBuffer:v752 rect:v753 isFinalOutput:v754 withInputShift:v755 scale:v756 inputSourceRectOut:v1457, *&v1698.f64[1], r2_16];
                            v398 = v757;
                            v759 = v758;
                            v761 = v760;
                            v763 = v762;
                            v764 = OUTLINED_FUNCTION_52_3();
                            if (OUTLINED_FUNCTION_19_7(v764, v773, v774, v748, v765, v766, v767, v768, v769, v770, v771, v772, v1458, v1467, v1479, v1488, v1493, v1498, v1503, v1509, v1515, v1522, v1526, v1530, v1535, v1541, v1545, v1548, v1554, v1557, v1561[0], v1561[1], v1566, v1569, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1583))
                            {
                              v1761 = v761;
                              rect2d = v763;
                              v1745 = v398;
                              v1755 = v759;
                            }

                            else
                            {
                              v1842.origin.x = v398;
                              v1842.origin.y = v759;
                              v1842.size.width = v761;
                              v1842.size.height = v763;
                              v1894.origin.x = v695;
                              v1894.origin.y = v747;
                              v1894.size.width = v211;
                              v1894.size.height = v748;
                              v1843 = CGRectUnion(v1842, v1894);
                              OUTLINED_FUNCTION_6_20(v1843.origin.x, v1843.origin.y, v1843.size.width, v1843.size.height);
                            }

                            v623 = *&v1652;
                            v775 = OUTLINED_FUNCTION_24_4();
                            v779 = v775 - *&v1529;
                            if (v775 - *&v1529 >= v776 - *&v1539)
                            {
                              v779 = v776 - *&v1539;
                            }

                            v780 = OUTLINED_FUNCTION_106(v775, v776, v777, v778, v779, *&v1529 + *&v1525);
                            v784 = OUTLINED_FUNCTION_14_7(v780, v781 + *&v1534 - (v782 + v783));
                            if (_NF)
                            {
                              v784 = v785;
                            }

                            if (v1696 >= v784)
                            {
                              v787 = v784;
                            }

                            else
                            {
                              v787 = v1696;
                            }

                            v610 = v1712;
                            v621 = *&v1583;
                            v788 = v786;
                          }

                          *&v211 = v1711;
                          b = v788;
                          if (!v639)
                          {
                            v622 = v1737;
                            goto LABEL_561;
                          }

                          if (v221)
                          {
                            v1333 = v1660;
                          }

                          else
                          {
                            v1333 = v1698.f64[0];
                          }

                          if (v221)
                          {
                            v1334 = v1659;
                          }

                          else
                          {
                            v1334 = v1698.f64[1];
                          }

                          v1335 = v1769.origin.x;
                          v1336 = v1769.size.width;
                          v1337 = v1777.i32[1];
                          if (*&v1723 > 1.0)
                          {
                            v1335 = FigCaptureMetadataUtilitiesScaleRect2D(v1769.origin.x, v1769.origin.y, v1769.size.width, v1769.size.height, 1.0 / *&v1723);
                          }

                          v1338 = v1335 + v1336;
                          v622 = v1777.i32[0] - (v1335 + v1336);
                          v398 = v1337;
                          psn_pixelBufferRect(pixelBuffer);
                          v1339 = OUTLINED_FUNCTION_54_3();
                          v1348 = psn_widerCameraBoundingRect(v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347);
                          OUTLINED_FUNCTION_42_3(v1348, v1349, v1350, v1351);
                          if (v1634)
                          {
                            v1333 = v1333 + (v1634 / *&r2_16);
                          }

                          OUTLINED_FUNCTION_112_1();
                          [(BWPreviewStitcherNode *)v1408 _getInputRect:v1409 outputRect:v1410 inputShiftAppliedInOutputRect:v1411 toTransferPixelBuffer:v1412 rect:v1413 intoPixelBufferDimensions:v1414 rect:v1415 withInputShift:v1416 shiftOutsideBoundingRectAllowed:v1417 ignoreBounds:v1418 scale:v1419 forFinalOutput:v1420, v1421, v1422, v1423, v1333 + v1338 * -0.5 / *&r2_16, v1334, *&r2_16, 1u];
                          v1424 = v622 / (time.c * *&r2_16);
                          v1425 = *(v16 + 57);
                          if (v1712 >= v1425)
                          {
                            if (*&r2 >= v1712)
                            {
                              v1431 = v1712;
                            }

                            else
                            {
                              v1431 = *&r2;
                            }

                            if (v1431 < v1425)
                            {
                              v1431 = *(v16 + 57);
                            }

                            v1429 = *(v16 + 417) + ((1.0 - *(v16 + 417)) * ((v1431 - v1425) / (*&r2 - v1425)));
                            if (v1429 <= v1424)
                            {
                              goto LABEL_900;
                            }
                          }

                          else
                          {
                            [objc_msgSend(*(v16 + 35) "firstObject")];
                            v1427 = *(v16 + 57);
                            if (v1427 >= v1712)
                            {
                              v1428 = v1712;
                            }

                            else
                            {
                              v1428 = *(v16 + 57);
                            }

                            if (v1428 < v1426)
                            {
                              v1428 = v1426;
                            }

                            v1429 = ((*(v16 + 417) + -1.0) * ((v1428 - v1426) / (v1427 - v1426))) + 1.0;
                            if (v1429 <= v1424)
                            {
                              v1430 = time.c * *&r2_16 * v1429;
                              v622 = FigCaptureRoundFloatToMultipleOf(2, v1430);
                              goto LABEL_900;
                            }
                          }

                          v1432 = v622 / (v1429 * *&r2_16);
                          time.c = FigCaptureRoundFloatToMultipleOf(2, v1432);
LABEL_900:
                          psn_conformRectForMSR420vfBoundedByDimensions(v1338, 0.0, v622, v398, *&v1777, 1);
                          v1434 = OUTLINED_FUNCTION_41_3(v16 + 26, v1433);
                          if (v1436 <= 0.0 || (v623 = v1437, v1437 <= 0.0))
                          {
                            v610 = v1712;
                            v623 = rect2d;
                            v621 = v1761;
                          }

                          else
                          {
                            v398 = v1434;
                            v622 = v1435;
                            v621 = v1436;
                            v610 = v1712;
                            OUTLINED_FUNCTION_75_0();
                            VTPixelRotationSessionRotateSubImage();
                            OUTLINED_FUNCTION_82_0();
                            if (OUTLINED_FUNCTION_19_7(v1446, v1447, v1448, rect2d, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1455, v1465, v1476, v1488, v1493, v1498, v1503, v1509, v1515, v1522, v1525, v1529, v1534, v1539, v1545, v1548, v1554, v1557, v1561[0], v1561[1], v1566, v1569, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1583))
                            {
                              v1755 = v622;
                              v1745 = v398;
                            }

                            else
                            {
                              v1885.origin.x = OUTLINED_FUNCTION_36_4();
                              v1885.size.width = v621;
                              v1885.size.height = v623;
                              v1910.origin.x = v1745;
                              v1910.origin.y = v1755;
                              v1910.size.width = v211;
                              v1910.size.height = rect2d;
                              v1886 = CGRectUnion(v1885, v1910);
                              v1745 = v1886.origin.x;
                              v1755 = v1886.origin.y;
                              v621 = v1886.size.width;
                              v623 = v1886.size.height;
                            }

                            *&v211 = v1711;
                          }

                          rect2d = v623;
                          v1761 = v621;
                          OUTLINED_FUNCTION_49_2();
LABEL_561:
                          BWSmartCameraSceneUpdateWithConfidence(v16 + 1360, v787 * *&r2_16);
                          v468 = *&v1723;
                          v619 = *&v1569;
                          if (v221)
                          {
                            goto LABEL_489;
                          }

                          goto LABEL_562;
                        }

                        v612 = 1;
                      }

                      *(v16 + 1354) = v612;
                      goto LABEL_466;
                    }

                    v21 = v1712;
                    *&v211 = v1711;
                    v178 = v1735;
                  }

                  else
                  {
                    v432 = OUTLINED_FUNCTION_8_18();
                    v436 = psn_smallestBoundingRectAlignedToMultipleOf(2, 0, v432, v433, v434, v435);
                    OUTLINED_FUNCTION_23_3(v436, v437, v438, v439);
                    OUTLINED_FUNCTION_40_4();
                    v446 = psn_conformRectForMSR420vfBoundedByRect(1, v440, v441, v442, v443, v444, v445, v384, v1752);
                    OUTLINED_FUNCTION_23_3(v446, v447, v448, v449);
                    v454 = a2;
                  }

                  v455 = rect2b;
                  goto LABEL_353;
                }
              }

              v223 = [v1763 objectForKeyedSubscript:v1661];
              if (*(v16 + 1291))
              {
                v224 = v1762;
                v225 = *&v1664;
                v226 = cameraCopy2;
              }

              else
              {
                v227 = v223;
                v224 = v1762;
                v225 = *&v1664;
                v226 = cameraCopy2;
                if (([v223 isEqual:*off_1E798A0E0] & 1) != 0 || objc_msgSend(v227, "isEqual:", *off_1E798A0F8))
                {
                  v228 = CMGetAttachment(cameraCopy2, @"TotalZoomFactor", 0);
                  if (v228)
                  {
                    [v228 floatValue];
                    v230 = v229;
                  }

                  else
                  {
                    v230 = 1.0;
                  }

                  v225 = *&v1664 / v230;
                }
              }

              v262 = 1.0;
              if (*(v16 + 1291) == 1)
              {
                v262 = 1.0 / v225;
                v225 = 1.0;
              }

              v263 = *(v16 + 220);
              if (fabs(v263 + -1.77777778) < 0.001 || fabs(v263 + -0.5625) < 0.001)
              {
                v266 = OUTLINED_FUNCTION_84_0();
                if (v266 && [v266 isRamping])
                {
                  [OUTLINED_FUNCTION_84_0() currentValue];
                  if (v267 > 1.0)
                  {
                    v267 = 1.0;
                  }

                  if (v267 < 0.0)
                  {
                    v267 = 0.0;
                  }

                  v268 = v225;
                  v1702 = v262 + ((v268 - v262) * v267);
                  isRampingUp2 = [OUTLINED_FUNCTION_84_0() isRampingUp];
                  [OUTLINED_FUNCTION_84_0() updateRampForNextIteration];
                  if (isRampingUp2 && ([OUTLINED_FUNCTION_84_0() isRamping] & 1) == 0)
                  {

                    *(v16 + 228) = 0;
                  }
                }
              }

              else
              {
                if (*&v211 <= 1.0)
                {
                  v264 = 1.0 / *&v211;
                }

                else
                {
                  v264 = *&v211;
                }

                if (v264 > 1.7778)
                {
                  v264 = 1.7778;
                }

                if (v264 < 1.3333)
                {
                  v264 = 1.3333;
                }

                v265 = v225;
                v1702 = v262 + ((v265 - v262) * ((v264 + -1.3333) / 0.44444));
              }

              v270 = *(v16 + 1291);
              if (((v270 | v1642) & 1) == 0)
              {
                v297 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(recta.size.width, recta.size.height, *&v211);
                OUTLINED_FUNCTION_4_25(v297, v298, v299, v300);
                [v1763 objectForKeyedSubscript:*off_1E798A6F0];
                if (*(v16 + 1921))
                {
                  CVPixelBufferGetWidth(v224);
                  CVPixelBufferGetHeight(v224);
                  v301.n128_f64[0] = OUTLINED_FUNCTION_0_29();
                  v309 = OUTLINED_FUNCTION_96_0(v301, v302, v303, v304, v305, v306, v307, v308);
                  OUTLINED_FUNCTION_4_25(v309, v310, v311, v312);
                }

                else
                {
                  OUTLINED_FUNCTION_0_29();
                }

                OUTLINED_FUNCTION_85_1();
                size = recta.size;
                origin = recta.origin;
                FigCaptureMetadataUtilitiesScaleRect2D(v324, v325, v326, v327, 1.0 / (v1743 * v1702));
                *&v329.f64[0] = v328;
                *&v329.f64[1] = v330;
                __asm { FMOV            V1.2D, #0.5 }

                v1771 = vaddq_f64(origin, vmulq_f64(vsubq_f64(size, v329), _Q1));
                v1772[0] = v328;
                v1772[1] = v330;
                v251 = 1.0;
LABEL_284:
                v260 = primaryCaptureRectCenterYPixelOffset;
                v261 = v1714;
                goto LABEL_306;
              }

              v271 = OUTLINED_FUNCTION_0_29();
              v277 = recta.origin.x;
              v276 = recta.origin.y;
              v278 = recta.size.width;
              v279 = recta.size.height;
              v280 = recta.size.height / v274;
              if (recta.size.width / v273 < recta.size.height / v274)
              {
                v280 = recta.size.width / v273;
              }

              v281 = v275;
              v1552 = *&v281;
              if (v280 > v281)
              {
                v280 = v281;
              }

              v1587 = *&v274;
              v1590 = *&v273;
              FigCaptureMetadataUtilitiesScaleRect2D(v271, v272, v273, v274, v280);
              v1750 = v283;
              v285 = v284;
              v286 = v284 / v282;
              v287 = *&v211;
              v288 = v286;
              if (*&v211 <= 1.0)
              {
                v293 = v285 * v287 / v288;
                v313 = *&v211 < v286 || v293 <= v278;
                v1623 = v282;
                v221 = v1692;
                LODWORD(v222) = isEqualToString;
                v294 = v278;
                v296 = v282;
                if (!v313)
                {
                  v293 = v294;
                  v1623 = v294 / v287;
                }
              }

              else
              {
                v289 = *&v211 <= v286;
                v290 = v282 * v288 / v287;
                v291 = v290 > v279;
                v292 = v279 * v287;
                if (v289 && v291)
                {
                  v290 = v279;
                }

                v1623 = v290;
                if (v289 && v291)
                {
                  v293 = v292;
                }

                else
                {
                  v293 = v285;
                }

                OUTLINED_FUNCTION_85_1();
                v294 = v278;
                v296 = v295;
              }

              *&v1643 = v294;
              v1802.origin.x = OUTLINED_FUNCTION_30_1();
              v1802.size.height = v279;
              v1600 = CGRectGetMinX(v1802);
              v1803.origin.x = OUTLINED_FUNCTION_30_1();
              v1803.size.height = v279;
              v314 = CGRectGetMaxX(v1803) - v293;
              v1640 = v276;
              OUTLINED_FUNCTION_102();
              *&v1627 = v277;
              v315 = v1750;
              OUTLINED_FUNCTION_37_5();
              v316 = CGRectGetMidX(v1804) - v293 * 0.5;
              v1665 = *&v279;
              if (v314 >= v316)
              {
                OUTLINED_FUNCTION_37_5();
                v323 = CGRectGetMidX(v1806) - v293 * 0.5;
                v315 = *&v1627;
                v314 = *&v1643;
              }

              else
              {
                v1805.origin.x = OUTLINED_FUNCTION_63_0(v316, 0.5, v317, v318, v319, v320, v321, v322, *&v1455, *&v1465, *&v1476, *&v1488, *&v1493, *&v1498, *&v1503, *&v1509, *&v1515, *&v1522, *&v1525, *&v1529, *&v1534, *&v1539, *&v11, *&v1548, *&v1552, *&v1557, *v1561, *&v1561[1], *&v1566, *&v1569, v1573, *&v1576, 1.0, 1.0, 0.0, 0.0, *&v1581, *&v1582, v1586, *&v1587, *&v1590, *&v1593, v1600, *&fencePortGenerationCount, *&outCopy, *&croppingOutCopy, *v1608, *&v1608[1], v1610.x, v1610.y, *&v1611, *&v1613, *v1614, *&v1614[1], *&v1620, v1623, *&v1627);
                v1805.size.height = v279;
                v323 = CGRectGetMaxX(v1805) - v293;
              }

              *v1614 = v293;
              if (v1600 <= v323)
              {
                v1808.origin.x = v315;
                v1808.origin.y = v276;
                v1808.size.width = v314;
                v333 = v279;
                v1808.size.height = v279;
                v335 = CGRectGetMaxX(v1808) - v293;
                v1809.origin.x = OUTLINED_FUNCTION_102();
                v315 = v1750;
                v1809.origin.y = v1750;
                v1809.size.width = v285;
                v1809.size.height = v296;
                v336 = CGRectGetMidX(v1809) - v293 * 0.5;
                if (v335 >= v336)
                {
                  v1811.origin.x = OUTLINED_FUNCTION_50_2();
                  v1811.size.height = v296;
                  v1601 = CGRectGetMidX(v1811) - v293 * 0.5;
                  v315 = *&v1627;
                  goto LABEL_292;
                }

                v1810.origin.x = OUTLINED_FUNCTION_63_0(v336, v337, v338, v339, v340, v341, v342, v343, *&v1455, *&v1465, *&v1476, *&v1488, *&v1493, *&v1498, *&v1503, *&v1509, *&v1515, *&v1522, *&v1525, *&v1529, *&v1534, *&v1539, *&v1545, *&v1548, *&v1552, *&v1557, *v1561, *&v1561[1], *&v1566, *&v1569, v1573, *&v1576, *&r2, *(&r2 + 1), *&r2_16, *(&r2_16 + 1), *&v1581, *&v1582, v1586, *&v1587, *&v1590, *&v1593, v1600, *&fencePortGenerationCount, *&outCopy, *&croppingOutCopy, *v1608, *&v1608[1], v1610.x, v1610.y, *&v1611, *&v1613, v293, *&v1614[1], *&v1620, v1623, *&v1627);
                v1810.size.height = v279;
                v334 = CGRectGetMaxX(v1810) - v293;
              }

              else
              {
                v1807.origin.x = OUTLINED_FUNCTION_30_1();
                v333 = v279;
                v1807.size.height = v279;
                v334 = CGRectGetMinX(v1807);
              }

              v1601 = v334;
LABEL_292:
              v1812.origin.x = OUTLINED_FUNCTION_30_1();
              v1812.size.height = v333;
              v1594 = CGRectGetMinY(v1812);
              v1813.origin.x = OUTLINED_FUNCTION_30_1();
              v1813.size.height = v333;
              v344 = v1623;
              v345 = CGRectGetMaxY(v1813) - v1623;
              v346 = OUTLINED_FUNCTION_102();
              if (v345 >= OUTLINED_FUNCTION_95_1(v346, v347, v348, v349, v350, v351, v352, v353, v354, v1455, v1465, v1476, v1488, v1493, v1498, v1503, v1509, v1515, v1522, v1525, v1529, v1534, v1539, v1545, v1548, v1552, v1557, v1561[0], v1561[1], v1566, v1569, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1582, *&v1586, v1587, v1590, v1594, *&v1601, fencePortGenerationCount, outCopy, croppingOutCopy, v1608[0], v1608[1], *&v1610.x, *&v1610.y, v1611, v1613, v1614[0], v1614[1], v1620, *&v1623, v1627, v1630, *&v296, *&v285) - v344 * 0.5)
              {
                v1815.origin.x = OUTLINED_FUNCTION_50_2();
                v1815.size.height = v293;
                v357 = CGRectGetMidY(v1815) - v344 * 0.5;
                v355 = v276;
                v356 = *&v1643;
              }

              else
              {
                v1814.origin.x = v315;
                v355 = v276;
                v1814.origin.y = v276;
                v356 = *&v1643;
                *&v1814.size.width = v1643;
                *&v1814.size.height = v1665;
                v357 = CGRectGetMaxY(v1814) - v344;
              }

              v358 = v344;
              if (*&v1595 <= v357)
              {
                v1817.origin.x = v315;
                v361 = v344 * 0.5;
                v1817.origin.y = v355;
                v1817.size.width = v356;
                *&v1817.size.height = v1665;
                v362 = CGRectGetMaxY(v1817) - v358;
                v363 = OUTLINED_FUNCTION_102();
                if (v362 >= OUTLINED_FUNCTION_95_1(v363, v364, v365, v366, v367, v368, v369, v370, v371, v1455, v1465, v1476, v1488, v1493, v1498, v1503, v1509, v1515, v1522, v1525, v1529, v1534, v1539, v1545, v1548, v1553, v1557, v1561[0], v1561[1], v1566, v1569, *&v1573, v1576, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1581, v1582, *&v1586, v1588, v1591, v1595, v1602, fencePortGenerationCount, outCopy, croppingOutCopy, v1608[0], v1608[1], *&v1610.x, *&v1610.y, v1612, v1613, v1615, v1619, v1621, v1624, v1628, v1630, v1633, key) - v361)
                {
                  v1819.origin.x = OUTLINED_FUNCTION_50_2();
                  v1819.size.height = v355;
                  v359 = CGRectGetMidY(v1819) - v361;
                }

                else
                {
                  v1818.origin.x = v315;
                  v1818.origin.y = v1640;
                  *&v1818.size.width = v1643;
                  *&v1818.size.height = v1665;
                  v359 = CGRectGetMaxY(v1818) - v358;
                }

                v21 = v1712;
                v178 = v1735;
                v360 = v1616;
              }

              else
              {
                v1816.origin.x = v315;
                v1816.origin.y = v355;
                v1816.size.width = v356;
                *&v1816.size.height = v1665;
                v359 = CGRectGetMinY(v1816);
                v21 = v1712;
                v178 = v1735;
                v360 = *&v1615;
              }

              v251 = 1.0;
              *&v211 = v1711;
              v260 = primaryCaptureRectCenterYPixelOffset;
              v261 = v1714;
              if (v270)
              {
                v372 = v358 / *&v1588;
                if (v1711 >= 1.0)
                {
                  v372 = v360 / *&v1591;
                }

                v251 = *&v1553 / v372;
              }

              *&v1771.f64[0] = v1602;
              v1771.f64[1] = v359;
              *v1772 = v360;
              *&v1772[1] = v358;
              goto LABEL_306;
            }

            v1637 = point.x;
            v1609 = point.y;
            v152 = v1771;
            v153 = *v1772;
            v154 = *&v1772[1];
            v155 = recta.origin.x;
            v156 = recta.size.width;
            v157 = recta.size.height;
            OUTLINED_FUNCTION_31_4();
            v1631 = CGRectGetMinX(v1778);
            v1779.origin.x = OUTLINED_FUNCTION_15_9();
            v1779.size.height = v154;
            v1597 = v1631 - CGRectGetMinX(v1779);
            v1622 = v155;
            OUTLINED_FUNCTION_31_4();
            MaxX = CGRectGetMaxX(v1780);
            v1781.origin.x = OUTLINED_FUNCTION_15_9();
            v1632 = v154;
            v1781.size.height = v154;
            _NF = MaxX - CGRectGetMaxX(v1781) < v1637;
            v159 = v1637;
            if (_NF)
            {
              OUTLINED_FUNCTION_31_4();
              v154 = CGRectGetMaxX(v1782);
              v1783.origin.x = OUTLINED_FUNCTION_15_9();
              v1783.size.height = v1632;
              v159 = v154 - CGRectGetMaxX(v1783);
            }

            v1607 = v153;
            if (v1597 <= v159)
            {
              OUTLINED_FUNCTION_31_4();
              v1598 = CGRectGetMaxX(v1786);
              OUTLINED_FUNCTION_15_9();
              OUTLINED_FUNCTION_67();
              if (v1598 - CGRectGetMaxX(v1787) >= v1637)
              {
LABEL_158:
                v1790.origin.x = OUTLINED_FUNCTION_93();
                v1790.size.width = v152.f64[0];
                v1790.size.height = v157;
                v162 = CGRectGetMinY(v1790);
                v1593 = *&MaxX;
                OUTLINED_FUNCTION_92_0();
                v1599 = v162 - CGRectGetMinY(v1791);
                v1792.origin.x = OUTLINED_FUNCTION_93();
                v1792.size.width = v152.f64[0];
                v1792.size.height = v157;
                MaxY = CGRectGetMaxY(v1792);
                OUTLINED_FUNCTION_34_3();
                OUTLINED_FUNCTION_92_0();
                _NF = MaxY - CGRectGetMaxY(v1793) < v1609;
                v164 = v1609;
                if (_NF)
                {
                  OUTLINED_FUNCTION_93();
                  OUTLINED_FUNCTION_39_3();
                  v165 = CGRectGetMaxY(v1794);
                  v1795.origin.x = OUTLINED_FUNCTION_34_3();
                  v1795.size.width = v1607;
                  v1795.size.height = v1632;
                  v164 = v165 - CGRectGetMaxY(v1795);
                }

                if (v1599 <= v164)
                {
                  OUTLINED_FUNCTION_93();
                  OUTLINED_FUNCTION_39_3();
                  v168 = CGRectGetMaxY(v1798);
                  v1799.origin.x = OUTLINED_FUNCTION_34_3();
                  v1799.size.width = v1607;
                  v1799.size.height = v1632;
                  v169 = CGRectGetMaxY(v1799);
                  v167 = v1609;
                  if (v168 - v169 < v1609)
                  {
                    OUTLINED_FUNCTION_39_3();
                    v170 = CGRectGetMaxY(v1800);
                    v1801.origin.x = OUTLINED_FUNCTION_34_3();
                    v1801.size.width = v1607;
                    v1801.size.height = v1632;
                    v167 = v170 - CGRectGetMaxY(v1801);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_93();
                  OUTLINED_FUNCTION_39_3();
                  v166 = CGRectGetMinY(v1796);
                  v1797.origin.x = OUTLINED_FUNCTION_34_3();
                  v1797.size.width = v1607;
                  v1797.size.height = v1632;
                  v167 = v166 - CGRectGetMinY(v1797);
                }

                point.x = v1637;
                point.y = v167;
                v101 = *&v1646;
                v100 = *&v1647;
                x = v1649;
                v74 = *(&v1576 + 1);
                v77 = *&v1586;
                goto LABEL_166;
              }

              v1788.origin.x = v1622;
              v1788.origin.y = MaxX;
              v1788.size.width = v152.f64[0];
              v1788.size.height = v157;
              v161 = CGRectGetMaxX(v1788);
              v1789.origin.x = v152.f64[1];
              v1789.origin.y = v154;
              v1789.size.width = v153;
              v1789.size.height = v156;
              v160 = v161 - CGRectGetMaxX(v1789);
            }

            else
            {
              OUTLINED_FUNCTION_31_4();
              v1638 = CGRectGetMinX(v1784);
              OUTLINED_FUNCTION_15_9();
              OUTLINED_FUNCTION_67();
              v160 = v1638 - CGRectGetMinX(v1785);
            }

            v1637 = v160;
            goto LABEL_158;
          }

          v94 = v1645 / (v93 * v528);
        }

        else
        {
          v94 = (v89 * v90) / (*&v92 * v93);
        }

        *&v1573 = v94;
        goto LABEL_109;
      }

      v74 = *(v16 + 56);
      v1735 = v74 * *(v16 + 72);
      _wideBaseZoomFactorWithOverride2 = [(BWPreviewStitcherNode *)v16 _wideBaseZoomFactorWithOverride];
      v77 = *&_wideBaseZoomFactorWithOverride2;
      v78 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingZoomFactors;
    }

    [objc_msgSend(*(v16 + *v78) "firstObject")];
    v80 = v79;
    OUTLINED_FUNCTION_35_3();
    v81 = _ZF;
    LODWORD(v1569) = v81;
    goto LABEL_90;
  }

  fig_log_get_emitter();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v11, v1476, v1488, v1493, v1498, v1503, v1509);
  *&v620 = 0.0;
  v226 = 0;
  v955 = 0.0;
  value = 0;
LABEL_808:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v955 != 0.0)
  {
    CFRelease(*&v955);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (*&v620 != 0.0)
  {
    CFRelease(v620);
  }

  return v1776;
}

- (void)_waitForCIPreheatingToFinish
{
  if (self)
  {
    v2 = *(self + 1056);
    if (v2)
    {
      dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

      *(self + 1056) = 0;
    }
  }
}

- (void)_getInputRect:(uint64_t)rect outputRect:(uint64_t)outputRect inputShiftAppliedInOutputRect:(uint64_t)inOutputRect toTransferPixelBuffer:(uint64_t)buffer rect:(uint64_t)a7 intoPixelBufferDimensions:(uint64_t)dimensions rect:(double)a9 withInputShift:(double)self0 shiftOutsideBoundingRectAllowed:(double)self1 ignoreBounds:(double)self2 scale:(double)self3 forFinalOutput:(double)self4
{
  OUTLINED_FUNCTION_135();
  v114 = v35;
  if (!v20)
  {
LABEL_48:
    OUTLINED_FUNCTION_68();
    return;
  }

  v36 = v24;
  if (v24)
  {
    v37 = v27;
    v38 = v26;
    v39 = v25;
    v40 = v23;
    v41 = v22;
    v42 = v34;
    v43 = v33;
    v44 = v21;
    v45 = v32;
    v46 = *(v20 + 1685);
    v108 = v28;
    v109 = v29;
    v110 = v30;
    rect = v31;
    FigCaptureMetadataUtilitiesScaleRect2D(v28, v29, v30, v31, a19);
    v48 = v47;
    v50 = v49;
    v53 = v114 + OUTLINED_FUNCTION_100_0(v43 - v47) + a17 * a19;
    v107 = a19;
    v54 = v45 + (v42 - v51) * v52 + a18 * a19;
    rect_24 = v42;
    if (v37)
    {
      v55 = v50;
      v56 = v48;
      v57 = v54;
      v58 = v53;
    }

    else
    {
      OUTLINED_FUNCTION_121();
      v116 = CGRectIntersection(v115, v121);
      if (v38)
      {
        psn_conformRectForMSR420vfBoundedByDimensions(v116.origin.x, v116.origin.y, v116.size.width, v116.size.height, v39, a20);
      }

      else
      {
        OUTLINED_FUNCTION_121();
        v59 = psn_conformRectForMSR420vfBoundedByRect(1, v63, v64, v65, v66, v67, v68, v69, v70);
      }

      v58 = v59;
      v57 = v60;
      v56 = v61;
      v55 = v62;
    }

    v71 = v108 + v110 * ((v58 - v53) / v48);
    v72 = v109 + rect * ((v57 - v54) / v50);
    v73 = v110 * (v56 / v48);
    v74 = rect * (v55 / v50);
    if (v37)
    {
      if ((v46 & 1) == 0)
      {
        v75 = OUTLINED_FUNCTION_51_2();
        acpr_conformRectForMSR420vf(v75, v76, v77, v78);
        OUTLINED_FUNCTION_119();
      }

      goto LABEL_42;
    }

    v79 = v58;
    if (v38)
    {
      CVPixelBufferGetWidth(v36);
      v80 = OUTLINED_FUNCTION_111();
      Height = CVPixelBufferGetHeight(v80);
      if (v46)
      {
        if (v73 <= v38)
        {
          v82 = v73;
        }

        else
        {
          v82 = v38;
        }

        if (v82 >= 0.0)
        {
          v73 = v82;
        }

        else
        {
          v73 = 0.0;
        }

        v83 = Height;
        if (v74 <= Height)
        {
          v84 = v74;
        }

        else
        {
          v84 = Height;
        }

        if (v84 >= 0.0)
        {
          v74 = v84;
        }

        else
        {
          v74 = 0.0;
        }

        v85 = v38 - v73;
        if (v85 >= v71)
        {
          v85 = v71;
        }

        if (v85 >= 0.0)
        {
          v71 = v85;
        }

        else
        {
          v71 = 0.0;
        }

        v86 = v83 - v74;
        if (v83 - v74 >= v72)
        {
          v86 = v72;
        }

        if (v86 >= 0.0)
        {
          v72 = v86;
        }

        else
        {
          v72 = 0.0;
        }

        goto LABEL_41;
      }

      v95 = v38 | (Height << 32);
      v96 = OUTLINED_FUNCTION_51_2();
      psn_conformRectForMSR420vfBoundedByDimensions(v96, v97, v98, v99, v95, 0);
    }

    else
    {
      v87.n128_f64[0] = OUTLINED_FUNCTION_51_2();
      if (v46)
      {
        psn_rectBoundedByRect(v87.n128_f64[0], v88, v89, v90, v91, v92, v93, v94);
      }

      else
      {
        psn_conformRectForMSR420vfBoundedByRect(0, v87, v88, v89, v90, v91, v92, v93, v94);
      }
    }

    OUTLINED_FUNCTION_119();
LABEL_41:
    v58 = v79;
LABEL_42:
    if (v44)
    {
      *v44 = v71;
      v44[1] = v72;
      v44[2] = v73;
      v44[3] = v74;
    }

    if (v41)
    {
      *v41 = v58;
      v41[1] = v57;
      v41[2] = v56;
      v41[3] = v55;
    }

    if (v40)
    {
      v117.origin.x = v58;
      v117.origin.y = v57;
      v117.size.width = v56;
      v117.size.height = v55;
      recta = v58;
      MidX = CGRectGetMidX(v117);
      v118.origin.x = OUTLINED_FUNCTION_15_9();
      v118.size.height = rect_24;
      v101 = CGRectGetMidX(v118);
      v119.size.height = v55;
      v102 = MidX - v101;
      v119.origin.x = recta;
      v119.origin.y = v57;
      v119.size.width = v56;
      MidY = CGRectGetMidY(v119);
      v120.origin.x = OUTLINED_FUNCTION_15_9();
      v120.size.height = rect_24;
      v104 = CGRectGetMidY(v120);
      *v40 = v102 / v107;
      v40[1] = (MidY - v104) / v107;
    }

    goto LABEL_48;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_68();

  FigDebugAssert3(v105);
}

- (void)_transferPixelBuffer:(CVPixelBufferRef)pixelBuffer rect:(int)rect intoPixelBuffer:(_OWORD *)buffer rect:(int)a6 isFinalOutput:(int)output withInputShift:(int)shift scale:(uint64_t)scale inputSourceRectOut:(uint64_t)self0
{
  if (self)
  {
    v16 = *(MEMORY[0x1E695F058] + 16);
    v50 = *MEMORY[0x1E695F058];
    v51 = v16;
    v44 = v16;
    v45 = v50;
    v48 = v50;
    v49 = v16;
    v47.i32[0] = CVPixelBufferGetWidth(pixelBuffer);
    v47.i32[1] = CVPixelBufferGetHeight(pixelBuffer);
    if (rect)
    {
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v47, *(self + 136));
    }

    OUTLINED_FUNCTION_112_1();
    [(BWPreviewStitcherNode *)v17 _getInputRect:v18 outputRect:v19 inputShiftAppliedInOutputRect:v20 toTransferPixelBuffer:v21 rect:v22 intoPixelBufferDimensions:v23 rect:v24 withInputShift:v25 shiftOutsideBoundingRectAllowed:v26 ignoreBounds:v27 scale:v28 forFinalOutput:v29, v30, v31, v32, *&scale, *&out, *&a11, rect];
    if (buffer)
    {
      v33 = v49;
      *buffer = v48;
      buffer[1] = v33;
    }

    if (rect)
    {
      v52.origin.y = *(&v50 + 1);
      v52.size = v51;
      v34 = *(self + 432);
      *&v46.a = *(self + 416);
      *&v46.c = v34;
      *&v46.tx = *(self + 448);
      *&v52.origin.x = v50;
      CGRectApplyAffineTransform(v52, &v46);
      OUTLINED_FUNCTION_8_3();
      *&v50 = v35;
      *(&v50 + 1) = v36;
      v51.width = v37;
      v51.height = v38;
    }

    v39 = VTPixelRotationSessionRotateSubImage();
    if (v39)
    {
      v40 = v39;
      fig_log_get_emitter();
      LODWORD(v41) = v40;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v11, v42, v43, LODWORD(v44.width), *&v44.height, v45, DWORD2(v45));
    }
  }
}

- (void)_compensateForMissingFOVUsingPixelBuffer:(__CVBuffer *)buffer sourceRect:(int)rect destinationContainingRect:(int)containingRect destinationInsetRect:(int)insetRect outputPixelBuffer:(int)pixelBuffer
{
  if (result)
  {
    v28 = result;
    CVPixelBufferGetWidth(pixelBuffer);
    v29 = CVPixelBufferGetHeight(pixelBuffer) - (a10 + a12);
    CVPixelBufferGetWidth(buffer);
    CVPixelBufferGetHeight(buffer);
    v229 = *MEMORY[0x1E695F9C0];
    v230 = MEMORY[0x1E695E118];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v230 forKeys:&v229 count:1];
    v31 = [objc_msgSend(MEMORY[0x1E695F658] imageWithCVPixelBuffer:pixelBuffer options:{v30), "imageByCroppingToRect:", a9, v29, a11, a12}];
    v169 = *(MEMORY[0x1E695EFD0] + 16);
    v179 = *MEMORY[0x1E695EFD0];
    *&v227.a = *MEMORY[0x1E695EFD0];
    *&v227.c = v169;
    v157 = *(MEMORY[0x1E695EFD0] + 32);
    *&v227.tx = v157;
    CGAffineTransformRotate(&v228, &v227, -1.57079633);
    v32 = [v31 imageByApplyingTransform:&v228];
    [v32 extent];
    v33 = [v32 imageByCroppingToRect:?];
    [v33 extent];
    v35 = *&a19 / v34;
    [v33 extent];
    v37 = *&a20 / v36;
    if (v35 <= v37)
    {
      v38 = *&a20 / v36;
    }

    else
    {
      v38 = v35;
    }

    *&v228.a = v179;
    *&v228.c = v169;
    *&v228.tx = v157;
    [v33 extent];
    v39 = -CGRectGetMidX(v231);
    [v33 extent];
    MidY = CGRectGetMidY(v232);
    Translation = CGAffineTransformMakeTranslation(&v227, v39, -MidY);
    OUTLINED_FUNCTION_128_1(Translation, v42, v43, v44, v45, v46, v47, v48, v157, v49, v129, v136, *&a15, *&a13, v157.n128_i64[0], v157.n128_i64[1], v169, *(&v169 + 1), v179, *(&v179 + 1), v189, v196, v201, v208, v213, v220, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, v179, *(&v179 + 1), v169, *(&v169 + 1), v50, *&t2.tx);
    Scale = CGAffineTransformMakeScale(&t2, v38, v38);
    v59 = OUTLINED_FUNCTION_12_11(Scale, v52, v53, v54, v55, v56, v57, v58, v130, v137, v144, v151, v158, v164, v170, v174, v180, v184, v190, v197, v202, v209, v214, v221, *&t1.a, *&t1.c, *&t1.tx, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v227.a);
    [v33 extent];
    MidX = CGRectGetMidX(v233);
    [v33 extent];
    v70 = CGRectGetMidY(v234);
    v71 = CGAffineTransformMakeTranslation(&t2, MidX, v70);
    v79 = OUTLINED_FUNCTION_12_11(v71, v72, v73, v74, v75, v76, v77, v78, v132, v139, v146, v153, v160, v166, v172, v176, v182, v186, v192, v199, v204, v211, v216, v223, *&t1.a, *&t1.c, *&t1.tx, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v227.a);
    v89 = [v33 imageByApplyingTransform:{OUTLINED_FUNCTION_60_3(v79, v80, v81, v82, v83, v84, v85, v86, v87, v133, v140, v147, v154, v161, v167, v173, v177, v183, v187, v193, v200, v205, v212, v217, v224, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v227.a, *&v227.c, v88).n128_f64[0]}];
    [v33 extent];
    v91 = *&v148 / v90;
    [v33 extent];
    v93 = a16 / v92;
    if (v91 <= v93)
    {
      v91 = a16 / v92;
    }

    *&v227.a = *&v162[32];
    *&v227.c = *&v162[16];
    *&v227.tx = *v162;
    [v33 extent];
    v94 = -CGRectGetMidX(v235);
    [v33 extent];
    v95 = CGRectGetMidY(v236);
    CGAffineTransformMakeTranslation(&t2, v94, -v95);
    *&t1.a = *&v162[32];
    *&t1.c = *&v162[16];
    *&t1.tx = *v162;
    CGAffineTransformConcat(&v227, &t1, &t2);
    v96 = CGAffineTransformMakeScale(&t1, v91, v91);
    OUTLINED_FUNCTION_65(v96, v97, v98, v99, v100, v101, v102, v103, v134, v141, v148, v155, *v162, *&v162[8], *&v162[24], *&v162[40], v194, v206, v218, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v227.a, *&v227.c, *&v227.tx);
    v227 = t2;
    [v33 extent];
    v104 = CGRectGetMidX(v237);
    [v33 extent];
    v105 = CGRectGetMidY(v238);
    v106 = CGAffineTransformMakeTranslation(&t1, v104, v105);
    OUTLINED_FUNCTION_65(v106, v107, v108, v109, v110, v111, v112, v113, v135, v142, v149, v156, v163, v168, v178, v188, v195, v207, v219, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v227.a, *&v227.c, *&v227.tx);
    v227 = t2;
    v114 = [v33 imageByApplyingTransform:&t2];
    [v89 imageByCompositingOverImage:v114];
    [OUTLINED_FUNCTION_111() extent];
    OUTLINED_FUNCTION_76_0();
    [v114 extent];
    OUTLINED_FUNCTION_8_3();
    v115 = OUTLINED_FUNCTION_13_11();
    v124 = psn_imageWithBlurredEdges(v116, 0, v115, v117, v118, v119, v120, v121, v122, v123, 0.0, 0.5);
    colorSpace = [v33 colorSpace];
    v126 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:buffer];
    [v126 setColorSpace:colorSpace];
    v127 = v28[123];
    [v20 extent];
    v128 = [v127 startTaskToRender:v124 fromRect:v126 toDestination:0 atPoint:? error:?];
    t2.a = 0.0;
    return [v128 waitUntilCompletedAndReturnError:&t2];
  }

  return result;
}

- (int32x2_t)_cameraTransitionPool
{
  if (result)
  {
    v1 = result;
    result = result[120];
    if (!result)
    {
      v8.i32[0] = [OUTLINED_FUNCTION_131() width];
      v8.i32[1] = [OUTLINED_FUNCTION_131() height];
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v8, v1[17].i32[0]);
      pixelFormat = [OUTLINED_FUNCTION_131() pixelFormat];
      if (pixelFormat == 1882468912)
      {
        v3 = 2016686640;
      }

      else
      {
        v3 = pixelFormat;
      }

      colorSpaceProperties = [OUTLINED_FUNCTION_131() colorSpaceProperties];
      v5 = +[BWMemoryPool sharedMemoryPool];
      v6 = v8;
      v7 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v7 setWidth:FigCaptureRoundFloatToMultipleOf(2, v6.i32[0])];
      [(BWVideoFormatRequirements *)v7 setHeight:FigCaptureRoundFloatToMultipleOf(2, v6.i32[1])];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:colorSpaceProperties];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      [OUTLINED_FUNCTION_8() setSupportedColorSpaceProperties:?];
      v9 = v7;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      v1[120] = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?], 3, @"BWPreviewStitcherNode camera transition pool", v5);
      v1[122] = v8;
      return v1[120];
    }
  }

  return result;
}

- (unsigned)_renderCameraTransitionRampToPixelBuffer:(__CVBuffer *)buffer bounds:(__CVBuffer *)bounds withWiderCameraPixelBuffer:(int)pixelBuffer narrowerCameraPixelBuffer:(int)cameraPixelBuffer zoomingIn:(int)in progress:(int)progress narrowerCameraBounds:(double)cameraBounds narrowerCameraShift:(double)self0 featherEdges:(double)self1 rampCameraTransition:(double)self2 renderEnhancedFeathering:(float)self3 narrowerCameraEdgeExpansionRamp:(double)self4 qsubToQsumEdgeOpacityRamp:(double)self5 qsubToQsumEdgeOpacityRampFromProgress:(double)self6 renderBrightnessCompensation:(double)self7
{
  if (result)
  {
    v32 = result;
    [(BWPreviewStitcherNode *)result _initCameraTransitionCIContextWithColorManagementEnabled:?];
    v74 = *MEMORY[0x1E695F9C0];
    v75 = MEMORY[0x1E695E118];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    featheringCopy = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:buffer options:v33];
    v35 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:bounds options:v33];
    colorSpace = [v35 colorSpace];
    transitionCopy = transition;
    v37 = CVPixelBufferGetHeight(buffer) - transition;
    Height = CVPixelBufferGetHeight(bounds);
    v39 = v37 - shift;
    if (progress)
    {
      v40 = Height - a20 - a18;
    }

    else
    {
      v40 = Height - a20;
    }

    if (progress)
    {
      v41 = v39;
    }

    else
    {
      v41 = v37;
    }

    v42 = [v35 imageByCroppingToRect:{compensation, v40, a19, a20}];
    CGAffineTransformMakeTranslation(&v73, a21, -a22);
    v43 = [v42 imageByApplyingTransform:&v73];
    if (a26)
    {
      LODWORD(v44) = 1.0;
      *&v45 = feathering;
      if (in)
      {
        featheringCopy = feathering;
      }

      else
      {
        featheringCopy = 1.0;
      }

      if ((pixelBuffer & 1) != 0 || (v32[331] & 1) != 0 || *(v32 + 128))
      {
        featheringCopy = [(BWPreviewStitcherNode *)v32 _applyBrightnessCompensationToImage:featheringCopy referenceImage:v43 bounds:v44 compensationLevel:v45, v46, v47, featheringCopy];
      }

      else
      {
        [(BWPreviewStitcherNode *)v32 _applyBrightnessCompensationToImage:v43 referenceImage:featheringCopy bounds:v44 compensationLevel:v45, v46, v47, featheringCopy];
      }
    }

    OUTLINED_FUNCTION_33();
    if (v49)
    {
      [MEMORY[0x1E695F610] redColor];
      [OUTLINED_FUNCTION_4() imageWithColor:?];
    }

    if (progress)
    {
      cameraPixelBufferCopy2 = cameraPixelBuffer;
      v51 = a19;
      if ((in & ~cameraPixelBuffer & 1) == 0)
      {
        v52 = transitionCopy;
        if (transitionCopy > a20)
        {
          OUTLINED_FUNCTION_33();
          if (v49)
          {
            v53 = OUTLINED_FUNCTION_36_4();
            [(BWPreviewStitcherNode *)v54 _rectangularFeatheredImageWithNarrowerCameraImage:v55 widerCameraImage:v56 narrowerCameraClipRect:pixelBuffer zoomingIn:0 progress:a23 rampCameraTransition:v53 narrowerCameraEdgeExpansionRamp:v57, a19, a20, feathering];
            v58 = OUTLINED_FUNCTION_36_4();
            [v59 imageByCroppingToRect:v58];
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      cameraPixelBufferCopy2 = cameraPixelBuffer;
      v51 = a19;
    }

    v52 = transitionCopy;
LABEL_28:
    v60 = OUTLINED_FUNCTION_36_4();
    v64 = [(BWPreviewStitcherNode *)v61 _featheredImageWithNarrowerCameraImage:v62 widerCameraImage:featheringCopy narrowerCameraClipRect:pixelBuffer widerCameraClipRect:cameraPixelBufferCopy2 zoomingIn:in progress:progress featherEdges:a23 rampCameraTransition:v60 renderEnhancedFeathering:v63 narrowerCameraEdgeExpansionRamp:v51 qsubToQsumEdgeOpacityRamp:a20 qsubToQsumEdgeOpacityRampFromProgress:cameraBounds, v41, edges, v52, feathering, a24, a25];
    v65 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a2];
    [v65 setColorSpace:colorSpace];
    v73.a = 0.0;
    return [objc_msgSend(*(v32 + 123) startTaskToRender:v64 fromRect:v65 toDestination:0 atPoint:cameraBounds error:{v41, edges, v52, cameraBounds, v41), "waitUntilCompletedAndReturnError:", &v73}];
  }

  return result;
}

- (void)_renderHDRPixelBufferToSDR:(uint64_t)r toOutputPixelBuffer:(float)buffer progress:
{
  if (result)
  {
    v7 = result;
    v9 = MEMORY[0x1E695E118];
    v10 = *MEMORY[0x1E695FA28];
    v28[0] = *MEMORY[0x1E695F9C0];
    v8 = v28[0];
    v28[1] = v10;
    v29[0] = MEMORY[0x1E695E118];
    v29[1] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v26 = v8;
    v27 = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a2 options:v12];
    [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a2 options:v11];
    v14 = OUTLINED_FUNCTION_111();
    Width = CVPixelBufferGetWidth(v14);
    Height = CVPixelBufferGetHeight(a2);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_55_2();
    v21 = [(BWPreviewStitcherNode *)v7 _featheredImageWithNarrowerCameraImage:v11 widerCameraImage:v13 narrowerCameraClipRect:0 widerCameraClipRect:0 zoomingIn:1 progress:0 featherEdges:0 rampCameraTransition:v17 renderEnhancedFeathering:v18 narrowerCameraEdgeExpansionRamp:Width qsubToQsumEdgeOpacityRamp:Height qsubToQsumEdgeOpacityRampFromProgress:v19, v20, Width, Height, buffer, 0, 0.0];
    v22 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:r];
    [v13 colorSpace];
    [OUTLINED_FUNCTION_4() setColorSpace:?];
    v25 = 0;
    v23 = OUTLINED_FUNCTION_58_4();
    return [objc_msgSend(v24 startTaskToRender:v21 fromRect:v22 toDestination:0 atPoint:v23) error:{"waitUntilCompletedAndReturnError:", &v25}];
  }

  return result;
}

- (void)_initCameraTransitionCIContextWithColorManagementEnabled:(void *)enabled
{
  if (enabled && !enabled[123])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E695F910]];
    [v9 setObject:v4 forKeyedSubscript:*MEMORY[0x1E695F870]];
    [v9 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695F7F0]];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695F848]];
    [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
    [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithUnsignedLongLong:"), @"kCIContextIOSurfaceMemoryPoolID"}];
    if ((a2 & 1) == 0)
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v9 setObject:null forKeyedSubscript:*MEMORY[0x1E695F868]];
    }

    v6 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
    v7 = enabled[231];
    if (!v7)
    {
      v7 = OUTLINED_FUNCTION_132_0("com.apple.coremedia.previewsink.metal-completion-queue");
      enabled[231] = v7;
    }

    [v6 setCompletionQueue:v7];
    v8 = enabled[232];
    if (!v8)
    {
      v8 = OUTLINED_FUNCTION_132_0("com.apple.coremedia.previewsink.metal-submission-queue");
      enabled[232] = v8;
    }

    [v6 setSubmissionQueue:v8];
    enabled[123] = [MEMORY[0x1E695F620] contextWithMTLCommandQueue:v6 options:v9];
  }
}

- (double)_scaleFactorAppliedForPixelBuffer:(void *)buffer usedSourceRect:(double)result primaryCaptureRectAspectRatio:(double)ratio metadata:(double)metadata
{
  if (!self)
  {
    return 0.0;
  }

  if (a2)
  {
    v17 = *ymmword_1AD046EE0;
    CGRectMakeWithDictionaryRepresentation([buffer objectForKeyedSubscript:*off_1E798A5C8], &v17);
    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v17.origin.x, v17.origin.y, v17.size.width, v17.size.height, Width, Height);
    result = 1.0;
    if (v13 / v14 < a8)
    {
      result = a8 / (v13 / v14);
    }

    v15 = a7 * result;
    v16 = vabdd_f64(a7 * result, v14);
    LODWORD(result) = 1.0;
    if (v16 > 2.0)
    {
      result = v15 / v14;
      *&result = v15 / v14;
    }
  }

  else
  {
    LODWORD(result) = 1.0;
  }

  return result;
}

- (void)_callDelegateWithAppliedWiderCameraShift:(CVPixelBufferRef)shift narrowerCameraShift:(int)cameraShift widerCameraScaleFactor:(int)factor narrowerCameraScaleFactor:(int)scaleFactor widerCameraPixelBuffer:(int)buffer narrowerCameraPixelBuffer:(int)pixelBuffer widerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)zoomFactor narrowerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)self0 widerCameraPortType:narrowerCameraPortType:inSuperWideMacroMode:widerCameraShiftAtBaseZoom:
{
  if (!self || (*(self + 1746) & 1) != 0 || (*(self + 472) & 1) != 0)
  {
    OUTLINED_FUNCTION_127();
  }

  else
  {
    if (pixelBuffer)
    {
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
    }

    if (shift)
    {
      CVPixelBufferGetWidth(shift);
      CVPixelBufferGetHeight(shift);
    }

    OUTLINED_FUNCTION_127();

    [v12 previewStitcher:? didApplyWiderCameraShift:? widerCameraScaleFactor:? forWiderCameraPortType:? narrowerCameraShift:? narrowerCameraScaleFactor:? forNarrowerCameraPortType:? inSuperWideMacroMode:? widerCameraShiftAtBaseZoom:?];
  }
}

- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)needed
{
  if (needed)
  {
    intValue = [OUTLINED_FUNCTION_71_0(a2) intValue];
    if (*(needed + 136) || (*(needed + 140) & 1) != 0)
    {
      v5 = 0;
      if (!intValue)
      {
        return;
      }
    }

    else
    {
      v5 = *(needed + 141) ^ 1;
      if (!intValue)
      {
        return;
      }
    }

    if ((v5 & 1) == 0)
    {
      v12 = 0;
      v6 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(intValue, &v12);
      v11 = 0;
      v7 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(*(needed + 136), *(needed + 140), *(needed + 141), &v11);
      if (v12 != v11 && (v7 == 270 || v7 == 90))
      {
        v6 += 180;
      }

      v8 = v12 != v11;
      v9 = FigCaptureNormalizeAngle(v6 - v7);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureExifOrientationFromRotationDegreesAndMirroring(v9, v8)}];
      CMSetAttachment(a2, @"UprightExifOrientation", v10, 1u);
    }
  }
}

- (uint64_t)_featheredImageWithNarrowerCameraImage:(uint64_t)image widerCameraImage:(int)cameraImage narrowerCameraClipRect:(int)rect widerCameraClipRect:(int)clipRect zoomingIn:(int)in progress:(void *)progress featherEdges:(double)edges rampCameraTransition:(double)self0 renderEnhancedFeathering:(CGFloat)self1 narrowerCameraEdgeExpansionRamp:(CGFloat)self2 qsubToQsumEdgeOpacityRamp:(double)self3 qsubToQsumEdgeOpacityRampFromProgress:(double)self4
{
  if (!self)
  {
    return 0;
  }

  if (!progress)
  {
    if (cameraImage)
    {
      v35 = *(self + 1100);
      v36 = *(self + 1108);
      if ((in & 1) == 0)
      {
        v39 = *(self + 1104);
        v40 = *(self + 1112);
        goto LABEL_29;
      }

      v37 = &OBJC_IVAR___BWPreviewStitcherNode__zoomInFeatheringInnerRadiusInterim;
      v38 = &OBJC_IVAR___BWPreviewStitcherNode__zoomInFeatheringOuterRadiusInterim;
    }

    else
    {
      v35 = *(self + 1116);
      v36 = *(self + 1124);
      v37 = &OBJC_IVAR___BWPreviewStitcherNode__zoomOutFeatheringInnerRadiusEnd;
      v38 = &OBJC_IVAR___BWPreviewStitcherNode__zoomOutFeatheringOuterRadiusEnd;
    }

    v39 = *(self + *v37);
    v40 = *(self + *v38);
    if (a18 && in)
    {
      v41 = a19;
      if (a17 <= 1.0)
      {
        v42 = a17;
      }

      else
      {
        v42 = 1.0;
      }

      if (v42 < 0.0)
      {
        v42 = 0.0;
      }

      v43 = v42 + 1.0;
      if (a19 > 1.0)
      {
        v41 = 1.0;
      }

      if (v41 < 0.0)
      {
        v41 = 0.0;
      }

      v32 = (v35 + ((v39 - v35) * v41)) / v43;
      v34 = (v36 + ((v40 - v36) * v41)) / v43;
      goto LABEL_34;
    }

LABEL_29:
    v44 = 1.0;
    if (a17 <= 1.0)
    {
      v44 = a17;
    }

    if (v44 < 0.0)
    {
      v44 = 0.0;
    }

    v32 = v35 + ((v39 - v35) * v44);
    v34 = v36 + ((v40 - v36) * v44);
    goto LABEL_34;
  }

  v27 = *(self + 1132);
  v28 = *(self + 1140);
  v29 = *(self + 1136);
  v30 = *(self + 1144);
  [progress currentValue];
  if (v31 > 1.0)
  {
    v31 = 1.0;
  }

  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  v32 = v27 + ((v28 - v27) * v31);
  [progress currentValue];
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v29 + ((v30 - v29) * v33);
LABEL_34:
  v170 = v34;
  if (clipRect)
  {
    v45 = 1.0 - a17;
    if (cameraImage)
    {
      v45 = a17;
    }

    if (rect)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v45;
    }

    v47 = v45;
  }

  else
  {
    v47 = 1.0;
    v46 = 0.0;
    if (a18 && in)
    {
      [a18 currentValue];
      v46 = v48;
    }
  }

  radialGradientFilter = [MEMORY[0x1E695F648] radialGradientFilter];
  v233.origin.x = OUTLINED_FUNCTION_120();
  v233.size.width = feathering;
  v233.size.height = ramp;
  MidX = CGRectGetMidX(v233);
  v234.origin.x = OUTLINED_FUNCTION_120();
  v234.size.width = feathering;
  v234.size.height = ramp;
  [radialGradientFilter setCenter:{MidX, CGRectGetMidY(v234)}];
  if (feathering >= ramp)
  {
    featheringCopy = ramp;
  }

  else
  {
    featheringCopy = feathering;
  }

  v52 = featheringCopy * v32 * 0.5;
  *&v52 = v52;
  [radialGradientFilter setRadius0:v52];
  v53 = featheringCopy * v170 * 0.5;
  *&v53 = v53;
  [radialGradientFilter setRadius1:v53];
  v54 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  [MEMORY[0x1E695F610] colorWithRed:v54 green:v47 blue:v47 colorSpace:v47];
  [OUTLINED_FUNCTION_7() setColor0:?];
  [MEMORY[0x1E695F610] colorWithRed:v54 green:v46 blue:v46 colorSpace:v46];
  [OUTLINED_FUNCTION_7() setColor1:?];
  outputImage = [radialGradientFilter outputImage];
  CGColorSpaceRelease(v54);
  v56 = fmax(feathering / featheringCopy * 0.949999988, 1.0);
  v57 = fmax(ramp / featheringCopy * 0.949999988, 1.0);
  v161 = *(MEMORY[0x1E695EFD0] + 16);
  v230 = *MEMORY[0x1E695EFD0];
  v171 = v230;
  v231 = v161;
  v232 = *(MEMORY[0x1E695EFD0] + 32);
  v152 = v232;
  [radialGradientFilter center];
  v59 = -v58;
  [radialGradientFilter center];
  Translation = CGAffineTransformMakeTranslation(&v229, v59, -v60);
  OUTLINED_FUNCTION_128_1(Translation, v62, v63, v64, v65, v66, v67, v68, v152, v69, v118, v123, *&opacityRamp, *&fromProgress, *&a15, *&a16, v152.n128_i64[0], v152.n128_i64[1], v161, *(&v161 + 1), v171.n128_i64[0], v171.n128_i64[1], *&feathering, *&ramp, *&transition, *&edges, v204, v209, v212, v217, v220, v225, v171.n128_i64[0], v171.n128_i64[1], v161, *(&v161 + 1), v171, *&v228.tx);
  Scale = CGAffineTransformMakeScale(&v228, v56, v57);
  v78 = OUTLINED_FUNCTION_12_11(Scale, v71, v72, v73, v74, v75, v76, v77, v119, v124, v129, v135, v141, v147, v153, v157, v162, v166, v172, v176, v181, v187, v193, v199, v205, v213, v221, *&v228.a, *&v228.b, *&v228.c, *&v228.d, *&v228.tx, *&v228.ty, *&v229.a);
  [radialGradientFilter center];
  v89 = v88;
  [radialGradientFilter center];
  v91 = CGAffineTransformMakeTranslation(&v228, v89, v90);
  v99 = OUTLINED_FUNCTION_12_11(v91, v92, v93, v94, v95, v96, v97, v98, v121, v126, v131, v137, v143, v149, v155, v159, v164, v168, v174, v178, v183, v189, v195, v201, v207, v215, v223, *&v228.a, *&v228.b, *&v228.c, *&v228.d, *&v228.tx, *&v228.ty, *&v229.a);
  [outputImage imageByApplyingTransform:{OUTLINED_FUNCTION_60_3(v99, v100, v101, v102, v103, v104, v105, v106, v107, v122, v127, v132, v138, v144, v150, v156, v160, v165, v169, v175, v179, v184, v190, v196, v202, v208, v211, v216, v219, v224, v227, *&v228.a, *&v228.b, *&v228.c, *&v228.d, *&v228.tx, *&v228.ty, *&v229.a, *&v229.c, v108).n128_f64[0]}];
  v109 = OUTLINED_FUNCTION_120();
  v111 = [v110 imageByCroppingToRect:v109];
  blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [blendWithMaskFilter setInputImage:a2];
  [blendWithMaskFilter setMaskImage:v111];
  [blendWithMaskFilter setBackgroundImage:image];
  outputImage2 = [blendWithMaskFilter outputImage];
  OUTLINED_FUNCTION_33();
  if (v114)
  {
    OUTLINED_FUNCTION_33();
    if (v114)
    {
      if ((*(self + 1572) & 1) == 0)
      {
        v115 = *(self + 1628);
        [*(self + 1536) currentValue];
        return psn_imageWithBlurredEdges(outputImage2, *(self + 1632), v203, v197, v185, v191, v133, v139, v145, v151, v115, v116);
      }
    }
  }

  return outputImage2;
}

- (void)_coreImageMetalLibraryURL
{
  if (result)
  {
    v2 = result;
    result = result[124];
    if (!result)
    {
      objc_opt_class();
      result = [objc_msgSend(OUTLINED_FUNCTION_4() "bundleForClass:{"URLForResource:withExtension:", @"BWPreviewStitcherNode.ci", @"metallib"}")];
      v2[124] = result;
    }
  }

  return result;
}

- (uint64_t)_applyBrightnessCompensationToImage:(void *)image referenceImage:(double)referenceImage bounds:(double)bounds compensationLevel:(double)level
{
  if (!self)
  {
    return 0;
  }

  v10 = a2;
  _coreImageMetalLibraryURL = [(BWPreviewStitcherNode *)self _coreImageMetalLibraryURL];
  v42 = 0;
  [MEMORY[0x1E695F618] cachedKernelWithFunctionName:@"TwoY" fromMetalLibrary:_coreImageMetalLibraryURL error:&v42];
  if (!v42)
  {
    [MEMORY[0x1E695F618] cachedKernelWithFunctionName:@"ComputeGamma" fromMetalLibrary:_coreImageMetalLibraryURL error:&v42];
    if (!v42)
    {
      [MEMORY[0x1E695F618] cachedKernelWithFunctionName:@"AdjustGamma" fromMetalLibrary:_coreImageMetalLibraryURL error:&v42];
      if (!v42)
      {
        memset(&v41, 0, sizeof(v41));
        CGAffineTransformMakeScale(&v41, 0.25, 0.25);
        v13 = [v10 imageByApplyingTransform:OUTLINED_FUNCTION_88().n128_f64[0] highQualityDownsample:?];
        v14 = [image imageByApplyingTransform:OUTLINED_FUNCTION_88().n128_f64[0] highQualityDownsample:?];
        [v13 extent];
        OUTLINED_FUNCTION_21_5();
        [v14 extent];
        OUTLINED_FUNCTION_8_3();
        OUTLINED_FUNCTION_32_2();
        v44 = CGRectIntersection(v43, v45);
        x = v44.origin.x;
        y = v44.origin.y;
        width = v44.size.width;
        height = v44.size.height;
        v44.origin.x = *(self + 1188);
        v19 = v44.size.width * v44.origin.x;
        v44.origin.x = v44.size.height * v44.origin.x;
        v20 = v44.origin.x;
        v40[0] = v13;
        v40[1] = v14;
        *&v44.origin.x = v44.size.width;
        v40[2] = [MEMORY[0x1E696AD98] numberWithFloat:v44.origin.x];
        *&v21 = height;
        v40[3] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        *&v22 = x;
        v40[4] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
        *&v23 = y;
        v40[5] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
        *&v24 = v19;
        v40[6] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        *&v25 = v20;
        v40[7] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
        v26 = [OUTLINED_FUNCTION_7() applyWithExtent:x arguments:{y, width, height}];
        v38 = *MEMORY[0x1E695FAA8];
        v27 = MEMORY[0x1E695F688];
        [v26 extent];
        v39 = [v27 vectorWithCGRect:?];
        v28 = [v26 imageByApplyingFilter:@"CIAreaAverage" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v39, &v38, 1)}];
        *&width = width * height / (width * height - (width + v19 * -2.0) * (height + v20 * -2.0));
        [v28 extent];
        OUTLINED_FUNCTION_76_0();
        v37[0] = v28;
        LODWORD(v29) = LODWORD(width);
        v37[1] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
        OUTLINED_FUNCTION_8();
        v30 = OUTLINED_FUNCTION_13_11();
        v32 = [objc_msgSend(v31 applyWithExtent:v30) arguments:"imageByClampingToExtent"];
        [v10 extent];
        OUTLINED_FUNCTION_21_5();
        v36[0] = v10;
        v36[1] = v32;
        *&v33 = a8;
        v36[2] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_32_2();
        return [v34 applyWithExtent:? arguments:?];
      }
    }
  }

  return v10;
}

- (char)_rectangularFeatheredImageWithNarrowerCameraImage:(uint64_t)image widerCameraImage:(int)cameraImage narrowerCameraClipRect:(int)rect zoomingIn:(void *)in progress:(CGFloat)progress rampCameraTransition:(CGFloat)transition narrowerCameraEdgeExpansionRamp:(CGFloat)ramp
{
  if (result)
  {
    v20 = result;
    if (a11 <= 1.0)
    {
      v21 = a11;
    }

    else
    {
      v21 = 1.0;
    }

    v22 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomOutStartSigma;
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    if (cameraImage)
    {
      v22 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomInStartSigma;
      v23 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomInEndSigma;
    }

    else
    {
      v23 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomOutEndSigma;
    }

    v24 = *&result[*v22];
    v25 = v24 + ((*&result[*v23] - v24) * v21);
    if (in)
    {
      [in currentValue];
      v25 = OUTLINED_FUNCTION_46_3(v26) * v25;
    }

    v27 = v25 * *(v20 + 292);
    v28 = 1.0 - a11;
    if (cameraImage)
    {
      v28 = a11;
    }

    v29 = v28;
    blurredRectangleGeneratorFilter = [MEMORY[0x1E695F648] blurredRectangleGeneratorFilter];
    v37.origin.x = progress;
    v37.origin.y = transition;
    v37.size.width = ramp;
    v37.size.height = a10;
    v38 = CGRectInset(v37, v27, v27);
    [blurredRectangleGeneratorFilter setExtent:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
    *&v31 = v25;
    [blurredRectangleGeneratorFilter setSigma:v31];
    v32 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v33 = 1.0;
    if (rect)
    {
      v33 = v29;
    }

    [blurredRectangleGeneratorFilter setColor:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:colorSpace:", v32, v33, v33, v33)}];
    outputImage = [blurredRectangleGeneratorFilter outputImage];
    if (v32)
    {
      CFRelease(v32);
    }

    blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
    [blendWithMaskFilter setInputImage:a2];
    [blendWithMaskFilter setMaskImage:outputImage];
    [blendWithMaskFilter setBackgroundImage:image];

    return [blendWithMaskFilter outputImage];
  }

  return result;
}

void __49__BWPreviewStitcherNode__preheatCIRenderingAsync__block_invoke(uint64_t a1)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [(int32x2_t *)[(BWPreviewStitcherNode *)*(a1 + 32) _cameraTransitionPool] newPixelBuffer];
  v12 = [(int32x2_t *)[(BWPreviewStitcherNode *)*(a1 + 32) _cameraTransitionPool] newPixelBuffer];
  v13 = [(int32x2_t *)[(BWPreviewStitcherNode *)*(a1 + 32) _cameraTransitionPool] newPixelBuffer];

  *(*(a1 + 32) + 968) = 0;
  v14 = *(a1 + 32);
  if (v14[1291] == 1 && v14[1833] == 1)
  {
    [(BWPreviewStitcherNode *)v14 _renderHDRPixelBufferToSDR:v12 toOutputPixelBuffer:v13 progress:0.5];
    v14 = *(a1 + 32);
  }

  if (v14[1290] == 1)
  {
    VTFillPixelBufferWithBlack();
    VTFillPixelBufferWithBlack();
    VTFillPixelBufferWithBlack();
  }

  v15 = psn_pixelBufferRect(v13);
  FigCaptureMetadataUtilitiesScaleRect2D(v15, v16, v17, v18, 0.9);
  OUTLINED_FUNCTION_2_3();
  v19 = psn_pixelBufferRect(v13);
  FigCaptureMetadataUtilitiesScaleRect2D(v19, v20, v21, v22, 0.8);
  OUTLINED_FUNCTION_26_2();
  v23 = OUTLINED_FUNCTION_3();
  acpr_conformRectForMSR420vf(v23, v24, v25, v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  acpr_conformRectForMSR420vf(v27, v28, v29, v30);
  OUTLINED_FUNCTION_26_2();
  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = *(v31 + 1185);
  }

  else
  {
    v32 = 0;
  }

  v77 = v32 & 1;
  v75 = *MEMORY[0x1E695EFF8];
  v76 = *(MEMORY[0x1E695EFF8] + 8);
  v33 = OUTLINED_FUNCTION_3();
  [(BWPreviewStitcherNode *)v34 _renderCameraTransitionRampToPixelBuffer:v13 bounds:v11 withWiderCameraPixelBuffer:v12 narrowerCameraPixelBuffer:1 zoomingIn:1 progress:1 narrowerCameraBounds:v35 narrowerCameraShift:v33 featherEdges:v36 rampCameraTransition:v37 renderEnhancedFeathering:v38 narrowerCameraEdgeExpansionRamp:v39 qsubToQsumEdgeOpacityRamp:v40 qsubToQsumEdgeOpacityRampFromProgress:v41 renderBrightnessCompensation:v42, v5, v6, v7, v8, v75, v76, 0, 0, 0.0, v77];
  v43 = *(a1 + 32);
  if (*(v43 + 1656) == 1)
  {
    v44 = OUTLINED_FUNCTION_3();
    psn_blurPixelBufferBorder(v45, v46, v44, v47, v48, v49, v50);
    v43 = *(a1 + 32);
  }

  if (*(v43 + 1149) != 1)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v51 = OUTLINED_FUNCTION_3();
  v56 = FigCaptureMetadataUtilitiesScaleRect2D(v51, v52, v53, v54, v55);
  v73 = v57;
  v74 = v58;
  v71 = *&v56;
  v72 = v59;
  OUTLINED_FUNCTION_73();
  [(BWPreviewStitcherNode *)v60 _compensateForMissingFOVUsingPixelBuffer:v61 sourceRect:v13 destinationContainingRect:v62 destinationInsetRect:v63 outputPixelBuffer:v64, v65, v66, v67, v68, v69, v70, v1, v2, v3, v4, v71, v72, v73, v74];
  if (v11)
  {
LABEL_12:
    CFRelease(v11);
  }

LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  objc_autoreleasePoolPop(v10);
}

- (uint64_t)_cameraDisplayTransitionFrameCountForCameraFallbackChange:(float)change currentFrameRate:
{
  if (!self)
  {
    return 0;
  }

  displaysWidestCameraOnly = [self displaysWidestCameraOnly];
  if (a2)
  {
    if (*(self + 1575) != 1 || (*(self + 944) & 1) != 0 || *(self + 1572) == *(self + 1544))
    {
      if (*(self + 1491) == 1)
      {
        v7 = 22;
        if (*(self + 944) == 1)
        {
          if (*(self + 1488) == *(self + 1489))
          {
            v7 = 22;
          }

          else
          {
            v7 = 15;
          }
        }
      }

      else
      {
        v7 = 22;
      }
    }

    else
    {
      v7 = 16;
    }

    if (*(self + 200) == 1 && ((displaysWidestCameraOnly | *(self + 1572)) & 1) == 0)
    {
      v11 = *(self + 944) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    if (*(self + 1488))
    {
      if (v11)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v11)
      {
LABEL_33:
        v13 = OUTLINED_FUNCTION_98_0();
        goto LABEL_34;
      }

      if (*(self + 944))
      {
        OUTLINED_FUNCTION_33();
        if (v12)
        {
          v13 = OUTLINED_FUNCTION_98_0();
          v20 = 1;
LABEL_34:
          v7 = [(BWPreviewStitcherNode *)v13 _scaleCameraTransitionFrameCount:v14 forCameraFallbackFromWideToTele:v20 recenteringShiftOffset:v15 recenteringStrength:v16 registrationShiftOffset:v17, v18, v19];
        }
      }
    }
  }

  else if ((*(self + 217) & 1) != 0 && *(self + 218) == 1 && *(self + 912) == *(self + 228))
  {
    v7 = 13;
  }

  else
  {
    v8 = *(self + 912);
    if (v8 == 0.0 || vabds_f32(1.0, *(self + 916) / v8) < 0.1)
    {
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_44_3();
      v7 = (v9 + v10);
    }

    else
    {
      v7 = 9;
    }
  }

  if (change <= 0.0)
  {
    return v7;
  }

  OUTLINED_FUNCTION_33();
  if (!v12)
  {
    return v7;
  }

  v21 = OUTLINED_FUNCTION_33_5();

  return FigCaptureRoundFloatToMultipleOf(v21, v22);
}

- (unint64_t)_scaleCameraTransitionFrameCount:(int)count forCameraFallbackFromWideToTele:(double)tele recenteringShiftOffset:(double)offset recenteringStrength:(float)strength registrationShiftOffset:(double)shiftOffset
{
  if (result)
  {
    v10 = (a8 - offset / (1.0 - strength)) * (a8 - offset / (1.0 - strength)) + (shiftOffset - tele / (1.0 - strength)) * (shiftOffset - tele / (1.0 - strength));
    v11 = sqrtf(v10);
    v12 = [objc_msgSend(objc_msgSend(*(result + 8) "primaryMediaProperties")];
    v13 = v11 / v12;
    v14 = 0.13;
    if (v13 <= 0.13)
    {
      v14 = v11 / v12;
    }

    if (v14 >= 0.035)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.035;
    }

    if (count)
    {
      if (v13 > 0.035)
      {
        v13 = 0.035;
      }

      if (v13 < 0.009)
      {
        v13 = 0.009;
      }

      v16 = v13 + -0.009;
      v17 = 0.026;
    }

    else
    {
      v16 = v15 + -0.035;
      v17 = 0.095;
    }

    return llroundf((((v16 / v17) * 1.3) + 1.0) * a2);
  }

  return result;
}

@end