@interface PSGResponseSuggestionsExpConfig
- (PSGResponseSuggestionsExpConfig)initWithNamespaceName:(id)name withLanguage:(id)language withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets;
- (void)_fillDefaultValuesForFactors;
- (void)_setDefaultValuesForFactors;
@end

@implementation PSGResponseSuggestionsExpConfig

- (void)_fillDefaultValuesForFactors
{
  v20 = objc_opt_new();
  if ([(NSString *)self->_treatmentName length])
  {
    treatmentName = self->_treatmentName;
  }

  else
  {
    treatmentName = [v20 treatmentName];
  }

  treatmentName = self->_treatmentName;
  self->_treatmentName = treatmentName;

  rolloutId = [(TRIRolloutIdentifiers *)self->_rolloutIdentifiers rolloutId];
  if ([rolloutId length])
  {
    rolloutIdentifiers = self->_rolloutIdentifiers;
  }

  else
  {
    rolloutIdentifiers = [v20 rolloutIdentifiers];
  }

  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = rolloutIdentifiers;

  treatmentId = [(TRIExperimentIdentifiers *)self->_experimentIdentifiers treatmentId];
  if ([treatmentId length])
  {
    experimentIdentifiers = self->_experimentIdentifiers;
  }

  else
  {
    experimentIdentifiers = [v20 experimentIdentifiers];
  }

  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = experimentIdentifiers;

  isMLModelEnabled = self->_isMLModelEnabled;
  if ((isMLModelEnabled & 1) == 0)
  {
    isMLModelEnabled = [v20 isMLModelEnabled];
  }

  self->_isMLModelEnabled = isMLModelEnabled;
  if ([(NSString *)self->_inferenceModelFilePath length])
  {
    inferenceModelFilePath = self->_inferenceModelFilePath;
  }

  else
  {
    inferenceModelFilePath = [v20 inferenceModelFilePath];
  }

  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = inferenceModelFilePath;

  if ([(NSString *)self->_inferenceModelConfigPath length])
  {
    inferenceModelConfigPath = self->_inferenceModelConfigPath;
  }

  else
  {
    inferenceModelConfigPath = [v20 inferenceModelConfigPath];
  }

  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = inferenceModelConfigPath;

  if ([(NSString *)self->_espressoBinFilePath length])
  {
    espressoBinFilePath = self->_espressoBinFilePath;
  }

  else
  {
    espressoBinFilePath = [v20 espressoBinFilePath];
  }

  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = espressoBinFilePath;

  if ([(NSString *)self->_vocabFilePath length])
  {
    vocabFilePath = self->_vocabFilePath;
  }

  else
  {
    vocabFilePath = [v20 vocabFilePath];
  }

  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = vocabFilePath;
}

- (void)_setDefaultValuesForFactors
{
  v17 = objc_opt_new();
  treatmentName = [v17 treatmentName];
  treatmentName = self->_treatmentName;
  self->_treatmentName = treatmentName;

  rolloutIdentifiers = [v17 rolloutIdentifiers];
  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = rolloutIdentifiers;

  experimentIdentifiers = [v17 experimentIdentifiers];
  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = experimentIdentifiers;

  self->_isMLModelEnabled = [v17 isMLModelEnabled];
  inferenceModelFilePath = [v17 inferenceModelFilePath];
  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = inferenceModelFilePath;

  inferenceModelConfigPath = [v17 inferenceModelConfigPath];
  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = inferenceModelConfigPath;

  espressoBinFilePath = [v17 espressoBinFilePath];
  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = espressoBinFilePath;

  vocabFilePath = [v17 vocabFilePath];
  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = vocabFilePath;
}

- (PSGResponseSuggestionsExpConfig)initWithNamespaceName:(id)name withLanguage:(id)language withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets
{
  v114[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  languageCopy = language;
  clientCopy = client;
  v95.receiver = self;
  v95.super_class = PSGResponseSuggestionsExpConfig;
  v14 = [(PSGResponseSuggestionsExpConfig *)&v95 init];
  if (v14)
  {
    if (!nameCopy)
    {
      goto LABEL_30;
    }

    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v97 = nameCopy;
      _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "ZKW Experiment config -- setting up config for namespace %@", buf, 0xCu);
    }

    [clientCopy refresh];
    objc_storeStrong(&v14->_namespaceName, name);
    objc_storeStrong(&v14->_language, language);
    v16 = [clientCopy rolloutIdentifiersWithNamespaceName:v14->_namespaceName];
    rolloutIdentifiers = v14->_rolloutIdentifiers;
    v14->_rolloutIdentifiers = v16;

    v18 = [clientCopy experimentIdentifiersWithNamespaceName:v14->_namespaceName];
    experimentIdentifiers = v14->_experimentIdentifiers;
    v14->_experimentIdentifiers = v18;

    treatmentId = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
    if (![treatmentId length])
    {
      rolloutId = [(TRIRolloutIdentifiers *)v14->_rolloutIdentifiers rolloutId];
      v22 = [rolloutId length];

      if (v22)
      {
        goto LABEL_8;
      }

      treatmentId = psg_default_log_handle();
      if (os_log_type_enabled(treatmentId, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, treatmentId, OS_LOG_TYPE_DEFAULT, "ZKW using on-device values since treatment id and rollout id is unset.", buf, 2u);
      }
    }

LABEL_8:
    treatmentId2 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
    if ([treatmentId2 length])
    {
      experimentId = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers experimentId];
      v25 = [experimentId length];

      if (!v25)
      {
        v26 = psg_default_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          namespaceName = v14->_namespaceName;
          *buf = 138412290;
          v97 = namespaceName;
          _os_log_fault_impl(&dword_260D36000, v26, OS_LOG_TYPE_FAULT, "ZKW: treatmentId without experimentId for namespace %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v28 = [clientCopy levelForFactor:@"treatmentName" withNamespaceName:v14->_namespaceName];
    stringValue = [v28 stringValue];
    treatmentName = v14->_treatmentName;
    v14->_treatmentName = stringValue;

    v31 = [clientCopy levelForFactor:@"modelDescription" withNamespaceName:v14->_namespaceName];
    stringValue2 = [v31 stringValue];
    inferenceModelDescription = v14->_inferenceModelDescription;
    v14->_inferenceModelDescription = stringValue2;

    v34 = [clientCopy levelForFactor:@"mlModelEnabled" withNamespaceName:v14->_namespaceName];
    v14->_isMLModelEnabled = [v34 BOOLeanValue];

    if ([(NSString *)v14->_treatmentName length])
    {
      if (v14->_isMLModelEnabled)
      {
        if (![(NSString *)v14->_inferenceModelDescription length])
        {
          v35 = psg_default_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, v35, OS_LOG_TYPE_FAULT, "ZKW: model description expected but not found", buf, 2u);
          }
        }

        v36 = [clientCopy levelForFactor:@"modelAssets" withNamespaceName:v14->_namespaceName];
        directoryValue = [v36 directoryValue];

        if ([directoryValue hasPath] & 1) != 0 || (objc_msgSend(directoryValue, "isOnDemand"))
        {
          if (([directoryValue hasPath] & 1) != 0 || assets)
          {
            if ([directoryValue hasPath])
            {
              path = [directoryValue path];
              v90 = 0;
              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              v43 = [defaultManager fileExistsAtPath:path isDirectory:&v90];

              if (v43 && (v90 & 1) != 0)
              {
                v44 = [(NSString *)v14->_treatmentName stringByAppendingString:@".model.chunk"];
                v45 = [(NSString *)v14->_treatmentName stringByAppendingString:@".config.plist"];
                v46 = [(NSString *)v14->_treatmentName stringByAppendingString:@".espresso.bin"];
                v47 = [(NSString *)v14->_treatmentName stringByAppendingString:@".vocab.trie"];
                v48 = [path stringByAppendingPathComponent:v44];
                inferenceModelFilePath = v14->_inferenceModelFilePath;
                v14->_inferenceModelFilePath = v48;

                v89 = v45;
                v50 = [path stringByAppendingPathComponent:v45];
                inferenceModelConfigPath = v14->_inferenceModelConfigPath;
                v14->_inferenceModelConfigPath = v50;

                v88 = v46;
                v52 = [path stringByAppendingPathComponent:v46];
                espressoBinFilePath = v14->_espressoBinFilePath;
                v14->_espressoBinFilePath = v52;

                v87 = v47;
                v54 = [path stringByAppendingPathComponent:v47];
                vocabFilePath = v14->_vocabFilePath;
                v14->_vocabFilePath = v54;

                defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                LOBYTE(v46) = [defaultManager2 isReadableFileAtPath:v14->_inferenceModelFilePath];

                if ((v46 & 1) == 0)
                {
                  v57 = v14->_inferenceModelFilePath;
                  v14->_inferenceModelFilePath = 0;
                }

                defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
                v59 = [defaultManager3 isReadableFileAtPath:v14->_inferenceModelConfigPath];

                if ((v59 & 1) == 0)
                {
                  v60 = v14->_inferenceModelConfigPath;
                  v14->_inferenceModelConfigPath = 0;
                }

                defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                v62 = [defaultManager4 isReadableFileAtPath:v14->_espressoBinFilePath];

                v63 = v44;
                if ((v62 & 1) == 0)
                {
                  v64 = v14->_espressoBinFilePath;
                  v14->_espressoBinFilePath = 0;
                }

                defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
                v66 = [defaultManager5 isReadableFileAtPath:v14->_vocabFilePath];

                if ((v66 & 1) == 0)
                {
                  v67 = v14->_vocabFilePath;
                  v14->_vocabFilePath = 0;
                }

                if (v14->_inferenceModelConfigPath && (v14->_inferenceModelFilePath || v14->_espressoBinFilePath))
                {
                  v68 = psg_default_log_handle();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    v82 = v14->_treatmentName;
                    v83 = v14->_inferenceModelDescription;
                    v84 = v14->_inferenceModelConfigPath;
                    v85 = v14->_espressoBinFilePath;
                    v86 = v14->_vocabFilePath;
                    v81 = v14->_inferenceModelFilePath;
                    experimentId2 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers experimentId];
                    treatmentId3 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
                    isMLModelEnabled = v14->_isMLModelEnabled;
                    *buf = 138414338;
                    v97 = v82;
                    v98 = 2112;
                    v99 = v83;
                    v100 = 2112;
                    v101 = v81;
                    v102 = 2112;
                    v103 = v84;
                    v104 = 2112;
                    v105 = v85;
                    v106 = 2112;
                    v107 = v86;
                    v108 = 2112;
                    v109 = experimentId2;
                    v110 = 2112;
                    v111 = treatmentId3;
                    v112 = 1024;
                    v113 = isMLModelEnabled;
                    _os_log_impl(&dword_260D36000, v68, OS_LOG_TYPE_DEFAULT, "ZKW reading from trial factor values {treatmentName: %@ inferenceModelDescription: %@ inferenceModelFilePath: %@ inferenceModelConfigPath: %@ espresso.bin: %@ vocab: %@ experimentId: %@ treatmentId: %@ isMLModelEnabled: %d}", buf, 0x58u);
                  }

                  v27 = v14;
                }

                else
                {
                  v77 = psg_default_log_handle();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
                  {
                    v78 = v14->_inferenceModelFilePath;
                    v79 = v14->_inferenceModelConfigPath;
                    v80 = v14->_espressoBinFilePath;
                    *buf = 138412802;
                    v97 = v78;
                    v98 = 2112;
                    v99 = v79;
                    v100 = 2112;
                    v101 = v80;
                    _os_log_fault_impl(&dword_260D36000, v77, OS_LOG_TYPE_FAULT, "ZKW: some required file factor not readable with config path %@, inference path %@, and espresso bin path %@", buf, 0x20u);
                  }

                  v27 = 0;
                }
              }

              else
              {
                v63 = psg_default_log_handle();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_260D36000, v63, OS_LOG_TYPE_FAULT, "ZKW: directory factor download completed, but directory path not found", buf, 2u);
                }

                v27 = 0;
              }

              goto LABEL_63;
            }

            v72 = psg_default_log_handle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260D36000, v72, OS_LOG_TYPE_DEFAULT, "ZKW: assets directory factor is being queued for download", buf, 2u);
            }

            if (initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasOnceToken11 != -1)
            {
              dispatch_once(&initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasOnceToken11, &__block_literal_global_1648);
            }

            v114[0] = @"modelAssets";
            v73 = MEMORY[0x277CBEA60];
            path = initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
            v74 = [v73 arrayWithObjects:v114 count:1];
            v75 = v14->_namespaceName;
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_2;
            v93[3] = &unk_279ABE428;
            v94 = nameCopy;
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_35;
            v91[3] = &unk_279ABE450;
            v92 = v14;
            [clientCopy downloadLevelsForFactors:v74 withNamespace:v75 queue:path options:0 progress:v93 completion:v91];
          }

          else
          {
            path = psg_default_log_handle();
            if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v97 = nameCopy;
              _os_log_impl(&dword_260D36000, path, OS_LOG_TYPE_DEFAULT, "ZKW: assets for %@ not found on device, not downloading for this request", buf, 0xCu);
            }
          }
        }

        else
        {
          path = psg_default_log_handle();
          if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, path, OS_LOG_TYPE_FAULT, "ZKW: directory factor isn't downloadable on-demand and also isn't found on device", buf, 2u);
          }
        }

        v27 = 0;
LABEL_63:

        goto LABEL_35;
      }

      v40 = psg_default_log_handle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v40, OS_LOG_TYPE_DEFAULT, "ZKW using default values since the ML model is not enabled.", buf, 2u);
      }

      [(PSGResponseSuggestionsExpConfig *)v14 _fillDefaultValuesForFactors];
LABEL_34:
      v27 = v14;
      goto LABEL_35;
    }

    v39 = psg_default_log_handle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v39, OS_LOG_TYPE_DEFAULT, "ZKW: treatment name required but not found", buf, 2u);
    }

LABEL_30:
    [(PSGResponseSuggestionsExpConfig *)v14 _setDefaultValuesForFactors];
    goto LABEL_34;
  }

LABEL_13:
  v27 = 0;
LABEL_35:

  return v27;
}

void __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_2(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = psg_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&dword_260D36000, v4, OS_LOG_TYPE_DEFAULT, "ZKW: download progress %d%% for namespace %@", v6, 0x12u);
  }
}

void __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_35(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = psg_default_log_handle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 userInfo];
      v9 = [v8 description];
      v10 = *(*(a1 + 32) + 16);
      v12 = 138412802;
      *v13 = v9;
      *&v13[8] = 1024;
      *&v13[10] = a2;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "ZKW: Trial download error %@ with result %d for namespace %@", &v12, 0x1Cu);
    }
  }

  else if (v7)
  {
    v11 = *(*(a1 + 32) + 16);
    v12 = 67109378;
    *v13 = a2;
    *&v13[4] = 2112;
    *&v13[6] = v11;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "ZKW: Trial download result %d for namespace %@", &v12, 0x12u);
  }
}

void __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGResponseSuggestions-downloadAssets" qosClass:9];
  v2 = initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
  initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end