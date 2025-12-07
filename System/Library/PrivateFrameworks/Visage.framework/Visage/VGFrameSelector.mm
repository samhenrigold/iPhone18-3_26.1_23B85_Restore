@interface VGFrameSelector
+ (id)invalidPose;
+ (optional<std::vector<TargetPoseData>>)_computeTargetPosesForFrameCount:(SEL)count limit:(unint64_t)limit desiredFrontPoseFrustumOffsets:(float)offsets desiredFrontPoseFrustumOffset:(optional<const VGFrameSelectorFrustumOffsets> *)offset anglesDegrees:(optional<const VGFrameSelectorFrustumOffsets> *)degrees motionType:(id)type detectFrontPose:(int)pose options:(BOOL)self0;
- (BOOL)completedPitch;
- (BOOL)completedYaw;
- (FrameRejectionState)applyExpressionFilters:(SEL)filters trackingData:(const void *)data frameTimestampMS:(id)s score:(unint64_t)score;
- (FrameRejectionState)applyVisionFaceLandmarksFilter:(SEL)filter bestTargetPoseData:(id)data frameTimestampMS:(const void *)s;
- (FrameRejectionState)applyVisionFilters:(SEL)filters bestTargetPoseData:(id)data frameTimestampMS:(const void *)s;
- (VGFrameSelector)initWithOptions:(id)options;
- (id).cxx_construct;
- (id)processCaptureData:(int32x4_t)data trackingData:(int32x4_t)trackingData framePose:(float32x4_t)pose validDataFrameBounds:(uint64_t)bounds;
- (id)processHeadPose:(HeadPoseData)pose captureData:(id)data trackingData:(id)trackingData validDataBounds:(const void *)bounds frameTimestampMS:(unint64_t)s;
- (id)processHeadPoseSimple:(HeadPoseData)simple frameTimestampMS:(unint64_t)s;
- (id)resultsForMotionType:(optional<vg::frame_selection::MotionType>)type;
- (id)selectedValidPosesForMotion:(optional<vg::frame_selection::MotionType>)motion;
- (optional<simd_float4x4>)parseAtlasToCameraTransformation:(id)transformation;
- (void)checkDepthFoVFilter:(uint64_t)filter@<X3> framePose:(double *)pose@<X4> bestTargetPoseData:(uint64_t)data@<X5> validDataBounds:(uint64_t)bounds@<X8> frameTimestampMS:(__n128)s@<Q3>;
- (void)processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:;
@end

@implementation VGFrameSelector

+ (id)invalidPose
{
  if (+[VGFrameSelector invalidPose]::onceToken != -1)
  {
    +[VGFrameSelector invalidPose];
  }

  v3 = +[VGFrameSelector invalidPose]::invalidPose;

  return v3;
}

void __30__VGFrameSelector_invalidPose__block_invoke()
{
  v0 = objc_alloc_init(VGCapturedPose);
  v1 = +[VGFrameSelector invalidPose]::invalidPose;
  +[VGFrameSelector invalidPose]::invalidPose = v0;
}

+ (optional<std::vector<TargetPoseData>>)_computeTargetPosesForFrameCount:(SEL)count limit:(unint64_t)limit desiredFrontPoseFrustumOffsets:(float)offsets desiredFrontPoseFrustumOffset:(optional<const VGFrameSelectorFrustumOffsets> *)offset anglesDegrees:(optional<const VGFrameSelectorFrustumOffsets> *)degrees motionType:(id)type detectFrontPose:(int)pose options:(BOOL)self0
{
  optionsCopy = options;
  v80 = retstr;
  v103 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v18 = a11;
  v86 = v18;
  if (pose < 2)
  {
    v20 = std::vector<TargetPoseData>::vector[abi:ne200100](&v88, limit);
    v21 = offsets + offsets;
    if (typeCopy)
    {
      if (!offset->var1)
      {
        v31 = __VGLogSharedInstance(v20);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        }

        v32 = 0;
        v33 = v80;
        v80->var0.var0 = 0;
        goto LABEL_79;
      }

      var0 = offset->var0;
      v82 = offsets + offsets;
      if (degrees->var1)
      {
        v85 = *&degrees->var0.var0;
        v84 = *&degrees->var0.var1.pitchOffsetDegreesTop;
        if (!limit)
        {
LABEL_62:
          v65 = __VGLogSharedInstance(v20);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v66 = &vg::frame_selection::motionTypeToString(vg::frame_selection::MotionType)::kMotionTypeToString[24 * pose];
            if (v66[23] < 0)
            {
              std::string::__init_copy_ctor_external(&buf, *v66, 0);
            }

            else
            {
              buf = *v66;
            }

            p_buf = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            *v101 = 136315138;
            v102 = p_buf;
            _os_log_impl(&dword_270F06000, v65, OS_LOG_TYPE_DEBUG, " Generated target poses for MotionType: %s ", v101, 0xCu);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          v69 = v88;
          v70 = v89;
          if (v88 != v89)
          {
            do
            {
              v71 = __VGLogSharedInstance(v68);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                v72 = *(v69 + 72);
                v73 = *(v69 + 68);
                if (*(v69 + 80))
                {
                  v74 = @"YES";
                }

                else
                {
                  v74 = @"NO";
                }

                v75 = *(v69 + 84);
                v76 = *(v69 + 88);
                v77 = *(v69 + 92);
                v78 = *(v69 + 96);
                LODWORD(buf.__r_.__value_.__l.__data_) = 134219522;
                *(buf.__r_.__value_.__r.__words + 4) = v72;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v73;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2112;
                v92 = v74;
                v93 = 2048;
                v94 = v75;
                v95 = 2048;
                v96 = v76;
                v97 = 2048;
                v98 = v77;
                v99 = 2048;
                v100 = v78;
                _os_log_impl(&dword_270F06000, v71, OS_LOG_TYPE_DEBUG, " PoseIdx: %zu Angle in degrees: %g Is front pose: %@ Alignment frustum: [(%g, %g), (%g, %g)] [(minYawAngleDegrees, maxYawAngleDegrees), (minPitchAngleDegrees, maxPitchAngleDegrees)] ", &buf, 0x48u);
              }

              v69 += 112;
            }

            while (v69 != v70);
            v69 = v88;
            v70 = v89;
          }

          v33 = v80;
          v80->var0.var1.__begin_ = v69;
          v80->var0.var1.__end_ = v70;
          v80->var0.var1.__cap_ = v90;
          v89 = 0;
          v90 = 0;
          v88 = 0;
          v32 = 1;
LABEL_79:
          v33->var1 = v32;
          buf.__r_.__value_.__r.__words[0] = &v88;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&buf);
          goto LABEL_80;
        }
      }

      else
      {
        v84 = *&offset->var0.var1.pitchOffsetDegreesTop;
        v85 = *&offset->var0.var0;
        if (!limit)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (limit >= 3)
      {
        v21 = v21 / (limit - 1);
      }

      v22 = ((v21 * 0.5) * 180.0) / 3.14159265;
      *&v22 = v22;
      v23 = vdup_lane_s32(*&v22, 0);
      v24 = v23;
      v25 = v23;
      if (offset->var1)
      {
        v24 = vabs_f32(*&offset->var0.var0);
        v25 = vabs_f32(*&offset->var0.var1.pitchOffsetDegreesTop);
        v26 = COERCE_DOUBLE(vbsl_s8(vcgt_f32(v25, v23), v23, v25));
        v27 = COERCE_DOUBLE(vbsl_s8(vcgt_f32(v24, v23), v23, v24));
        if (pose)
        {
          *&v25 = v26;
        }

        else
        {
          *&v24 = v27;
        }
      }

      *&v28.var0 = v24;
      *&v28.var1.pitchOffsetDegreesTop = v25;
      var0 = v28;
      v82 = v21;
      if (degrees->var1)
      {
        v29 = vabs_f32(*&degrees->var0.var0);
        v30 = vabs_f32(*&degrees->var0.var1.pitchOffsetDegreesTop);
        if (pose)
        {
          v30 = vbsl_s8(vcgt_f32(v30, v23), v23, v30);
        }

        else
        {
          v29 = vbsl_s8(vcgt_f32(v29, v23), v23, v29);
        }

        v84 = v30;
        v85 = v29;
        if (!limit)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v84 = v25;
        v85 = v24;
        if (!limit)
        {
          goto LABEL_62;
        }
      }
    }

    v34 = 0;
    v35 = 0;
    if (optionsCopy)
    {
      v36 = (limit >> 1);
    }

    else
    {
      v36 = 0xFFFFFFFFLL;
    }

    v81 = 1.5708 - offsets;
    do
    {
      if (typeCopy)
      {
        v37 = [typeCopy objectAtIndexedSubscript:v35];
        [v37 floatValue];
        v39 = v38;

        v40 = v39 * 3.14159265 / 180.0;
        v41 = v40 + 1.5708;
      }

      else
      {
        v41 = v81 + (v35 * v82);
      }

      v42 = (v88 + v34);
      *(v88 + v34 + 64) = pose;
      v43 = __sincosf_stret(v41);
      v44.i32[0] = 0;
      v44.i64[1] = 0;
      v44.i32[1] = LODWORD(v43.__cosval);
      if (pose)
      {
        v45 = -1;
      }

      else
      {
        v45 = 0;
      }

      v46 = vbslq_s8(vdupq_n_s32(v45), v44, LODWORD(v43.__cosval));
      v46.i32[2] = LODWORD(v43.__sinval);
      *v42 = v46;
      v47 = v88;
      v48 = (v88 + v34);
      v87 = *(v88 + v34);
      v49 = (atan2f(-*&v87, COERCE_FLOAT(*(v88 + v34 + 8))) * 180.0) / 3.14159265;
      v50 = (asinf(*(&v87 + 1)) * -180.0) / 3.14159265;
      if ((v36 & 0x80000000) != 0 || v36 != v35)
      {
        v58 = v49 - var0.var1.yawOffsetDegreesRight;
        if ((v49 - var0.var1.yawOffsetDegreesRight) >= v49)
        {
          v58 = v49;
        }

        v59 = var0.var1.yawOffsetDegreesLeft + v49;
        if ((var0.var1.yawOffsetDegreesLeft + v49) <= v49)
        {
          v59 = v49;
        }

        v60 = v50 - var0.var1.pitchOffsetDegreesBottom;
        if ((v50 - var0.var1.pitchOffsetDegreesBottom) >= v50)
        {
          v60 = v50;
        }

        v48[21] = v58;
        v48[22] = v59;
        if ((var0.var1.pitchOffsetDegreesTop + v50) > v50)
        {
          v50 = var0.var1.pitchOffsetDegreesTop + v50;
        }

        v48[23] = v60;
        v48[24] = v50;
      }

      else
      {
        v51 = v49 - v85.f32[1];
        if ((v49 - v85.f32[1]) >= v49)
        {
          v51 = v49;
        }

        v52 = v85.f32[0] + v49;
        if ((v85.f32[0] + v49) <= v49)
        {
          v52 = v49;
        }

        v53 = v50 - v84.f32[1];
        if ((v50 - v84.f32[1]) >= v50)
        {
          v53 = v50;
        }

        if ((v84.f32[0] + v50) > v50)
        {
          v50 = v84.f32[0] + v50;
        }

        v48[21] = v51;
        v48[22] = v52;
        v48[23] = v53;
        v48[24] = v50;
        *(v47 + v34 + 80) = 1;
        bodyPoseGuidanceOptions = [v86 bodyPoseGuidanceOptions];
        if (bodyPoseGuidanceOptions)
        {
          bodyPoseGuidanceOptions2 = [v86 bodyPoseGuidanceOptions];
          [bodyPoseGuidanceOptions2 bestAlignmentToleranceAngleFrontPose];
          v57 = v56 * 3.14159265 / 180.0;
          *(v88 + 28 * v36 + 14) = fmaxf(v57, 0.0);
        }

        else
        {
          *(v88 + 28 * v36 + 14) = 0;
        }

        v47 = v88;
      }

      v61 = v47 + v34;
      *(v61 + 72) = v35;
      v62 = ((v41 + -1.5708) * 180.0) / 3.14159265;
      *(v61 + 68) = v62;
      *(v61 + 60) = 0;
      v63 = +[VGFrameSelector invalidPose];
      v64 = *(v88 + v34 + 16);
      *(v88 + v34 + 16) = v63;

      ++v35;
      v34 += 112;
    }

    while (limit != v35);
    goto LABEL_62;
  }

  v19 = __VGLogSharedInstance(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = pose;
    _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_DEBUG, " VGFrameSelector received unknown / unsupported MotionType: %d ", &buf, 8u);
  }

  v80->var0.var0 = 0;
  v80->var1 = 0;
LABEL_80:

  return result;
}

- (VGFrameSelector)initWithOptions:(id)options
{
  optionsCopy = options;
  v58.receiver = self;
  v58.super_class = VGFrameSelector;
  v6 = [(VGFrameSelector *)&v58 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    yawFrameCount = [(VGFrameSelectorOptions *)v7->_options yawFrameCount];
    pitchFrameCount = [(VGFrameSelectorOptions *)v7->_options pitchFrameCount];
    v7->_requiredPosesCount = pitchFrameCount + yawFrameCount;
    v7->_remainingPosesCount = pitchFrameCount + yawFrameCount;
    useSimpleSelector = [(VGFrameSelectorOptions *)v7->_options useSimpleSelector];
    if (useSimpleSelector)
    {
      [(VGFrameSelectorOptions *)v7->_options simpleSelectorMinOffsetAngle];
      v12 = v11 * 3.14159265 / 180.0;
      v7->_simpleSelectorMaxAlignment = cosf(v12);
      [(VGFrameSelectorOptions *)v7->_options simpleSelectorMaxOffsetAngle];
      v14 = v13 * 3.14159265 / 180.0;
      v7->_simpleSelectorMinAlignment = cosf(v14);
    }

    if (v7->_requiredPosesCount)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      if ([optionsCopy yawFrameCount])
      {
        [(VGFrameSelectorOptions *)v7->_options yawFrameCount];
        [(VGFrameSelectorOptions *)v7->_options yawLimit];
        v16 = v15;
        [(VGFrameSelectorOptions *)v7->_options yawPosesFrustumOffsets];
        v45 = __PAIR64__(v18, v17);
        v46 = __PAIR64__(v20, v19);
        LOBYTE(v47) = 1;
        [(VGFrameSelectorOptions *)v7->_options frontPoseFrustumOffsets];
        v48 = __PAIR64__(v22, v21);
        v49 = v23;
        v50 = v24;
        v51 = 1;
        yawAngles = [(VGFrameSelectorOptions *)v7->_options yawAngles];
        [(VGFrameSelectorOptions *)v7->_options detectFrontPose];
        LODWORD(v26) = v16;
        objc_msgSend__computeTargetPosesForFrameCount_limit_desiredFrontPoseFrustumOffsets_desiredFrontPoseFrustumOffset_anglesDegrees_motionType_detectFrontPose_options_(VGFrameSelector, v26, optionsCopy);

        if ((v54 & 1) == 0)
        {
          v41 = 0;
LABEL_30:
          *buf = &v55;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](buf);
          goto LABEL_31;
        }

        std::vector<TargetPoseData>::__assign_with_size[abi:ne200100]<TargetPoseData*,TargetPoseData*>(&v55, *buf, v53, 0x6DB6DB6DB6DB6DB7 * ((v53 - *buf) >> 4));
        if (v54 == 1)
        {
          v45 = buf;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&v45);
        }
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      if ([optionsCopy pitchFrameCount])
      {
        [(VGFrameSelectorOptions *)v7->_options pitchFrameCount];
        [(VGFrameSelectorOptions *)v7->_options pitchLimit];
        v28 = v27;
        [(VGFrameSelectorOptions *)v7->_options pitchPosesFrustumOffsets];
        v48 = __PAIR64__(v30, v29);
        v49 = v31;
        v50 = v32;
        v51 = 1;
        pitchAngles = [(VGFrameSelectorOptions *)v7->_options pitchAngles];
        LODWORD(v34) = v28;
        objc_msgSend__computeTargetPosesForFrameCount_limit_desiredFrontPoseFrustumOffsets_desiredFrontPoseFrustumOffset_anglesDegrees_motionType_detectFrontPose_options_(VGFrameSelector, v34, optionsCopy);

        if ((v54 & 1) == 0)
        {
          goto LABEL_28;
        }

        std::vector<TargetPoseData>::__assign_with_size[abi:ne200100]<TargetPoseData*,TargetPoseData*>(&v45, *buf, v53, 0x6DB6DB6DB6DB6DB7 * ((v53 - *buf) >> 4));
        if (v54 == 1)
        {
          v48 = buf;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&v48);
        }
      }

      std::vector<TargetPoseData>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData*>>,std::move_iterator<std::__wrap_iter<TargetPoseData*>>>(&v7->_targetPosesData, v7->_targetPosesData.__end_, v55, v56, 0x6DB6DB6DB6DB6DB7 * ((v56 - v55) >> 4));
      v35 = std::vector<TargetPoseData>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData*>>,std::move_iterator<std::__wrap_iter<TargetPoseData*>>>(&v7->_targetPosesData, v7->_targetPosesData.__end_, v45, v46, 0x6DB6DB6DB6DB6DB7 * ((v46 - v45) >> 4));
      if (v7->_targetPosesData.__end_ != v7->_targetPosesData.__begin_)
      {
        if ([(VGFrameSelectorOptions *)v7->_options detectFrontPose]&& [(VGFrameSelectorOptions *)v7->_options useVNFilters])
        {
          *buf = 256;
          vg::shared::VNWarmupDetector(buf);
        }

        bodyPoseGuidanceOptions = [(VGFrameSelectorOptions *)v7->_options bodyPoseGuidanceOptions];

        if (bodyPoseGuidanceOptions)
        {
          v37 = [VGUserBodyPoseGuidance alloc];
          bodyPoseGuidanceOptions2 = [(VGFrameSelectorOptions *)v7->_options bodyPoseGuidanceOptions];
          v39 = [(VGUserBodyPoseGuidance *)v37 initWithOptions:bodyPoseGuidanceOptions2];
          userBodyPoseGuidance = v7->_userBodyPoseGuidance;
          v7->_userBodyPoseGuidance = v39;
        }

        v41 = v7;
        goto LABEL_29;
      }

      v43 = __VGLogSharedInstance(v35);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " No target poses have been computed from the selector options ", buf, 2u);
      }

LABEL_28:
      v41 = 0;
LABEL_29:
      *buf = &v45;
      std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_30;
    }

    v42 = __VGLogSharedInstance(useSimpleSelector);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v42, OS_LOG_TYPE_DEBUG, " VGFrameSelector expects at least a single frame ", buf, 2u);
    }
  }

  v41 = 0;
LABEL_31:

  return v41;
}

- (FrameRejectionState)applyVisionFilters:(SEL)filters bestTargetPoseData:(id)data frameTimestampMS:(const void *)s
{
  dataCopy = data;
  if (*(s + 80) == 1 && (v10 = [(VGFrameSelectorOptions *)self->_options useVNFilters], (v10 & 1) != 0))
  {
    v11 = VGLogVGFrameSelector(v10);
    if (os_signpost_enabled(v11))
    {
      LOWORD(v36[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_270F06000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFilters", &unk_270FBF062, v36, 2u);
    }

    Width = CVPixelBufferGetWidth([dataCopy rgbRectified]);
    Height = CVPixelBufferGetHeight([dataCopy rgbRectified]);
    face = [dataCopy face];
    [face bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    CroppedCVPixelBuffer = createCroppedCVPixelBuffer([dataCopy rgbRectified], (v16 * Width), (v18 * Height), ((v16 + v20) * Width), ((v18 + v22) * Height));
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke_633;
    v40[3] = &__block_descriptor_40_e5_v8__0l;
    v40[4] = CroppedCVPixelBuffer;
    v24 = MEMORY[0x2743B9AA0](v40);
    v25 = CVPixelBufferGetIOSurface(CroppedCVPixelBuffer);
    v36[1] = 0;
    v36[2] = 0;
    v36[0] = v25;
    __asm { FMOV            V0.2D, #1.0 }

    v37 = _Q0;
    v38 = 1;
    v39 = 0;
    v31 = vg::shared::VNGetFaceAttributes(v36);
    [(VGFrameSelectorOptions *)self->_options vnFrontPoseBlinkThreshold];
    if (vg::shared::VNGetIsBlinking(v31, v32))
    {
      retstr->reason = 28;
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"blinking was detected on front pose (Vision)"];
      retstr->debugDictionary = 0;
      retstr->description = v33;
    }

    else
    {
      retstr->reason = 0;
      retstr->debugDictionary = 0;
      retstr->description = 0;
    }

    *&retstr->outOfFovOffset = 0;

    v24[2](v24);
    __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke(v34);
  }

  else
  {
    retstr->reason = 0;
    *&retstr->outOfFovOffset = 0;
    retstr->debugDictionary = 0;
    retstr->description = 0;
  }

  return result;
}

void __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFilters", &unk_270FBF062, v2, 2u);
  }
}

- (FrameRejectionState)applyVisionFaceLandmarksFilter:(SEL)filter bestTargetPoseData:(id)data frameTimestampMS:(const void *)s
{
  dataCopy = data;
  if (*(s + 80) == 1 && (v10 = [(VGFrameSelectorOptions *)self->_options useVNFaceLandmarksFilter], (v10 & 1) != 0))
  {
    v11 = VGLogVGFrameSelector(v10);
    if (os_signpost_enabled(v11))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_270F06000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFaceLandmarkFilter", &unk_270FBF062, &buf, 2u);
    }

    Width = CVPixelBufferGetWidth([dataCopy rgbRectified]);
    Height = CVPixelBufferGetHeight([dataCopy rgbRectified]);
    face = [dataCopy face];
    [face bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    CroppedCVPixelBuffer = createCroppedCVPixelBuffer([dataCopy rgbRectified], (v16 * Width), (v18 * Height), ((v16 + v20) * Width), ((v18 + v22) * Height));
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke_640;
    v42[3] = &__block_descriptor_40_e5_v8__0l;
    v42[4] = CroppedCVPixelBuffer;
    v24 = MEMORY[0x2743B9AA0](v42);
    v25 = CVPixelBufferGetIOSurface(CroppedCVPixelBuffer);
    buf = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v40 = _Q0;
    v41 = 1;
    v31 = vg::shared::VNDetectFaceLandmarks2D(v25, &buf);
    v32 = v31;
    if (v31 && ([v31 confidence], v33 < 0.8))
    {
      retstr->reason = 9;
      v34 = MEMORY[0x277CCACA8];
      [v32 confidence];
      0x3FE99999A0000000 = [v34 stringWithFormat:@"face landmarks not detected [confidence: %g < %g]", v35, 0x3FE99999A0000000];
      retstr->debugDictionary = 0;
      retstr->description = 0x3FE99999A0000000;
    }

    else
    {
      retstr->reason = 0;
      retstr->debugDictionary = 0;
      retstr->description = 0;
    }

    *&retstr->outOfFovOffset = 0;

    v24[2](v24);
    __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke(v37);
  }

  else
  {
    retstr->reason = 0;
    *&retstr->outOfFovOffset = 0;
    retstr->debugDictionary = 0;
    retstr->description = 0;
  }

  return result;
}

void __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFaceLandmarkFilter", &unk_270FBF062, v2, 2u);
  }
}

- (void)checkDepthFoVFilter:(uint64_t)filter@<X3> framePose:(double *)pose@<X4> bestTargetPoseData:(uint64_t)data@<X5> validDataBounds:(uint64_t)bounds@<X8> frameTimestampMS:(__n128)s@<Q3>
{
  v59 = s.n128_f32[2];
  v95[2] = *MEMORY[0x277D85DE8];
  v12 = a2;
  face = [v12 face];
  [face bounds];
  v62.f64[0] = v14;
  v62.f64[1] = v15;
  v63.f64[0] = v16;
  v63.f64[1] = v17;

  if ((*(filter + 112) & 1) == 0)
  {
    v19 = *(self + 40);
LABEL_5:
    yawMarginRatio = [v19 yawMarginRatio];
    goto LABEL_8;
  }

  if (*(filter + 80) == 1)
  {
    yawMarginRatio = [*(self + 40) frontPoseMarginRatio];
    goto LABEL_8;
  }

  v19 = *(self + 40);
  if (!*(filter + 64))
  {
    goto LABEL_5;
  }

  yawMarginRatio = [v19 pitchMarginRatio];
LABEL_8:
  v20 = yawMarginRatio;
  if (yawMarginRatio)
  {
    v58 = *pose;
    [yawMarginRatio leftMarginHeadRatio];
    v57 = v21;
    v56 = pose[1];
    [v20 topMarginHeadRatio];
    v23 = v22;
    v24 = *pose;
    v25 = pose[2];
    [v20 rightMarginHeadRatio];
    v27 = v26;
    v28 = pose[1];
    v29 = pose[3];
    [v20 bottomMarginHeadRatio];
    v60.f64[0] = v58 + v63.f64[0] * v57;
    v60.f64[1] = v56 + v63.f64[1] * v23;
    v61.f64[0] = fmax(v24 + v25 - v63.f64[0] * v27 - v60.f64[0], 0.0);
    v61.f64[1] = fmax(v28 + v29 - v63.f64[1] * v30 - v60.f64[1], 0.0);
    v92[0] = @"validDataBounds";
    v31 = [VGSerializationHelpers cgRectToDict:pose];
    v93[0] = v31;
    v92[1] = @"faceBounds";
    v32 = [VGSerializationHelpers cgRectToDict:&v62];
    v93[1] = v32;
    v92[2] = @"fovBounds";
    v33 = [VGSerializationHelpers cgRectToDict:&v60];
    v93[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];

    v96.origin = v60;
    v96.size = v61;
    v97.origin = v62;
    v97.size = v63;
    v35 = CGRectContainsRect(v96, v97);
    if (v35)
    {
      *bounds = 0;
      *(bounds + 8) = 0;
      *(bounds + 16) = 0;
    }

    else
    {
      v38 = __VGLogSharedInstance(v35);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = *pose;
        v40 = *(pose + 1);
        v41 = *(pose + 2);
        v42 = *(pose + 3);
        *buf = 134221315;
        dataCopy = data;
        v66 = 2049;
        v67 = v62.f64[0];
        v68 = 2049;
        v69 = v62.f64[1];
        v70 = 2049;
        v71 = v63.f64[0];
        v72 = 2049;
        v73 = v63.f64[1];
        v74 = 2049;
        v75 = v39;
        v76 = 2049;
        v77 = v40;
        v78 = 2049;
        v79 = v41;
        v80 = 2049;
        v81 = v42;
        v82 = 2049;
        v83 = v60.f64[0];
        v84 = 2049;
        v85 = v60.f64[1];
        v86 = 2049;
        v87 = v61.f64[0];
        v88 = 2049;
        v89 = v61.f64[1];
        v90 = 2113;
        v91 = v20;
        _os_log_impl(&dword_270F06000, v38, OS_LOG_TYPE_DEBUG, " Frame#%zu face out of depth FoV. face bounds: [%{private}g %{private}g %{private}g %{private}g], valid depth bounds: [%{private}g %{private}g %{private}g %{private}g], fov bounds: [%{private}g %{private}g %{private}g %{private}g]margins: [%{private}@],  ", buf, 0x8Eu);
      }

      __asm { FMOV            V2.2D, #0.5 }

      v48 = vsub_f32(vcvt_f32_f64(vmlaq_f64(v62, _Q2, v63)), vcvt_f32_f64(vmlaq_f64(v60, _Q2, v61)));
      v49 = fabsf(v48.f32[0]);
      v50 = v48;
      v51 = fabsf(v48.f32[1]);
      if (v49 <= v51)
      {
        [v12 videoIntrinsics];
        v53 = ((v59 / v55) * 0.1) * (v51 * CVPixelBufferGetHeight([v12 yuvRectified]));
        if (v50.f32[1] >= 0.0)
        {
          v54 = 14;
        }

        else
        {
          v54 = 13;
        }
      }

      else
      {
        [v12 videoIntrinsics];
        v53 = ((v59 / v52) * 0.1) * (v49 * CVPixelBufferGetWidth([v12 yuvRectified]));
        if (v50.f32[0] >= 0.0)
        {
          v54 = 12;
        }

        else
        {
          v54 = 11;
        }
      }

      *bounds = v54;
      *(bounds + 8) = [MEMORY[0x277CCACA8] stringWithFormat:@"out of FoV offset: %g cm", v53];
      *(bounds + 16) = v53;
      *(bounds + 20) = 0;
    }

    *(bounds + 24) = v34;
  }

  else
  {
    *bounds = 0;
    *(bounds + 8) = 0;
    *(bounds + 16) = 0;
    v94[0] = @"validDataBounds";
    v36 = [VGSerializationHelpers cgRectToDict:pose];
    v94[1] = @"faceBounds";
    v95[0] = v36;
    v37 = [VGSerializationHelpers cgRectToDict:&v62];
    v95[1] = v37;
    *(bounds + 24) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  }
}

- (FrameRejectionState)applyExpressionFilters:(SEL)filters trackingData:(const void *)data frameTimestampMS:(id)s score:(unint64_t)score
{
  v37 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v12 = VGLogVGFrameSelector(sCopy);
  if (os_signpost_enabled(v12))
  {
    if (*(data + 80))
    {
      v13 = @"true";
    }

    else
    {
      v13 = @"false";
    }

    *buf = 138543362;
    v36 = v13;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExpressionFilters", "isFrontPose:%{public}@", buf, 0xCu);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__VGFrameSelector_applyExpressionFilters_trackingData_frameTimestampMS_score___block_invoke;
  v33[3] = &__block_descriptor_40_e5_v8__0l;
  v33[4] = data;
  v14 = MEMORY[0x2743B9AA0](v33);
  if (*(data + 80) == 1)
  {
    frontExpressionFilters = [(VGFrameSelectorOptions *)self->_options frontExpressionFilters];
  }

  else
  {
    options = self->_options;
    if (*(data + 16))
    {
      [(VGFrameSelectorOptions *)options pitchExpressionFilters];
    }

    else
    {
      [(VGFrameSelectorOptions *)options yawExpressionFilters];
    }
    frontExpressionFilters = ;
  }

  v17 = frontExpressionFilters;
  if (frontExpressionFilters)
  {
    v28 = v14;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = frontExpressionFilters;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v19)
    {
      v20 = *v30;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          [v22 filter:sCopy];
          v24 = v23 * *a7;
          *a7 = v24;
          if (v24 == 0.0)
          {
            retstr->reason = [v22 rejectionReason];
            if (*(data + 80))
            {
              v25 = @"YES";
            }

            else
            {
              v25 = @"NO";
            }

            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"expression filter [%@], isFrontPose: %@", v22, v25];
            *&retstr->outOfFovOffset = 0;
            retstr->debugDictionary = 0;
            retstr->description = v26;

            v14 = v28;
            goto LABEL_27;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v14 = v28;
  }

  retstr->reason = 0;
  *&retstr->outOfFovOffset = 0;
  retstr->debugDictionary = 0;
  retstr->description = 0;
LABEL_27:

  v14[2](v14);
  return result;
}

void __78__VGFrameSelector_applyExpressionFilters_trackingData_frameTimestampMS_score___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGFrameSelector(a1);
  if (os_signpost_enabled(v2))
  {
    if (*(*(a1 + 32) + 80))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExpressionFilters", "isFrontPose:%{public}@", &v4, 0xCu);
  }
}

- (id)processHeadPoseSimple:(HeadPoseData)simple frameTimestampMS:(unint64_t)s
{
  v6 = objc_opt_new();
  v7 = self->_requiredPosesCount - self->_remainingPosesCount;
  [v6 setPoseIndex:v7];
  [v6 setMotionType:*(self->_targetPosesData.__begin_ + 28 * v7 + 16)];
  if (self->_requiredPosesCount)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(self->_targetPosesData.__begin_ + v8 + 16);
      if ([v10 valid])
      {
        v11 = vmulq_f32(*(s + 16), *(self->_targetPosesData.__begin_ + v8 + 32));
        v12 = v11.f32[2] + vaddv_f32(*v11.f32);
        simpleSelectorMinAlignment = self->_simpleSelectorMinAlignment;
        simpleSelectorMaxAlignment = self->_simpleSelectorMaxAlignment;
        if (simpleSelectorMaxAlignment < v12 || v12 < simpleSelectorMinAlignment)
        {
          break;
        }
      }

      ++v9;
      v8 += 112;
      if (v9 >= self->_requiredPosesCount)
      {
        goto LABEL_9;
      }
    }

    v22 = 24;
    simpleSelectorMaxAlignment = [MEMORY[0x277CCACA8] stringWithFormat:@"viewdir alignment to previously selected poses does not satisfy the limit criteria %g not within (%g, %g)", v12, simpleSelectorMinAlignment, simpleSelectorMaxAlignment];;
    v24 = 0;
    v25 = 0;
    v23 = simpleSelectorMaxAlignment;
    if (v6)
    {
      [v6 setRejectionState:&v22];
    }

    else
    {
    }
  }

  else
  {
LABEL_9:
    *(self->_targetPosesData.__begin_ + 7 * v7 + 2) = *(s + 16);
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (v6)
    {
      [v6 setRejectionState:&v18];
    }
  }

  return v6;
}

- (id)processHeadPose:(HeadPoseData)pose captureData:(id)data trackingData:(id)trackingData validDataBounds:(const void *)bounds frameTimestampMS:(unint64_t)s
{
  v8 = v7;
  v146 = *MEMORY[0x277D85DE8];
  trackingDataCopy = trackingData;
  boundsCopy = bounds;
  v14 = VGLogVGFrameSelector(boundsCopy);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose", &unk_270FBF062, buf, 2u);
  }

  v15 = objc_opt_new();
  if (!boundsCopy)
  {
    v127 = 2;
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"no tracking data"];
    v129 = 0;
    v130 = 0;
    v128 = v24;
    if (v15)
    {
      [v15 setRejectionState:&v127];
    }

    else
    {
    }

    v26 = v15;
    goto LABEL_94;
  }

  if (!self->_userBodyPoseGuidance)
  {
    goto LABEL_15;
  }

  v16 = objc_msgSend_parseAtlasToCameraTransformation_(self);
  if ((v138 & 1) == 0)
  {
    v25 = __VGLogSharedInstance(v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *v142 = 134217984;
      *&v142[4] = v8;
      _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_DEBUG, " Frame#%zu unable to parse atlasToCameraTransform, skipping Body Pose Guidance filter ", v142, 0xCu);
    }

LABEL_15:
    v90 = 0;
    goto LABEL_23;
  }

  [trackingDataCopy cameraToDeviceTransform];
  v21 = 0;
  v131 = *buf;
  v132 = *&buf[16];
  v133 = v136;
  v134 = v137;
  do
  {
    *&v142[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v131 + v21))), v18, *(&v131 + v21), 1), v19, *(&v131 + v21), 2), v20, *(&v131 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  v87 = *&v143;
  v89 = *v142;
  v84 = v145;
  v85 = v144;
  userBodyPoseGuidance = self->_userBodyPoseGuidance;
  skeleton = [trackingDataCopy skeleton];
  if (trackingDataCopy)
  {
    objc_msgSend_timestamp(trackingDataCopy);
  }

  else
  {
    memset(v142, 0, sizeof(v142));
    *&v143 = 0;
  }

  v90 = [(VGUserBodyPoseGuidance *)userBodyPoseGuidance calculatePoseGuidanceFromSkeleton:skeleton andAtlasToDeviceTransform:v89 atTimestamp:v87, v85, v84, CMTimeGetSeconds(v142)];

  frameState = [v90 frameState];
  [v15 setBodyPoseFrameState:frameState];

  if (v90)
  {
    objc_msgSend_rejection(v90);
    v28 = *(&v143 + 1);
  }

  else
  {
    v28 = 0;
    *v142 = 0u;
    v143 = 0u;
  }

  [v15 addDebugDataForKey:@"poseGuidance" debugData:v28];

LABEL_23:
  requiredPosesCount = self->_requiredPosesCount;
  if (!requiredPosesCount)
  {
    selfCopy = self;
LABEL_49:
    if (![(VGFrameSelectorOptions *)self->_options useDepthFovFilterForBadAlignment])
    {
      goto LABEL_54;
    }

    buf[0] = 0;
    v141 = 0;
    [VGFrameSelector processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:]::$_3::operator()(&selfCopy, trackingDataCopy, data, buf, s, v8, v15);
    if (v141 == 1)
    {
    }

    if (!v15 || (objc_msgSend_rejectionState(v15), v50 = *buf == 0, *&buf[24], *&buf[8], v50))
    {
LABEL_54:
      v122 = 24;
      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad alignment [yaw %g pitch %g] with all target poses", *data, *(data + 1)];
      v124 = 0;
      v125 = 0;
      v123 = v51;
      if (v15)
      {
        [v15 setRejectionState:&v122];
      }

      else
      {
      }
    }

    v52 = v15;
    goto LABEL_93;
  }

  v30 = 0;
  v31 = *data;
  v32 = *(data + 1);
  v33 = (self->_targetPosesData.__begin_ + 96);
  v34 = 0.0;
  v35 = -1;
  do
  {
    if (*(v33 - 3) <= v31 && *(v33 - 2) >= v31 && *(v33 - 1) <= v32 && *v33 >= v32)
    {
      v36 = vmulq_f32(*(data + 1), *(v33 - 24));
      v37 = vaddv_f32(*v36.f32);
      if ((v36.f32[2] + v37) > v34)
      {
        v34 = v36.f32[2] + v37;
        v35 = v30;
      }
    }

    ++v30;
    v33 += 28;
  }

  while (requiredPosesCount != v30);
  selfCopy2 = self;
  selfCopy = selfCopy2;
  if (v35 == -1)
  {
    goto LABEL_49;
  }

  v39 = selfCopy2;
  v40 = self->_targetPosesData.__begin_ + 112 * v35;
  v41 = VGLogVGFrameSelector(selfCopy2);
  if (os_signpost_enabled(v41))
  {
    if (v40[80])
    {
      v42 = @"true";
    }

    else
    {
      v42 = @"false";
    }

    *buf = 138543362;
    *&buf[4] = v42;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v41, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose_PoseFilters", "isFrontPose:%{public}@", buf, 0xCu);
  }

  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke_682;
  v121[3] = &__block_descriptor_40_e5_v8__0l;
  v121[4] = v40;
  v86 = MEMORY[0x2743B9AA0](v121);
  if (*(v40 + 16))
  {
    v43 = @"pitch";
  }

  else
  {
    v43 = @"yaw";
  }

  v88 = v43;
  v44 = __VGLogSharedInstance(v88);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v88;
    *&buf[22] = 1024;
    *&buf[24] = v35;
    _os_log_impl(&dword_270F06000, v44, OS_LOG_TYPE_DEBUG, " Frame#%zu acquired by %@ selector with poseIdx %d ", buf, 0x1Cu);
  }

  [v15 setPoseIndex:v35];
  [v15 setMotionType:*(v40 + 16)];
  *buf = *v40;
  *&buf[16] = *(v40 + 2);
  v136 = *(v40 + 2);
  v45 = *(v40 + 3);
  v46 = *(v40 + 4);
  v47 = *(v40 + 5);
  v140 = *(v40 + 24);
  v138 = v46;
  v139 = v47;
  v137 = v45;
  v141 = 1;
  [VGFrameSelector processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:]::$_3::operator()(&selfCopy, trackingDataCopy, data, buf, s, v8, v15);
  if (v141 == 1)
  {
  }

  if (!v15)
  {
    memset(buf, 0, sizeof(buf));

LABEL_59:
    objc_msgSend_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS_(v39);
    if (*buf)
    {
      v117 = *buf;
      v53 = *&buf[8];
      v118 = v53;
      v119 = *&buf[16];
      v54 = *&buf[24];
      v120 = v54;
      if (v15)
      {
        [v15 setRejectionState:&v117];
      }

      else
      {
      }

      v58 = v15;
      goto LABEL_91;
    }

    v116 = 1.0;
    objc_msgSend_applyExpressionFilters_trackingData_frameTimestampMS_score_(v39);
    if (*v142)
    {
      v112 = *v142;
      v56 = *&v142[8];
      v113 = v56;
      v114 = v143;
      v57 = *(&v143 + 1);
      v115 = v57;
      if (v15)
      {
        [v15 setRejectionState:&v112];
      }

      else
      {
      }

      goto LABEL_89;
    }

    v59 = *(v40 + 15);
    if (v116 < v59)
    {
      v108 = 23;
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"lower score [%g < %g]", v116, v59];
      v110 = 0;
      v111 = 0;
      v109 = v60;
      if (v15)
      {
        [v15 setRejectionState:&v108];
LABEL_89:
        v80 = v15;
LABEL_90:

LABEL_91:
        goto LABEL_92;
      }

      goto LABEL_88;
    }

    v61 = v40[52];
    LODWORD(v55) = -1.0;
    if (v61 == 1)
    {
      v62 = acosf(*(v40 + 12));
      *&v55 = cosf(v62 + *(v40 + 14));
    }

    if (v116 == v59 && v34 <= *&v55)
    {
      v104 = 25;
      v63 = *&v55;
      v64 = -1.0;
      if (v61)
      {
        v64 = *(v40 + 12);
      }

      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"lower alignment [%g <= %g] (tolerance (radians): %g, best alignment: %g)", v34, *&v63, *(v40 + 14), *&v64];
      v106 = 0;
      v107 = 0;
      v105 = v60;
      if (v15)
      {
        [v15 setRejectionState:&v104];
        goto LABEL_89;
      }

LABEL_88:

      goto LABEL_89;
    }

    objc_msgSend_applyVisionFilters_bestTargetPoseData_frameTimestampMS_(v39, v55);
    if (v131)
    {
      v100 = v131;
      frameState2 = *(&v131 + 1);
      v101 = frameState2;
      v102 = v132;
      v66 = *(&v132 + 1);
      v103 = v66;
      if (v15)
      {
        v67 = &v100;
LABEL_102:
        [v15 setRejectionState:v67];
LABEL_105:
        v83 = v15;

        goto LABEL_90;
      }

      bodyPoseFrameState = v66;
    }

    else
    {
      if (v40[80] != 1 || !v90 || ([v90 frameState], v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v68, "aggregatedScore"), v70 = v69, objc_msgSend(*(v40 + 2), "bodyPoseFrameState"), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "aggregatedScore"), v73 = v70 < v72, v71, v68, !v73))
      {
        if (v40[52] == 1 && *(v40 + 12) >= v34)
        {
          v34 = *(v40 + 12);
        }

        *(v40 + 12) = v34;
        v40[52] = 1;
        *(v40 + 15) = v116;
        v92 = 0;
        v94 = 0;
        v95 = 0;
        v93 = 0;
        if (!v15)
        {
          goto LABEL_105;
        }

        v67 = &v92;
        goto LABEL_102;
      }

      v96 = 41;
      v74 = MEMORY[0x277CCACA8];
      frameState2 = [v90 frameState];
      [frameState2 aggregatedScore];
      v76 = v75;
      bodyPoseFrameState = [*(v40 + 2) bodyPoseFrameState];
      [bodyPoseFrameState aggregatedScore];
      v79 = [v74 stringWithFormat:@"lower body pose aggregated score [%g < %g]", v76, v78];
      v98 = 0;
      v99 = 0;
      v97 = v79;
      if (v15)
      {
        [v15 setRejectionState:&v96];
      }

      else
      {
      }
    }

    goto LABEL_105;
  }

  objc_msgSend_rejectionState(v15);
  v48 = *buf == 0;

  if (v48)
  {
    goto LABEL_59;
  }

  v49 = v15;
LABEL_92:

  v86[2](v86);
  self = selfCopy;
LABEL_93:

LABEL_94:
  __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke(v81);

  return v15;
}

void __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose", &unk_270FBF062, v2, 2u);
  }
}

- (void)processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:
{
  v11 = a2;
  v12 = a7;
  if (*(a5 + 32) == 1)
  {
    if (*self)
    {
      objc_msgSend_checkDepthFoVFilter_framePose_bestTargetPoseData_validDataBounds_frameTimestampMS_(*self, a3[4], a3[6], a3[8], a3[10]);
      v13 = *(&v21 + 1);
    }

    else
    {
      v13 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    [v12 addDebugDataForKey:@"depthFovFilter" debugData:v13];
    if (v20)
    {
      v16 = v20;
      v14 = *(&v20 + 1);
      v17 = v14;
      v18 = v21;
      v15 = *(&v21 + 1);
      v19 = v15;
      if (v12)
      {
        [v12 setRejectionState:&v16];
      }

      else
      {
      }
    }
  }
}

void __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke_682(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGFrameSelector(a1);
  if (os_signpost_enabled(v2))
  {
    if (*(*(a1 + 32) + 80))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose_PoseFilters", "isFrontPose:%{public}@", &v4, 0xCu);
  }
}

- (optional<simd_float4x4>)parseAtlasToCameraTransformation:(id)transformation
{
  v4 = v3;
  v56 = [transformation objectForKeyedSubscript:@"tracked_faces"];
  if (![v56 count])
  {
    v6 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = " Could not extract atlas joint. No Faces tracked ";
      goto LABEL_7;
    }

LABEL_8:

    *v4 = 0;
    *(v4 + 64) = 0;
    goto LABEL_26;
  }

  v5 = [v56 count];
  if (v5 >= 2)
  {
    v6 = __VGLogSharedInstance(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = " Could not extract atlas joint. Multiple faces tracked in FaceKitDictionary. Discarding all. ";
LABEL_7:
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v55 = [v56 objectAtIndexedSubscript:0];
  v54 = [v55 objectForKeyedSubscript:@"raw_data"];
  v8 = [v54 objectForKeyedSubscript:@"pose"];
  if (v8)
  {
    for (i = 0; i != 3; ++i)
    {
      v10 = 0;
      v11 = &v60[i];
      do
      {
        v12 = [v8 objectForKeyedSubscript:@"rotation"];
        v13 = [v12 objectAtIndexedSubscript:v10];
        v14 = [v13 objectAtIndexedSubscript:i];
        [v14 floatValue];
        *(v11 + (v10 & 3)) = v15;

        ++v10;
      }

      while (v10 != 3);
      *(v11 + 3) = 0;
    }

    v16 = 0;
    v57 = v60[3];
    do
    {
      v17 = [v8 objectForKeyedSubscript:@"translation"];
      v18 = [v17 objectAtIndexedSubscript:v16];
      [v18 floatValue];
      v59 = v57;
      *(&v59 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3))) = v19 * 0.001;
      v57 = v59;

      ++v16;
    }

    while (v16 != 3);
    v20 = [v55 objectForKeyedSubscript:@"kAtlasToFaceKitTransform"];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 objectAtIndexedSubscript:0];
      [v22 vg_float4ByInvokingFloatValue];
      v53 = v23;

      v24 = [v21 objectAtIndexedSubscript:1];
      [v24 vg_float4ByInvokingFloatValue];
      v52 = v25;

      v26 = [v21 objectAtIndexedSubscript:2];
      [v26 vg_float4ByInvokingFloatValue];
      v51 = v27;

      v28 = [v21 objectAtIndexedSubscript:3];
      [v28 vg_float4ByInvokingFloatValue];
      v50 = v29;
      v30 = v57;
      v30.i32[3] = 1.0;
      v58 = v30;

      v31 = 0;
      v32 = vzip1q_s32(v53, v51);
      v33 = vzip2q_s32(v53, v51);
      v34 = vzip1q_s32(v52, v50);
      v35 = vzip2q_s32(v52, v50);
      v36 = vzip1q_s32(v32, v34);
      v37 = vzip2q_s32(v32, v34);
      v38 = vzip1q_s32(v33, v35);
      v39 = vzip2q_s32(v33, v35);
      v61 = xmmword_270FA69B0;
      v62 = xmmword_270FA69C0;
      v63 = xmmword_270FA69D0;
      v64 = xmmword_270FA69E0;
      do
      {
        *&buf[v31] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v61 + v31))), v37, *(&v61 + v31), 1), v38, *(&v61 + v31), 2), v39, *(&v61 + v31), 3);
        v31 += 16;
      }

      while (v31 != 64);
      v40 = 0;
      v41 = v68;
      HIDWORD(v41) = 1.0;
      v42 = v60[0];
      v43 = v60[1];
      v44 = v60[2];
      v61 = *buf;
      v62 = v66;
      v63 = v67;
      v64 = v41;
      do
      {
        *&buf[v40] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*(&v61 + v40))), v43, *(&v61 + v40), 1), v44, *(&v61 + v40), 2), v58, *(&v61 + v40), 3);
        v40 += 16;
      }

      while (v40 != 64);
      v45 = v66;
      v46 = v67;
      v47 = v68;
      *v4 = *buf;
      *(v4 + 16) = v45;
      *(v4 + 32) = v46;
      *(v4 + 48) = v47;
      v48 = 1;
    }

    else
    {
      v48 = 0;
      *v4 = 0;
    }

    *(v4 + 64) = v48;
  }

  else
  {
    *v4 = 0;
    *(v4 + 64) = 0;
  }

LABEL_26:
  return v49;
}

- (id)processCaptureData:(int32x4_t)data trackingData:(int32x4_t)trackingData framePose:(float32x4_t)pose validDataFrameBounds:(uint64_t)bounds
{
  v92 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = a8;
  v15 = VGLogVGFrameSelector(v14);
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessCaptureData", &unk_270FBF062, buf, 2u);
  }

  if (v13)
  {
    objc_msgSend_timestamp(v13);
  }

  else
  {
    memset(buf, 0, 24);
  }

  Seconds = CMTimeGetSeconds(buf);
  v18 = __VGLogSharedInstance(v17);
  v19 = (Seconds * 1000.0);
  v20 = vmulq_f32(pose, pose);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  v22 = vmulq_n_f32(pose, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  v23 = vtrn2q_s32(a2, data);
  v23.i32[2] = trackingData.i32[1];
  v83 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a2, trackingData), data), v22.f32[0]), v23, *v22.f32, 1), vzip1q_s32(vzip2q_s32(a2, trackingData), vdupq_laneq_s32(data, 2)), v22, 2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v24 = (asinf(v83.f32[0]) * 180.0) / 3.14159265;
    v25 = v24;
    v26 = asinf(v83.f32[1]);
    *buf = 134219265;
    *&buf[4] = (Seconds * 1000.0);
    *&buf[12] = 2049;
    *&buf[14] = pose.f32[0];
    *&buf[22] = 2049;
    *&buf[24] = pose.f32[1];
    v27 = (v26 * 180.0) / 3.14159265;
    *v89 = 2049;
    *&v89[2] = pose.f32[2];
    *&v89[10] = 2049;
    *&v89[12] = v25;
    *&v89[20] = 2049;
    *&v89[22] = v27;
    _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_DEBUG, " Frame#%zu acquired by pose selector with position x:%{private}g y:%{private}g z:%{private}g view direction x:%{private}g y:%{private}g ", buf, 0x3Eu);
  }

  v29 = __VGLogSharedInstance(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    allFaces = [v13 allFaces];
    if (allFaces)
    {
      v31 = MEMORY[0x277CCABB0];
      allFaces2 = [v13 allFaces];
      v32 = [v31 numberWithUnsignedInteger:{objc_msgSend(allFaces2, "count")}];
    }

    else
    {
      v32 = @"n/a";
    }

    *buf = 134218242;
    *&buf[4] = (Seconds * 1000.0);
    *&buf[12] = 2112;
    *&buf[14] = v32;
    _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_DEBUG, " Frame#%zu number of face bounding boxes: %@  ", buf, 0x16u);
    if (allFaces)
    {
    }
  }

  mirrored = [v13 mirrored];
  v34 = (atan2f(-v83.f32[0], v83.f32[2]) * 180.0) / 3.14159265;
  if (mirrored)
  {
    v35 = -v34;
  }

  else
  {
    v35 = v34;
  }

  v36 = asinf(v83.f32[1]);
  v38 = __VGLogSharedInstance(v37);
  v39 = (v36 * -180.0) / 3.14159265;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218497;
    *&buf[4] = v19;
    *&buf[12] = 2049;
    *&buf[14] = v35;
    *&buf[22] = 2049;
    *&buf[24] = v39;
    _os_log_impl(&dword_270F06000, v38, OS_LOG_TYPE_DEBUG, " Frame#%zu [yaw pitch] (degrees): [%{private}g %{private}g] ", buf, 0x20u);
  }

  if ([*(self + 40) useSimpleSelector])
  {
    *buf = v35;
    *&buf[4] = v39;
    *&buf[8] = 0;
    *&buf[16] = v83;
    *v89 = a2;
    *&v89[16] = data;
    trackingDataCopy2 = trackingData;
    poseCopy2 = pose;
    [self processHeadPoseSimple:buf frameTimestampMS:v19];
  }

  else
  {
    *buf = v35;
    *&buf[4] = v39;
    *&buf[8] = 0;
    *&buf[16] = v83;
    *v89 = a2;
    *&v89[16] = data;
    trackingDataCopy2 = trackingData;
    poseCopy2 = pose;
    [self processHeadPose:buf captureData:v13 trackingData:v14 validDataBounds:a9 frameTimestampMS:v19];
  }
  v40 = ;
  *&v41 = v35;
  [v40 setYawInDegrees:v41];
  *&v42 = v39;
  v43 = vg::shared::VisualLogger::sharedLogger([v40 setPitchInDegrees:v42]);
  rgbRectified = [v13 rgbRectified];
  if (v13)
  {
    objc_msgSend_timestamp(v13);
  }

  else
  {
    memset(buf, 0, 24);
  }

  v45 = CMTimeGetSeconds(buf);
  vg::shared::VisualLogger::logPixelBuffer(v43, rgbRectified, v45, &cfstr_VisageFramesel.isa, 0);
  v46 = MEMORY[0x277CCACA8];
  if (v40)
  {
    objc_msgSend_rejectionState(v40);
    v47 = *buf;
  }

  else
  {
    v47 = 0;
    memset(buf, 0, sizeof(buf));
  }

  vg::frame_selection::frameRejectionReasonToString(v47, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v49 = [v46 stringWithFormat:@"%s", p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    objc_msgSend_rejectionState(v40);
    if (*&buf[8])
    {
      objc_msgSend_rejectionState(v40);
      v50 = __p.__r_.__value_.__l.__size_;

      goto LABEL_39;
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v50 = @"None";
LABEL_39:

  v86[0] = @"picked";
  isSuccessful = [v40 isSuccessful];
  v52 = @"no";
  if (isSuccessful)
  {
    v52 = @"yes";
  }

  v87[0] = v52;
  v87[1] = v49;
  v86[1] = @"reason";
  v86[2] = @"description";
  v87[2] = v50;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  if (v13)
  {
    objc_msgSend_timestamp(v13);
  }

  else
  {
    memset(buf, 0, 24);
  }

  v54 = CMTimeGetSeconds(buf);
  vg::shared::VisualLogger::logDictionary(v43, v53, v54, &cfstr_VisageFramesel_0.isa, 0);

  v56 = vg::shared::VisualLogger::sharedLogger(v55);
  if ([v40 isSuccessful])
  {
    v57 = *(self + 8) + 112 * [v40 poseIndex];
    [v40 setTargetAngleId:*(v57 + 72)];
    LODWORD(v58) = *(v57 + 68);
    [v40 setAngleInDegrees:v58];
    if (*(v57 + 80) == 1 && vg::shared::VisualLogger::isLoggerEnabled(v56, &cfstr_VisageFramesel_1.isa))
    {
      rgbRectified2 = [v13 rgbRectified];
      if (v13)
      {
        objc_msgSend_timestamp(v13);
      }

      else
      {
        memset(buf, 0, 24);
      }

      v63 = CMTimeGetSeconds(buf);
      vg::shared::VisualLogger::logPixelBuffer(v56, rgbRectified2, v63, &cfstr_VisageFramesel_1.isa, 0);
    }

    if (*(v57 + 64))
    {
      v64 = @"pitch";
    }

    else
    {
      v64 = @"yaw";
    }

    v65 = v64;
    v66 = __VGLogSharedInstance(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(v57 + 68);
      v68 = *(v57 + 72);
      *buf = 134218755;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v65;
      *&buf[22] = 2049;
      *&buf[24] = v67;
      *v89 = 2049;
      *&v89[2] = v68;
      _os_log_impl(&dword_270F06000, v66, OS_LOG_TYPE_DEBUG, " Frame#%zu selected by %@ selector with angle:%{private}f target angle index:%{private}zu ", buf, 0x2Au);
    }

    v69 = objc_opt_new();
    v70 = [v13 copy];
    [v69 setCaptureData:v70];

    [v69 setTrackingData:v14];
    [v69 setFrontPose:*(v57 + 80)];
    bodyPoseFrameState = [v40 bodyPoseFrameState];
    [v69 setBodyPoseFrameState:bodyPoseFrameState];

    if (*(v57 + 64))
    {
      *&v72 = v39;
    }

    else
    {
      *&v72 = v35;
    }

    [v69 setSelectedAngle:v72];
    *&v73 = v39;
    [v69 setSelectedPitch:v73];
    *&v74 = v35;
    [v69 setSelectedYaw:v74];
    v75 = *(v57 + 16);
    v76 = +[VGFrameSelector invalidPose];
    LODWORD(v75) = [v75 isEqual:v76];

    if (v75)
    {
      --*(self + 64);
    }

    v77 = *(v57 + 16);
    *(v57 + 16) = v69;
  }

  else
  {
    isLoggerEnabled = vg::shared::VisualLogger::isLoggerEnabled(v56, &cfstr_VisageFramesel_1.isa);
    if (isLoggerEnabled)
    {
      ZeroPixelBuffer = createZeroPixelBuffer(1uLL, 1uLL);
      if (ZeroPixelBuffer)
      {
        if (v13)
        {
          objc_msgSend_timestamp(v13);
        }

        else
        {
          memset(buf, 0, 24);
        }

        v62 = CMTimeGetSeconds(buf);
        vg::shared::VisualLogger::logPixelBuffer(v56, ZeroPixelBuffer, v62, &cfstr_VisageFramesel_1.isa, 0);
      }

      CVPixelBufferRelease(ZeroPixelBuffer);
    }
  }

  __82__VGFrameSelector_processCaptureData_trackingData_framePose_validDataFrameBounds___block_invoke(isLoggerEnabled);

  return v40;
}

void __82__VGFrameSelector_processCaptureData_trackingData_framePose_validDataFrameBounds___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessCaptureData", &unk_270FBF062, v2, 2u);
  }
}

- (id)resultsForMotionType:(optional<vg::frame_selection::MotionType>)type
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:self->_requiredPosesCount];
  requiredPosesCount = self->_requiredPosesCount;
  if (requiredPosesCount)
  {
    v8 = 0;
    for (i = 0; i < requiredPosesCount; ++i)
    {
      begin = self->_targetPosesData.__begin_;
      if ((*&type & 0x100000000) == 0 || *(begin + v8 + 64) == type.var0.var1)
      {
        v11 = *(begin + v8 + 16);
        LODWORD(v6) = *(begin + v8 + 68);
        v12 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
        [v5 setObject:v11 forKeyedSubscript:v12];

        requiredPosesCount = self->_requiredPosesCount;
      }

      v8 += 112;
    }
  }

  return v5;
}

- (id)selectedValidPosesForMotion:(optional<vg::frame_selection::MotionType>)motion
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:self->_requiredPosesCount];
  if (self->_requiredPosesCount)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      begin = self->_targetPosesData.__begin_;
      if (((*&motion & 0x100000000) == 0 || *(begin + v6 + 64) == motion.var0.var1) && [*(begin + v6 + 16) valid])
      {
        v10 = *(begin + v6 + 16);
        LODWORD(v9) = *(begin + v6 + 68);
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
        [v5 setObject:v10 forKeyedSubscript:v11];
      }

      ++v7;
      v6 += 112;
    }

    while (v7 < self->_requiredPosesCount);
  }

  return v5;
}

- (BOOL)completedYaw
{
  selfCopy = self;
  selectedYawValidPoses = [(VGFrameSelector *)self selectedYawValidPoses];
  v4 = [selectedYawValidPoses count];
  LOBYTE(selfCopy) = v4 == [(VGFrameSelectorOptions *)selfCopy->_options yawFrameCount];

  return selfCopy;
}

- (BOOL)completedPitch
{
  selfCopy = self;
  selectedPitchValidPoses = [(VGFrameSelector *)self selectedPitchValidPoses];
  v4 = [selectedPitchValidPoses count];
  LOBYTE(selfCopy) = v4 == [(VGFrameSelectorOptions *)selfCopy->_options pitchFrameCount];

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end