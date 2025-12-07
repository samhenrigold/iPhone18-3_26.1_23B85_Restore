@interface BWUBCaptureParameters
- (BWUBCaptureParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary;
- (int)deepFusionHDREVZeroCountForEffectiveIntegrationTime:(double)time;
- (void)dealloc;
@end

@implementation BWUBCaptureParameters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBCaptureParameters;
  [(BWUBCaptureParameters *)&v3 dealloc];
}

- (BWUBCaptureParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary
{
  if (type && (v6 = [dictionary objectForKeyedSubscript:@"UBCaptureParameters"]) != 0)
  {
    v7 = v6;
    v53.receiver = self;
    v53.super_class = BWUBCaptureParameters;
    v8 = [(BWUBCaptureParameters *)&v53 init];
    if (v8)
    {
      v8->_portType = type;
      v8->_nonHDRBrightLightCapturesEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{@"NonHDRBrightLightCapturesEnabled", "BOOLValue"}];
      [objc_msgSend(v7 objectForKeyedSubscript:{@"LowLightEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_lowLightEffectiveIntegrationTimeThreshold = v9;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"SIFRMainEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_sifrMainEffectiveIntegrationTimeThreshold = v10;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"SIFRGainThreshold", "floatValue"}];
      v8->_sifrGainThreshold = v11;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"LowLightHDRWithoutSIFRISPDGainThreshold", "floatValue"}];
      v8->_lowLightHDRWithoutSIFRISPDGainThreshold = v12;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"LongWithoutSphereEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_longWithoutSphereEffectiveIntegrationTimeThreshold = v13;
      v14 = [v7 objectForKeyedSubscript:@"DeepFusionEffectiveIntegrationTimeThreshold"];
      if (!v14)
      {
        v14 = &unk_1F224A8B0;
      }

      [v14 doubleValue];
      v8->_deepFusionEffectiveIntegrationTimeThreshold = v15;
      v16 = [v7 objectForKeyedSubscript:@"DeepFusionBracketedCaptureReferenceFrameIndex"];
      if (!v16)
      {
        v16 = &unk_1F22453B8;
      }

      v8->_deepFusionBracketedCaptureReferenceFrameIndex = [v16 intValue];
      v17 = [v7 objectForKeyedSubscript:@"DeepFusionHDREVZeroCountByEffectiveIntegrationTime"];
      v8->_deepFusionHDREVZeroCountByEffectiveIntegrationTime = v17;
      if (([(NSArray *)v17 count]& 1) != 0)
      {
        [BWUBCaptureParameters initWithPortType:? sensorIDDictionary:?];
      }

      v18 = [v7 objectForKeyedSubscript:@"UpscaledEnhancedResolutionEffectiveIntegrationTimeThreshold"];
      if (!v18)
      {
        v18 = &unk_1F224A8C0;
      }

      [v18 doubleValue];
      v8->_upscaledEnhancedResolutionEffectiveIntegrationTimeThreshold = v19;
      v20 = [v7 objectForKeyedSubscript:@"LearnedNRUltraHighResolutionDowngradeEffectiveIntegrationTimeThreshold"];
      if (!v20)
      {
        v20 = &unk_1F224A8C0;
      }

      [v20 doubleValue];
      v8->_learnedNRUltraHighResolutionDowngradeEffectiveIntegrationTimeThreshold = v21;
      v22 = [v7 objectForKeyedSubscript:@"LearnedNRUltraHighResolutionExposureBias"];
      if (!v22)
      {
        v22 = &unk_1F22453D0;
      }

      [v22 doubleValue];
      *&v23 = v23;
      v8->_learnedNRUltraHighResolutionExposureBias = *&v23;
      v24 = [v7 objectForKeyedSubscript:@"AutoFlashColorConstancyNormalizedSNRThreshold"];
      if (!v24)
      {
        v24 = &unk_1F224A8C0;
      }

      [v24 doubleValue];
      *&v25 = v25;
      v8->_autoFlashColorConstancyNormalizedSNRThreshold = *&v25;
      v26 = [v7 objectForKeyedSubscript:@"AutoFlashMacroNormalizedSNRThreshold"];
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = &unk_1F224A8C0;
      }

      objc_msgSend_isEqualToString_(v8->_portType);
      [v27 doubleValue];
      *&v28 = v28;
      v8->_autoFlashMacroNormalizedSNRThreshold = *&v28;
      objc_msgSend_isEqualToString_(v8->_portType);
      v8->_macroFlashQSubSwitchingEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{@"MacroFlashQSubSwitchingEnabled", "BOOLValue"}];
      [objc_msgSend(v7 objectForKeyedSubscript:{@"RedSaturationMainEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_redSaturationMainEffectiveIntegrationTimeThreshold = v29;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"RedSaturationSIFRGainThreshold", "floatValue"}];
      v8->_redSaturationSIFRGainThreshold = v30;
      v8->_toneCurveBehavior = [objc_msgSend(v7 objectForKeyedSubscript:{@"ToneCurveBehavior", "intValue"}];
      v8->_preserveBlackLevel = [objc_msgSend(v7 objectForKeyedSubscript:{@"PreserveBlackLevel", "BOOLValue"}];
      [objc_msgSend(v7 objectForKeyedSubscript:{@"NightModeMinGainThreshold", "floatValue"}];
      v8->_nightModeMinGainThreshold = v31;
      v8->_alwaysUseAFTimeout = [objc_msgSend(v7 objectForKeyedSubscript:{@"AlwaysUseAFTimeout", "BOOLValue"}];
      v8->_afWindowParams = [objc_msgSend(v7 objectForKeyedSubscript:{@"AFWindowParams", "copy"}];
      v32 = [v7 objectForKeyedSubscript:@"AdaptiveBracketingParameters"];
      v33 = [objc_msgSend(v32 objectForKeyedSubscript:{@"FirstGroupMaxNumberOfFramesCount", "intValue"}];
      if (v33 <= [objc_msgSend(v32 objectForKeyedSubscript:{@"NextGroupMaxNumberOfFramesCount", "intValue"}])
      {
        v34 = @"NextGroupMaxNumberOfFramesCount";
      }

      else
      {
        v34 = @"FirstGroupMaxNumberOfFramesCount";
      }

      v8->_maxNumberOfFramesForAdaptiveBracketing = [objc_msgSend(v32 objectForKeyedSubscript:{v34), "intValue"}];
      v35 = [v7 objectForKeyedSubscript:@"DigitalFlashAvailableEffectiveIntegrationTimeThreshold"];
      if (!v35)
      {
        v35 = &unk_1F224A8C0;
      }

      [v35 doubleValue];
      v8->_digitalFlashAvailableEffectiveIntegrationTimeThreshold = v36;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"DigitalFlashRecommendedEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_digitalFlashRecommendedEffectiveIntegrationTimeThreshold = v37;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"StationaryDigitalFlashRecommendedEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_stationaryDigitalFlashRecommendedEffectiveIntegrationTimeThreshold = v38;
      v39 = [v7 objectForKeyedSubscript:@"DigitalFlashRecommendRegularFlashSNRThreshold"];
      if (!v39)
      {
        v39 = &unk_1F224A8C0;
      }

      [v39 floatValue];
      v8->_digitalFlashRecommendRegularFlashSNRThreshold = v40;
      v41 = [v7 objectForKeyedSubscript:@"DigitalFlashBacklitRecommendRegularFlashSNRThreshold"];
      if (!v41)
      {
        v41 = &unk_1F224A8C0;
      }

      [v41 floatValue];
      v8->_digitalFlashBacklitRecommendRegularFlashSNRThreshold = v42;
      v43 = [v7 objectForKeyedSubscript:@"DigitalFlashBacklitRecommendRegularFlashAERelativeDifferenceThreshold"];
      if (!v43)
      {
        v43 = &unk_1F224A8C0;
      }

      [v43 floatValue];
      v8->_digitalFlashBacklitRecommendRegularFlashAERelativeDifferenceThreshold = v44;
      v8->_digitalFlashHighlightRecoveryEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{@"DigitalFlashHighlightRecoveryEnabled", "BOOLValue"}];
      v45 = [v7 objectForKeyedSubscript:@"StereoPhotoThresholdSNRThreshold"];
      if (!v45)
      {
        v45 = &unk_1F224A8C0;
      }

      [v45 floatValue];
      v8->_stereoPhotoSNRThreshold = v46;
      v47 = [v7 objectForKeyedSubscript:@"StereoPhotoSNRDifferenceSecondarySNRThreshold"];
      if (!v47)
      {
        v47 = &unk_1F224A8C0;
      }

      [v47 floatValue];
      v8->_stereoPhotoSNRDifferenceSecondarySNRThreshold = v48;
      v49 = [v7 objectForKeyedSubscript:@"StereoPhotoSNRDifferenceThreshold"];
      if (!v49)
      {
        v49 = &unk_1F224A8C0;
      }

      [v49 floatValue];
      v8->_stereoPhotoSNRDifferenceThreshold = v50;
      v51 = [v7 objectForKeyedSubscript:@"ReferenceFrameSelectionParameters"];
      v8->_referenceFrameSelectionMethod = [objc_msgSend(v51 objectForKeyedSubscript:{@"Method", "intValue"}];
      v8->_usePreviousSIFR = [objc_msgSend(v51 objectForKeyedSubscript:{@"UsePreviousSIFR", "BOOLValue"}];
      v8->_motionAndFocusScoreWeights = [v51 objectForKeyedSubscript:@"MotionAndFocusScoreWeights"];
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (int)deepFusionHDREVZeroCountForEffectiveIntegrationTime:(double)time
{
  if (![(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime count])
  {
    return 3;
  }

  if (![(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime count])
  {
LABEL_6:
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWUBCaptureParameters.m", 256, @"LastShownDate:BWUBCaptureParameters.m:256", @"LastShownBuild:BWUBCaptureParameters.m:256", 0);
    free(v11);
    return 3;
  }

  v5 = 0;
  while (1)
  {
    [-[NSArray objectAtIndexedSubscript:](self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime objectAtIndexedSubscript:{v5), "doubleValue"}];
    if (v6 < time)
    {
      break;
    }

    v5 += 2;
    if ([(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime count]<= v5)
    {
      goto LABEL_6;
    }
  }

  v9 = [(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime objectAtIndexedSubscript:v5 & 0xFFFFFFFE | 1];

  return [v9 intValue];
}

@end