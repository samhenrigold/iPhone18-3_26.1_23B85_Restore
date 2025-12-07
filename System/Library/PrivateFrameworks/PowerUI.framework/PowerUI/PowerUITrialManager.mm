@interface PowerUITrialManager
- (BOOL)useTrialEnabledFeature:(id)feature;
- (PowerUITrialManager)initWithDefaultsDomain:(id)domain;
- (double)doubleFactorForName:(id)name;
- (double)loadTrialAdjustedHours;
- (double)loadTrialMinInputChargeDuration;
- (double)loadTrialThreshold;
- (id)loadModelFromPath:(id)path deleteExistingFiles:(BOOL)files;
- (id)loadTrialDurationModelByDeletingExistingModel:(BOOL)model;
- (id)loadTrialEngageModelByDeletingExistingModel:(BOOL)model;
- (int64_t)longFactorForName:(id)name;
- (void)addUpdateHandler:(id)handler;
- (void)loadTrialUpdates;
@end

@implementation PowerUITrialManager

- (PowerUITrialManager)initWithDefaultsDomain:(id)domain
{
  v37 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v34.receiver = self;
  v34.super_class = PowerUITrialManager;
  v6 = [(PowerUITrialManager *)&v34 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = os_log_create("com.apple.powerui.smartcharging", "trialmanager");
    log = v7->_log;
    v7->_log = v8;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of TrialManager init"];
    objc_storeStrong(&v7->_defaultsDomain, domain);
    client = [MEMORY[0x277D73660] client];
    trialClient = v7->_trialClient;
    v7->_trialClient = client;

    v12 = v7->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v7->_trialClient;
      *buf = 138412290;
      v36 = v13;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Trial Client %@", buf, 0xCu);
    }

    trackingId = [(TRIClient *)v7->_trialClient trackingId];
    trialTrackingID = v7->_trialTrackingID;
    v7->_trialTrackingID = trackingId;

    v16 = v7->_trialClient;
    v32 = 0;
    v33 = 0;
    v17 = [(TRIClient *)v16 trialIdentifiersWithNamespaceName:@"COREOS_CHARGE_PREDICTION" experimentId:&v33 deploymentId:0 treatmentId:&v32];
    v18 = v33;
    v19 = v32;
    if ((v17 & 1) == 0)
    {
      v20 = v7->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Failed to load experiment/treatment IDs", buf, 2u);
      }
    }

    experimentID = v7->_experimentID;
    v7->_experimentID = v18;
    v22 = v18;

    treatmentID = v7->_treatmentID;
    v7->_treatmentID = v19;
    v24 = v19;

    array = [MEMORY[0x277CBEB18] array];
    updateHandlers = v7->_updateHandlers;
    v7->_updateHandlers = array;

    v27 = v7->_trialClient;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __46__PowerUITrialManager_initWithDefaultsDomain___block_invoke;
    v30[3] = &unk_2782D3DA0;
    v31 = v7;
    v28 = [(TRIClient *)v27 addUpdateHandlerForNamespaceName:@"COREOS_CHARGE_PREDICTION" usingBlock:v30];
    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of TrialManager init"];
  }

  return v7;
}

void __46__PowerUITrialManager_initWithDefaultsDomain___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) updateHandlers];
  v3 = [v2 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [*(a1 + 32) loadTrialUpdates];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)loadTrialUpdates
{
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of loadTrialUpdates"];
  os_unfair_lock_lock(&self->_lock);
  [(TRIClient *)self->_trialClient refresh];
  trialClient = self->_trialClient;
  v12 = 0;
  v13 = 0;
  v4 = [(TRIClient *)trialClient trialIdentifiersWithNamespaceName:@"COREOS_CHARGE_PREDICTION" experimentId:&v13 deploymentId:0 treatmentId:&v12];
  v5 = v13;
  v6 = v12;
  if ((v4 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load experiment/treatment IDs", v11, 2u);
    }
  }

  experimentID = self->_experimentID;
  self->_experimentID = v5;
  v9 = v5;

  treatmentID = self->_treatmentID;
  self->_treatmentID = v6;

  os_unfair_lock_unlock(&self->_lock);
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of loadTrialUpdates"];
}

- (int64_t)longFactorForName:(id)name
{
  v3 = [(PowerUITrialManager *)self trialFactor:name];
  longValue = [v3 longValue];

  return longValue;
}

- (double)doubleFactorForName:(id)name
{
  v3 = [(PowerUITrialManager *)self trialFactor:name];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)addUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  updateHandlers = self->_updateHandlers;
  v6 = MEMORY[0x21CEF8A60](handlerCopy);

  [(NSMutableArray *)updateHandlers addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)loadTrialEngageModelByDeletingExistingModel:(BOOL)model
{
  modelCopy = model;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Loading trial engagement model", v11, 2u);
  }

  v6 = [(PowerUITrialManager *)self trialFactor:@"trialEngageModel"];
  fileValue = [v6 fileValue];
  path = [fileValue path];
  v9 = [(PowerUITrialManager *)self loadModelFromPath:path deleteExistingFiles:modelCopy];

  return v9;
}

- (id)loadTrialDurationModelByDeletingExistingModel:(BOOL)model
{
  modelCopy = model;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Loading trial duration model", v11, 2u);
  }

  v6 = [(PowerUITrialManager *)self trialFactor:@"trialDurationModel"];
  fileValue = [v6 fileValue];
  path = [fileValue path];
  v9 = [(PowerUITrialManager *)self loadModelFromPath:path deleteExistingFiles:modelCopy];

  return v9;
}

- (double)loadTrialThreshold
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUITrialManager *)self trialFactor:@"engagementThreshold"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Threshold value is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)loadTrialAdjustedHours
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUITrialManager *)self trialFactor:@"adjustedHours"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Duration hours is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)loadTrialMinInputChargeDuration
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUITrialManager *)self trialFactor:@"minInputChargeDuration"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Minimum charge duration considered for model input is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (BOOL)useTrialEnabledFeature:(id)feature
{
  v14 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  featureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"trialOverride.%@", featureCopy];
  v6 = [PowerUISmartChargeUtilities numberForPreferenceKey:featureCopy inDomain:self->_defaultsDomain];

  if (v6 && [v6 BOOLValue])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = featureCopy;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Feature '%@' enabled via defaults override", buf, 0xCu);
    }

    bOOLeanValue = 1;
  }

  else
  {
    v9 = [(PowerUITrialManager *)self trialFactor:featureCopy];
    v10 = self->_log;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PowerUITrialManager *)v10 useTrialEnabledFeature:v9];
      }

      bOOLeanValue = [v9 BOOLeanValue];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager useTrialEnabledFeature:];
      }

      bOOLeanValue = 0;
    }
  }

  return bOOLeanValue;
}

- (id)loadModelFromPath:(id)path deleteExistingFiles:(BOOL)files
{
  filesCopy = files;
  v130 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = os_transaction_create();
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of loadModelFromPath"];
  log = self->_log;
  if (pathCopy)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
    }

    if (([pathCopy isAbsolutePath] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 pathForResource:pathCopy ofType:0];

      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v121 = v10;
        _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Not an absolute path, loading absolute path...Path is %@", buf, 0xCu);
      }

      if (v10)
      {
        v12 = v10;

        pathCopy = v12;
      }
    }

    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\.(\\d+?)\\." options:1 error:0];
    v14 = [v13 firstMatchInString:pathCopy options:0 range:{0, objc_msgSend(pathCopy, "length")}];
    v15 = v14;
    if (v14)
    {
      range = [v14 range];
      v18 = [pathCopy substringWithRange:{range, v17}];
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }

      v18 = 0;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v117 = 0;
    if ([defaultManager fileExistsAtPath:@"/var/mobile/Library/PowerUI" isDirectory:&v117])
    {
      v21 = 0;
    }

    else
    {
      v116 = 0;
      v22 = [defaultManager createDirectoryAtPath:@"/var/mobile/Library/PowerUI" withIntermediateDirectories:1 attributes:0 error:&v116];
      v21 = v116;
      if ((v22 & 1) == 0)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v19 = 0;
        goto LABEL_101;
      }
    }

    if (v18)
    {
      v89 = filesCopy;
      v115 = v21;
      v98 = defaultManager;
      v23 = [defaultManager contentsOfDirectoryAtPath:@"/var/mobile/Library/PowerUI" error:&v115];
      v24 = v115;

      if (v24)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v19 = 0;
        goto LABEL_100;
      }

      v91 = v15;
      v93 = v13;
      v95 = v7;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v111 objects:v129 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v112;
LABEL_32:
        v29 = 0;
        while (1)
        {
          if (*v112 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v111 + 1) + 8 * v29);
          if ([v30 containsString:v18])
          {
            break;
          }

          if (v27 == ++v29)
          {
            v27 = [v25 countByEnumeratingWithState:&v111 objects:v129 count:16];
            if (v27)
            {
              goto LABEL_32;
            }

            goto LABEL_38;
          }
        }

        v31 = MEMORY[0x277CBEBC0];
        v128[0] = @"/var/mobile/Library/PowerUI";
        v128[1] = v30;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
        v21 = [v31 fileURLWithPathComponents:v32];

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v13 = v93;
        v7 = v95;
        v15 = v91;
        if (v21)
        {
          v23 = v21;
          v97 = v18;
          if (v89)
          {
            path = [v21 path];
            v34 = self->_log;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v121 = path;
              _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "Removing existing files from %@", buf, 0xCu);
            }

            v110 = 0;
            v35 = [v98 removeItemAtPath:path error:&v110];
            v21 = v110;
            if ((v35 & 1) == 0)
            {
              v36 = self->_log;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v121 = path;
                v122 = 2112;
                v123 = v21;
                _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v21 = 0;
          }

          defaultManager = v98;
          goto LABEL_53;
        }
      }

      else
      {
LABEL_38:

        v21 = 0;
        v13 = v93;
        v7 = v95;
        v15 = v91;
      }

      defaultManager = v98;
    }

    v37 = self->_log;
    v97 = v18;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEFAULT, "Could not find existing compiled model.", buf, 2u);
    }

    v23 = 0;
LABEL_53:
    path2 = [v23 path];
    v39 = defaultManager;
    v40 = [defaultManager fileExistsAtPath:path2 isDirectory:&v117];

    if (v40)
    {
      v109 = v21;
      v41 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v23 error:&v109];
      v24 = v109;

      v42 = self->_log;
      if (v24)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v19 = 0;
      }

      else
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Load existing compiled model.", buf, 2u);
        }

        v19 = v41;
      }

      defaultManager = v39;
      v18 = v97;
      goto LABEL_100;
    }

    v90 = v23;
    v92 = v15;
    v94 = v13;
    v96 = v7;
    v43 = MEMORY[0x277CCACA8];
    temporaryDirectory = [v39 temporaryDirectory];
    path3 = [temporaryDirectory path];
    v127[0] = path3;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v127[1] = uUIDString;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
    v49 = [v43 pathWithComponents:v48];

    v50 = v49;
    v108 = v21;
    LOBYTE(v49) = [v39 createDirectoryAtPath:v49 withIntermediateDirectories:1 attributes:0 error:&v108];
    v24 = v108;

    v88 = v50;
    if ((v49 & 1) == 0)
    {
      v15 = v92;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }

      v19 = 0;
      v13 = v94;
      v7 = v96;
      defaultManager = v39;
      v18 = v97;
      v23 = v90;
      goto LABEL_99;
    }

    v51 = MEMORY[0x277CBEBC0];
    v126[0] = v50;
    lastPathComponent = [pathCopy lastPathComponent];
    v126[1] = lastPathComponent;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
    v54 = [v51 fileURLWithPathComponents:v53];

    v87 = v54;
    path4 = [v54 path];
    v107 = v24;
    v99 = v39;
    LOBYTE(lastPathComponent) = [v39 copyItemAtPath:pathCopy toPath:path4 error:&v107];
    v56 = v107;

    v15 = v92;
    if ((lastPathComponent & 1) == 0)
    {
      v63 = self->_log;
      v13 = v94;
      v7 = v96;
      v18 = v97;
      v23 = v90;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v121 = pathCopy;
        v122 = 2112;
        v123 = v87;
        v124 = 2112;
        v125 = v56;
        _os_log_error_impl(&dword_21B766000, v63, OS_LOG_TYPE_ERROR, "Failed to copy model from %@ to %@ -- %@", buf, 0x20u);
      }

      v19 = 0;
      defaultManager = v99;
      goto LABEL_98;
    }

    v57 = MEMORY[0x277CBEBC0];
    v119 = @"/var/mobile/Library/PowerUI";
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
    v59 = [v57 fileURLWithPathComponents:v58];

    v18 = v97;
    v23 = v90;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
    }

    v60 = MEMORY[0x277CBFEC0];
    defaultOptions = [MEMORY[0x277CBFEC8] defaultOptions];
    v106 = 0;
    v84 = v59;
    v62 = [v60 compileSpecificationAtURL:v87 toURL:v59 options:defaultOptions error:&v106];
    v56 = v106;

    v13 = v94;
    v7 = v96;
    v83 = v62;
    if (v56)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }
    }

    else
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = [v62 outputFiles];
      v64 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v103;
LABEL_79:
        v67 = 0;
        while (1)
        {
          if (*v103 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v68 = *(*(&v102 + 1) + 8 * v67);
          pathComponents = [v68 pathComponents];
          lastObject = [pathComponents lastObject];
          v71 = [@"coremldata.bin" isEqualToString:lastObject];

          if (v71)
          {
            break;
          }

          if (v65 == ++v67)
          {
            v65 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
            if (v65)
            {
              goto LABEL_79;
            }

            goto LABEL_85;
          }
        }

        v72 = MEMORY[0x277CBEBC0];
        pathComponents2 = [v68 pathComponents];
        pathComponents3 = [v68 pathComponents];
        v75 = [pathComponents2 subarrayWithRange:{0, objc_msgSend(pathComponents3, "count") - 1}];
        v76 = [v72 fileURLWithPathComponents:v75];

        if (!v76)
        {
          goto LABEL_93;
        }

        v13 = v94;
        v7 = v96;
        v23 = v90;
        v15 = v92;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v101 = 0;
        obja = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v76 error:&v101];
        v77 = v101;
        if (v77)
        {
          v56 = v77;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
          }

          v19 = 0;
          v78 = obja;
        }

        else
        {
          v100 = 0;
          v80 = [v99 removeItemAtPath:v88 error:&v100];
          v56 = v100;
          if ((v80 & 1) == 0)
          {
            v81 = self->_log;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v121 = v88;
              v122 = 2112;
              v123 = v56;
              _os_log_impl(&dword_21B766000, v81, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
            }
          }

          v82 = self->_log;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v82, OS_LOG_TYPE_DEFAULT, "Successfully compiled trial model", buf, 2u);
          }

          [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of loadModelFromPath"];
          v78 = obja;
          v19 = obja;
        }

        goto LABEL_97;
      }

LABEL_85:

LABEL_93:
      v13 = v94;
      v7 = v96;
      v23 = v90;
      v15 = v92;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }

      v56 = 0;
    }

    v19 = 0;
LABEL_97:
    defaultManager = v99;

LABEL_98:
    v24 = v56;
LABEL_99:

LABEL_100:
    v21 = v24;
LABEL_101:

    goto LABEL_102;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load model from null path", buf, 2u);
  }

  v19 = 0;
LABEL_102:

  return v19;
}

- (void)useTrialEnabledFeature:(void *)a1 .cold.1(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 BOOLeanValue];
  _os_log_debug_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEBUG, "Use sleep based predictor: %d", v4, 8u);
}

- (void)useTrialEnabledFeature:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_21B766000, v1, OS_LOG_TYPE_DEBUG, "Request to load model from path: %@ - asked to delete: %d", v2, 0x12u);
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.8()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "modelUrl: %@ -- workingDirURL: %@", v1, 0x16u);
}

@end