@interface BWStreamingSessionAnalyticsPayload
- (BWStreamingSessionAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWStreamingSessionAnalyticsPayload

- (BWStreamingSessionAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStreamingSessionAnalyticsPayload;
  v2 = [(BWStreamingSessionAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStreamingSessionAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingSessionAnalyticsPayload;
  [(BWStreamingSessionAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  *&self->_streamingStartExifOrientation = 0;
  *&self->_activeDeviceMask = 0u;

  self->_clientApplicationID = 0;
  self->_sunburnDetectOccurred = 0;

  self->_degradedAutoFocusStatus = 0;
  self->_apsMaxDynamicGainDerate = 0;

  self->_apsMaxTopEndDynamicBuffer = 0;
  self->_numberOfSphereJitterDetectAttempts = 0;

  self->_numberOfSphereJitterDetects = 0;
  self->_actuatorVendor = 0;

  *&self->_longestButtonMashingEventAtRate0 = 0u;
  *&self->_numberOfButtonMashingCapturesAtRate0 = 0u;
  *&self->_numberOfBalancedPhotoCaptures = 0u;
  *&self->_sphereMode = 0u;
  v3.i64[0] = 0x80000000800000;
  v3.i64[1] = 0x80000000800000;
  *&self->_structuredLightIdleTemperatureFirstReading = vnegq_f32(v3);
  v4 = vneg_f32(0x80000000800000);
  *&self->_structuredLightActiveTemperatureAverage = v4;
  self->_infaredSensorTemperatureAverage = 3.4028e38;

  self->_sensorTemperatureStats = 0;
  self->_infraredProjectorUptimeInMsForLowPowerSparse = -1;
  self->_infraredProjectorUptimeInMsForHighPowerSparse = -1;
  *&self->_averageSystemPressureLevel = 0;
  self->_timeToCriticalSystemPressureInMS = -1;
  self->_systemPressureFactors = 0;
  *&self->_cinematicFramingSupported = 0;
  *&self->_cinematicFramingControlMode = 0xFFFFFFFFLL;
  self->_smartCropSupported = 0;
  self->_backgroundBlurTime = 0;
  self->_backgroundBlurApertureChanged = 0;
  *&self->_cinematicFramingSingleFaceDetectedTime = 0;
  *&self->_backgroundBlurSupported = 0;
  self->_backgroundBlurAperture = -1.0;
  *&self->_studioLightingSupported = 0;
  self->_studioLightingTime = 0;
  self->_studioLightingIntensityChanged = 0;
  self->_studioLightingIntensity = -1.0;
  self->_backgroundReplacementTime = 0;
  *&self->_backgroundReplacementPixelBufferChanged = 0;
  *(&self->_orientationFaceDownTime + 3) = 0;
  *&self->_orientationPortraitTime = 0u;
  *&self->_reactionsCount = 0;
  *(&self->_reactionsEffectsEnabledTime + 2) = 0;
  *&self->_cinematicVideoAverageRenderingTime = v4;
  *&self->_timeOfFlightAssistedAutoFocusStreamingTimeAt0FPS = 0u;
  *&self->_captureDeviceType = 0x7F7FFFFFFFFFFFFFLL;
  *&self->_depthFormatDimensionWidth = -1;
  self->_depthPixelFormat = 0;
  *&self->_depthDataFiltered = 0;
  *&self->_faceDrivenAFDisabledCount = -1;
  self->_maxFacesDetected = -1;
  *&v5 = 0x80000000800000;
  *(&v5 + 1) = 0x80000000800000;
  *&self->_minLuxValue = v5;
  self->_luxHistogram = 0;
  self->_photoFormat = 0;
  *&self->_continuityCameraClientDeviceClass = 0x3030303000000000;
  self->_thermalThrottledTime = 0;
  self->_highlightRecoveryEnabled = 0;
  self->_videoDimensions = 0;
  *(&self->_maximumFrameRate + 1) = 0;
  *&self->_minimumSupportedFrameRate = 0u;
  self->_colorSpace = -1;
  *&self->_clientIsVOIP = 0;
  *&self->_secureMetadataEnabled = 0;
  *&self->_invalidFrameDurationBeforeFirstValidFrame = 0;
  self->_dynamicAspectRatioSupported = 0;
  *&self->_longestContinuousPortraitInPhotoPreviewInMS = 0;
  *&self->_dynamicAspectRatio1x1Time = 0u;
  self->_dynamicAspectRatio9x16Time = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  if (self->_activeDeviceMask)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"activeDeviceMask"}];
  }

  if (self->_deviceType)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"deviceType"}];
  }

  if (self->_devicePosition)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"devicePosition"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_startingCameraPosture), @"startingCameraPosture"}];
  streamingStartExifOrientation = self->_streamingStartExifOrientation;
  if (streamingStartExifOrientation > 8)
  {
    v5 = @"Landscape";
  }

  else
  {
    v5 = qword_1E7999C50[streamingStartExifOrientation];
  }

  [dictionary setObject:v5 forKeyedSubscript:@"startingCameraOrientation"];
  if (self->_streamingTime)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"streamingTime"}];
  }

  v6 = *off_1E798A0C0;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[NSSet containsObject:](self->_sunburnDetectOccurred, "containsObject:", *off_1E798A0C0)), @"sunburnDetectOccurredWide"}];
  v7 = *off_1E798A0D8;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[NSSet containsObject:](self->_sunburnDetectOccurred, "containsObject:", *off_1E798A0D8)), @"sunburnDetectOccurredTele"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", v6), "intValue")), @"degradedAutoFocusStatusWide"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", v7), "intValue")), @"degradedAutoFocusStatusTele"}];
  v8 = *off_1E798A0D0;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", *off_1E798A0D0), "intValue")), @"degradedAutoFocusStatusSuperwide"}];
  v9 = *off_1E798A0E0;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", *off_1E798A0E0), "intValue")), @"degradedAutoFocusStatusFront"}];
  v10 = MEMORY[0x1E696AD98];
  [-[NSDictionary objectForKeyedSubscript:](self->_apsMaxDynamicGainDerate objectForKeyedSubscript:{v6), "floatValue"}];
  [dictionary setObject:objc_msgSend(v10 forKeyedSubscript:{"numberWithFloat:"), @"apsMaxDynamicGainDerateWide"}];
  v11 = MEMORY[0x1E696AD98];
  [-[NSDictionary objectForKeyedSubscript:](self->_apsMaxTopEndDynamicBuffer objectForKeyedSubscript:{v6), "floatValue"}];
  [dictionary setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithFloat:"), @"apsMaxTopEndDynamicBufferWide"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetectAttempts, "objectForKeyedSubscript:", v6), "intValue")), @"numberOfSphereJitterDetectAttemptsWide"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetectAttempts, "objectForKeyedSubscript:", v7), "intValue")), @"numberOfSphereJitterDetectAttemptsTele"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetects, "objectForKeyedSubscript:", v6), "intValue")), @"numberOfSphereJitterDetectsWide"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetects, "objectForKeyedSubscript:", v7), "intValue")), @"numberOfSphereJitterDetectsTele"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"actuatorVendorWide"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"actuatorVendorTele"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"actuatorVendorSuperWide"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v9), @"actuatorVendorFront"}];
  [dictionary setObject:self->_sphereMode forKeyedSubscript:@"sphereMode"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfPhotoCaptures), @"numberOfPhotoCaptures"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfBurstPhotoCaptures), @"numberOfBurstPhotoCaptures"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfBalancedPhotoCaptures), @"numberOfBalancedPhotoCaptures"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_timeToFirstPhotoCapture), @"timeToFirstPhotoCapture"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxTimeSinceLastPhotoCapture), @"maxTimeSinceLastPhotoCapture"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_minTimeSinceLastPhotoCapture), @"minTimeSinceLastPhotoCapture"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingCapturesAtRate0), @"numberOfButtonMashingCapturesAtRate0"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingCapturesAtRate1), @"numberOfButtonMashingCapturesAtRate1"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingEventsAtRate0), @"numberOfButtonMashingEventsAtRate0"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingEventsAtRate1), @"numberOfButtonMashingEventsAtRate1"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_longestButtonMashingEventAtRate0), @"longestButtonMashingEventAtRate0"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_longestButtonMashingEventAtRate1), @"longestButtonMashingEventAtRate1"}];
  if (self->_timeOfFlightCameraProjectorModeMask)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"timeOfFlightCameraProjectorModeMask"}];
  }

  if (self->_timeOfFlightCameraUsageTypeMask)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"timeOfFlightCameraUsageTypeMask"}];
  }

  if (self->_structuredLightIdleTemperatureFirstReading != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightIdleTemperatureFirstReading"}];
  }

  if (self->_structuredLightActiveTemperatureFirstReading != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureFirstReading"}];
  }

  if (self->_structuredLightActiveTemperatureLastReading != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureLastReading"}];
  }

  if (self->_structuredLightActiveTemperatureRange != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureRange"}];
  }

  if (self->_structuredLightActiveTemperatureAverage != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureAverage"}];
  }

  if (self->_infaredSensorTemperatureRange != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"infaredSensorTemperatureRange"}];
  }

  if (self->_infaredSensorTemperatureAverage != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"infaredSensorTemperatureAverage"}];
  }

  v59 = dictionary;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  selfCopy = self;
  obj = self->_sensorTemperatureStats;
  v13 = [(NSDictionary *)obj countByEnumeratingWithState:&v66 objects:v65 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v67;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v67 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v66 + 1) + 8 * i);
        v19 = @"Wide";
        if ((objc_msgSend_isEqualToString_(v18) & 1) == 0)
        {
          v19 = @"Tele";
          if ((objc_msgSend_isEqualToString_(v18) & 1) == 0)
          {
            v19 = @"SuperWide";
            if ((objc_msgSend_isEqualToString_(v18) & 1) == 0)
            {
              v19 = @"Front";
              if ((objc_msgSend_isEqualToString_(v18) & 1) == 0)
              {
                if (objc_msgSend_isEqualToString_(v18))
                {
                  v19 = @"FrontSuperWide";
                }

                else
                {
                  v19 = v18;
                }
              }
            }
          }
        }

        v20 = [(NSDictionary *)selfCopy->_sensorTemperatureStats objectForKeyedSubscript:v18];
        v21 = MEMORY[0x1E696AD98];
        [v20 max];
        v22 = [v21 numberWithDouble:?];
        [v59 setObject:v22 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Max", v19)}];
        v23 = MEMORY[0x1E696AD98];
        [v20 min];
        v24 = [v23 numberWithDouble:?];
        [v59 setObject:v24 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Min", v19)}];
        v25 = MEMORY[0x1E696AD98];
        [v20 average];
        v26 = [v25 numberWithDouble:?];
        [v59 setObject:v26 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Average", v19)}];
        v27 = MEMORY[0x1E696AD98];
        [v20 max];
        v29 = v28;
        [v20 min];
        v31 = [v27 numberWithDouble:v29 - v30];
        [v59 setObject:v31 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Range", v19)}];
      }

      v15 = [(NSDictionary *)obj countByEnumeratingWithState:&v66 objects:v65 count:16];
    }

    while (v15);
  }

  v32 = selfCopy;
  if ((selfCopy->_infraredProjectorUptimeInMsForLowPowerSparse & 0x8000000000000000) == 0)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"infraredProjectorUptimeInMsForLowPowerSparse"}];
  }

  if ((selfCopy->_infraredProjectorUptimeInMsForHighPowerSparse & 0x8000000000000000) == 0)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"infraredProjectorUptimeInMsForHighPowerSparse"}];
  }

  *&v14 = selfCopy->_averageSystemPressureLevel;
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"averageSystemPressureLevel"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", selfCopy->_maxSystemPressureLevel), @"maxSystemPressureLevel"}];
  if ((selfCopy->_timeToCriticalSystemPressureInMS & 0x8000000000000000) == 0)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"timeToCriticalSystemPressure"}];
  }

  if (selfCopy->_systemPressureFactors)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"systemPressureFactors"}];
  }

  if (selfCopy->_cinematicFramingSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_cinematicFramingEnabled), @"isCinematicFramingEnabled"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_cinematicFramingControlMode), @"cinematicFramingControlMode"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_cinematicFramingTime), @"cinematicFramingTime"}];
  }

  if (selfCopy->_smartCropSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_cinematicFramingSingleFaceDetectedTime), @"cinematicFramingSingleFaceDetectedTime"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_cinematicFramingMultipleFacesDetectedTime), @"cinematicFramingMultipleFacesDetectedTime"}];
  }

  if (selfCopy->_backgroundBlurSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_backgroundBlurEnabled), @"isBackgroundBlurEnabled"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_backgroundBlurTime), @"backgroundBlurTime"}];
    if (selfCopy->_backgroundBlurTime)
    {
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_backgroundBlurApertureChanged), @"backgroundBlurChanged"}];
      *&v33 = selfCopy->_backgroundBlurAperture;
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v33), @"backgroundBlurAperture"}];
    }
  }

  if (selfCopy->_studioLightingSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_studioLightingEnabled), @"isStudioLightingEnabled"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_studioLightingTime), @"studioLightingTime"}];
    if (selfCopy->_studioLightingTime)
    {
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_studioLightingIntensityChanged), @"studioLightingChanged"}];
      *&v34 = selfCopy->_studioLightingIntensity;
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), @"studioLightingIntensity"}];
    }
  }

  if (selfCopy->_orientationPortraitTime)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationPortraitTime"}];
  }

  if (selfCopy->_orientationLandscapeTime)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationLandscapeTime"}];
  }

  if (selfCopy->_orientationFaceUpTime)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationFaceUpTime"}];
  }

  if (selfCopy->_orientationFaceDownTime)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationFaceDownTime"}];
  }

  if (selfCopy->_reactionEffectsSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_reactionEffectsEnabled), @"reactionEffectsEnabled"}];
    if (selfCopy->_reactionEffectsEnabled)
    {
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_gesturesEnabled), @"gesturesEnabled"}];
    }

    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_reactionCount), @"reactionCount"}];
  }

  if (selfCopy->_reactionEffectsEnabledTime)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"reactionEffectsEnabledTime"}];
  }

  if (selfCopy->_gesturesEnabledTime)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"gesturesEnabledTime"}];
  }

  if (selfCopy->_backgroundReplacementSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_backgroundReplacementEnabled), @"isBackgroundReplacementEnabled"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_backgroundReplacementTime), @"backgroundReplacementTime"}];
    if (selfCopy->_backgroundReplacementTime)
    {
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_backgroundReplacementPixelBufferChanged), @"backgroundReplacementChanged"}];
    }
  }

  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_cinematicVideoEnabled), @"cinematicVideoEnabled"}];
  if (selfCopy->_cinematicVideoEnabled)
  {
    *&v35 = selfCopy->_cinematicVideoAverageRenderingTime;
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), @"cinematicVideoAverageRenderingTime"}];
    *&v36 = selfCopy->_cinematicVideoWorstCaseRenderingTime;
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v36), @"cinematicVideoWorstCaseRenderingTime"}];
  }

  if (selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAt0FPS || selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAt1FPS || selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAt8FPS || selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAtOtherFPS)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"tofStreamingTime0FPS"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAt1FPS), @"tofStreamingTime1FPS"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAt8FPS), @"tofStreamingTime8FPS"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_timeOfFlightAssistedAutoFocusStreamingTimeAtOtherFPS), @"tofStreamingTimeOtherFPS"}];
  }

  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_captureDeviceType), @"captureDeviceType"}];
  if (selfCopy->_depthMaxFrameRate != 3.4028e38)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"depthMaxFrameRate"}];
  }

  if (selfCopy->_depthFormatDimensionWidth != -1)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthFormatDimensionWidth"}];
  }

  if (selfCopy->_depthFormatDimensionHeight != -1)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthFormatDimensionHeight"}];
  }

  [v59 setObject:BWStringForOSType() forKeyedSubscript:@"depthPixelFormat"];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_depthDataFiltered), @"depthDataFiltered"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", selfCopy->_faceDrivenAEAFEnabledByDefault), @"faceDrivenAEAFEnabledByDefault"}];
  if (selfCopy->_faceDrivenAEAFEnabledByDefault)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_faceDrivenAFDisabledCount), @"faceDrivenAFDisabledCount"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_faceDrivenAEDisabledCount), @"faceDrivenAEDisabledCount"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", selfCopy->_maxFacesDetected), @"maxFacesDetected"}];
    *&v37 = selfCopy->_minLuxValue;
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v37), @"minLuxValue"}];
    *&v38 = selfCopy->_maxLuxValue;
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v38), @"maxLuxValue"}];
    *&v39 = selfCopy->_averageLuxValue;
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v39), @"averageLuxValue"}];
    *&v40 = selfCopy->_medianLuxValue;
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v40), @"medianLuxValue"}];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    luxHistogram = selfCopy->_luxHistogram;
    v42 = [(NSDictionary *)luxHistogram countByEnumeratingWithState:&v61 objects:v60 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v62;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v62 != v44)
          {
            objc_enumerationMutation(luxHistogram);
          }

          v46 = *(*(&v61 + 1) + 8 * j);
          v47 = [(NSDictionary *)v32->_luxHistogram objectForKey:v46];
          [v59 setObject:v47 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"alsLuxBin%@", v46)}];
        }

        v43 = [(NSDictionary *)luxHistogram countByEnumeratingWithState:&v61 objects:v60 count:16];
      }

      while (v43);
    }

    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_photoFormat), @"photoFormat"}];
  }

  continuityCameraClientDeviceClass = v32->_continuityCameraClientDeviceClass;
  v49 = @"AppleTV";
  if (continuityCameraClientDeviceClass != 4)
  {
    v49 = 0;
  }

  if (continuityCameraClientDeviceClass == 100)
  {
    v50 = @"Mac";
  }

  else
  {
    v50 = v49;
  }

  if (v50)
  {
    [v59 setObject:v50 forKeyedSubscript:@"continuityCameraClientDeviceClass"];
  }

  if (v32->_streamingTime)
  {
    if (v32->_thermalThrottledTime)
    {
      v51 = MEMORY[0x1E695E118];
    }

    else
    {
      v51 = MEMORY[0x1E695E110];
    }

    [v59 setObject:v51 forKeyedSubscript:@"thermalThrottled"];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_thermalThrottledTime), @"thermalThrottledTime"}];
  }

  [v59 setObject:BWStringForOSType() forKeyedSubscript:@"pixelFormat"];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32->_videoDimensions.width), @"videoDimensionsWidth"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32->_videoDimensions.height), @"videoDimensionsHeight"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_highlightRecoveryEnabled), @"highlightRecoveryEnabled"}];
  *&v52 = v32->_minimumSupportedFrameRate;
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v52), @"minimumSupportedFrameRate"}];
  *&v53 = v32->_maximumSupportedFrameRate;
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v53), @"maximumSupportedFrameRate"}];
  *&v54 = v32->_minimumFrameRate;
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v54), @"minimumFrameRate"}];
  *&v55 = v32->_maximumFrameRate;
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v55), @"maximumFrameRate"}];
  *&v56 = v32->_fieldOfView;
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v56), @"fieldOfView"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_binned), @"binned"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32->_colorSpace), @"colorSpace"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_clientIsVOIP), @"clientIsVOIP"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_audioMixWithOthersEnabled), @"audioMixWithOthersEnabled"}];
  if (v32->_invalidFrameDurationBeforeFirstValidFrame != 0.0)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"invalidFrameDurationBeforeFirstValidFrame"}];
  }

  if (v32->_invalidFrameCountAfterFirstValidFrame)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"invalidFrameCountAfterFirstValidFrame"}];
  }

  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_secureMetadataEnabled), @"secureMetadataEnabled"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_hitPortraitInPhotoPreviewThermalPressure), @"hitPortraitInPhotoPreviewThermalPressure"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_longestContinuousPortraitInPhotoPreviewInMS), @"longestContinuousPortraitInPhotoPreviewInMS"}];
  [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_mlvnrActiveTime), @"mlvnrActiveTime"}];
  if (v32->_dynamicAspectRatioSupported)
  {
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio1x1Time), @"dynamicAspectRatio1x1Time"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio4x3Time), @"dynamicAspectRatio4x3Time"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio3x4Time), @"dynamicAspectRatio3x4Time"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio16x9Time), @"dynamicAspectRatio16x9Time"}];
    [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio9x16Time), @"dynamicAspectRatio9x16Time"}];
  }

  return v59;
}

@end