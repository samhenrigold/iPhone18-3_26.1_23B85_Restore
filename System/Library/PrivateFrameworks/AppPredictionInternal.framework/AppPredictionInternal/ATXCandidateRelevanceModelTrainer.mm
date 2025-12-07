@interface ATXCandidateRelevanceModelTrainer
- (ATXCandidateRelevanceModelTrainer)initWithConfig:(id)config;
- (void)generateAndSaveDatasetWithFilename:(id)filename;
- (void)trainWithXPCActivity:(id)activity disregardDatasetMetadataRequirements:(BOOL)requirements;
@end

@implementation ATXCandidateRelevanceModelTrainer

- (ATXCandidateRelevanceModelTrainer)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelTrainer;
  v6 = [(ATXCandidateRelevanceModelTrainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (void)generateAndSaveDatasetWithFilename:(id)filename
{
  v60 = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  datasetGenerator = [(ATXCandidateRelevanceModelConfig *)self->_config datasetGenerator];
  v6 = objc_opt_new();
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __72__ATXCandidateRelevanceModelTrainer_generateAndSaveDatasetWithFilename___block_invoke;
  v57[3] = &unk_27859D328;
  v57[4] = self;
  v7 = v6;
  v58 = v7;
  [datasetGenerator receiveDataPoint:v57 completion:&__block_literal_global_116];
  v8 = [ATXCandidateRelevanceModelFeaturizationManager alloc];
  selfCopy = self;
  featurizers = [(ATXCandidateRelevanceModelConfig *)self->_config featurizers];
  v10 = [(ATXCandidateRelevanceModelFeaturizationManager *)v8 initWithFeaturizers:featurizers];

  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v42 = filenameCopy;
  v12 = [appPredictionDirectory stringByAppendingPathComponent:filenameCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createFileAtPath:v12 contents:0 attributes:0];

  v41 = v12;
  v14 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v12];
  v15 = objc_opt_new();
  v46 = v10;
  featureNames = [(ATXCandidateRelevanceModelFeaturizationManager *)v10 featureNames];
  [v15 addObject:@"Candidate"];
  [v15 addObject:@"CandidateIdentifier"];
  [v15 addObject:@"CandidateType"];
  [v15 addObject:@"SessionId"];
  [v15 addObject:@"Engaged"];
  v39 = featureNames;
  [v15 addObjectsFromArray:featureNames];
  v50 = v14;
  v40 = v15;
  [v14 writeCommaSeparatedValues:v15];
  v17 = objc_opt_new();
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __72__ATXCandidateRelevanceModelTrainer_generateAndSaveDatasetWithFilename___block_invoke_3;
  v55[3] = &unk_27859D350;
  v45 = v17;
  v56 = v45;
  v47 = datasetGenerator;
  [datasetGenerator receiveDatasetSession:v55 completion:&__block_literal_global_48_0];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v48 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v48)
  {
    v44 = *v52;
    do
    {
      v18 = 0;
      do
      {
        if (*v52 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v18;
        v19 = *(*(&v51 + 1) + 8 * v18);
        v20 = [objc_opt_class() candidateDataPointsForSessions:v45 candidate:v19];
        v21 = [(ATXCandidateRelevanceModelFeaturizationManager *)v46 sparseFeatureMatrixFromDataPoints:v20];
        v22 = [objc_opt_class() labelsFromDataPoints:v20];
        numberOfRows = [v21 numberOfRows];
        if (numberOfRows != [v22 count])
        {
          [(ATXCandidateRelevanceModelTrainer *)a2 generateAndSaveDatasetWithFilename:selfCopy];
        }

        if ([v21 numberOfRows])
        {
          v24 = 0;
          do
          {
            v25 = objc_opt_new();
            v26 = [v19 description];
            [v25 addObject:v26];

            identifier = [v19 identifier];
            [v25 addObject:identifier];

            type = [v19 type];
            [v25 addObject:type];

            v29 = [v20 objectAtIndexedSubscript:v24];
            contextDefinedSessionId = [v29 contextDefinedSessionId];
            uUIDString = [contextDefinedSessionId UUIDString];
            [v25 addObject:uUIDString];

            v32 = [v22 objectAtIndexedSubscript:v24];
            stringValue = [v32 stringValue];
            [v25 addObject:stringValue];

            if ([v21 numberOfColumns])
            {
              v34 = 0;
              do
              {
                [v21 valueAtRow:v24 column:v34];
                v35 = [MEMORY[0x277CCABB0] numberWithFloat:?];
                stringValue2 = [v35 stringValue];
                [v25 addObject:stringValue2];

                ++v34;
              }

              while ([v21 numberOfColumns] > v34);
            }

            [v50 writeCommaSeparatedValues:v25];

            ++v24;
          }

          while ([v21 numberOfRows] > v24);
        }

        v18 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v48);
  }

  [v50 closeFile];
}

void __72__ATXCandidateRelevanceModelTrainer_generateAndSaveDatasetWithFilename___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(*(a1 + 32) + 8) featurizers];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [v3 context];
        v11 = [v3 candidate];
        [v9 observeContext:v10 candidate:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *(a1 + 40);
  v13 = [v3 candidate];
  [v12 addObject:v13];
}

- (void)trainWithXPCActivity:(id)activity disregardDatasetMetadataRequirements:(BOOL)requirements
{
  v149 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  isEnabled = [(ATXCandidateRelevanceModelConfig *)self->_config isEnabled];
  if (isEnabled)
  {
    v7 = +[ATXCandidateRelevanceModelGlobals sharedInstance];
    isPipelineEnabled = [v7 isPipelineEnabled];

    if (isPipelineEnabled)
    {
      v9 = __atxlog_handle_relevance_model(isEnabled);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        clientModel = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
        clientModelId = [clientModel clientModelId];
        *buf = 138412546;
        v144 = v11;
        v145 = 2112;
        v146 = clientModelId;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model training for config with client model name: %@.", buf, 0x16u);
      }

      datastore = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
      clientModel2 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
      clientModelId2 = [clientModel2 clientModelId];
      v17 = [MEMORY[0x277CBEAA8] now];
      v18 = [v17 dateByAddingTimeInterval:-86400.0];
      v19 = [datastore cachedCandidatesForModelId:clientModelId2 earliestDate:v18];

      v20 = v19;
      candidates = [v19 candidates];
      featurizationManager = [v19 featurizationManager];
      datasetGenerator = [(ATXCandidateRelevanceModelConfig *)self->_config datasetGenerator];
      v23 = datasetGenerator;
      v119 = datasetGenerator;
      selfCopy = self;
      if (v19)
      {
        v24 = __atxlog_handle_relevance_model(datasetGenerator);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = objc_opt_class();
          NSStringFromClass(v25);
          v27 = v26 = candidates;
          *buf = 138412290;
          v144 = v27;
          _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%@ - Using cached candidates since a deferral must have occurred.", buf, 0xCu);

          candidates = v26;
        }
      }

      else
      {
        v33 = candidates;
        v34 = objc_opt_new();
        v35 = objc_opt_new();
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke;
        v139[3] = &unk_27859D378;
        v139[4] = self;
        v36 = v35;
        v140 = v36;
        v37 = v34;
        v141 = v37;
        [v23 receiveDataPoint:v139 completion:&__block_literal_global_62];
        currentMetadata = [v36 currentMetadata];
        v38 = __atxlog_handle_relevance_model(currentMetadata);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
          v42 = v41 = activityCopy;
          clientModelId3 = [v42 clientModelId];
          *buf = 138412802;
          v144 = v40;
          v145 = 2112;
          v146 = clientModelId3;
          v147 = 2112;
          v148 = currentMetadata;
          _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "%@ - Overall dataset metadata for config with client model name %@:\n%@", buf, 0x20u);

          activityCopy = v41;
        }

        if (requirements || (v44 = [(ATXCandidateRelevanceModelConfig *)self->_config shouldTrainModelWithOverallDatasetMetadata:currentMetadata], (v44 & 1) != 0))
        {
          allKeys = [v37 allKeys];
          v137[0] = MEMORY[0x277D85DD0];
          v137[1] = 3221225472;
          v137[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_63;
          v137[3] = &unk_27859D3A0;
          v46 = v37;
          v138 = v46;
          [allKeys sortedArrayUsingComparator:v137];
          v48 = v47 = activityCopy;

          v49 = [v48 count];
          maximumNumberOfTrainedCandidates = [(ATXCandidateRelevanceModelConfig *)selfCopy->_config maximumNumberOfTrainedCandidates];
          if (v49 >= maximumNumberOfTrainedCandidates)
          {
            v51 = maximumNumberOfTrainedCandidates;
          }

          else
          {
            v51 = v49;
          }

          v52 = [v48 subarrayWithRange:{0, v51}];

          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_2_65;
          v133[3] = &unk_27859D3C8;
          v134 = v46;
          v135 = selfCopy;
          requirementsCopy = requirements;
          v53 = [v52 _pas_filteredArrayWithTest:v133];

          v54 = [ATXCandidateRelevanceModelFeaturizationManager alloc];
          featurizers = [(ATXCandidateRelevanceModelConfig *)selfCopy->_config featurizers];
          v56 = [(ATXCandidateRelevanceModelFeaturizationManager *)v54 initWithFeaturizers:featurizers];

          datastore2 = [(ATXCandidateRelevanceModelConfig *)selfCopy->_config datastore];
          clientModel3 = [(ATXCandidateRelevanceModelConfig *)selfCopy->_config clientModel];
          clientModelId4 = [clientModel3 clientModelId];
          v33 = v53;
          [datastore2 cacheSelectedCandidates:v53 featurizationManager:v56 modelId:clientModelId4];

          v60 = 1;
          v61 = v138;
          featurizationManager = v56;
          activityCopy = v47;
          self = selfCopy;
        }

        else
        {
          v61 = __atxlog_handle_relevance_model(v44);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            *buf = 138412290;
            v144 = v63;
            _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_DEFAULT, "%@ - Config specifies we shouldn't begin training yet given the overall dataset metadata. Skipping model training for all candidates.", buf, 0xCu);
          }

          v60 = 0;
        }

        v20 = 0;
        v23 = v119;
        candidates = v33;
        if ((v60 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      if (candidates && featurizationManager)
      {
        didDefer = [activityCopy didDefer];
        if (!didDefer)
        {
          v115 = activityCopy;
          v118 = objc_opt_new();
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          obj = candidates;
          v122 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
          v116 = v20;
          v114 = candidates;
          if (v122)
          {
            v125 = 0;
            v121 = *v130;
            do
            {
              v69 = 0;
              do
              {
                if (*v130 != v121)
                {
                  objc_enumerationMutation(obj);
                }

                v70 = *(*(&v129 + 1) + 8 * v69);
                v71 = objc_autoreleasePoolPush();
                v72 = __atxlog_handle_relevance_model(v71);
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  v73 = objc_opt_class();
                  v74 = NSStringFromClass(v73);
                  identifier = [v70 identifier];
                  *buf = 138412546;
                  v144 = v74;
                  v145 = 2112;
                  v146 = identifier;
                  _os_log_impl(&dword_2263AA000, v72, OS_LOG_TYPE_DEFAULT, "%@ - Setting up dataset for candidate with identifier: %@", buf, 0x16u);
                }

                v76 = objc_opt_new();
                v127[0] = MEMORY[0x277D85DD0];
                v127[1] = 3221225472;
                v127[2] = __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_68;
                v127[3] = &unk_27859D3F0;
                v77 = v76;
                v128 = v77;
                [v23 receiveCandidateDataPoint:v127 completion:&__block_literal_global_71_0 candidate:v70];
                v78 = [ATXCandidateRelevanceModelDataStoreDatasetMetadata datasetMetadataForDataPoints:v77];
                v79 = __atxlog_handle_relevance_model(v78);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = objc_opt_class();
                  v81 = NSStringFromClass(v80);
                  identifier2 = [v70 identifier];
                  *buf = 138412802;
                  v144 = v81;
                  v145 = 2112;
                  v146 = identifier2;
                  v147 = 2112;
                  v148 = v78;
                  _os_log_impl(&dword_2263AA000, v79, OS_LOG_TYPE_DEFAULT, "%@ - Candidate dataset metadata for candidate identifier %@:\n%@", buf, 0x20u);
                }

                if (requirements || (v83 = [(ATXCandidateRelevanceModelConfig *)self->_config shouldTrainModelWithCandidateDatasetMetadata:v78], (v83 & 1) != 0))
                {
                  v84 = __atxlog_handle_relevance_model(v83);
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = objc_opt_class();
                    v86 = NSStringFromClass(v85);
                    identifier3 = [v70 identifier];
                    *buf = 138412546;
                    v144 = v86;
                    v145 = 2112;
                    v146 = identifier3;
                    _os_log_impl(&dword_2263AA000, v84, OS_LOG_TYPE_DEFAULT, "%@ - Training model for candidate with identifier: %@", buf, 0x16u);
                  }

                  modelTrainingPlan = [(ATXCandidateRelevanceModelConfig *)self->_config modelTrainingPlan];
                  v89 = [modelTrainingPlan trainModelForDataPoints:v77 candidate:v70 featurizationManager:featurizationManager];

                  v91 = __atxlog_handle_relevance_model(v90);
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                  {
                    v92 = objc_opt_class();
                    v93 = NSStringFromClass(v92);
                    identifier4 = [v70 identifier];
                    *buf = 138412546;
                    v144 = v93;
                    v145 = 2112;
                    v146 = identifier4;
                    _os_log_impl(&dword_2263AA000, v91, OS_LOG_TYPE_DEFAULT, "%@ - Writing model to datastore for candidate with identifier: %@", buf, 0x16u);
                  }

                  v95 = [ATXCandidateRelevanceModelDataStoreTrainingResult alloc];
                  clientModel4 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
                  clientModelId5 = [clientModel4 clientModelId];
                  v98 = [MEMORY[0x277CBEAA8] now];
                  LOBYTE(v113) = 0;
                  v99 = [(ATXCandidateRelevanceModelDataStoreTrainingResult *)v95 initWithModel:v89 candidate:v70 featurizationManager:featurizationManager modelUUID:v118 datasetMetadata:v78 clientModelName:clientModelId5 trainDate:v98 isVerified:v113];

                  self = selfCopy;
                  datastore3 = [(ATXCandidateRelevanceModelConfig *)selfCopy->_config datastore];
                  [datastore3 writeTrainingResult:v99];

                  ++v125;
                  v23 = v119;
                }

                else
                {
                  v89 = __atxlog_handle_relevance_model(v83);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    v101 = objc_opt_class();
                    v102 = NSStringFromClass(v101);
                    identifier5 = [v70 identifier];
                    *buf = 138412546;
                    v144 = v102;
                    v145 = 2112;
                    v146 = identifier5;
                    _os_log_impl(&dword_2263AA000, v89, OS_LOG_TYPE_DEFAULT, "%@ - Config specifies we shouldn't train a model given the candidate dataset metadata. Skipping model training for candidate with identifier: %@", buf, 0x16u);
                  }
                }

                objc_autoreleasePoolPop(v71);
                ++v69;
              }

              while (v122 != v69);
              v104 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
              v122 = v104;
            }

            while (v104);
          }

          else
          {
            v125 = 0;
          }

          datastore4 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
          clientModel5 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
          clientModelId6 = [clientModel5 clientModelId];
          v65 = v118;
          [datastore4 writeVerificationStatusForModelUUID:v118 clientModelName:clientModelId6 expectedNumberOfModels:v125];

          v108 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
          datastore5 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
          clientModel6 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
          clientModelId7 = [clientModel6 clientModelId];
          [datastore5 deleteCachedCandidatesForModelId:clientModelId7];

          v23 = v119;
          datastore6 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
          [datastore6 deleteTrainedModelsWithTrainDateOlderThanDate:v108];

          activityCopy = v115;
          v20 = v116;
          candidates = v114;
          goto LABEL_55;
        }

        v65 = __atxlog_handle_relevance_model(didDefer);
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
LABEL_55:

LABEL_56:
          goto LABEL_57;
        }

        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        *buf = 138412290;
        v144 = v67;
        _os_log_impl(&dword_2263AA000, v65, OS_LOG_TYPE_DEFAULT, "%@ - Stopping model training early due to deferral.", buf, 0xCu);
      }

      else
      {
        v65 = __atxlog_handle_relevance_model(v28);
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_55;
        }

        v68 = objc_opt_class();
        v67 = NSStringFromClass(v68);
        *buf = 138412802;
        v144 = v67;
        v145 = 2112;
        v146 = candidates;
        v147 = 2112;
        v148 = featurizationManager;
        _os_log_fault_impl(&dword_2263AA000, v65, OS_LOG_TYPE_FAULT, "%@ - Programmer error: Either the candidates list (%@) or featurizationManager is nil (%@).", buf, 0x20u);
      }

      goto LABEL_55;
    }
  }

  v20 = __atxlog_handle_relevance_model(isEnabled);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    clientModel7 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
    clientModelId8 = [clientModel7 clientModelId];
    *buf = 138412546;
    v144 = v30;
    v145 = 2112;
    v146 = clientModelId8;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%@ - Config with client model name %@ is not enabled or the pipeline is disabled. Skipping training.", buf, 0x16u);
  }

LABEL_57:
}

void __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(*(a1 + 32) + 8) featurizers];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [v3 context];
        v11 = [v3 candidate];
        [v9 observeContext:v10 candidate:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) observeDataPoint:v3];
  v12 = *(a1 + 48);
  v13 = [v3 candidate];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = objc_opt_new();
    v16 = *(a1 + 48);
    v17 = [v3 candidate];
    [v16 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = *(a1 + 48);
  v19 = [v3 candidate];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v20 observeDataPoint:v3];
}

uint64_t __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 currentMetadata];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 currentMetadata];

  v11 = [v10 compare:v8];
  return v11;
}

uint64_t __95__ATXCandidateRelevanceModelTrainer_trainWithXPCActivity_disregardDatasetMetadataRequirements___block_invoke_2_65(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 currentMetadata];

  v7 = __atxlog_handle_relevance_model(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v3 identifier];
    v18 = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - Candidate dataset metadata (positive only) for candidate identifier %@:\n%@", &v18, 0x20u);
  }

  if (*(a1 + 48) & 1) != 0 || (v11 = [*(*(a1 + 40) + 8) shouldTrainModelWithPositiveCandidateDatasetMetadata:v5], (v11))
  {
    v12 = 1;
  }

  else
  {
    v13 = __atxlog_handle_relevance_model(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v3 identifier];
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%@ - Config specifies we shouldn't train a model given the candidate dataset metadata (positive only). Skipping model training for candidate with identifier: %@", &v18, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)generateAndSaveDatasetWithFilename:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXCandidateRelevanceModelTrainer.m" lineNumber:102 description:@"Feature matrix does not match the size of labels."];
}

@end