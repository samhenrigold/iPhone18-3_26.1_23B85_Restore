@interface PLSubmissionConfig
+ (BOOL)internalSubmissionBehavior;
+ (id)getDateMarkerFromSystemDate:(id)date;
+ (void)clearTaskingDefaults;
+ (void)submitTaskingDefaultsCheckStateToCA:(id)a;
- (BOOL)conditionCheckForAppIntents;
- (BOOL)conditionCheckForEnergy;
- (BOOL)conditionCheckForTaskingType:(id)type;
- (BOOL)isValidSubmissionFilesMask;
- (BOOL)isValidTaskingBlob;
- (BOOL)shouldStartTaskingToday;
- (BOOL)shouldSubmitToday;
- (PLSubmissionConfig)initWithPayload:(id)payload;
- (PLSubmissionConfig)initWithReasonType:(signed __int16)type;
- (PLSubmissionConfig)initWithReasonType:(signed __int16)type DRConfig:(id)config;
- (id)contextDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getDateMarker;
- (id)getDateMarkerLegacy;
- (id)getSubmitReasonTypeToCAFieldValue;
- (id)getSubmitReasonTypeToFlushReason;
- (id)getSubmitReasonTypeToReasonLog;
- (id)getSubmitReasonTypeToStorageEventOTAType;
- (id)splitBySubmissionType;
- (id)submissionCategory;
- (id)submissionMaskToString;
- (void)conditionCheckForEnergy;
- (void)emitQueryEvent:(BOOL)event;
- (void)emitSubmitEvent;
- (void)emitTaskingTypeSpecifiedEvent;
- (void)initTagInfoForReasonType:(signed __int16)type withStartDate:(id)date withEndDate:(id)endDate;
- (void)initializeFilesToBeSubmitted;
- (void)isValidTaskingBlob;
- (void)readTaskingDefaults;
- (void)readTaskingPayloadOverride:(id)override;
- (void)shouldSubmitToday;
- (void)submitFileStatsToAnalytics;
@end

@implementation PLSubmissionConfig

- (PLSubmissionConfig)initWithReasonType:(signed __int16)type
{
  typeCopy = type;
  v31.receiver = self;
  v31.super_class = PLSubmissionConfig;
  v4 = [(PLSubmissionConfig *)&v31 init];
  if (!v4)
  {
    goto LABEL_11;
  }

  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  v6 = 0;
  if (typeCopy <= 2)
  {
    if (typeCopy >= 3)
    {
      goto LABEL_10;
    }

LABEL_8:
    [PLDefaults doubleForKey:@"internalOTASubmission" ifNotSet:86400.0];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeInterval:monotonicDate sinceDate:-v7];
    v8 = v4;
    v9 = monotonicDate;
LABEL_9:
    [(PLSubmissionConfig *)v8 setConfigDateApplied:v9];
    goto LABEL_10;
  }

  if (typeCopy == 3)
  {
    monotonicDate2 = [MEMORY[0x1E695DF00] monotonicDate];
    v6 = [PLDefaults objectForKey:@"PLTaskingOnDemandStartDate" ifNotSet:monotonicDate2];

    v8 = v4;
    v9 = v6;
    goto LABEL_9;
  }

  if (typeCopy != 4)
  {
    if (typeCopy != 5)
    {
LABEL_10:
      [(PLSubmissionConfig *)v4 initTagInfoForReasonType:typeCopy withStartDate:v6 withEndDate:monotonicDate];

LABEL_11:
      v10 = v4;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v13 = MEMORY[0x1E695DF00];
  [PLDefaults doubleForKey:@"LastUpgradeTimestamp" ifNotSet:-1.0];
  v14 = [v13 dateWithTimeIntervalSince1970:?];
  v15 = +[PLUtilities getFirstBatteryTimestamp];
  v16 = +[PLUtilities getLastBatteryTimestamp];
  v17 = v16;
  if (v15 && v16)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v15 endDate:v16];
    v19 = PLLogSubmission(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(PLSubmissionConfig *)v18 initWithReasonType:v19];
    }

    v21 = PLLogSubmission(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionConfig initWithReasonType:];
    }

    v22 = [v18 containsDate:v14];
    if (v22)
    {
      v6 = [MEMORY[0x1E695DF00] nearestMidnightBeforeDate:v14];
      v23 = [MEMORY[0x1E695DF00] nearestMidnightAfterDate:v14];

      v25 = PLLogSubmission(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v30 = 0;
        _os_log_impl(&dword_1D8611000, v25, OS_LOG_TYPE_INFO, "Upgrade date is within active powerlog region", v30, 2u);
      }

      v27 = PLLogSubmission(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionConfig initWithReasonType:];
      }

      [(PLSubmissionConfig *)v4 setConfigDateApplied:v23];
      monotonicDate = v23;
    }

    else
    {
      v29 = PLLogSubmission(v22);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *v30 = 0;
        _os_log_impl(&dword_1D8611000, v29, OS_LOG_TYPE_INFO, "Upgrade date is outside of active powerlog region", v30, 2u);
      }

      v6 = 0;
    }

    goto LABEL_10;
  }

  v28 = PLLogSubmission(v16);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionConfig initWithReasonType:];
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (PLSubmissionConfig)initWithReasonType:(signed __int16)type DRConfig:(id)config
{
  typeCopy = type;
  configCopy = config;
  v7 = [(PLSubmissionConfig *)self initWithReasonType:typeCopy];
  if (v7)
  {
    if (configCopy && ([configCopy payloadDictionaryRepresentation], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      [(PLSubmissionConfig *)v7 setIsDRTasking:1];
      configUUID = [configCopy configUUID];
      [(PLSubmissionConfig *)v7 setConfigUUID:configUUID];

      receivedDate = [configCopy receivedDate];
      convertFromSystemToMonotonic = [receivedDate convertFromSystemToMonotonic];
      [(PLSubmissionConfig *)v7 setConfigDateReceived:convertFromSystemToMonotonic];

      payloadDictionaryRepresentation = [configCopy payloadDictionaryRepresentation];
      [(PLSubmissionConfig *)v7 readTaskingPayloadOverride:payloadDictionaryRepresentation];
    }

    else
    {
      [(PLSubmissionConfig *)v7 setIsDRTasking:0];
      [(PLSubmissionConfig *)v7 readTaskingDefaults];
    }

    if ([(PLSubmissionConfig *)v7 submitReasonType]== 4)
    {
      v13 = 1024;
LABEL_8:
      v7->_submittedFilesMask = v13;
      goto LABEL_13;
    }

    if ([(PLSubmissionConfig *)v7 submitReasonType]== 3 && [(PLSubmissionConfig *)v7 submitPLL]&& [(PLSubmissionConfig *)v7 submitPLLUpgrade])
    {
      v13 = v7->_submittedFilesMask & 0xFFFFFFFFFFFFFBFFLL;
      goto LABEL_8;
    }
  }

LABEL_13:

  return v7;
}

- (PLSubmissionConfig)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v29.receiver = self;
  v29.super_class = PLSubmissionConfig;
  v5 = [(PLSubmissionConfig *)&v29 init];
  v6 = v5;
  if (v5)
  {
    request = v5->_request;
    v5->_request = 0;

    ondemand = v6->_ondemand;
    v6->_ondemand = 0;

    capSize = v6->_capSize;
    v6->_capSize = &unk_1F540A248;

    plTaskingTables = v6->_plTaskingTables;
    v6->_plTaskingTables = 0;

    ppsTaskingTables = v6->_ppsTaskingTables;
    v6->_ppsTaskingTables = 0;

    taskingType = v6->_taskingType;
    v6->_taskingType = 0;

    taskingBuild = v6->_taskingBuild;
    v6->_taskingBuild = 0;

    taskingDeviceModels = v6->_taskingDeviceModels;
    v6->_taskingDeviceModels = 0;

    taskingPopulation = v6->_taskingPopulation;
    v6->_taskingPopulation = 0;

    taskingPercentage = v6->_taskingPercentage;
    v6->_taskingPercentage = 0;

    signpostAllowlist = v6->_signpostAllowlist;
    v6->_signpostAllowlist = 0;

    *&v6->_enableDPUpload = 1;
    v18 = [payloadCopy objectForKeyedSubscript:@"removeEntryKeys"];
    removeEntries = v6->_removeEntries;
    v6->_removeEntries = v18;

    v20 = [payloadCopy objectForKeyedSubscript:@"hashEntryKeys"];
    hashEntries = v6->_hashEntries;
    v6->_hashEntries = v20;

    v22 = [payloadCopy objectForKeyedSubscript:@"trimmingQueries"];
    trimmingQueries = v6->_trimmingQueries;
    v6->_trimmingQueries = v22;

    v24 = [payloadCopy objectForKeyedSubscript:@"cache_size"];
    cacheSize = v6->_cacheSize;
    v6->_cacheSize = v24;

    v6->_submittedFilesMask = 127;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v6->_submittedFilesMask &= ~0x20uLL;
    }

    v26 = [payloadCopy objectForKeyedSubscript:@"startDate"];
    v27 = [payloadCopy objectForKeyedSubscript:@"endDate"];
    [(PLSubmissionConfig *)v6 initTagInfoForReasonType:7 withStartDate:v26 withEndDate:v27];
  }

  return v6;
}

- (void)initTagInfoForReasonType:(signed __int16)type withStartDate:(id)date withEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  objc_storeStrong(&self->_startDate, date);
  objc_storeStrong(&self->_endDate, endDate);
  self->_submitReasonType = type;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  tagUUID = self->_tagUUID;
  self->_tagUUID = uUIDString;

  self->_seed = +[PLPlatform seedBuild];
  self->_internal = +[PLPlatform internalBuild];
  v13 = +[PLGestaltUtilities getHardwareModel];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v13;

  self->_dice = (rand() % 1000) / 10.0;
  self->_enableDPUpload = 1;
  v15 = [PLDefaults objectForKey:@"LastBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v15, 0}];
  builds = self->_builds;
  self->_builds = v16;

  if (+[PLPlatform internalBuild])
  {
    if ([(PLSubmissionConfig *)self submitBDC])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [defaultManager fileExistsAtPath:@"/var/db/Battery/BDC"];

      if ((v19 & 1) == 0)
      {
        self->_submittedFilesMask &= ~8uLL;
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PLSubmissionConfig allocWithZone:?]];
  submitReasonType = [(PLSubmissionConfig *)self submitReasonType];
  startDate = [(PLSubmissionConfig *)self startDate];
  endDate = [(PLSubmissionConfig *)self endDate];
  [(PLSubmissionConfig *)v4 initTagInfoForReasonType:submitReasonType withStartDate:startDate withEndDate:endDate];

  configUUID = [(PLSubmissionConfig *)self configUUID];
  [(PLSubmissionConfig *)v4 setConfigUUID:configUUID];

  configDateApplied = [(PLSubmissionConfig *)self configDateApplied];
  [(PLSubmissionConfig *)v4 setConfigDateApplied:configDateApplied];

  configDateReceived = [(PLSubmissionConfig *)self configDateReceived];
  [(PLSubmissionConfig *)v4 setConfigDateReceived:configDateReceived];

  [(PLSubmissionConfig *)self dice];
  [(PLSubmissionConfig *)v4 setDice:?];
  [(PLSubmissionConfig *)v4 setEnableDPUpload:[(PLSubmissionConfig *)self enableDPUpload]];
  [(PLSubmissionConfig *)v4 setIsDRTasking:[(PLSubmissionConfig *)self isDRTasking]];
  request = [(PLSubmissionConfig *)self request];
  [(PLSubmissionConfig *)v4 setRequest:request];

  ondemand = [(PLSubmissionConfig *)self ondemand];
  [(PLSubmissionConfig *)v4 setOndemand:ondemand];

  capSize = [(PLSubmissionConfig *)self capSize];
  [(PLSubmissionConfig *)v4 setCapSize:capSize];

  plTaskingTables = [(PLSubmissionConfig *)self plTaskingTables];
  [(PLSubmissionConfig *)v4 setPlTaskingTables:plTaskingTables];

  ppsTaskingTables = [(PLSubmissionConfig *)self ppsTaskingTables];
  [(PLSubmissionConfig *)v4 setPpsTaskingTables:ppsTaskingTables];

  removeEntries = [(PLSubmissionConfig *)self removeEntries];
  [(PLSubmissionConfig *)v4 setRemoveEntries:removeEntries];

  hashEntries = [(PLSubmissionConfig *)self hashEntries];
  [(PLSubmissionConfig *)v4 setHashEntries:hashEntries];

  trimmingQueries = [(PLSubmissionConfig *)self trimmingQueries];
  [(PLSubmissionConfig *)v4 setTrimmingQueries:trimmingQueries];

  taskingBuild = [(PLSubmissionConfig *)self taskingBuild];
  [(PLSubmissionConfig *)v4 setTaskingBuild:taskingBuild];

  taskingDeviceModels = [(PLSubmissionConfig *)self taskingDeviceModels];
  [(PLSubmissionConfig *)v4 setTaskingDeviceModels:taskingDeviceModels];

  taskingPopulation = [(PLSubmissionConfig *)self taskingPopulation];
  [(PLSubmissionConfig *)v4 setTaskingPopulation:taskingPopulation];

  taskingPercentage = [(PLSubmissionConfig *)self taskingPercentage];
  [(PLSubmissionConfig *)v4 setTaskingPercentage:taskingPercentage];

  signpostAllowlist = [(PLSubmissionConfig *)self signpostAllowlist];
  [(PLSubmissionConfig *)v4 setSignpostAllowlist:signpostAllowlist];

  [(PLSubmissionConfig *)v4 setSignpostDisable:[(PLSubmissionConfig *)self signpostDisable]];
  cacheSize = [(PLSubmissionConfig *)self cacheSize];
  [(PLSubmissionConfig *)v4 setCacheSize:cacheSize];

  taskingFiles = [(PLSubmissionConfig *)self taskingFiles];
  [(PLSubmissionConfig *)v4 setTaskingFiles:taskingFiles];

  [(PLSubmissionConfig *)v4 setSubmittedFilesMask:[(PLSubmissionConfig *)self submittedFilesMask]];
  taskingType = [(PLSubmissionConfig *)self taskingType];
  [(PLSubmissionConfig *)v4 setTaskingType:taskingType];

  defaultTaskingTypeParameters = [(PLSubmissionConfig *)self defaultTaskingTypeParameters];
  [(PLSubmissionConfig *)v4 setDefaultTaskingTypeParameters:defaultTaskingTypeParameters];

  perModelTaskingTypeParameters = [(PLSubmissionConfig *)self perModelTaskingTypeParameters];
  [(PLSubmissionConfig *)v4 setPerModelTaskingTypeParameters:perModelTaskingTypeParameters];

  filePath = [(PLSubmissionConfig *)self filePath];
  [(PLSubmissionConfig *)v4 setFilePath:filePath];

  ckTagConfig = [(PLSubmissionConfig *)self ckTagConfig];
  [(PLSubmissionConfig *)v4 setCkTagConfig:ckTagConfig];

  blobFailureReason = [(PLSubmissionConfig *)self blobFailureReason];
  [(PLSubmissionConfig *)v4 setBlobFailureReason:blobFailureReason];

  lastBatteryTimestampSystem = [(PLSubmissionConfig *)self lastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v4 setLastBatteryTimestampSystem:lastBatteryTimestampSystem];

  return v4;
}

- (void)readTaskingPayloadOverride:(id)override
{
  v59 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  v5 = [overrideCopy objectForKeyedSubscript:@"PLTaskingRequest"];
  [(PLSubmissionConfig *)self setRequest:v5];

  v6 = [overrideCopy objectForKeyedSubscript:@"PLTaskingOnDemand"];
  [(PLSubmissionConfig *)self setOndemand:v6];

  v7 = [overrideCopy objectForKeyedSubscript:@"PLTaskingCapSize"];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = &unk_1F540A248;
  }

  [(PLSubmissionConfig *)self setCapSize:v9];
  v10 = [overrideCopy objectForKeyedSubscript:@"PLTaskingTables"];
  [(PLSubmissionConfig *)self setPlTaskingTables:v10];

  v11 = [overrideCopy objectForKeyedSubscript:@"PPSTaskingTables"];
  [(PLSubmissionConfig *)self setPpsTaskingTables:v11];

  v12 = [overrideCopy objectForKeyedSubscript:@"PLTaskingRemoveEntries"];
  [(PLSubmissionConfig *)self setRemoveEntries:v12];

  removeEntries = [(PLSubmissionConfig *)self removeEntries];

  if (!removeEntries)
  {
    [(PLSubmissionConfig *)self setRemoveEntries:&unk_1F540C6D0];
  }

  v14 = [overrideCopy objectForKeyedSubscript:@"PLTaskingHashEntries"];
  if (v14)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __49__PLSubmissionConfig_readTaskingPayloadOverride___block_invoke;
    v54[3] = &unk_1E851B108;
    v55 = dictionary;
    v16 = dictionary;
    [v14 enumerateObjectsUsingBlock:v54];
    v17 = [v16 copy];
    [(PLSubmissionConfig *)self setHashEntries:v17];
  }

  else
  {
    [(PLSubmissionConfig *)self setHashEntries:&unk_1F541B590];
  }

  [(PLSubmissionConfig *)self setTrimmingQueries:0];
  v18 = [overrideCopy objectForKeyedSubscript:@"PLTaskingBuild"];
  [(PLSubmissionConfig *)self setTaskingBuild:v18];

  v19 = [overrideCopy objectForKeyedSubscript:@"PLTaskingDeviceModels"];
  [(PLSubmissionConfig *)self setTaskingDeviceModels:v19];

  v20 = [overrideCopy objectForKeyedSubscript:@"PLTaskingPopulation"];
  [(PLSubmissionConfig *)self setTaskingPopulation:v20];

  v21 = [overrideCopy objectForKeyedSubscript:@"PLTaskingPercentage"];
  [(PLSubmissionConfig *)self setTaskingPercentage:v21];

  v22 = [overrideCopy objectForKeyedSubscript:@"PLTaskingSignpostAllowlist"];
  [(PLSubmissionConfig *)self setSignpostAllowlist:v22];

  v23 = [overrideCopy objectForKeyedSubscript:@"PLTaskingSignpostDisable"];
  if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v23 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(PLSubmissionConfig *)self setSignpostDisable:bOOLValue];
  [(PLSubmissionConfig *)self setCacheSize:0];
  self->_submittedFilesMask = 0;
  v25 = [overrideCopy objectForKeyedSubscript:@"PLTaskingFiles"];
  [(PLSubmissionConfig *)self setTaskingFiles:v25];

  taskingFiles = [(PLSubmissionConfig *)self taskingFiles];

  if (taskingFiles)
  {
    v46 = v23;
    v47 = v7;
    v48 = overrideCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    taskingFiles2 = [(PLSubmissionConfig *)self taskingFiles];
    v28 = [taskingFiles2 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v28)
    {
      goto LABEL_42;
    }

    v30 = v28;
    v31 = *v51;
    *&v29 = 138412290;
    v45 = v29;
    while (1)
    {
      v32 = 0;
      do
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(taskingFiles2);
        }

        v33 = *(*(&v50 + 1) + 8 * v32);
        if ([v33 isEqualToString:{@"PLL", v45}])
        {
          v34 = self->_submittedFilesMask | 1;
LABEL_35:
          self->_submittedFilesMask = v34;
          goto LABEL_36;
        }

        if ([v33 isEqualToString:@"PLL-Upgrade"])
        {
          v34 = self->_submittedFilesMask | 0x400;
          goto LABEL_35;
        }

        if ([v33 isEqualToString:@"MSS"])
        {
          v34 = self->_submittedFilesMask | 2;
          goto LABEL_35;
        }

        if ([v33 isEqualToString:@"SP"])
        {
          v34 = self->_submittedFilesMask | 4;
          goto LABEL_35;
        }

        if ([v33 isEqualToString:@"BDC"])
        {
          v34 = self->_submittedFilesMask | 8;
          goto LABEL_35;
        }

        if ([v33 isEqualToString:@"CE"])
        {
          v34 = self->_submittedFilesMask | 0x10;
          goto LABEL_35;
        }

        if ([v33 isEqualToString:@"XC"])
        {
          v34 = self->_submittedFilesMask | 0x20;
          goto LABEL_35;
        }

        v35 = [v33 isEqualToString:@"BG"];
        if (v35)
        {
          v34 = self->_submittedFilesMask | 0x40;
          goto LABEL_35;
        }

        log = PLLogSubmission(v35);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = v45;
          v57 = v33;
          _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Unsupported tasking files: %@", buf, 0xCu);
        }

LABEL_36:
        ++v32;
      }

      while (v30 != v32);
      v36 = [taskingFiles2 countByEnumeratingWithState:&v50 objects:v58 count:16];
      v30 = v36;
      if (!v36)
      {
LABEL_42:

        v7 = v47;
        overrideCopy = v48;
        v23 = v46;
        goto LABEL_46;
      }
    }
  }

  if (+[PLPlatform internalBuild])
  {
    self->_submittedFilesMask = 127;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      self->_submittedFilesMask &= ~0x20uLL;
    }
  }

LABEL_46:
  v37 = [overrideCopy objectForKeyedSubscript:@"PLEnableDPUpload"];

  if (v37)
  {
    v38 = [overrideCopy objectForKeyedSubscript:@"PLEnableDPUpload"];
    -[PLSubmissionConfig setEnableDPUpload:](self, "setEnableDPUpload:", [v38 BOOLValue]);
  }

  else
  {
    [(PLSubmissionConfig *)self setEnableDPUpload:1];
  }

  v39 = [overrideCopy objectForKeyedSubscript:@"PLTaskingType"];
  [(PLSubmissionConfig *)self setTaskingType:v39];

  v40 = [overrideCopy objectForKeyedSubscript:@"PLDefaultTaskingTypeParametersKey"];
  [(PLSubmissionConfig *)self setDefaultTaskingTypeParameters:v40];

  v41 = [overrideCopy objectForKeyedSubscript:@"PLPerModelTaskingTypeParametersKey"];
  [(PLSubmissionConfig *)self setPerModelTaskingTypeParameters:v41];

  taskingFiles3 = [(PLSubmissionConfig *)self taskingFiles];
  [PLDefaults setObject:taskingFiles3 forKey:@"PLTaskingFiles" saveToDisk:1];

  plTaskingTables = [(PLSubmissionConfig *)self plTaskingTables];
  [PLDefaults setObject:plTaskingTables forKey:@"PLTaskingTables" saveToDisk:1];

  ppsTaskingTables = [(PLSubmissionConfig *)self ppsTaskingTables];
  [PLDefaults setObject:ppsTaskingTables forKey:@"PPSTaskingTables" saveToDisk:1];
}

void __49__PLSubmissionConfig_readTaskingPayloadOverride___block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 componentsSeparatedByString:@"."];
  v3 = [v10 count] == 2;
  v4 = v10;
  if (v3)
  {
    v5 = [v10 objectAtIndexedSubscript:0];
    v6 = [v10 objectAtIndexedSubscript:1];
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }

    v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v9 addObject:v6];

    v4 = v10;
  }
}

- (BOOL)isValidSubmissionFilesMask
{
  taskingFiles = [(PLSubmissionConfig *)self taskingFiles];

  if (!taskingFiles)
  {
    return 1;
  }

  submittedFilesMask = self->_submittedFilesMask;
  v6 = (submittedFilesMask & 0x10) == 0 || submittedFilesMask == 16;
  if ((submittedFilesMask & 8) != 0)
  {
    return submittedFilesMask == 8;
  }

  else
  {
    return v6;
  }
}

- (BOOL)isValidTaskingBlob
{
  isValidSubmissionFilesMask = [(PLSubmissionConfig *)self isValidSubmissionFilesMask];
  if (isValidSubmissionFilesMask)
  {
    request = self->_request;

    return [PLUtilities isValidString:request];
  }

  else
  {
    v6 = PLLogSubmission(isValidSubmissionFilesMask);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissionConfig *)self isValidTaskingBlob];
    }

    blobFailureReason = self->_blobFailureReason;
    self->_blobFailureReason = @"InvalidTaskingFiles";

    return 0;
  }
}

- (void)readTaskingDefaults
{
  v3 = PLOSAPreferencesGetValue();
  request = self->_request;
  self->_request = v3;

  v5 = PLOSAPreferencesGetValue();
  ondemand = self->_ondemand;
  self->_ondemand = v5;

  v7 = PLOSAPreferencesGetValue();
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = v7;
    capSize = self->_capSize;
    self->_capSize = v8;
  }

  else
  {
    capSize = self->_capSize;
    self->_capSize = &unk_1F540A248;
  }

  v10 = PLOSAPreferencesGetValue();
  plTaskingTables = self->_plTaskingTables;
  self->_plTaskingTables = v10;

  v12 = PLOSAPreferencesGetValue();
  removeEntries = self->_removeEntries;
  self->_removeEntries = v12;

  if (!self->_removeEntries)
  {
    self->_removeEntries = &unk_1F540C748;
  }

  v14 = PLOSAPreferencesGetValue();
  if (v14)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __41__PLSubmissionConfig_readTaskingDefaults__block_invoke;
    v35[3] = &unk_1E851B108;
    v36 = dictionary;
    v16 = dictionary;
    [v14 enumerateObjectsUsingBlock:v35];
    v17 = [v16 copy];
    hashEntries = self->_hashEntries;
    self->_hashEntries = v17;
  }

  else
  {
    v19 = self->_hashEntries;
    self->_hashEntries = &unk_1F541B5B8;
  }

  trimmingQueries = self->_trimmingQueries;
  self->_trimmingQueries = 0;

  v21 = PLOSAPreferencesGetValue();
  taskingBuild = self->_taskingBuild;
  self->_taskingBuild = v21;

  v23 = PLOSAPreferencesGetValue();
  taskingDeviceModels = self->_taskingDeviceModels;
  self->_taskingDeviceModels = v23;

  v25 = PLOSAPreferencesGetValue();
  taskingPopulation = self->_taskingPopulation;
  self->_taskingPopulation = v25;

  v27 = PLOSAPreferencesGetValue();
  taskingPercentage = self->_taskingPercentage;
  self->_taskingPercentage = v27;

  v29 = PLOSAPreferencesGetValue();
  signpostAllowlist = self->_signpostAllowlist;
  self->_signpostAllowlist = v29;

  v31 = PLOSAPreferencesGetValue();
  v32 = v31;
  v33 = v31 && ([v31 BOOLValue] & 1) != 0;
  self->_signpostDisable = v33;
  cacheSize = self->_cacheSize;
  self->_cacheSize = 0;

  [(PLSubmissionConfig *)self initializeFilesToBeSubmitted];
}

void __41__PLSubmissionConfig_readTaskingDefaults__block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 componentsSeparatedByString:@"."];
  v3 = [v10 count] == 2;
  v4 = v10;
  if (v3)
  {
    v5 = [v10 objectAtIndexedSubscript:0];
    v6 = [v10 objectAtIndexedSubscript:1];
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }

    v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v9 addObject:v6];

    v4 = v10;
  }
}

- (id)submissionMaskToString
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(PLSubmissionConfig *)self submitPLL])
  {
    [array addObject:@"Powerlog"];
  }

  if ([(PLSubmissionConfig *)self submitPLLUpgrade])
  {
    [array addObject:@"UpgradePowerlog"];
  }

  if ([(PLSubmissionConfig *)self submitMSS])
  {
    [array addObject:@"Microstackshots"];
  }

  if ([(PLSubmissionConfig *)self submitBDC])
  {
    [array addObject:@"BDC_logs"];
  }

  if ([(PLSubmissionConfig *)self submitSP])
  {
    [array addObject:@"Signpost"];
  }

  if ([(PLSubmissionConfig *)self submitCE])
  {
    [array addObject:@"CleanEnergyLogs"];
  }

  if ([(PLSubmissionConfig *)self submitXC])
  {
    [array addObject:@"XcodeOrganizer"];
  }

  if ([(PLSubmissionConfig *)self submitBG])
  {
    [array addObject:@"BackgroundProcessing"];
  }

  v4 = [array componentsJoinedByString:{@", "}];

  return v4;
}

- (id)splitBySubmissionType
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(PLSubmissionConfig *)self submitReasonType]== 1)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(PLSubmissionConfig *)self submitCE])
    {
      v4 = [(PLSubmissionConfig *)self copy];
      [v4 setSubmittedFilesMask:16];
      [array addObject:v4];
      self->_submittedFilesMask &= ~0x10uLL;
    }

    if ([(PLSubmissionConfig *)self submitXC])
    {
      v5 = [(PLSubmissionConfig *)self copy];
      [v5 setSubmittedFilesMask:32];
      [array addObject:v5];
      self->_submittedFilesMask &= ~0x20uLL;
    }

    if ([(PLSubmissionConfig *)self submitBG])
    {
      v6 = [(PLSubmissionConfig *)self copy];
      [v6 setSubmittedFilesMask:64];
      [array addObject:v6];
      self->_submittedFilesMask &= ~0x40uLL;
    }

    [array addObject:self];
    reverseObjectEnumerator = [array reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  else
  {
    v10[0] = self;
    allObjects = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  return allObjects;
}

- (id)submissionCategory
{
  if ([(PLSubmissionConfig *)self submitReasonType]== 4)
  {
    return @"upgrade-archive";
  }

  if ([(PLSubmissionConfig *)self submitReasonType]== 2)
  {
    return @"safeguard-archive";
  }

  if ([(PLSubmissionConfig *)self submitReasonType]== 1 && [(PLSubmissionConfig *)self submittedFilesMask]== 16)
  {
    return @"ce-archive";
  }

  if ([(PLSubmissionConfig *)self submittedFilesMask]== 32)
  {
    return @"xc-archive";
  }

  if ([(PLSubmissionConfig *)self submittedFilesMask]== 64)
  {
    return @"bg-archive";
  }

  return @"pps-archive";
}

- (id)getSubmitReasonTypeToCAFieldValue
{
  if (self->_submitReasonType - 1 > 6)
  {
    return @"unknownreason";
  }

  else
  {
    return off_1E851B2C8[(self->_submitReasonType - 1)];
  }
}

- (id)getSubmitReasonTypeToFlushReason
{
  if (self->_submitReasonType - 1 > 6)
  {
    return @"unknown OTA reason";
  }

  else
  {
    return off_1E851B300[(self->_submitReasonType - 1)];
  }
}

- (id)getSubmitReasonTypeToReasonLog
{
  submitReasonType = self->_submitReasonType;
  if (submitReasonType > 3)
  {
    if (submitReasonType == 4)
    {
      v4 = MEMORY[0x1E696AEC0];
      request = self->_request;
      v6 = @"UpgradeTasking";
      goto LABEL_13;
    }

    if (submitReasonType != 5)
    {
      if (submitReasonType == 7)
      {
        request = @"SafeLogFile";
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_10:
    v4 = MEMORY[0x1E696AEC0];
    request = self->_request;
    v6 = @"OnDemandTasking";
LABEL_13:
    request = [v4 stringWithFormat:@"%@:%@", v6, request];
    goto LABEL_16;
  }

  if (submitReasonType == 1)
  {
    request = @"InternalSubmission";
    goto LABEL_16;
  }

  if (submitReasonType != 2)
  {
    if (submitReasonType != 3)
    {
LABEL_14:
      request = @"unknownreason";
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  request = @"SafeguardSubmission";
LABEL_16:

  return request;
}

- (id)getSubmitReasonTypeToStorageEventOTAType
{
  v3 = self->_submitReasonType - 1;
  if (v3 <= 6 && ((0x5Fu >> v3) & 1) != 0)
  {
    v4 = *off_1E851B338[(self->_submitReasonType - 1)];
  }

  else
  {
    v4 = @"unknownreason";
  }

  return v4;
}

- (id)getDateMarkerLegacy
{
  lastBatteryTimestampSystem = [(PLSubmissionConfig *)self lastBatteryTimestampSystem];
  if (lastBatteryTimestampSystem)
  {
    lastBatteryTimestampSystem2 = [(PLSubmissionConfig *)self lastBatteryTimestampSystem];
  }

  else
  {
    v5 = MEMORY[0x1E695DF00];
    date = [MEMORY[0x1E695DF00] date];
    lastBatteryTimestampSystem2 = [v5 nearestMidnightBeforeDate:date];
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v7 setDateFormat:@"yyyyMMdd"];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v7 setTimeZone:systemTimeZone];

  v10 = [v8 objectForKey:*MEMORY[0x1E695D958]];
  [v7 setCalendar:v10];

  [v7 setLocale:v8];
  v11 = [v7 stringFromDate:lastBatteryTimestampSystem2];

  return v11;
}

- (id)getDateMarker
{
  lastBatteryTimestampSystem = [(PLSubmissionConfig *)self lastBatteryTimestampSystem];
  if (lastBatteryTimestampSystem)
  {
    lastBatteryTimestampSystem2 = [(PLSubmissionConfig *)self lastBatteryTimestampSystem];
  }

  else
  {
    v5 = MEMORY[0x1E695DF00];
    date = [MEMORY[0x1E695DF00] date];
    lastBatteryTimestampSystem2 = [v5 nearestMidnightBeforeDate:date];
  }

  v7 = [PLSubmissionConfig getDateMarkerFromSystemDate:lastBatteryTimestampSystem2];

  return v7;
}

+ (id)getDateMarkerFromSystemDate:(id)date
{
  if (date)
  {
    v3 = MEMORY[0x1E696AEC0];
    [date timeIntervalSince1970];
    v5 = v4;
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    v7 = [v3 stringWithFormat:@"%f [%ld]", v5, objc_msgSend(systemTimeZone, "secondsFromGMT")];
  }

  else
  {
    v7 = @"unknown";
  }

  return v7;
}

+ (void)clearTaskingDefaults
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (clearTaskingDefaults_defaultOnce != -1)
    {
      dispatch_once(&clearTaskingDefaults_defaultOnce, block);
    }

    if (clearTaskingDefaults_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clearing on demand tasking defaults"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
      lastPathComponent = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLSubmissionConfig clearTaskingDefaults]"];
      [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:727];

      v8 = PLLogCommon(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [PLDefaults setObject:0 forKey:@"PLTaskingOnDemandStartDate" saveToDisk:1];
  [PLDefaults setObject:0 forKey:@"PLTaskingRestartCount" saveToDisk:1];
  [PLDefaults setObject:0 forKey:@"PLTaskingFiles" saveToDisk:1];
  [PLDefaults setObject:0 forKey:@"PLTaskingTables" saveToDisk:1];
  [PLDefaults setObject:0 forKey:@"PPSTaskingTables" saveToDisk:1];
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke_384;
    v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v34[4] = v9;
    if (clearTaskingDefaults_defaultOnce_382 != -1)
    {
      dispatch_once(&clearTaskingDefaults_defaultOnce_382, v34);
    }

    if (clearTaskingDefaults_classDebugEnabled_383 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clearing tasking OSAPreferences"];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
      lastPathComponent2 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLSubmissionConfig clearTaskingDefaults]"];
      [PLCoreStorage logMessage:v10 fromFile:lastPathComponent2 fromFunction:v13 fromLineNumber:741];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  v16 = PLOSAPreferencesSynchronize();
  if (+[PLDefaults debugEnabled])
  {
    v17 = objc_opt_class();
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke_390;
    v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v33[4] = v17;
    if (clearTaskingDefaults_defaultOnce_388 != -1)
    {
      dispatch_once(&clearTaskingDefaults_defaultOnce_388, v33);
    }

    if (clearTaskingDefaults_classDebugEnabled_389 == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"synchronized=%d", v16];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
      lastPathComponent3 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLSubmissionConfig clearTaskingDefaults]"];
      [PLCoreStorage logMessage:v18 fromFile:lastPathComponent3 fromFunction:v21 fromLineNumber:748];

      v23 = PLLogCommon(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  PLOSAPreferencesSetValue();
  v24 = PLOSAPreferencesSynchronize();
  if (+[PLDefaults debugEnabled])
  {
    v25 = objc_opt_class();
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke_396;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v25;
    if (clearTaskingDefaults_defaultOnce_394 != -1)
    {
      dispatch_once(&clearTaskingDefaults_defaultOnce_394, v32);
    }

    if (clearTaskingDefaults_classDebugEnabled_395 == 1)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"synchronized=%d", v24];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
      lastPathComponent4 = [v27 lastPathComponent];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLSubmissionConfig clearTaskingDefaults]"];
      [PLCoreStorage logMessage:v26 fromFile:lastPathComponent4 fromFunction:v29 fromLineNumber:754];

      v31 = PLLogCommon(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  clearTaskingDefaults_classDebugEnabled = result;
  return result;
}

BOOL __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke_384(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  clearTaskingDefaults_classDebugEnabled_383 = result;
  return result;
}

BOOL __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke_390(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  clearTaskingDefaults_classDebugEnabled_389 = result;
  return result;
}

BOOL __42__PLSubmissionConfig_clearTaskingDefaults__block_invoke_396(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  clearTaskingDefaults_classDebugEnabled_395 = result;
  return result;
}

- (BOOL)conditionCheckForAppIntents
{
  v2 = PLLogSubmission(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Checking for app intents...", buf, 2u);
  }

  v3 = +[PPSCoreStorage sharedSQLStorage];
  pLSQLConnection = [v3 PLSQLConnection];

  v5 = [pLSQLConnection rowCountForTableName:@"AppIntentsServices_Activity_1_2"];
  v6 = v5;
  v7 = PLLogSubmission(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 < 1)
  {
    if (v8)
    {
      v12 = 0;
      v9 = "No app intents found, skipping submission";
      v10 = &v12;
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    v13 = 0;
    v9 = "App intents found, proceeding with submission";
    v10 = &v13;
LABEL_8:
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
  }

  return 1;
}

- (BOOL)conditionCheckForEnergy
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[PLArchiveManager lastArchivePath];
  v3 = PLLogSubmission(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Energy Tasking: looking for archived powerlog...", &v12, 2u);
  }

  if (!v2)
  {
    v9 = PLLogSubmission(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionConfig conditionCheckForEnergy];
    }

    goto LABEL_12;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v2];

  v8 = PLLogSubmission(v7);
  v9 = v8;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionConfig conditionCheckForEnergy];
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v2;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Energy Tasking: last archived powerlog = %@", &v12, 0xCu);
  }

  v10 = 1;
LABEL_13:

  return v10;
}

- (BOOL)conditionCheckForTaskingType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AppIntents"])
  {
    conditionCheckForAppIntents = [(PLSubmissionConfig *)self conditionCheckForAppIntents];
  }

  else
  {
    if (![typeCopy isEqualToString:@"Energy"])
    {
      v6 = 0;
      goto LABEL_7;
    }

    conditionCheckForAppIntents = [(PLSubmissionConfig *)self conditionCheckForEnergy];
  }

  v6 = conditionCheckForAppIntents;
LABEL_7:

  return v6;
}

- (BOOL)shouldSubmitToday
{
  v3 = PLLogSubmission(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionConfig shouldSubmitToday];
  }

  [(PLSubmissionConfig *)self emitTaskingTypeSpecifiedEvent];
  isValidTaskingBlob = [(PLSubmissionConfig *)self isValidTaskingBlob];
  if ((isValidTaskingBlob & 1) == 0)
  {
    v7 = PLLogSubmission(isValidTaskingBlob);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionConfig shouldSubmitToday];
    }

    goto LABEL_23;
  }

  taskingType = [(PLSubmissionConfig *)self taskingType];
  v6 = [(PLSubmissionConfig *)self conditionCheckForTaskingType:taskingType];

  if (!v6)
  {
    v7 = PLLogSubmission([(PLSubmissionConfig *)self emitQueryEvent:0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionConfig shouldSubmitToday];
    }

    goto LABEL_23;
  }

  [(PLSubmissionConfig *)self emitQueryEvent:1];
  v7 = +[PLGestaltUtilities getProductType];
  perModelTaskingTypeParameters = self->_perModelTaskingTypeParameters;
  if (perModelTaskingTypeParameters || self->_defaultTaskingTypeParameters)
  {
    if (v7)
    {
      v9 = [(NSDictionary *)perModelTaskingTypeParameters objectForKeyedSubscript:v7];
      if (v9)
      {
        v10 = [(NSDictionary *)self->_perModelTaskingTypeParameters objectForKeyedSubscript:v7];
        v11 = [v10 objectForKeyedSubscript:@"samplingPercentage"];
        intValue = [v11 intValue];
      }

      else
      {
        v10 = [(NSDictionary *)self->_defaultTaskingTypeParameters objectForKeyedSubscript:@"samplingPercentage"];
        intValue = [v10 intValue];
      }

      v15 = PLLogSubmission(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionConfig shouldSubmitToday];
      }

      if (intValue - 101 >= 0xFFFFFF9C)
      {
        [(PLSubmissionConfig *)self dice];
        if (v16 < intValue)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v13 = PLLogSubmission(perModelTaskingTypeParameters);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionConfig shouldSubmitToday];
      }
    }

LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

LABEL_22:
  [(PLSubmissionConfig *)self emitSubmitEvent];
  v17 = 1;
LABEL_24:

  return v17;
}

- (BOOL)shouldStartTaskingToday
{
  v108 = *MEMORY[0x1E69E9840];
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (shouldStartTaskingToday_defaultOnce != -1)
    {
      dispatch_once(&shouldStartTaskingToday_defaultOnce, block);
    }

    if (shouldStartTaskingToday_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin on-demand tasking setup check"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
      [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1005];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (+[PLDefaults fullMode](PLDefaults, "fullMode") || +[PLDefaults taskMode])
  {
    if (+[PLDefaults debugEnabled])
    {
      v10 = objc_opt_class();
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_416;
      v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v105[4] = v10;
      if (shouldStartTaskingToday_defaultOnce_414 != -1)
      {
        dispatch_once(&shouldStartTaskingToday_defaultOnce_414, v105);
      }

      if (shouldStartTaskingToday_classDebugEnabled_415 == 1)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already in task mode or full mode"];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
        lastPathComponent2 = [v12 lastPathComponent];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
        [PLCoreStorage logMessage:v11 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:1010];

        v16 = PLLogCommon(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    return 0;
  }

  if (![(PLSubmissionConfig *)self isValidTaskingBlob])
  {
    if (+[PLDefaults debugEnabled])
    {
      v18 = objc_opt_class();
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_422;
      v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v104[4] = v18;
      if (shouldStartTaskingToday_defaultOnce_420 != -1)
      {
        dispatch_once(&shouldStartTaskingToday_defaultOnce_420, v104);
      }

      if (shouldStartTaskingToday_classDebugEnabled_421 == 1)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tasking blob is not valid"];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
        lastPathComponent3 = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
        [PLCoreStorage logMessage:v11 fromFile:lastPathComponent3 fromFunction:v21 fromLineNumber:1016];

        v16 = PLLogCommon(v22);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_16;
      }
    }

    return 0;
  }

  if ([(PLSubmissionConfig *)self isDRTasking])
  {
    return 1;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.OTATasking", @"PLTaskingRequest"];
  PLADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
  [PLSubmissionConfig submitTaskingDefaultsCheckStateToCA:@"PLTaskingRequest"];
  if (self->_taskingBuild)
  {
    v11 = [PLDefaults objectForKey:@"LastBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    taskingBuild = self->_taskingBuild;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v25 = [(NSString *)taskingBuild stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v27 = [(__CFString *)v11 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    if (+[PLDefaults debugEnabled])
    {
      v28 = objc_opt_class();
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_443;
      v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v103[4] = v28;
      if (shouldStartTaskingToday_defaultOnce_441 != -1)
      {
        dispatch_once(&shouldStartTaskingToday_defaultOnce_441, v103);
      }

      if (shouldStartTaskingToday_classDebugEnabled_442 == 1)
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"taskingBuild=%@, currentBuild=%@\n", v25, v27];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
        lastPathComponent4 = [v30 lastPathComponent];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
        [PLCoreStorage logMessage:v29 fromFile:lastPathComponent4 fromFunction:v32 fromLineNumber:1046];

        v34 = PLLogCommon(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (!v25)
    {

      goto LABEL_17;
    }

    v35 = [v25 isEqualToString:v27];

    if (!v35)
    {
      return 0;
    }
  }

  v36 = +[PLGestaltUtilities getHardwareModel];
  v11 = v36;
  if (self->_taskingDeviceModels)
  {
    if (!v36)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (+[PLDefaults debugEnabled])
    {
      v37 = objc_opt_class();
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_449;
      v102[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v102[4] = v37;
      if (shouldStartTaskingToday_defaultOnce_447 != -1)
      {
        dispatch_once(&shouldStartTaskingToday_defaultOnce_447, v102);
      }

      if (shouldStartTaskingToday_classDebugEnabled_448 == 1)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"currentModel=%@, taskingDeviceModels=%@\n", v11, self->_taskingDeviceModels];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
        lastPathComponent5 = [v39 lastPathComponent];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
        [PLCoreStorage logMessage:v38 fromFile:lastPathComponent5 fromFunction:v41 fromLineNumber:1061];

        v43 = PLLogCommon(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v44 = [(NSString *)self->_taskingDeviceModels tokenizedByString:@":"];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v98 objects:v107 count:16];
    if (!v45)
    {
      goto LABEL_120;
    }

    v46 = v45;
    v47 = 0;
    v48 = *v99;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v99 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = *(*(&v98 + 1) + 8 * i);
        if (v50)
        {
          whitespaceAndNewlineCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v52 = [v50 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet3];

          v47 |= [(__CFString *)v11 isEqualToString:v52];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v46);

    if ((v47 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (self->_taskingPopulation)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (+[PLDefaults debugEnabled])
    {
      v53 = objc_opt_class();
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_458;
      v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v97[4] = v53;
      if (shouldStartTaskingToday_defaultOnce_456 != -1)
      {
        dispatch_once(&shouldStartTaskingToday_defaultOnce_456, v97);
      }

      if (shouldStartTaskingToday_classDebugEnabled_457 == 1)
      {
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"taskingPopulation=%@\n", self->_taskingPopulation];
        v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
        lastPathComponent6 = [v55 lastPathComponent];
        v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
        [PLCoreStorage logMessage:v54 fromFile:lastPathComponent6 fromFunction:v57 fromLineNumber:1080];

        v59 = PLLogCommon(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    taskingPopulation = self->_taskingPopulation;
    whitespaceAndNewlineCharacterSet4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v44 = [(NSString *)taskingPopulation stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet4];

    if ([v44 isEqualToString:@"INTERNAL"])
    {
      if (!+[PLPlatform internalBuild])
      {
        goto LABEL_120;
      }
    }

    else if ([v44 isEqualToString:@"SEED"])
    {
      if (!+[PLPlatform seedBuild])
      {
        goto LABEL_120;
      }
    }

    else if ([v44 isEqualToString:@"CARRIER"])
    {
      if (!+[PLPlatform carrierBuild])
      {
LABEL_120:

        goto LABEL_17;
      }
    }

    else if (![v44 isEqualToString:@"GM"] || +[PLPlatform internalBuild](PLPlatform, "internalBuild") || +[PLPlatform seedBuild](PLPlatform, "seedBuild"))
    {
      goto LABEL_120;
    }
  }

  if (self->_taskingPercentage)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v63 = [(NSDictionary *)self->_taskingPercentage objectForKeyedSubscript:v11];

    taskingPercentage = self->_taskingPercentage;
    if (v63)
    {
      v65 = v11;
    }

    else
    {
      intValue = [(NSDictionary *)taskingPercentage objectForKeyedSubscript:@"default"];

      if (!intValue)
      {
        goto LABEL_89;
      }

      taskingPercentage = self->_taskingPercentage;
      v65 = @"default";
    }

    v67 = [(NSDictionary *)taskingPercentage objectForKeyedSubscript:v65];
    intValue = [v67 intValue];

LABEL_89:
    if (+[PLDefaults debugEnabled])
    {
      v68 = objc_opt_class();
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_480;
      v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v96[4] = v68;
      if (shouldStartTaskingToday_defaultOnce_478 != -1)
      {
        dispatch_once(&shouldStartTaskingToday_defaultOnce_478, v96);
      }

      if (shouldStartTaskingToday_classDebugEnabled_479 == 1)
      {
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"taskingPercentage=%d\n", intValue];
        v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
        lastPathComponent7 = [v70 lastPathComponent];
        v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
        [PLCoreStorage logMessage:v69 fromFile:lastPathComponent7 fromFunction:v72 fromLineNumber:1120];

        v74 = PLLogCommon(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (intValue < 1)
    {
      goto LABEL_17;
    }

    if (intValue <= 0x63)
    {
      if (+[PLDefaults debugEnabled])
      {
        v75 = objc_opt_class();
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_486;
        v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v95[4] = v75;
        if (shouldStartTaskingToday_defaultOnce_484 != -1)
        {
          dispatch_once(&shouldStartTaskingToday_defaultOnce_484, v95);
        }

        if (shouldStartTaskingToday_classDebugEnabled_485 == 1)
        {
          v76 = MEMORY[0x1E696AEC0];
          [(PLSubmissionConfig *)self dice];
          v78 = [v76 stringWithFormat:@"dice=%f\n", v77];
          v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
          lastPathComponent8 = [v79 lastPathComponent];
          v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
          [PLCoreStorage logMessage:v78 fromFile:lastPathComponent8 fromFunction:v81 fromLineNumber:1123];

          v83 = PLLogCommon(v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [(PLSubmissionConfig *)self dice];
      if (v84 >= intValue)
      {
        goto LABEL_17;
      }
    }
  }

  v85 = 0x1E8518000;
  if (+[PLDefaults debugEnabled])
  {
    v86 = objc_opt_class();
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_492;
    v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v94[4] = v86;
    if (shouldStartTaskingToday_defaultOnce_490 != -1)
    {
      dispatch_once(&shouldStartTaskingToday_defaultOnce_490, v94);
    }

    if (shouldStartTaskingToday_classDebugEnabled_491 == 1)
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"onDemandTasking=%@", self->_ondemand];
      v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionConfig.m"];
      lastPathComponent9 = [v88 lastPathComponent];
      v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionConfig shouldStartTaskingToday]"];
      [PLCoreStorage logMessage:v87 fromFile:lastPathComponent9 fromFunction:v90 fromLineNumber:1128];

      v92 = PLLogCommon(v91);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v85 = 0x1E8518000uLL;
    }
  }

  ondemand = self->_ondemand;
  if (ondemand && [(NSString *)ondemand isEqualToString:@"PLTaskingOnDemandForced"])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.OTATasking", @"PLTaskingOnDemand"];
    v17 = 1;
    PLADClientAddValueForScalarKey();
    AnalyticsSendEventLazy();
    [*(v85 + 2440) submitTaskingDefaultsCheckStateToCA:@"PLTaskingOnDemand"];
    if (![PLDefaults BOOLForKey:@"PLTaskingOnDemandOptOut" ifNotSet:0])
    {
      goto LABEL_18;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.OTATasking", @"PLTaskingOnDemandOptOut"];
    PLADClientAddValueForScalarKey();
    AnalyticsSendEventLazy();
  }

LABEL_17:
  v17 = 0;
LABEL_18:

  return v17;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_416(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_415 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_422(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_421 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_443(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_442 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_449(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_448 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_458(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_457 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_480(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_479 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_486(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_485 = result;
  return result;
}

BOOL __45__PLSubmissionConfig_shouldStartTaskingToday__block_invoke_492(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  shouldStartTaskingToday_classDebugEnabled_491 = result;
  return result;
}

+ (BOOL)internalSubmissionBehavior
{
  if (!+[PLPlatform internalBuild])
  {
    return 0;
  }

  v2 = PLOSAPreferencesGetValue();
  v3 = v2;
  v4 = v2 == 0;
  if (v2)
  {
    v5 = PLLogSubmission(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Tasking blob received for internal device", v7, 2u);
    }
  }

  return v4;
}

- (void)initializeFilesToBeSubmitted
{
  v27 = *MEMORY[0x1E69E9840];
  self->_submittedFilesMask = 0;
  v3 = PLOSAPreferencesGetValue();
  taskingFiles = self->_taskingFiles;
  self->_taskingFiles = v3;

  v5 = self->_taskingFiles;
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (!v7)
    {
      goto LABEL_30;
    }

    v9 = v7;
    v10 = *v21;
    *&v8 = 138412290;
    v18 = v8;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if ([v12 isEqualToString:{@"PLL", v18}])
        {
          v13 = self->_submittedFilesMask | 1;
LABEL_23:
          self->_submittedFilesMask = v13;
          goto LABEL_24;
        }

        if ([v12 isEqualToString:@"PLL-Upgrade"])
        {
          v13 = self->_submittedFilesMask | 0x400;
          goto LABEL_23;
        }

        if ([v12 isEqualToString:@"MSS"])
        {
          v13 = self->_submittedFilesMask | 2;
          goto LABEL_23;
        }

        if ([v12 isEqualToString:@"SP"])
        {
          v13 = self->_submittedFilesMask | 4;
          goto LABEL_23;
        }

        if ([v12 isEqualToString:@"BDC"])
        {
          v13 = self->_submittedFilesMask | 8;
          goto LABEL_23;
        }

        if ([v12 isEqualToString:@"CE"])
        {
          v13 = self->_submittedFilesMask | 0x10;
          goto LABEL_23;
        }

        if ([v12 isEqualToString:@"XC"])
        {
          v13 = self->_submittedFilesMask | 0x20;
          goto LABEL_23;
        }

        v14 = [v12 isEqualToString:@"BG"];
        if (v14)
        {
          v13 = self->_submittedFilesMask | 0x40;
          goto LABEL_23;
        }

        log = PLLogSubmission(v14);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v25 = v12;
          _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Unsupported tasking files: %@", buf, 0xCu);
        }

LABEL_24:
        ++v11;
      }

      while (v9 != v11);
      v15 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v9 = v15;
      if (!v15)
      {
LABEL_30:

        return;
      }
    }
  }

  if (+[PLPlatform internalBuild])
  {
    submitReasonType = [(PLSubmissionConfig *)self submitReasonType];
    v17 = 127;
    if (submitReasonType == 2)
    {
      v17 = 3;
    }

    self->_submittedFilesMask = v17;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      self->_submittedFilesMask &= ~0x20uLL;
    }
  }
}

- (void)submitFileStatsToAnalytics
{
  if ([(PLSubmissionConfig *)self submitPLL])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmissionFiles", @"PLL"];
    PLADClientAddValueForScalarKey();
  }

  if ([(PLSubmissionConfig *)self submitPLLUpgrade])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmissionFiles", @"PLL"];
    PLADClientAddValueForScalarKey();
  }

  if ([(PLSubmissionConfig *)self submitMSS])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmissionFiles", @"MSS"];
    PLADClientAddValueForScalarKey();
  }

  if ([(PLSubmissionConfig *)self submitSP])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmissionFiles", @"SP"];
    PLADClientAddValueForScalarKey();
  }

  if ([(PLSubmissionConfig *)self submitBDC])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmissionFiles", @"BDC"];
    PLADClientAddValueForScalarKey();
  }

  if ([(PLSubmissionConfig *)self submitCE])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmissionFiles", @"CE"];
    PLADClientAddValueForScalarKey();
  }

  AnalyticsSendEventLazy();
}

id __48__PLSubmissionConfig_submitFileStatsToAnalytics__block_invoke(uint64_t a1)
{
  v12[7] = *MEMORY[0x1E69E9840];
  v11[0] = @"PLL";
  if ([*(a1 + 32) submitPLL])
  {
    v2 = &unk_1F540A260;
  }

  else
  {
    v2 = &unk_1F540A278;
  }

  v12[0] = v2;
  v11[1] = @"PLL-Upgrade";
  if ([*(a1 + 32) submitPLLUpgrade])
  {
    v3 = &unk_1F540A260;
  }

  else
  {
    v3 = &unk_1F540A278;
  }

  v12[1] = v3;
  v11[2] = @"MSS";
  if ([*(a1 + 32) submitMSS])
  {
    v4 = &unk_1F540A260;
  }

  else
  {
    v4 = &unk_1F540A278;
  }

  v12[2] = v4;
  v11[3] = @"SP";
  if ([*(a1 + 32) submitSP])
  {
    v5 = &unk_1F540A260;
  }

  else
  {
    v5 = &unk_1F540A278;
  }

  v12[3] = v5;
  v11[4] = @"BDC";
  if ([*(a1 + 32) submitBDC])
  {
    v6 = &unk_1F540A260;
  }

  else
  {
    v6 = &unk_1F540A278;
  }

  v12[4] = v6;
  v11[5] = @"CE";
  if ([*(a1 + 32) submitCE])
  {
    v7 = &unk_1F540A260;
  }

  else
  {
    v7 = &unk_1F540A278;
  }

  v12[5] = v7;
  v11[6] = @"XC";
  if ([*(a1 + 32) submitXC])
  {
    v8 = &unk_1F540A260;
  }

  else
  {
    v8 = &unk_1F540A278;
  }

  v12[6] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];

  return v9;
}

- (void)emitTaskingTypeSpecifiedEvent
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = [(PLSubmissionConfig *)self request];
  [dictionary setObject:request forKeyedSubscript:@"TaskingRequest"];

  taskingType = [(PLSubmissionConfig *)self taskingType];
  [dictionary setObject:taskingType forKeyedSubscript:@"TaskingType"];

  configUUID = [(PLSubmissionConfig *)self configUUID];
  uUIDString = [configUUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"TaskingUUID"];

  v7 = MEMORY[0x1E696AD98];
  taskingType2 = [(PLSubmissionConfig *)self taskingType];
  v9 = [v7 numberWithInt:taskingType2 != 0];
  [dictionary setObject:v9 forKeyedSubscript:@"TaskingTypeSpecified"];

  _submitTaskingTypeCAEventPayload(dictionary, @"Tasking type specified");
}

- (void)emitQueryEvent:(BOOL)event
{
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = [(PLSubmissionConfig *)self request];
  [dictionary setObject:request forKeyedSubscript:@"TaskingRequest"];

  taskingType = [(PLSubmissionConfig *)self taskingType];
  [dictionary setObject:taskingType forKeyedSubscript:@"TaskingType"];

  configUUID = [(PLSubmissionConfig *)self configUUID];
  uUIDString = [configUUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"TaskingUUID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:eventCopy];
  [dictionary setObject:v9 forKeyedSubscript:@"QueryResult"];

  if (eventCopy)
  {
    v10 = @"Query succceded";
  }

  else
  {
    v10 = @"Query failed";
  }

  _submitTaskingTypeCAEventPayload(dictionary, v10);
}

- (void)emitSubmitEvent
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = [(PLSubmissionConfig *)self request];
  [dictionary setObject:request forKeyedSubscript:@"TaskingRequest"];

  taskingType = [(PLSubmissionConfig *)self taskingType];
  [dictionary setObject:taskingType forKeyedSubscript:@"TaskingType"];

  configUUID = [(PLSubmissionConfig *)self configUUID];
  uUIDString = [configUUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"TaskingUUID"];

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ShouldSubmit"];
  _submitTaskingTypeCAEventPayload(dictionary, @"Device should submit");
}

+ (void)submitTaskingDefaultsCheckStateToCA:(id)a
{
  aCopy = a;
  v3 = aCopy;
  AnalyticsSendEventLazy();
}

id __58__PLSubmissionConfig_submitTaskingDefaultsCheckStateToCA___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"state";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)contextDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  filePath = [(PLSubmissionConfig *)self filePath];
  lastPathComponent = [filePath lastPathComponent];
  [dictionary setObject:lastPathComponent forKeyedSubscript:@"fileName"];

  ckTagConfig = [(PLSubmissionConfig *)self ckTagConfig];
  v7 = [ckTagConfig objectForKeyedSubscript:@"Internal"];
  if ([v7 isEqualToString:@"true"])
  {
    v8 = &unk_1F540A260;
  }

  else
  {
    v8 = &unk_1F540A278;
  }

  [dictionary setObject:v8 forKeyedSubscript:@"internal"];

  ckTagConfig2 = [(PLSubmissionConfig *)self ckTagConfig];
  v10 = [ckTagConfig2 objectForKeyedSubscript:@"Beta"];
  if ([v10 isEqualToString:@"true"])
  {
    v11 = &unk_1F540A260;
  }

  else
  {
    v11 = &unk_1F540A278;
  }

  [dictionary setObject:v11 forKeyedSubscript:@"seed"];

  [dictionary setObject:@"iOS" forKeyedSubscript:@"machineType"];
  v12 = [dictionary objectForKeyedSubscript:@"machineType"];
  v13 = [v12 isEqualToString:@"iOS"];

  if (v13 && +[PLPlatform isiPad])
  {
    [dictionary setObject:@"iPadOS" forKeyedSubscript:@"machineType"];
  }

  ckTagConfig3 = [(PLSubmissionConfig *)self ckTagConfig];
  v15 = [ckTagConfig3 objectForKeyedSubscript:@"Model"];

  if (v15)
  {
    ckTagConfig4 = [(PLSubmissionConfig *)self ckTagConfig];
    v17 = [ckTagConfig4 objectForKeyedSubscript:@"Model"];
    [dictionary setObject:v17 forKeyedSubscript:@"deviceModel"];
  }

  ckTagConfig5 = [(PLSubmissionConfig *)self ckTagConfig];
  v19 = [ckTagConfig5 objectForKeyedSubscript:@"TagUUID"];

  if (v19)
  {
    ckTagConfig6 = [(PLSubmissionConfig *)self ckTagConfig];
    v21 = [ckTagConfig6 objectForKeyedSubscript:@"TagUUID"];
    [dictionary setObject:v21 forKeyedSubscript:@"UUID"];
  }

  ckTagConfig7 = [(PLSubmissionConfig *)self ckTagConfig];
  v23 = [ckTagConfig7 objectForKeyedSubscript:@"Reason"];

  if (v23)
  {
    ckTagConfig8 = [(PLSubmissionConfig *)self ckTagConfig];
    v25 = [ckTagConfig8 objectForKeyedSubscript:@"Reason"];
    [dictionary setObject:v25 forKeyedSubscript:@"reason"];
  }

  ckTagConfig9 = [(PLSubmissionConfig *)self ckTagConfig];
  v27 = [ckTagConfig9 objectForKeyedSubscript:@"Build"];

  if (v27)
  {
    ckTagConfig10 = [(PLSubmissionConfig *)self ckTagConfig];
    v29 = [ckTagConfig10 objectForKeyedSubscript:@"Build"];
    [dictionary setObject:v29 forKeyedSubscript:@"build"];
  }

  ckTagConfig11 = [(PLSubmissionConfig *)self ckTagConfig];
  v31 = [ckTagConfig11 objectForKeyedSubscript:@"Date"];

  if (v31)
  {
    ckTagConfig12 = [(PLSubmissionConfig *)self ckTagConfig];
    v33 = [ckTagConfig12 objectForKeyedSubscript:@"Date"];
    [dictionary setObject:v33 forKeyedSubscript:@"date"];
  }

  ckTagConfig13 = [(PLSubmissionConfig *)self ckTagConfig];
  v35 = [ckTagConfig13 objectForKeyedSubscript:@"SubmittedFilesMask"];

  if (v35)
  {
    ckTagConfig14 = [(PLSubmissionConfig *)self ckTagConfig];
    v37 = [ckTagConfig14 objectForKeyedSubscript:@"SubmittedFilesMask"];
    [dictionary setObject:v37 forKeyedSubscript:@"submittedFilesMask"];
  }

  ckTagConfig15 = [(PLSubmissionConfig *)self ckTagConfig];
  v39 = [ckTagConfig15 objectForKeyedSubscript:@"ExtendedAttributes"];

  if (v39)
  {
    ckTagConfig16 = [(PLSubmissionConfig *)self ckTagConfig];
    v41 = [ckTagConfig16 objectForKeyedSubscript:@"ExtendedAttributes"];
    v42 = [v41 mutableCopy];

    v43 = [MEMORY[0x1E695DF00] now];
    v44 = [PLSubmissionConfig getDateMarkerFromSystemDate:v43];
    [v42 setObject:v44 forKeyedSubscript:@"HandoverDate"];

    serializedJSONString = [v42 serializedJSONString];
    [dictionary setObject:serializedJSONString forKeyedSubscript:@"extendedAttributes"];
  }

  v46 = [dictionary copy];

  return v46;
}

- (void)initWithReasonType:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D8611000, v1, OS_LOG_TYPE_ERROR, "Nil date(s), cannot init upgrade range: monotonicPowerlogStart=%@, monotonicPowerlogEnd=%@", v2, 0x16u);
}

- (void)initWithReasonType:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 startDate];
  v5 = [a1 endDate];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "monotonicPowerlogRange=[%@, %@]", &v6, 0x16u);
}

- (void)initWithReasonType:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1D8611000, v1, OS_LOG_TYPE_DEBUG, "startDate=%@, endDate=%@", v2, 0x16u);
}

- (void)isValidTaskingBlob
{
  v5 = *MEMORY[0x1E69E9840];
  taskingFiles = [self taskingFiles];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Invalid tasking files request: %@", v4, 0xCu);
}

- (void)conditionCheckForEnergy
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "Energy Tasking: last archived powerlog %@ does not exist!", v1, 0xCu);
}

- (void)shouldSubmitToday
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end