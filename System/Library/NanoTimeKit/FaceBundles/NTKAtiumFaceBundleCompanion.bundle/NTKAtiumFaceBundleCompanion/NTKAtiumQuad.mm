@interface NTKAtiumQuad
- (BOOL)_needsOrientationBlend;
- (NTKAtiumQuad)initWithDevice:(id)device;
- (NTKAtiumQuadDelegate)delegate;
- (float32x2_t)_getHandAngles;
- (id)_createRenderPipelineWithPixelFormat:(unint64_t)format functionConstants:(id)constants;
- (id)_createTextureWithName:(id)name;
- (id)_createVertexBuffer;
- (void)_updateDeviceRotationMatrix;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)setAnimatingOverrideDate:(BOOL)date;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setupForQuadView:(id)view;
- (void)startWakeAnimationWithDuration:(double)duration;
@end

@implementation NTKAtiumQuad

- (NTKAtiumQuad)initWithDevice:(id)device
{
  deviceCopy = device;
  v83.receiver = self;
  v83.super_class = NTKAtiumQuad;
  v6 = [(NTKAtiumQuad *)&v83 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[CLKUIMetalResourceManager sharedDevice];
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v8;

    v10 = v7->_mtlDevice;
    v12 = sub_424C(v11);
    v13 = [(MTLDevice *)v10 newDefaultLibraryWithBundle:v12 error:0];
    library = v7->_library;
    v7->_library = v13;

    [deviceCopy screenScale];
    v7->_screenScale = v15;
    v7->_tritiumProgress = 0.0;
    v7->_shadowStrength = 1.0;
    v7->_timeShadowOverride = 1.0;
    *v7->_anon_80 = xmmword_8980;
    v16 = matrix_identity_float4x4.columns[1];
    *v7->_anon_90 = matrix_identity_float4x4.columns[0];
    *&v7->_anon_90[16] = v16;
    v17 = matrix_identity_float4x4.columns[3];
    *&v7->_anon_90[32] = matrix_identity_float4x4.columns[2];
    *&v7->_anon_90[48] = v17;
    v7->dialSize = 500.0;
    v7->_materialRoughness = 0.25;
    if (_os_feature_enabled_impl())
    {
      v7->_materialRoughness = 0.5;
    }

    v7->_blendTransitionFraction = 0.0;
    v18 = objc_alloc_init(NSMutableDictionary);
    renderPipelines = v7->_renderPipelines;
    v7->_renderPipelines = v18;

    v20 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    calendar = v7->_calendar;
    v7->_calendar = v20;

    v22 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:deviceCopy];
    v23 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:deviceCopy];
    v24 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:deviceCopy];
    screenScale = v7->_screenScale;
    [v22 handWidth];
    *&v26 = screenScale * v26 * 0.5;
    v7->_layoutConstants.radius = *&v26;
    v27 = v7->_screenScale;
    [v22 armLength];
    v29 = v28;
    [v22 pegRadius];
    v31 = v29 + v30;
    [v22 pegStrokeWidth];
    *&v32 = v27 * (v31 + v32);
    v7->_layoutConstants.armLength = *&v32;
    v33 = v7->_screenScale;
    [v22 handLength];
    *&v34 = v33 * v34;
    v7->_layoutConstants.handLength1 = *&v34;
    v35 = v7->_screenScale;
    [v23 handLength];
    *&v36 = v35 * v36;
    v7->_layoutConstants.handLength2 = *&v36;
    v37 = v7->_screenScale;
    [v24 handLength];
    *&v38 = v37 * v38;
    v7->_layoutConstants.secondHandLength = *&v38;
    v39 = v7->_screenScale;
    [v24 tailLength];
    *&v40 = v39 * v40;
    v7->_layoutConstants.secondHandTailLength = *&v40;
    v41 = sub_4290(1.5708, xmmword_8990);
    v48 = v47 + (*&v41 + v44);
    if (v48 >= 0.0)
    {
      v58 = sqrtf(v48 + 1.0);
      v59 = v58 + v58;
      v60 = vrecpe_f32(COERCE_UNSIGNED_INT(v58 + v58));
      v61 = vmul_f32(v60, vrecps_f32(COERCE_UNSIGNED_INT(v58 + v58), v60));
      v62 = vmul_f32(v61, vrecps_f32(COERCE_UNSIGNED_INT(v58 + v58), v61)).f32[0];
      v54 = (v45 - *(&v46 + 1)) * v62;
      v55 = (*&v46 - v42) * v62;
      v56 = (*(&v41 + 1) - v43) * v62;
      v63 = v59 * 0.25;
    }

    else
    {
      if (*&v41 < v44 || *&v41 < v47)
      {
        v64 = 1.0 - *&v41;
        if (v44 >= v47)
        {
          v69 = sqrtf(v44 + (v64 - v47));
          v70 = v69 + v69;
          v71 = vrecpe_f32(COERCE_UNSIGNED_INT(v69 + v69));
          v72 = vmul_f32(v71, vrecps_f32(COERCE_UNSIGNED_INT(v69 + v69), v71));
          v53 = vmul_f32(v72, vrecps_f32(COERCE_UNSIGNED_INT(v69 + v69), v72)).f32[0];
          v54 = (*(&v41 + 1) + v43) * v53;
          v55 = v70 * 0.25;
          v56 = (v45 + *(&v46 + 1)) * v53;
          v57 = *&v46 - v42;
        }

        else
        {
          v65 = sqrtf(v47 + (v64 - v44));
          v66 = v65 + v65;
          v67 = vrecpe_f32(COERCE_UNSIGNED_INT(v65 + v65));
          v68 = vmul_f32(v67, vrecps_f32(COERCE_UNSIGNED_INT(v65 + v65), v67));
          v53 = vmul_f32(v68, vrecps_f32(COERCE_UNSIGNED_INT(v65 + v65), v68)).f32[0];
          v54 = (v42 + *&v46) * v53;
          v55 = (v45 + *(&v46 + 1)) * v53;
          v56 = v66 * 0.25;
          v57 = *(&v41 + 1) - v43;
        }
      }

      else
      {
        v49 = sqrtf(*&v41 + ((1.0 - v44) - v47));
        *&v50 = v49 + v49;
        v51 = vrecpe_f32(v50);
        v52 = vmul_f32(v51, vrecps_f32(v50, v51));
        v53 = vmul_f32(v52, vrecps_f32(v50, v52)).f32[0];
        v54 = *&v50 * 0.25;
        v55 = (*(&v41 + 1) + v43) * v53;
        v56 = (v42 + *&v46) * v53;
        v57 = v45 - *(&v46 + 1);
      }

      v63 = v57 * v53;
    }

    *&v73 = __PAIR64__(LODWORD(v55), LODWORD(v54));
    *(&v73 + 1) = __PAIR64__(LODWORD(v63), LODWORD(v56));
    *v7->_anon_d0 = v73;
    v7->_tritiumMaskMultiplier = 1.0;
    *&v74 = sub_438C(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_89A0, v55), xmmword_89B0, v54), vmlaq_n_f32(vmulq_n_f32(xmmword_89C0, v63), xmmword_89D0, v56)));
    *v7->_anon_e0 = v74;
    *&v7->_anon_e0[16] = v75;
    *&v7->_anon_e0[32] = v76;
    *&v7->_anon_e0[48] = v77;
    *v7->_anon_120 = xmmword_8980;
    *&v78 = sub_438C(vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_89E0, *v7->_anon_d0, 1), xmmword_89F0, COERCE_FLOAT(*v7->_anon_d0)), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_8980, *v7->_anon_d0, 3), xmmword_8A00, *v7->_anon_d0, 2)));
    *v7->_anon_130 = v78;
    *&v7->_anon_130[16] = v79;
    *&v7->_anon_130[32] = v80;
    *&v7->_anon_130[48] = v81;
  }

  return v7;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if ((NTKEqualObjects() & 1) == 0)
  {
    if (duration > 0.0)
    {
      [(NTKAtiumQuad *)self setAnimatingOverrideDate:1];
    }

    v8 = +[NTKDate faceDate];
    v9 = v8;
    overrideDate = self->_overrideDate;
    if (!overrideDate)
    {
      overrideDate = v8;
    }

    v11 = overrideDate;
    if (dateCopy)
    {
      v12 = dateCopy;
    }

    else
    {
      v12 = [v9 dateByAddingTimeInterval:duration];
    }

    v13 = v12;
    objc_storeStrong(&self->_overrideDate, date);
    v14 = CACurrentMediaTime();
    self->_startOverrideTime = v14;
    self->_endOverrideTime = v14 + duration;
    NTKHourMinuteSecondAnglesForTime();
    HIDWORD(v15) = 0;
    *&v15 = vcvt_f32_f64(0);
    *(&v15 + 2) = 0.0;
    *self->_startOverrideAngles = v15;
    NTKHourMinuteSecondAnglesForTime();
    HIDWORD(v16) = 0;
    *&v16 = vcvt_f32_f64(0);
    *(&v16 + 2) = 0.0;
    *self->_endOverrideAngles = v16;
  }
}

- (void)setAnimatingOverrideDate:(BOOL)date
{
  if (self->_animatingOverrideDate != date)
  {
    self->_animatingOverrideDate = date;
    delegate = [(NTKAtiumQuad *)self delegate];
    [delegate atiumQuadDidUpdateAnimatingOverrideDate:self];
  }
}

- (void)startWakeAnimationWithDuration:(double)duration
{
  v5 = CACurrentMediaTime();
  self->_startWristRaiseTime = v5;
  self->_endWristRaiseTime = v5 + duration;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  colorPixelFormat = [viewCopy colorPixelFormat];

  self->_pixelFormat = colorPixelFormat;
  _createVertexBuffer = [(NTKAtiumQuad *)self _createVertexBuffer];
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = _createVertexBuffer;

  v11 = [(NTKAtiumQuad *)self _createTextureWithName:@"QuickCubeTexture"];
  reflectionCubeTexture = self->_reflectionCubeTexture;
  self->_reflectionCubeTexture = v11;

  v13 = [(NTKAtiumQuad *)self _createTextureWithName:@"NewThreeColorCubeTexture"];
  reflectionThreeColorCubeTexture = self->_reflectionThreeColorCubeTexture;
  self->_reflectionThreeColorCubeTexture = v13;

  v15 = [(NTKAtiumQuad *)self _createTextureWithName:@"RainbowCubeTexture"];
  reflectionRainbowCubeTexture = self->_reflectionRainbowCubeTexture;
  self->_reflectionRainbowCubeTexture = v15;

  v17 = [(NTKAtiumQuad *)self _createTextureWithName:@"CenterMaskTexture"];
  centerMaskTexture = self->_centerMaskTexture;
  self->_centerMaskTexture = v17;

  v19 = [(NTKAtiumQuad *)self _createTextureWithName:@"AODMaskTextureCircular"];
  aodMaskTexture = self->_aodMaskTexture;
  self->_aodMaskTexture = v19;

  self->_aodMaskTextureBlurred = [(NTKAtiumQuad *)self _createTextureWithName:@"AODMaskTextureBlurred"];

  _objc_release_x1();
}

- (BOOL)_needsOrientationBlend
{
  if (CACurrentMediaTime() >= self->_endOverrideTime && ((tritiumProgress = self->_tritiumProgress, tritiumProgress != 0.0) ? (v4 = tritiumProgress == 1.0) : (v4 = 1), v4))
  {
    return self->_overrideTritiumAnimation;
  }

  else
  {
    return 1;
  }
}

- (float32x2_t)_getHandAngles
{
  v2 = CACurrentMediaTime();
  v3 = *(self + 424);
  if (v2 >= v3)
  {
    v11 = *(self + 600);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = +[NTKDate faceDate];
    }

    v5 = v12;
    NTKHourMinuteSecondAnglesForTime();
    v13 = vcvt_f32_f64(0);
    v14 = 0.0;
    if (!*(self + 600))
    {
      v14 = 1.0;
    }

    *(self + 464) = v14;
    [self setAnimatingOverrideDate:{0, *&v13}];
  }

  else
  {
    v4 = (v2 - *(self + 416)) / (v3 - *(self + 416));
    v5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    *&v6 = v4;
    [v5 _solveForInput:v6];
    CLKInterpolateShortestPathBetweenAnglesUnclipped();
    v16 = v7;
    CLKInterpolateShortestPathBetweenAnglesUnclipped();
    v8.f64[0] = v16;
    v8.f64[1] = v9;
    v17 = vcvt_f32_f64(v8);
    CLKInterpolateShortestPathBetweenAnglesUnclipped();
    v10 = v4;
    if (*(self + 600))
    {
      v10 = 1.0 - v4;
    }

    *(self + 464) = v10;
  }

  return vcvt_f32_f64(vaddq_f64(vsubq_f64(vdupq_n_s64(0x401921FB54442D18uLL), vcvtq_f64_f32(v17)), vdupq_n_s64(0x3FF921FB54442D18uLL)));
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  recolorLightingTextureEnabled = [(NTKAtiumQuad *)self recolorLightingTextureEnabled];
  useThreeColorTexture = [(NTKAtiumQuad *)self useThreeColorTexture];
  blendTransitionFraction = self->_blendTransitionFraction;
  if (blendTransitionFraction <= 0.0)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    if ([(NTKAtiumQuad *)self blendRecolorLightingTextureEnabled])
    {
      v8 = 0x1000000;
    }

    else
    {
      v8 = 0;
    }

    if ([(NTKAtiumQuad *)self blendUseThreeColorTexture])
    {
      v9 = 0x100000000;
    }

    else
    {
      v9 = 0;
    }
  }

  _needsOrientationBlend = [(NTKAtiumQuad *)self _needsOrientationBlend];
  if (self->_tritiumProgress <= 0.0)
  {
    overrideTritiumAnimation = [(NTKAtiumQuad *)self overrideTritiumAnimation];
    v14 = 256;
    if (!useThreeColorTexture)
    {
      v14 = 0;
    }

    v12 = v14 | recolorLightingTextureEnabled | ((blendTransitionFraction > 0.0) << 16) | v8 | v9;
    if (!overrideTritiumAnimation)
    {
      v104 = 0;
      v15 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 256;
    if (!useThreeColorTexture)
    {
      v11 = 0;
    }

    v12 = v11 | recolorLightingTextureEnabled | ((blendTransitionFraction > 0.0) << 16) | v8 | v9;
  }

  v104 = 1;
  v15 = 256;
LABEL_18:
  v16 = 0;
  LODWORD(v17) = 0;
  v18 = v12 | ((v15 | _needsOrientationBlend) << 48);
  *&v119 = v18;
  do
  {
    v17 = *(&v119 + v16++) | (2 * v17);
  }

  while (v16 != 8);
  v19 = [NSNumber numberWithUnsignedInt:v17];
  v20 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v19];

  if (v20)
  {
    v21 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v19];
  }

  else
  {
    v21 = [(NTKAtiumQuad *)self _createRenderPipelineWithPixelFormat:self->_pixelFormat functionConstants:v18];
    [(NSMutableDictionary *)self->_renderPipelines setObject:v21 forKey:v19];
  }

  [encoderCopy setLabel:{@"Atium Render Encoder", v18}];
  v119 = 0uLL;
  renderSize = self->_renderSize;
  v121 = xmmword_8A10;
  [encoderCopy setViewport:&v119];
  [encoderCopy setRenderPipelineState:v21];
  [encoderCopy setCullMode:0];
  memset(v128, 0, sizeof(v128));
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0;
  v123 = 0;
  renderSize = 0;
  v121 = 0u;
  v119 = 0u;
  __asm { FMOV            V1.2D, #0.5 }

  *&v119 = vcvt_f32_f64(vmulq_f64(self->_renderSize, _Q1));
  CLKUIConvertToRGBfFromUIColor();
  v102 = v27;
  CLKUIConvertToRGBfFromUIColor();
  v105 = v28;
  CLKUIConvertToRGBfFromUIColor();
  v29 = vcvt_f16_f32(v102);
  _S2 = v102.i32[2];
  __asm { FCVT            H2, S2 }

  v29.i16[2] = _S2;
  v31 = vcvt_f16_f32(v105);
  _S3 = v105.i32[2];
  __asm { FCVT            H3, S3 }

  v31.i16[2] = _S3;
  v34 = vcvt_f16_f32(_Q0);
  _Q0.i32[0] = _Q0.i32[2];
  __asm { FCVT            H0, S0 }

  v34.i16[2] = _Q0.i16[0];
  *&v124 = v29;
  *(&v124 + 1) = v31;
  *&v125 = v34;
  _Q0.f32[0] = self->dialSize;
  DWORD2(v125) = _Q0.i32[0];
  if (self->_tritiumProgress == 1.0)
  {
    v35 = &OBJC_IVAR___NTKAtiumQuad__tritiumRotationMatrix;
  }

  else
  {
    [(NTKAtiumQuad *)self _updateDeviceRotationMatrix];
    v36 = CACurrentMediaTime();
    endOverrideTime = self->_endOverrideTime;
    if (v36 > endOverrideTime && self->_overrideDate || v36 < endOverrideTime && !self->_overrideDate)
    {
      v35 = &OBJC_IVAR___NTKAtiumQuad__idealizedRotationMatrix;
    }

    else
    {
      v35 = &OBJC_IVAR___NTKAtiumQuad__idealizedRotationMatrix;
      if (!IsReduceMotionEnabled)
      {
        v35 = &OBJC_IVAR___NTKAtiumQuad__deviceRotationMatrix;
      }
    }
  }

  v38 = &self->CLKUIQuad_opaque[*v35];
  v39 = v38[1];
  renderSize = *v38;
  v121 = v39;
  v40 = v38[3];
  v122 = v38[2];
  v123 = v40;
  materialRoughness = self->_materialRoughness;
  *(&v125 + 3) = materialRoughness;
  [(NTKAtiumQuad *)self _getHandAngles];
  v106 = v42;
  v43 = __sincosf_stret(*&v42);
  *(&v126 + 1) = __PAIR64__(LODWORD(v43.__sinval), LODWORD(v43.__cosval));
  v44 = __sincosf_stret(*(&v106 + 1));
  *&v127 = __PAIR64__(LODWORD(v44.__sinval), LODWORD(v44.__cosval));
  v45 = __sincosf_stret(*(&v106 + 2));
  *(&v127 + 1) = __PAIR64__(LODWORD(v45.__sinval), LODWORD(v45.__cosval));
  v46 = self->_shadowStrength * self->_timeShadowOverride;
  *&v126 = v46;
  *(v128 + 8) = *&self->_layoutConstants.handLength1;
  *(&v128[1] + 1) = *&self->_layoutConstants.secondHandLength;
  v47 = 0.0;
  if (self->_tritiumProgress == 1.0)
  {
    v47 = 1.0;
  }

  v48 = v47;
  *v128 = v48;
  [(NTKAtiumQuad *)self tritiumMaskMultiplier];
  *&v49 = v49;
  DWORD1(v128[0]) = LODWORD(v49);
  v50 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v119 length:176 options:1];
  [encoderCopy setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [encoderCopy setVertexBuffer:v50 offset:0 atIndex:1];
  [encoderCopy setFragmentBuffer:v50 offset:0 atIndex:0];
  if (blendTransitionFraction > 0.0)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    CLKUIConvertToRGBfFromUIColor();
    v103 = v51;
    CLKUIConvertToRGBfFromUIColor();
    v107 = v52;
    CLKUIConvertToRGBfFromUIColor();
    v53 = vcvt_f16_f32(v103);
    _S2 = v103.i32[2];
    __asm { FCVT            H2, S2 }

    v53.i16[2] = _S2;
    v55 = vcvt_f16_f32(v107);
    _S3 = v107.i32[2];
    __asm { FCVT            H3, S3 }

    v55.i16[2] = _S3;
    *&v113 = v53;
    *(&v113 + 1) = v55;
    v58 = vcvt_f16_f32(_Q0);
    _Q0.i32[0] = _Q0.i32[2];
    __asm { FCVT            H0, S0 }

    v58.i16[2] = _Q0.i16[0];
    *v114.f32 = v58;
    _Q0.f32[0] = self->_blendTransitionFraction;
    v114.i32[2] = _Q0.i32[0];
    v59 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v113 length:96 options:1];
    [encoderCopy setFragmentBuffer:v59 offset:0 atIndex:1];
  }

  if (_needsOrientationBlend)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v60 = CACurrentMediaTime();
    v62 = self->_endOverrideTime;
    if (v60 >= v62)
    {
      if ([(NTKAtiumQuad *)self overrideTritiumAnimation])
      {
        v68 = CACurrentMediaTime();
        endWristRaiseTime = self->_endWristRaiseTime;
        if (v68 >= endWristRaiseTime)
        {
          v63 = 0;
          LODWORD(v113) = 0;
          self->_overrideTritiumAnimation = 0;
          tritiumProgress = 0.0;
        }

        else
        {
          tritiumProgress = 1.0 - (v68 - self->_startWristRaiseTime) / (endWristRaiseTime - self->_startWristRaiseTime);
          *&v113 = tritiumProgress;
          v63 = 1;
        }
      }

      else
      {
        v63 = 0;
        tritiumProgress = self->_tritiumProgress;
        *&v113 = tritiumProgress;
      }

      v65 = IsReduceMotionEnabled;
      v67 = 1.0;
      v66 = &OBJC_IVAR___NTKAtiumQuad__tritiumRotationMatrix;
    }

    else
    {
      v63 = 0;
      tritiumProgress = (v60 - self->_startOverrideTime) / (v62 - self->_startOverrideTime);
      *&v113 = tritiumProgress;
      v65 = IsReduceMotionEnabled;
      v66 = &OBJC_IVAR___NTKAtiumQuad__idealizedRotationMatrix;
      if (self->_overrideDate == 0 && !IsReduceMotionEnabled)
      {
        v66 = &OBJC_IVAR___NTKAtiumQuad__deviceRotationMatrix;
      }

      v67 = 0.0;
    }

    v70 = &self->CLKUIQuad_opaque[*v66];
    v71 = v70[1];
    v114 = *v70;
    v115 = v71;
    v72 = v70[2];
    v73 = v70[3];
    v116 = v72;
    v117 = v73;
    *&v118 = v67;
    if (!v65)
    {
      v72.i32[0] = 1045220557;
      LODWORD(v61) = 1.0;
      v74 = [CAMediaTimingFunction functionWithControlPoints:0.0];
      v76 = v74;
      if (v63)
      {
        *&v75 = 1.0 - tritiumProgress;
        [v74 _solveForInput:v75];
      }

      else
      {
        *&v75 = tritiumProgress;
        [v74 _solveForInput:v75];
        v77 = 1.0 - v78;
      }

      v79 = v77 * 1.57079633 * 0.7;
      *&v80 = sub_4290(v79, xmmword_8A20);
      v81 = 0;
      v82 = v114;
      v83 = v115;
      v84 = v116;
      v85 = v117;
      v108[0] = v80;
      v108[1] = v86;
      v108[2] = v87;
      v108[3] = v88;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      do
      {
        *(&v109 + v81 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(v108[v81])), v83, *&v108[v81], 1), v84, v108[v81], 2), v85, v108[v81], 3);
        ++v81;
      }

      while (v81 != 4);
      v114 = v109;
      v115 = v110;
      v116 = v111;
      v117 = v112;
    }

    v89 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v113 length:96 options:1];
    [encoderCopy setFragmentBuffer:v89 offset:0 atIndex:2];
  }

  if ([(NTKAtiumQuad *)self useRainbowTexture])
  {
    v90 = &OBJC_IVAR___NTKAtiumQuad__reflectionRainbowCubeTexture;
  }

  else
  {
    useThreeColorTexture2 = [(NTKAtiumQuad *)self useThreeColorTexture];
    v90 = &OBJC_IVAR___NTKAtiumQuad__reflectionCubeTexture;
    if (useThreeColorTexture2)
    {
      v90 = &OBJC_IVAR___NTKAtiumQuad__reflectionThreeColorCubeTexture;
    }
  }

  [encoderCopy setFragmentTexture:*&self->CLKUIQuad_opaque[*v90] atIndex:0];
  if (blendTransitionFraction > 0.0)
  {
    if ([(NTKAtiumQuad *)self blendUseRainbowTexture])
    {
      v92 = &OBJC_IVAR___NTKAtiumQuad__reflectionRainbowCubeTexture;
    }

    else
    {
      blendUseThreeColorTexture = [(NTKAtiumQuad *)self blendUseThreeColorTexture];
      v92 = &OBJC_IVAR___NTKAtiumQuad__reflectionCubeTexture;
      if (blendUseThreeColorTexture)
      {
        v92 = &OBJC_IVAR___NTKAtiumQuad__reflectionThreeColorCubeTexture;
      }
    }

    [encoderCopy setFragmentTexture:*&self->CLKUIQuad_opaque[*v92] atIndex:1];
  }

  [encoderCopy setFragmentTexture:self->_centerMaskTexture atIndex:2];
  if (v104)
  {
    [encoderCopy setFragmentTexture:self->_aodMaskTexture atIndex:3];
  }

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  [(NTKAtiumQuad *)self dialSize];
  if (v94 < sqrtf(vaddv_f32(vmul_f32(*&v119, *&v119))))
  {
    v95 = 0;
    LODWORD(v96) = 0;
    *&v113 = v100 | 0x10000000000;
    do
    {
      v96 = *(&v113 + v95++) | (2 * v96);
    }

    while (v95 != 8);
    v97 = [NSNumber numberWithUnsignedInt:v96];
    v98 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v97];

    if (v98)
    {
      0x10000000000 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v97];
    }

    else
    {
      0x10000000000 = [(NTKAtiumQuad *)self _createRenderPipelineWithPixelFormat:self->_pixelFormat functionConstants:v100 | 0x10000000000];
      [(NSMutableDictionary *)self->_renderPipelines setObject:0x10000000000 forKey:v97];
    }

    [encoderCopy setRenderPipelineState:0x10000000000];
    [encoderCopy setFragmentTexture:self->_aodMaskTextureBlurred atIndex:3];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (void)_updateDeviceRotationMatrix
{
  v2 = *self->_anon_80;
  v3 = *self->_anon_d0;
  v4 = vnegq_f32(v2);
  v5 = vtrn2q_s32(v2, vtrn1q_s32(v2, v4));
  v6 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v2, v4, 8uLL), *v3.f32, 1), vextq_s8(v5, v5, 8uLL), v3.f32[0]);
  v7 = vrev64q_s32(v2);
  v7.i32[0] = v4.i32[1];
  v7.i32[3] = v4.i32[2];
  anon_90 = self->_anon_90;
  *&v9 = sub_438C(vaddq_f32(v6, vmlaq_laneq_f32(vmulq_laneq_f32(v2, v3, 3), v7, v3, 2)));
  *anon_90 = v9;
  *(anon_90 + 1) = v10;
  *(anon_90 + 2) = v11;
  *(anon_90 + 3) = v12;
}

- (id)_createRenderPipelineWithPixelFormat:(unint64_t)format functionConstants:(id)constants
{
  formatCopy = format;
  constantsCopy = constants;
  v5 = self->_library;
  v6 = v5;
  if (!self->_binaryArchive)
  {
    v7 = sub_424C(v5);
    v8 = [CLKUIMetalBinaryArchive archiveWithName:@"atium" bundle:v7 device:self->_mtlDevice];
    binaryArchive = self->_binaryArchive;
    self->_binaryArchive = v8;
  }

  v10 = objc_opt_new();
  for (i = 0; i != 8; ++i)
  {
    [v10 setConstantValue:&constantsCopy.var0[i] type:53 atIndex:{i, formatCopy}];
  }

  v12 = [(MTLLibrary *)v6 newFunctionWithName:@"atiumVertexShader"];
  v13 = +[MTLFunctionDescriptor functionDescriptor];
  [v13 setName:@"atiumFragmentShader"];
  [v13 setConstantValues:v10];
  v23 = v6;
  v14 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:v6 withDescriptor:v13];
  if (!v14)
  {
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_6034();
    }
  }

  v16 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v16 setVertexFunction:v12];
  [v16 setFragmentFunction:v14];
  [v16 setLabel:@"Atium Render Pipeline"];
  colorAttachments = [v16 colorAttachments];
  v18 = [colorAttachments objectAtIndexedSubscript:0];

  [v18 setPixelFormat:formatCopy];
  [v18 setBlendingEnabled:1];
  [v18 setRgbBlendOperation:0];
  [v18 setAlphaBlendOperation:0];
  [v18 setSourceRGBBlendFactor:4];
  [v18 setSourceAlphaBlendFactor:4];
  [v18 setDestinationRGBBlendFactor:5];
  [v18 setDestinationAlphaBlendFactor:5];
  v19 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newRenderPipelineStateForDevice:self->_mtlDevice withDescriptor:v16];
  if (!v19)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_60C4();
    }
  }

  return v19;
}

- (id)_createVertexBuffer
{
  v4[0] = xmmword_8A58;
  v4[1] = unk_8A68;
  v2 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:v4 length:32 options:1];

  return v2;
}

- (id)_createTextureWithName:(id)name
{
  nameCopy = name;
  v5 = [[MTKTextureLoader alloc] initWithDevice:self->_mtlDevice];
  v14[0] = MTKTextureLoaderOptionTextureUsage;
  v14[1] = MTKTextureLoaderOptionTextureStorageMode;
  v15[0] = &off_CB90;
  v15[1] = &off_CBA8;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = sub_424C(v6);
  v13 = 0;
  v8 = [v5 newTextureWithName:nameCopy scaleFactor:v7 bundle:v6 options:&v13 error:1.0];

  v9 = v13;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_614C();
    }
  }

  return v8;
}

- (NTKAtiumQuadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end