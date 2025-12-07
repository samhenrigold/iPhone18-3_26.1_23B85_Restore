@interface ENDifferentialPrivacyManager
+ (id)hashForServerExposureConfiguration:(id)configuration;
+ (unsigned)userRiskScoreForExposureDetectionSummary:(id)summary;
- (BOOL)_submitVectorValue:(id)value toRecorder:(id)recorder description:(const char *)description;
- (ENDifferentialPrivacyManager)initWithServerConfiguration:(id)configuration serverExposureConfiguration:(id)exposureConfiguration;
- (void)_submitValue:(id)value toRecorder:(id)recorder description:(const char *)description;
- (void)reportUserCodeVerified:(unsigned __int8)verified reportType:(unsigned int)type;
- (void)reportUserDiagnosedVaccineStatus:(id)status;
- (void)reportUserExposureNotificationTapped:(BOOL)tapped classificationIndex:(unsigned __int8)index;
- (void)reportUserExposureNotificationWithClassificationIndex:(unsigned __int8)index daysDelay:(unsigned __int8)delay;
- (void)reportUserKeysUploaded:(unsigned __int8)uploaded reportType:(unsigned int)type;
- (void)reportUserRiskScoreWithSummary:(id)summary;
- (void)updatedServerConfiguration:(id)configuration serverExposureConfiguration:(id)exposureConfiguration;
@end

@implementation ENDifferentialPrivacyManager

- (ENDifferentialPrivacyManager)initWithServerConfiguration:(id)configuration serverExposureConfiguration:(id)exposureConfiguration
{
  configurationCopy = configuration;
  exposureConfigurationCopy = exposureConfiguration;
  v40.receiver = self;
  v40.super_class = ENDifferentialPrivacyManager;
  v8 = [(ENDifferentialPrivacyManager *)&v40 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserRisk"];
    userRiskRecorder = v8->_userRiskRecorder;
    v8->_userRiskRecorder = v9;

    v11 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserRiskParameters"];
    userRiskParametersRecorder = v8->_userRiskParametersRecorder;
    v8->_userRiskParametersRecorder = v11;

    v13 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.BeaconCount"];
    userBeaconCountRecorder = v8->_userBeaconCountRecorder;
    v8->_userBeaconCountRecorder = v13;

    v15 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserNotification"];
    userNotificationRecorder = v8->_userNotificationRecorder;
    v8->_userNotificationRecorder = v15;

    v17 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.UserNotificationInteraction"];
    userNotificationInteractionRecorder = v8->_userNotificationInteractionRecorder;
    v8->_userNotificationInteractionRecorder = v17;

    v19 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.CodeVerified"];
    userCodeVerifiedRecorder = v8->_userCodeVerifiedRecorder;
    v8->_userCodeVerifiedRecorder = v19;

    v21 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DiagnosedVaccineStatus"];
    userDiagnosedVaccineStatusRecorder = v8->_userDiagnosedVaccineStatusRecorder;
    v8->_userDiagnosedVaccineStatusRecorder = v21;

    v23 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.KeysUploaded"];
    userKeysUploadedRecorder = v8->_userKeysUploadedRecorder;
    v8->_userKeysUploadedRecorder = v23;

    v25 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DateExposure"];
    userDateExposureRecorder = v8->_userDateExposureRecorder;
    v8->_userDateExposureRecorder = v25;

    v27 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.CodeVerifiedWithReportTypeV2D14"];
    userCodeVerifiedV2Recorder = v8->_userCodeVerifiedV2Recorder;
    v8->_userCodeVerifiedV2Recorder = v27;

    v29 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.KeysUploadedWithReportTypeV2D14"];
    userKeysUploadedV2Recorder = v8->_userKeysUploadedV2Recorder;
    v8->_userKeysUploadedV2Recorder = v29;

    v31 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.SecondaryAttackV2D14"];
    userSecondaryAttackV2Recorder = v8->_userSecondaryAttackV2Recorder;
    v8->_userSecondaryAttackV2Recorder = v31;

    v33 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.PeriodicExposureNotificationV2D14"];
    userNotificationV2Recorder = v8->_userNotificationV2Recorder;
    v8->_userNotificationV2Recorder = v33;

    v35 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DiagnosedVaccineStatusV2D14"];
    userDiagnosedVaccineStatusV2Recorder = v8->_userDiagnosedVaccineStatusV2Recorder;
    v8->_userDiagnosedVaccineStatusV2Recorder = v35;

    v37 = [objc_alloc(MEMORY[0x277D052F0]) initWithKey:@"com.apple.EN.DateExposureV2D14"];
    userDateExposureV2Recorder = v8->_userDateExposureV2Recorder;
    v8->_userDateExposureV2Recorder = v37;

    [(ENDifferentialPrivacyManager *)v8 updatedServerConfiguration:configurationCopy serverExposureConfiguration:exposureConfigurationCopy];
  }

  return v8;
}

- (void)updatedServerConfiguration:(id)configuration serverExposureConfiguration:(id)exposureConfiguration
{
  configurationCopy = configuration;
  exposureConfigurationCopy = exposureConfiguration;
  if (gLogCategory_ENDifferentialPrivacyManager <= 30 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    [ENDifferentialPrivacyManager updatedServerConfiguration:serverExposureConfiguration:];
  }

  region = [configurationCopy region];
  countryCode = [region countryCode];

  region2 = [configurationCopy region];
  subdivisionCode = [region2 subdivisionCode];

  v11 = [ENDifferentialPrivacyManager hashForServerExposureConfiguration:exposureConfigurationCopy];
  v12 = objc_alloc_init(MEMORY[0x277CBEB30]);
  [v12 setObject:countryCode forKeyedSubscript:*MEMORY[0x277D05338]];
  [v12 setObject:subdivisionCode forKeyedSubscript:*MEMORY[0x277D053F8]];
  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277D05418]];
  v13 = [v12 copy];
  metadata = self->_metadata;
  p_metadata = &self->_metadata;
  *p_metadata = v13;

  if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    [ENDifferentialPrivacyManager updatedServerConfiguration:? serverExposureConfiguration:?];
  }
}

- (void)reportUserRiskScoreWithSummary:(id)summary
{
  v4 = [ENDifferentialPrivacyManager userRiskScoreForExposureDetectionSummary:summary];
  v5 = [MEMORY[0x277CCABA8] numberWithUnsignedShort:v4];
  [(ENDifferentialPrivacyManager *)self _submitValue:v5 toRecorder:self->_userRiskRecorder description:"user risk score"];
}

- (void)reportUserExposureNotificationTapped:(BOOL)tapped classificationIndex:(unsigned __int8)index
{
  indexCopy = index;
  if ((index - 1) >= 4)
  {
    v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENDifferentialPrivacyManager <= 90 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      [ENDifferentialPrivacyManager reportUserExposureNotificationTapped:indexCopy classificationIndex:?];
    }
  }

  else
  {
    if (tapped)
    {
      indexCopy2 = index;
    }

    else
    {
      indexCopy2 = (index + 4);
    }

    v9 = [MEMORY[0x277CCABA8] numberWithInt:indexCopy2];
    [(ENDifferentialPrivacyManager *)self _submitValue:v9 toRecorder:self->_userNotificationInteractionRecorder description:"user exposure notification interaction"];
  }
}

- (void)reportUserCodeVerified:(unsigned __int8)verified reportType:(unsigned int)type
{
  v4 = *&type;
  verifiedCopy = verified;
  v7 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:?];
  [(ENDifferentialPrivacyManager *)self _submitValue:v7 toRecorder:self->_userCodeVerifiedRecorder description:"code verified"];

  v8 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v4];
  [(ENDifferentialPrivacyManager *)self _submitValue:v8 toRecorder:self->_userCodeVerifiedV2Recorder description:"code verified v2"];

  v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v9 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserCodeVerified:reportType:]", 50, "submitted %d/%u for codeVerified", verifiedCopy, v4);
  }

  if (verifiedCopy >= 2)
  {
    if (v4)
    {
      v11 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:verifiedCopy + 4 * v4 - 6];
      [(ENDifferentialPrivacyManager *)self _submitValue:v11 toRecorder:self->_userSecondaryAttackV2Recorder description:"secondary attack"];

      v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
      LODWORD(v11) = [v12 isSensitiveLoggingAllowed];

      if (v11)
      {
        if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserCodeVerified:reportType:]", 50, "submitted %d/%u/%u for secondary attack", verifiedCopy, v4, verifiedCopy + 4 * v4 - 6);
        }
      }
    }
  }
}

- (void)reportUserKeysUploaded:(unsigned __int8)uploaded reportType:(unsigned int)type
{
  v4 = *&type;
  uploadedCopy = uploaded;
  v7 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:?];
  [(ENDifferentialPrivacyManager *)self _submitValue:v7 toRecorder:self->_userKeysUploadedRecorder description:"keys uploaded"];

  v8 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v4];
  [(ENDifferentialPrivacyManager *)self _submitValue:v8 toRecorder:self->_userKeysUploadedV2Recorder description:"keys uploaded v2"];

  v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
  LODWORD(v8) = [v9 isSensitiveLoggingAllowed];

  if (v8 && gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserKeysUploaded:reportType:]", 50, "submitted %d/%u for keysUploaded", uploadedCopy, v4);
  }
}

- (BOOL)_submitVectorValue:(id)value toRecorder:(id)recorder description:(const char *)description
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v8 = MEMORY[0x277CBEA68];
  recorderCopy = recorder;
  valueCopy2 = value;
  v11 = [v8 arrayWithObjects:&valueCopy count:1];
  v12 = [recorderCopy recordBitVectors:v11 metadata:{self->_metadata, valueCopy, v15}];

  if (v12)
  {
    if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      [ENDifferentialPrivacyManager _submitVectorValue:description toRecorder:? description:?];
    }
  }

  else
  {
    [ENDifferentialPrivacyManager _submitVectorValue:description toRecorder:? description:?];
  }

  return v12;
}

- (void)_submitValue:(id)value toRecorder:(id)recorder description:(const char *)description
{
  v13 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v8 = MEMORY[0x277CBEA68];
  recorderCopy = recorder;
  valueCopy2 = value;
  v11 = [v8 arrayWithObjects:&valueCopy count:1];
  LOBYTE(self) = [recorderCopy record:v11 metadata:{self->_metadata, valueCopy, v13}];

  if (self)
  {
    if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      [ENDifferentialPrivacyManager _submitValue:description toRecorder:? description:?];
    }
  }

  else
  {
    [ENDifferentialPrivacyManager _submitValue:description toRecorder:? description:?];
  }
}

+ (unsigned)userRiskScoreForExposureDetectionSummary:(id)summary
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  daySummaries = [summary daySummaries];
  v4 = [daySummaries countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(daySummaries);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        daySummary = [v11 daySummary];
        [daySummary maximumScore];
        v14 = v13;

        daySummary2 = [v11 daySummary];
        [daySummary2 scoreSum];
        v17 = v16;

        daySummary3 = [v11 daySummary];
        [daySummary3 weightedDurationSum];
        v20 = v19;

        if (v14 > v9)
        {
          v9 = v14;
        }

        if (v17 > v8)
        {
          v8 = v17;
        }

        if (v20 > v7)
        {
          v7 = v20;
        }
      }

      v5 = [daySummaries countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  for (j = 0; j != 7; ++j)
  {
    if (v9 <= dbl_24A28BEC8[j])
    {
      break;
    }
  }

  for (k = 0; k != 7; ++k)
  {
    if (v8 <= dbl_24A28BF00[k])
    {
      break;
    }
  }

  for (m = 0; m != 7; ++m)
  {
    if (v7 <= dbl_24A28BF38[m])
    {
      break;
    }
  }

  if (gLogCategory_ENDifferentialPrivacyManager <= 30 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "+[ENDifferentialPrivacyManager userRiskScoreForExposureDetectionSummary:]", 30, "differential privacy user risk score: max (val %f, bucket %u); sum (val %f, bucket %u); weightedDur (val %f, bucket %u); combined %u (0x%x)", v9, j, v8, k, v7, m, (k + 8 * j + (m << 6)), (k + 8 * j + (m << 6)));
  }

  return k + 8 * j + (m << 6);
}

- (void)reportUserExposureNotificationWithClassificationIndex:(unsigned __int8)index daysDelay:(unsigned __int8)delay
{
  delayCopy = delay;
  indexCopy = index;
  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserExposureNotificationWithClassificationIndex:daysDelay:]", 50, "reportUserExposureNotificationWithClassificationIndex %d delay %d", indexCopy, delayCopy);
  }

  if ((indexCopy - 1) >= 4u)
  {
    v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed2 = [v17 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed2 && gLogCategory_ENDifferentialPrivacyManager <= 90 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "BOOL IsValidExposureClassificationIndex(ENExposureClassificationIndex)", 90, "### Unrecognized exposure notification classification index %d", indexCopy);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:indexCopy];
    [(ENDifferentialPrivacyManager *)self _submitValue:v9 toRecorder:self->_userNotificationRecorder description:"user exposure notification"];

    v10 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:indexCopy];
    [(ENDifferentialPrivacyManager *)self _submitValue:v10 toRecorder:self->_userNotificationV2Recorder description:"user exposure notification v2"];

    if (delayCopy < 0xB)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    if (delayCopy >= 7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (delayCopy < 4)
    {
      v12 = 0;
    }

    v13 = v12 + 4 * indexCopy - 4;
    v14 = [MEMORY[0x277CCABA8] numberWithInt:v13];
    [(ENDifferentialPrivacyManager *)self _submitValue:v14 toRecorder:self->_userDateExposureRecorder description:"delay between exposure and notification"];

    v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed3 = [v15 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed3 && gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserExposureNotificationWithClassificationIndex:daysDelay:]", 50, "Submitted dateExposure %d to differential privacy", v13);
    }

    v19 = malloc_type_calloc(0x30uLL, 1uLL, 0x100004077774924uLL);
    if (v19)
    {
      v20 = v19;
      selfCopy = self;
      if (delayCopy >= 0xB)
      {
        v21 = 11;
      }

      else
      {
        v21 = delayCopy;
      }

      v22 = 12 * indexCopy;
      v23 = &v19[v22];
      do
      {
        v23[v21 - 12] = 1;
        v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed4 = [v24 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed4 && gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserExposureNotificationWithClassificationIndex:daysDelay:]", 50, "setting bin %d for dateExposureV2", v22 + v21 - 12);
        }

        ++v21;
      }

      while (v21 != 12);
      v26 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:v20 length:48];
      v27 = selfCopy;
      v31 = v26;
      [ENDifferentialPrivacyManager _submitVectorValue:v27 toRecorder:"_submitVectorValue:toRecorder:description:" description:?];
      v28 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed5 = [v28 isSensitiveLoggingAllowed];

      if ((isSensitiveLoggingAllowed5 & 1) != 0 && gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserExposureNotificationWithClassificationIndex:daysDelay:]", 50, "Submitted dateExposureV2 to differential privacy");
      }
    }
  }
}

- (void)reportUserDiagnosedVaccineStatus:(id)status
{
  statusCopy = status;
  if ([ENDifferentialPrivacyManager _submitVectorValue:"_submitVectorValue:toRecorder:description:" toRecorder:? description:?])
  {
    if ([(ENDifferentialPrivacyManager *)self _submitVectorValue:statusCopy toRecorder:self->_userDiagnosedVaccineStatusV2Recorder description:"user diagnosed vaccine status v2"])
    {
      v4 = statusCopy;
      bytes = [statusCopy bytes];
      if ([statusCopy length])
      {
        v6 = 0;
        do
        {
          if (*(bytes + v6) == 1)
          {
            v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed)
            {
              if (gLogCategory_ENDifferentialPrivacyManager <= 50 && (gLogCategory_ENDifferentialPrivacyManager != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&gLogCategory_ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager reportUserDiagnosedVaccineStatus:]", 50, "byte %lu set", v6);
              }
            }
          }

          ++v6;
        }

        while (v6 < [statusCopy length]);
      }
    }
  }
}

+ (id)hashForServerExposureConfiguration:(id)configuration
{
  configurationCopy = configuration;
  bzero(v39, 0x87uLL);
  if (configurationCopy)
  {
    exposureConfigurationValues = [configurationCopy exposureConfigurationValues];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v38[0] = Int64Ranged;
    v6 = OUTLINED_FUNCTION_0_6(Int64Ranged, @"nearDurationWeight");
    v38[1] = v6;
    v7 = OUTLINED_FUNCTION_0_6(v6, @"mediumDurationWeight");
    v38[2] = v7;
    v38[3] = OUTLINED_FUNCTION_0_6(v7, @"otherDurationWeight");
    CFArrayGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (v8)
    {
      v9 = NSArrayGetNSNumberAtIndex();
      v10 = NSArrayGetNSNumberAtIndex();
      v11 = NSArrayGetNSNumberAtIndex();
      v39[0] = [v9 unsignedCharValue];
      v39[1] = [v10 unsignedCharValue];
      v39[2] = [v11 unsignedCharValue];
    }

    v35 = v8;
    CFDictionaryGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      v15 = 0;
      v16 = -14;
      do
      {
        v12 = OUTLINED_FUNCTION_2_1(v13, [MEMORY[0x277CCABA8] numberWithInteger:v16]);
        v14 |= (v12 & 3) << v15;
        v15 += 2;
        ++v16;
      }

      while (v15 != 58);
      v40 = v14;
    }

    v17 = OUTLINED_FUNCTION_0_6(v12, @"infectiousnessStandardWeight");
    v41 = v17;
    v18 = OUTLINED_FUNCTION_0_6(v17, @"infectiousnessHighWeight");
    v42 = v18;
    v19 = OUTLINED_FUNCTION_0_6(v18, @"reportTypeConfirmedTestWeight");
    v43 = v19;
    v20 = OUTLINED_FUNCTION_0_6(v19, @"reportTypeConfirmedClinicalDiagnosisWeight");
    v44 = v20;
    v45 = OUTLINED_FUNCTION_0_6(v20, @"reportTypeSelfReportedWeight");
    v46 = OUTLINED_FUNCTION_2_1(exposureConfigurationValues, @"reportTypeNoneMap");
    v36 = exposureConfigurationValues;
    v47 = OUTLINED_FUNCTION_2_1(exposureConfigurationValues, @"daysSinceLastExposureThreshold");
    v37 = configurationCopy;
    classificationCriteria = [configurationCopy classificationCriteria];
    v34 = v13;
    if ([classificationCriteria count] > 3)
    {
      v22 = 4;
    }

    else
    {
      v22 = [classificationCriteria count];
      if (!v22)
      {
LABEL_14:
        v30 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:v38 length:143];
        sha256 = [v30 sha256];
        v32 = NSPrintF("%.3H", [sha256 bytes], objc_msgSend(sha256, "length"), objc_msgSend(sha256, "length"));

        configurationCopy = v37;
        goto LABEL_15;
      }
    }

    v23 = 0;
    v24 = &v48;
    do
    {
      v25 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      perDaySumERVThresholdsByDiagnosisReportType = [v25 perDaySumERVThresholdsByDiagnosisReportType];

      *(v24 - 6) = OUTLINED_FUNCTION_1_3(perDaySumERVThresholdsByDiagnosisReportType, &unk_285D6E450);
      *(v24 - 5) = OUTLINED_FUNCTION_1_3(perDaySumERVThresholdsByDiagnosisReportType, &unk_285D6E468);
      *(v24 - 4) = OUTLINED_FUNCTION_1_3(perDaySumERVThresholdsByDiagnosisReportType, &unk_285D6E480);
      *(v24 - 3) = OUTLINED_FUNCTION_1_3(perDaySumERVThresholdsByDiagnosisReportType, &unk_285D6E498);
      v27 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      *(v24 - 2) = [v27 perDaySumERVThreshold];

      v28 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      *(v24 - 1) = [v28 perDayMaxERVThreshold];

      v29 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
      *v24 = [v29 weightedDurationAtAttenuationThreshold];
      v24 += 28;

      ++v23;
    }

    while (v22 != v23);
    goto LABEL_14;
  }

  v32 = 0;
LABEL_15:

  return v32;
}

- (const)_submitVectorValue:(const char *)result toRecorder:description:.cold.1(const char *result)
{
  if (gLogCategory__ENDifferentialPrivacyManager <= 90)
  {
    v1 = result;
    if (gLogCategory__ENDifferentialPrivacyManager != -1)
    {
      return LogPrintF_safe(&gLogCategory__ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager _submitVectorValue:toRecorder:description:]", 90, "### Failed submitting %s to differential privacy", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe(&gLogCategory__ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager _submitVectorValue:toRecorder:description:]", 90, "### Failed submitting %s to differential privacy", v1);
    }
  }

  return result;
}

- (const)_submitValue:(const char *)result toRecorder:description:.cold.1(const char *result)
{
  if (gLogCategory__ENDifferentialPrivacyManager <= 90)
  {
    v1 = result;
    if (gLogCategory__ENDifferentialPrivacyManager != -1)
    {
      return LogPrintF_safe(&gLogCategory__ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager _submitValue:toRecorder:description:]", 90, "### Failed submitting %s value to differential privacy", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe(&gLogCategory__ENDifferentialPrivacyManager, "[ENDifferentialPrivacyManager _submitValue:toRecorder:description:]", 90, "### Failed submitting %s value to differential privacy", v1);
    }
  }

  return result;
}

@end