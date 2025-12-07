@interface CIDualRedEyeRepairTuning
+ (id)defaultRepairParameters;
+ (id)defaultSessionParameters;
+ (id)repairParametersForTuning:(unint64_t)tuning;
+ (id)sessionParametersForTuning:(unint64_t)tuning;
- (CIDualRedEyeRepairTuning)initWithTuning:(unint64_t)tuning;
- (unint64_t)tuningFromCameraModel:(id)model portType:(id)type;
- (void)dealloc;
- (void)setTuningParametersByPortType:(id)type withCameraMetadata:(id)metadata;
- (void)updateWithCaptureSetup:(id)setup portType:(id)type;
@end

@implementation CIDualRedEyeRepairTuning

- (CIDualRedEyeRepairTuning)initWithTuning:(unint64_t)tuning
{
  v6.receiver = self;
  v6.super_class = CIDualRedEyeRepairTuning;
  v4 = [(CIDualRedEyeRepairTuning *)&v6 init];
  if (v4)
  {
    [(CIDualRedEyeRepairTuning *)v4 setRepairTuning:[CIDualRedEyeRepairTuning repairParametersForTuning:tuning]];
    [(CIDualRedEyeRepairTuning *)v4 setSessionTuning:[CIDualRedEyeRepairTuning sessionParametersForTuning:tuning]];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIDualRedEyeRepairTuning;
  [(CIDualRedEyeRepairTuning *)&v3 dealloc];
}

- (unint64_t)tuningFromCameraModel:(id)model portType:(id)type
{
  if ([model isEqualToString:@"N841"])
  {
    return 4;
  }

  if (([model isEqualToString:@"D321"] & 1) != 0 || (objc_msgSend(model, "isEqualToString:", @"D331") & 1) != 0 || objc_msgSend(model, "isEqualToString:", @"D331p"))
  {
    if ([type isEqualToString:@"PortTypeBackTelephoto"])
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (([model isEqualToString:@"D421"] & 1) != 0 || (objc_msgSend(model, "isEqualToString:", @"D431") & 1) != 0 || objc_msgSend(model, "isEqualToString:", @"N104"))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (void)setTuningParametersByPortType:(id)type withCameraMetadata:(id)metadata
{
  v7 = [metadata objectForKey:@"Tuning"];
  v8 = [metadata objectForKey:@"DeviceModelName"];
  v9 = [metadata objectForKeyedSubscript:@"DeviceModelName"];
  v10 = [metadata objectForKeyedSubscript:@"PortType"];
  if (v7)
  {
    v8 = [objc_msgSend(metadata objectForKey:{@"Tuning", "unsignedIntegerValue"}];
    if (v8 == 999)
    {
      return;
    }
  }

  else if (v8)
  {
    v8 = [(CIDualRedEyeRepairTuning *)self tuningFromCameraModel:v9 portType:v10];
  }

  [(CIDualRedEyeRepairTuning *)self setRepairTuning:[CIDualRedEyeRepairTuning repairParametersForTuning:v8]];
  [(CIDualRedEyeRepairTuning *)self setSessionTuning:[CIDualRedEyeRepairTuning sessionParametersForTuning:v8]];
  if (!type)
  {
    v11 = [metadata objectForKeyedSubscript:@"TuningParametersByPortType"];
    if (!v11)
    {
      v11 = [metadata objectForKeyedSubscript:@"RedEye"];
      if (!v11)
      {
        return;
      }
    }

    type = v11;
  }

  [(CIDualRedEyeRepairTuning *)self updateWithCaptureSetup:type portType:v10];
}

+ (id)defaultSessionParameters
{
  v4[15] = *MEMORY[0x1E69E9840];
  {
    v3[0] = @"kMinPrimaryDimension";
    v3[1] = @"kMinLandmarkConfidenceThreshold";
    v4[0] = &unk_1F1081BC0;
    v4[1] = &unk_1F10835E8;
    v3[2] = @"kMaxFaceJunkinessThreshold";
    v3[3] = @"kMinLandmarkArea";
    v4[2] = &unk_1F10835F8;
    v4[3] = &unk_1F1081BD8;
    v3[4] = @"kMinIsotropy";
    v3[5] = @"kMaxFaceCount";
    v4[4] = &unk_1F1083608;
    v4[5] = &unk_1F1081BF0;
    v3[6] = @"kSessionTuningOutsetROILong";
    v3[7] = @"kSessionTuningOutsetROIShort";
    v4[6] = &unk_1F1083608;
    v4[7] = &unk_1F1083618;
    v3[8] = @"kRenderFullRect";
    v3[9] = @"kMinLaplacianVariance";
    v4[8] = MEMORY[0x1E695E118];
    v4[9] = &unk_1F1083628;
    v3[10] = @"kRegionOutset";
    v3[11] = @"kUseFaceSegmentation";
    v4[10] = &unk_1F1081C08;
    v4[11] = MEMORY[0x1E695E110];
    v3[12] = @"kUseFaceSegmentationMask";
    v3[13] = @"kForceFaceSegmentationPupils";
    v4[12] = MEMORY[0x1E695E110];
    v4[13] = MEMORY[0x1E695E110];
    v3[14] = @"kAutoFlashOverrideSNRThreshold";
    v4[14] = &unk_1F1081C08;
    +[CIDualRedEyeRepairTuning defaultSessionParameters]::parms = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:15];
  }

  return +[CIDualRedEyeRepairTuning defaultSessionParameters]::parms;
}

+ (id)defaultRepairParameters
{
  {
    +[CIDualRedEyeRepairTuning defaultRepairParameters]::parms = &unk_1F1082578;
  }

  return +[CIDualRedEyeRepairTuning defaultRepairParameters]::parms;
}

+ (id)repairParametersForTuning:(unint64_t)tuning
{
  v4 = [+[CIDualRedEyeRepairTuning defaultRepairParameters](CIDualRedEyeRepairTuning "defaultRepairParameters")];
  v5 = CI_LOG_DUALRED();
  if (tuning > 3)
  {
    if (tuning == 4)
    {
      if (v5)
      {
        v33 = ci_logger_api(v5, v6);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v33 repairParametersForTuning:v34, v35, v36, v37, v38, v39, v40];
        }
      }

      [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsX"];
      [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsY"];
      [v4 setObject:&unk_1F10836E8 forKeyedSubscript:@"inputCentroidRadiusSmall"];
      [v4 setObject:&unk_1F1083708 forKeyedSubscript:@"inputIntersect"];
      [v4 setObject:&unk_1F1083818 forKeyedSubscript:@"inputSkinThresholdMed"];
      v15 = &unk_1F10835F8;
      v16 = @"inputScleraThreshold";
      goto LABEL_32;
    }

    if (tuning == 5)
    {
      if (v5)
      {
        v57 = ci_logger_api(v5, v6);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v57 repairParametersForTuning:v58, v59, v60, v61, v62, v63, v64];
        }
      }

      [v4 setObject:&unk_1F10836D8 forKeyedSubscript:@"inputAbortDensityLo"];
      [v4 setObject:&unk_1F1083828 forKeyedSubscript:@"inputAbortDensityDiff"];
      [v4 setObject:&unk_1F1083838 forKeyedSubscript:@"inputRadiusDensity"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputInterPeakMin"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputCircularity"];
      [v4 setObject:&unk_1F1081C20 forKeyedSubscript:@"inputSkinThreshold"];
      [v4 setObject:&unk_1F1081C20 forKeyedSubscript:@"inputSkinThresholdMed"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputMinInterDispersion"];
      [v4 setObject:&unk_1F1083848 forKeyedSubscript:@"inputMaxInterDispersion"];
      [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputMinMaskDiff"];
      [v4 setObject:&unk_1F1083858 forKeyedSubscript:@"inputIntersect"];
      [v4 setObject:&unk_1F1083868 forKeyedSubscript:@"inputCentroidRadius"];
      [v4 setObject:&unk_1F1083658 forKeyedSubscript:@"inputSearchLong"];
      [v4 setObject:&unk_1F1083618 forKeyedSubscript:@"inputSearchShort"];
      [v4 setObject:&unk_1F1083878 forKeyedSubscript:@"inputFlooding"];
      [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputSpecularCutoff"];
      [v4 setObject:&unk_1F10836B8 forKeyedSubscript:@"inputClipMin"];
      [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsX"];
      [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputMidSpectrumWhiteOffsetsY"];
      [v4 setObject:&unk_1F1083648 forKeyedSubscript:@"inputSpecIntensity"];
      [v4 setObject:&unk_1F10836B8 forKeyedSubscript:@"inputSpecArea"];
      v15 = &unk_1F1083888;
      v16 = @"inputSpecular";
      goto LABEL_32;
    }

    if (tuning != 999)
    {
      goto LABEL_22;
    }

    if (v5)
    {
      v17 = ci_logger_api(v5, v6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CIDualRedEyeRepairTuning *)v17 repairParametersForTuning:v18, v19, v20, v21, v22, v23, v24];
      }
    }
  }

  else
  {
    switch(tuning)
    {
      case 1uLL:
        if (v5)
        {
          v25 = ci_logger_api(v5, v6);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v25 repairParametersForTuning:v26, v27, v28, v29, v30, v31, v32];
          }
        }

        break;
      case 2uLL:
        if (v5)
        {
          v49 = ci_logger_api(v5, v6);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v49 repairParametersForTuning:v50, v51, v52, v53, v54, v55, v56];
          }
        }

        break;
      case 3uLL:
        if (v5)
        {
          v7 = ci_logger_api(v5, v6);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v7 repairParametersForTuning:v8, v9, v10, v11, v12, v13, v14];
          }
        }

        [v4 setObject:&unk_1F1083798 forKeyedSubscript:@"inputCenterSpecRad"];
        [v4 setObject:&unk_1F1081C50 forKeyedSubscript:@"inputCentroidGamma"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputCentroidRadius"];
        [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputClosingDilation"];
        [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputClosingErosion"];
        [v4 setObject:&unk_1F10836E8 forKeyedSubscript:@"inputDetectRed"];
        [v4 setObject:&unk_1F10836D8 forKeyedSubscript:@"inputDetectWhite"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputFSmooth"];
        [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputGlintThreshold"];
        [v4 setObject:&unk_1F10837A8 forKeyedSubscript:@"inputIntersect"];
        [v4 setObject:&unk_1F10837B8 forKeyedSubscript:@"inputMaxInterDispersion"];
        [v4 setObject:&unk_1F1083618 forKeyedSubscript:@"inputRadiusRepair"];
        [v4 setObject:&unk_1F10837C8 forKeyedSubscript:@"inputRefilterRange"];
        [v4 setObject:&unk_1F10837D8 forKeyedSubscript:@"inputRefilterSpace"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputRepairChroma"];
        [v4 setObject:&unk_1F1083698 forKeyedSubscript:@"inputRepairDarken"];
        [v4 setObject:&unk_1F1083658 forKeyedSubscript:@"inputRepairDither"];
        [v4 setObject:&unk_1F10837E8 forKeyedSubscript:@"inputScale"];
        [v4 setObject:&unk_1F1083608 forKeyedSubscript:@"inputSkinThreshold"];
        [v4 setObject:&unk_1F10836B8 forKeyedSubscript:@"inputSpecArea"];
        [v4 setObject:&unk_1F10837F8 forKeyedSubscript:@"inputSpecAreaScale"];
        [v4 setObject:&unk_1F1081C68 forKeyedSubscript:@"inputSpecIntensity"];
        [v4 setObject:&unk_1F10835E8 forKeyedSubscript:@"inputSpecMax"];
        [v4 setObject:&unk_1F1083758 forKeyedSubscript:@"inputSpecMin"];
        [v4 setObject:&unk_1F1083638 forKeyedSubscript:@"inputSpecular"];
        [v4 setObject:&unk_1F1081C80 forKeyedSubscript:@"inputTargetClosing"];
        v15 = &unk_1F1083808;
        v16 = @"inputWhiteCutoff";
LABEL_32:
        [v4 setObject:v15 forKeyedSubscript:v16];
        return v4;
      default:
LABEL_22:
        if (v5)
        {
          v41 = ci_logger_api(v5, v6);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [(CIDualRedEyeRepairTuning *)v41 repairParametersForTuning:v42, v43, v44, v45, v46, v47, v48];
          }
        }

        return v4;
    }
  }

  return v4;
}

+ (id)sessionParametersForTuning:(unint64_t)tuning
{
  v4 = [+[CIDualRedEyeRepairTuning defaultSessionParameters](CIDualRedEyeRepairTuning "defaultSessionParameters")];
  v5 = v4;
  if (tuning <= 2)
  {
    if (tuning == 1)
    {
      v41 = CI_LOG_DUALRED();
      if (v41)
      {
        v43 = ci_logger_api(v41, v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v43 sessionParametersForTuning:v44, v45, v46, v47, v48, v49, v50];
        }
      }

      return v5;
    }

    if (tuning != 2)
    {
LABEL_25:
      v51 = CI_LOG_DUALRED();
      if (v51)
      {
        v53 = ci_logger_api(v51, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [(CIDualRedEyeRepairTuning *)v53 sessionParametersForTuning:v54, v55, v56, v57, v58, v59, v60];
        }
      }

      return v5;
    }

    v10 = CI_LOG_DUALRED();
    if (v10)
    {
      v12 = ci_logger_api(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CIDualRedEyeRepairTuning *)v12 sessionParametersForTuning:v13, v14, v15, v16, v17, v18, v19];
      }
    }

    v9 = &unk_1F1083898;
    v7 = @"kMinLaplacianVariance";
LABEL_16:
    v8 = v5;
    goto LABEL_17;
  }

  if (tuning == 3)
  {
    v20 = CI_LOG_DUALRED();
    if (v20)
    {
      v22 = ci_logger_api(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CIDualRedEyeRepairTuning *)v22 sessionParametersForTuning:v23, v24, v25, v26, v27, v28, v29];
      }
    }

    [v5 setObject:&unk_1F1083898 forKeyedSubscript:@"kMinLaplacianVariance"];
    v9 = &unk_1F1083618;
    v7 = @"kRegionOutset";
    goto LABEL_16;
  }

  if (tuning != 4)
  {
    if (tuning == 5)
    {
      [v4 setObject:&unk_1F1081C20 forKeyedSubscript:@"kMaxFaceJunkinessThreshold"];
      [v5 setObject:&unk_1F1081C08 forKeyedSubscript:@"kMinLaplacianVariance"];
      v6 = MEMORY[0x1E695E118];
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kUseFaceSegmentation"];
      v7 = @"kUseFaceSegmentationMask";
      v8 = v5;
      v9 = v6;
LABEL_17:
      [v8 setObject:v9 forKeyedSubscript:v7];
      return v5;
    }

    goto LABEL_25;
  }

  v31 = CI_LOG_DUALRED();
  if (v31)
  {
    v33 = ci_logger_api(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(CIDualRedEyeRepairTuning *)v33 sessionParametersForTuning:v34, v35, v36, v37, v38, v39, v40];
    }
  }

  return v5;
}

- (void)updateWithCaptureSetup:(id)setup portType:(id)type
{
  v7 = updatedTuningFromSetup([(CIDualRedEyeRepairTuning *)self sessionTuning], setup, type, &cfstr_K.isa, &cfstr_Session.isa);
  if (v7)
  {
    [(CIDualRedEyeRepairTuning *)self setSessionTuning:v7];
  }

  else
  {
    v8 = CI_LOG_DUALRED();
    if (v8)
    {
      v10 = ci_logger_api(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairTuning updateWithCaptureSetup:portType:];
      }
    }
  }

  v11 = updatedTuningFromSetup([(CIDualRedEyeRepairTuning *)self repairTuning], setup, type, &cfstr_Input.isa, &cfstr_Repair_0.isa);
  if (v11)
  {
    [(CIDualRedEyeRepairTuning *)self setRepairTuning:v11];
  }

  else
  {
    v12 = CI_LOG_DUALRED();
    if (v12)
    {
      v14 = ci_logger_api(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairTuning updateWithCaptureSetup:portType:];
      }
    }
  }
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning set to B", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning set to A portrait", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning set to A tele", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning set to A wide", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning passing through", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning set to C", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)repairParametersForTuning:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning repairParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Repair tuning set to default", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sessionParametersForTuning:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning sessionParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Session tuning set to B", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sessionParametersForTuning:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning sessionParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Session tuning set to A portrait", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sessionParametersForTuning:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning sessionParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Session tuning set to A tele", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sessionParametersForTuning:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning sessionParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Session tuning set to A wide", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sessionParametersForTuning:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIDualRedEyeRepairTuning sessionParametersForTuning:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Session tuning set to default", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateWithCaptureSetup:portType:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s No CaptureSetup session tuning for port type %@\n", v1, 0x16u);
}

- (void)updateWithCaptureSetup:portType:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s No CaptureSetup repair tuning for port type %@\n", v1, 0x16u);
}

@end