@interface SearchToolL2ModelManager
- (BOOL)loadDictionary;
- (BOOL)loadModel;
- (SearchToolL2ModelManager)init;
- (double)getThreshold:(unint64_t)threshold;
- (id)getModelName:(unint64_t)name;
- (id)predict:(id)predict;
- (void)extractFeatures:(id)features providersPerBundle:(id)bundle indicesPerBundle:(id)perBundle;
- (void)predictProcessedFeatures:(id)features indicesPerBundle:(id)bundle allResults:(id)results;
- (void)unloadModel;
@end

@implementation SearchToolL2ModelManager

- (SearchToolL2ModelManager)init
{
  v6.receiver = self;
  v6.super_class = SearchToolL2ModelManager;
  v2 = [(SearchToolL2ModelManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB30]);
    condition = v2->_condition;
    v2->_condition = v3;
  }

  v2->_loaded = 0;
  return v2;
}

- (BOOL)loadModel
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  [(NSCondition *)self->_condition lock];
  if (selfCopy->_loaded)
  {
    v3 = SSGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] model is already loaded!", buf, 2u);
    }

    [(NSCondition *)selfCopy->_condition unlock];
    return 1;
  }

  else
  {
    selfCopy->_loaded = 0;
    if ([(SearchToolL2ModelManager *)selfCopy loadDictionary])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = selfCopy->_modelConfigs;
      v26 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v26)
      {
        v24 = *v29;
        v25 = selfCopy;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v28 + 1) + 8 * i);
            v7 = [(NSMutableDictionary *)selfCopy->_modelConfigs objectForKeyedSubscript:v6];
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"searchToolL2_%@.mlmodelc", v6];
            v9 = SSDefaultsGetAssetPath(v8);
            v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
            v11 = objc_opt_new();
            v27 = 0;
            v12 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v10 configuration:v11 error:&v27];
            v13 = v27;
            [v7 setModel:v12];

            model = [v7 model];

            v15 = SSGeneralLog();
            v16 = v15;
            if (model)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                [v7 threshold];
                *buf = 138412546;
                v33 = v6;
                v34 = 2048;
                v35 = v17;
                _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] loaded model %@. threshold=%f", buf, 0x16u);
              }

              selfCopy = v25;
            }

            else
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v33 = v8;
                _os_log_error_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_ERROR, "[SpotlightRanking] [SearchTool] [L2] failed to load model %@", buf, 0xCu);
              }

              selfCopy = v25;
              modelConfigs = v25->_modelConfigs;
              v25->_modelConfigs = 0;

              [(NSCondition *)v25->_condition unlock];
            }

            if (!model)
            {

              return 0;
            }
          }

          v26 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v19 = SSGeneralLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_msgSend_count(selfCopy->_modelConfigs);
        *buf = 134217984;
        v33 = v20;
        _os_log_impl(&dword_1D9F69000, v19, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] successfully loaded %lu l2 model", buf, 0xCu);
      }

      v4 = 1;
      selfCopy->_loaded = 1;
      [(NSCondition *)selfCopy->_condition unlock];
    }

    else
    {
      v21 = SSGeneralLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(SearchToolL2ModelManager *)v21 loadModel];
      }

      [(NSCondition *)selfCopy->_condition unlock];
      return 0;
    }
  }

  return v4;
}

- (void)unloadModel
{
  [(NSCondition *)self->_condition lock];
  modelConfigs = self->_modelConfigs;
  self->_modelConfigs = 0;

  self->_loaded = 0;
  v4 = SSGeneralLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9F69000, v4, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] unloaded L3 model!", v5, 2u);
  }

  [(NSCondition *)self->_condition unlock];
}

- (BOOL)loadDictionary
{
  v3 = [L3ModelManager loadMdpData:@"searchtool_l2_dict.mdplist"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  _MDPlistGetRootPlistObjectFromPlist();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  modelConfigs = self->_modelConfigs;
  self->_modelConfigs = v5;

  _MDPlistDictionaryIterate();
  v7 = objc_msgSend_count(self->_modelConfigs, 0, 0, 0) != 0;
  CFRelease(v4);
  return v7;
}

void __42__SearchToolL2ModelManager_loadDictionary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v11, 0, sizeof(v11));
  v7 = objc_alloc_init(ModelConfig);
  v8 = [L3ModelManager getArrayStringField:a4 fieldName:"features"];
  [(ModelConfig *)v7 setFeatureNames:v8];

  [L3ModelManager getFloatFeatureField:a4 valueObj:v11 fieldName:"threshold" defaultValue:0.0];
  [(ModelConfig *)v7 setThreshold:?];
  v9 = *(*(a1 + 32) + 24);
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v9 setObject:v7 forKeyedSubscript:v10];
}

- (id)getModelName:(unint64_t)name
{
  v3 = @"MobileSMS";
  v4 = @"mobilecal";
  v5 = @"mobileslideshow";
  if ((name & 0x3E060000) == 0)
  {
    v5 = 0;
  }

  if ((name & 0x20) == 0)
  {
    v4 = v5;
  }

  if ((name & 8) == 0)
  {
    v3 = v4;
  }

  if ((name & 0x100000) != 0)
  {
    return @"mobilemail";
  }

  else
  {
    return v3;
  }
}

- (void)extractFeatures:(id)features providersPerBundle:(id)bundle indicesPerBundle:(id)perBundle
{
  v78 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  bundleCopy = bundle;
  perBundleCopy = perBundle;
  if (objc_msgSend_count(self->_modelConfigs))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    selfCopy = self;
    v11 = self->_modelConfigs;
    v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v72;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v72 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v71 + 1) + 8 * i);
          array = [MEMORY[0x1E695DF70] array];
          [v10 setObject:array forKeyedSubscript:v16];

          array2 = [MEMORY[0x1E695DF70] array];
          [perBundleCopy setObject:array2 forKeyedSubscript:v16];
        }

        v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v13);
    }

    if (objc_msgSend_count(featuresCopy))
    {
      v19 = 0;
      v53 = bundleCopy;
      v54 = featuresCopy;
      do
      {
        v20 = [featuresCopy objectAtIndexedSubscript:v19];
        v21 = [v20 objectForKeyedSubscript:@"bundleIDType"];
        intValue = [v21 intValue];

        v23 = [(SearchToolL2ModelManager *)selfCopy getModelName:intValue];
        if (v23)
        {
          v24 = featuresCopy;
          v25 = [v10 objectForKeyedSubscript:v23];
          v26 = [perBundleCopy objectForKeyedSubscript:v23];
          v27 = [(NSMutableDictionary *)selfCopy->_modelConfigs objectForKeyedSubscript:v23];
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && v27 != 0)
          {
            v56 = v26;
            v57 = v25;
            v58 = v23;
            v59 = v19;
            v30 = v27;
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v55 = v30;
            featureNames = [v30 featureNames];
            v33 = [featureNames countByEnumeratingWithState:&v67 objects:v76 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v68;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v68 != v35)
                  {
                    objc_enumerationMutation(featureNames);
                  }

                  v37 = *(*(&v67 + 1) + 8 * j);
                  v38 = [v20 objectForKeyedSubscript:v37];
                  [v38 doubleValue];
                  v40 = v39;

                  v41 = [MEMORY[0x1E695FE60] featureValueWithDouble:v40];
                  [dictionary setObject:v41 forKeyedSubscript:v37];
                }

                v34 = [featureNames countByEnumeratingWithState:&v67 objects:v76 count:16];
              }

              while (v34);
            }

            v42 = objc_alloc(MEMORY[0x1E695FE48]);
            v66 = 0;
            v43 = [v42 initWithDictionary:dictionary error:&v66];
            [v57 addObject:v43];
            v19 = v59;
            v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v59];
            v26 = v56;
            [v56 addObject:v44];

            v25 = v57;
            bundleCopy = v53;
            v24 = v54;
            v23 = v58;
            v27 = v55;
          }

          featuresCopy = v24;
        }

        ++v19;
      }

      while (v19 < objc_msgSend_count(featuresCopy));
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v45 = v10;
    v46 = [v45 countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v63;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v63 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v62 + 1) + 8 * k);
          v51 = [v45 objectForKeyedSubscript:v50];
          if (objc_msgSend_count(v51))
          {
            v52 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v51];
            [bundleCopy setObject:v52 forKeyedSubscript:v50];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v47);
    }
  }
}

- (id)predict:(id)predict
{
  predictCopy = predict;
  if (objc_msgSend_count(self->_modelConfigs))
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(predictCopy)];
    if (objc_msgSend_count(predictCopy))
    {
      v6 = 0;
      do
      {
        [v5 addObject:&unk_1F55B6D48];
        ++v6;
      }

      while (v6 < objc_msgSend_count(predictCopy));
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(SearchToolL2ModelManager *)self extractFeatures:predictCopy providersPerBundle:dictionary indicesPerBundle:dictionary2];
    if (objc_msgSend_count(dictionary))
    {
      [(SearchToolL2ModelManager *)self predictProcessedFeatures:dictionary indicesPerBundle:dictionary2 allResults:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)predictProcessedFeatures:(id)features indicesPerBundle:(id)bundle allResults:(id)results
{
  v62 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  bundleCopy = bundle;
  resultsCopy = results;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = featuresCopy;
  v46 = [featuresCopy countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v46)
  {
    v43 = *v54;
    v10 = @"prob";
    v11 = 0x1E696A000uLL;
    *&v9 = 134218240;
    v42 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        v14 = [(NSMutableDictionary *)self->_modelConfigs objectForKeyedSubscript:v13, v42];
        model = [v14 model];

        v16 = [obj objectForKeyedSubscript:v13];
        v17 = [bundleCopy objectForKeyedSubscript:v13];
        v52 = 0;
        v18 = [model predictionsFromBatch:v16 error:&v52];
        v19 = v52;
        v50 = v16;
        v51 = model;
        v48 = v19;
        v49 = v12;
        if (v19)
        {
          v20 = v19;
          v21 = SSGeneralLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v58 = v20;
            v22 = v21;
            v23 = "[SpotlightRanking] [SearchTool] [L2] prediction error %@";
            v24 = 12;
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        v25 = objc_msgSend_count(v18);
        if (v25 != objc_msgSend_count(v17))
        {
          v21 = SSGeneralLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v40 = objc_msgSend_count(v18);
            v41 = objc_msgSend_count(v17);
            *buf = v42;
            v58 = v40;
            v59 = 2048;
            v60 = v41;
            v22 = v21;
            v23 = "[SpotlightRanking] [SearchTool] [L2] batch prediction results returns a different count %lu from features count %lu";
            v24 = 22;
LABEL_16:
            _os_log_error_impl(&dword_1D9F69000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
          }

LABEL_17:

          goto LABEL_18;
        }

        if (objc_msgSend_count(v18) >= 1)
        {
          v26 = 0;
          do
          {
            v27 = [v18 featuresAtIndex:v26];
            [v27 featureValueForName:v10];
            v29 = v28 = resultsCopy;
            [v29 dictionaryValue];
            v30 = v17;
            v32 = v31 = v11;
            [v32 objectForKeyedSubscript:&unk_1F55B3C48];
            v34 = v33 = v10;
            [v34 doubleValue];
            v36 = v35;

            v11 = v31;
            v17 = v30;

            v37 = [v30 objectAtIndexedSubscript:v26];
            LODWORD(v29) = [v37 intValue];

            v38 = [*(v11 + 3480) numberWithDouble:v36];
            v39 = v29;
            resultsCopy = v28;
            [v28 setObject:v38 atIndexedSubscript:v39];

            v10 = v33;
            ++v26;
          }

          while (v26 < objc_msgSend_count(v18));
        }

LABEL_18:

        v12 = v49 + 1;
      }

      while (v49 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v46);
  }
}

- (double)getThreshold:(unint64_t)threshold
{
  v4 = [(SearchToolL2ModelManager *)self getModelName:threshold];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_modelConfigs objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      [v5 threshold];
      v8 = v7;
    }

    else
    {
      v8 = -1.0;
    }
  }

  else
  {
    v8 = -1.0;
  }

  return v8;
}

@end