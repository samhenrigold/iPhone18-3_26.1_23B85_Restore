@interface BWNondisruptiveSwitchingFormatSelector
+ (void)initialize;
- (BWNondisruptiveSwitchingFormatSelector)initWithPortType:(id)type quadraSubPixelSwitchingParameters:(id)parameters baseZoomFactor:(float)factor zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:(id)binned zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:(id)nonBinned ultraHighResolutionNondisruptiveStreamingFormatIndex:(int)index mainFormatSIFRBinningFactor:(int)binningFactor;
- (int)formatIndexForZoomFactor:(float)lastZoomFactor frameStatistics:(id)statistics imageControlMode:(int)mode stillImageDigitalFlashMode:(int)flashMode isStationary:(BOOL)stationary isSecondaryStream:(BOOL)stream binnedSIFROnSecondaryStreamAllowed:(BOOL)allowed ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:(BOOL)self0 ultraHighResolutionZeroShutterLagEnabled:(BOOL)self1;
- (uint64_t)_updateQuadraSubPixelSwitchingParametersWithVideoStabilizationStrength:(int)strength imageControlMode:(int)mode stillImageDigitalFlashMode:(unsigned int)flashMode isStationary:(char *)stationary quadraSubPixelSwitchingParametersChangedOut:;
- (void)dealloc;
@end

@implementation BWNondisruptiveSwitchingFormatSelector

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNondisruptiveSwitchingFormatSelector;
  [(BWNondisruptiveSwitchingFormatSelector *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWNondisruptiveSwitchingFormatSelector)initWithPortType:(id)type quadraSubPixelSwitchingParameters:(id)parameters baseZoomFactor:(float)factor zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:(id)binned zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:(id)nonBinned ultraHighResolutionNondisruptiveStreamingFormatIndex:(int)index mainFormatSIFRBinningFactor:(int)binningFactor
{
  v28.receiver = self;
  v28.super_class = BWNondisruptiveSwitchingFormatSelector;
  v17 = [(BWNondisruptiveSwitchingFormatSelector *)&v28 init];
  v18 = v17;
  if (v17)
  {
    if (binned | nonBinned)
    {
      v17->_portType = type;
      v17->_baseZoomFactor = factor;
      v17->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned = binned;
      v18->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned = nonBinned;
      v18->_ultraHighResolutionNondisruptiveStreamingFormatIndex = index;
      v18->_mainFormatSIFRBinningFactor = binningFactor;
      v18->_lastNondisruptiveSwitchingFormatIndex = -1;
      parametersCopy = parameters;
      v18->_quadraSubPixelSwitchingParameters = parametersCopy;
      if (parametersCopy)
      {
        allKeys = [(NSDictionary *)parametersCopy allKeys];
        -[NSArray count](-[NSArray filteredArrayUsingPredicate:](allKeys, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self BEGINSWITH %@", @"ActionCamera"]), "count");
        OUTLINED_FUNCTION_1_54();
        v18->_quadraSubPixelSceneMonitoringForActionCameraEnabled = v21;
        allKeys2 = [(NSDictionary *)v18->_quadraSubPixelSwitchingParameters allKeys];
        -[NSArray count](-[NSArray filteredArrayUsingPredicate:](allKeys2, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self BEGINSWITH %@", @"DigitalFlash"]), "count");
        OUTLINED_FUNCTION_1_54();
        v18->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled = v23;
        [(NSDictionary *)v18->_quadraSubPixelSwitchingParameters objectForKeyedSubscript:@"Video"];
        OUTLINED_FUNCTION_1_54();
        v18->_quadraSubPixelSceneMonitoringForVideoEnabled = v24;
        [(NSDictionary *)v18->_quadraSubPixelSwitchingParameters objectForKeyedSubscript:@"Photo"];
        OUTLINED_FUNCTION_1_54();
        v18->_quadraSubPixelSceneMonitoringForPhotoEnabled = v25;
      }
    }

    else
    {
      v27 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v9, v28.receiver, v28.super_class, v29, v30, v31, v32);

      return 0;
    }
  }

  return v18;
}

- (uint64_t)_updateQuadraSubPixelSwitchingParametersWithVideoStabilizationStrength:(int)strength imageControlMode:(int)mode stillImageDigitalFlashMode:(unsigned int)flashMode isStationary:(char *)stationary quadraSubPixelSwitchingParametersChangedOut:
{
  if (result)
  {
    v7 = result;
    if (!*(result + 56))
    {
      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v8 = @"ActionCameraHighStrength";
      result = objc_msgSend_isEqualToString_(@"ActionCameraHighStrength");
    }

    else if (a2 == 4)
    {
      v8 = @"ActionCameraUltraStrength";
      result = objc_msgSend_isEqualToString_(@"ActionCameraUltraStrength");
    }

    else if (mode != 1 || flashMode)
    {
      if (mode != 2 || flashMode)
      {
        if (mode != 1 || flashMode != 1)
        {
          flashModeCopy = flashMode;
          if (mode != 2)
          {
            flashModeCopy = 0;
          }

          v10 = @"Video";
          if (!strength)
          {
            v10 = @"Photo";
          }

          if (flashModeCopy)
          {
            v8 = @"DigitalFlashMaxTripod";
            result = objc_msgSend_isEqualToString_(@"DigitalFlashMaxTripod");
          }

          else
          {
            v8 = v10;
            result = objc_msgSend_isEqualToString_(v10);
          }
        }

        else
        {
          v8 = @"DigitalFlashMinTripod";
          result = objc_msgSend_isEqualToString_(@"DigitalFlashMinTripod");
        }
      }

      else
      {
        v8 = @"DigitalFlashMaxHandheld";
        result = objc_msgSend_isEqualToString_(@"DigitalFlashMaxHandheld");
      }
    }

    else
    {
      v8 = @"DigitalFlashMinHandheld";
      result = objc_msgSend_isEqualToString_(@"DigitalFlashMinHandheld");
    }

    if (result & 1) != 0 || (v11 = *(v7 + 208), *(v7 + 208) = v8, v12 = [*(v7 + 56) objectForKeyedSubscript:v8], result = objc_msgSend(v12, "isEqualToDictionary:", objc_msgSend(*(v7 + 56), "objectForKeyedSubscript:", v11)), (result))
    {
LABEL_37:
      v28 = 0;
      if (!stationary)
      {
        return result;
      }
    }

    else
    {
      if ([v12 objectForKeyedSubscript:@"NormalizedSNRThreshold"])
      {
        [objc_msgSend(v12 objectForKeyedSubscript:{@"NormalizedSNRThreshold", "floatValue"}];
        [objc_msgSend(v12 objectForKeyedSubscript:{@"NormalizedSNRHysteresisLag", "floatValue"}];
        v14.n128_u32[0] = v13.n128_u32[0];
        v15.n128_u32[0] = *"fff?";
        OUTLINED_FUNCTION_0_43(v7 + 64, v13, v14, v15, v16, v17, v18, "Quadra SubPixel - Scene(Normalized SNR)");
      }

      else
      {
        *(v7 + 64) = 0;
      }

      if ([v12 objectForKeyedSubscript:@"LuxLevelThreshold"])
      {
        [objc_msgSend(v12 objectForKeyedSubscript:{@"LuxLevelThreshold", "floatValue"}];
        [objc_msgSend(v12 objectForKeyedSubscript:{@"LuxLevelHysteresisLag", "floatValue"}];
        v20.n128_u32[0] = v19.n128_u32[0];
        v21.n128_u32[0] = *"fff?";
        OUTLINED_FUNCTION_0_43(v7 + 104, v19, v20, v21, v22, v23, v24, "Quadra SubPixel - Scene(Lux Level)");
      }

      else
      {
        *(v7 + 104) = 0;
      }

      result = [v12 objectForKeyedSubscript:@"GainThreshold"];
      if (result)
      {
        [objc_msgSend(v12 objectForKeyedSubscript:{@"GainThreshold", "floatValue"}];
        [objc_msgSend(v12 objectForKeyedSubscript:{@"GainHysteresisLag", "floatValue"}];
        v26.n128_u32[0] = v25.n128_u32[0];
        v27.n128_u32[0] = *"fff?";
        v28 = 1;
        result = OUTLINED_FUNCTION_0_43(v7 + 144, v25, v26, v27, v29, v30, v31, "Quadra SubPixel - Scene(Gain)");
        if (!stationary)
        {
          return result;
        }
      }

      else
      {
        *(v7 + 144) = 0;
        v28 = 1;
        if (!stationary)
        {
          return result;
        }
      }
    }

    *stationary = v28;
  }

  return result;
}

- (int)formatIndexForZoomFactor:(float)lastZoomFactor frameStatistics:(id)statistics imageControlMode:(int)mode stillImageDigitalFlashMode:(int)flashMode isStationary:(BOOL)stationary isSecondaryStream:(BOOL)stream binnedSIFROnSecondaryStreamAllowed:(BOOL)allowed ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:(BOOL)self0 ultraHighResolutionZeroShutterLagEnabled:(BOOL)self1
{
  selfCopy = self;
  LODWORD(v56) = monitoring;
  if (monitoring && self->_lastZoomFactor != 0.0)
  {
    lastZoomFactor = self->_lastZoomFactor;
  }

  v15 = self->_mainFormatSIFRBinningFactor == 2;
  v16 = self->_mainFormatSIFRBinningFactor == 2 || !stream;
  v17 = v16 || !allowed;
  LODWORD(v58) = flashMode;
  HIDWORD(v58) = stationary;
  HIDWORD(v56) = mode;
  if (!v17)
  {
    self = [(NSDictionary *)self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned count:statistics];
    v15 = self != 0;
  }

  statisticsCopy = statistics;
  v16 = !v15;
  v18 = 32;
  if (!v16)
  {
    v18 = 24;
  }

  v19 = *(&selfCopy->super.isa + v18);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v20 = OUTLINED_FUNCTION_5_4(self, a2, statistics, *&mode, *&flashMode, stationary, stream, allowed, v56, v58, statisticsCopy, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  if (v20)
  {
    v21 = v20;
    v22 = *v80;
    ultraHighResolutionNondisruptiveStreamingFormatIndex = -1;
    v24 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v80 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v79 + 1) + 8 * i);
        floatValue = [v26 floatValue];
        if (v35 <= lastZoomFactor && v35 > v24)
        {
          ultraHighResolutionNondisruptiveStreamingFormatIndex = [objc_msgSend(v19 objectForKeyedSubscript:{v26), "intValue"}];
          floatValue = [v26 floatValue];
          v24 = v37;
        }
      }

      v21 = OUTLINED_FUNCTION_5_4(floatValue, v28, v29, v30, v31, v32, v33, v34, v57, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    }

    while (v21);
    if (enabled)
    {
      goto LABEL_27;
    }

LABEL_36:
    v38 = v59;
    v39 = HIDWORD(v59);
    v40 = HIDWORD(v57);
    goto LABEL_37;
  }

  ultraHighResolutionNondisruptiveStreamingFormatIndex = -1;
  v24 = 0.0;
  if (!enabled)
  {
    goto LABEL_36;
  }

LABEL_27:
  v38 = v59;
  v39 = HIDWORD(v59);
  v40 = HIDWORD(v57);
  if (!stream && v24 <= selfCopy->_baseZoomFactor && selfCopy->_ultraHighResolutionNondisruptiveStreamingFormatIndex != -1 && v59 == 0)
  {
    ultraHighResolutionNondisruptiveStreamingFormatIndex = selfCopy->_ultraHighResolutionNondisruptiveStreamingFormatIndex;
  }

LABEL_37:
  v42 = selfCopy->_lastZoomFactor;
  v44 = v42 != 0.0 && lastZoomFactor != v42 && ultraHighResolutionNondisruptiveStreamingFormatIndex != selfCopy->_lastNondisruptiveSwitchingFormatIndex;
  selfCopy->_lastZoomFactor = lastZoomFactor;
  if ((v57 & 1) == 0)
  {
    v45 = selfCopy->_quadraSubPixelSceneMonitoringForActionCameraEnabled && selfCopy->_videoStabilizationStrength > 2;
    v46 = 0;
    v47 = v38 != 0 && selfCopy->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled;
    if (v40 <= 6 && ((1 << v40) & 0x6E) != 0)
    {
      v46 = !v45 && (v38 == 0 || !selfCopy->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled) && selfCopy->_quadraSubPixelSceneMonitoringForVideoEnabled;
    }

    v48 = v40 == 0 && selfCopy->_quadraSubPixelSceneMonitoringForPhotoEnabled;
    if (v38)
    {
      v49 = 0;
    }

    else
    {
      v49 = v40 == 0 && selfCopy->_quadraSubPixelSceneMonitoringForPhotoEnabled;
    }

    if (!v44 && (v49 & 1) != 0)
    {
      v49 = selfCopy->_lastDigitalFlashMode != 0;
    }

    v50 = v38 != 0 && selfCopy->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled && (selfCopy->_lastDigitalFlashMode != v38 || selfCopy->_lastStationary != v39 || v44);
    selfCopy->_lastDigitalFlashMode = v38;
    selfCopy->_lastStationary = v39;
    if (v61)
    {
      if (v24 > selfCopy->_baseZoomFactor && (((v45 || v46) | v47 | v48) & 1) != 0)
      {
        HIBYTE(v62) = 0;
        if ((v49 | v50))
        {
          [(BWNondisruptiveSwitchingFormatSelector *)selfCopy _updateQuadraSubPixelSwitchingParametersWithVideoStabilizationStrength:v40 imageControlMode:v38 stillImageDigitalFlashMode:v39 isStationary:&v62 + 7 quadraSubPixelSwitchingParametersChangedOut:?];
          if (!v44)
          {
LABEL_67:
            if (HIBYTE(v62) != 1)
            {
              goto LABEL_69;
            }
          }
        }

        else if (!v44)
        {
          goto LABEL_67;
        }

        selfCopy->_quadraSubPixelSceneBasedOnNormalizedSNR.confident = 0;
        BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&selfCopy->_quadraSubPixelSceneBasedOnNormalizedSNR.enabled);
        selfCopy->_quadraSubPixelSceneBasedOnLuxLevel.confident = 0;
        BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&selfCopy->_quadraSubPixelSceneBasedOnLuxLevel.enabled);
        selfCopy->_quadraSubPixelSceneBasedOnGain.confident = 0;
        BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&selfCopy->_quadraSubPixelSceneBasedOnGain.enabled);
LABEL_69:
        [v61 normalizedQsumSNR];
        BWSmartCameraSceneUpdateWithConfidence(&selfCopy->_quadraSubPixelSceneBasedOnNormalizedSNR, v51);
        BWSmartCameraSceneUpdateWithConfidence(&selfCopy->_quadraSubPixelSceneBasedOnLuxLevel, [v61 luxLevel]);
        [v61 gain];
        BWSmartCameraSceneUpdateWithConfidence(&selfCopy->_quadraSubPixelSceneBasedOnGain, v52);
        if (selfCopy->_quadraSubPixelSceneBasedOnNormalizedSNR.enabled && !selfCopy->_quadraSubPixelSceneBasedOnNormalizedSNR.confident || selfCopy->_quadraSubPixelSceneBasedOnLuxLevel.enabled && !selfCopy->_quadraSubPixelSceneBasedOnLuxLevel.confident || selfCopy->_quadraSubPixelSceneBasedOnGain.enabled && selfCopy->_quadraSubPixelSceneBasedOnGain.confident)
        {
          *&v53 = selfCopy->_baseZoomFactor;
          v54 = [v19 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v53)}];
          if (v54)
          {
            ultraHighResolutionNondisruptiveStreamingFormatIndex = [v54 intValue];
          }

          else
          {
            ultraHighResolutionNondisruptiveStreamingFormatIndex = -1;
          }
        }
      }
    }
  }

  selfCopy->_lastNondisruptiveSwitchingFormatIndex = ultraHighResolutionNondisruptiveStreamingFormatIndex;
  return ultraHighResolutionNondisruptiveStreamingFormatIndex;
}

@end