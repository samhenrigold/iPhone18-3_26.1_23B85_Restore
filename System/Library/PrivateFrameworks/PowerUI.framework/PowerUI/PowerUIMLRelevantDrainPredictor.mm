@interface PowerUIMLRelevantDrainPredictor
- (BOOL)isStartSecondsValue:(double)value withinDynamicBinWindowOfLength:(int)length aroundCurrentStartSecondValue:(double)secondValue;
- (BOOL)isStartSoCValue:(double)value withinDynamicBinWindowOfLength:(int)length aroundCurrentStartSoCValue:(double)cValue;
- (MLModel)relevantDrainPredictorModel;
- (PowerUIMLRelevantDrainPredictor)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager;
- (id)analyticsEventFromFeatures:(id)features;
- (id)featuresForChargeSessionAtDate:(id)date withChargeStartSoC:(id)c withChargeAndDrainSessionHistory:(id)history;
- (id)loadModelFromBundle:(id)bundle;
- (id)predictedRelevantDrainAfterChargeSessionAtDate:(id)date withChargeStartSoC:(id)c;
- (id)predictedRelevantDrainWithFeatures:(id)features forSchemes:(id)schemes;
- (id)predictedRelevantDrainwithFeatures:(id)features;
- (id)predictedRelevantDrainwithFeatures:(id)features forModel:(id)model withThreshold:(id)threshold;
- (id)relevantDrainPredictorModelForPhoneFirstStage80Limit;
- (id)relevantDrainPredictorModelForPhoneFirstStage95Limit;
- (id)relevantDrainPredictorModelForPhoneSecondStage80Limit;
- (id)relevantDrainPredictorModelForPhoneSecondStage95Limit;
- (void)addStatisticalSummaryFeaturesintoFeatureDictionary:(id)dictionary forDataFrame:(id)frame withFeatureNameSuffix:(id)suffix whereDimension:(id)dimension isFilteredWithHandler:(id)handler;
- (void)relevantDrainPredictorModel;
@end

@implementation PowerUIMLRelevantDrainPredictor

- (PowerUIMLRelevantDrainPredictor)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager
{
  domainCopy = domain;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = PowerUIMLRelevantDrainPredictor;
  v10 = [(PowerUIMLRelevantDrainPredictor *)&v20 init];
  if (v10)
  {
    v11 = os_log_create("com.apple.powerui.smartcharging", "mlrelevantdrainpredictor");
    log = v10->_log;
    v10->_log = v11;

    objc_storeStrong(&v10->_defaultsDomain, domain);
    objc_storeStrong(&v10->_trialManager, manager);
    allKeys = [&unk_282D4EDE0 allKeys];
    v14 = kDimensions;
    kDimensions = allKeys;

    allKeys2 = [&unk_282D4EE08 allKeys];
    v16 = kMeasures;
    kMeasures = allKeys2;

    v10->_loadModelLock._os_unfair_lock_opaque = 0;
    v10->_threshold = 0.192;
    v17 = objc_opt_new();
    modelCache = v10->_modelCache;
    v10->_modelCache = v17;
  }

  return v10;
}

- (id)loadModelFromBundle:(id)bundle
{
  v23 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v5 = [(NSMutableDictionary *)self->_modelCache objectForKey:bundleCopy];
  if (!v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:bundleCopy ofType:@"mlmodelc"];
    v9 = [v6 fileURLWithPath:v8];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Loading model from %@", buf, 0xCu);
    }

    v20 = 0;
    v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v9 error:&v20];
    v11 = v20;
    v12 = self->_log;
    if (v11)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIMLRelevantDrainPredictor *)v11 loadModelFromBundle:v12, v13, v14, v15, v16, v17, v18];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "model successfully loaded", buf, 2u);
    }

    [(NSMutableDictionary *)self->_modelCache setObject:v5 forKeyedSubscript:bundleCopy];
  }

  return v5;
}

- (id)relevantDrainPredictorModelForPhoneFirstStage80Limit
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_iphone_80"];
  v5[0] = @"model";
  v5[1] = @"threshold";
  v6[0] = v2;
  v6[1] = &unk_282D4F0E0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (id)relevantDrainPredictorModelForPhoneFirstStage95Limit
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_iphone_95"];
  v5[0] = @"model";
  v5[1] = @"threshold";
  v6[0] = v2;
  v6[1] = &unk_282D4F0F0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (id)relevantDrainPredictorModelForPhoneSecondStage80Limit
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_two_stage_sequential_low_second"];
  v5[0] = @"model";
  v5[1] = @"threshold";
  v6[0] = v2;
  v6[1] = &unk_282D4F100;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (id)relevantDrainPredictorModelForPhoneSecondStage95Limit
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_two_stage_sequential_high_second"];
  v5[0] = @"model";
  v5[1] = @"threshold";
  v6[0] = v2;
  v6[1] = &unk_282D4F110;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (MLModel)relevantDrainPredictorModel
{
  v52 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_relevantDrainPredictorModel)
  {
    v3 = [(PowerUITrialManager *)self->_trialManager factorForName:@"phoneDEoCModel"];
    v4 = [(PowerUITrialManager *)self->_trialManager factorForName:@"thresholdForPhoneDEoCModel"];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v3;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Attempting to load model from Trial at path %@", buf, 0xCu);
    }

    trialManager = self->_trialManager;
    fileValue = [v3 fileValue];
    path = [fileValue path];
    v9 = [(PowerUITrialManager *)trialManager loadModelFromPath:path deleteExistingFiles:1];

    v10 = self->_log;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Trial DEoC model loading successful", buf, 2u);
      }

      v11 = v9;
      relevantDrainPredictorModel = self->_relevantDrainPredictorModel;
      self->_relevantDrainPredictorModel = v11;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIMLRelevantDrainPredictor *)v10 relevantDrainPredictorModel:v13];
      }

      v20 = MEMORY[0x277CBEBC0];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 pathForResource:@"deoc_model_iphone" ofType:@"mlmodelc"];
      v23 = [v20 fileURLWithPath:v22];

      v47 = 0;
      v24 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v23 error:&v47];
      relevantDrainPredictorModel = v47;
      v25 = self->_relevantDrainPredictorModel;
      self->_relevantDrainPredictorModel = v24;

      v26 = self->_log;
      if (relevantDrainPredictorModel)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(PowerUIMLRelevantDrainPredictor *)relevantDrainPredictorModel relevantDrainPredictorModel:v26];
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "DEoC model loaded from local file path", buf, 2u);
      }
    }

    [v4 doubleValue];
    if (v33 != 0.0)
    {
      v34 = v33;
      v35 = self->_log;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = MEMORY[0x277CCABB0];
        v37 = v35;
        v38 = [v36 numberWithDouble:v34];
        *buf = 138412290;
        v49 = v38;
        _os_log_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEFAULT, "Loaded threshold from Trial: %@", buf, 0xCu);
      }

      self->_threshold = v34;
    }
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  v39 = self->_log;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = self->_relevantDrainPredictorModel;
    v41 = v39;
    modelDescription = [(MLModel *)v40 modelDescription];
    metadata = [modelDescription metadata];
    threshold = self->_threshold;
    *buf = 138412546;
    v49 = metadata;
    v50 = 2048;
    v51 = threshold;
    _os_log_impl(&dword_21B766000, v41, OS_LOG_TYPE_DEFAULT, "Model loaded with metadata %@ \n and threshold %f", buf, 0x16u);
  }

  v45 = self->_relevantDrainPredictorModel;

  return v45;
}

- (id)featuresForChargeSessionAtDate:(id)date withChargeStartSoC:(id)c withChargeAndDrainSessionHistory:(id)history
{
  v162 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  cCopy = c;
  historyCopy = history;
  v90 = objc_opt_new();
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = historyCopy;
  v9 = [obj countByEnumeratingWithState:&v150 objects:v161 count:16];
  if (v9)
  {
    v10 = *v151;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v151 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v150 + 1) + 8 * i) mutableCopy];
        [v90 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v150 objects:v161 count:16];
    }

    while (v9);
  }

  if ([v90 count] >= 3)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v92 = v90;
    v13 = [v92 countByEnumeratingWithState:&v146 objects:v160 count:16];
    if (v13)
    {
      v14 = *v147;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v147 != v14)
          {
            objc_enumerationMutation(v92);
          }

          v16 = *(*(&v146 + 1) + 8 * j);
          v17 = [v16 objectForKeyedSubscript:@"start"];
          v18 = [PowerUIPredictorHelper convertDateToSeconds:v17];
          [v16 setObject:v18 forKeyedSubscript:@"charge_start_secs"];
        }

        v13 = [v92 countByEnumeratingWithState:&v146 objects:v160 count:16];
      }

      while (v13);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v19 = kMeasures;
    v20 = [v19 countByEnumeratingWithState:&v142 objects:v159 count:16];
    if (v20)
    {
      v21 = *v143;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v143 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v142 + 1) + 8 * k);
          v24 = [&unk_282D4EE30 objectForKeyedSubscript:v23];
          [PowerUIPredictorHelper quantizeValuesInDataFrame:v92 forColumn:v23 withBinWidth:v24];
        }

        v20 = [v19 countByEnumeratingWithState:&v142 objects:v159 count:16];
      }

      while (v20);
    }

    v94 = objc_opt_new();
    v25 = [PowerUIPredictorHelper convertDateToSeconds:dateCopy];
    [v25 doubleValue];
    v27 = v26;

    v28 = [&unk_282D4EE58 objectForKeyedSubscript:@"charge_start_secs"];
    integerValue = [v28 integerValue];

    v93 = v27;
    v30 = v27 / integerValue;
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v30];
    [v94 setObject:v31 forKeyedSubscript:@"curr_charge_start_secs_bin"];

    [cCopy doubleValue];
    v33 = v32;
    v34 = [&unk_282D4EE80 objectForKeyedSubscript:@"charge_start_soc"];
    integerValue2 = [v34 integerValue];

    v85 = v33 / integerValue2;
    v36 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v94 setObject:v36 forKeyedSubscript:@"curr_charge_start_soc_bin"];

    v138 = 0;
    v139 = &v138;
    v140 = 0x2020000000;
    v141 = 0;
    v134 = 0;
    v135 = &v134;
    v136 = 0x2020000000;
    v137 = 0;
    v37 = [&unk_282D4EEA8 objectForKeyedSubscript:@"charge_start_secs"];
    integerValue3 = [v37 integerValue];
    v39 = v30;
    v139[3] = integerValue3 * v30;

    v40 = [&unk_282D4EED0 objectForKeyedSubscript:@"charge_start_secs"];
    integerValue4 = [v40 integerValue];
    v135[3] = v39 + v39 * integerValue4;

    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke;
    v133[3] = &unk_2782D4900;
    v133[4] = &v138;
    v133[5] = &v134;
    [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v94 forDataFrame:v92 withFeatureNameSuffix:@"static_bin" whereDimension:@"charge_start_secs" isFilteredWithHandler:v133];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v42 = 0;
    v43 = [&unk_282D4EA58 countByEnumeratingWithState:&v129 objects:v158 count:16];
    if (v43)
    {
      v44 = *v130;
      do
      {
        v45 = 0;
        v46 = v42;
        do
        {
          if (*v130 != v44)
          {
            objc_enumerationMutation(&unk_282D4EA58);
          }

          v47 = *(*(&v129 + 1) + 8 * v45);
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_2;
          v127[3] = &unk_2782D4928;
          v127[4] = self;
          v127[5] = v47;
          v128 = v93;
          v42 = MEMORY[0x21CEF8A60](v127);

          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamic_bin_%@", v47];
          [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v94 forDataFrame:v92 withFeatureNameSuffix:v48 whereDimension:@"charge_start_secs" isFilteredWithHandler:v42];

          ++v45;
          v46 = v42;
        }

        while (v43 != v45);
        v43 = [&unk_282D4EA58 countByEnumeratingWithState:&v129 objects:v158 count:16];
      }

      while (v43);
    }

    v91 = v42;
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v49 = [&unk_282D4EEF8 objectForKeyedSubscript:@"charge_start_soc"];
    integerValue5 = [v49 integerValue];
    v124[3] = integerValue5 * v85;

    v51 = [&unk_282D4EF20 objectForKeyedSubscript:@"charge_start_soc"];
    integerValue6 = [v51 integerValue];
    v120[3] = v85 + v85 * integerValue6;

    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_3;
    v118[3] = &unk_2782D4900;
    v118[4] = &v123;
    v118[5] = &v119;
    [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v94 forDataFrame:v92 withFeatureNameSuffix:@"static_bin" whereDimension:@"charge_start_soc" isFilteredWithHandler:v118];
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v53 = [&unk_282D4EA58 countByEnumeratingWithState:&v114 objects:v157 count:16];
    if (v53)
    {
      v54 = *v115;
      do
      {
        v55 = 0;
        v56 = v91;
        do
        {
          if (*v115 != v54)
          {
            objc_enumerationMutation(&unk_282D4EA58);
          }

          v57 = *(*(&v114 + 1) + 8 * v55);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_4;
          v112[3] = &unk_2782D4928;
          v112[4] = self;
          v112[5] = v57;
          v113 = v33;
          v91 = MEMORY[0x21CEF8A60](v112);

          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamic_bin_%@", v57];
          [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v94 forDataFrame:v92 withFeatureNameSuffix:v58 whereDimension:@"charge_start_soc" isFilteredWithHandler:v91];

          ++v55;
          v56 = v91;
        }

        while (v53 != v55);
        v53 = [&unk_282D4EA58 countByEnumeratingWithState:&v114 objects:v157 count:16];
      }

      while (v53);
    }

    for (m = 1; m != 4; ++m)
    {
      v60 = [v92 objectAtIndex:{objc_msgSend(v92, "count") - m}];
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v61 = kMeasures;
      v62 = [v61 countByEnumeratingWithState:&v108 objects:v156 count:16];
      if (v62)
      {
        v63 = *v109;
        do
        {
          for (n = 0; n != v62; ++n)
          {
            if (*v109 != v63)
            {
              objc_enumerationMutation(v61);
            }

            v65 = *(*(&v108 + 1) + 8 * n);
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"prev_%d_%@", m, v65];
            v67 = [v60 objectForKeyedSubscript:v65];
            [v94 setObject:v67 forKeyedSubscript:v66];
          }

          v62 = [v61 countByEnumeratingWithState:&v108 objects:v156 count:16];
        }

        while (v62);
      }
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v68 = [&unk_282D4EA70 countByEnumeratingWithState:&v104 objects:v155 count:16];
    v69 = v92;
    if (v68)
    {
      v70 = 0;
      v84 = *v105;
      v86 = v68;
      do
      {
        for (ii = 0; ii != v86; ++ii)
        {
          if (*v105 != v84)
          {
            objc_enumerationMutation(&unk_282D4EA70);
          }

          integerValue7 = [*(*(&v104 + 1) + 8 * ii) integerValue];
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_5;
          v101[3] = &unk_2782D4950;
          v102 = dateCopy;
          v103 = integerValue7;
          v72 = [PowerUIPredictorHelper filterDataFrame:v69 forColumn:@"start" withFilterHandler:v101];
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v73 = [&unk_282D4EA88 countByEnumeratingWithState:&v97 objects:v154 count:16];
          if (v73)
          {
            v74 = *v98;
            do
            {
              for (jj = 0; jj != v73; ++jj)
              {
                if (*v98 != v74)
                {
                  objc_enumerationMutation(&unk_282D4EA88);
                }

                integerValue8 = [*(*(&v97 + 1) + 8 * jj) integerValue];
                v96[0] = MEMORY[0x277D85DD0];
                v96[1] = 3221225472;
                v96[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_6;
                v96[3] = &__block_descriptor_40_e8_B16__0_8l;
                v96[4] = integerValue8;
                v77 = [PowerUIPredictorHelper filterDataFrame:v72 forColumn:@"drain_depth" withFilterHandler:v96];
                v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_below_%lu_%lddays", integerValue8, integerValue7];

                v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];
                [v94 setObject:v79 forKeyedSubscript:v78];

                v95[0] = MEMORY[0x277D85DD0];
                v95[1] = 3221225472;
                v95[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_7;
                v95[3] = &__block_descriptor_40_e8_B16__0_8l;
                v95[4] = integerValue8;
                v80 = [PowerUIPredictorHelper filterDataFrame:v72 forColumn:@"drain_depth" withFilterHandler:v95];
                v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_above_%lu_%lddays", integerValue8, integerValue7];

                v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v80, "count")}];
                [v94 setObject:v81 forKeyedSubscript:v70];
              }

              v73 = [&unk_282D4EA88 countByEnumeratingWithState:&v97 objects:v154 count:16];
            }

            while (v73);
          }

          v69 = v92;
        }

        v86 = [&unk_282D4EA70 countByEnumeratingWithState:&v104 objects:v155 count:16];
      }

      while (v86);
    }

    else
    {
      v70 = 0;
    }

    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);

    _Block_object_dispose(&v134, 8);
    _Block_object_dispose(&v138, 8);
  }

  else
  {
    v94 = MEMORY[0x277CBEC10];
  }

  return v94;
}

uint64_t __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 doubleValue];
  v5 = v4;
  v6 = [*(a1 + 40) integerValue];
  v7 = *(a1 + 48);

  return [v3 isStartSecondsValue:v6 withinDynamicBinWindowOfLength:v5 aroundCurrentStartSecondValue:v7];
}

uint64_t __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 doubleValue];
  v5 = v4;
  v6 = [*(a1 + 40) integerValue];
  v7 = *(a1 + 48);

  return [v3 isStartSoCValue:v6 withinDynamicBinWindowOfLength:v5 aroundCurrentStartSoCValue:v7];
}

- (BOOL)isStartSecondsValue:(double)value withinDynamicBinWindowOfLength:(int)length aroundCurrentStartSecondValue:(double)secondValue
{
  lengthCopy = length;
  v8 = [&unk_282D4EF48 objectForKeyedSubscript:@"charge_start_secs"];
  v9 = (secondValue - ([v8 integerValue] * lengthCopy));

  v10 = [&unk_282D4EF70 objectForKeyedSubscript:@"charge_start_secs"];
  v11 = (([v10 integerValue] * lengthCopy) + secondValue);

  if ((v9 & 0x80000000) != 0)
  {
    v15 = value >= 0.0;
    if (v11 <= value)
    {
      v15 = 0;
    }

    return (v9 + 86400 * (-v9 / 0x15180)) <= value || v15;
  }

  else
  {
    v12 = v9;
    if (v11 < 86401)
    {
      return v11 > value && v12 <= value;
    }

    else
    {
      v13 = value < 86400.0;
      if (v12 > value)
      {
        v13 = 0;
      }

      return (v11 % 0x15180u) > value || v13;
    }
  }
}

- (BOOL)isStartSoCValue:(double)value withinDynamicBinWindowOfLength:(int)length aroundCurrentStartSoCValue:(double)cValue
{
  lengthCopy = length;
  v8 = [&unk_282D4EF98 objectForKeyedSubscript:@"charge_start_soc"];
  v9 = (cValue - ([v8 integerValue] * lengthCopy));

  v10 = [&unk_282D4EFC0 objectForKeyedSubscript:@"charge_start_soc"];
  v11 = (([v10 integerValue] * lengthCopy) + cValue);

  if (v11 >= 100)
  {
    v12 = 100;
  }

  else
  {
    v12 = v11;
  }

  return v12 > value && (v9 & ~(v9 >> 31)) <= value;
}

- (void)addStatisticalSummaryFeaturesintoFeatureDictionary:(id)dictionary forDataFrame:(id)frame withFeatureNameSuffix:(id)suffix whereDimension:(id)dimension isFilteredWithHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  suffixCopy = suffix;
  dimensionCopy = dimension;
  v12 = [PowerUIPredictorHelper filterDataFrame:frame forColumn:dimensionCopy withFilterHandler:handler];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = kMeasures;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v31)
  {
    suffixCopy = 0;
    v30 = *v40;
    do
    {
      v14 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v14;
        v15 = *(*(&v39 + 1) + 8 * v14);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = [&unk_282D4EA40 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          do
          {
            v19 = 0;
            v20 = suffixCopy;
            do
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(&unk_282D4EA40);
              }

              [*(*(&v35 + 1) + 8 * v19) doubleValue];
              v22 = v21;
              suffixCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_p_%d_%d%d_at_%@_curr_%@", v15, v21, ((v21 * 10.0) % 10), ((v21 * 100.0) % 10), dimensionCopy, suffixCopy];

              v23 = [PowerUIPredictorHelper percentile:v15 forColumn:v12 inDataFrame:v22];
              [dictionaryCopy setObject:v23 forKeyedSubscript:suffixCopy];

              ++v19;
              v20 = suffixCopy;
            }

            while (v17 != v19);
            v17 = [&unk_282D4EA40 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v17);
        }

        suffixCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_count_at_%@_curr_%@", v15, dimensionCopy, suffixCopy];

        v25 = [PowerUIPredictorHelper countForColumn:v15 inDataFrame:v12];
        [dictionaryCopy setObject:v25 forKeyedSubscript:suffixCopy2];

        suffixCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_mean_at_%@_curr_%@", v15, dimensionCopy, suffixCopy];

        v27 = [PowerUIPredictorHelper meanForColumn:v15 inDataFrame:v12];
        [dictionaryCopy setObject:v27 forKeyedSubscript:suffixCopy3];

        suffixCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_var_at_%@_curr_%@", v15, dimensionCopy, suffixCopy];

        v28 = [PowerUIPredictorHelper varianceForColumn:v15 inDataFrame:v12];
        [dictionaryCopy setObject:v28 forKeyedSubscript:suffixCopy];

        v14 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v31);
  }
}

- (id)predictedRelevantDrainAfterChargeSessionAtDate:(id)date withChargeStartSoC:(id)c
{
  cCopy = c;
  dateCopy = date;
  v8 = [PowerUISmartChargeUtilities drainSessionsInfoBetweenRelevantChargesBefore:dateCopy withMinimumDuration:0.0];
  v9 = [(PowerUIMLRelevantDrainPredictor *)self featuresForChargeSessionAtDate:dateCopy withChargeStartSoC:cCopy withChargeAndDrainSessionHistory:v8];

  v10 = [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainwithFeatures:v9];

  return v10;
}

- (id)predictedRelevantDrainWithFeatures:(id)features forSchemes:(id)schemes
{
  v61 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  schemesCopy = schemes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = schemesCopy;
  v8 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v8)
  {
    v51 = *v55;
    v47 = featuresCopy;
    selfCopy = self;
    while (2)
    {
      v9 = 0;
      v10 = v8;
      v48 = v8;
      do
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * v9);
        v53 = objc_opt_new();
        integerValue = [v11 integerValue];
        if (integerValue > 2)
        {
          if (integerValue == 3)
          {
            relevantDrainPredictorModelForPhoneFirstStage80Limit = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage80Limit];
            v28 = [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"model"];
            v29 = [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"threshold"];
            [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainwithFeatures:featuresCopy forModel:v28 withThreshold:v29];
            v23 = v30 = self;

            [v23 setSuggestedLimitForSignificantDrain:80];
            if ([v23 significantDrainAhead])
            {
              relevantDrainPredictorModelForPhoneSecondStage95Limit = [(PowerUIMLRelevantDrainPredictor *)v30 relevantDrainPredictorModelForPhoneSecondStage95Limit];
              v32 = [relevantDrainPredictorModelForPhoneSecondStage95Limit objectForKeyedSubscript:@"model"];
              v33 = [relevantDrainPredictorModelForPhoneSecondStage95Limit objectForKeyedSubscript:@"threshold"];
              v17 = [(PowerUIMLRelevantDrainPredictor *)v30 predictedRelevantDrainwithFeatures:v47 forModel:v32 withThreshold:v33];

              featuresCopy = v47;
              v24 = v48;
              [v17 setSuggestedLimitForSignificantDrain:95];
              [v17 setPrevStageResult:v23];
            }

            else
            {
              v17 = v23;
              v24 = v10;
              relevantDrainPredictorModelForPhoneSecondStage95Limit = v53;
            }
          }

          else
          {
            if (integerValue != 4)
            {
LABEL_30:
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                [PowerUIMLRelevantDrainPredictor predictedRelevantDrainWithFeatures:? forSchemes:?];
              }

              goto LABEL_33;
            }

            relevantDrainPredictorModelForPhoneFirstStage80Limit = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage95Limit];
            v20 = [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"model"];
            v21 = [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"threshold"];
            [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainwithFeatures:featuresCopy forModel:v20 withThreshold:v21];
            v23 = v22 = self;

            [v23 setSuggestedLimitForSignificantDrain:95];
            if ([v23 significantDrainAhead])
            {
              v17 = v23;
              v24 = v48;
              v25 = v53;
            }

            else
            {
              [(PowerUIMLRelevantDrainPredictor *)v22 relevantDrainPredictorModelForPhoneSecondStage80Limit];
              v35 = v34 = featuresCopy;
              v36 = [v35 objectForKeyedSubscript:@"model"];
              v37 = [v35 objectForKeyedSubscript:@"threshold"];
              v38 = [(PowerUIMLRelevantDrainPredictor *)v22 predictedRelevantDrainwithFeatures:v34 forModel:v36 withThreshold:v37];

              [v38 setSuggestedLimitForSignificantDrain:80];
              significantDrainAhead = [v38 significantDrainAhead];
              v40 = v23;
              if ((significantDrainAhead & 1) == 0)
              {
                [v38 setPrevStageResult:v23];
                v40 = v38;
              }

              v17 = v40;

              v25 = v35;
              featuresCopy = v47;
              v24 = v48;
            }
          }

          v15 = selfCopy;
        }

        else
        {
          if (integerValue == 1)
          {
            relevantDrainPredictorModelForPhoneFirstStage80Limit = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage80Limit];
            v26 = [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"model"];
            [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"threshold"];
            v27 = v15 = self;
            v17 = [(PowerUIMLRelevantDrainPredictor *)v15 predictedRelevantDrainwithFeatures:featuresCopy forModel:v26 withThreshold:v27];

            v18 = v17;
            v19 = 80;
          }

          else
          {
            if (integerValue != 2)
            {
              goto LABEL_30;
            }

            relevantDrainPredictorModelForPhoneFirstStage80Limit = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage95Limit];
            v14 = [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"model"];
            [relevantDrainPredictorModelForPhoneFirstStage80Limit objectForKeyedSubscript:@"threshold"];
            v16 = v15 = self;
            v17 = [(PowerUIMLRelevantDrainPredictor *)v15 predictedRelevantDrainwithFeatures:featuresCopy forModel:v14 withThreshold:v16];

            v18 = v17;
            v19 = 95;
          }

          [v18 setSuggestedLimitForSignificantDrain:{v19, v47}];
          v24 = v10;
        }

        [v17 setScheme:{objc_msgSend(v11, "integerValue")}];
        v41 = v15->_log;
        self = v15;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          predictionSchemeString = [v17 predictionSchemeString];
          *buf = 138412290;
          v59 = predictionSchemeString;
          _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Predicted for scheme: %@", buf, 0xCu);
        }

        v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue", v47)}];
        [dictionary setObject:v17 forKeyedSubscript:v44];

        ++v9;
        v10 = v24;
      }

      while (v24 != v9);
      v8 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  return dictionary;
}

- (id)predictedRelevantDrainwithFeatures:(id)features
{
  v3 = [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainWithFeatures:features forSchemes:&unk_282D4EAA0];
  allValues = [v3 allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

- (id)predictedRelevantDrainwithFeatures:(id)features forModel:(id)model withThreshold:(id)threshold
{
  v31 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  modelCopy = model;
  thresholdCopy = threshold;
  v11 = objc_opt_new();
  [thresholdCopy doubleValue];
  [v11 setThreshold:?];
  if (featuresCopy)
  {
    allKeys = [featuresCopy allKeys];
    v13 = [allKeys count];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:featuresCopy error:0];
      v28 = 0;
      v15 = [modelCopy predictionFromFeatures:v14 error:&v28];
      v16 = v28;
      if (v16)
      {
        v17 = v16;
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v17;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Error in prediction %@", buf, 0xCu);
        }

        dictionaryValue = v15;
      }

      else
      {
        v20 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v20 dictionaryValue];

        v21 = [dictionaryValue objectForKeyedSubscript:&unk_282D4E398];
        [v21 doubleValue];
        v23 = v22;

        [v11 setConfidence:v23];
        [thresholdCopy doubleValue];
        [v11 setThreshold:?];
        [v11 confidence];
        v25 = v24;
        [v11 threshold];
        [v11 setSignificantDrainAhead:v25 >= v26];
        v17 = v15;
      }
    }
  }

  return v11;
}

- (id)analyticsEventFromFeatures:(id)features
{
  v34 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [&unk_282D4EA70 countByEnumeratingWithState:&v28 objects:v33 count:16];
  v3 = 0;
  v4 = 0;
  if (v17)
  {
    v16 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(&unk_282D4EA70);
        }

        v18 = v5;
        v22 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v23 = [&unk_282D4EA88 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v23)
        {
          v21 = *v25;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(&unk_282D4EA88);
              }

              v7 = *(*(&v24 + 1) + 8 * i);
              integerValue = [v22 integerValue];
              integerValue2 = [v7 integerValue];
              v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_below_%lu_%lddays", integerValue2, integerValue];

              v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ndays_below_%lu_%lddays", integerValue2, integerValue];

              v12 = [featuresCopy objectForKeyedSubscript:v10];
              [dictionary setObject:v12 forKeyedSubscript:v11];

              v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_above_%lu_%lddays", integerValue2, integerValue];

              v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"ndays_above_%lu_%lddays", integerValue2, integerValue];

              v13 = [featuresCopy objectForKeyedSubscript:v4];
              [dictionary setObject:v13 forKeyedSubscript:v3];
            }

            v23 = [&unk_282D4EA88 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v23);
        }

        ++v5;
      }

      while (v18 + 1 != v17);
      v17 = [&unk_282D4EA70 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v17);
  }

  v14 = dictionary;

  return dictionary;
}

- (void)loadModelFromBundle:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_21B766000, a2, a3, "Error loading model %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)relevantDrainPredictorModel
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_0(&dword_21B766000, a2, a3, "Error loading model from path: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end