@interface VGUserBodyPoseGuidance
- (VGUserBodyPoseGuidance)initWithOptions:(id)options;
- (VGUserBodyPoseGuidanceResult)calculatePoseGuidanceFromSkeleton:(simd_float4)skeleton andAtlasToDeviceTransform:(simd_float4)transform atTimestamp:(simd_float4)timestamp;
- (float)calculateAggregatedScoreFromScores:(id)scores;
- (id)evaluatePoseValues:(id)values atTimestamp:(double)timestamp;
@end

@implementation VGUserBodyPoseGuidance

- (VGUserBodyPoseGuidance)initWithOptions:(id)options
{
  v97[7] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v96.receiver = self;
  v96.super_class = VGUserBodyPoseGuidance;
  v6 = [(VGUserBodyPoseGuidance *)&v96 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadTargetMin];
    v9 = v8;
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadTargetMax];
    v11 = v10;
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadMarginMin];
    v13 = v12;
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadMarginMax];
    LODWORD(v15) = v14;
    LODWORD(v16) = v9;
    LODWORD(v17) = v11;
    LODWORD(v18) = v13;
    v19 = [VGUserBodyPoseTarget targetWithIdentifier:2 targetDescription:@"torso - up aligned with head" targetMin:1 targetMax:1 marginMin:30 marginMax:30 feedbackTooSmall:v16 feedbackTooLarge:v17 rejectionReasonTooSmall:v18 rejectionReasonTooLarge:v15];
    v97[0] = v19;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistTargetMin];
    v21 = v20;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistTargetMax];
    v23 = v22;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistMarginMin];
    v25 = v24;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistMarginMax];
    LODWORD(v27) = v26;
    LODWORD(v28) = v21;
    LODWORD(v29) = v23;
    LODWORD(v30) = v25;
    v31 = [VGUserBodyPoseTarget targetWithIdentifier:3 targetDescription:@"shoulders - twist relative to head" targetMin:2 targetMax:2 marginMin:31 marginMax:31 feedbackTooSmall:v28 feedbackTooLarge:v29 rejectionReasonTooSmall:v30 rejectionReasonTooLarge:v27];
    v97[1] = v31;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowTargetMin];
    v33 = v32;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowTargetMax];
    v35 = v34;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowMarginMin];
    v37 = v36;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowMarginMax];
    LODWORD(v39) = v38;
    LODWORD(v40) = v33;
    LODWORD(v41) = v35;
    LODWORD(v42) = v37;
    v43 = [VGUserBodyPoseTarget targetWithIdentifier:0 targetDescription:@"elbows - left arm" targetMin:3 targetMax:4 marginMin:33 marginMax:32 feedbackTooSmall:v40 feedbackTooLarge:v41 rejectionReasonTooSmall:v42 rejectionReasonTooLarge:v39];
    v97[2] = v43;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowTargetMin];
    v45 = v44;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowTargetMax];
    v47 = v46;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowMarginMin];
    v49 = v48;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowMarginMax];
    LODWORD(v51) = v50;
    LODWORD(v52) = v45;
    LODWORD(v53) = v47;
    LODWORD(v54) = v49;
    v55 = [VGUserBodyPoseTarget targetWithIdentifier:1 targetDescription:@"elbows - right arm" targetMin:4 targetMax:3 marginMin:34 marginMax:35 feedbackTooSmall:v52 feedbackTooLarge:v53 rejectionReasonTooSmall:v54 rejectionReasonTooLarge:v51];
    v97[3] = v55;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryTargetMin];
    v57 = v56;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryTargetMax];
    v59 = v58;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryMarginMin];
    v61 = v60;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryMarginMax];
    LODWORD(v63) = v62;
    LODWORD(v64) = v57;
    LODWORD(v65) = v59;
    LODWORD(v66) = v61;
    v67 = [VGUserBodyPoseTarget targetWithIdentifier:4 targetDescription:@"shoulders - height asymmetry (degree)" targetMin:5 targetMax:5 marginMin:36 marginMax:36 feedbackTooSmall:v64 feedbackTooLarge:v65 rejectionReasonTooSmall:v66 rejectionReasonTooLarge:v63];
    v97[4] = v67;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardTargetMin];
    v69 = v68;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardTargetMax];
    v71 = v70;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardMarginMin];
    v73 = v72;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardMarginMax];
    LODWORD(v75) = v74;
    LODWORD(v76) = v69;
    LODWORD(v77) = v71;
    LODWORD(v78) = v73;
    v79 = [VGUserBodyPoseTarget targetWithIdentifier:5 targetDescription:@"shoulders - left_shoulder_pos_atlas_space z" targetMin:6 targetMax:7 marginMin:37 marginMax:38 feedbackTooSmall:v76 feedbackTooLarge:v77 rejectionReasonTooSmall:v78 rejectionReasonTooLarge:v75];
    v97[5] = v79;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardTargetMin];
    v81 = v80;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardTargetMax];
    v83 = v82;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardMarginMin];
    v85 = v84;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardMarginMax];
    LODWORD(v87) = v86;
    LODWORD(v88) = v81;
    LODWORD(v89) = v83;
    LODWORD(v90) = v85;
    v91 = [VGUserBodyPoseTarget targetWithIdentifier:6 targetDescription:@"shoulders - right_shoulder_pos_atlas_space z" targetMin:6 targetMax:7 marginMin:39 marginMax:40 feedbackTooSmall:v88 feedbackTooLarge:v89 rejectionReasonTooSmall:v90 rejectionReasonTooLarge:v87];
    v97[6] = v91;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:7];
    poseTargets = v7->_poseTargets;
    v7->_poseTargets = v92;

    v94 = v7;
  }

  return v7;
}

- (float)calculateAggregatedScoreFromScores:(id)scores
{
  scoresCopy = scores;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__VGUserBodyPoseGuidance_calculateAggregatedScoreFromScores___block_invoke;
  v7[3] = &unk_279E28E80;
  v7[4] = &v8;
  [scoresCopy enumerateKeysAndObjectsUsingBlock:v7];
  v4 = [scoresCopy count];
  v5 = v9[6] / v4;
  v9[6] = v5;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __61__VGUserBodyPoseGuidance_calculateAggregatedScoreFromScores___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 value];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
}

- (id)evaluatePoseValues:(id)values atTimestamp:(double)timestamp
{
  v103 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v73 = objc_opt_new();
  v76 = objc_opt_new();
  v75 = objc_opt_new();
  v86 = vg::shared::VisualLogger::sharedLogger(v75);
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = self->_poseTargets;
  selfCopy = self;
  v79 = [(NSArray *)obj countByEnumeratingWithState:&v92 objects:v102 count:16];
  v6 = 0;
  if (v79)
  {
    v77 = *v93;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v93 != v77)
        {
          objc_enumerationMutation(obj);
        }

        rejectionReasonTooSmall = v6;
        v8 = *(*(&v92 + 1) + 8 * i);
        v9 = objc_opt_new();
        [v8 targetMin];
        [v9 setRawValueTargetMin:?];
        [v8 targetMax];
        [v9 setRawValueTargetMax:?];
        [v8 marginMin];
        [v9 setRawValueMarginMin:?];
        [v8 marginMax];
        [v9 setRawValueMarginMax:?];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "identifier")}];
        v84 = [valuesCopy objectForKeyedSubscript:v10];

        if (v84)
        {
          [v84 floatValue];
          v12 = v11;
          [v9 setRawValue:?];
          [v8 targetMax];
          if (v12 <= v13)
          {
            [v8 targetMin];
            if (v12 >= *&v18)
            {
              LODWORD(v18) = 1.0;
              [v9 setValue:v18];
            }

            else
            {
              [v9 setFeedback:{objc_msgSend(v8, "feedbackTooSmall")}];
              if (!rejectionReasonTooSmall)
              {
                rejectionReasonTooSmall = [v8 rejectionReasonTooSmall];
              }

              [v8 targetMin];
              v20 = v19;
              [v8 marginMin];
              *&v22 = fmaxf(1.0 - ((v20 - v12) / v21), 0.0);
              [v9 setValue:v22];
            }
          }

          else
          {
            [v9 setFeedback:{objc_msgSend(v8, "feedbackTooLarge")}];
            if (!rejectionReasonTooSmall)
            {
              rejectionReasonTooSmall = [v8 rejectionReasonTooLarge];
            }

            [v8 targetMax];
            v15 = v14;
            [v8 marginMax];
            *&v17 = fmaxf(1.0 - ((v12 - v15) / v16), 0.0);
            [v9 setValue:v17];
          }

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "identifier")}];
          [v76 setObject:v9 forKey:v23];

          v100[0] = @"id";
          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "identifier")}];
          v101[0] = v81;
          v100[1] = @"description";
          targetDescription = [v8 targetDescription];
          v101[1] = targetDescription;
          v100[2] = @"rawValueTargetMin";
          v24 = MEMORY[0x277CCABB0];
          [v8 targetMin];
          v80 = [v24 numberWithFloat:?];
          v101[2] = v80;
          v100[3] = @"rawValueTargetMax";
          v25 = MEMORY[0x277CCABB0];
          [v8 targetMax];
          v26 = [v25 numberWithFloat:?];
          v101[3] = v26;
          v100[4] = @"rawValueMarginMin";
          v27 = MEMORY[0x277CCABB0];
          [v8 marginMin];
          v28 = [v27 numberWithFloat:?];
          v101[4] = v28;
          v100[5] = @"rawValueMarginMax";
          v29 = MEMORY[0x277CCABB0];
          [v8 marginMax];
          v30 = [v29 numberWithFloat:?];
          v101[5] = v30;
          v100[6] = @"rawValue";
          *&v31 = v12;
          v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
          v101[6] = v32;
          v100[7] = @"value";
          v33 = MEMORY[0x277CCABB0];
          [v9 value];
          v34 = [v33 numberWithFloat:?];
          v101[7] = v34;
          v100[8] = @"feedback";
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "feedback")}];
          v101[8] = v35;
          v100[9] = @"feedbackStr";
          v36 = +[VGBodyPoseFeedbackHelper feedbackToString:](VGBodyPoseFeedbackHelper, "feedbackToString:", [v9 feedback]);
          v101[9] = v36;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:10];
          [(vg::shared::VisualLogger *)v75 addObject:v37];

          v38 = MEMORY[0x277CCACA8];
          targetDescription2 = [v8 targetDescription];
          v40 = [v38 stringWithFormat:@"visage.userbodyposeguidance.rawValues.%@", targetDescription2];

          targetDescription3 = [v8 targetDescription];
          vg::shared::VisualLogger::logFloat(v86, v12, timestamp, v40, targetDescription3);

          [v8 targetMin];
          vg::shared::VisualLogger::logFloat(v86, v42, timestamp, v40, &cfstr_Min.isa);
          [v8 targetMax];
          vg::shared::VisualLogger::logFloat(v86, v43, timestamp, v40, &cfstr_Max.isa);
          [v8 targetMin];
          v45 = v44;
          [v8 marginMin];
          vg::shared::VisualLogger::logFloat(v86, v45 - v46, timestamp, v40, &cfstr_Minmargin.isa);
          [v8 targetMax];
          v48 = v47;
          [v8 marginMax];
          vg::shared::VisualLogger::logFloat(v86, v48 + v49, timestamp, v40, &cfstr_Maxmargin.isa);
          [v9 value];
          v51 = v50;
          targetDescription4 = [v8 targetDescription];
          vg::shared::VisualLogger::logFloat(v86, v51, timestamp, &cfstr_VisageUserbody_0.isa, targetDescription4);

          [v9 value];
          v54 = v53;
          targetDescription5 = [v8 targetDescription];
          vg::shared::VisualLogger::logFloat(v86, v7 + v54, timestamp, &cfstr_VisageUserbody_1.isa, targetDescription5);

          v7 = v7 + 1.0;
        }

        v6 = rejectionReasonTooSmall;
      }

      v79 = [(NSArray *)obj countByEnumeratingWithState:&v92 objects:v102 count:16];
    }

    while (v79);
  }

  v56 = objc_opt_new();
  [v56 setScores:v76];
  [(VGUserBodyPoseGuidance *)selfCopy calculateAggregatedScoreFromScores:v76];
  [v56 setAggregatedScore:?];
  [v56 aggregatedScore];
  vg::shared::VisualLogger::logFloat(v86, v57, timestamp, &cfstr_VisageUserbody_0.isa, &cfstr_Aggregatedscor.isa);
  v98[0] = @"aggregatedScore";
  v58 = MEMORY[0x277CCABB0];
  [v56 aggregatedScore];
  v59 = [v58 numberWithFloat:?];
  v98[1] = @"poseValues";
  v99[0] = v59;
  v60 = [(vg::shared::VisualLogger *)v75 copy];
  v99[1] = v60;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];

  if (v6)
  {
    v62 = MEMORY[0x277CCACA8];
    vg::frame_selection::frameRejectionReasonToString(v6, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v64 = [v62 stringWithFormat:@"Body Pose Guidance filter failed with rejection: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v64 = 0;
  }

  v87 = v6;
  v65 = v64;
  v88 = v65;
  v89 = 0;
  v66 = v61;
  v90 = v66;
  if (v73)
  {
    [v73 setRejection:&v87];
  }

  else
  {
  }

  [v73 setFrameState:v56];
  if (vg::shared::VisualLogger::isLoggerEnabled(v86, &cfstr_VisageUserbody_2.isa))
  {
    v96[0] = @"aggregatedScore";
    v67 = MEMORY[0x277CCABB0];
    [v56 aggregatedScore];
    v68 = [v67 numberWithFloat:?];
    v96[1] = @"poseValues";
    v97[0] = v68;
    v69 = [(vg::shared::VisualLogger *)v75 copy];
    v97[1] = v69;
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];

    vg::shared::VisualLogger::logDictionary(v86, v70, timestamp, &cfstr_VisageUserbody_2.isa, 0);
  }

  return v73;
}

- (VGUserBodyPoseGuidanceResult)calculatePoseGuidanceFromSkeleton:(simd_float4)skeleton andAtlasToDeviceTransform:(simd_float4)transform atTimestamp:(simd_float4)timestamp
{
  v90[7] = *MEMORY[0x277D85DE8];
  v10 = a8;
  v11 = objc_opt_new();
  v92.columns[1] = skeleton;
  v92.columns[0] = a2;
  v92.columns[3] = timestamp;
  v92.columns[2] = transform;
  v93 = __invert_f4(v92);
  v66 = v93.columns[0];
  v67 = v93.columns[1];
  v68 = v93.columns[3];
  v70 = v93.columns[2];
  v88.i32[2] = 0;
  v88.i64[0] = 0;
  if (!device_space_joint_pos(&v88, v10, 19))
  {
    missing_joint(v87, &cfstr_Leftshoulder.isa);
    if (!v11)
    {

      v55 = v87[1];
      goto LABEL_31;
    }

    [v11 setRejection:v87];
LABEL_32:
    v54 = v11;
    goto LABEL_33;
  }

  v86.i32[2] = 0;
  v86.i64[0] = 0;
  if (!device_space_joint_pos(&v86, v10, 15))
  {
    missing_joint(v85, &cfstr_Rightshoulder.isa);
    if (!v11)
    {

      v55 = v85[1];
      goto LABEL_31;
    }

    [v11 setRejection:v85];
    goto LABEL_32;
  }

  v84.i32[2] = 0;
  v84.i64[0] = 0;
  if (!device_space_joint_pos(&v84, v10, 20))
  {
    missing_joint(v83, &cfstr_Leftelbow.isa);
    if (!v11)
    {

      v55 = v83[1];
      goto LABEL_31;
    }

    [v11 setRejection:v83];
    goto LABEL_32;
  }

  v82.i32[2] = 0;
  v82.i64[0] = 0;
  if (!device_space_joint_pos(&v82, v10, 16))
  {
    missing_joint(v81, &cfstr_Rightelbow.isa);
    if (!v11)
    {

      v55 = v81[1];
      goto LABEL_31;
    }

    [v11 setRejection:v81];
    goto LABEL_32;
  }

  v80.i32[2] = 0;
  v80.i64[0] = 0;
  if (!device_space_joint_pos(&v80, v10, 0))
  {
    missing_joint(v79, &cfstr_Midshoulder.isa);
    if (!v11)
    {

      v55 = v79[1];
      goto LABEL_31;
    }

    [v11 setRejection:v79];
    goto LABEL_32;
  }

  v78.i32[2] = 0;
  v78.i64[0] = 0;
  if (!device_space_joint_pos(&v78, v10, 1))
  {
    missing_joint(v77, &cfstr_Spine3.isa);
    if (v11)
    {
      [v11 setRejection:v77];
      goto LABEL_32;
    }

    v55 = v77[1];
LABEL_31:

    goto LABEL_32;
  }

  v12 = vsubq_f32(v84, v88);
  v13 = vmulq_f32(v12, v12);
  v13.f32[0] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)) + 1.0e-16;
  v14 = vsubq_f32(v82, v86);
  v15 = vmulq_f32(v14, v14);
  v15.f32[0] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) + 1.0e-16;
  v63 = vdivq_f32(v12, vdupq_lane_s32(*v13.f32, 0));
  v64 = vdivq_f32(v14, vdupq_lane_s32(*v15.f32, 0));
  v57 = v86;
  v58 = v88;
  v16 = vsubq_f32(v86, v88);
  v17 = vmulq_f32(v16, v16);
  v17.f32[0] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) + 1.0e-16;
  v18 = vdivq_f32(v16, vdupq_lane_s32(*v17.f32, 0));
  v19 = vsubq_f32(v78, v80);
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) + 1.0e-16;
  v65 = vdivq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
  v61 = v18;
  v62 = vnegq_f32(v18);
  v60 = angle_deg_in_2d_plane(v62, a2, transform);
  v59 = angle_deg_in_2d_plane(v62, a2, skeleton);
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v62), v65, vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL));
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vmulq_f32(v21, v21);
  v23.f32[0] = sqrtf(v23.f32[1] + (v23.f32[2] + v23.f32[0])) + 1.0e-16;
  v75 = vdivq_f32(v22, vdupq_lane_s32(*v23.f32, 0));
  v24 = vnegq_f32(v65);
  v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), v65), v75, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vmulq_f32(v25, v25);
  v27.f32[0] = sqrtf(v27.f32[1] + (v27.f32[2] + v27.f32[0])) + 1.0e-16;
  v72 = vdivq_f32(v26, vdupq_lane_s32(*v27.f32, 0));
  v28 = angle_deg_in_2d_plane(v63, v65, v72);
  v29 = angle_deg_in_2d_plane(v64, v65, v72);
  v30 = deg_angle_between(v75, v63);
  v31 = deg_angle_between(v75, v64);
  v32 = v28;
  if (v30 < 25.0)
  {
    v33 = fminf(fmaxf((25.0 - v30) / 10.0, 0.0), 1.0);
    v32 = (v33 * 90.0) + ((1.0 - v33) * v28);
  }

  v34 = fminf(fmaxf((25.0 - v31) / 10.0, 0.0), 1.0);
  v35 = (v34 * -90.0) + ((1.0 - v34) * v29);
  if (v31 < 25.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = v29;
  }

  v37 = deg_angle_between(v65, vnegq_f32(skeleton));
  v89[0] = &unk_2880F5EF0;
  *&v38 = v32;
  v90[0] = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v89[1] = &unk_2880F5F08;
  *&v39 = v36;
  v76 = v90[0];
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v90[1] = v40;
  v89[2] = &unk_2880F5F20;
  *&v41 = v37;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v90[2] = v42;
  v89[3] = &unk_2880F5F38;
  *&v43 = v60;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v90[3] = v44;
  v89[4] = &unk_2880F5F50;
  *&v45 = v59;
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
  v47 = vaddq_f32(v68, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, v58.f32[0]), v67, *v58.f32, 1), v70, v58, 2));
  v90[4] = v46;
  v89[5] = &unk_2880F5F68;
  v47.i32[0] = v47.i32[2];
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:*v47.i64];
  v49 = vaddq_f32(v68, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, v57.f32[0]), v67, *v57.f32, 1), v70, v57, 2));
  v90[5] = v48;
  v89[6] = &unk_2880F5F80;
  v49.i32[0] = v49.i32[2];
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:*v49.i64];
  v90[6] = v50;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:7];

  v53 = vg::shared::VisualLogger::sharedLogger(v52);
  vg::shared::VisualLogger::logFloat(v53, v28, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Leftelbowraw.isa);
  vg::shared::VisualLogger::logFloat(v53, v29, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Rightelbowraw.isa);
  vg::shared::VisualLogger::logFloat(v53, v30, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Leftelbowforwa.isa);
  vg::shared::VisualLogger::logFloat(v53, v31, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Rightelbowforw.isa);
  v54 = [self evaluatePoseValues:v51 atTimestamp:a6];

LABEL_33:

  return v54;
}

@end