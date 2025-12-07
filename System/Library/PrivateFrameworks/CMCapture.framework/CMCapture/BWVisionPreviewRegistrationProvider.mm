@interface BWVisionPreviewRegistrationProvider
- ($65FF825F6F0E105C2F171BD802D3B474)registerWiderCamera:(SEL)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(opaqueCMSampleBuffer *)scale isMacroScene:(double)scene macroTransitionType:(BOOL)type;
- (BWVisionPreviewRegistrationProvider)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor;
- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale;
- (double)_registrationShiftForLeftStrip:(CMSampleBufferRef)sbuf byRegisteringWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(int)narrowerCamera centerBias:(int)bias widerToNarrowerCameraScale:(int *)scale isMacroScene:(double)scene err:;
- (void)allocateResourcesWithVideoFormat:(id)format metalContext:(id)context;
- (void)cleanupResources;
- (void)dealloc;
@end

@implementation BWVisionPreviewRegistrationProvider

- (BWVisionPreviewRegistrationProvider)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor
{
  v11.receiver = self;
  v11.super_class = BWVisionPreviewRegistrationProvider;
  v6 = [(BWVisionPreviewRegistrationProvider *)&v11 init];
  if (v6)
  {
    if (type)
    {
      v7 = [type objectForKeyedSubscript:*off_1E798A0D0];
      if (v7)
      {
        if (!CGPointMakeWithDictionaryRepresentation([v7 objectForKeyedSubscript:*off_1E7989F10], (v6 + 24)))
        {
          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
          goto LABEL_19;
        }

        if (FigMotionSphereShiftStateInitialize(v6 + 10, type, 7))
        {
          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
          goto LABEL_19;
        }
      }

      v8 = [type objectForKeyedSubscript:*off_1E798A0C0];
      if (v8 && !CGPointMakeWithDictionaryRepresentation([v8 objectForKeyedSubscript:*off_1E7989F10], (v6 + 40)))
      {
        [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
      }

      else
      {
        v9 = [type objectForKeyedSubscript:*off_1E798A0D8];
        if (!v9)
        {
LABEL_11:
          *(v6 + 9) = factor;
          return v6;
        }

        if (CGPointMakeWithDictionaryRepresentation([v9 objectForKeyedSubscript:*off_1E7989F10], (v6 + 56)))
        {
          if (!FigMotionSphereShiftStateInitialize(v6 + 90, type, 7))
          {
            goto LABEL_11;
          }

          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
        }

        else
        {
          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
        }
      }
    }

    else
    {
      [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
    }

LABEL_19:

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  [(BWVisionPreviewRegistrationProvider *)self cleanupResources];
  v3.receiver = self;
  v3.super_class = BWVisionPreviewRegistrationProvider;
  [(BWVisionPreviewRegistrationProvider *)&v3 dealloc];
}

- (void)allocateResourcesWithVideoFormat:(id)format metalContext:(id)context
{
  if (!self->_registrationPool)
  {
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", FigCaptureRoundFloatToMultipleOf(4, [format width] * 0.3));
    -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", FigCaptureRoundFloatToMultipleOf(4, [format height]));
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureUncompressedPixelFormatForPixelFormat(objc_msgSend(format, "pixelFormat"))}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
    v9 = v6;
    self->_registrationPool = -[BWPixelBufferPool initWithVideoFormat:capacity:name:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]), 2, @"BWVisionPreviewRegistrationProvider");
  }

  registrationRotationSession = self->_registrationRotationSession;
  p_registrationRotationSession = &self->_registrationRotationSession;
  if (!registrationRotationSession)
  {
    VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], p_registrationRotationSession);
    VTSessionSetProperty(*p_registrationRotationSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
  }
}

- (void)cleanupResources
{
  self->_registrationPool = 0;
  registrationRotationSession = self->_registrationRotationSession;
  if (registrationRotationSession)
  {
    VTPixelRotationSessionInvalidate(registrationRotationSession);
    v4 = self->_registrationRotationSession;
    if (v4)
    {
      CFRelease(v4);
      self->_registrationRotationSession = 0;
    }
  }
}

- ($65FF825F6F0E105C2F171BD802D3B474)registerWiderCamera:(SEL)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(opaqueCMSampleBuffer *)scale isMacroScene:(double)scene macroTransitionType:(BOOL)type
{
  typeCopy = type;
  v49 = 0;
  v14 = objc_autoreleasePoolPush();
  v15 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:narrowerCamera byRegisteringWiderCamera:scale narrowerCamera:0 centerBias:typeCopy widerToNarrowerCameraScale:&v49 isMacroScene:scene err:?];
  v17 = v16;
  v18 = v49 == 0;
  objc_autoreleasePoolPop(v14);
  v19 = objc_autoreleasePoolPush();
  v20 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:narrowerCamera byRegisteringWiderCamera:scale narrowerCamera:0 centerBias:typeCopy widerToNarrowerCameraScale:&v49 isMacroScene:scene err:?];
  v22 = v21;
  v23 = v49 == 0;
  objc_autoreleasePoolPop(v19);
  v24 = objc_autoreleasePoolPush();
  v25 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:narrowerCamera byRegisteringWiderCamera:scale narrowerCamera:1 centerBias:typeCopy widerToNarrowerCameraScale:&v49 isMacroScene:scene err:?];
  v47 = v26;
  v48 = v25;
  v27 = v49;
  objc_autoreleasePoolPop(v24);
  v28 = objc_autoreleasePoolPush();
  v29 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:narrowerCamera byRegisteringWiderCamera:scale narrowerCamera:1 centerBias:typeCopy widerToNarrowerCameraScale:&v49 isMacroScene:scene err:?];
  v45 = v30;
  v46 = v29;
  v31 = v49;
  objc_autoreleasePoolPop(v28);
  *&retstr->var0[0].var0 = 0u;
  *&retstr->var0[0].var1.y = 0u;
  retstr->var0[2].var1.y = 0.0;
  retstr->var0[1].var1 = 0u;
  *&retstr->var0[2].var0 = 0u;
  retstr->var0[0].var0 = v18;
  retstr->var0[0].var1.x = v15;
  retstr->var0[0].var1.y = v17;
  retstr->var0[1].var0 = v23;
  retstr->var0[1].var1.x = v20;
  retstr->var0[1].var1.y = v22;
  if (v27 && v31)
  {
    v33 = 0;
    retstr->var0[2].var1 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v34.f64[0] = v48;
    v34.f64[1] = v47;
    v35 = vdup_n_s32(v27 == 0);
    v36.i64[0] = v35.u32[0];
    v36.i64[1] = v35.u32[1];
    v37.f64[0] = v46;
    v37.f64[1] = v45;
    v38 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), vaddq_f64(v34, *MEMORY[0x1E695EFF8]), *MEMORY[0x1E695EFF8]);
    *&v34.f64[0] = vdup_n_s32(v31 == 0);
    v36.i64[0] = LODWORD(v34.f64[0]);
    v36.i64[1] = HIDWORD(v34.f64[0]);
    v39 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), vaddq_f64(v37, v38), v38);
    __asm { FMOV            V1.2D, #0.5 }

    *&v34.f64[0] = vdup_n_s32((v27 | v31) == 0);
    v36.i64[0] = LODWORD(v34.f64[0]);
    v36.i64[1] = HIDWORD(v34.f64[0]);
    retstr->var0[2].var1 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), vmulq_f64(v39, _Q1), v39);
    v33 = 1;
  }

  retstr->var0[2].var0 = v33;
  return result;
}

- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale
{
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(camera, *off_1E798A3C8, 0);
  v10 = CMGetAttachment(narrowerCamera, v8, 0);
  isEqualToString = objc_msgSend_isEqualToString_([v9 objectForKeyedSubscript:*off_1E798B540]);
  CMSampleBufferGetPresentationTimeStamp(&time, camera);
  Seconds = CMTimeGetSeconds(&time);
  CMSampleBufferGetPresentationTimeStamp(&time, narrowerCamera);
  v13 = CMTimeGetSeconds(&time);
  ImageBuffer = CMSampleBufferGetImageBuffer(camera);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v29 = 0.0;
  v30 = 0.0;
  v17 = 720;
  if (isEqualToString)
  {
    v17 = 80;
  }

  v18 = 40;
  v19 = 24;
  if (!isEqualToString)
  {
    v19 = 40;
    v18 = 56;
  }

  v20 = (self + v17);
  v21 = *(&self->super.isa + v19);
  v27 = *(&self->super.isa + v18);
  *&time.value = v21;
  v22 = Height;
  FigMotionSphereShiftStateUpdateWithMetadata(self + v17, v9);
  v23.n128_u64[0] = 0;
  LODWORD(v26) = self->_sensorBinningFactor.height;
  FigMotionComputeWideToNarrowShift(v9, v10, 0, &time, &v27, Width, v22, self->_sensorBinningFactor.width, Seconds, v13, v23, v26, 0, v20, &v29, 0);
  v24 = -v29;
  v25 = -v30;
  result.y = v25;
  result.x = v24;
  return result;
}

- (double)_registrationShiftForLeftStrip:(CMSampleBufferRef)sbuf byRegisteringWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(int)narrowerCamera centerBias:(int)bias widerToNarrowerCameraScale:(int *)scale isMacroScene:(double)scene err:
{
  HIDWORD(v119) = bias;
  if (!self)
  {
    *&v128 = 0.0;
    return *&v128;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v15 = CMSampleBufferGetImageBuffer(camera);
  v128 = *MEMORY[0x1E695EFF8];
  v130 = *(MEMORY[0x1E695EFF8] + 8);
  v16 = *off_1E798A3C8;
  v17 = [CMGetAttachment(sbuf *off_1E798A3C8];
  isEqualToString = objc_msgSend_isEqualToString_(v17);
  if (!ImageBuffer || !v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v98, v101, v104, v107, v111, v115, v119);
    v91 = -12780;
    if (!scale)
    {
      return *&v128;
    }

    goto LABEL_35;
  }

  v19 = isEqualToString;
  scaleCopy = scale;
  newPixelBuffer = [*(self + 8) newPixelBuffer];
  newPixelBuffer2 = [*(self + 8) newPixelBuffer];
  v22 = newPixelBuffer2;
  if (newPixelBuffer && newPixelBuffer2)
  {
    v23 = psn_pixelBufferRect(newPixelBuffer);
    v25 = v24;
    v27 = v26;
    v28 = CMGetAttachment(camera, v16, 0);
    rect.a = psn_pixelBufferRect(v15);
    rect.b = v29;
    rect.c = v30;
    rect.d = v31;
    CGRectMakeWithDictionaryRepresentation([v28 objectForKeyedSubscript:*off_1E798B7A0], &rect);
    v137.origin.x = 0.0;
    v137.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v137.size = _Q0;
    CGRectMakeWithDictionaryRepresentation([v28 objectForKeyedSubscript:*off_1E798A5C8], &v137);
    if (narrowerCamera)
    {
      v137 = CGRectInset(v137, 0.25, 0.0);
    }

    Width = CVPixelBufferGetWidth(v15);
    Height = CVPixelBufferGetHeight(v15);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v137.origin.x, v137.origin.y, v137.size.width, v137.size.height, Width, Height);
    if (a2)
    {
      MinX = CGRectGetMinX(*&v39);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v39);
    }

    FigCaptureRoundFloatToMultipleOf(2, MinX);
    OUTLINED_FUNCTION_3_92();
    v44 = VTPixelRotationSessionRotateSubImage();
    if (v44)
    {
      v93 = v44;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v93);
    }

    else
    {
      v45 = CVPixelBufferGetWidth(v15);
      v112 = *&v23;
      v116 = v25;
      v46 = v45;
      v47 = vcvtd_n_f64_u64(v45, 1uLL);
      v48 = CVPixelBufferGetHeight(v15);
      v108 = v27;
      v49 = vcvtd_n_f64_u64(v48, 1uLL);
      memset(&rect, 0, sizeof(rect));
      CGAffineTransformMakeTranslation(&rect, -(v46 * 0.5), -(v48 * 0.5));
      Scale = CGAffineTransformMakeScale(&v136, 1.0 / scene, 1.0 / scene);
      OUTLINED_FUNCTION_2_104(Scale, v51, v52, v53, v54, v55, v56, v57, v95, v98, v101, v104, v108, v112, v116, v119, scaleCopy, *&scene, v128, v130, v133, v134, v135, *&v136.a, *&v136.b, *&v136.c, *&v136.d, *&v136.tx, *&v136.ty, *&v137.origin.x);
      *&rect.a = v137.origin;
      *&rect.c = v137.size;
      *&rect.tx = v138;
      Translation = CGAffineTransformMakeTranslation(&v136, v47, v49);
      OUTLINED_FUNCTION_2_104(Translation, v59, v60, v61, v62, v63, v64, v65, v96, v99, v102, v105, v109, v113, v117, v120, v124, v126, v129, v131, v133, v134, v135, *&v136.a, *&v136.b, *&v136.c, *&v136.d, *&v136.tx, *&v136.ty, *&v137.origin.x);
      *&rect.c = v137.size;
      *&rect.tx = v138;
      *&rect.a = v137.origin;
      v140.origin.x = OUTLINED_FUNCTION_3_92();
      v141 = CGRectApplyAffineTransform(v140, v66);
      y = v141.origin.y;
      v68 = v141.size.width;
      v69 = v141.size.height;
      *&v141.origin.x = v141.origin.x;
      FigCaptureRoundFloatToMultipleOf(1, *&v141.origin.x);
      v70 = y;
      FigCaptureRoundFloatToMultipleOf(1, v70);
      v71 = v68;
      FigCaptureRoundFloatToMultipleOf(2, v71);
      v72 = v69;
      FigCaptureRoundFloatToMultipleOf(2, v72);
      v73 = VTPixelRotationSessionRotateSubImage();
      if (v73)
      {
        v94 = v73;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_6();
        LODWORD(v97) = v94;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v97);
      }

      else
      {
        v74 = objc_alloc(getVNImageRequestHandlerClass());
        v75 = MEMORY[0x1E695E0F8];
        v76 = [v74 initWithCVPixelBuffer:v22 options:MEMORY[0x1E695E0F8]];
        v77 = [objc_alloc(getVNTranslationalImageRegistrationRequestClass()) initWithTargetedCVPixelBuffer:newPixelBuffer options:v75];
        v136.a = 0.0;
        *&v133 = v77;
        tx = *&v128;
        v79 = v132;
        if ([v76 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v133, 1), &v136}])
        {
          v80 = [objc_msgSend(v77 "results")];
          if (v80)
          {
            v81 = v80;
            objc_msgSend_alignmentTransform(v80);
            tx = rect.tx;
            objc_msgSend_alignmentTransform(v81);
            v79 = *(&v138 + 1);
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_7_6();
            LODWORD(v97) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v97, v100, v103, v106, v110, v114, v118, v121);
            tx = *&v128;
            v79 = v132;
          }
        }

        v82 = 0.01;
        v83 = 0.05;
        if (v19)
        {
          v82 = 0.05;
        }

        else
        {
          v83 = 0.042;
        }

        if (v122)
        {
          v84 = v82 * 1.5;
        }

        else
        {
          v84 = v82;
        }

        v85 = tx / v127;
        if (v122)
        {
          v86 = v83 * 1.5;
        }

        else
        {
          v86 = v83;
        }

        v87 = CVPixelBufferGetWidth(ImageBuffer);
        v88 = round(v84 * v87);
        v89 = fabs(-v79 / v127);
        if (fabs(v85) <= round(v86 * v87) && v89 <= v88)
        {
          v91 = 0;
          *&v128 = v85;
          goto LABEL_31;
        }
      }
    }

    v91 = -12780;
LABEL_31:
    CFRelease(newPixelBuffer);
    goto LABEL_32;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_7_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v98, v101, v104, v107, v111, v115, v119);
  v91 = -12780;
  if (newPixelBuffer)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v22)
  {
    CFRelease(v22);
  }

  scale = scaleCopy;
  if (scaleCopy)
  {
LABEL_35:
    *scale = v91;
  }

  return *&v128;
}

@end