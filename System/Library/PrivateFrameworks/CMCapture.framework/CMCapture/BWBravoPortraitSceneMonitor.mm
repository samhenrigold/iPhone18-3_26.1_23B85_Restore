@interface BWBravoPortraitSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWBravoPortraitSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress;
- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1;
@end

@implementation BWBravoPortraitSceneMonitor

- (BWBravoPortraitSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics
{
  v9.receiver = self;
  v9.super_class = BWBravoPortraitSceneMonitor;
  v5 = [(BWBravoPortraitSceneMonitor *)&v9 init:parameters];
  v6 = v5;
  if (v5)
  {
    *&v5->_backgroundShiftSumFiltered = vneg_f32(0x3F0000003FLL);
    v5->_subjectTooCloseMonitoringEnabled = 1;
    v5->_subjectTooCloseWideFocusDistanceThreshold = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooCloseFocusDistanceThreshold", "intValue"}];
    v6->_subjectTooCloseWideFocusDistanceHysteresisLag = 5.0;
    v6->_subjectTooFarMonitoringEnabled = 1;
    v6->_subjectTooFarFocusDistanceThreshold = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarFocusDistanceThreshold", "intValue"}];
    v6->_subjectTooFarFocusDistanceHysteresisLag = 20.0;
    v6->_subjectTooFarFocusDistanceInfinityThreshold = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarFocusDistanceInfinityThreshold", "intValue"}];
    v6->_subjectTooFarUseTeleForFocusDistance = 1;
    *&v6->_subjectTooFarBackgroundShiftSumTooLowThreshold = xmmword_1AD056DF0;
    v6->_sceneTooDarkMonitoringEnabled = 1;
    *&v6->_sceneTooDarkGainThreshold = xmmword_1AD056E00;
    v6->_stageFaceNumberOfFramesSinceLastFaceThreshold = 6;
    v6->_stageFaceMonitoringEnabled = 1;
    v6->_stageTooFarFocusDistanceThreshold = [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarFocusDistanceThreshold", "intValue"}];
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarBackgroundShiftSumNoFacesThreshold", "floatValue"}];
    v6->_stageTooFarBackgroundShiftSumNoFacesThreshold = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBravoPortraitSceneMonitor;
  [(BWBravoPortraitSceneMonitor *)&v3 dealloc];
}

- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress
{
  if (progress)
  {
    *&self->_oneShotFocusScanInProgress = 0;
  }

  else if (locked)
  {
    *&self->_oneShotFocusScanInProgress = 256;
    self->_numFramesSinceFocusLocked = 0;
  }

  else if (inProgress)
  {
    *&self->_oneShotFocusScanInProgress = 1;
  }
}

- (void)focusScanDidComplete
{
  if (self->_oneShotFocusScanInProgress)
  {
    *&self->_oneShotFocusScanInProgress = 256;
    self->_numFramesSinceFocusLocked = 0;
  }
}

- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1
{
  v14 = 1.0;
  v15 = 0.35;
  if (self->_aeStableAfterStartStreaming && self->_focusStableAfterStartStreaming && !self->_oneShotFocusScanInProgress && !self->_focusLocked)
  {
    lastFocusingMethod = self->_lastFocusingMethod;
    if (self->_focusAdjusting)
    {
      if (lastFocusingMethod != 1)
      {
        if (lastFocusingMethod == 2)
        {
          v14 = 0.2;
          v15 = 0.06;
        }

        else
        {
          v14 = 0.15;
          v15 = 0.025;
        }

        goto LABEL_13;
      }

LABEL_11:
      v15 = 0.25;
      v14 = 1.0;
      goto LABEL_13;
    }

    v14 = 0.15;
    v15 = 0.025;
    if (lastFocusingMethod == 1 && self->_numFramesSinceFocusBecameStable <= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  self->_backgroundShiftSumFiltered = BWModifiedMovingAverage(sum, self->_backgroundShiftSumFiltered, v15);
  self->_invalidShiftRatioFiltered = BWModifiedMovingAverage(ratio, self->_invalidShiftRatioFiltered, v14);

  v17 = [faces copy];
  self->_stageMostRecentFaces = v17;
  self->_stageFaceHasBeenSeen |= [(NSArray *)v17 count]!= 0;
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  activeCopy = active;
  v16 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v16)
  {
    return v16;
  }

  v17 = v16;
  v18 = *off_1E798A0C0;
  v89 = [type objectForKeyedSubscript:*off_1E798A0C0];
  v19 = [type objectForKeyedSubscript:*off_1E798A0D8];
  invalidShiftRatioFiltered = self->_invalidShiftRatioFiltered;
  backgroundShiftSumFiltered = self->_backgroundShiftSumFiltered;
  if (self->_focusLocked)
  {
    numFramesSinceFocusLocked = self->_numFramesSinceFocusLocked;
    self->_numFramesSinceFocusLocked = numFramesSinceFocusLocked + 1;
    v23 = numFramesSinceFocusLocked > 9;
  }

  else
  {
    v23 = 0;
  }

  portraitSceneMonitoringRequiresStageThresholds = self->_portraitSceneMonitoringRequiresStageThresholds;
  CMSetAttachment(buffer, @"SDOFFocusLocked", [MEMORY[0x1E696AD98] numberWithBool:v23], 1u);
  subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart = self->_subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart;
  subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd = self->_subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd;
  v26 = 1.0;
  if (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart < 1.0 && subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd > subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart)
  {
    v28 = (invalidShiftRatioFiltered / (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart - subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd)) + (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd / (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd - subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart));
    if (v28 <= 1.0)
    {
      v26 = v28;
    }

    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    backgroundShiftSumFiltered = backgroundShiftSumFiltered * v26;
  }

  v29 = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B730), "objectForKeyedSubscript:", v18}];
  v30 = v29;
  v31 = *off_1E798B0A8;
  v87 = activeCopy;
  if (v29)
  {
    v32 = [objc_msgSend(v29 objectForKeyedSubscript:{v31), "intValue"}] != 4;
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_msgSend(v17 objectForKeyedSubscript:{v31), "intValue"}];
  v34 = *off_1E798B320;
  v35 = [objc_msgSend(v30 objectForKeyedSubscript:{*off_1E798B320), "intValue"}];
  v36 = [objc_msgSend(v17 objectForKeyedSubscript:{v34), "intValue"}];
  v37 = v33 != 4 || v32;
  if (v37)
  {
    v38 = 0;
    v39 = v35 == 1 || v36 == 1;
    v40 = v39;
    if (v39)
    {
      lastFocusingMethod = 1;
    }

    else
    {
      lastFocusingMethod = 2;
    }
  }

  else
  {
    lastFocusingMethod = self->_lastFocusingMethod;
    if (self->_focusAdjusting)
    {
      v38 = 0;
      v40 = 0;
    }

    else
    {
      v40 = 0;
      v38 = self->_numFramesSinceFocusBecameStable + 1;
    }
  }

  if (self->_aeStableAfterStartStreaming)
  {
    if (self->_focusStableAfterStartStreaming)
    {
      self->_focusAdjusting = v37;
      self->_lastFocusingMethod = lastFocusingMethod;
      self->_numFramesSinceFocusBecameStable = v38;
      if (v40)
      {
        goto LABEL_156;
      }

      goto LABEL_57;
    }

    v44 = 1;
    if (!v37)
    {
      goto LABEL_44;
    }

LABEL_51:
    v48 = [type frameCount] > 0x1F;
    goto LABEL_56;
  }

  v42 = [objc_msgSend(v30 objectForKeyedSubscript:{*off_1E798B078), "BOOLValue"}];
  if ([v89 aeStable] && v42)
  {
    numFramesSinceAEBecameStable = self->_numFramesSinceAEBecameStable;
    if (numFramesSinceAEBecameStable <= 4)
    {
      v44 = [type frameCount] > 0x13;
      numFramesSinceAEBecameStable = self->_numFramesSinceAEBecameStable;
    }

    else
    {
      v44 = 1;
    }

    v46 = numFramesSinceAEBecameStable + 1;
  }

  else
  {
    frameCount = [type frameCount];
    v46 = 0;
    v44 = frameCount > 0x13;
  }

  self->_numFramesSinceAEBecameStable = v46;
  if (v37)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (lastFocusingMethod == 2)
  {
    v47 = v38 <= 3;
  }

  else if (lastFocusingMethod)
  {
    v47 = v38 <= 1;
  }

  else
  {
    v47 = v38 <= 43;
  }

  v48 = !v47;
LABEL_56:
  self->_focusAdjusting = v37;
  self->_lastFocusingMethod = lastFocusingMethod;
  self->_numFramesSinceFocusBecameStable = v38;
  self->_aeStableAfterStartStreaming = v44;
  self->_focusStableAfterStartStreaming = v48;
  if (v40 & 1 | (!v44 || !v48))
  {
LABEL_156:
    LOBYTE(v16) = 0;
    return v16;
  }

LABEL_57:
  if (lastFocusingMethod == 1 && v38 < 3)
  {
    goto LABEL_156;
  }

  if (self->_oneShotFocusScanInProgress)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v11, v86, v11, v87, v89, v90, v91);
    goto LABEL_156;
  }

  if (!v23)
  {
    if (self->_subjectTooCloseMonitoringEnabled)
    {
      focusPosition = [v89 focusPosition];
      subjectTooCloseLastWideFocusPosition = self->_subjectTooCloseLastWideFocusPosition;
      self->_subjectTooCloseLastWideFocusPosition = [v89 focusPosition];
      if (focusPosition != subjectTooCloseLastWideFocusPosition)
      {
        subjectIsTooClose = self->_subjectIsTooClose;
        [v89 focusDistance];
        subjectTooCloseWideFocusDistanceThreshold = self->_subjectTooCloseWideFocusDistanceThreshold;
        if (subjectIsTooClose)
        {
          if (v62 >= (subjectTooCloseWideFocusDistanceThreshold + self->_subjectTooCloseWideFocusDistanceHysteresisLag))
          {
            self->_subjectIsTooClose = 0;
            if (self->_lastSDOFEffectStatus == 4 && self->_sceneIsTooDark)
            {
              self->_sceneIsTooDark = 0;
            }
          }
        }

        else if (v62 <= subjectTooCloseWideFocusDistanceThreshold)
        {
          self->_subjectIsTooClose = 1;
        }
      }
    }

    if (self->_subjectTooFarMonitoringEnabled)
    {
      v52 = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B208), "intValue"}];
      subjectTooFarLastTeleFocusPosition = self->_subjectTooFarLastTeleFocusPosition;
      self->_subjectTooFarLastTeleFocusPosition = v52;
      if (v52 != subjectTooFarLastTeleFocusPosition)
      {
        if (self->_subjectTooFarUseTeleForFocusDistance)
        {
          v54 = v19;
        }

        else
        {
          v54 = v89;
        }

        [v54 focusDistance];
        subjectTooFarFocusDistanceThreshold = self->_subjectTooFarFocusDistanceThreshold;
        if (self->_subjectTooFarDistanceThresholdReached)
        {
          subjectTooFarFocusDistanceHysteresisLag = self->_subjectTooFarFocusDistanceHysteresisLag;
          v58 = subjectTooFarFocusDistanceThreshold - subjectTooFarFocusDistanceHysteresisLag;
          v59 = self->_stageTooFarFocusDistanceThreshold - subjectTooFarFocusDistanceHysteresisLag;
          if (v55 <= v58)
          {
            self->_subjectTooFarDistanceThresholdReached = 0;
          }

          if (v55 > v59)
          {
            goto LABEL_88;
          }

          p_stageSubjectTooFarDistanceThresholdReached = &self->_stageSubjectTooFarDistanceThresholdReached;
        }

        else
        {
          stageTooFarFocusDistanceThreshold = self->_stageTooFarFocusDistanceThreshold;
          if (v55 >= subjectTooFarFocusDistanceThreshold)
          {
            self->_subjectTooFarDistanceThresholdReached = 1;
            if (self->_subjectTooFarBackgroundShiftSumIsTooLow)
            {
              self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
            }
          }

          if (v55 < stageTooFarFocusDistanceThreshold)
          {
            goto LABEL_88;
          }

          self->_stageSubjectTooFarDistanceThresholdReached = 1;
          if (self->_subjectTooFarBackgroundShiftSumIsTooLow)
          {
            self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
          }

          p_stageSubjectTooFarDistanceThresholdReached = &self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow;
          if (!self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow)
          {
            goto LABEL_88;
          }
        }

        *p_stageSubjectTooFarDistanceThresholdReached = 0;
      }

LABEL_88:
      subjectTooFarBackgroundShiftSumTooLowThreshold = self->_subjectTooFarBackgroundShiftSumTooLowThreshold;
      if (self->_subjectTooFarBackgroundShiftSumIsTooLow)
      {
        if (backgroundShiftSumFiltered > (subjectTooFarBackgroundShiftSumTooLowThreshold + self->_subjectTooFarBackgroundShiftSumTooLowHysteresisLag))
        {
          [v19 focusDistance];
          if (v66 < self->_subjectTooFarFocusDistanceInfinityThreshold || (subjectTooFarBackgroundShiftTooLowNumFrames = self->_subjectTooFarBackgroundShiftTooLowNumFrames, subjectTooFarBackgroundShiftTooLowNumFrames > 5))
          {
            self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
            self->_subjectTooFarBackgroundShiftTooLowNumFrames = 0;
          }

          else
          {
            self->_subjectTooFarBackgroundShiftTooLowNumFrames = subjectTooFarBackgroundShiftTooLowNumFrames + 1;
          }
        }
      }

      else if (backgroundShiftSumFiltered < subjectTooFarBackgroundShiftSumTooLowThreshold)
      {
        self->_subjectTooFarBackgroundShiftSumIsTooLow = 1;
      }
    }
  }

  if (portraitSceneMonitoringRequiresStageThresholds)
  {
    stageTooFarBackgroundShiftSumNoFacesThreshold = self->_stageTooFarBackgroundShiftSumNoFacesThreshold;
    if (self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow)
    {
      if (backgroundShiftSumFiltered > (stageTooFarBackgroundShiftSumNoFacesThreshold + self->_subjectTooFarBackgroundShiftSumTooLowHysteresisLag))
      {
        [v19 focusDistance];
        if (v69 < self->_subjectTooFarFocusDistanceInfinityThreshold || (stageTooFarBackgroundShiftTooLowNumFrames = self->_stageTooFarBackgroundShiftTooLowNumFrames, stageTooFarBackgroundShiftTooLowNumFrames > 5))
        {
          self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 0;
          self->_stageTooFarBackgroundShiftTooLowNumFrames = 0;
        }

        else
        {
          self->_stageTooFarBackgroundShiftTooLowNumFrames = stageTooFarBackgroundShiftTooLowNumFrames + 1;
        }
      }
    }

    else if (backgroundShiftSumFiltered < stageTooFarBackgroundShiftSumNoFacesThreshold)
    {
      self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 1;
    }
  }

  if (!self->_sceneTooDarkMonitoringEnabled)
  {
    goto LABEL_127;
  }

  [v19 integrationTime];
  v72 = v71;
  v73 = v72 <= 0.0 || llroundf(1.0 / v72) < 61;
  [v19 gain];
  sceneTooDarkGainThreshold = self->_sceneTooDarkGainThreshold;
  if (self->_sceneTooDarkExposureThresholdReached)
  {
    sceneTooDarkGainThreshold = sceneTooDarkGainThreshold / self->_sceneTooDarkGainHysteresisLag;
  }

  v76 = v74 >= sceneTooDarkGainThreshold && v73;
  self->_sceneTooDarkExposureThresholdReached = v76;
  p_sceneIsTooDark = &self->_sceneIsTooDark;
  if (!v76)
  {
    goto LABEL_126;
  }

  sceneTooDarkInvalidShiftRatioThreshold = self->_sceneTooDarkInvalidShiftRatioThreshold;
  if (self->_sceneIsTooDark)
  {
    if (invalidShiftRatioFiltered < (sceneTooDarkInvalidShiftRatioThreshold - self->_sceneTooDarkInvalidShiftRatioHysteresisLag))
    {
      goto LABEL_126;
    }

    v79 = 1;
  }

  else if (invalidShiftRatioFiltered <= sceneTooDarkInvalidShiftRatioThreshold)
  {
    v79 = 0;
  }

  else
  {
    v79 = 1;
    *p_sceneIsTooDark = 1;
  }

  if (!v79 || !v87)
  {
    goto LABEL_127;
  }

  self->_sceneIsTooDark = 0;
  self->_subjectIsTooClose = 0;
  self->_subjectTooFarDistanceThresholdReached = 0;
  p_sceneIsTooDark = &self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow;
  self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
LABEL_126:
  *p_sceneIsTooDark = 0;
LABEL_127:
  if (self->_stageFaceMonitoringEnabled)
  {
    if ([(NSArray *)self->_stageMostRecentFaces count])
    {
      self->_stageFaceNumberOfFramesSinceLastFace = 0;
      v80 = 1;
    }

    else
    {
      stageFaceNumberOfFramesSinceLastFace = self->_stageFaceNumberOfFramesSinceLastFace;
      self->_stageFaceNumberOfFramesSinceLastFace = stageFaceNumberOfFramesSinceLastFace + 1;
      v80 = self->_stageFaceHasBeenSeen && stageFaceNumberOfFramesSinceLastFace < self->_stageFaceNumberOfFramesSinceLastFaceThreshold;
    }

    self->_stageFaceDetected = v80;
  }

  if (self->_subjectIsTooClose)
  {
    v82 = 0;
    v83 = 4;
  }

  else if (self->_sceneIsTooDark)
  {
    v82 = 0;
    v83 = 5;
  }

  else if (self->_subjectTooFarDistanceThresholdReached && self->_subjectTooFarBackgroundShiftSumIsTooLow || portraitSceneMonitoringRequiresStageThresholds && !self->_stageFaceDetected && self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow)
  {
    v82 = 0;
    v83 = 3;
  }

  else
  {
    v82 = 1;
    v83 = 1;
  }

  if (self->_stageFaceMonitoringEnabled)
  {
    if (v82 & self->_stageFaceDetected)
    {
      v84 = 2;
    }

    else
    {
      self->_stageFaceHasBeenSeen = 0;
      v84 = 1;
    }
  }

  else
  {
    v84 = 0;
  }

  self->_lastSDOFEffectStatus = v83;
  if (status)
  {
    *status = v83;
  }

  if (previewStatus)
  {
    *previewStatus = v84;
  }

  LOBYTE(v16) = 1;
  return v16;
}

@end