@interface ATXModeSetupPredictionTrainer
- (ATXModeSetupPredictionTrainer)init;
- (ATXModeSetupPredictionTrainer)initWithCacheBasePath:(id)path;
- (BOOL)modeIsCurrentlyCreated:(unint64_t)created;
- (BOOL)modeIsEligibleForSetupPrediction:(unint64_t)prediction;
- (BOOL)trainSetupPredictionIfModeAffinityWasTrainedRecentlyForMode:(unint64_t)mode;
- (id)pathForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (void)persistPredictionScores:(id)scores;
- (void)trainWithXPCActivity:(id)activity shouldSkipRetrainingIfTrainedRecently:(BOOL)recently shouldSkipEligiblilityCheckForSetupPrediction:(BOOL)prediction;
@end

@implementation ATXModeSetupPredictionTrainer

- (ATXModeSetupPredictionTrainer)init
{
  modeCachesRootDirectory = [MEMORY[0x277CEBCB0] modeCachesRootDirectory];
  v4 = [(ATXModeSetupPredictionTrainer *)self initWithCacheBasePath:modeCachesRootDirectory];

  return v4;
}

- (ATXModeSetupPredictionTrainer)initWithCacheBasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ATXModeSetupPredictionTrainer;
  v5 = [(ATXModeSetupPredictionTrainer *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    cacheBasePath = v5->_cacheBasePath;
    v5->_cacheBasePath = v6;
  }

  return v5;
}

- (void)trainWithXPCActivity:(id)activity shouldSkipRetrainingIfTrainedRecently:(BOOL)recently shouldSkipEligiblilityCheckForSetupPrediction:(BOOL)prediction
{
  predictionCopy = prediction;
  recentlyCopy = recently;
  v46 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v38 = activityCopy;
  if (recentlyCopy)
  {
    v9 = [(ATXModeSetupPredictionTrainer *)self pathForModeSetupPredictionCacheWithDirectory:@"modeSetupPredictions"];
    v10 = [MEMORY[0x277CEBCB0] modificationDateOfFileAtPath:v9];
    [v10 timeIntervalSinceNow];
    v12 = v11;

    if (v12 < 0.0 && v12 > -21600.0)
    {
      v14 = __atxlog_handle_modes(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v45 = -v12;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Skipping inference because this was done recently. Cache age: %.2f", buf, 0xCu);
      }

      goto LABEL_30;
    }
  }

  v15 = __atxlog_handle_modes(activityCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Started running Mode Setup Prediction inference...", buf, 2u);
  }

  v37 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = allModesForModeSetupPrediction();
  v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v16)
  {
    goto LABEL_24;
  }

  v18 = v16;
  v19 = *v40;
  *&v17 = 138412290;
  v35 = v17;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v39 + 1) + 8 * i);
      v22 = objc_autoreleasePoolPush();
      unsignedIntegerValue = [v21 unsignedIntegerValue];
      v24 = unsignedIntegerValue;
      if (predictionCopy)
      {
        self->_modeIsEligibleForSetupPrediction = 1;
      }

      else
      {
        unsignedIntegerValue = [(ATXModeSetupPredictionTrainer *)self modeIsEligibleForSetupPrediction:unsignedIntegerValue];
        self->_modeIsEligibleForSetupPrediction = unsignedIntegerValue;
        if (!unsignedIntegerValue)
        {
          goto LABEL_21;
        }
      }

      v25 = __atxlog_handle_modes(unsignedIntegerValue);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        ATXModeToString();
        v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = v35;
        v45 = v26;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Running Mode Prediction inference for Mode %@...", buf, 0xCu);
      }

      v27 = [[ATXModeSetupPredictionModel alloc] initWithMode:v24];
      [(ATXModeSetupPredictionModel *)v27 probabilityScore];
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v29 = ATXModeToString();
      [v37 setObject:v28 forKey:v29];

LABEL_21:
      didDefer = [v38 didDefer];
      if (didDefer)
      {
        v33 = __atxlog_handle_modes(didDefer);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          ATXModeToString();
          v34 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = v35;
          v45 = v34;
          _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Finished making inference for mode %@, but deferring further inference for remaining modes because XPC activity asked for deferral.", buf, 0xCu);
        }

        v9 = v37;
        [(ATXModeSetupPredictionTrainer *)self persistPredictionScores:v37];
        objc_autoreleasePoolPop(v22);

        goto LABEL_30;
      }

      objc_autoreleasePoolPop(v22);
    }

    v18 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v32 = __atxlog_handle_modes(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Finished running Mode Setup Prediction inference.", buf, 2u);
  }

  v9 = v37;
  [(ATXModeSetupPredictionTrainer *)self persistPredictionScores:v37];
LABEL_30:
}

- (BOOL)trainSetupPredictionIfModeAffinityWasTrainedRecentlyForMode:(unint64_t)mode
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = ATXModeToString();
  v5 = [(ATXModeSetupPredictionTrainer *)self pathForModeEntityTypeIdentifier:@"apps" modeIdentifier:v4];

  v6 = [MEMORY[0x277CEBCB0] modificationDateOfFileAtPath:v5];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  v10 = v8 > -604800.0 && v8 < 0.0;
  if (!v10)
  {
    v11 = __atxlog_handle_modes(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = ATXModeToString();
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Skipping Mode Setup Prediction inference because the Mode Affinity model for this mode: %@ has not been trained within the last 7 days", &v14, 0xCu);
    }
  }

  return v10;
}

- (BOOL)modeIsCurrentlyCreated:(unint64_t)created
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  getAllModeConfigurationsWithoutCache = [mEMORY[0x277CEB440] getAllModeConfigurationsWithoutCache];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ATXModeSetupPredictionTrainer_modeIsCurrentlyCreated___block_invoke;
  v8[3] = &unk_27859F510;
  v6 = mEMORY[0x277CEB440];
  v9 = v6;
  v10 = &v12;
  createdCopy = created;
  [getAllModeConfigurationsWithoutCache enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(created) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return created;
}

void __56__ATXModeSetupPredictionTrainer_modeIsCurrentlyCreated___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a1[4];
  v8 = [v6 mode];
  v9 = [v7 atxModeForDNDSemanticType:{objc_msgSend(v8, "semanticType")}];

  if (a1[6] == v9)
  {
    v10 = [v6 created];

    if (v10)
    {
      *(*(a1[5] + 8) + 24) = 1;
      v12 = __atxlog_handle_modes(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = ATXModeToString();
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Skipping Mode Setup Prediction inference because this Mode: %@ is currently created.", &v14, 0xCu);
      }

      *a4 = 1;
    }
  }
}

- (BOOL)modeIsEligibleForSetupPrediction:(unint64_t)prediction
{
  if ([(ATXModeSetupPredictionTrainer *)self modeIsCurrentlyCreated:?])
  {
    return 0;
  }

  return [(ATXModeSetupPredictionTrainer *)self trainSetupPredictionIfModeAffinityWasTrainedRecentlyForMode:prediction];
}

- (id)pathForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  cacheBasePath = self->_cacheBasePath;
  v6 = MEMORY[0x277CCACA8];
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  modeIdentifierCopy = [[v6 alloc] initWithFormat:@"%@_%@", identifierCopy, modeIdentifierCopy];

  v10 = [(NSString *)cacheBasePath stringByAppendingPathComponent:modeIdentifierCopy];

  return v10;
}

- (void)persistPredictionScores:(id)scores
{
  scoresCopy = scores;
  v5 = objc_autoreleasePoolPush();
  v18 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:scoresCopy requiringSecureCoding:1 error:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v14 = [(ATXModeSetupPredictionTrainer *)self pathForModeSetupPredictionCacheWithDirectory:@"modeSetupPredictions"];
    v17 = 0;
    v10 = [v6 writeToFile:v14 options:1073741825 error:&v17];
    v11 = v17;
    v12 = __atxlog_handle_modes(v11);
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: SUCCESS - Finished writing mode setup probability scores.", v16, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(ATXModeSetupPredictionTrainer *)v11 persistPredictionScores:v13];
    }
  }

  else
  {
    v14 = __atxlog_handle_modes(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXModeSetupPredictionTrainer *)v8 persistPredictionScores:v14];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)persistPredictionScores:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXModeSetupPredictionTrainer: FAILURE - Unable to write mode setup probability scores with error: %@", &v2, 0xCu);
}

- (void)persistPredictionScores:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXModeSetupPredictionTrainer: FAILURE - Unable to archive mode setup probability scores with error: %@", &v2, 0xCu);
}

@end