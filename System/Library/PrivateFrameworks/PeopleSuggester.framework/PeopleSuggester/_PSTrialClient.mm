@interface _PSTrialClient
- (BOOL)BOOLForKey:(id)key;
- (BOOL)containsKey:(id)key;
- (BOOL)shouldActivatePSR;
- (BOOL)shouldComputePhotoBasedFeatures;
- (BOOL)shouldEnableDataCollection;
- (BOOL)shouldProcessPicturesLive;
- (BOOL)shouldUseVIPModel;
- (_PSTrialClient)init;
- (double)doubleForKey:(id)key;
- (double)maxComputationTime;
- (id)arrayForKey:(id)key;
- (id)arrayOfArraysForKey:(id)key;
- (id)getTrialExperiment;
- (id)loadCoreMLModel:(id)model config:(id)config;
- (id)mutableDictionaryForKey:(id)key;
- (id)mutableDictionaryOfSetsForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)rankingModel;
- (id)recipe;
- (id)suggestionProxyOrder;
- (int)dataCollectionTimeToWaitInSeconds;
- (unint64_t)integerForKey:(id)key;
- (void)updateConfigWithTrialOverrides:(id)overrides;
- (void)updateFactors;
@end

@implementation _PSTrialClient

- (_PSTrialClient)init
{
  v22.receiver = self;
  v22.super_class = _PSTrialClient;
  v2 = [(_PSTrialClient *)&v22 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = standardUserDefaults;

    v5 = objc_alloc(MEMORY[0x1E69C5D60]);
    v6 = objc_opt_new();
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getTRIClientClass_softClass_0;
    v27 = getTRIClientClass_softClass_0;
    if (!getTRIClientClass_softClass_0)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getTRIClientClass_block_invoke_0;
      location[3] = &unk_1E7C23BF0;
      location[4] = &v24;
      __getTRIClientClass_block_invoke_0(location);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    v9 = [v7 clientWithIdentifier:210];
    v10 = v6[1];
    v6[1] = v9;

    objc_initWeak(location, v2);
    v11 = v6[1];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __22___PSTrialClient_init__block_invoke;
    v20 = &unk_1E7C24830;
    objc_copyWeak(&v21, location);
    v12 = [v11 addUpdateHandlerForNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER" usingBlock:&v17];
    v13 = v6[5];
    v6[5] = v12;

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
    v14 = [v5 initWithGuardedData:{v6, v17, v18, v19, v20}];
    lock = v2->_lock;
    v2->_lock = v14;

    [(_PSTrialClient *)v2 updateFactors];
  }

  return v2;
}

- (void)updateFactors
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31___PSTrialClient_updateFactors__block_invoke;
  v3[3] = &unk_1E7C24E28;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (id)getTrialExperiment
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___PSTrialClient_getTrialExperiment__block_invoke;
  v5[3] = &unk_1E7C24E78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)recipe
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24___PSTrialClient_recipe__block_invoke;
  v5[3] = &unk_1E7C24E78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)shouldActivatePSR
{
  if (![(_PSTrialClient *)self containsKey:@"shouldActivePSR"])
  {
    return 1;
  }

  return [(_PSTrialClient *)self BOOLForKey:@"shouldActivePSR"];
}

- (int)dataCollectionTimeToWaitInSeconds
{
  if ([(_PSTrialClient *)self containsKey:@"dataCollectionTimeToWaitInSeconds"])
  {
    return [(_PSTrialClient *)self integerForKey:@"dataCollectionTimeToWaitInSeconds"];
  }

  else
  {
    return 45;
  }
}

- (BOOL)shouldEnableDataCollection
{
  if (![(_PSTrialClient *)self containsKey:@"shouldEnableDataCollection"])
  {
    return 1;
  }

  return [(_PSTrialClient *)self BOOLForKey:@"shouldEnableDataCollection"];
}

- (double)maxComputationTime
{
  if (![(_PSTrialClient *)self containsKey:@"maxComputationTime"])
  {
    return 0.35;
  }

  [(_PSTrialClient *)self doubleForKey:@"maxComputationTime"];
  return result;
}

- (BOOL)shouldComputePhotoBasedFeatures
{
  if (![(_PSTrialClient *)self containsKey:@"shouldComputePhotoBasedFeatures"])
  {
    return 1;
  }

  return [(_PSTrialClient *)self BOOLForKey:@"shouldComputePhotoBasedFeatures"];
}

- (BOOL)shouldProcessPicturesLive
{
  if (![(_PSTrialClient *)self containsKey:@"shouldProcessPicturesLive"])
  {
    return 1;
  }

  return [(_PSTrialClient *)self BOOLForKey:@"shouldProcessPicturesLive"];
}

- (id)rankingModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30___PSTrialClient_rankingModel__block_invoke;
  v5[3] = &unk_1E7C24E50;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)shouldUseVIPModel
{
  if (![(_PSTrialClient *)self containsKey:@"shouldUseVIPModel"])
  {
    return 1;
  }

  return [(_PSTrialClient *)self BOOLForKey:@"shouldUseVIPModel"];
}

- (void)updateConfigWithTrialOverrides:(id)overrides
{
  v36 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  if ([(_PSTrialClient *)self containsKey:@"timeInterval"])
  {
    [(_PSTrialClient *)self doubleForKey:@"timeInterval"];
    [overridesCopy setLookBackTimeInterval:?];
  }

  if ([(_PSTrialClient *)self containsKey:@"maxComputationTime"])
  {
    [(_PSTrialClient *)self doubleForKey:@"maxComputationTime"];
    [overridesCopy setMaxComputationTime:?];
  }

  if ([(_PSTrialClient *)self containsKey:@"fetchLimit"])
  {
    [overridesCopy setFetchLimit:{-[_PSTrialClient integerForKey:](self, "integerForKey:", @"fetchLimit"}];
  }

  if ([(_PSTrialClient *)self containsKey:@"featureNamesToSortWith"])
  {
    v5 = [(_PSTrialClient *)self arrayForKey:@"featureNamesToSortWith"];
    [overridesCopy setSortOrderFeatureNames:v5];
  }

  if ([(_PSTrialClient *)self containsKey:@"shouldUseSuggestionEngaged"])
  {
    [overridesCopy setShouldUseSuggestionEngaged:{-[_PSTrialClient BOOLForKey:](self, "BOOLForKey:", @"shouldUseSuggestionEngaged"}];
  }

  if ([(_PSTrialClient *)self containsKey:@"statsDefaultValues"])
  {
    v6 = [(_PSTrialClient *)self mutableDictionaryForKey:@"statsDefaultValues"];
    [overridesCopy setDefaultValues:v6];
  }

  if ([(_PSTrialClient *)self containsKey:@"staticFeaturesToCompute"])
  {
    v7 = [(_PSTrialClient *)self arrayForKey:@"staticFeaturesToCompute"];
    [overridesCopy setStaticFeatures:v7];
  }

  if ([(_PSTrialClient *)self containsKey:@"sceneTagCategoryMapping"])
  {
    v8 = [(_PSTrialClient *)self mutableDictionaryOfSetsForKey:@"sceneTagCategoryMapping"];
    if (v8)
    {
      [overridesCopy setSceneCategoryTagMapping:v8];
    }
  }

  if ([(_PSTrialClient *)self containsKey:@"sceneTagThresholds"])
  {
    v9 = [(_PSTrialClient *)self mutableDictionaryForKey:@"sceneTagThresholds"];
    [overridesCopy setSceneCategoryTagThresholds:v9];
  }

  if ([(_PSTrialClient *)self containsKey:@"dynamicFeaturesToCompute"])
  {
    v10 = [(_PSTrialClient *)self arrayOfArraysForKey:@"dynamicFeaturesToCompute"];
    [overridesCopy setDynamicFeatureRecipe:v10];
  }

  rightBoundDate = [overridesCopy rightBoundDate];
  leftBoundDate = [overridesCopy leftBoundDate];
  [rightBoundDate timeIntervalSinceDate:leftBoundDate];
  v14 = v13;

  v15 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    fetchLimit = [overridesCopy fetchLimit];
    [overridesCopy maxComputationTime];
    v18 = v17;
    sortOrderFeatureNames = [overridesCopy sortOrderFeatureNames];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(overridesCopy, "shouldUseSuggestionEngaged")}];
    defaultValues = [overridesCopy defaultValues];
    v24 = 134219266;
    v25 = v14;
    v26 = 2048;
    v27 = fetchLimit;
    v28 = 2048;
    v29 = v18;
    v30 = 2112;
    v31 = sortOrderFeatureNames;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    v35 = defaultValues;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_INFO, "Final configuration is: timeInterval %f, fetchLimit %lu,  maxComputationTimeInSeconds %.2f, sortOrderFeatureNames %@, shouldUseSuggestionEngaged %@, statsDefaultValues %@", &v24, 0x3Eu);
  }

  v22 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    dynamicFeatureRecipe = [overridesCopy dynamicFeatureRecipe];
    v24 = 138412290;
    v25 = dynamicFeatureRecipe;
    _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_INFO, "Final configuration dynamic features: %@", &v24, 0xCu);
  }
}

- (id)suggestionProxyOrder
{
  v9[10] = *MEMORY[0x1E69E9840];
  v9[0] = @"SuggestionProxyTypeInCall";
  v9[1] = @"SuggestionProxyTypeReturnToSender";
  v9[2] = @"SuggestionProxyTypeHyperRecencyCallRewrite";
  v9[3] = @"SuggestionProxyTypeHyperRecencyViewedThreadRewrite";
  v9[4] = @"SuggestionProxyTypeHyperRecencyRewrite";
  v9[5] = @"SuggestionProxyTypeFrequencyOfTopDomainURL";
  v9[6] = @"SuggestionProxyTypePASS";
  v9[7] = @"SuggestionProxyTypePASSv1";
  v9[8] = @"SuggestionProxyTypeSASS";
  v9[9] = @"SuggestionProxyTypeFromStats";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:10];
  if ([(_PSTrialClient *)self containsKey:@"suggestionProxyOrder"])
  {
    v4 = [(_PSTrialClient *)self arrayForKey:@"suggestionProxyOrder"];

    v3 = v4;
  }

  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Heuristic order used: %@", &v7, 0xCu);
  }

  return v3;
}

- (id)loadCoreMLModel:(id)model config:(id)config
{
  modelCopy = model;
  configCopy = config;
  v7 = [configCopy copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v10 = getMLModelConfigurationClass_softClass;
    v28 = getMLModelConfigurationClass_softClass;
    if (!getMLModelConfigurationClass_softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getMLModelConfigurationClass_block_invoke;
      v23 = &unk_1E7C23BF0;
      v24 = &v25;
      CoreMLLibraryCore_0();
      v26[3] = objc_getClass("MLModelConfiguration");
      getMLModelConfigurationClass_softClass = *(v24[1] + 24);
      v10 = v26[3];
    }

    v11 = v10;
    _Block_object_dispose(&v25, 8);
    v9 = objc_opt_new();
  }

  v12 = v9;

  [v12 setComputeUnits:0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v13 = getMLModelClass_softClass_0;
  v28 = getMLModelClass_softClass_0;
  if (!getMLModelClass_softClass_0)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getMLModelClass_block_invoke_0;
    v23 = &unk_1E7C23BF0;
    v24 = &v25;
    CoreMLLibraryCore_0();
    v26[3] = objc_getClass("MLModel");
    getMLModelClass_softClass_0 = *(v24[1] + 24);
    v13 = v26[3];
  }

  v14 = v13;
  _Block_object_dispose(&v25, 8);
  v19 = 0;
  v15 = [v13 modelWithContentsOfURL:modelCopy configuration:v12 error:&v19];
  v16 = v19;
  if (v16)
  {
    v17 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_PSTrialClient loadCoreMLModel:config:];
    }
  }

  return v15;
}

- (BOOL)containsKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v6 = v7 != 0;
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31___PSTrialClient_objectForKey___block_invoke;
  v9[3] = &unk_1E7C24E50;
  v11 = &v12;
  v6 = keyCopy;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    [(NSUserDefaults *)self->_userDefaults doubleForKey:keyCopy];
    v7 = v6;
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(_PSTrialClient *)keyCopy doubleForKey:v8, v7];
    }
  }

  else
  {
    v8 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient doubleForKey:];
    }

    [v8 doubleValue];
    v7 = v10;
  }

  return v7;
}

- (unint64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    integerValue = [(NSUserDefaults *)self->_userDefaults integerForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient integerForKey:];
    }
  }

  else
  {
    v7 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient doubleForKey:];
    }

    integerValue = [v7 integerValue];
  }

  return integerValue;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    bOOLValue = [(NSUserDefaults *)self->_userDefaults BOOLForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient BOOLForKey:];
    }
  }

  else
  {
    v7 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient BOOLForKey:];
    }

    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    v6 = [(NSUserDefaults *)self->_userDefaults arrayForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient arrayForKey:];
    }
  }

  else
  {
    v6 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient doubleForKey:];
    }
  }

  return v6;
}

- (id)mutableDictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    v6 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient arrayForKey:];
    }
  }

  else
  {
    v6 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient mutableDictionaryForKey:];
    }
  }

  v8 = [v6 mutableCopy];

  return v8;
}

- (id)mutableDictionaryOfSetsForKey:(id)key
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    v6 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:keyCopy];
    v7 = [v6 mutableCopy];

    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient arrayForKey:];
    }
  }

  else
  {
    v9 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v7 = [v9 mutableCopy];

    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient mutableDictionaryForKey:];
    }
  }

  v10 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    v30 = v10;
    v31 = keyCopy;
    v28 = *v37;
    while (2)
    {
      v15 = 0;
      v29 = v13;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v17 = [v11 objectForKeyedSubscript:{v16, v28}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [_PSTrialClient mutableDictionaryOfSetsForKey:];
          }

LABEL_26:

          v25 = 0;
          goto LABEL_27;
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(v18);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v26 = +[_PSLogging generalChannel];
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  [_PSTrialClient mutableDictionaryOfSetsForKey:];
                }

                v10 = v30;
                keyCopy = v31;
                goto LABEL_26;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v23 = objc_autoreleasePoolPush();
        v24 = [MEMORY[0x1E695DFD8] setWithArray:v18];
        objc_autoreleasePoolPop(v23);
        v10 = v30;
        [v30 setObject:v24 forKeyedSubscript:v16];

        ++v15;
        v14 = v28;
        keyCopy = v31;
      }

      while (v15 != v29);
      v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v25 = v10;
LABEL_27:

  return v25;
}

- (id)arrayOfArraysForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v5)
  {
    v6 = [(NSUserDefaults *)self->_userDefaults arrayForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient arrayForKey:];
    }
  }

  else
  {
    v6 = [(_PSTrialClient *)self objectForKey:keyCopy];
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_PSTrialClient mutableDictionaryForKey:];
    }
  }

  return v6;
}

- (void)doubleForKey:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Loading %@ from user defaults %lf", &v3, 0x16u);
}

@end