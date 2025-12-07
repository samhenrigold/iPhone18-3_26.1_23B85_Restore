@interface PanoramaRegistrationStage
- (BOOL)_isRetrogradeMotion:(__n128)motion tolerance:(double)tolerance;
- (CGRect)roi;
- (PanoramaRegistrationStage)initWithContext:(id)context;
- (__n128)registerNewSlice:(float32x4_t)slice withHFromGyro:(float32x4_t)gyro registrationCallback:(uint64_t)callback;
- (float32x4_t)_setRegistrationParams:(float32x4_t)params initTransform:(float32x4_t)transform;
- (int)prepareToProcessWithDevice:(id)device library:(id)library commandQueue:(id)queue width:(unint64_t)width height:(unint64_t)height;
- (int)resetState;
- (uint64_t)_checkForNaNs:;
- (uint64_t)_computeRegistration:(double)registration metadata:(double)metadata initTransform:(uint64_t)transform;
- (uint64_t)_isTranslationOutlier:(__n128)outlier;
- (uint64_t)_logTransform:(__n128)transform metadata:(uint64_t)metadata message:(uint64_t)message error:(void *)error;
- (void)dealloc;
- (void)replacePreviousSlice:(__CVBuffer *)slice;
- (void)setHomography:(__n128)homography;
@end

@implementation PanoramaRegistrationStage

- (void)dealloc
{
  lastSlice = self->_lastSlice;
  if (lastSlice)
  {
    CVPixelBufferRelease(lastSlice);
  }

  self->_lastSlice = 0;
  residualFlow = self->_residualFlow;
  if (residualFlow)
  {
    CVPixelBufferRelease(residualFlow);
  }

  self->_residualFlow = 0;
  v5.receiver = self;
  v5.super_class = PanoramaRegistrationStage;
  [(PanoramaRegistrationStage *)&v5 dealloc];
}

- (int)resetState
{
  lastSlice = self->_lastSlice;
  if (lastSlice)
  {
    CVPixelBufferRelease(lastSlice);
  }

  v4 = MEMORY[0x277D860B0];
  self->_lastSlice = 0;
  v5 = v4[1];
  *&self[1].super.isa = *v4;
  *&self[1]._shaders = v5;
  *&self[1]._direction = v4[2];
  *&self->_homographyFailure = 0;
  self->_direction = 1;
  self->_slicesProcessed = 0;
  [(LKTFlowGPU *)self->_lkt reset];
  return 0;
}

- (int)prepareToProcessWithDevice:(id)device library:(id)library commandQueue:(id)queue width:(unint64_t)width height:(unint64_t)height
{
  v29[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  libraryCopy = library;
  queueCopy = queue;
  heightCopy = height;
  widthCopy = width;
  if (!self->_lkt)
  {
    v15 = [[LKTFlowGPU alloc] initWithMetalContext:self->_metal ICPtransform:8 width:width height:height nscales:0xFFFFFFFFLL flowUpperMostScale:self->_flowUpperMostScale];
    lkt = self->_lkt;
    self->_lkt = v15;

    [(LKTFlowGPU *)self->_lkt setInputPixelFormat:2];
    [(LKTFlowGPU *)self->_lkt setUseNonLocalRegularization:0];
  }

  if (self->_flowUpperMostScale >= 1)
  {
    calculateHalfResolution(&widthCopy, &heightCopy);
  }

  if (!self->_residualFlow)
  {
    v28 = *MEMORY[0x277CC4DE8];
    v29[0] = MEMORY[0x277CBEC10];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v18 = widthCopy;
    v19 = heightCopy;
    v20 = v17;
    CVPixelBufferCreate(0, v18, v19, 0x32433068u, v20, &self->_residualFlow);
    if (!self->_residualFlow)
    {
      goto LABEL_14;
    }

    [(LKTFlowGPU *)self->_lkt setOutputUV:?];
  }

  if (!self->_registrationWeights)
  {
    v20 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:widthCopy height:heightCopy mipmapped:0];
    [(__CFDictionary *)v20 setUsage:3];
    device = [(FigMetalContext *)self->_metal device];
    v23 = [device newTextureWithDescriptor:v20];
    registrationWeights = self->_registrationWeights;
    self->_registrationWeights = v23;

    if (self->_registrationWeights)
    {
      [(LKTFlowGPU *)self->_lkt setICPWeights:?];
      v21 = 0;
LABEL_12:

      goto LABEL_13;
    }

LABEL_14:
    v21 = 2;
    goto LABEL_12;
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (uint64_t)_checkForNaNs:
{
  for (i = 0; i != 3; ++i)
  {
      ;
    }
  }

  return 0;
}

- (uint64_t)_isTranslationOutlier:(__n128)outlier
{
  v17 = a2.n128_u32[2];
  if ([self _checkForNaNs:*&outlier])
  {
    return 1;
  }

  _S0 = v17;
  __asm { FMLA            S1, S0, V2.S[2] }

  v11 = sqrtf(_S1);
  v12 = self[22];
  v13 = self + 12;
  if (v12 >= 10)
  {
    v15 = 0;
    v16 = 0.0;
    do
    {
      v16 = v16 + *&v13[v15++];
    }

    while (v15 != 10);
    if (vabds_f32(v16 / 10.0, v11) > 4032.0)
    {
      return 1;
    }

    v14 = v12 % 0xAu;
  }

  else
  {
    v14 = v12 % 10;
  }

  result = 0;
  *&v13[v14] = v11;
  self[22] = v12 + 1;
  return result;
}

- (BOOL)_isRetrogradeMotion:(__n128)motion tolerance:(double)tolerance
{
  if (*(self + 32) == 1)
  {
    return motion.n128_f32[2] < -a5;
  }

  else
  {
    return motion.n128_f32[2] > a5;
  }
}

- (uint64_t)_logTransform:(__n128)transform metadata:(uint64_t)metadata message:(uint64_t)message error:(void *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = [error objectForKeyedSubscript:@"SliceNumber"];
  intValue = [v9 intValue];

  if (a8)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    HostTime = ACT_getHostTime();
    return panoLog(4, "FrameID:%04d time %.3f: %s %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f\n", intValue, *&HostTime);
  }

  else
  {
    v12 = ACT_getHostTime();
    return panoLog(32, "FrameID:%04d time %.3f: %s %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f\n", intValue, *&v12);
  }
}

- (float32x4_t)_setRegistrationParams:(float32x4_t)params initTransform:(float32x4_t)transform
{
  v7 = a6;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v7 objectForKeyedSubscript:@"PreviousFrameDropped"];
  bOOLValue = [v9 BOOLValue];

  v11 = [v7 objectForKeyedSubscript:@"SliceNumber"];
  intValue = [v11 intValue];

  v13 = vdupq_n_s32(0x2EDBE6FFu);
  v14 = vandq_s8(vandq_s8(vcgeq_f32(v13, vabdq_f32(params, *(MEMORY[0x277D860B0] + 16))), vcgeq_f32(v13, vabdq_f32(a2, *MEMORY[0x277D860B0]))), vcgeq_f32(v13, vabdq_f32(transform, *(MEMORY[0x277D860B0] + 32))));
  v14.i32[3] = v14.i32[2];
  if ((vminvq_u32(v14) & 0x80000000) != 0)
  {
    a2 = *(self + 176);
    v15 = 0.0000001;
  }

  else
  {
    v15 = 0.0001;
  }

  if ([*(self + 24) getMaxNumberOfScales] >= 1)
  {
    v17 = 0;
    do
    {
      *&v16 = v15;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
      [v8 addObject:v18];

      ++v17;
    }

    while (v17 < [*(self + 24) getMaxNumberOfScales]);
  }

  [*(self + 24) setPresetICP:5 withRegularizerTerms:v8 decimation_factor:{objc_msgSend(self, "_getICPDecimationFactor")}];
  HostTime = ACT_getHostTime();
  panoLog(32, "FrameID:%04d time %.3f: registration settings scales=%d warps=%d reg_term=%.10f prevFrameDropped=%d\n", intValue, HostTime, [*(self + 24) nscales_icp], objc_msgSend(*(self + 24), "warping_scheme_icp"), v15, bOOLValue);

  return a2;
}

- (void)replacePreviousSlice:(__CVBuffer *)slice
{
  lastSlice = self->_lastSlice;
  if (lastSlice)
  {
    CVPixelBufferRelease(lastSlice);
  }

  self->_lastSlice = slice;

  CVPixelBufferRetain(slice);
}

- (CGRect)roi
{
  x = self->_roi.origin.x;
  y = self->_roi.origin.y;
  width = self->_roi.size.width;
  height = self->_roi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setHomography:(__n128)homography
{
  v4[0] = a2;
  v4[1] = homography;
  v4[2] = a4;
  objc_copyStruct((self + 176), v4, 48, 1, 0);
}

- (PanoramaRegistrationStage)initWithContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = PanoramaRegistrationStage;
  v6 = [(PanoramaRegistrationStage *)&v17 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_metal, context), v8 = [[PanoramaRegistrationShaders alloc] initWithContext:contextCopy], shaders = v7->_shaders, v7->_shaders = v8, shaders, v7->_shaders) && (lkt = v7->_lkt, v7->_lkt = 0, lkt, v7->_direction = 1, v11 = [(PanoramaRegistrationStage *)v7 _getLKTFlowUpperMostScale], v7->_flowUpperMostScale = v11, v11 <= 1))
  {
    v7->_lastSlice = 0;
    v12 = MEMORY[0x277D860B0];
    v13 = *(MEMORY[0x277D860B0] + 16);
    *&v7[1].super.isa = *MEMORY[0x277D860B0];
    *&v7[1]._shaders = v13;
    *&v7[1]._direction = *(v12 + 32);
    *v7->_translationsMagnitude = 0u;
    *&v7->_translationsMagnitude[4] = 0u;
    *(&v7->_translationsMagnitude[7] + 1) = 0u;
    registrationWeights = v7->_registrationWeights;
    v7->_residualFlow = 0;
    v7->_registrationWeights = 0;

    fig_note_initialize_category_with_default_work();
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)_computeRegistration:(double)registration metadata:(double)metadata initTransform:(uint64_t)transform
{
  v9 = a7;
  if (*(self + 24))
  {
    Width = CVPixelBufferGetWidth(a6);
    Height = CVPixelBufferGetHeight(a6);
    [self _resetHomographyFailureFlagToFalse];
    [self _resetRetrogradeMotionFlagToFalse];
    [self _setRegistrationParams:v9 initTransform:{a2, registration, metadata}];
    v15 = convertCoordMetalToLKT(v12, v13, v14, Width, Height);
    v66 = v16;
    v72 = v15;
    v60 = v17;
    [self _logTransform:v9 metadata:"transform init    " message:0 error:?];
    [*(self + 24) estimatePanoRegistration:a6 metadata:v9 initTForm:{v72, v66, v60}];
    [*(self + 24) getParametricTransform];
    v67 = v19;
    v73 = v18;
    v61 = v20;
    v21 = [self _logTransform:v9 metadata:"transform computed" message:0 error:?];
    *&v29 = sub_23C46A094(v21, v22, v23, v24, v25, v26, v27, v28, v61, *(&v61 + 1), v67, *(&v67 + 1), v73).n128_u64[0];
    v31 = [v30 _isTranslationOutlier:v29];
    if (v31)
    {
      _setHomographyFailureFlag = [self _setHomographyFailureFlag];
      *&v46 = sub_23C46A094(_setHomographyFailureFlag, v40, v41, "transform computed", v42, v43, v44, v45, v62, v64, v68, v70, *&v74).n128_u64[0];
      v31 = [v47 _logTransform:v9 metadata:v46 message:? error:?];
    }

    *&v48 = sub_23C46A094(v31, v32, v33, v34, v35, v36, v37, v38, v62, v64, v68, v70, *&v74).n128_u64[0];
    if ([v49 _isRetrogradeMotion:v48 tolerance:?])
    {
      [self _setRetrogradeMotionFlag];
    }

    v50.f32[0] = Width;
    v51 = convertCoordLKTToMetal(v75, v69, v63, v50, Height);
    v52 = 0;
    *(self + 184) = v53;
    *(self + 200) = v54;
    *(self + 176) = v51;
    *(self + 192) = v55;
    *(self + 216) = v56;
    *(self + 208) = v57;
  }

  else
  {
    v52 = 2;
  }

  return v52;
}

- (__n128)registerNewSlice:(float32x4_t)slice withHFromGyro:(float32x4_t)gyro registrationCallback:(uint64_t)callback
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a7;
  ImageBuffer = CMSampleBufferGetImageBuffer(a6);
  v27 = *(MEMORY[0x277D860B0] + 16);
  v29 = *MEMORY[0x277D860B0];
  v25 = *(MEMORY[0x277D860B0] + 32);
  v11 = CMGetAttachment(a6, @"MetadataDictionary", 0);
  if (!*(self + 40))
  {
    v12 = vandq_s8(vandq_s8(vceqq_f32(slice, v27), vceqq_f32(a2, v29)), vceqq_f32(gyro, v25));
    v12.i32[3] = v12.i32[2];
    if ((vminvq_u32(v12) & 0x80000000) == 0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(self + 40) = ImageBuffer;
    CVPixelBufferRetain(ImageBuffer);
  }

  if (*(self + 93) == 1)
  {
    v14 = 0;
    v15 = *(self + 176);
    v16 = *(self + 192);
    v17 = *(self + 208);
    v33[0] = a2;
    v33[1] = slice;
    v33[2] = gyro;
    v30 = 0u;
    v31 = 0u;
    v32[0] = 0u;
    do
    {
      *(&v30 + v14 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*&v33[v14])), v16, *v33[v14].f32, 1), v17, v33[v14], 2);
      ++v14;
    }

    while (v14 != 3);
    v18 = *&v30;
    v19 = *&v31;
    v20 = *v32;
  }

  else
  {
    v19 = *slice.i64;
    v20 = *gyro.i64;
    v18 = *a2.i64;
  }

  if (![self _computeRegistration:ImageBuffer metadata:v11 initTransform:{v18, v19, v20}])
  {
    v28 = *(self + 192);
    v29 = *(self + 176);
    v26 = *(self + 208);
    if (([self hasHomographyFailureFlag] & 1) == 0 && (objc_msgSend(self, "hasRetrogradeMotionFlag") & 1) == 0)
    {
      [self replacePreviousSlice:ImageBuffer];
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    [*(self + 24) resetCurrentFrameIndex];
    if (v9)
    {
LABEL_14:
      v9[2](v9, *(self + 120), v29, v28, v26);
    }
  }

LABEL_15:

  return v29;
}

@end