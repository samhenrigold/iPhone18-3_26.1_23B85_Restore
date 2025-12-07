@interface PSGWordBoundarySuggestionsExpConfig
- (PSGWordBoundarySuggestionsExpConfig)initWithNamespaceName:(id)name withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets;
- (void)_fillDefaultValuesForFactors;
- (void)_setDefaultValuesForFactors;
@end

@implementation PSGWordBoundarySuggestionsExpConfig

- (void)_fillDefaultValuesForFactors
{
  v16 = objc_opt_new();
  if ([(NSString *)self->_treatmentName length])
  {
    treatmentName = self->_treatmentName;
  }

  else
  {
    treatmentName = [v16 treatmentName];
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
    rolloutIdentifiers = [v16 rolloutIdentifiers];
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
    experimentIdentifiers = [v16 experimentIdentifiers];
  }

  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = experimentIdentifiers;

  isMLModelEnabled = self->_isMLModelEnabled;
  if ((isMLModelEnabled & 1) == 0)
  {
    isMLModelEnabled = [v16 isMLModelEnabled];
  }

  self->_isMLModelEnabled = isMLModelEnabled;
  if ([(NSString *)self->_inferenceModelConfigPath length])
  {
    inferenceModelConfigPath = self->_inferenceModelConfigPath;
  }

  else
  {
    inferenceModelConfigPath = [v16 inferenceModelConfigPath];
  }

  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = inferenceModelConfigPath;

  if ([(NSString *)self->_espressoBinFilePath length])
  {
    espressoBinFilePath = self->_espressoBinFilePath;
  }

  else
  {
    espressoBinFilePath = [v16 espressoBinFilePath];
  }

  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = espressoBinFilePath;
}

- (void)_setDefaultValuesForFactors
{
  v13 = objc_opt_new();
  self->_isMLModelEnabled = [v13 isMLModelEnabled];
  treatmentName = [v13 treatmentName];
  treatmentName = self->_treatmentName;
  self->_treatmentName = treatmentName;

  rolloutIdentifiers = [v13 rolloutIdentifiers];
  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = rolloutIdentifiers;

  experimentIdentifiers = [v13 experimentIdentifiers];
  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = experimentIdentifiers;

  inferenceModelConfigPath = [v13 inferenceModelConfigPath];
  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = inferenceModelConfigPath;

  espressoBinFilePath = [v13 espressoBinFilePath];
  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = espressoBinFilePath;
}

- (PSGWordBoundarySuggestionsExpConfig)initWithNamespaceName:(id)name withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets
{
  v89[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  clientCopy = client;
  v74.receiver = self;
  v74.super_class = PSGWordBoundarySuggestionsExpConfig;
  v11 = [(PSGWordBoundarySuggestionsExpConfig *)&v74 init];
  if (v11)
  {
    if (!nameCopy)
    {
      goto LABEL_30;
    }

    v12 = psg_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = nameCopy;
      _os_log_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEFAULT, "WordBoundary config -- setting up config for namespace %@", buf, 0xCu);
    }

    [clientCopy refresh];
    objc_storeStrong(&v11->_namespaceName, name);
    v13 = [clientCopy rolloutIdentifiersWithNamespaceName:v11->_namespaceName];
    rolloutIdentifiers = v11->_rolloutIdentifiers;
    v11->_rolloutIdentifiers = v13;

    v15 = [clientCopy experimentIdentifiersWithNamespaceName:v11->_namespaceName];
    experimentIdentifiers = v11->_experimentIdentifiers;
    v11->_experimentIdentifiers = v15;

    treatmentId = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers treatmentId];
    if (![treatmentId length])
    {
      rolloutId = [(TRIRolloutIdentifiers *)v11->_rolloutIdentifiers rolloutId];
      v19 = [rolloutId length];

      if (v19)
      {
        goto LABEL_8;
      }

      treatmentId = psg_default_log_handle();
      if (os_log_type_enabled(treatmentId, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, treatmentId, OS_LOG_TYPE_DEFAULT, "WordBoundary using on-device values since treatment id and rollout id is unset.", buf, 2u);
      }
    }

LABEL_8:
    treatmentId2 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers treatmentId];
    if ([treatmentId2 length])
    {
      experimentId = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers experimentId];
      v22 = [experimentId length];

      if (!v22)
      {
        v23 = psg_default_log_handle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          namespaceName = v11->_namespaceName;
          *buf = 138412290;
          v76 = namespaceName;
          _os_log_fault_impl(&dword_260D36000, v23, OS_LOG_TYPE_FAULT, "WordBoundary: treatmentId without experimentId for namespace %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v25 = [clientCopy levelForFactor:@"treatmentName" withNamespaceName:v11->_namespaceName];
    stringValue = [v25 stringValue];
    treatmentName = v11->_treatmentName;
    v11->_treatmentName = stringValue;

    v28 = [clientCopy levelForFactor:@"modelDescription" withNamespaceName:v11->_namespaceName];
    stringValue2 = [v28 stringValue];
    inferenceModelDescription = v11->_inferenceModelDescription;
    v11->_inferenceModelDescription = stringValue2;

    v31 = [clientCopy levelForFactor:@"mlModelEnabled" withNamespaceName:v11->_namespaceName];
    v11->_isMLModelEnabled = [v31 BOOLeanValue];

    if ([(NSString *)v11->_treatmentName length])
    {
      if (v11->_isMLModelEnabled)
      {
        if (![(NSString *)v11->_inferenceModelDescription length])
        {
          v32 = psg_default_log_handle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, v32, OS_LOG_TYPE_FAULT, "WordBoundary: model description expected but not found", buf, 2u);
          }
        }

        v33 = [clientCopy levelForFactor:@"modelAssets" withNamespaceName:v11->_namespaceName];
        directoryValue = [v33 directoryValue];

        if ([directoryValue hasPath] & 1) != 0 || (objc_msgSend(directoryValue, "isOnDemand"))
        {
          if (([directoryValue hasPath] & 1) != 0 || assets)
          {
            if ([directoryValue hasPath])
            {
              path = [directoryValue path];
              v69 = 0;
              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              v40 = [defaultManager fileExistsAtPath:path isDirectory:&v69];

              if (v40 && (v69 & 1) != 0)
              {
                v41 = [(NSString *)v11->_treatmentName stringByAppendingString:@".config.plist"];
                v42 = [(NSString *)v11->_treatmentName stringByAppendingString:@".espresso.bin"];
                v43 = [path stringByAppendingPathComponent:v41];
                inferenceModelConfigPath = v11->_inferenceModelConfigPath;
                v11->_inferenceModelConfigPath = v43;

                v45 = [path stringByAppendingPathComponent:v42];
                espressoBinFilePath = v11->_espressoBinFilePath;
                v11->_espressoBinFilePath = v45;

                defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                v48 = [defaultManager2 isReadableFileAtPath:v11->_inferenceModelConfigPath];

                if ((v48 & 1) == 0)
                {
                  v49 = v11->_inferenceModelConfigPath;
                  v11->_inferenceModelConfigPath = 0;
                }

                defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
                v51 = [defaultManager3 isReadableFileAtPath:v11->_espressoBinFilePath];

                if ((v51 & 1) == 0)
                {
                  v52 = v11->_espressoBinFilePath;
                  v11->_espressoBinFilePath = 0;
                }

                if (v11->_inferenceModelConfigPath && v11->_espressoBinFilePath)
                {
                  v53 = psg_default_log_handle();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    v67 = v11->_inferenceModelDescription;
                    v68 = v11->_espressoBinFilePath;
                    v65 = v11->_treatmentName;
                    v66 = v11->_inferenceModelConfigPath;
                    experimentId2 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers experimentId];
                    treatmentId3 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers treatmentId];
                    isMLModelEnabled = v11->_isMLModelEnabled;
                    *buf = 138413826;
                    v76 = v65;
                    v77 = 2112;
                    v78 = v67;
                    v79 = 2112;
                    v80 = v66;
                    v81 = 2112;
                    v82 = v68;
                    v83 = 2112;
                    v84 = experimentId2;
                    v85 = 2112;
                    v86 = treatmentId3;
                    v87 = 1024;
                    v88 = isMLModelEnabled;
                    _os_log_impl(&dword_260D36000, v53, OS_LOG_TYPE_DEFAULT, "WordBoundary reading from trial factor values {treatmentName: %@ inferenceModelDescription: %@ inferenceModelConfigPath: %@ espresso.bin: %@ experimentId: %@ treatmentId: %@ isMLModelEnabled: %d}", buf, 0x44u);
                  }

                  v24 = v11;
                }

                else
                {
                  v62 = psg_default_log_handle();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
                  {
                    v63 = v11->_inferenceModelConfigPath;
                    v64 = v11->_espressoBinFilePath;
                    *buf = 138412546;
                    v76 = v63;
                    v77 = 2112;
                    v78 = v64;
                    _os_log_fault_impl(&dword_260D36000, v62, OS_LOG_TYPE_FAULT, "WordBoundary: some required file factor not readable with config path %@ and espresso bin path %@", buf, 0x16u);
                  }

                  v24 = 0;
                }
              }

              else
              {
                v41 = psg_default_log_handle();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_260D36000, v41, OS_LOG_TYPE_FAULT, "WordBoundary: directory factor download completed, but directory path not found", buf, 2u);
                }

                v24 = 0;
              }

              goto LABEL_58;
            }

            v57 = psg_default_log_handle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260D36000, v57, OS_LOG_TYPE_DEFAULT, "WordBoundary: assets directory factor is being queued for download", buf, 2u);
            }

            if (initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasOnceToken11 != -1)
            {
              dispatch_once(&initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasOnceToken11, &__block_literal_global_172);
            }

            v89[0] = @"modelAssets";
            v58 = MEMORY[0x277CBEA60];
            path = initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
            v59 = [v58 arrayWithObjects:v89 count:1];
            v60 = v11->_namespaceName;
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_2;
            v72[3] = &unk_279ABE428;
            v73 = nameCopy;
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_29;
            v70[3] = &unk_279ABE450;
            v71 = v11;
            [clientCopy downloadLevelsForFactors:v59 withNamespace:v60 queue:path options:0 progress:v72 completion:v70];
          }

          else
          {
            path = psg_default_log_handle();
            if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v76 = nameCopy;
              _os_log_impl(&dword_260D36000, path, OS_LOG_TYPE_DEFAULT, "WordBoundary: assets for %@ not found on device, not downloading for this request", buf, 0xCu);
            }
          }
        }

        else
        {
          path = psg_default_log_handle();
          if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, path, OS_LOG_TYPE_FAULT, "WordBoundary: directory factor isn't downloadable on-demand and also isn't found on device", buf, 2u);
          }
        }

        v24 = 0;
LABEL_58:

        goto LABEL_35;
      }

      v37 = psg_default_log_handle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v37, OS_LOG_TYPE_DEFAULT, "WordBoundary using default values since the ML model is not enabled.", buf, 2u);
      }

      [(PSGWordBoundarySuggestionsExpConfig *)v11 _fillDefaultValuesForFactors];
LABEL_34:
      v24 = v11;
      goto LABEL_35;
    }

    v36 = psg_default_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v36, OS_LOG_TYPE_DEFAULT, "WordBoundary: treatment name required but not found", buf, 2u);
    }

LABEL_30:
    [(PSGWordBoundarySuggestionsExpConfig *)v11 _setDefaultValuesForFactors];
    goto LABEL_34;
  }

LABEL_13:
  v24 = 0;
LABEL_35:

  return v24;
}

void __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_2(uint64_t a1, int a2)
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
    _os_log_impl(&dword_260D36000, v4, OS_LOG_TYPE_DEFAULT, "WordBoundary: download progress %d%% for namespace %@", v6, 0x12u);
  }
}

void __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_29(uint64_t a1, int a2, void *a3)
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
      _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "WordBoundary: Trial download error %@ with result %d for namespace %@", &v12, 0x1Cu);
    }
  }

  else if (v7)
  {
    v11 = *(*(a1 + 32) + 16);
    v12 = 67109378;
    *v13 = a2;
    *&v13[4] = 2112;
    *&v13[6] = v11;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "WordBoundary: Trial download result %d for namespace %@", &v12, 0x12u);
  }
}

void __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGWordBoundarySuggestions-downloadAssets" qosClass:9];
  v2 = initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
  initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end