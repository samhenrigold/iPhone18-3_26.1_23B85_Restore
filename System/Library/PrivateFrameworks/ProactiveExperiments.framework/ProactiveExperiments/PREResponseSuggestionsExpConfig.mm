@interface PREResponseSuggestionsExpConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfig:(id)config;
- (PREResponseSuggestionsExpConfig)initWithNamespaceName:(id)name withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets;
- (void)_fillDefaultValueForFactors;
- (void)_setDefaultValuesForFactors;
@end

@implementation PREResponseSuggestionsExpConfig

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PREResponseSuggestionsExpConfig *)self isEqualToConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    goto LABEL_28;
  }

  v5 = self->_treatmentName;
  v6 = v5;
  if (v5 == configCopy[3])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v8 = self->_inferenceModelFilePath;
  v9 = v8;
  if (v8 == configCopy[5])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v11 = self->_inferenceModelConfigPath;
  v12 = v11;
  if (v11 == configCopy[6])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v14 = self->_espressoBinFilePath;
  v15 = v14;
  if (v14 == configCopy[7])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v17 = self->_vocabFilePath;
  v18 = v17;
  if (v17 == configCopy[8])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v20 = self->_rolloutIdentifiers;
  v21 = v20;
  if (v20 == configCopy[9])
  {
  }

  else
  {
    v22 = [(TRIRolloutIdentifiers *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v23 = self->_experimentIdentifiers;
  v24 = v23;
  if (v23 == configCopy[10])
  {

    goto LABEL_31;
  }

  v25 = [(TRIExperimentIdentifiers *)v23 isEqual:?];

  if (v25)
  {
LABEL_31:
    v26 = self->_isMLModelEnabled == *(configCopy + 16);
    goto LABEL_29;
  }

LABEL_28:
  v26 = 0;
LABEL_29:

  return v26;
}

- (void)_fillDefaultValueForFactors
{
  p_treatmentName = &self->_treatmentName;
  if ([(NSString *)self->_treatmentName length])
  {
    v4 = *p_treatmentName;
  }

  else
  {
    v4 = @"DEFAULT_RESPONSE_KIT";
  }

  objc_storeStrong(p_treatmentName, v4);
  if ([(NSString *)self->_inferenceModelFilePath length])
  {
    inferenceModelFilePath = self->_inferenceModelFilePath;
  }

  else
  {
    inferenceModelFilePath = 0;
  }

  objc_storeStrong(&self->_inferenceModelFilePath, inferenceModelFilePath);
  if ([(NSString *)self->_inferenceModelConfigPath length])
  {
    inferenceModelConfigPath = self->_inferenceModelConfigPath;
  }

  else
  {
    inferenceModelConfigPath = 0;
  }

  objc_storeStrong(&self->_inferenceModelConfigPath, inferenceModelConfigPath);
  if ([(NSString *)self->_espressoBinFilePath length])
  {
    espressoBinFilePath = self->_espressoBinFilePath;
  }

  else
  {
    espressoBinFilePath = 0;
  }

  objc_storeStrong(&self->_espressoBinFilePath, espressoBinFilePath);
  if ([(NSString *)self->_vocabFilePath length])
  {
    vocabFilePath = self->_vocabFilePath;
  }

  else
  {
    vocabFilePath = 0;
  }

  objc_storeStrong(&self->_vocabFilePath, vocabFilePath);
  rolloutId = [(TRIRolloutIdentifiers *)self->_rolloutIdentifiers rolloutId];
  if ([rolloutId length])
  {
    rolloutIdentifiers = self->_rolloutIdentifiers;
  }

  else
  {
    rolloutIdentifiers = 0;
  }

  objc_storeStrong(&self->_rolloutIdentifiers, rolloutIdentifiers);

  experimentIdentifiers = self->_experimentIdentifiers;
  p_experimentIdentifiers = &self->_experimentIdentifiers;
  treatmentId = [(TRIExperimentIdentifiers *)experimentIdentifiers treatmentId];
  if ([treatmentId length])
  {
    v13 = *p_experimentIdentifiers;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(p_experimentIdentifiers, v13);
}

- (void)_setDefaultValuesForFactors
{
  treatmentName = self->_treatmentName;
  self->_treatmentName = @"DEFAULT_RESPONSE_KIT";

  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = 0;

  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = 0;

  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = 0;

  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = 0;

  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = 0;

  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = 0;

  self->_isMLModelEnabled = 0;
}

- (PREResponseSuggestionsExpConfig)initWithNamespaceName:(id)name withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets
{
  v113[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  clientCopy = client;
  v94.receiver = self;
  v94.super_class = PREResponseSuggestionsExpConfig;
  v11 = [(PREResponseSuggestionsExpConfig *)&v94 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

  if (!nameCopy)
  {
    [(PREResponseSuggestionsExpConfig *)v11 _setDefaultValuesForFactors];
    goto LABEL_32;
  }

  v13 = pre_responses_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v96 = nameCopy;
    _os_log_impl(&dword_260CE3000, v13, OS_LOG_TYPE_DEFAULT, "PRE Experiment config -- setting up config for namespace %@", buf, 0xCu);
  }

  [clientCopy refresh];
  objc_storeStrong(&v12->_namespaceName, name);
  v14 = [clientCopy rolloutIdentifiersWithNamespaceName:v12->_namespaceName];
  rolloutIdentifiers = v12->_rolloutIdentifiers;
  v12->_rolloutIdentifiers = v14;

  v16 = [clientCopy experimentIdentifiersWithNamespaceName:v12->_namespaceName];
  experimentIdentifiers = v12->_experimentIdentifiers;
  v12->_experimentIdentifiers = v16;

  treatmentId = [(TRIExperimentIdentifiers *)v12->_experimentIdentifiers treatmentId];
  if ([treatmentId length])
  {
    goto LABEL_6;
  }

  rolloutId = [(TRIRolloutIdentifiers *)v12->_rolloutIdentifiers rolloutId];
  v20 = [rolloutId length];

  if (!v20)
  {
    treatmentId = pre_responses_handle();
    if (os_log_type_enabled(treatmentId, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, treatmentId, OS_LOG_TYPE_DEFAULT, "Smart Reply using on-device values since treatment id and rollout id is unset.", buf, 2u);
    }

LABEL_6:
  }

  treatmentId2 = [(TRIExperimentIdentifiers *)v12->_experimentIdentifiers treatmentId];
  if ([treatmentId2 length])
  {
    experimentId = [(TRIExperimentIdentifiers *)v12->_experimentIdentifiers experimentId];
    v23 = [experimentId length];

    if (!v23)
    {
      v24 = pre_responses_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        namespaceName = v12->_namespaceName;
        *buf = 138412290;
        v96 = namespaceName;
        v26 = "Smart Reply: treatmentId without experimentId for namespace %@";
        v27 = v24;
        v28 = 12;
LABEL_66:
        _os_log_fault_impl(&dword_260CE3000, v27, OS_LOG_TYPE_FAULT, v26, buf, v28);
        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v29 = [clientCopy levelForFactor:@"modelName" withNamespaceName:v12->_namespaceName];
  stringValue = [v29 stringValue];
  treatmentName = v12->_treatmentName;
  v12->_treatmentName = stringValue;

  v32 = [clientCopy levelForFactor:@"modelDescription" withNamespaceName:v12->_namespaceName];
  stringValue2 = [v32 stringValue];
  inferenceModelDescription = v12->_inferenceModelDescription;
  v12->_inferenceModelDescription = stringValue2;

  v35 = [clientCopy levelForFactor:@"mlModelEnabled" withNamespaceName:v12->_namespaceName];
  v12->_isMLModelEnabled = [v35 BOOLeanValue];

  if ([(NSString *)v12->_treatmentName length])
  {
    if (v12->_isMLModelEnabled)
    {
      if (![(NSString *)v12->_inferenceModelDescription length])
      {
        v36 = pre_responses_handle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_260CE3000, v36, OS_LOG_TYPE_FAULT, "Smart Reply: model description expected but not found", buf, 2u);
        }
      }

      v37 = [clientCopy levelForFactor:@"modelAssets" withNamespaceName:v12->_namespaceName];
      directoryValue = [v37 directoryValue];

      if ([directoryValue hasPath] & 1) != 0 || (objc_msgSend(directoryValue, "isOnDemand"))
      {
        if (([directoryValue hasPath] & 1) != 0 || assets)
        {
          if ([directoryValue hasPath])
          {
            path = [directoryValue path];
            v89 = 0;
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v43 = [defaultManager fileExistsAtPath:path isDirectory:&v89];

            if (v43 && (v89 & 1) != 0)
            {
              v44 = [(NSString *)v12->_treatmentName stringByAppendingString:@".model.chunk"];
              v45 = [(NSString *)v12->_treatmentName stringByAppendingString:@".config.plist"];
              v46 = [(NSString *)v12->_treatmentName stringByAppendingString:@".espresso.bin"];
              v47 = [(NSString *)v12->_treatmentName stringByAppendingString:@".vocab.trie"];
              v48 = [path stringByAppendingPathComponent:v44];
              inferenceModelFilePath = v12->_inferenceModelFilePath;
              v12->_inferenceModelFilePath = v48;

              v88 = v45;
              v50 = [path stringByAppendingPathComponent:v45];
              inferenceModelConfigPath = v12->_inferenceModelConfigPath;
              v12->_inferenceModelConfigPath = v50;

              v87 = v46;
              v52 = [path stringByAppendingPathComponent:v46];
              espressoBinFilePath = v12->_espressoBinFilePath;
              v12->_espressoBinFilePath = v52;

              v86 = v47;
              v54 = [path stringByAppendingPathComponent:v47];
              vocabFilePath = v12->_vocabFilePath;
              v12->_vocabFilePath = v54;

              defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
              LOBYTE(v46) = [defaultManager2 isReadableFileAtPath:v12->_inferenceModelFilePath];

              if ((v46 & 1) == 0)
              {
                v57 = v12->_inferenceModelFilePath;
                v12->_inferenceModelFilePath = 0;
              }

              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
              v59 = [defaultManager3 isReadableFileAtPath:v12->_inferenceModelConfigPath];

              if ((v59 & 1) == 0)
              {
                v60 = v12->_inferenceModelConfigPath;
                v12->_inferenceModelConfigPath = 0;
              }

              defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
              v62 = [defaultManager4 isReadableFileAtPath:v12->_espressoBinFilePath];

              if ((v62 & 1) == 0)
              {
                v63 = v12->_espressoBinFilePath;
                v12->_espressoBinFilePath = 0;
              }

              defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
              v65 = [defaultManager5 isReadableFileAtPath:v12->_vocabFilePath];

              if ((v65 & 1) == 0)
              {
                v66 = v12->_vocabFilePath;
                v12->_vocabFilePath = 0;
              }

              if (v12->_inferenceModelConfigPath && (v12->_inferenceModelFilePath || v12->_espressoBinFilePath))
              {
                v67 = pre_responses_handle();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = v12->_treatmentName;
                  v81 = v12->_inferenceModelDescription;
                  v82 = v12->_inferenceModelFilePath;
                  v83 = v12->_inferenceModelConfigPath;
                  v84 = v12->_espressoBinFilePath;
                  v85 = v12->_vocabFilePath;
                  experimentId2 = [(TRIExperimentIdentifiers *)v12->_experimentIdentifiers experimentId];
                  treatmentId3 = [(TRIExperimentIdentifiers *)v12->_experimentIdentifiers treatmentId];
                  isMLModelEnabled = v12->_isMLModelEnabled;
                  *buf = 138414338;
                  v96 = v68;
                  v97 = 2112;
                  v98 = v81;
                  v99 = 2112;
                  v100 = v82;
                  v101 = 2112;
                  v102 = v83;
                  v103 = 2112;
                  v104 = v84;
                  v105 = 2112;
                  v106 = v85;
                  v107 = 2112;
                  v108 = experimentId2;
                  v109 = 2112;
                  v110 = treatmentId3;
                  v111 = 1024;
                  v112 = isMLModelEnabled;
                  _os_log_impl(&dword_260CE3000, v67, OS_LOG_TYPE_DEFAULT, "Smart Reply reading from trial factor values {treatmentName: %@ inferenceModelDescription: %@ inferenceModelFilePath: %@ inferenceModelConfigPath: %@ espresso.bin: %@ vocab: %@ experimentId: %@ treatmentId: %@ isMLModelEnabled: %d}", buf, 0x58u);
                }

                v40 = v12;
              }

              else
              {
                v77 = pre_responses_handle();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
                {
                  v78 = v12->_inferenceModelFilePath;
                  v79 = v12->_inferenceModelConfigPath;
                  v80 = v12->_espressoBinFilePath;
                  *buf = 138412802;
                  v96 = v78;
                  v97 = 2112;
                  v98 = v79;
                  v99 = 2112;
                  v100 = v80;
                  _os_log_fault_impl(&dword_260CE3000, v77, OS_LOG_TYPE_FAULT, "Smart Reply: some required file factor not readable with config path %@, inference path %@, and espresso bin path %@", buf, 0x20u);
                }

                v40 = 0;
              }
            }

            else
            {
              v44 = pre_responses_handle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_260CE3000, v44, OS_LOG_TYPE_FAULT, "Smart Reply: directory factor download completed, but directory path not found", buf, 2u);
              }

              v40 = 0;
            }

            goto LABEL_60;
          }

          v72 = pre_responses_handle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_260CE3000, v72, OS_LOG_TYPE_DEFAULT, "Smart Reply: assets directory factor is being queued for download", buf, 2u);
          }

          if (initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasOnceToken11 != -1)
          {
            dispatch_once(&initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasOnceToken11, &__block_literal_global_1112);
          }

          v113[0] = @"modelAssets";
          v73 = MEMORY[0x277CBEA60];
          path = initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
          v74 = [v73 arrayWithObjects:v113 count:1];
          v75 = v12->_namespaceName;
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __94__PREResponseSuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_2;
          v92[3] = &unk_279ABAEA8;
          v93 = nameCopy;
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __94__PREResponseSuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_76;
          v90[3] = &unk_279ABAED0;
          v91 = v12;
          [clientCopy downloadLevelsForFactors:v74 withNamespace:v75 queue:path options:0 progress:v92 completion:v90];
        }

        else
        {
          path = pre_responses_handle();
          if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v96 = nameCopy;
            _os_log_impl(&dword_260CE3000, path, OS_LOG_TYPE_DEFAULT, "Smart Reply: assets for %@ not found on device, not downloading for this request", buf, 0xCu);
          }
        }
      }

      else
      {
        path = pre_responses_handle();
        if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_260CE3000, path, OS_LOG_TYPE_FAULT, "Smart Reply: directory factor isn't downloadable on-demand and also isn't found on device", buf, 2u);
        }
      }

      v40 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v41 = pre_responses_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v41, OS_LOG_TYPE_DEFAULT, "Smart Reply using default values since the ML model is not enabled.", buf, 2u);
    }

    [(PREResponseSuggestionsExpConfig *)v12 _fillDefaultValueForFactors];
LABEL_32:
    v40 = v12;
    goto LABEL_61;
  }

  v24 = pre_responses_handle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v26 = "Smart Reply: treatment name required but not found";
    v27 = v24;
    v28 = 2;
    goto LABEL_66;
  }

LABEL_27:

LABEL_28:
  v40 = 0;
LABEL_61:

  return v40;
}

void __94__PREResponseSuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_2(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = pre_responses_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&dword_260CE3000, v4, OS_LOG_TYPE_DEFAULT, "Smart Reply: download progress %d%% for namespace %@", v6, 0x12u);
  }
}

void __94__PREResponseSuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_76(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pre_responses_handle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 userInfo];
      v9 = [v8 description];
      v10 = *(*(a1 + 32) + 8);
      v12 = 138412802;
      *v13 = v9;
      *&v13[8] = 1024;
      *&v13[10] = a2;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_260CE3000, v6, OS_LOG_TYPE_DEFAULT, "Smart Reply: Trial download error %@ with result %d for namespace %@", &v12, 0x1Cu);
    }
  }

  else if (v7)
  {
    v11 = *(*(a1 + 32) + 8);
    v12 = 67109378;
    *v13 = a2;
    *&v13[4] = 2112;
    *&v13[6] = v11;
    _os_log_impl(&dword_260CE3000, v6, OS_LOG_TYPE_DEFAULT, "Smart Reply: Trial download result %d for namespace %@", &v12, 0x12u);
  }
}

void __94__PREResponseSuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PREResponseSuggestions-downloadAssets" qosClass:9];
  v2 = initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
  initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end