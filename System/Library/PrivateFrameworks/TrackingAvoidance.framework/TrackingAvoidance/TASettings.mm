@interface TASettings
+ (id)convertEnabledLoiTypesValueContentToNSNumberType:(id)type;
+ (id)getArraySettingsKeys;
+ (id)getBooleanSettingsKeys;
+ (id)getDoubleSettingsKeys;
+ (id)getStringSettingsKeys;
+ (id)getUnsignedIntegerSettingsKeys;
- (TASettings)initWithSettings:(id)settings;
- (id)description;
- (void)description;
- (void)setSettings:(id)settings;
@end

@implementation TASettings

- (TASettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = TASettings;
  v5 = [(TASettings *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TASettings *)v5 setSettings:settingsCopy];
    v7 = v6;
  }

  return v6;
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy objectForKeyedSubscript:@"TAEnable"];
  v125 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  self->_trackingAvoidanceEnabled = bOOLValue;
  v5 = [settingsCopy objectForKeyedSubscript:@"TAEnablePD"];
  v124 = v5;
  if (v5)
  {
    LOBYTE(v5) = [v5 BOOLValue];
  }

  self->_peopleDensityEnabled = v5;
  v6 = [settingsCopy objectForKeyedSubscript:@"TAScanMaxDailyRequests"];
  v123 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 50;
  }

  self->_maximumDailyScans = unsignedIntegerValue;
  v8 = [settingsCopy objectForKeyedSubscript:@"TANotificationThrottleHours"];
  v122 = v8;
  if (v8)
  {
    unsignedIntegerValue2 = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 24;
  }

  self->_notificationThrottleHours = unsignedIntegerValue2;
  v10 = [settingsCopy objectForKeyedSubscript:@"TANotificationThrottleMax"];
  v121 = v10;
  if (v10)
  {
    unsignedIntegerValue3 = [v10 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue3 = -1;
  }

  self->_notificationThrottleMaxPerPeriod = unsignedIntegerValue3;
  v12 = [settingsCopy objectForKeyedSubscript:@"TAPersistenceInterval"];
  v120 = v12;
  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    v13 = 3600.0;
  }

  self->_persistenceInterval = v13;
  v14 = [settingsCopy objectForKeyedSubscript:@"TAFutureEventToleranceInterval"];
  v119 = v14;
  if (v14)
  {
    [v14 doubleValue];
  }

  else
  {
    v15 = 86400.0;
  }

  self->_futureEventToleranceInterval = v15;
  v16 = [settingsCopy objectForKeyedSubscript:@"TASettingsVersion"];
  v118 = v16;
  if (v16)
  {
    unsignedIntValue = [v16 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  self->_settingsVersion = unsignedIntValue;
  v18 = [settingsCopy objectForKeyedSubscript:@"TAAISFetchEnable"];
  v117 = v18;
  if (v18)
  {
    bOOLValue2 = [v18 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  self->_aisFetchEnabled = bOOLValue2;
  v20 = [TAFilterGeneralSettings alloc];
  v21 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralDurationOfConsideration"];
  v143 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralThresholdOfLocationRelevance"];
  v141 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralThresholdOfSignificantDuration"];
  v139 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralThresholdOfSignificantDistance"];
  v136 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralCapOfReasonableWalkingSpeed"];
  v133 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralAllowNavGeoAsPrivateVehicleHint"];
  v22 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralVehicularImmediacyType"];
  v23 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralBeepOnMoveVehicularImmediacyType"];
  v130 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralBeepOnMovePedestrianImmediacyType"];
  v24 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralNextPLOIVehicularImmediacyType"];
  v25 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralNextPLOIPedestrianImmediacyType"];
  v26 = [settingsCopy objectForKeyedSubscript:@"TAFilterGeneralNextBeepOnMoveConsiderationTimeInterval"];
  v27 = [(TAFilterGeneralSettings *)v20 initWithDurationOfConsiderationOrDefault:v21 thresholdOfLocationRelevanceOrDefault:v143 thresholdOfSignificantDurationOrDefault:v141 thresholdOfSignificantDistanceOrDefault:v139 capOfReasonableWalkingSpeedOrDefault:v136 allowNavGeoHintAsPrivateVehicleHintOrDefault:v133 vehicularImmediacyTypeOrDefault:v22 beepOnMoveVehicularImmediacyTypeOrDefault:v23 beepOnMovePedestrianImmediacyTypeOrDefault:v130 nextPLOIVehicularImmediacyTypeOrDefault:v24 nextPLOIPedestrianImmediacyTypeOrDefault:v25 beepOnMoveConsiderationTimeIntervalOrDefault:v26];
  filterGeneralSettings = self->_filterGeneralSettings;
  self->_filterGeneralSettings = v27;

  v116 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsEnabledLoiTypes"];
  v144 = [TASettings convertEnabledLoiTypesValueContentToNSNumberType:v116];
  v29 = [TAFilterVisitsSettings alloc];
  v30 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsMaxDuration"];
  v31 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsMinInterVisitDistance"];
  v32 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsMinNSigma"];
  v33 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsEntryDisplayOnBudget"];
  v34 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsExitDisplayOnBudget"];
  v35 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsMinObservationInterval"];
  v36 = [settingsCopy objectForKeyedSubscript:@"TAFilterVisitsThreeVisitImmediacyTypeKey"];
  v37 = [(TAFilterVisitsSettings *)v29 initWithMaxSuspiciousDurationOrDefault:v30 minInterVisitDistanceOrDefault:v31 minNSigmaBetweenVisitsOrDefault:v32 entryDisplayOnBudgetOrDefault:v33 exitDisplayOnBudgetOrDefault:v34 sensitiveLOITypesOrDefault:v144 minObservationIntervalOrDefault:v35 threeVisitImmediacyTypeOrDefault:v36];
  filterVisitsSettings = self->_filterVisitsSettings;
  self->_filterVisitsSettings = v37;

  v115 = [settingsCopy objectForKeyedSubscript:@"TAFilterSingleVisitEnabledLoiTypes"];
  v142 = [TASettings convertEnabledLoiTypesValueContentToNSNumberType:v115];
  v39 = [TAFilterSingleVisitSettings alloc];
  v40 = [settingsCopy objectForKeyedSubscript:@"TAFilterSingleVisitThresholdOfSignificantDuration"];
  v41 = [settingsCopy objectForKeyedSubscript:@"TAFilterSingleVisitThresholdOfSignificantDistance"];
  v42 = self->_filterVisitsSettings;
  v43 = [settingsCopy objectForKeyedSubscript:@"TAFilterArrivingWorkImmediacyType"];
  v44 = [(TAFilterSingleVisitSettings *)v39 initWithThresholdOfSignificantDurationOrDefault:v40 thresholdOfSignificantDistanceOrDefault:v41 filterVisitsSettingsOrDefault:v42 enabledLoiTypesOrDefault:v142 arrivingWorkImmediacyTypeOrDefault:v43];
  filterSingleVisitSettings = self->_filterSingleVisitSettings;
  self->_filterSingleVisitSettings = v44;

  v114 = [settingsCopy objectForKeyedSubscript:@"TAFilterLeavingLOIEnabledLoiTypes"];
  v140 = [TASettings convertEnabledLoiTypesValueContentToNSNumberType:v114];
  v46 = [TAFilterLeavingLOISettings alloc];
  v47 = [settingsCopy objectForKeyedSubscript:@"TAFilterLeavingLOIThresholdOfSignificantDuration"];
  v48 = [settingsCopy objectForKeyedSubscript:@"TAFilterLeavingLOIThresholdOfSignificantDistance"];
  v49 = self->_filterVisitsSettings;
  v50 = [settingsCopy objectForKeyedSubscript:@"TAFilterLeavingHomeImmediacyType"];
  v51 = [settingsCopy objectForKeyedSubscript:@"TAFilterLeavingWorkImmediacyType"];
  v52 = [(TAFilterLeavingLOISettings *)v46 initWithThresholdOfSignificantDurationOrDefault:v47 thresholdOfSignificantDistanceOrDefault:v48 filterVisitsSettingsOrDefault:v49 enabledLoiTypesOrDefault:v140 leavingHomeImmediacyTypeOrDefault:v50 leavingWorkImmediacyTypeOrDefault:v51];
  filterLeavingLOISettings = self->_filterLeavingLOISettings;
  self->_filterLeavingLOISettings = v52;

  v54 = [TAEventBufferSettings alloc];
  v55 = [settingsCopy objectForKeyedSubscript:@"TAEventBufferCapacity"];
  v56 = [settingsCopy objectForKeyedSubscript:@"TAEventBufferTimeIntervalOfRetention"];
  v57 = [(TAEventBufferSettings *)v54 initWithBufferCapacityOrDefault:v55 bufferTimeIntervalOfRetentionOrDefault:v56];
  eventBufferSettings = self->_eventBufferSettings;
  self->_eventBufferSettings = v57;

  v59 = [TAVisitStateSettings alloc];
  v137 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateVisitSnapshotCapacity"];
  v134 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateVisitDisplayBufferCapacity"];
  v131 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateInterVisitMetricSnapshotCapacity"];
  v128 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateInterVisitSnapshotUpdateInterval"];
  v60 = objc_alloc(MEMORY[0x277CCABB0]);
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfLocationRelevance];
  v126 = [v60 initWithDouble:?];
  v112 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateSnapshotBufferTimeIntervalOfRetention"];
  v61 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateLoiBufferPerTypeCapacity"];
  v62 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateLoiBufferTimeIntervalOfRetention"];
  v63 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateMaxNSigma"];
  v64 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateQualitySnapshotDwellDuration"];
  v110 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateQualitySnapshotDisplayOnDuration"];
  v65 = [settingsCopy objectForKeyedSubscript:@"TAVisitStateUniqueUTObservationCapPerVisit"];
  v66 = [(TAVisitStateSettings *)v59 initWithVisitSnapshotCapacityOrDefault:v137 visitDisplayBufferCapacityOrDefault:v134 interVisitMetricSnapshotCapacityOrDefault:v131 interVisitSnapshotUpdateIntervalOrDefault:v128 thresholdOfLocationRelevanceOrDefault:v126 snapshotBufferTimeIntervalOfRetentionOrDefault:v112 loiBufferPerTypeCapacityOrDefault:v61 loiBufferTimeIntervalOfRetentionOrDefault:v62 maxNSigmaBetweenLastLocationAndVisitOrDefault:v63 qualitySnapshotDwellDurationOrDefault:v64 qualitySnapshotDisplayOnDurationOrDefault:v110 uniqueUTObservationCapPerVisitOrDefault:v65 sensitiveLOITypesOrDefault:v144];
  visitStateSettings = self->_visitStateSettings;
  self->_visitStateSettings = v66;

  v108 = [TADeviceRecordSettings alloc];
  v138 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordExpiryTimeInterval"];
  v135 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordFutureExpiryTimeInterval"];
  v132 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordPurgeTimeInterval"];
  v113 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordKeepAliveInterval"];
  v111 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordMinimumStagingInterval"];
  v109 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordStagingBackstopHour"];
  v129 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordAssumedKeyRollHour"];
  v68 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordScanInterval"];
  v127 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordSurfaceImmediatelyBeepOnMove"];
  v107 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordsurfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  v106 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordMaxExpectedHELEWildInterval"];
  v69 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordMaxExpectedDurianWildInterval"];
  v105 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordShouldAlertHELEImmediatelyForImmediateTypes"];
  v104 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordMinimumHELEStagingInterval"];
  v103 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordStagingHELEBackstopHour"];
  v102 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordsurfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  v101 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordHyperHELEStagingInterval"];
  v70 = [settingsCopy objectForKeyedSubscript:@"TADeviceRecordHyperStagingInterval"];
  v71 = [(TADeviceRecordSettings *)v108 initWithExpiryTimeIntervalOrDefault:v138 futureExpiryTimeIntervalOrDefault:v135 purgeTimeIntervalOrDefault:v132 keepAliveIntervalOrDefault:v113 minimumStagingIntervalOrDefault:v111 stagingBackstopHourOrDefault:v109 assumedKeyRollHourOrDefault:v129 scanIntervalOrDefault:v68 surfaceImmediatelyBeepOnMoveOrDefault:v127 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:v107 maxExpectedHELEWildIntervalOrDefault:v106 maxExpectedDurianWildIntervalOrDefault:v69 shouldAlertHELEImmediatelyForImmediateTypesOrDefault:v105 minimumHELEStagingIntervalOrDefault:v104 stagingHELEBackstopHourOrDefault:v103 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:v102 hyperHELEStagingIntervalOrDefault:v101 hyperStagingIntervalOrDefault:v70];
  deviceRecordSettings = self->_deviceRecordSettings;
  self->_deviceRecordSettings = v71;

  v73 = [TAScanRequestSettings alloc];
  v74 = [settingsCopy objectForKeyedSubscript:@"TAScanMinVisitEntryDisplayOnDuration"];
  v75 = [settingsCopy objectForKeyedSubscript:@"TAScanMinInterVisitDisplayOnDuration"];
  v76 = [settingsCopy objectForKeyedSubscript:@"TAScanInterVisitDelay"];
  v77 = [settingsCopy objectForKeyedSubscript:@"TAScanMaxInterVisitRequests"];
  v78 = [(TAScanRequestSettings *)v73 initWithMinVisitEntryDisplayOnDurationOrDefault:v74 minInterVisitDisplayOnDurationOrDefault:v75 interVisitScanDelayOrDefault:v76 maxInterVisitScanRequestsOrDefault:v77];
  scanRequestSettings = self->_scanRequestSettings;
  self->_scanRequestSettings = v78;

  v80 = [TATrackingAvoidanceServiceSettings alloc];
  v81 = [settingsCopy objectForKeyedSubscript:@"TAServiceEnableTAFilterGeneral"];
  v82 = [settingsCopy objectForKeyedSubscript:@"TAServiceEnableTAFilterVisits"];
  v83 = [settingsCopy objectForKeyedSubscript:@"TAServiceEnableTAFilterSingleVisit"];
  v84 = [settingsCopy objectForKeyedSubscript:@"TAServiceEnableTAFilterLeavingLOI"];
  v85 = [settingsCopy objectForKeyedSubscript:@"TAServiceClassificationTimeInterval"];
  v86 = [settingsCopy objectForKeyedSubscript:@"TAServiceDailyAlertLimit"];
  v87 = [(TATrackingAvoidanceServiceSettings *)v80 initWithEnableTAFilterGeneralOrDefault:v81 enableTAFilterVisitsOrDefault:v82 enableTAFilterSingleVisitOrDefault:v83 enableTAFilterLeavingLOIOrDefault:v84 classificationTimeIntervalOrDefault:v85 dailyAccessoryAlertLimitOrDefault:v86];
  serviceSettings = self->_serviceSettings;
  self->_serviceSettings = v87;

  v89 = [TAAnalyticsManagerSettings alloc];
  v90 = [settingsCopy objectForKeyedSubscript:@"TAAnalyticsManagerEnableSubmission"];
  v91 = [(TAAnalyticsManagerSettings *)v89 initWithEnableSubmissionOrDefault:v90 andSettingsVersion:self->_settingsVersion];
  analyticsManagerSettings = self->_analyticsManagerSettings;
  self->_analyticsManagerSettings = v91;

  v93 = [settingsCopy objectForKeyedSubscript:@"TAPersistenceDirectory"];
  if (v93)
  {
    v94 = MEMORY[0x277CBEBC0];
    v95 = [settingsCopy objectForKeyedSubscript:@"TAPersistenceDirectory"];
    v96 = [v94 fileURLWithPath:v95];
  }

  else
  {
    v96 = 0;
  }

  v97 = [TAPersistenceManagerSettings alloc];
  v98 = [settingsCopy objectForKeyedSubscript:@"TAPersistenceStoreFileName"];
  v99 = [(TAPersistenceManagerSettings *)v97 initWithDirectoryURLOrDefault:v96 storeFileNameOrDefault:v98];
  persistenceManagerSettings = self->_persistenceManagerSettings;
  self->_persistenceManagerSettings = v99;
}

+ (id)convertEnabledLoiTypesValueContentToNSNumberType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (typeCopy)
  {
    v4 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v5 setNumberStyle:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = typeCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 copy];
          [v4 addObject:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v11 = [v5 numberFromString:{v10, v13}];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)getBooleanSettingsKeys
{
  v4[13] = *MEMORY[0x277D85DE8];
  v4[0] = @"TAEnable";
  v4[1] = @"TAEnablePD";
  v4[2] = @"TAFilterGeneralAllowNavGeoAsPrivateVehicleHint";
  v4[3] = @"TAServiceEnableTAFilterGeneral";
  v4[4] = @"TAServiceEnableTAFilterVisits";
  v4[5] = @"TAServiceEnableTAFilterSingleVisit";
  v4[6] = @"TAServiceEnableTAFilterLeavingLOI";
  v4[7] = @"TAAnalyticsManagerEnableSubmission";
  v4[8] = @"TADeviceRecordSurfaceImmediatelyBeepOnMove";
  v4[9] = @"TADeviceRecordShouldAlertHELEImmediatelyForImmediateTypes";
  v4[10] = @"TAAISFetchEnable";
  v4[11] = @"TADeviceRecordsurfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v4[12] = @"TADeviceRecordsurfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:13];

  return v2;
}

+ (id)getUnsignedIntegerSettingsKeys
{
  v4[26] = *MEMORY[0x277D85DE8];
  v4[0] = @"TAEventBufferCapacity";
  v4[1] = @"TAVisitStateVisitSnapshotCapacity";
  v4[2] = @"TAVisitStateInterVisitMetricSnapshotCapacity";
  v4[3] = @"TAFilterVisitsMinNSigma";
  v4[4] = @"TAVisitStateMaxNSigma";
  v4[5] = @"TAVisitStateLoiBufferPerTypeCapacity";
  v4[6] = @"TAVisitStateVisitDisplayBufferCapacity";
  v4[7] = @"TAVisitStateUniqueUTObservationCapPerVisit";
  v4[8] = @"TAScanMaxInterVisitRequests";
  v4[9] = @"TAScanMaxDailyRequests";
  v4[10] = @"TANotificationThrottleHours";
  v4[11] = @"TANotificationThrottleMax";
  v4[12] = @"TADeviceRecordStagingBackstopHour";
  v4[13] = @"TADeviceRecordAssumedKeyRollHour";
  v4[14] = @"TADeviceRecordStagingHELEBackstopHour";
  v4[15] = @"TAFilterGeneralVehicularImmediacyType";
  v4[16] = @"TASettingsVersion";
  v4[17] = @"TAFilterLeavingHomeImmediacyType";
  v4[18] = @"TAFilterLeavingWorkImmediacyType";
  v4[19] = @"TAFilterArrivingWorkImmediacyType";
  v4[20] = @"TAFilterGeneralBeepOnMoveVehicularImmediacyType";
  v4[21] = @"TAFilterGeneralBeepOnMovePedestrianImmediacyType";
  v4[22] = @"TAFilterGeneralNextPLOIVehicularImmediacyType";
  v4[23] = @"TAFilterGeneralNextPLOIPedestrianImmediacyType";
  v4[24] = @"TAFilterVisitsThreeVisitImmediacyTypeKey";
  v4[25] = @"TAFilterGeneralNextBeepOnMoveConsiderationTimeInterval";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:26];

  return v2;
}

+ (id)getDoubleSettingsKeys
{
  v4[36] = *MEMORY[0x277D85DE8];
  v4[0] = @"TAFilterGeneralDurationOfConsideration";
  v4[1] = @"TAFilterGeneralThresholdOfLocationRelevance";
  v4[2] = @"TAFilterGeneralThresholdOfSignificantDuration";
  v4[3] = @"TAFilterGeneralThresholdOfSignificantDistance";
  v4[4] = @"TAFilterGeneralCapOfReasonableWalkingSpeed";
  v4[5] = @"TAFilterSingleVisitThresholdOfSignificantDistance";
  v4[6] = @"TAFilterSingleVisitThresholdOfSignificantDuration";
  v4[7] = @"TAFilterLeavingLOIThresholdOfSignificantDistance";
  v4[8] = @"TAFilterLeavingLOIThresholdOfSignificantDuration";
  v4[9] = @"TAFilterVisitsMaxDuration";
  v4[10] = @"TAFilterVisitsMinInterVisitDistance";
  v4[11] = @"TAFilterVisitsEntryDisplayOnBudget";
  v4[12] = @"TAFilterVisitsExitDisplayOnBudget";
  v4[13] = @"TAFilterVisitsMinObservationInterval";
  v4[14] = @"TAEventBufferTimeIntervalOfRetention";
  v4[15] = @"TAVisitStateInterVisitSnapshotUpdateInterval";
  v4[16] = @"TAVisitStateLoiBufferTimeIntervalOfRetention";
  v4[17] = @"TAVisitStateSnapshotBufferTimeIntervalOfRetention";
  v4[18] = @"TAVisitStateQualitySnapshotDwellDuration";
  v4[19] = @"TAVisitStateQualitySnapshotDisplayOnDuration";
  v4[20] = @"TADeviceRecordExpiryTimeInterval";
  v4[21] = @"TADeviceRecordPurgeTimeInterval";
  v4[22] = @"TADeviceRecordKeepAliveInterval";
  v4[23] = @"TADeviceRecordMinimumStagingInterval";
  v4[24] = @"TADeviceRecordScanInterval";
  v4[25] = @"TADeviceRecordMaxExpectedHELEWildInterval";
  v4[26] = @"TADeviceRecordMaxExpectedDurianWildInterval";
  v4[27] = @"TADeviceRecordMinimumHELEStagingInterval";
  v4[28] = @"TAScanMinVisitEntryDisplayOnDuration";
  v4[29] = @"TAScanMinInterVisitDisplayOnDuration";
  v4[30] = @"TAScanInterVisitDelay";
  v4[31] = @"TAServiceClassificationTimeInterval";
  v4[32] = @"TAPersistenceInterval";
  v4[33] = @"TAFutureEventToleranceInterval";
  v4[34] = @"TADeviceRecordHyperHELEStagingInterval";
  v4[35] = @"TADeviceRecordHyperStagingInterval";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:36];

  return v2;
}

+ (id)getStringSettingsKeys
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"TAPersistenceDirectory";
  v4[1] = @"TAPersistenceStoreFileName";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)getArraySettingsKeys
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"TAFilterSingleVisitEnabledLoiTypes";
  v4[1] = @"TAFilterVisitsEnabledLoiTypes";
  v4[2] = @"TAFilterLeavingLOIEnabledLoiTypes";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)description
{
  v130[78] = *MEMORY[0x277D85DE8];
  v129[0] = @"TAEnable";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:self->_trackingAvoidanceEnabled];
  v130[0] = v126;
  v129[1] = @"TAEnablePD";
  v124 = [MEMORY[0x277CCABB0] numberWithBool:self->_peopleDensityEnabled];
  v130[1] = v124;
  v129[2] = @"TAEventBufferCapacity";
  v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAEventBufferSettings bufferCapacity](self->_eventBufferSettings, "bufferCapacity")}];
  v130[2] = v123;
  v129[3] = @"TAEventBufferTimeIntervalOfRetention";
  v3 = MEMORY[0x277CCABB0];
  [(TAEventBufferSettings *)self->_eventBufferSettings bufferTimeIntervalOfRetention];
  v122 = [v3 numberWithDouble:?];
  v130[3] = v122;
  v129[4] = @"TAVisitStateLoiBufferPerTypeCapacity";
  v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings loiBufferPerTypeCapacity](self->_visitStateSettings, "loiBufferPerTypeCapacity")}];
  v130[4] = v121;
  v129[5] = @"TAVisitStateLoiBufferTimeIntervalOfRetention";
  v4 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings loiBufferTimeIntervalOfRetention];
  v120 = [v4 numberWithDouble:?];
  v130[5] = v120;
  v129[6] = @"TAVisitStateVisitSnapshotCapacity";
  v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings visitSnapshotCapacity](self->_visitStateSettings, "visitSnapshotCapacity")}];
  v130[6] = v119;
  v129[7] = @"TAVisitStateVisitDisplayBufferCapacity";
  v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings visitDisplayBufferCapacity](self->_visitStateSettings, "visitDisplayBufferCapacity")}];
  v130[7] = v118;
  v129[8] = @"TAVisitStateInterVisitMetricSnapshotCapacity";
  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings interVisitMetricSnapshotCapacity](self->_visitStateSettings, "interVisitMetricSnapshotCapacity")}];
  v130[8] = v117;
  v129[9] = @"TAVisitStateInterVisitSnapshotUpdateInterval";
  v5 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings interVisitSnapshotUpdateInterval];
  v116 = [v5 numberWithDouble:?];
  v130[9] = v116;
  v129[10] = @"TAVisitStateSnapshotBufferTimeIntervalOfRetention";
  v6 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings snapshotBufferTimeIntervalOfRetention];
  v115 = [v6 numberWithDouble:?];
  v130[10] = v115;
  v129[11] = @"TAVisitStateMaxNSigma";
  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings maxNSigmaBetweenLastLocationAndVisit](self->_visitStateSettings, "maxNSigmaBetweenLastLocationAndVisit")}];
  v130[11] = v114;
  v129[12] = @"TAVisitStateQualitySnapshotDwellDuration";
  v7 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings qualitySnapshotDwellDuration];
  v113 = [v7 numberWithDouble:?];
  v130[12] = v113;
  v129[13] = @"TAVisitStateQualitySnapshotDisplayOnDuration";
  v8 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings qualitySnapshotDisplayOnDuration];
  v112 = [v8 numberWithDouble:?];
  v130[13] = v112;
  v129[14] = @"TAVisitStateUniqueUTObservationCapPerVisit";
  v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings uniqueUTObservationCapPerVisit](self->_visitStateSettings, "uniqueUTObservationCapPerVisit")}];
  v130[14] = v111;
  v129[15] = @"TADeviceRecordExpiryTimeInterval";
  v9 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings expiryTimeInterval];
  v110 = [v9 numberWithDouble:?];
  v130[15] = v110;
  v129[16] = @"TADeviceRecordFutureExpiryTimeInterval";
  v10 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings futureExpiryTimeInterval];
  v109 = [v10 numberWithDouble:?];
  v130[16] = v109;
  v129[17] = @"TADeviceRecordPurgeTimeInterval";
  v11 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings purgeTimeInterval];
  v108 = [v11 numberWithDouble:?];
  v130[17] = v108;
  v129[18] = @"TADeviceRecordKeepAliveInterval";
  v12 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings keepAliveInterval];
  v107 = [v12 numberWithDouble:?];
  v130[18] = v107;
  v129[19] = @"TADeviceRecordMinimumStagingInterval";
  v13 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings minimumStagingInterval];
  v106 = [v13 numberWithDouble:?];
  v130[19] = v106;
  v129[20] = @"TADeviceRecordStagingBackstopHour";
  v105 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TADeviceRecordSettings stagingBackstopHour](self->_deviceRecordSettings, "stagingBackstopHour")}];
  v130[20] = v105;
  v129[21] = @"TADeviceRecordAssumedKeyRollHour";
  v104 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TADeviceRecordSettings assumedKeyRollHour](self->_deviceRecordSettings, "assumedKeyRollHour")}];
  v130[21] = v104;
  v129[22] = @"TADeviceRecordScanInterval";
  v14 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings scanInterval];
  v103 = [v14 numberWithDouble:?];
  v130[22] = v103;
  v129[23] = @"TADeviceRecordSurfaceImmediatelyBeepOnMove";
  v102 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings surfaceImmediatelyBeepOnMove](self->_deviceRecordSettings, "surfaceImmediatelyBeepOnMove")}];
  v130[23] = v102;
  v129[24] = @"TADeviceRecordsurfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v101 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll](self->_deviceRecordSettings, "surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll")}];
  v130[24] = v101;
  v129[25] = @"TADeviceRecordMaxExpectedHELEWildInterval";
  v15 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings maxExpectedHELEWildInterval];
  v100 = [v15 numberWithDouble:?];
  v130[25] = v100;
  v129[26] = @"TADeviceRecordMaxExpectedDurianWildInterval";
  v16 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings maxExpectedDurianWildInterval];
  v99 = [v16 numberWithDouble:?];
  v130[26] = v99;
  v129[27] = @"TADeviceRecordShouldAlertHELEImmediatelyForImmediateTypes";
  v98 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings shouldAlertHELEImmediatelyForImmediateTypes](self->_deviceRecordSettings, "shouldAlertHELEImmediatelyForImmediateTypes")}];
  v130[27] = v98;
  v129[28] = @"TADeviceRecordMinimumHELEStagingInterval";
  v17 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings minimumHELEStagingInterval];
  v97 = [v17 numberWithDouble:?];
  v130[28] = v97;
  v129[29] = @"TADeviceRecordStagingHELEBackstopHour";
  v96 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TADeviceRecordSettings stagingHELEBackstopHour](self->_deviceRecordSettings, "stagingHELEBackstopHour")}];
  v130[29] = v96;
  v129[30] = @"TADeviceRecordsurfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v95 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll](self->_deviceRecordSettings, "surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll")}];
  v130[30] = v95;
  v129[31] = @"TADeviceRecordHyperHELEStagingInterval";
  v18 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings hyperHELEStagingInterval];
  v94 = [v18 numberWithDouble:?];
  v130[31] = v94;
  v129[32] = @"TADeviceRecordHyperStagingInterval";
  v19 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings hyperStagingInterval];
  v93 = [v19 numberWithDouble:?];
  v130[32] = v93;
  v129[33] = @"TAFilterGeneralThresholdOfSignificantDuration";
  v20 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfSignificantDuration];
  v92 = [v20 numberWithDouble:?];
  v130[33] = v92;
  v129[34] = @"TAFilterGeneralThresholdOfSignificantDistance";
  v21 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfSignificantDistance];
  v91 = [v21 numberWithDouble:?];
  v130[34] = v91;
  v129[35] = @"TAFilterGeneralThresholdOfLocationRelevance";
  v22 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfLocationRelevance];
  v90 = [v22 numberWithDouble:?];
  v130[35] = v90;
  v129[36] = @"TAFilterGeneralDurationOfConsideration";
  v23 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings durationOfConsideration];
  v89 = [v23 numberWithDouble:?];
  v130[36] = v89;
  v129[37] = @"TAFilterGeneralCapOfReasonableWalkingSpeed";
  v24 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings capOfReasonableWalkingSpeed];
  v88 = [v24 numberWithDouble:?];
  v130[37] = v88;
  v129[38] = @"TAFilterGeneralNextBeepOnMoveConsiderationTimeInterval";
  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings beepOnMoveConsiderationTimeInterval](self->_filterGeneralSettings, "beepOnMoveConsiderationTimeInterval")}];
  v130[38] = v87;
  v129[39] = @"TAFilterVisitsMinInterVisitDistance";
  v25 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings minInterVisitDistance];
  v86 = [v25 numberWithDouble:?];
  v130[39] = v86;
  v129[40] = @"TAFilterVisitsMaxDuration";
  v26 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings maxSuspiciousDuration];
  v85 = [v26 numberWithDouble:?];
  v130[40] = v85;
  v129[41] = @"TAFilterVisitsMinNSigma";
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterVisitsSettings minNSigmaBetweenVisits](self->_filterVisitsSettings, "minNSigmaBetweenVisits")}];
  v130[41] = v84;
  v129[42] = @"TAFilterVisitsEntryDisplayOnBudget";
  v27 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings entryDisplayOnBudget];
  v83 = [v27 numberWithDouble:?];
  v130[42] = v83;
  v129[43] = @"TAFilterVisitsExitDisplayOnBudget";
  v28 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings exitDisplayOnBudget];
  v82 = [v28 numberWithDouble:?];
  v130[43] = v82;
  v129[44] = @"TAFilterVisitsMinObservationInterval";
  v29 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings minObservationInterval];
  v81 = [v29 numberWithDouble:?];
  v130[44] = v81;
  v129[45] = @"TAFilterVisitsThreeVisitImmediacyTypeKey";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterVisitsSettings threeVisitImmediacyType](self->_filterVisitsSettings, "threeVisitImmediacyType")}];
  v130[45] = v80;
  v129[46] = @"TAScanMinVisitEntryDisplayOnDuration";
  v30 = MEMORY[0x277CCABB0];
  [(TAScanRequestSettings *)self->_scanRequestSettings minVisitEntryDisplayOnDuration];
  v79 = [v30 numberWithDouble:?];
  v130[46] = v79;
  v129[47] = @"TAScanMinInterVisitDisplayOnDuration";
  v31 = MEMORY[0x277CCABB0];
  [(TAScanRequestSettings *)self->_scanRequestSettings minInterVisitDisplayOnDuration];
  v78 = [v31 numberWithDouble:?];
  v130[47] = v78;
  v129[48] = @"TAScanInterVisitDelay";
  v32 = MEMORY[0x277CCABB0];
  [(TAScanRequestSettings *)self->_scanRequestSettings interVisitScanDelay];
  v77 = [v32 numberWithDouble:?];
  v130[48] = v77;
  v129[49] = @"TAScanMaxInterVisitRequests";
  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAScanRequestSettings maxInterVisitScanRequests](self->_scanRequestSettings, "maxInterVisitScanRequests")}];
  v130[49] = v76;
  v129[50] = @"TAFilterSingleVisitThresholdOfSignificantDuration";
  v33 = MEMORY[0x277CCABB0];
  [(TAFilterSingleVisitSettings *)self->_filterSingleVisitSettings thresholdOfSignificantDuration];
  v75 = [v33 numberWithDouble:?];
  v130[50] = v75;
  v129[51] = @"TAFilterSingleVisitThresholdOfSignificantDistance";
  v34 = MEMORY[0x277CCABB0];
  [(TAFilterSingleVisitSettings *)self->_filterSingleVisitSettings thresholdOfSignificantDistance];
  v73 = [v34 numberWithDouble:?];
  v130[51] = v73;
  v129[52] = @"TAFilterSingleVisitEnabledLoiTypes";
  enabledLoiTypesToString = [(TAFilterSingleVisitSettings *)self->_filterSingleVisitSettings enabledLoiTypesToString];
  v130[52] = enabledLoiTypesToString;
  v129[53] = @"TAFilterArrivingWorkImmediacyType";
  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterSingleVisitSettings arrivingWorkImmediacyType](self->_filterSingleVisitSettings, "arrivingWorkImmediacyType")}];
  v130[53] = v72;
  v129[54] = @"TAFilterLeavingLOIThresholdOfSignificantDuration";
  v35 = MEMORY[0x277CCABB0];
  [(TAFilterLeavingLOISettings *)self->_filterLeavingLOISettings thresholdOfSignificantDuration];
  v71 = [v35 numberWithDouble:?];
  v130[54] = v71;
  v129[55] = @"TAFilterLeavingLOIThresholdOfSignificantDistance";
  v36 = MEMORY[0x277CCABB0];
  [(TAFilterLeavingLOISettings *)self->_filterLeavingLOISettings thresholdOfSignificantDistance];
  v69 = [v36 numberWithDouble:?];
  v130[55] = v69;
  v129[56] = @"TAFilterLeavingLOIEnabledLoiTypes";
  enabledLoiTypesToString2 = [(TAFilterLeavingLOISettings *)self->_filterLeavingLOISettings enabledLoiTypesToString];
  v130[56] = enabledLoiTypesToString2;
  v129[57] = @"TAFilterLeavingHomeImmediacyType";
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterLeavingLOISettings leavingHomeImmediacyType](self->_filterLeavingLOISettings, "leavingHomeImmediacyType")}];
  v130[57] = v68;
  v129[58] = @"TAFilterLeavingWorkImmediacyType";
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterLeavingLOISettings leavingWorkImmediacyType](self->_filterLeavingLOISettings, "leavingWorkImmediacyType")}];
  v130[58] = v67;
  v129[59] = @"TAFilterGeneralAllowNavGeoAsPrivateVehicleHint";
  v66 = [MEMORY[0x277CCABB0] numberWithBool:{-[TAFilterGeneralSettings allowNavGeoHintAsPrivateVehicleHint](self->_filterGeneralSettings, "allowNavGeoHintAsPrivateVehicleHint")}];
  v130[59] = v66;
  v129[60] = @"TAFilterGeneralVehicularImmediacyType";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings vehicularImmediacyType](self->_filterGeneralSettings, "vehicularImmediacyType")}];
  v130[60] = v65;
  v129[61] = @"TAFilterGeneralBeepOnMoveVehicularImmediacyType";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings beepOnMoveVehicularImmediacyType](self->_filterGeneralSettings, "beepOnMoveVehicularImmediacyType")}];
  v130[61] = v64;
  v129[62] = @"TAFilterGeneralBeepOnMovePedestrianImmediacyType";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings beepOnMovePedestrianImmediacyType](self->_filterGeneralSettings, "beepOnMovePedestrianImmediacyType")}];
  v130[62] = v63;
  v129[63] = @"TAFilterGeneralNextPLOIVehicularImmediacyType";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings nextPLOIVehicularImmediacyType](self->_filterGeneralSettings, "nextPLOIVehicularImmediacyType")}];
  v130[63] = v62;
  v129[64] = @"TAFilterGeneralNextPLOIPedestrianImmediacyType";
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings nextPLOIPedestrianImmediacyType](self->_filterGeneralSettings, "nextPLOIPedestrianImmediacyType")}];
  v130[64] = v61;
  v129[65] = @"TAServiceEnableTAFilterGeneral";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterGeneral](self->_serviceSettings, "enableTAFilterGeneral")}];
  v130[65] = v60;
  v129[66] = @"TAServiceEnableTAFilterVisits";
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterVisits](self->_serviceSettings, "enableTAFilterVisits")}];
  v130[66] = v59;
  v129[67] = @"TAServiceEnableTAFilterSingleVisit";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterSingleVisit](self->_serviceSettings, "enableTAFilterSingleVisit")}];
  v130[67] = v58;
  v129[68] = @"TAServiceEnableTAFilterLeavingLOI";
  v57 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterLeavingLOI](self->_serviceSettings, "enableTAFilterLeavingLOI")}];
  v130[68] = v57;
  v129[69] = @"TAServiceClassificationTimeInterval";
  v37 = MEMORY[0x277CCABB0];
  [(TATrackingAvoidanceServiceSettings *)self->_serviceSettings classificationTimeInterval];
  v56 = [v37 numberWithDouble:?];
  v130[69] = v56;
  v129[70] = @"TAFilterVisitsEnabledLoiTypes";
  sensitiveLOITypesToString = [(TAFilterVisitsSettings *)self->_filterVisitsSettings sensitiveLOITypesToString];
  v130[70] = sensitiveLOITypesToString;
  v129[71] = @"TAPersistenceInterval";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_persistenceInterval];
  v130[71] = v38;
  v129[72] = @"TAFutureEventToleranceInterval";
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_futureEventToleranceInterval];
  v130[72] = v39;
  v129[73] = @"TAPersistenceDirectory";
  persistenceDirectoryURL = [(TAPersistenceManagerSettings *)self->_persistenceManagerSettings persistenceDirectoryURL];
  v41 = [persistenceDirectoryURL description];
  v130[73] = v41;
  v129[74] = @"TAPersistenceStoreFileName";
  persistenceStoreFileName = [(TAPersistenceManagerSettings *)self->_persistenceManagerSettings persistenceStoreFileName];
  v43 = [persistenceStoreFileName description];
  v130[74] = v43;
  v129[75] = @"TAAnalyticsManagerEnableSubmission";
  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[TAAnalyticsManagerSettings enableSubmission](self->_analyticsManagerSettings, "enableSubmission")}];
  v130[75] = v44;
  v129[76] = @"TASettingsVersion";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_settingsVersion];
  v130[76] = v45;
  v129[77] = @"TAAISFetchEnable";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:self->_aisFetchEnabled];
  v130[77] = v46;
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:78];

  v127 = 0;
  v47 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v125 error:&v127];
  v48 = v127;
  if (v48)
  {
    v49 = TAStatusLog;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      [(TASettings *)v51 description:v48];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v47;
  }

  v53 = string;

  return v53;
}

- (void)description
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_26F2E2000, log, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
}

@end