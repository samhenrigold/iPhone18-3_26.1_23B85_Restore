@interface DRSTaskingDecisionMaker
+ (BOOL)passesPercentAccept:(double)accept;
- (BOOL)_configDoesPassTeamHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry;
- (BOOL)isEqual:(id)equal;
- (BOOL)reportToDecisionServer;
- (DRSTaskingDecisionMaker)initWithTimezone:(id)timezone limitingParameters:(id)parameters dbWorkingDirectoryPath:(id)path cloudKitHelper:(id)helper enforceDate:(BOOL)date enforceBuild:(BOOL)build enforceSampling:(BOOL)sampling enforceTeamHysteresis:(BOOL)self0 enforceGlobalHysteresisAndCap:(BOOL)self1 allowRefereshLimitingParameters:(BOOL)self2 errorOut:(id *)self3;
- (id)_configsPassingOverallHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry;
- (id)_configsPassingPerTeamHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry;
- (id)_configsPassingSampling:(id)sampling logTelemetry:(BOOL)telemetry;
- (id)_hysteresisPredicate:(id)predicate config:(id)config;
- (id)_teamTaskingsPassingBuild:(id)build logTelemetry:(BOOL)telemetry allowWildcardBuild:(BOOL)wildcardBuild;
- (id)_teamTaskingsPassingDate:(id)date logTelemetry:(BOOL)telemetry;
- (id)acceptedCancels:(id)cancels;
- (id)acceptedConfigs:(id)configs logTelemetry:(BOOL)telemetry allowWildcardBuild:(BOOL)build;
- (void)_logConfigReceipt:(id)receipt;
- (void)_persistReceivedMetadata:(id)metadata;
- (void)_rejectTaskingMessageDueToDisabledState:(id)state logTelemetry:(BOOL)telemetry;
- (void)clientCompletedConfigUUID:(id)d;
- (void)clientRejectsConfigUUID:(id)d;
- (void)refreshLimitingParameters;
@end

@implementation DRSTaskingDecisionMaker

+ (BOOL)passesPercentAccept:(double)accept
{
  if (accept >= 100.0)
  {
    return 1;
  }

  if (accept <= 0.0)
  {
    return 0;
  }

  return accept * 10000.0 >= arc4random_uniform(0xF4240u);
}

- (DRSTaskingDecisionMaker)initWithTimezone:(id)timezone limitingParameters:(id)parameters dbWorkingDirectoryPath:(id)path cloudKitHelper:(id)helper enforceDate:(BOOL)date enforceBuild:(BOOL)build enforceSampling:(BOOL)sampling enforceTeamHysteresis:(BOOL)self0 enforceGlobalHysteresisAndCap:(BOOL)self1 allowRefereshLimitingParameters:(BOOL)self2 errorOut:(id *)self3
{
  v41 = *MEMORY[0x277D85DE8];
  timezoneCopy = timezone;
  parametersCopy = parameters;
  pathCopy = path;
  helperCopy = helper;
  if (!parametersCopy)
  {
    parametersCopy = +[DRSTaskingLimitingParameters defaultDeviceParameters];
  }

  v21 = timezoneCopy;
  localTimeZone = v21;
  if (v21)
  {
    if (pathCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  if (!pathCopy)
  {
    goto LABEL_8;
  }

LABEL_5:
  v36 = 0;
  v23 = [[DRSConfigPersistedStore alloc] initWithWorkingDirectory:pathCopy isReadOnly:0 cloudKitHelper:helperCopy errorOut:&v36];
  v24 = v36;
  v25 = v24;
  if (v23)
  {

    v25 = v23;
LABEL_9:
    v35.receiver = self;
    v35.super_class = DRSTaskingDecisionMaker;
    v26 = [(DRSTaskingDecisionMaker *)&v35 init];
    v27 = v26;
    if (v26)
    {
      objc_storeStrong(&v26->_deviceTimezone, localTimeZone);
      objc_storeStrong(&v27->_limitingParameters, parametersCopy);
      objc_storeStrong(&v27->_dbWorkingDirectoryPath, path);
      v27->_enforceDate = date;
      v27->_enforceBuild = build;
      v27->_enforceSampling = sampling;
      v27->_enforceTeamHysteresis = hysteresis;
      v27->_enforceGlobalHysteresisAndCap = cap;
      objc_storeStrong(&v27->_configStore, v25);
      configStore = [(DRSTaskingDecisionMaker *)v27 configStore];

      if (!configStore)
      {
        *&v27->_enforceTeamHysteresis = 0;
      }

      v27->_allowRefreshLimitingParameters = limitingParameters;
      objc_storeStrong(&v27->_cloudKitHelper, helper);
    }

    self = v27;
    selfCopy = self;
    goto LABEL_14;
  }

  v31 = DPLogHandle_TaskingDecisionMakerError(v24);
  if (os_signpost_enabled(v31))
  {
    *buf = 138543618;
    v38 = pathCopy;
    v39 = 2114;
    v40 = v25;
    _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingDecisionMakerInitFailure", "Failed to init with working directory: %{public}@ (Error: %{public}@)", buf, 0x16u);
  }

  if (out)
  {
    v32 = v25;
    selfCopy = 0;
    *out = v25;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_14:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v24 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    enforceDate = [(DRSTaskingDecisionMaker *)self enforceDate];
    if (enforceDate == -[DRSTaskingDecisionMaker enforceDate](v6, "enforceDate") && (v8 = -[DRSTaskingDecisionMaker enforceSampling](self, "enforceSampling"), v8 == -[DRSTaskingDecisionMaker enforceSampling](v6, "enforceSampling")) && (v9 = -[DRSTaskingDecisionMaker enforceTeamHysteresis](self, "enforceTeamHysteresis"), v9 == -[DRSTaskingDecisionMaker enforceTeamHysteresis](v6, "enforceTeamHysteresis")) && (v10 = -[DRSTaskingDecisionMaker enforceGlobalHysteresisAndCap](self, "enforceGlobalHysteresisAndCap"), v10 == -[DRSTaskingDecisionMaker enforceGlobalHysteresisAndCap](v6, "enforceGlobalHysteresisAndCap")) && (-[DRSTaskingDecisionMaker dbWorkingDirectoryPath](self, "dbWorkingDirectoryPath"), v11 = objc_claimAutoreleasedReturnValue(), -[DRSTaskingDecisionMaker dbWorkingDirectoryPath](v6, "dbWorkingDirectoryPath"), v12 = objc_claimAutoreleasedReturnValue(), IsNil = _oneIsNil(v11, v12), v12, v11, (IsNil & 1) == 0) && ((-[DRSTaskingDecisionMaker dbWorkingDirectoryPath](self, "dbWorkingDirectoryPath"), (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (v15 = v14, -[DRSTaskingDecisionMaker dbWorkingDirectoryPath](self, "dbWorkingDirectoryPath"), v16 = objc_claimAutoreleasedReturnValue(), -[DRSTaskingDecisionMaker dbWorkingDirectoryPath](v6, "dbWorkingDirectoryPath"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 isEqualToString:v17], v17, v16, v15, v18)) && (-[DRSTaskingDecisionMaker limitingParameters](v6, "limitingParameters"), v19 = objc_claimAutoreleasedReturnValue(), -[DRSTaskingDecisionMaker limitingParameters](self, "limitingParameters"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqual:", v20), v20, v19, v21))
    {
      deviceTimezone = [(DRSTaskingDecisionMaker *)self deviceTimezone];
      deviceTimezone2 = [(DRSTaskingDecisionMaker *)v6 deviceTimezone];
      v24 = [deviceTimezone isEqualToTimeZone:deviceTimezone2];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_persistReceivedMetadata:(id)metadata
{
  v17 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];

  if (configStore)
  {
    configStore2 = [(DRSTaskingDecisionMaker *)self configStore];
    v12 = 0;
    v7 = [configStore2 addConfigMetdata:metadataCopy errorOut:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v10 = DPLogHandle_TaskingDecisionMakerError(v9);
      if (os_signpost_enabled(v10))
      {
        configUUID = [metadataCopy configUUID];
        *buf = 138543618;
        v14 = configUUID;
        v15 = 2114;
        v16 = v8;
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetadataPersistanceFailure", "Failed to persist %{public}@ due to error %{public}@", buf, 0x16u);
      }
    }

    [(DRSTaskingDecisionMaker *)self _logConfigReceipt:metadataCopy];
  }
}

- (void)_logConfigReceipt:(id)receipt
{
  v18[3] = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  if ([receiptCopy logTelemetry])
  {
    if ([receiptCopy state])
    {
      if ([receiptCopy state] == 2)
      {
        v4 = @"Applied";
      }

      else if ([receiptCopy state] == 1)
      {
        v4 = @"WaitingToApply";
      }

      else
      {
        v4 = @"Unknown";
        if ([receiptCopy state] == 3)
        {
          completionDescription = [receiptCopy completionDescription];
          if (completionDescription)
          {
            v4 = completionDescription;
          }
        }
      }
    }

    else
    {
      v4 = @"Unknown";
    }

    v17[0] = kUUIDKey;
    configUUID = [receiptCopy configUUID];
    uUIDString = [configUUID UUIDString];
    v18[0] = uUIDString;
    v17[1] = kTeamIDKey;
    teamID = [receiptCopy teamID];
    v17[2] = kConfigReceivedEventKey_ReceiptResult;
    v18[1] = teamID;
    v18[2] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    DRSCoreAnalyticsSendEvent(kConfigReceivedEventName, v9);
    if ([receiptCopy reportToDecisionServer])
    {
      v10 = +[DRSTaskingCloudKitHelper prodContainerHelper];
      teamID2 = [receiptCopy teamID];
      configUUID2 = [receiptCopy configUUID];
      uUIDString2 = [configUUID2 UUIDString];
      v14 = os_transaction_create();
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45__DRSTaskingDecisionMaker__logConfigReceipt___block_invoke;
      v15[3] = &unk_27899F820;
      v16 = receiptCopy;
      [v10 reportTaskingConfigReceipt:teamID2 uuidString:uUIDString2 receiptResult:v4 transaction:v14 completionHandler:v15];
    }
  }
}

void __45__DRSTaskingDecisionMaker__logConfigReceipt___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DPLogHandle_ConfigPersistedStoreError(v3);
  if (os_signpost_enabled(v4))
  {
    v5 = [*(a1 + 32) configUUID];
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DecisionMakerConfigReceiptTelemetryError", "Telemetry reporting for %{public}@ failed %{public}@", &v6, 0x16u);
  }
}

- (BOOL)reportToDecisionServer
{
  v2 = +[DRSSystemProfile sharedInstance];
  isInternal = [v2 isInternal];

  return isInternal;
}

- (id)_teamTaskingsPassingDate:(id)date logTelemetry:(BOOL)telemetry
{
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  teamTaskings = [dateCopy teamTaskings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__DRSTaskingDecisionMaker__teamTaskingsPassingDate_logTelemetry___block_invoke;
  v15[3] = &unk_27899F848;
  v15[4] = self;
  v16 = date;
  v17 = dateCopy;
  telemetryCopy = telemetry;
  v10 = array;
  v18 = v10;
  v11 = dateCopy;
  v12 = date;
  [teamTaskings enumerateKeysAndObjectsUsingBlock:v15];

  if ([v10 count])
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __65__DRSTaskingDecisionMaker__teamTaskingsPassingDate_logTelemetry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![*(a1 + 32) enforceDate] || (v7 = *(a1 + 40), objc_msgSend(v6, "config"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "endDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "compare:", v9), v9, v8, v10 == -1))
  {
    [*(a1 + 56) addObject:v6];
  }

  else
  {
    v12 = DPLogHandle_TaskingDecisionMakerError(v11);
    if (os_signpost_enabled(v12))
    {
      v13 = [*(a1 + 48) messageUUID];
      v14 = [v13 UUIDString];
      v15 = [v6 config];
      v16 = [v15 endDate];
      v17 = [v16 description];
      v18 = [*(a1 + 40) description];
      *buf = 138544130;
      v28 = v5;
      v29 = 2114;
      v30 = v14;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectedConfig", "Rejecting TeamTasking team ID %{public}@ from TaskingMessage ID %{public}@ due to already being expired (%{public}@ (endDate) <= %{public}@ (current date))", buf, 0x2Au);
    }

    v19 = [DRSConfigMetadata alloc];
    v20 = [v6 config];
    v21 = [v20 configUUID];
    v22 = [*(a1 + 32) currentReceivedDate];
    v23 = *(a1 + 64);
    v24 = *(a1 + 40);
    BYTE1(v26) = [*(a1 + 32) reportToDecisionServer];
    LOBYTE(v26) = v23;
    v25 = [(DRSConfigMetadata *)v19 initWithTeamID:v5 configUUID:v21 state:3 completionType:1 receivedDate:v22 appliedDate:v24 completedDate:v24 completionDescription:@"Received after end date" config:0 logTelemetry:v26 reportToDecisionServer:?];

    [*(a1 + 32) _persistReceivedMetadata:v25];
  }
}

- (id)_teamTaskingsPassingBuild:(id)build logTelemetry:(BOOL)telemetry allowWildcardBuild:(BOOL)wildcardBuild
{
  wildcardBuildCopy = wildcardBuild;
  v67 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = buildCopy;
  v52 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v52)
  {
    v51 = *v55;
    v48 = v8;
    v47 = wildcardBuildCopy;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        if (![(DRSTaskingDecisionMaker *)self enforceBuild])
        {
          goto LABEL_11;
        }

        if (wildcardBuildCopy)
        {
          config = [v10 config];
          build = [config build];
          v13 = [build isEqualToString:kDRConfigWildcardBuild];

          if (v13)
          {
            v14 = +[DRSSystemProfile sharedInstance];
            build2 = [v14 build];
            config2 = [v10 config];
            [config2 setBuild:build2];
          }
        }

        v17 = +[DRSSystemProfile sharedInstance];
        build3 = [v17 build];
        config3 = [v10 config];
        build4 = [config3 build];
        v21 = [build3 isEqualToString:build4];

        if ((v21 & 1) == 0)
        {
          v23 = DPLogHandle_TaskingDecisionMakerError(v22);
          if (os_signpost_enabled(v23))
          {
            config4 = [v10 config];
            configUUID = [config4 configUUID];
            teamID = [v10 teamID];
            config5 = [v10 config];
            build5 = [config5 build];
            v28 = +[DRSSystemProfile sharedInstance];
            [v28 build];
            v30 = v29 = array;
            *buf = 138544130;
            v59 = configUUID;
            v60 = 2114;
            v61 = teamID;
            v62 = 2114;
            v63 = build5;
            v64 = 2114;
            v65 = v30;
            _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectedConfig", "Rejecting config %{public}@ for Team ID %{public}@ due to mismatching build: %{public}@ vs. %{public}@ (expected)", buf, 0x2Au);

            array = v29;
          }

          v31 = MEMORY[0x277CCACA8];
          config6 = [v10 config];
          build6 = [config6 build];
          v34 = +[DRSSystemProfile sharedInstance];
          build7 = [v34 build];
          v36 = [v31 stringWithFormat:@"Config build did not match device: %@ vs. %@ (expected)", build6, build7];

          v37 = [DRSConfigMetadata alloc];
          teamID2 = [v10 teamID];
          config7 = [v10 config];
          configUUID2 = [config7 configUUID];
          currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v45) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
          LOBYTE(v45) = telemetry;
          v42 = [DRSConfigMetadata initWithTeamID:v37 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID2 completionType:configUUID2 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate completionDescription:date config:v36 logTelemetry:0 reportToDecisionServer:v45];

          [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v42];
          v8 = v48;
          wildcardBuildCopy = v47;
        }

        else
        {
LABEL_11:
          [array addObject:v10];
        }
      }

      v52 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v52);
  }

  if ([array count])
  {
    v43 = array;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (id)_configsPassingSampling:(id)sampling logTelemetry:(BOOL)telemetry
{
  v84 = *MEMORY[0x277D85DE8];
  samplingCopy = sampling;
  v6 = samplingCopy;
  if (samplingCopy && [samplingCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    date = [MEMORY[0x277CBEAA8] date];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v60 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    v10 = *v70;
    v62 = array;
    v66 = *v70;
    selfCopy = self;
    while (1)
    {
      v11 = 0;
      v63 = v9;
      do
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v69 + 1) + 8 * v11);
        if (![(DRSTaskingDecisionMaker *)self enforceSampling])
        {
          goto LABEL_16;
        }

        v13 = +[DRSSystemProfile sharedInstance];
        deviceModel = [v13 deviceModel];
        deviceTimezone = [(DRSTaskingDecisionMaker *)self deviceTimezone];
        abbreviation = [deviceTimezone abbreviation];
        config3 = [v12 samplingParametersForHWModel:deviceModel timezoneAbbreviation:abbreviation];

        v19 = DPLogHandle_TaskingDecisionMaker(v18);
        if (os_signpost_enabled(v19))
        {
          config = [v12 config];
          configUUID = [config configUUID];
          jsonDictRepresentationAbbreviated = [v12 jsonDictRepresentationAbbreviated];
          *buf = 138543618;
          v74 = configUUID;
          v75 = 2114;
          v76 = jsonDictRepresentationAbbreviated;
          _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamSamplingEvaluation", "Evaluating sampling for: %{public}@:\n%{public}@", buf, 0x16u);
        }

        v24 = DPLogHandle_TaskingDecisionMaker(v23);
        v25 = os_signpost_enabled(v24);
        if (config3)
        {
          if (v25)
          {
            config2 = [v12 config];
            configUUID2 = [config2 configUUID];
            teamID = [v12 teamID];
            [config3 samplingPercentage];
            v29 = v28;
            v30 = +[DRSSystemProfile sharedInstance];
            deviceModel2 = [v30 deviceModel];
            deviceTimezone2 = [(DRSTaskingDecisionMaker *)self deviceTimezone];
            abbreviation2 = [deviceTimezone2 abbreviation];
            *buf = 138544386;
            v74 = configUUID2;
            v75 = 2114;
            v76 = teamID;
            v77 = 2050;
            v78 = v29;
            v79 = 2114;
            v80 = deviceModel2;
            v81 = 2114;
            v82 = abbreviation2;
            _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamConfigSampling", "%{public}@ for team %{public}@: Got sampling percentage of %{public}.2f for HW model %{public}@, TZ: %{public}@", buf, 0x34u);

            array = v62;
            self = selfCopy;

            v9 = v63;
          }

          [config3 samplingPercentage];
          v34 = [DRSTaskingDecisionMaker passesPercentAccept:?];
          if (v34)
          {

            v10 = v66;
LABEL_16:
            config3 = [v12 config];
            [array addObject:config3];
            goto LABEL_24;
          }

          v44 = DPLogHandle_TaskingDecisionMaker(v34);
          if (os_signpost_enabled(v44))
          {
            config4 = [v12 config];
            configUUID3 = [config4 configUUID];
            teamID2 = [v12 teamID];
            [config3 samplingPercentage];
            *buf = 138543874;
            v74 = configUUID3;
            v75 = 2114;
            v76 = teamID2;
            v77 = 2048;
            v78 = v48;
            _os_signpost_emit_with_name_impl(&dword_232906000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ for team ID %{public}@ due to failed roll (%f%% chance of success)", buf, 0x20u);
          }

          v49 = MEMORY[0x277CCACA8];
          [config3 samplingPercentage];
          v43 = [v49 stringWithFormat:@"Failed roll (%f%% chance of success)", v50];
          v51 = [DRSConfigMetadata alloc];
          teamID3 = [v12 teamID];
          config5 = [v12 config];
          configUUID4 = [config5 configUUID];
          currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v59) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
          LOBYTE(v59) = telemetry;
          v56 = [DRSConfigMetadata initWithTeamID:v51 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID3 completionType:configUUID4 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate completionDescription:date config:v43 logTelemetry:0 reportToDecisionServer:v59];

          [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v56];
          array = v62;
          v9 = v63;
        }

        else
        {
          if (v25)
          {
            config6 = [v12 config];
            configUUID5 = [config6 configUUID];
            teamID4 = [v12 teamID];
            *buf = 138543618;
            v74 = configUUID5;
            v75 = 2114;
            v76 = teamID4;
            _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ for team %{public}@ to missing sampling parameters", buf, 0x16u);
          }

          v38 = [DRSConfigMetadata alloc];
          teamID5 = [v12 teamID];
          config7 = [v12 config];
          configUUID6 = [config7 configUUID];
          currentReceivedDate2 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v59) = [(DRSTaskingDecisionMaker *)selfCopy reportToDecisionServer];
          LOBYTE(v59) = telemetry;
          v43 = [DRSConfigMetadata initWithTeamID:v38 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID5 completionType:configUUID6 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate2 completionDescription:date config:@"No applicable sampling parameters" logTelemetry:0 reportToDecisionServer:v59];

          self = selfCopy;
          [(DRSTaskingDecisionMaker *)selfCopy _persistReceivedMetadata:v43];
        }

        v10 = v66;
LABEL_24:

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
      if (!v9)
      {
LABEL_26:

        if ([array count])
        {
          v57 = array;
        }

        else
        {
          v57 = 0;
        }

        v6 = v60;
        goto LABEL_31;
      }
    }
  }

  v57 = 0;
LABEL_31:

  return v57;
}

- (id)_hysteresisPredicate:(id)predicate config:(id)config
{
  predicateCopy = predicate;
  if (([config skippedHysteresis] & 1) != 0 || !-[DRSTaskingDecisionMaker enforceTeamHysteresis](self, "enforceTeamHysteresis"))
  {
    4097 = [MEMORY[0x277CCAC30] predicateWithFormat:@"completionType == %llu", 4097];
  }

  else
  {
    4097 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:predicateCopy];
  }

  v8 = 4097;

  return v8;
}

- (BOOL)_configDoesPassTeamHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry
{
  v52[2] = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = MEMORY[0x277CCAC30];
  teamID = [hysteresisCopy teamID];
  v9 = [v7 predicateWithFormat:@"teamID == %@", teamID];

  v10 = MEMORY[0x277CBEAA8];
  limitingParameters = [(DRSTaskingDecisionMaker *)self limitingParameters];
  [limitingParameters perTeamTaskingHysteresisInterval];
  v13 = -v12;
  date2 = [MEMORY[0x277CBEAA8] date];
  v15 = [v10 dateWithTimeInterval:date2 sinceDate:v13];

  v16 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v15 config:hysteresisCopy];
  v17 = MEMORY[0x277CCA920];
  v52[0] = v9;
  v52[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  configStore = [(DRSTaskingDecisionMaker *)self configStore];
  v47 = 0;
  v21 = [configStore metadataCountForPredicate:v19 fetchLimit:1 withErrorOut:&v47];
  v22 = v47;

  if (v22)
  {
    v43 = v16;
    v44 = v15;
    v45 = v9;
    v24 = DPLogHandle_TaskingDecisionMakerError(v23);
    if (os_signpost_enabled(v24))
    {
      configUUID = [hysteresisCopy configUUID];
      *buf = 138543618;
      v49 = configUUID;
      v50 = 2114;
      v51 = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PerTeamHysteresisError", "Rejecting config %{public}@ due to team hysteresis error %{public}@", buf, 0x16u);
    }

    v26 = MEMORY[0x277CCACA8];
    localizedDescription = [v22 localizedDescription];
    v28 = [v26 stringWithFormat:@"Per-team hysteresis error %@", localizedDescription];

    v29 = [DRSConfigMetadata alloc];
    teamID2 = [hysteresisCopy teamID];
    configUUID2 = [hysteresisCopy configUUID];
    currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
    BYTE1(v42) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
    LOBYTE(v42) = telemetry;
    v33 = [(DRSConfigMetadata *)v29 initWithTeamID:teamID2 configUUID:configUUID2 state:3 completionType:1 receivedDate:currentReceivedDate appliedDate:date completedDate:date completionDescription:v28 config:0 logTelemetry:v42 reportToDecisionServer:?];

    [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v33];
  }

  else
  {
    if (!v21)
    {
      v40 = 1;
      goto LABEL_10;
    }

    v43 = v16;
    v44 = v15;
    v45 = v9;
    v34 = DPLogHandle_TaskingDecisionMaker(v23);
    if (os_signpost_enabled(v34))
    {
      configUUID3 = [hysteresisCopy configUUID];
      *buf = 138543618;
      v49 = configUUID3;
      v50 = 2048;
      v51 = v21;
      _os_signpost_emit_with_name_impl(&dword_232906000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ due to team hysteresis (matching count of %lu)", buf, 0x16u);
    }

    v36 = [DRSConfigMetadata alloc];
    teamID3 = [hysteresisCopy teamID];
    configUUID4 = [hysteresisCopy configUUID];
    currentReceivedDate2 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
    BYTE1(v42) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
    LOBYTE(v42) = telemetry;
    v28 = [(DRSConfigMetadata *)v36 initWithTeamID:teamID3 configUUID:configUUID4 state:3 completionType:1 receivedDate:currentReceivedDate2 appliedDate:date completedDate:date completionDescription:@"Rejected by per-team hysteresis" config:0 logTelemetry:v42 reportToDecisionServer:?];

    [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v28];
  }

  v40 = 0;
  v15 = v44;
  v9 = v45;
  v16 = v43;
LABEL_10:

  return v40;
}

- (id)_configsPassingPerTeamHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  v20 = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = hysteresisCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([(DRSTaskingDecisionMaker *)self _configDoesPassTeamHysteresis:v13 logTelemetry:telemetryCopy, v15])
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)_configsPassingOverallHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry
{
  v117 = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  if ([(DRSTaskingDecisionMaker *)self enforceGlobalHysteresisAndCap])
  {
    v83 = hysteresisCopy;
    date = [MEMORY[0x277CBEAA8] date];
    v6 = MEMORY[0x277CBEAA8];
    limitingParameters = [(DRSTaskingDecisionMaker *)self limitingParameters];
    [limitingParameters taskingHysteresisInterval];
    v9 = -v8;
    date2 = [MEMORY[0x277CBEAA8] date];
    v11 = [v6 dateWithTimeInterval:date2 sinceDate:v9];

    configStore = [(DRSTaskingDecisionMaker *)self configStore];
    v82 = v11;
    v13 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v11];
    limitingParameters2 = [(DRSTaskingDecisionMaker *)self limitingParameters];
    v108 = 0;
    v15 = [configStore metadataCountForPredicate:v13 fetchLimit:objc_msgSend(limitingParameters2 withErrorOut:{"acceptedConfigCountCap"), &v108}];
    v16 = v108;

    v89 = v16;
    if (v16)
    {
      v18 = DPLogHandle_TaskingDecisionMakerError(v17);
      if (os_signpost_enabled(v18))
      {
        *buf = 138543362;
        v110 = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisError", "Rejecting all configs due to overall hysteresis error %{public}@", buf, 0xCu);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = v83;
      v19 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v105;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v105 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v104 + 1) + 8 * i);
            v24 = MEMORY[0x277CCACA8];
            localizedDescription = [v89 localizedDescription];
            v26 = [v24 stringWithFormat:@"Overall hysteresis error %@", localizedDescription];

            v27 = [DRSConfigMetadata alloc];
            teamID = [v23 teamID];
            configUUID = [v23 configUUID];
            currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
            BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
            LOBYTE(v81) = telemetry;
            v31 = [DRSConfigMetadata initWithTeamID:v27 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID completionType:configUUID receivedDate:3 appliedDate:1 completedDate:currentReceivedDate completionDescription:date config:v26 logTelemetry:0 reportToDecisionServer:v81];

            [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v31];
          }

          v20 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
        }

        while (v20);
      }

      v32 = 0;
      v33 = v82;
      hysteresisCopy = v83;
    }

    else
    {
      limitingParameters3 = [(DRSTaskingDecisionMaker *)self limitingParameters];
      acceptedConfigCountCap = [limitingParameters3 acceptedConfigCountCap];

      if (v15 >= acceptedConfigCountCap)
      {
        array = [MEMORY[0x277CBEB18] array];
        v66 = DPLogHandle_TaskingDecisionMaker(array);
        if (os_signpost_enabled(v66))
        {
          limitingParameters4 = [(DRSTaskingDecisionMaker *)self limitingParameters];
          acceptedConfigCountCap2 = [limitingParameters4 acceptedConfigCountCap];
          *buf = 134217984;
          v110 = acceptedConfigCountCap2;
          _os_signpost_emit_with_name_impl(&dword_232906000, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisRejection", "Rejecting all configs due to being at or over the accepted config count cap %lu", buf, 0xCu);
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v69 = v83;
        v70 = [v69 countByEnumeratingWithState:&v100 objects:v115 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v101;
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v101 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v74 = *(*(&v100 + 1) + 8 * j);
              if ([v74 skippedHysteresis])
              {
                [array addObject:v74];
              }

              else
              {
                v75 = [DRSConfigMetadata alloc];
                teamID2 = [v74 teamID];
                configUUID2 = [v74 configUUID];
                currentReceivedDate2 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
                LOBYTE(v81) = telemetry;
                v79 = [DRSConfigMetadata initWithTeamID:v75 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID2 completionType:configUUID2 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate2 completionDescription:date config:@"No open overall slots" logTelemetry:0 reportToDecisionServer:v81];

                [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v79];
              }
            }

            v71 = [v69 countByEnumeratingWithState:&v100 objects:v115 count:16];
          }

          while (v71);
        }

        if ([array count])
        {
          v32 = array;
        }

        else
        {
          v32 = 0;
        }

        v33 = v82;
        hysteresisCopy = v83;
      }

      else
      {
        limitingParameters5 = [(DRSTaskingDecisionMaker *)self limitingParameters];
        acceptedConfigCountCap3 = [limitingParameters5 acceptedConfigCountCap];

        hysteresisCopy = v83;
        v86 = acceptedConfigCountCap3 - v15;
        if (acceptedConfigCountCap3 - v15 >= [v83 count])
        {
          v32 = v83;
          v33 = v82;
        }

        else
        {
          v38 = [v83 mutableCopy];
          array2 = [MEMORY[0x277CBEB18] array];
          if (acceptedConfigCountCap3 != v15)
          {
            v40 = acceptedConfigCountCap3 - v15;
            do
            {
              v41 = arc4random_uniform([v38 count]);
              v42 = [v38 objectAtIndexedSubscript:v41];
              [array2 addObject:v42];
              [v38 removeObjectAtIndex:v41];

              --v40;
            }

            while (v40);
          }

          v85 = array2;
          array3 = [MEMORY[0x277CBEB18] array];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v44 = v38;
          v45 = [v44 countByEnumeratingWithState:&v96 objects:v114 count:16];
          v84 = array3;
          if (v45)
          {
            v46 = v45;
            v47 = *v97;
            do
            {
              for (k = 0; k != v46; ++k)
              {
                if (*v97 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v96 + 1) + 8 * k);
                if ([v49 skippedHysteresis])
                {
                  [array3 addObject:v49];
                  v50 = DPLogHandle_TaskingDecisionMaker([array2 addObject:v49]);
                  if (os_signpost_enabled(v50))
                  {
                    configUUID3 = [v49 configUUID];
                    *buf = 138543362;
                    v110 = configUUID3;
                    _os_signpost_emit_with_name_impl(&dword_232906000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigAcceptedBySkippingHysteresis", "Accepted %{public}@ due to 'skipHysteresis'", buf, 0xCu);
                  }

                  array3 = v84;
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v96 objects:v114 count:16];
            }

            while (v46);
          }

          if ([array3 count])
          {
            [v44 removeObjectsInArray:array3];
          }

          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not selected for one of the %llu open slots", v86];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          obja = v44;
          v53 = [obja countByEnumeratingWithState:&v92 objects:v113 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v93;
            do
            {
              v56 = 0;
              do
              {
                if (*v93 != v55)
                {
                  objc_enumerationMutation(obja);
                }

                v57 = *(*(&v92 + 1) + 8 * v56);
                v58 = DPLogHandle_TaskingDecisionMaker(v53);
                if (os_signpost_enabled(v58))
                {
                  configUUID4 = [v57 configUUID];
                  *buf = 138543618;
                  v110 = configUUID4;
                  v111 = 2048;
                  v112 = v86;
                  _os_signpost_emit_with_name_impl(&dword_232906000, v58, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisRejection", "Rejected %{public}@ due to not being picked for one of the %llu open slots", buf, 0x16u);
                }

                v60 = [DRSConfigMetadata alloc];
                teamID3 = [v57 teamID];
                configUUID5 = [v57 configUUID];
                currentReceivedDate3 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
                LOBYTE(v81) = telemetry;
                v64 = [DRSConfigMetadata initWithTeamID:v60 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID3 completionType:configUUID5 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate3 completionDescription:date config:v52 logTelemetry:0 reportToDecisionServer:v81];

                [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v64];
                ++v56;
              }

              while (v54 != v56);
              v53 = [obja countByEnumeratingWithState:&v92 objects:v113 count:16];
              v54 = v53;
            }

            while (v53);
          }

          v33 = v82;
          hysteresisCopy = v83;
          v32 = v85;
        }
      }
    }
  }

  else
  {
    v32 = hysteresisCopy;
  }

  return v32;
}

- (void)_rejectTaskingMessageDueToDisabledState:(id)state logTelemetry:(BOOL)telemetry
{
  v6 = MEMORY[0x277CBEAA8];
  stateCopy = state;
  date = [v6 date];
  teamTaskings = [stateCopy teamTaskings];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__DRSTaskingDecisionMaker__rejectTaskingMessageDueToDisabledState_logTelemetry___block_invoke;
  v11[3] = &unk_27899F870;
  v11[4] = self;
  v12 = date;
  telemetryCopy = telemetry;
  v10 = date;
  [teamTaskings enumerateKeysAndObjectsUsingBlock:v11];
}

void __80__DRSTaskingDecisionMaker__rejectTaskingMessageDueToDisabledState_logTelemetry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = DPLogHandle_TaskingDecisionMaker(v6);
  if (os_signpost_enabled(v7))
  {
    v8 = [v5 config];
    v9 = [v8 configUUID];
    *buf = 138543362;
    v19 = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectingConfig", "Decision maker is disabled (active config cap is 0). Rejecting config %{public}@", buf, 0xCu);
  }

  v10 = [DRSConfigMetadata alloc];
  v11 = [v5 config];
  v12 = [v11 configUUID];
  v13 = [*(a1 + 32) currentReceivedDate];
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  BYTE1(v17) = [*(a1 + 32) reportToDecisionServer];
  LOBYTE(v17) = v14;
  v16 = [(DRSConfigMetadata *)v10 initWithTeamID:v6 configUUID:v12 state:3 completionType:2 receivedDate:v13 appliedDate:v15 completedDate:v15 completionDescription:@"Tasking is disabled" config:0 logTelemetry:v17 reportToDecisionServer:?];

  [*(a1 + 32) _persistReceivedMetadata:v16];
}

- (void)refreshLimitingParameters
{
  if ([(DRSTaskingDecisionMaker *)self allowRefreshLimitingParameters])
  {
    v3 = +[DRSTaskingLimitingParameters defaultDeviceParameters];
    limitingParameters = self->_limitingParameters;
    self->_limitingParameters = v3;
  }
}

- (id)acceptedConfigs:(id)configs logTelemetry:(BOOL)telemetry allowWildcardBuild:(BOOL)build
{
  buildCopy = build;
  telemetryCopy = telemetry;
  v110 = *MEMORY[0x277D85DE8];
  configsCopy = configs;
  v8 = DPLogHandle_TaskingDecisionMaker([(DRSTaskingDecisionMaker *)self refreshLimitingParameters]);
  selfCopy = self;
  if (os_signpost_enabled(v8))
  {
    messageUUID = [configsCopy messageUUID];
    if ([(DRSTaskingDecisionMaker *)self enforceDate])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v86 = v10;
    if ([(DRSTaskingDecisionMaker *)self enforceSampling])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v84 = v11;
    if ([(DRSTaskingDecisionMaker *)self enforceTeamHysteresis])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if ([(DRSTaskingDecisionMaker *)self enforceGlobalHysteresisAndCap])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    limitingParameters = [(DRSTaskingDecisionMaker *)self limitingParameters];
    acceptedConfigCountCap = [limitingParameters acceptedConfigCountCap];
    limitingParameters2 = [(DRSTaskingDecisionMaker *)selfCopy limitingParameters];
    [limitingParameters2 taskingHysteresisInterval];
    v18 = v17;
    [(DRSTaskingDecisionMaker *)selfCopy limitingParameters];
    v20 = v19 = telemetryCopy;
    [v20 perTeamTaskingHysteresisInterval];
    *buf = 138545154;
    v95 = messageUUID;
    v96 = 2114;
    v97 = v86;
    v98 = 2114;
    v99 = v84;
    v100 = 2114;
    v101 = v12;
    v102 = 2114;
    v103 = v13;
    v104 = 2048;
    v105 = acceptedConfigCountCap;
    self = selfCopy;
    v106 = 2048;
    v107 = v18;
    v108 = 2048;
    v109 = v21;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessingTaskingMessage", "Processing tasking message %{public}@ with:\n\t-enforceDate: %{public}@\n\t-enforceSampling: %{public}@\n\t-enforceTeamHysteresis: %{public}@\n\t-enforceGlobalHysteresisAndCap: %{public}@\n\nLimiting Parameters:\n\t-acceptedCountCap: %lu\n\t-taskingHysteresisInterval: %f\n\t-perTeamTaskingHysteresisInterval: %f", buf, 0x52u);

    telemetryCopy = v19;
  }

  dateReceived = [configsCopy dateReceived];
  [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:dateReceived];

  limitingParameters3 = [(DRSTaskingDecisionMaker *)self limitingParameters];
  acceptedConfigCountCap2 = [limitingParameters3 acceptedConfigCountCap];

  if (acceptedConfigCountCap2)
  {
    v26 = [(DRSTaskingDecisionMaker *)self _teamTaskingsPassingDate:configsCopy logTelemetry:telemetryCopy];
    v27 = v26;
    if (v26 && (v26 = [v26 count]) != 0)
    {
      v28 = [(DRSTaskingDecisionMaker *)self _teamTaskingsPassingBuild:v27 logTelemetry:telemetryCopy allowWildcardBuild:buildCopy];
      if ([v27 count])
      {
        v29 = [(DRSTaskingDecisionMaker *)self _configsPassingSampling:v28 logTelemetry:telemetryCopy];
        v30 = v29;
        if (v29 && (v29 = [v29 count]) != 0)
        {
          v31 = [(DRSTaskingDecisionMaker *)self _configsPassingPerTeamHysteresis:v30 logTelemetry:telemetryCopy];
          v32 = v31;
          if (v31 && (v31 = [v31 count]) != 0)
          {
            v33 = [(DRSTaskingDecisionMaker *)self _configsPassingOverallHysteresis:v32 logTelemetry:telemetryCopy];
            v34 = v33;
            if (v33 && (v33 = [v33 count]) != 0)
            {
              v74 = v32;
              v75 = v30;
              v76 = v28;
              v77 = v27;
              date = [MEMORY[0x277CBEAA8] date];
              array = [MEMORY[0x277CBEB18] array];
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v73 = v34;
              obj = v34;
              v35 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
              v87 = v35;
              if (v35)
              {
                v82 = *v90;
                v83 = telemetryCopy;
                do
                {
                  v36 = 0;
                  do
                  {
                    if (*v90 != v82)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v37 = *(*(&v89 + 1) + 8 * v36);
                    v38 = DPLogHandle_TaskingDecisionMaker(v35);
                    if (os_signpost_enabled(v38))
                    {
                      messageUUID2 = [configsCopy messageUUID];
                      configUUID = [v37 configUUID];
                      *buf = 138543618;
                      v95 = messageUUID2;
                      v96 = 2114;
                      v97 = configUUID;
                      _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedConfig", "TaskingMessage %{public}@: Accepted config %{public}@", buf, 0x16u);
                    }

                    startDate = [v37 startDate];
                    v42 = [startDate compare:date];

                    if (v42 == 1)
                    {
                      v43 = 1;
                    }

                    else
                    {
                      v43 = 2;
                    }

                    if (v42 == 1)
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = date;
                    }

                    v45 = v44;
                    v46 = [DRSConfigMetadata alloc];
                    teamID = [v37 teamID];
                    configUUID2 = [v37 configUUID];
                    [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                    v50 = v49 = self;
                    BYTE1(v72) = [(DRSTaskingDecisionMaker *)v49 reportToDecisionServer];
                    LOBYTE(v72) = telemetryCopy;
                    telemetryCopy = [(DRSConfigMetadata *)v46 initWithTeamID:teamID configUUID:configUUID2 state:v43 completionType:4097 receivedDate:v50 appliedDate:v45 completedDate:0 completionDescription:0 config:v37 logTelemetry:v72 reportToDecisionServer:?];

                    if (telemetryCopy)
                    {
                      [(DRSTaskingDecisionMaker *)v49 _persistReceivedMetadata:telemetryCopy];
                      [array addObject:telemetryCopy];
                      self = v49;
                    }

                    else
                    {
                      v52 = DPLogHandle_TaskingDecisionMakerError(v51);
                      if (os_signpost_enabled(v52))
                      {
                        messageUUID3 = [configsCopy messageUUID];
                        teamID2 = [v37 teamID];
                        configUUID3 = [v37 configUUID];
                        v55 = DRConfigStringForState();
                        v56 = DRConfigCompletionTypeString(4097);
                        currentReceivedDate = [(DRSTaskingDecisionMaker *)selfCopy currentReceivedDate];
                        jsonDictRepresentation = [v37 jsonDictRepresentation];
                        *buf = 138545154;
                        v95 = messageUUID3;
                        v96 = 2114;
                        v97 = teamID2;
                        v98 = 2114;
                        v99 = configUUID3;
                        v100 = 2114;
                        v101 = v55;
                        v102 = 2114;
                        v103 = v56;
                        v104 = 2114;
                        v105 = currentReceivedDate;
                        v106 = 2114;
                        v107 = v45;
                        v108 = 2114;
                        v109 = jsonDictRepresentation;
                        _os_signpost_emit_with_name_impl(&dword_232906000, v52, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidConfigMetadata", "TaskingMessage %{public}@: Invalid config metadata:\n\tTeamID: %{public}@\n\tConfigUUID: %{public}@\n\tState: %{public}@\n\tCompletionType: %{public}@\n\tReceived Date: %{public}@\n\tApplied Date: %{public}@\n\tConfig:%{public}@\n", buf, 0x52u);
                      }

                      self = selfCopy;
                    }

                    ++v36;
                    LOBYTE(telemetryCopy) = v83;
                  }

                  while (v87 != v36);
                  v35 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
                  v87 = v35;
                }

                while (v35);
              }

              [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:0];
              v28 = v76;
              v27 = v77;
              v32 = v74;
              v30 = v75;
              v34 = v73;
            }

            else
            {
              v69 = DPLogHandle_TaskingDecisionMaker(v33);
              if (os_signpost_enabled(v69))
              {
                messageUUID4 = [configsCopy messageUUID];
                *buf = 138543362;
                v95 = messageUUID4;
                _os_signpost_emit_with_name_impl(&dword_232906000, v69, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NoAcceptedConfigs", "No configs from TaskingMessage %{public}@ passed overall hysteresis", buf, 0xCu);
              }

              [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:0];
              array = 0;
            }
          }

          else
          {
            v67 = DPLogHandle_TaskingDecisionMaker(v31);
            if (os_signpost_enabled(v67))
            {
              messageUUID5 = [configsCopy messageUUID];
              *buf = 138543362;
              v95 = messageUUID5;
              _os_signpost_emit_with_name_impl(&dword_232906000, v67, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NoAcceptedConfigs", "No configs from TaskingMessage %{public}@ passed per-team hysteresis", buf, 0xCu);
            }

            [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:0];
            array = 0;
          }
        }

        else
        {
          v63 = DPLogHandle_TaskingDecisionMaker(v29);
          if (os_signpost_enabled(v63))
          {
            messageUUID6 = [configsCopy messageUUID];
            *buf = 138543362;
            v95 = messageUUID6;
            _os_signpost_emit_with_name_impl(&dword_232906000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NoAcceptedConfigs", "No configs from TaskingMessage %{public}@ passed sampling", buf, 0xCu);
          }

          [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:0];
          array = 0;
        }
      }

      else
      {
        v65 = DPLogHandle_TaskingDecisionMaker(0);
        if (os_signpost_enabled(v65))
        {
          messageUUID7 = [configsCopy messageUUID];
          *buf = 138543362;
          v95 = messageUUID7;
          _os_signpost_emit_with_name_impl(&dword_232906000, v65, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NoAcceptedConfigs", "All configs from TaskingMessage %{public}@ rejected by build", buf, 0xCu);
        }

        [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:0];
        array = 0;
      }
    }

    else
    {
      v59 = DPLogHandle_TaskingDecisionMaker(v26);
      if (os_signpost_enabled(v59))
      {
        messageUUID8 = [configsCopy messageUUID];
        *buf = 138543362;
        v95 = messageUUID8;
        _os_signpost_emit_with_name_impl(&dword_232906000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NoAcceptedConfigs", "All configs from TaskingMessage %{public}@ rejected by date", buf, 0xCu);
      }

      [(DRSTaskingDecisionMaker *)self setCurrentReceivedDate:0];
      array = 0;
    }
  }

  else
  {
    v61 = DPLogHandle_TaskingDecisionMaker(v25);
    if (os_signpost_enabled(v61))
    {
      messageUUID9 = [configsCopy messageUUID];
      *buf = 138543362;
      v95 = messageUUID9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectingTaskingMessage", "Decision maker is disabled (active config cap is 0). Rejecting message %{public}@ entirely", buf, 0xCu);
    }

    [(DRSTaskingDecisionMaker *)self _rejectTaskingMessageDueToDisabledState:configsCopy logTelemetry:telemetryCopy];
    array = 0;
  }

  return array;
}

- (id)acceptedCancels:(id)cancels
{
  cancelsCopy = cancels;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];

  if (configStore)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = MEMORY[0x277CCACA8];
    messageUUID = [cancelsCopy messageUUID];
    uUIDString = [messageUUID UUIDString];
    v11 = [v8 stringWithFormat:@"Cancelled by cancel tasking message %@", uUIDString];

    perTeamCancelledConfigUUIDs = [cancelsCopy perTeamCancelledConfigUUIDs];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__DRSTaskingDecisionMaker_acceptedCancels___block_invoke;
    v18[3] = &unk_27899F898;
    v18[4] = self;
    v19 = date;
    v20 = v11;
    v21 = cancelsCopy;
    v13 = dictionary;
    v22 = v13;
    v14 = v11;
    v15 = date;
    [perTeamCancelledConfigUUIDs enumerateKeysAndObjectsUsingBlock:v18];

    if ([v13 count])
    {
      perTeamCancelledConfigUUIDs2 = v13;
    }

    else
    {
      perTeamCancelledConfigUUIDs2 = 0;
    }
  }

  else
  {
    perTeamCancelledConfigUUIDs2 = [cancelsCopy perTeamCancelledConfigUUIDs];
  }

  return perTeamCancelledConfigUUIDs2;
}

void __43__DRSTaskingDecisionMaker_acceptedCancels___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v35 + 1) + 8 * v12);
      v14 = [*(a1 + 32) configStore];
      v34 = 0;
      v15 = [v14 configMetadataForUUID:v13 errorOut:&v34];
      v16 = v34;

      if (v16)
      {
        break;
      }

      v18 = [v15 state];
      if (v18 == 3)
      {
        v19 = DPLogHandle_TaskingDecisionMaker(v18);
        if (os_signpost_enabled(v19))
        {
          *buf = 138543362;
          v40 = v13;
          _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigAlreadyCompleted", "Config %{public}@ already completed", buf, 0xCu);
        }
      }

      else
      {

        v20 = [*(a1 + 32) configStore];
        v21 = *(a1 + 40);
        v22 = *(a1 + 48);
        v33 = 0;
        v23 = [v20 completeConfigWithUUID:v13 completedDate:v21 completionType:8195 completionDescription:v22 errorOut:&v33];
        v15 = v33;

        if ((v23 & 1) == 0)
        {
          *a4 = 1;
          v29 = DPLogHandle_TaskingDecisionMakerError(v24);
          if (os_signpost_enabled(v29))
          {
            v30 = [v15 localizedDescription];
            *buf = 138543618;
            v40 = v13;
            v41 = 2114;
            v42 = v30;
            _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelFailed", "Failed to cancel %{public}@ to error: %{public}@", buf, 0x16u);
          }

          v16 = v15;
LABEL_25:

          goto LABEL_26;
        }

        v25 = DPLogHandle_TaskingDecisionMaker(v24);
        if (os_signpost_enabled(v25))
        {
          v26 = [*(a1 + 56) messageUUID];
          *buf = 138543874;
          v40 = v13;
          v41 = 2114;
          v42 = v32;
          v43 = 2114;
          v44 = v26;
          _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelConfig", "Cancelled %{public}@ (teamID %{public}@) due to cancel message %{public}@", buf, 0x20u);
        }

        [v7 addObject:v13];
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    *a4 = 1;
    v27 = DPLogHandle_TaskingDecisionMakerError(v17);
    if (os_signpost_enabled(v27))
    {
      v28 = [v16 localizedDescription];
      *buf = 138543618;
      v40 = v13;
      v41 = 2114;
      v42 = v28;
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedCancelsFailure", "Lookup of %{public}@ failed due to error: %{public}@", buf, 0x16u);
    }

    v29 = v15;
    goto LABEL_25;
  }

LABEL_17:

  if ([v7 count])
  {
    [*(a1 + 64) setObject:v7 forKeyedSubscript:v32];
  }

LABEL_26:
}

- (void)clientCompletedConfigUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];
  date = [MEMORY[0x277CBEAA8] date];
  v14 = 0;
  v7 = [configStore completeConfigWithUUID:dCopy completedDate:date completionType:8196 completionDescription:@"Completed by client" errorOut:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v10 = DPLogHandle_TaskingDecisionMakerError(v9);
    if (os_signpost_enabled(v10))
    {
      localizedDescription = [v8 localizedDescription];
      v12 = localizedDescription;
      v13 = @"Unknown";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      *buf = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletionFailed", "Failed to complete config UUID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)clientRejectsConfigUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];
  date = [MEMORY[0x277CBEAA8] date];
  v14 = 0;
  v7 = [configStore completeConfigWithUUID:dCopy completedDate:date completionType:1 completionDescription:@"Rejected by client" errorOut:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v10 = DPLogHandle_TaskingDecisionMakerError(v9);
    if (os_signpost_enabled(v10))
    {
      localizedDescription = [v8 localizedDescription];
      v12 = localizedDescription;
      v13 = @"Unknown";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      *buf = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectionFailed", "Failed to reject config UUID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }
}

@end