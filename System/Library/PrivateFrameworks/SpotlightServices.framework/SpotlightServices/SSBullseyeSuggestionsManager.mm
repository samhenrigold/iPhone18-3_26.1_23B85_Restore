@interface SSBullseyeSuggestionsManager
+ (id)sharedSuggestionsManager;
- (SSBullseyeSuggestionsManager)initWithOptions:(id)options;
- (SSCoreMLInterface)blendingModel;
- (id)_getScoreForSuggestionResult:(id)result options:(id)options;
- (id)_rankedSuggestionsResultsWithQueryContext:(id)context serverSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults options:(id)options;
- (id)intentBasedSuggestionBlending:(id)blending suggestions:(id)suggestions;
- (id)orderedSuggestionsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4;
- (id)release2022_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4;
- (id)release2023_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion actionSuggestionResults:(id)results contactSuggestionResults:(id)self0 serverSuggestionResults:(id)self1 localSuggestionResults:(id)self2 options:(id)self3;
- (id)release2023_blendingWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4;
- (id)suggestionKeyWithCompletion:(id)completion;
- (void)_filterSuggestionResultsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters contactSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults serverSuggestionResults:(id)serverSuggestionResults options:(id)self0;
- (void)clearBlendingModel;
- (void)loadBlendingModelWithPath:(id)path forceLoad:(BOOL)load;
- (void)loadDefaultsWithOptions:(id)options;
- (void)setBlendingModel:(id)model;
- (void)updateDefaultsWithOptions:(id)options;
@end

@implementation SSBullseyeSuggestionsManager

+ (id)sharedSuggestionsManager
{
  if (sharedSuggestionsManager_onceToken != -1)
  {
    +[SSBullseyeSuggestionsManager sharedSuggestionsManager];
  }

  v3 = sharedSuggestionsManager_gSuggestionsManager;

  return v3;
}

uint64_t __56__SSBullseyeSuggestionsManager_sharedSuggestionsManager__block_invoke()
{
  sharedSuggestionsManager_gSuggestionsManager = [[SSBullseyeSuggestionsManager alloc] initWithOptions:0];

  return MEMORY[0x1EEE66BB8]();
}

- (SSBullseyeSuggestionsManager)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = SSBullseyeSuggestionsManager;
  v5 = [(SSBullseyeSuggestionsManager *)&v11 init];
  if (v5)
  {
    v5->_enabledSuggestionsOverrides = SSDefaultsGetState(5uLL);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.SpotlightServices.suggestions.blending", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    [(SSBullseyeSuggestionsManager *)v5 loadDefaultsWithOptions:optionsCopy];
  }

  return v5;
}

- (void)loadDefaultsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy copy];
  defaultOptions = self->_defaultOptions;
  self->_defaultOptions = v4;

  mEMORY[0x1E69D3E28] = [MEMORY[0x1E69D3E28] sharedResourcesManager];
  v7 = [mEMORY[0x1E69D3E28] resourcesForClient:@"Spotlight" options:&unk_1F55B7858];
  resources = self->_resources;
  self->_resources = v7;

  v49 = [(SRResources *)self->_resources objectForKey:@"EnableSuggestionsBlending"];
  if (optionsCopy)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"EnableSuggestionsBlending"];
    if (v9)
    {
      v10 = [optionsCopy objectForKeyedSubscript:@"EnableSuggestionsBlending"];
    }

    else
    {
      v10 = 0;
    }

    v49 = v10;
  }

  if (v49)
  {
    bOOLValue = [v49 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  self->_enabledSuggestionsBlending = bOOLValue;
  if (!optionsCopy && [(SSBullseyeSuggestionsManager *)self enabledSuggestionsOverrides])
  {
    self->_enabledSuggestionsBlending = _os_feature_enabled_impl();
  }

  v48 = [(SRResources *)self->_resources objectForKey:@"EnableFullSuggestionsBlending"];
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"EnableFullSuggestionsBlending"];
    if (v12)
    {
      v13 = [optionsCopy objectForKeyedSubscript:@"EnableFullSuggestionsBlending"];
    }

    else
    {
      v13 = 0;
    }

    v48 = v13;
  }

  if (v48)
  {
    bOOLValue2 = [v48 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  self->_enabledFullSuggestionsBlending = bOOLValue2;
  if (!optionsCopy && [(SSBullseyeSuggestionsManager *)self enabledSuggestionsOverrides])
  {
    self->_enabledFullSuggestionsBlending = _os_feature_enabled_impl();
  }

  v15 = [(SRResources *)self->_resources objectForKey:@"ServerSuggestionThreshold"];
  if (optionsCopy)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"serverThreshold"];

    v15 = v16;
  }

  if (!v15 || ([v15 doubleValue], v17 == 0.0) || (objc_msgSend(v15, "doubleValue"), v18 == 2.22507386e-308))
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  objc_storeStrong(&self->_serverSuggestionThreshold, v19);
  v20 = [(SRResources *)self->_resources objectForKey:@"LocalSuggestionThreshold"];
  if (optionsCopy)
  {
    v21 = [optionsCopy objectForKeyedSubscript:@"localThreshold"];

    v20 = v21;
  }

  if (!v20 || ([v20 doubleValue], v22 == 0.0) || (objc_msgSend(v20, "doubleValue"), v23 == 2.22507386e-308))
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  objc_storeStrong(&self->_localSuggestionThreshold, v24);
  v25 = [(SRResources *)self->_resources objectForKey:@"MaxTotalSuggestions"];
  if (optionsCopy)
  {
    v26 = [optionsCopy objectForKeyedSubscript:@"maxTotalSuggestions"];

    v25 = v26;
  }

  v27 = [(SRResources *)self->_resources objectForKey:@"MaxTotalSuggestionsForAboveFoldResults"];
  if (optionsCopy)
  {
    v28 = [optionsCopy objectForKeyedSubscript:@"maxTotalSuggestionsForAboveFoldResults"];

    v27 = v28;
  }

  v29 = [(SRResources *)self->_resources objectForKey:@"EnableForceAboveFoldResults"];
  if (optionsCopy)
  {
    v30 = [optionsCopy objectForKeyedSubscript:@"EnableForceAboveFoldResults"];

    v29 = v30;
  }

  if (v29)
  {
    bOOLValue3 = [v29 BOOLValue];
  }

  else
  {
    bOOLValue3 = 0;
  }

  self->_enabledAboveFoldResults = bOOLValue3;
  if (v25)
  {
    integerValue = [v25 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFLL;
  }

  self->_maxTotalSuggestionCount = integerValue;
  if (v27)
  {
    integerValue = [v27 integerValue];
  }

  self->_maxTotalSuggestionCountForAboveFoldResults = integerValue;
  v33 = [(SRResources *)self->_resources objectForKey:@"MaxServerSuggestionCount"];
  if (optionsCopy)
  {
    v34 = [optionsCopy objectForKeyedSubscript:@"maxServerSuggestions"];

    v33 = v34;
  }

  if (!v33 || [v33 integerValue] < 0)
  {
    integerValue2 = 0x7FFFFFFFLL;
  }

  else
  {
    integerValue2 = [v33 integerValue];
  }

  self->_maxServerSuggestionCount = integerValue2;
  v36 = [(SRResources *)self->_resources objectForKey:@"MaxSuggestionCount"];
  if (optionsCopy)
  {
    v37 = [optionsCopy objectForKeyedSubscript:@"maxLocalSuggestions"];

    v36 = v37;
  }

  if (!v36 || [v36 integerValue] < 0)
  {
    integerValue3 = 0x7FFFFFFFLL;
  }

  else
  {
    integerValue3 = [v36 integerValue];
  }

  v47 = v29;
  self->_maxLocalSuggestionCount = integerValue3;
  v39 = [(SRResources *)self->_resources objectForKey:@"LocalDisplayPosition"];
  if (optionsCopy)
  {
    v40 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];

    v39 = v40;
  }

  if (!v39 || [v39 integerValue] == 0x7FFFFFFF || objc_msgSend(v39, "integerValue") == -1)
  {
    unsignedIntValue = 0;
  }

  else
  {
    unsignedIntValue = [v39 unsignedIntValue];
  }

  self->_localDisplayPosition = unsignedIntValue;
  v42 = [(SRResources *)self->_resources objectForKey:@"IgnoreMaxCountForSingleSuggestionsType"];
  if (optionsCopy)
  {
    [optionsCopy objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
    v44 = v43 = v33;

    v42 = v44;
    v33 = v43;
  }

  if (v42)
  {
    bOOLValue4 = [v42 BOOLValue];
  }

  else
  {
    bOOLValue4 = 0;
  }

  self->_ignoreMaxCount = bOOLValue4;
  if ([(SSBullseyeSuggestionsManager *)self enabledSuggestionsBlending])
  {
    v46 = [(SRResources *)self->_resources filePathForKey:@"SuggestionsBlendingModel"];
    [(SSBullseyeSuggestionsManager *)self loadBlendingModelWithPath:v46 forceLoad:optionsCopy != 0];
  }
}

- (void)updateDefaultsWithOptions:(id)options
{
  optionsCopy = options;
  resources = [(SSBullseyeSuggestionsManager *)self resources];
  hasUpdates = [resources hasUpdates];

  if (hasUpdates)
  {
    [(SSBullseyeSuggestionsManager *)self loadDefaultsWithOptions:self->_defaultOptions];
  }

  v6 = [optionsCopy objectForKeyedSubscript:@"serverThreshold"];
  if (v6)
  {
    objc_storeStrong(&self->_serverSuggestionThreshold, v6);
  }

  v7 = [optionsCopy objectForKeyedSubscript:@"localThreshold"];
  if (v7)
  {
    objc_storeStrong(&self->_localSuggestionThreshold, v7);
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"maxTotalSuggestions"];
  v9 = v8;
  if (v8)
  {
    self->_maxTotalSuggestionCount = [v8 integerValue];
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"maxServerSuggestions"];
  v11 = v10;
  if (v10)
  {
    self->_maxServerSuggestionCount = [v10 integerValue];
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"maxLocalSuggestions"];
  v13 = v12;
  if (v12)
  {
    self->_maxLocalSuggestionCount = [v12 integerValue];
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];
  v15 = v14;
  if (v14)
  {
    self->_localDisplayPosition = [v14 unsignedIntValue];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
  v17 = v16;
  if (v16)
  {
    self->_ignoreMaxCount = [v16 BOOLValue];
  }
}

- (void)loadBlendingModelWithPath:(id)path forceLoad:(BOOL)load
{
  loadCopy = load;
  pathCopy = path;
  blendingModelPath = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
  v8 = blendingModelPath;
  if (pathCopy && blendingModelPath)
  {
    blendingModelPath2 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
    v10 = [blendingModelPath2 isEqualToString:pathCopy];

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v11 = [pathCopy copy];
  blendingModelPath = self->_blendingModelPath;
  self->_blendingModelPath = v11;

  if (loadCopy)
  {
    v13 = MEMORY[0x1E695DFF8];
    blendingModelPath3 = [(SSBullseyeSuggestionsManager *)self blendingModelPath];
    v15 = [v13 fileURLWithPath:blendingModelPath3 isDirectory:1];

    v20 = 0;
    v16 = [[SSCoreMLInterface alloc] initWithURL:v15 error:&v20];
    v17 = v20;
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SSBullseyeSuggestionsManager loadBlendingModelWithPath:forceLoad:];
      }

      [(SSBullseyeSuggestionsManager *)self clearBlendingModel];
    }

    else
    {
      [(SSBullseyeSuggestionsManager *)self setBlendingModel:v16];
    }
  }

  else
  {
    queue = [(SSBullseyeSuggestionsManager *)self queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke;
    v19[3] = &unk_1E8595778;
    v19[4] = self;
    dispatch_async(queue, v19);
  }

LABEL_14:
}

void __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [*(a1 + 32) blendingModelPath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v8 = 0;
  v5 = [[SSCoreMLInterface alloc] initWithURL:v4 error:&v8];
  v6 = v8;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SSBullseyeSuggestionsManager loadBlendingModelWithPath:forceLoad:];
    }
  }

  else
  {
    [*(a1 + 32) setBlendingModel:v5];
    v7 = [*(a1 + 32) modelFeatureNames];

    if (v7)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __68__SSBullseyeSuggestionsManager_loadBlendingModelWithPath_forceLoad___block_invoke_cold_2();
    }
  }

  [*(a1 + 32) clearBlendingModel];
LABEL_6:
}

- (SSCoreMLInterface)blendingModel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_blendingModel;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBlendingModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_blendingModel, model);
  getInputDescriptionsByName = [(SSCoreMLInterface *)selfCopy->_blendingModel getInputDescriptionsByName];
  modelFeatureNames = selfCopy->_modelFeatureNames;
  selfCopy->_modelFeatureNames = getInputDescriptionsByName;

  objc_sync_exit(selfCopy);
}

- (void)clearBlendingModel
{
  obj = self;
  objc_sync_enter(obj);
  blendingModel = obj->_blendingModel;
  obj->_blendingModel = 0;

  blendingModelPath = obj->_blendingModelPath;
  obj->_blendingModelPath = 0;

  modelFeatureNames = obj->_modelFeatureNames;
  obj->_modelFeatureNames = 0;

  obj->_enabledSuggestionsBlending = 0;
  objc_sync_exit(obj);
}

- (id)orderedSuggestionsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4
{
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  contactSuggestionResultsCopy = contactSuggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  [(SSBullseyeSuggestionsManager *)self updateDefaultsWithOptions:optionsCopy];
  blendingModel = [(SSBullseyeSuggestionsManager *)self blendingModel];

  v51 = resultsCopy;
  v49 = suggestionResultsCopy;
  v53 = optionsCopy;
  if (blendingModel)
  {
    v28 = localSuggestionResultsCopy;
    v29 = contactFiltersCopy;
    v30 = entityFiltersCopy;
    if ([(SSBullseyeSuggestionsManager *)self enabledFullSuggestionsBlending])
    {
      v42 = suggestionResultsCopy;
      v31 = contextCopy;
      [(SSBullseyeSuggestionsManager *)self release2023_blendingWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy userSuggestion:suggestionCopy userWebSuggestion:webSuggestionCopy shortcutSuggestionResults:v51 actionSuggestionResults:v42 contactSuggestionResults:contactSuggestionResultsCopy serverSuggestionResults:serverSuggestionResultsCopy localSuggestionResults:localSuggestionResultsCopy options:v53];
    }

    else
    {
      v41 = suggestionResultsCopy;
      v31 = contextCopy;
      [(SSBullseyeSuggestionsManager *)self release2023_blendingByPolicyWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy userSuggestion:suggestionCopy userWebSuggestion:webSuggestionCopy actionSuggestionResults:v41 contactSuggestionResults:contactSuggestionResultsCopy serverSuggestionResults:serverSuggestionResultsCopy localSuggestionResults:localSuggestionResultsCopy options:v53];
    }
    v48 = ;
  }

  else
  {
    v44 = optionsCopy;
    v40 = resultsCopy;
    v43 = suggestionResultsCopy;
    v30 = entityFiltersCopy;
    v31 = contextCopy;
    v29 = contactFiltersCopy;
    v48 = [(SSBullseyeSuggestionsManager *)self release2022_blendingByPolicyWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy userSuggestion:suggestionCopy userWebSuggestion:webSuggestionCopy shortcutSuggestionResults:v40 actionSuggestionResults:v43 contactSuggestionResults:contactSuggestionResultsCopy serverSuggestionResults:serverSuggestionResultsCopy localSuggestionResults:localSuggestionResultsCopy options:v44];
    v28 = localSuggestionResultsCopy;
  }

  if (+[SSQueryIntentManager isEnabled])
  {
    v47 = v28;
    queryIntent = [v31 queryIntent];
    if (queryIntent)
    {
      v33 = queryIntent;
      v34 = v30;
      queryIntent2 = [v31 queryIntent];
      intentType = [queryIntent2 intentType];

      if (intentType)
      {
        v37 = [(SSBullseyeSuggestionsManager *)self intentBasedSuggestionBlending:v31 suggestions:v48];

        v30 = v34;
        v29 = contactFiltersCopy;
        v38 = v53;
        v28 = v47;
        goto LABEL_14;
      }

      v30 = v34;
      v29 = contactFiltersCopy;
    }

    v28 = v47;
    v37 = v48;
    v38 = v53;
  }

  else
  {
    v38 = v53;
    v37 = v48;
  }

LABEL_14:

  return v37;
}

- (id)_getScoreForSuggestionResult:(id)result options:(id)options
{
  v85 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = objc_opt_new();
  type = [resultCopy type];
  query = [resultCopy query];
  v9 = [query length];

  completion = [resultCopy completion];
  v11 = [completion length];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:type];
  [v6 setObject:v12 forKey:@"type"];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v6 setObject:v13 forKey:@"plen"];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v6 setObject:v14 forKey:@"slen"];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / (v11 + 1.0)];
  [v6 setObject:v15 forKey:@"ratio"];

  v16 = MEMORY[0x1E696AD98];
  [resultCopy rankingScore];
  v17 = [v16 numberWithDouble:?];
  [v6 setObject:v17 forKey:@"score"];

  spotlightSuggestion = [resultCopy spotlightSuggestion];

  if (spotlightSuggestion)
  {
    spotlightSuggestion2 = [resultCopy spotlightSuggestion];
    features = [spotlightSuggestion2 features];

    if (getFeaturesForSuggestionResult_onceToken == -1)
    {
      if (features)
      {
LABEL_4:
        v82 = 0;
        v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:getFeaturesForSuggestionResult_sFeatureClasses fromData:features error:&v82];
        v22 = v82;
        if (!v22 && v21)
        {
          [v6 addEntriesFromDictionary:v21];
          v22 = 0;
LABEL_28:

LABEL_29:
          goto LABEL_30;
        }

LABEL_26:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [SSBullseyeSuggestionsManager _getScoreForSuggestionResult:options:];
        }

        goto LABEL_28;
      }
    }

    else
    {
      [SSBullseyeSuggestionsManager _getScoreForSuggestionResult:options:];
      if (features)
      {
        goto LABEL_4;
      }
    }

    v22 = 0;
    v21 = 0;
    goto LABEL_26;
  }

  suggestion = [resultCopy suggestion];

  if (suggestion)
  {
    v24 = MEMORY[0x1E696AD98];
    suggestion2 = [resultCopy suggestion];
    [suggestion2 score];
    v26 = [v24 numberWithDouble:?];
    [v6 setObject:v26 forKey:@"score"];

    v27 = MEMORY[0x1E696AD98];
    suggestion3 = [resultCopy suggestion];
    v29 = [v27 numberWithInt:{objc_msgSend(suggestion3, "type")}];
    [v6 setObject:v29 forKey:@"stype"];

    v30 = MEMORY[0x1E696AD98];
    suggestion4 = [resultCopy suggestion];
    v31Suggestion = [suggestion4 suggestion];
    v33 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31Suggestion, "length")}];
    [v6 setObject:v33 forKey:@"sslen"];

    suggestion5 = [resultCopy suggestion];
    objc_opt_class();
    LOBYTE(suggestion4) = objc_opt_isKindOfClass();

    if (suggestion4)
    {
      features = [resultCopy suggestion];
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(features, "queryLen")}];
      [v6 setObject:v35 forKey:@"queryLen"];

      v36 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(features, "fragments")}];
      [v6 setObject:v36 forKey:@"fragments"];

      v37 = MEMORY[0x1E696AD98];
      [features age];
      v38 = [v37 numberWithDouble:?];
      [v6 setObject:v38 forKey:@"age"];

      v39 = MEMORY[0x1E696AD98];
      [features prob];
      v40 = [v39 numberWithDouble:?];
      [v6 setObject:v40 forKey:@"prob"];

      [features compositeScore];
      v42 = v41;
      v43 = 0.0;
      if (v42 != 1.79769313e308)
      {
        [features compositeScore];
      }

      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
      [v6 setObject:v44 forKey:@"compositeScore"];

      if ([features isSingleThread])
      {
        v45 = &unk_1F55B6D68;
      }

      else
      {
        v45 = &unk_1F55B6D58;
      }

      [v6 setObject:v45 forKey:@"isSingleThread"];
      if ([features hasUsedDate])
      {
        v46 = &unk_1F55B6D68;
      }

      else
      {
        v46 = &unk_1F55B6D58;
      }

      [v6 setObject:v46 forKey:@"hasUsedDate"];
      if ([features isShortcut])
      {
        v47 = &unk_1F55B6D68;
      }

      else
      {
        v47 = &unk_1F55B6D58;
      }

      [v6 setObject:v47 forKey:@"isShortcut"];
      if ([features hasMultipleResults])
      {
        v48 = &unk_1F55B6D68;
      }

      else
      {
        v48 = &unk_1F55B6D58;
      }

      [v6 setObject:v48 forKey:@"hasMultipleResults"];
      goto LABEL_29;
    }
  }

LABEL_30:
  serverFeatures = [resultCopy serverFeatures];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v50 = [serverFeatures countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v79;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v79 != v52)
        {
          objc_enumerationMutation(serverFeatures);
        }

        v54 = *(*(&v78 + 1) + 8 * i);
        v55 = [serverFeatures objectForKeyedSubscript:v54];
        [v6 setObject:v55 forKey:v54];
      }

      v51 = [serverFeatures countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v51);
  }

  if (!v6 || !objc_msgSend_count(v6))
  {
    v70 = &unk_1F55B6D58;
    goto LABEL_56;
  }

  v56 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  selfCopy = self;
  modelFeatureNames = [(SSBullseyeSuggestionsManager *)self modelFeatureNames];
  v58 = [modelFeatureNames countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v75;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v75 != v60)
        {
          objc_enumerationMutation(modelFeatureNames);
        }

        v62 = *(*(&v74 + 1) + 8 * j);
        v63 = [v6 objectForKey:v62];

        if (v63)
        {
          v64 = [v6 objectForKeyedSubscript:v62];
          [v56 setObject:v64 forKey:v62];
        }

        else
        {
          [v56 setObject:&unk_1F55B6D58 forKey:v62];
        }
      }

      v59 = [modelFeatureNames countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v59);
  }

  blendingModel = [(SSBullseyeSuggestionsManager *)selfCopy blendingModel];
  v73 = 0;
  [blendingModel predictFromDictionaryFeatures:v56 error:&v73];
  v67 = v66;
  v68 = v73;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [SSBullseyeSuggestionsManager _getScoreForSuggestionResult:v56 options:v67];
    if (v68)
    {
      goto LABEL_51;
    }

LABEL_54:
    *&v69 = v67;
    v70 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
    goto LABEL_55;
  }

  if (!v68)
  {
    goto LABEL_54;
  }

LABEL_51:
  v70 = &unk_1F55B6D58;
LABEL_55:

LABEL_56:

  return v70;
}

- (id)suggestionKeyWithCompletion:(id)completion
{
  v3 = SSNormalizedQueryString(completion);
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v5;
}

- (void)_filterSuggestionResultsWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters contactSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults serverSuggestionResults:(id)serverSuggestionResults options:(id)self0
{
  v131 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  optionsCopy = options;
  v104 = objc_opt_new();
  v99 = objc_opt_new();
  v94 = objc_opt_new();
  v89 = contextCopy;
  searchString = [contextCopy searchString];
  v95 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:searchString];

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = resultsCopy;
  v21 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
  if (v21)
  {
    v22 = v21;
    v91 = 0;
    v23 = *v123;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v123 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v122 + 1) + 8 * i);
        completion = [v25 completion];
        v27 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion];

        if ((!contactFiltersCopy || ([contactFiltersCopy containsObject:v27] & 1) == 0) && (objc_msgSend(v94, "containsObject:", v27) & 1) == 0 && objc_msgSend(v27, "containsString:", v95))
        {
          v28 = v91;
          if (!v91)
          {
            v28 = objc_opt_new();
          }

          [v28 addObject:v25];
          [v94 addObject:v27];
          v91 = v28;
          if ([(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount]!= 0x7FFFFFFF)
          {
            v29 = objc_msgSend_count(v28);
            if (v29 >= [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount])
            {

              goto LABEL_19;
            }
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v122 objects:v130 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v91 = 0;
  }

LABEL_19:
  v98 = entityFiltersCopy;

  v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = [suggestionResultsCopy sortedArrayUsingComparator:&__block_literal_global_162];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v31 = suggestionResultsCopy;
  v32 = [v31 countByEnumeratingWithState:&v118 objects:v129 count:16];
  selfCopy = self;
  if (!v32)
  {
    v90 = 0;
    v35 = v99;
    goto LABEL_53;
  }

  v33 = v32;
  v90 = 0;
  v34 = *v119;
  v35 = v99;
  v102 = v31;
  do
  {
    v36 = 0;
    do
    {
      if (*v119 != v34)
      {
        objc_enumerationMutation(v102);
      }

      v37 = *(*(&v118 + 1) + 8 * v36);
      type = [v37 type];
      completion2 = [v37 completion];
      v40 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion2];

      if (type == 38 || type == 32)
      {
        if ((!contactFiltersCopy || ([contactFiltersCopy containsObject:v40] & 1) == 0) && (objc_msgSend(v35, "containsObject:", v40) & 1) == 0)
        {
          [v97 addObject:v37];
        }

        if (!v35)
        {
          v35 = objc_opt_new();
        }

        v41 = v35;
LABEL_33:
        [v41 addObject:v40];
        goto LABEL_34;
      }

      if (([v104 containsObject:v40] & 1) == 0)
      {
        if ([v40 isEqualToString:v95])
        {
          if (type == 34)
          {
            v42 = v37;

            v90 = v42;
          }
        }

        else if (!contactFiltersCopy || ([contactFiltersCopy containsObject:v40] & 1) == 0)
        {
          if (type != 31 && type != 16 || (-[SSBullseyeSuggestionsManager localSuggestionThreshold](self, "localSuggestionThreshold"), (v43 = objc_claimAutoreleasedReturnValue()) == 0) || (v44 = v43, v45 = MEMORY[0x1E696AD98], [v37 rankingScore], objc_msgSend(v45, "numberWithDouble:"), v46 = objc_claimAutoreleasedReturnValue(), -[SSBullseyeSuggestionsManager localSuggestionThreshold](self, "localSuggestionThreshold"), v47 = v35, v48 = objc_claimAutoreleasedReturnValue(), v100 = objc_msgSend(v46, "compare:", v48), v48, v35 = v47, self = selfCopy, v46, v44, v100 == -1))
          {
            [v97 addObject:v37];
          }

          v41 = v104;
          if (!v104)
          {
            v41 = objc_opt_new();
          }

          v104 = v41;
          goto LABEL_33;
        }
      }

LABEL_34:

      ++v36;
    }

    while (v33 != v36);
    v31 = v102;
    v49 = [v102 countByEnumeratingWithState:&v118 objects:v129 count:16];
    v33 = v49;
  }

  while (v49);
LABEL_53:

  [v31 removeAllObjects];
  [v31 addObjectsFromArray:v97];
  v50 = v35;
  if (!objc_msgSend_count(v35))
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v51 = v91;
    v52 = [v51 countByEnumeratingWithState:&v114 objects:v128 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v115;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v115 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v114 + 1) + 8 * j);
          completion3 = [v56 completion];
          v58 = [(SSBullseyeSuggestionsManager *)selfCopy suggestionKeyWithCompletion:completion3];

          v35 = v50;
          if (([v50 containsObject:v58] & 1) == 0)
          {
            [v31 addObject:v56];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v114 objects:v128 count:16];
      }

      while (v53);
    }
  }

  [v97 removeAllObjects];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v103 = v31;
  v59 = [v103 countByEnumeratingWithState:&v110 objects:v127 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v111;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v111 != v61)
        {
          objc_enumerationMutation(v103);
        }

        v63 = *(*(&v110 + 1) + 8 * k);
        if (!_os_feature_enabled_impl() || [v63 type] != 32 && objc_msgSend(v63, "type") != 38)
        {
          if ([v63 type] == 32 || objc_msgSend(v63, "type") == 38)
          {
            [v97 addObject:v63];
          }

          else
          {
            completion4 = [v63 completion];
            v65 = [(SSBullseyeSuggestionsManager *)selfCopy suggestionKeyWithCompletion:completion4];

            v35 = v50;
            if (([v50 containsObject:v65] & 1) == 0)
            {
              [v97 addObject:v63];
            }
          }
        }
      }

      v60 = [v103 countByEnumeratingWithState:&v110 objects:v127 count:16];
    }

    while (v60);
  }

  [v103 removeAllObjects];
  [v103 addObjectsFromArray:v97];
  v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v101 = serverSuggestionResultsCopy;
  v66 = [v101 countByEnumeratingWithState:&v106 objects:v126 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = 0;
    v69 = *v107;
    v70 = v98;
    do
    {
      for (m = 0; m != v67; ++m)
      {
        if (*v107 != v69)
        {
          objc_enumerationMutation(v101);
        }

        v72 = *(*(&v106 + 1) + 8 * m);
        if ([v72 type] == 29)
        {
          v73 = v72;

          v68 = v73;
        }

        else
        {
          serverSuggestionThreshold = [(SSBullseyeSuggestionsManager *)selfCopy serverSuggestionThreshold];
          if (!serverSuggestionThreshold || (v75 = serverSuggestionThreshold, v76 = MEMORY[0x1E696AD98], [v72 rankingScore], objc_msgSend(v76, "numberWithDouble:"), v77 = objc_claimAutoreleasedReturnValue(), -[SSBullseyeSuggestionsManager serverSuggestionThreshold](selfCopy, "serverSuggestionThreshold"), v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v77, "compare:", v78), v78, v77, v75, v80 = v79 == 1, v70 = v98, !v80))
          {
            entityIdentifier = [v72 entityIdentifier];

            if (entityIdentifier)
            {
              if (!objc_msgSend_count(v70) || ([v72 entityIdentifier], v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v70, "containsObject:", v82), v82, (v83 & 1) == 0))
              {
                [v93 addObject:v72];
              }
            }

            else
            {
              completion5 = [v72 completion];
              v85 = [(SSBullseyeSuggestionsManager *)selfCopy suggestionKeyWithCompletion:completion5];

              if (([v104 containsObject:v85] & 1) == 0)
              {
                [v93 addObject:v72];
              }
            }
          }
        }

        v35 = v50;
      }

      v67 = [v101 countByEnumeratingWithState:&v106 objects:v126 count:16];
    }

    while (v67);
  }

  else
  {
    v68 = 0;
    v70 = v98;
  }

  [v101 removeAllObjects];
  [v101 addObjectsFromArray:v93];
  if (!v68 && v90)
  {
    [v103 addObject:v90];
  }
}

- (id)_rankedSuggestionsResultsWithQueryContext:(id)context serverSuggestionResults:(id)results localSuggestionResults:(id)suggestionResults options:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  optionsCopy = options;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = resultsCopy;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = [(SSBullseyeSuggestionsManager *)self _getScoreForSuggestionResult:v18 options:optionsCopy];
        [v12 setObject:v19 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = suggestionResultsCopy;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * j);
        v26 = [(SSBullseyeSuggestionsManager *)self _getScoreForSuggestionResult:v25 options:optionsCopy, v29];
        [v12 setObject:v26 forKey:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  v27 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_165];

  return v27;
}

uint64_t __129__SSBullseyeSuggestionsManager__rankedSuggestionsResultsWithQueryContext_serverSuggestionResults_localSuggestionResults_options___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 compare:?] == -1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)release2023_blendingWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4
{
  v88 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  contactSuggestionResultsCopy = contactSuggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v27 = objc_autoreleasePoolPush();
  v67 = optionsCopy;
  if (objc_msgSend_count(contactSuggestionResultsCopy) || objc_msgSend_count(localSuggestionResultsCopy) || objc_msgSend_count(serverSuggestionResultsCopy) || objc_msgSend_count(resultsCopy) || objc_msgSend_count(suggestionResultsCopy))
  {
    context = v27;
    v65 = webSuggestionCopy;
    v66 = suggestionCopy;
    v28 = webSuggestionCopy;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v63 = serverSuggestionResultsCopy;
    v29 = serverSuggestionResultsCopy;
    v30 = [v29 countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = localSuggestionResultsCopy;
      v33 = *v82;
LABEL_8:
      v34 = 0;
      while (1)
      {
        if (*v82 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v81 + 1) + 8 * v34);
        if ([v35 type] == 29)
        {
          break;
        }

        if (v31 == ++v34)
        {
          v31 = [v29 countByEnumeratingWithState:&v81 objects:v87 count:16];
          if (v31)
          {
            goto LABEL_8;
          }

          v61 = 0;
          v36 = v29;
          goto LABEL_17;
        }
      }

      v37 = v35;

      if (v37)
      {
        v38 = v37;
        v36 = v28;
        v61 = v38;
        v28 = v38;
LABEL_17:
        localSuggestionResultsCopy = v32;
        optionsCopy = v67;
        v39 = contextCopy;
        goto LABEL_19;
      }

      v61 = 0;
      localSuggestionResultsCopy = v32;
      optionsCopy = v67;
      v39 = contextCopy;
    }

    else
    {
      v61 = 0;
      v36 = v29;
      v39 = contextCopy;
LABEL_19:
    }

    if (objc_msgSend_count(localSuggestionResultsCopy))
    {
      v40 = [localSuggestionResultsCopy mutableCopy];
    }

    else
    {
      v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v41 = v40;
    if (objc_msgSend_count(v29))
    {
      v42 = [v29 mutableCopy];
    }

    else
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v43 = v42;
    v64 = contactSuggestionResultsCopy;
    [(SSBullseyeSuggestionsManager *)self _filterSuggestionResultsWithQueryContext:v39 filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy contactSuggestionResults:contactSuggestionResultsCopy localSuggestionResults:v41 serverSuggestionResults:v42 options:optionsCopy];
    if (v28 && ([v43 containsObject:v28] & 1) == 0)
    {
      [v43 addObject:v28];
    }

    v70 = [(SSBullseyeSuggestionsManager *)self _rankedSuggestionsResultsWithQueryContext:v39 serverSuggestionResults:v43 localSuggestionResults:v41 options:optionsCopy];
    if (-[SSBullseyeSuggestionsManager enabledAboveFoldResults](self, "enabledAboveFoldResults") && ([optionsCopy objectForKeyedSubscript:@"ForceAboveFoldResults"], (v44 = objc_claimAutoreleasedReturnValue()) != 0) && (v45 = v44, objc_msgSend(optionsCopy, "objectForKeyedSubscript:", @"ForceAboveFoldResults"), v46 = suggestionResultsCopy, v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "BOOLValue"), v47, suggestionResultsCopy = v46, v45, v48))
    {
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCountForAboveFoldResults];
    }

    else
    {
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    }

    v50 = maxTotalSuggestionCountForAboveFoldResults;
    v51 = resultsCopy;
    if (objc_msgSend_count(suggestionResultsCopy))
    {
      memset(v80, 0, sizeof(v80));
      if ([suggestionResultsCopy countByEnumeratingWithState:v80 objects:v86 count:16])
      {
        if (v50)
        {
          [array addObject:**(&v80[0] + 1)];
          if (v50 != 0x7FFFFFFF)
          {
            --v50;
          }
        }
      }
    }

    if (objc_msgSend_count(resultsCopy))
    {
      v60 = localSuggestionResultsCopy;
      v72 = suggestionResultsCopy;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v52 = resultsCopy;
      v53 = [v52 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v77;
LABEL_43:
        v56 = 0;
        while (1)
        {
          if (*v77 != v55)
          {
            objc_enumerationMutation(v52);
          }

          if (!v50)
          {
            break;
          }

          [array addObject:*(*(&v76 + 1) + 8 * v56)];
          if (v50 != 0x7FFFFFFF)
          {
            --v50;
          }

          if (v54 == ++v56)
          {
            v54 = [v52 countByEnumeratingWithState:&v76 objects:v85 count:16];
            if (v54)
            {
              goto LABEL_43;
            }

            break;
          }
        }
      }

      v39 = contextCopy;
      v51 = resultsCopy;
      suggestionResultsCopy = v72;
      localSuggestionResultsCopy = v60;
    }

    [array addObjectsFromArray:v70];
    if (v50 != 0x7FFFFFFF)
    {
      while (objc_msgSend_count(array) > v50)
      {
        [array removeLastObject];
      }
    }

    if (v28 && ([array containsObject:v28] & 1) == 0)
    {
      if (v50 != 0x7FFFFFFF && objc_msgSend_count(array) >= v50)
      {
        [array removeLastObject];
      }

      [array insertObject:v28 atIndex:0];
    }

    objc_autoreleasePoolPop(context);
    v57 = array;
    webSuggestionCopy = v65;
    suggestionCopy = v66;
    serverSuggestionResultsCopy = v63;
    contactSuggestionResultsCopy = v64;
  }

  else
  {
    if (suggestionCopy)
    {
      [array addObject:suggestionCopy];
    }

    v39 = contextCopy;
    v51 = resultsCopy;
    if (webSuggestionCopy)
    {
      [array addObject:webSuggestionCopy];
    }

    v59 = array;
    objc_autoreleasePoolPop(v27);
  }

  return array;
}

- (id)release2023_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion actionSuggestionResults:(id)results contactSuggestionResults:(id)self0 serverSuggestionResults:(id)self1 localSuggestionResults:(id)self2 options:(id)self3
{
  v152 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v27 = objc_autoreleasePoolPush();
  v28 = suggestionCopy;
  v123 = webSuggestionCopy;
  if (objc_msgSend_count(suggestionResultsCopy) || objc_msgSend_count(localSuggestionResultsCopy) || objc_msgSend_count(serverSuggestionResultsCopy) || objc_msgSend_count(resultsCopy))
  {
    context = v27;
    v110 = v28;
    if (objc_msgSend_count(localSuggestionResultsCopy))
    {
      v29 = [localSuggestionResultsCopy mutableCopy];
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v30 = v29;
    v111 = localSuggestionResultsCopy;
    v112 = serverSuggestionResultsCopy;
    if (objc_msgSend_count(serverSuggestionResultsCopy))
    {
      v31 = [serverSuggestionResultsCopy mutableCopy];
    }

    else
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v32 = v31;
    [(SSBullseyeSuggestionsManager *)self _filterSuggestionResultsWithQueryContext:contextCopy filters:filtersCopy entityFilters:entityFiltersCopy contactFilters:contactFiltersCopy contactSuggestionResults:suggestionResultsCopy localSuggestionResults:v30 serverSuggestionResults:v31 options:optionsCopy];
    v33 = [(SSBullseyeSuggestionsManager *)self _rankedSuggestionsResultsWithQueryContext:contextCopy serverSuggestionResults:v32 localSuggestionResults:v30 options:optionsCopy];
    v117 = v33;
    if (objc_msgSend_count(v33))
    {
      firstObject = [v33 firstObject];
      v35 = v123;
      v108 = [firstObject type] == 28 || objc_msgSend(firstObject, "type") == 29 || objc_msgSend(firstObject, "type") == 17;
    }

    else
    {
      v108 = 0;
      v35 = v123;
    }

    v36 = v35;
    v118 = optionsCopy;
    v119 = resultsCopy;
    if (objc_msgSend_count(v32))
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v37 = v32;
      v38 = [v37 countByEnumeratingWithState:&v143 objects:v151 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = filtersCopy;
        v41 = *v144;
LABEL_21:
        v42 = 0;
        while (1)
        {
          if (*v144 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v143 + 1) + 8 * v42);
          if ([v43 type] == 29)
          {
            break;
          }

          if (v39 == ++v42)
          {
            v39 = [v37 countByEnumeratingWithState:&v143 objects:v151 count:16];
            if (v39)
            {
              goto LABEL_21;
            }

            v44 = v123;
            filtersCopy = v40;
            optionsCopy = v118;
            resultsCopy = v119;
            goto LABEL_31;
          }
        }

        v45 = v43;

        v36 = v123;
        filtersCopy = v40;
        optionsCopy = v118;
        resultsCopy = v119;
        if (!v45)
        {
          goto LABEL_32;
        }

        v37 = v45;

        v44 = v37;
      }

      else
      {
        v44 = v35;
      }

LABEL_31:

      v36 = v44;
    }

LABEL_32:
    v114 = filtersCopy;
    if (-[SSBullseyeSuggestionsManager enabledAboveFoldResults](self, "enabledAboveFoldResults") && (v46 = v36, [optionsCopy objectForKeyedSubscript:@"ForceAboveFoldResults"], (v47 = objc_claimAutoreleasedReturnValue()) != 0) && (v48 = v47, objc_msgSend(optionsCopy, "objectForKeyedSubscript:", @"ForceAboveFoldResults"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "BOOLValue"), v49, v48, v36 = v46, v50))
    {
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCountForAboveFoldResults];
    }

    else
    {
      maxTotalSuggestionCountForAboveFoldResults = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    }

    v142 = maxTotalSuggestionCountForAboveFoldResults;
    if (v36)
    {
      [v32 removeObject:v36];
      [array addObject:v36];
      if (v142 != 0x7FFFFFFF)
      {
        --v142;
      }
    }

    v116 = v36;
    v52 = objc_msgSend_count(v30);
    v53 = objc_msgSend_count(resultsCopy);
    v54 = objc_msgSend_count(v32);
    maxLocalSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount];
    maxServerSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxServerSuggestionCount];
    if (objc_msgSend_count(resultsCopy))
    {
      memset(v139, 0, sizeof(v139));
      v55 = resultsCopy;
      if ([v55 countByEnumeratingWithState:v139 objects:v150 count:16])
      {
        if (v142)
        {
          [array addObject:**(&v139[0] + 1)];
          if (v142 != 0x7FFFFFFF)
          {
            --v142;
          }
        }
      }
    }

    v113 = suggestionResultsCopy;
    v126 = array;
    SSSplitCounts(v53 + v52, maxLocalSuggestionCount, 0, v54, maxServerSuggestionCount, 0, v142, &maxLocalSuggestionCount, &maxServerSuggestionCount, &v142);
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v58 = v32;
    v59 = [v58 countByEnumeratingWithState:&v135 objects:v149 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v136;
LABEL_48:
      v62 = 0;
      while (1)
      {
        if (*v136 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v135 + 1) + 8 * v62);
        v64 = objc_msgSend_count(v56);
        if (v64 >= maxServerSuggestionCount)
        {
          break;
        }

        [v56 addObject:v63];
        if (v60 == ++v62)
        {
          v60 = [v58 countByEnumeratingWithState:&v135 objects:v149 count:16];
          if (v60)
          {
            goto LABEL_48;
          }

          break;
        }
      }
    }

    v107 = v58;

    [v30 sortUsingComparator:&__block_literal_global_170];
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v65 = v30;
    v66 = [v65 countByEnumeratingWithState:&v131 objects:v148 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = 0;
      v69 = 0;
      v70 = *v132;
      v71 = v124;
      while (1)
      {
        v72 = 0;
        do
        {
          if (*v132 != v70)
          {
            objc_enumerationMutation(v65);
          }

          v73 = *(*(&v131 + 1) + 8 * v72);
          type = [v73 type];
          if (type == 38 || type == 32)
          {
            v75 = v57;
LABEL_62:
            [v75 addObject:v73];
            goto LABEL_63;
          }

          if (v68 || type != 35)
          {
            if (v69 || type != 34)
            {
              v75 = v124;
              goto LABEL_62;
            }

            v69 = v73;
          }

          else
          {
            v68 = v73;
          }

LABEL_63:
          ++v72;
        }

        while (v67 != v72);
        v76 = [v65 countByEnumeratingWithState:&v131 objects:v148 count:16];
        v67 = v76;
        if (!v76)
        {
          goto LABEL_75;
        }
      }
    }

    v68 = 0;
    v69 = 0;
    v71 = v124;
LABEL_75:
    v115 = v56;

    array = v126;
    v77 = objc_msgSend_count(v126);
    [v57 sortUsingComparator:&__block_literal_global_172];
    do
    {
      if (!objc_msgSend_count(v57))
      {
        break;
      }

      v78 = objc_msgSend_count(v126);
      if (v78 >= v142)
      {
        break;
      }

      v79 = objc_msgSend_count(v126) - v77;
      if (v79 > maxLocalSuggestionCount)
      {
        break;
      }

      firstObject2 = [v57 firstObject];
      [v126 addObject:firstObject2];
      [v57 removeObject:firstObject2];
      if (maxLocalSuggestionCount != 0x7FFFFFFF)
      {
        --maxLocalSuggestionCount;
      }

      v81 = objc_msgSend_count(v71);

      if (v81)
      {
        break;
      }
    }

    while (!v68 && !v69);
    if (v68 && (v82 = objc_msgSend_count(v126), v82 < v142))
    {
      v83 = objc_msgSend_count(v126);
      v84 = maxLocalSuggestionCount;
      v85 = v83 - v77 < maxLocalSuggestionCount;
      v86 = v119;
      v87 = v116;
      if (v85)
      {
        [v126 addObject:v68];
        v88 = v124;
        if (maxLocalSuggestionCount == 0x7FFFFFFF)
        {
LABEL_94:
          if (v69 && objc_msgSend_count(v88) && ([v88 containsObject:v69] & 1) == 0)
          {
            [v88 removeLastObject];
            [v88 addObject:v69];
          }

          v90 = v117;
          if (!v108 || (v91 = objc_msgSend_count(v57), v68) || v91)
          {
            v102 = v86;
            v101 = v124;
            [v126 addObjectsFromArray:v124];
            v103 = v115;
            [v126 addObjectsFromArray:v115];
          }

          else if (objc_msgSend_count(v124))
          {
            v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v93 = v115;
            v94 = [v93 countByEnumeratingWithState:&v127 objects:v147 count:16];
            if (v94)
            {
              v95 = v94;
              v96 = *v128;
              do
              {
                for (i = 0; i != v95; ++i)
                {
                  if (*v128 != v96)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v98 = *(*(&v127 + 1) + 8 * i);
                  type2 = [v98 type];
                  v100 = v92;
                  if (type2 != 28)
                  {
                    if ([v98 type] == 29)
                    {
                      v100 = v92;
                    }

                    else
                    {
                      v100 = v126;
                    }
                  }

                  [v100 addObject:v98];
                }

                v95 = [v93 countByEnumeratingWithState:&v127 objects:v147 count:16];
              }

              while (v95);
            }

            v101 = v124;
            array = v126;
            [v126 addObjectsFromArray:v124];
            [v126 addObjectsFromArray:v92];

            v102 = v119;
            v87 = v116;
            v90 = v117;
            v103 = v115;
          }

          else
          {
            v102 = v86;
            v103 = v115;
            [v126 addObjectsFromArray:v115];
            v101 = v124;
          }

          v28 = v110;
          objc_autoreleasePoolPop(context);
          v104 = array;
          suggestionResultsCopy = v113;
          filtersCopy = v114;
          localSuggestionResultsCopy = v111;
          serverSuggestionResultsCopy = v112;
          resultsCopy = v102;
          optionsCopy = v118;
          goto LABEL_116;
        }

        v84 = --maxLocalSuggestionCount;
      }
    }

    else
    {
      v84 = maxLocalSuggestionCount;
      v86 = v119;
      v87 = v116;
    }

    v88 = v124;
    if (v84 != 0x7FFFFFFF)
    {
      do
      {
        v89 = objc_msgSend_count(v124);
        if (v89 <= maxLocalSuggestionCount)
        {
          break;
        }

        [v124 removeLastObject];
      }

      while (maxLocalSuggestionCount != 0x7FFFFFFF);
    }

    goto LABEL_94;
  }

  if (v123)
  {
    [array addObject:?];
  }

  if (v28)
  {
    [array addObject:v28];
  }

  v106 = array;

  objc_autoreleasePoolPop(v27);
LABEL_116:

  return array;
}

- (id)release2022_blendingByPolicyWithQueryContext:(id)context filters:(id)filters entityFilters:(id)entityFilters contactFilters:(id)contactFilters userSuggestion:(id)suggestion userWebSuggestion:(id)webSuggestion shortcutSuggestionResults:(id)results actionSuggestionResults:(id)self0 contactSuggestionResults:(id)self1 serverSuggestionResults:(id)self2 localSuggestionResults:(id)self3 options:(id)self4
{
  v265 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  filtersCopy = filters;
  entityFiltersCopy = entityFilters;
  contactFiltersCopy = contactFilters;
  suggestionCopy = suggestion;
  webSuggestionCopy = webSuggestion;
  resultsCopy = results;
  suggestionResultsCopy = suggestionResults;
  contactSuggestionResultsCopy = contactSuggestionResults;
  serverSuggestionResultsCopy = serverSuggestionResults;
  localSuggestionResultsCopy = localSuggestionResults;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  searchString = [contextCopy searchString];
  v223 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:searchString];

  v28 = suggestionCopy;
  v198 = webSuggestionCopy;
  v206 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v209 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v199 = contactSuggestionResultsCopy;
  if (objc_msgSend_count(contactSuggestionResultsCopy) || objc_msgSend_count(localSuggestionResultsCopy) || objc_msgSend_count(serverSuggestionResultsCopy) || objc_msgSend_count(resultsCopy) || objc_msgSend_count(suggestionResultsCopy))
  {
    v196 = v28;
    v214 = objc_opt_new();
    v221 = objc_opt_new();
    v208 = objc_opt_new();
    v207 = objc_opt_new();
    v212 = objc_opt_new();
    maxTotalSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxTotalSuggestionCount];
    maxLocalSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxLocalSuggestionCount];
    maxServerSuggestionCount = [(SSBullseyeSuggestionsManager *)self maxServerSuggestionCount];
    v30 = optionsCopy;
    if (optionsCopy)
    {
      v31 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];
      if (v31)
      {
        v32 = [optionsCopy objectForKeyedSubscript:@"localDisplayPosition"];
        intValue = [v32 intValue];

        v30 = optionsCopy;
      }

      else
      {
        intValue = [(SSBullseyeSuggestionsManager *)self localDisplayPosition];
      }

      v33 = [v30 objectForKeyedSubscript:@"localThreshold"];
      if (v33)
      {
        v34 = v33;
        localSuggestionThreshold = [v30 objectForKeyedSubscript:@"localThreshold"];

LABEL_14:
        v36 = [v30 objectForKeyedSubscript:@"serverThreshold"];
        if (v36)
        {
          v37 = v36;
          v215 = [v30 objectForKeyedSubscript:@"serverThreshold"];

          goto LABEL_17;
        }

LABEL_16:
        serverSuggestionThreshold = [(SSBullseyeSuggestionsManager *)self serverSuggestionThreshold];

        v215 = serverSuggestionThreshold;
        if (!v30)
        {
          ignoreMaxCount = [(SSBullseyeSuggestionsManager *)self ignoreMaxCount];
          bOOLValue = 0;
          v202 = 0;
          v195 = 0;
          v187 = 0;
          LOBYTE(v184) = 1;
          v47 = v196;
LABEL_39:
          v213 = localSuggestionThreshold;
          v192 = filtersCopy;
          v193 = array;
          v194 = contextCopy;
          v197 = resultsCopy;
          v52 = objc_msgSend_count(resultsCopy);
          v53 = maxTotalSuggestionCount - v52;
          if (maxTotalSuggestionCount < v52)
          {
            v53 = 0;
          }

          if (v52)
          {
            v54 = maxTotalSuggestionCount == 0x7FFFFFFF;
          }

          else
          {
            v54 = 1;
          }

          if (v54)
          {
            v53 = maxTotalSuggestionCount;
          }

          v185 = v52;
          v186 = v53;
          array2 = [MEMORY[0x1E695DF70] array];
          array3 = [MEMORY[0x1E695DF70] array];
          v225 = objc_opt_new();
          v228 = objc_opt_new();
          v217 = objc_opt_new();
          v205 = objc_opt_new();
          v255 = 0u;
          v256 = 0u;
          v257 = 0u;
          v258 = 0u;
          v55 = serverSuggestionResultsCopy;
          v56 = [v55 countByEnumeratingWithState:&v255 objects:v264 count:16];
          if (!v56)
          {
            v226 = 0;
            v224 = v198;
            v220 = v47;
            v59 = v214;
            goto LABEL_79;
          }

          v57 = v56;
          v226 = 0;
          v58 = *v256;
          v224 = v198;
          v220 = v47;
          v59 = v214;
          while (1)
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v256 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v61 = *(*(&v255 + 1) + 8 * i);
              type = [v61 type];
              completion = [v61 completion];
              v64 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion];

              if (type > 27)
              {
                switch(type)
                {
                  case 30:
                    v66 = v61;

                    v220 = v66;
                    break;
                  case 29:
                    goto LABEL_58;
                  case 28:
                    if ([v64 isEqualToString:v223])
                    {
                      [v61 setType:29];
LABEL_58:
                      v65 = v61;

                      [array3 addObject:v65];
                      v226 |= objc_msgSend_count(v59) == 0;
                      v224 = v65;
                    }

                    else
                    {
                      [array3 addObject:v61];
                      v226 |= objc_msgSend_count(v59) == 0;
                    }

                    break;
                }

LABEL_74:
                [v59 addObject:v61];
                goto LABEL_75;
              }

              if (type != 17)
              {
                if (type == 27)
                {
                  goto LABEL_75;
                }

                goto LABEL_74;
              }

              if (!v215 || (v67 = MEMORY[0x1E696AD98], [v61 rankingScore], objc_msgSend(v67, "numberWithDouble:"), v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "compare:", v215), v68, v69 != -1))
              {
                entityIdentifier = [v61 entityIdentifier];
                v71 = entityIdentifier;
                if (entityFiltersCopy && entityIdentifier)
                {
                  entityIdentifier2 = [v61 entityIdentifier];
                  v73 = [entityFiltersCopy containsObject:entityIdentifier2];

                  if (v73)
                  {
                    v59 = v214;
                    goto LABEL_75;
                  }
                }

                else
                {
                }

                entityIdentifier3 = [v61 entityIdentifier];

                if (entityIdentifier3)
                {
                  [v212 addObject:v64];
                }

                [v225 addObject:v64];
                [array2 addObject:v61];
                v59 = v214;
                goto LABEL_74;
              }

LABEL_75:
            }

            v57 = [v55 countByEnumeratingWithState:&v255 objects:v264 count:16];
            if (!v57)
            {
LABEL_79:

              if (v224 && ([v59 containsObject:v224] & 1) == 0)
              {
                [v59 addObject:v224];
                [array3 addObject:v224];
              }

              v251 = 0u;
              v252 = 0u;
              v183 = objc_msgSend_count(v59) != 1;
              v253 = 0u;
              v254 = 0u;
              v75 = v199;
              v76 = [v75 countByEnumeratingWithState:&v251 objects:v263 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v252;
                do
                {
                  for (j = 0; j != v77; ++j)
                  {
                    if (*v252 != v78)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v80 = *(*(&v251 + 1) + 8 * j);
                    completion2 = [v80 completion];
                    v82 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion2];

                    if ((!contactFiltersCopy || ([contactFiltersCopy containsObject:v82] & 1) == 0) && (objc_msgSend(v217, "containsObject:", v82) & 1) == 0)
                    {
                      if ([v82 containsString:v223])
                      {
                        [v207 addObject:v80];
                        [v217 addObject:v82];
                        if (maxLocalSuggestionCount != 0x7FFFFFFF && objc_msgSend_count(v207) >= maxLocalSuggestionCount)
                        {

                          goto LABEL_97;
                        }
                      }
                    }
                  }

                  v77 = [v75 countByEnumeratingWithState:&v251 objects:v263 count:16];
                }

                while (v77);
              }

LABEL_97:

              v249 = 0u;
              v250 = 0u;
              v247 = 0u;
              v248 = 0u;
              v83 = localSuggestionResultsCopy;
              v84 = [v83 countByEnumeratingWithState:&v247 objects:v262 count:16];
              if (!v84)
              {
                v218 = 0;
                goto LABEL_138;
              }

              v85 = v84;
              v218 = 0;
              v86 = *v248;
              while (2)
              {
                v87 = 0;
LABEL_100:
                if (*v248 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v88 = *(*(&v247 + 1) + 8 * v87);
                type2 = [v88 type];
                completion3 = [v88 completion];
                v91 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion3];

                if (type2 <= 34)
                {
                  if (type2 == 32)
                  {
                    goto LABEL_113;
                  }

                  if (type2 != 34)
                  {
                    goto LABEL_122;
                  }

                  searchString2 = [v194 searchString];
                  if (searchString2)
                  {
                    v93 = searchString2;
                    v94 = [v91 isEqualToString:v223];

                    if (v94)
                    {
                      goto LABEL_134;
                    }
                  }

                  if ([v225 containsObject:v91])
                  {
                    goto LABEL_134;
                  }

                  v95 = v206;
                }

                else
                {
                  if (type2 == 35)
                  {
                    v98 = v88;

                    [v221 addObject:v98];
                    v218 = v98;
                    goto LABEL_134;
                  }

                  if (type2 != 39)
                  {
                    if (type2 != 38)
                    {
LABEL_122:
                      if (!contactFiltersCopy || ([contactFiltersCopy containsObject:v91] & 1) == 0)
                      {
                        if (!v213 || (v100 = MEMORY[0x1E696AD98], [v88 rankingScore], objc_msgSend(v100, "numberWithDouble:"), v101 = objc_claimAutoreleasedReturnValue(), v102 = objc_msgSend(v101, "compare:", v213), v101, v102 != -1))
                        {
                          if ((![v225 containsObject:v91] || objc_msgSend(v212, "containsObject:", v91)) && (objc_msgSend(v228, "containsObject:", v91) & 1) == 0)
                          {
                            if ([v217 containsObject:v91])
                            {
                              [v205 addObject:v88];
                            }

                            [v221 addObject:v88];
                            v97 = v225;
LABEL_132:
                            v99 = v91;
LABEL_133:
                            [v97 addObject:v99];
                          }
                        }
                      }

LABEL_134:

                      if (v85 == ++v87)
                      {
                        v85 = [v83 countByEnumeratingWithState:&v247 objects:v262 count:16];
                        if (!v85)
                        {
LABEL_138:

                          v103 = suggestionResultsCopy;
                          v105 = v213;
                          v104 = v214;
                          if (!objc_msgSend_count(v208))
                          {
                            v245 = 0u;
                            v246 = 0u;
                            v243 = 0u;
                            v244 = 0u;
                            v106 = v207;
                            v107 = [v106 countByEnumeratingWithState:&v243 objects:v261 count:16];
                            if (v107)
                            {
                              v108 = v107;
                              v109 = *v244;
                              do
                              {
                                for (k = 0; k != v108; ++k)
                                {
                                  if (*v244 != v109)
                                  {
                                    objc_enumerationMutation(v106);
                                  }

                                  v111 = *(*(&v243 + 1) + 8 * k);
                                  completion4 = [v111 completion];
                                  v113 = [(SSBullseyeSuggestionsManager *)self suggestionKeyWithCompletion:completion4];

                                  if (([v228 containsObject:v113] & 1) == 0)
                                  {
                                    [v208 addObject:v111];
                                  }
                                }

                                v108 = [v106 countByEnumeratingWithState:&v243 objects:v261 count:16];
                              }

                              while (v108);
                            }

                            v241 = 0u;
                            v242 = 0u;
                            v239 = 0u;
                            v240 = 0u;
                            v114 = v205;
                            v115 = [v114 countByEnumeratingWithState:&v239 objects:v260 count:16];
                            v103 = suggestionResultsCopy;
                            v105 = v213;
                            if (v115)
                            {
                              v116 = v115;
                              v117 = *v240;
                              do
                              {
                                for (m = 0; m != v116; ++m)
                                {
                                  if (*v240 != v117)
                                  {
                                    objc_enumerationMutation(v114);
                                  }

                                  [v221 removeObject:*(*(&v239 + 1) + 8 * m)];
                                }

                                v116 = [v114 countByEnumeratingWithState:&v239 objects:v260 count:16];
                              }

                              while (v116);
                            }

                            v104 = v214;
                          }

                          v119 = [v221 sortedArrayUsingComparator:&__block_literal_global_186];
                          v120 = [v119 mutableCopy];

                          array = v193;
                          if (v208)
                          {
                            v121 = objc_msgSend_count(v208);
                          }

                          else
                          {
                            v121 = 0;
                          }

                          if (v120)
                          {
                            v122 = objc_msgSend_count(v120);
                            if (v104)
                            {
                              goto LABEL_161;
                            }

LABEL_163:
                            v123 = 0;
                          }

                          else
                          {
                            v122 = 0;
                            if (!v104)
                            {
                              goto LABEL_163;
                            }

LABEL_161:
                            v123 = objc_msgSend_count(v104);
                          }

                          v237 = maxLocalSuggestionCount;
                          v238 = v186;
                          v124 = maxServerSuggestionCount;
                          v236 = maxServerSuggestionCount;
                          if (ignoreMaxCount)
                          {
                            v125 = maxLocalSuggestionCount;
                            if (v123 < 2)
                            {
                              v125 = v186;
                            }

                            maxLocalSuggestionCount = v125;
                            if (!(v121 | v122))
                            {
                              v124 = v186;
                            }
                          }

                          if (v186 != 0x7FFFFFFF)
                          {
                            if (v220)
                            {
                              v126 = bOOLValue;
                            }

                            else
                            {
                              v126 = 0;
                            }

                            SSSplitCounts(v122 + v121, maxLocalSuggestionCount, v126, v123, v124, 0, v186, &v237, &v236, &v238);
                          }

                          v127 = intValue;
                          if (!intValue)
                          {
                            v127 = v187;
                          }

                          v222 = v127;
                          if (v220)
                          {
                            v128 = bOOLValue;
                          }

                          else
                          {
                            v128 = 0;
                          }

                          if (v128 == 1)
                          {
                            [v193 addObject:v220];
                          }

                          array4 = [MEMORY[0x1E695DF70] array];
                          v130 = array4;
                          if (v238 == 0x7FFFFFFF)
                          {
                            [array4 addObjectsFromArray:v214];
                          }

                          else if (objc_msgSend_count(v214))
                          {
                            if (v184)
                            {
                              v131 = v183 & v226;
                              v234 = 0;
                              v235 = 0;
                              if (objc_msgSend_count(array3) == 1)
                              {
                                v132 = objc_msgSend_count(array3);
                                v133 = objc_msgSend_count(array2);
                                SSSplitCounts(v132, 0x7FFFFFFFLL, 0, v133, 0x7FFFFFFFLL, 0, v236, &v234, &v235, 0);
                              }

                              else
                              {
                                v135 = objc_msgSend_count(array2);
                                v136 = objc_msgSend_count(array3);
                                SSSplitCounts(v135, 0x7FFFFFFFLL, 0, v136, 0x7FFFFFFFLL, 0, v236, &v235, &v234, 0);
                              }

                              v134 = getFilteredSuggestionResults(array3, v234);
                              v137 = getFilteredSuggestionResults(array2, v235);
                              v138 = v137;
                              v139 = v131 == 0;
                              if (v131)
                              {
                                v140 = v134;
                              }

                              else
                              {
                                v140 = v137;
                              }

                              if (v131)
                              {
                                v141 = v137;
                              }

                              else
                              {
                                v141 = v134;
                              }

                              v142 = v222;
                              if (!v139)
                              {
                                v142 = 1;
                              }

                              v222 = v142;
                              [v130 addObjectsFromArray:v140];
                              [v130 addObjectsFromArray:v141];
                            }

                            else
                            {
                              v134 = getFilteredSuggestionResults(v214, v236);
                              [v130 addObjectsFromArray:v134];
                            }
                          }

                          array5 = [MEMORY[0x1E695DF70] array];
                          if (objc_msgSend_count(v208))
                          {
                            v232 = 0u;
                            v233 = 0u;
                            v230 = 0u;
                            v231 = 0u;
                            v144 = v208;
                            v145 = [v144 countByEnumeratingWithState:&v230 objects:v259 count:16];
                            if (v145)
                            {
                              v146 = v145;
                              v147 = 0;
                              v148 = *v231;
LABEL_202:
                              v149 = 0;
                              v150 = v147;
                              v147 += v146;
                              while (1)
                              {
                                if (*v231 != v148)
                                {
                                  objc_enumerationMutation(v144);
                                }

                                v151 = *(*(&v230 + 1) + 8 * v149);
                                if ((maxLocalSuggestionCount & 0x8000000000000000) == 0 && (objc_msgSend_count(v120) && v150 && v150 + 1 >= v237 || !objc_msgSend_count(v120) && v150 >= v237))
                                {
                                  break;
                                }

                                [array5 addObject:v151];
                                ++v150;
                                if (v146 == ++v149)
                                {
                                  v146 = [v144 countByEnumeratingWithState:&v230 objects:v259 count:16];
                                  if (v146)
                                  {
                                    goto LABEL_202;
                                  }

                                  break;
                                }
                              }
                            }

                            array = v193;
                            v103 = suggestionResultsCopy;
                            v105 = v213;
                          }

                          if (v120)
                          {
                            [array5 addObjectsFromArray:v120];
                          }

                          if (objc_msgSend_count(v197))
                          {
                            [array addObjectsFromArray:v197];
                          }

                          if (objc_msgSend_count(v103))
                          {
                            [array addObjectsFromArray:v103];
                          }

                          v152 = v222;
                          if (v218 && ([array containsObject:v218] & 1) == 0)
                          {
                            [array removeLastObject];
                            [array addObject:v218];
                          }

                          v153 = array5;
                          v154 = v237;
                          v155 = v130;
                          v227 = v155;
                          if (v222)
                          {
                            v156 = v155;

                            v154 = v236;
                            v157 = v153;

                            v158 = &v237;
                          }

                          else
                          {
                            v158 = &v236;
                            v156 = v153;
                            v157 = v155;
                          }

                          v159 = *v158;
                          v160 = getFilteredSuggestionResults(v156, v154);
                          [array addObjectsFromArray:v160];
                          if (v222)
                          {
                            if (v224 && ([array containsObject:v224] & 1) == 0)
                            {
                              [array removeLastObject];
                              [array addObject:v224];
                            }
                          }

                          else if (objc_msgSend_count(v206) && ([v206 firstObject], v161 = objc_claimAutoreleasedReturnValue(), v162 = objc_msgSend(array, "containsObject:", v161), v161, v152 = v222, (v162 & 1) == 0))
                          {
                            [array removeLastObject];
                            firstObject = [v206 firstObject];
                            [array addObject:firstObject];

                            v152 = v222;
                            v105 = v213;
                          }

                          else
                          {
                            v163 = objc_msgSend_count(v209);
                            v105 = v213;
                            if (!suggestionResultsCopy)
                            {
                              if (v163)
                              {
                                if (!v185)
                                {
                                  firstObject2 = [v209 firstObject];
                                  v165 = [array containsObject:firstObject2];

                                  v152 = v222;
                                  if ((v165 & 1) == 0)
                                  {
                                    [array removeLastObject];
                                    firstObject3 = [v209 firstObject];
                                    [array addObject:firstObject3];

                                    v152 = v222;
                                  }
                                }
                              }
                            }
                          }

                          v168 = getFilteredSuggestionResults(v157, v159);
                          [array addObjectsFromArray:v168];
                          if (v152)
                          {
                            if (objc_msgSend_count(v206) && ([v206 firstObject], v169 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend(array, "containsObject:", v169), v169, v171 = v206, v105 = v213, !v170) || (v172 = objc_msgSend_count(v209), !suggestionResultsCopy) && v172 && !v185 && (objc_msgSend(v209, "firstObject"), v173 = objc_claimAutoreleasedReturnValue(), v174 = objc_msgSend(array, "containsObject:", v173), v173, v171 = v209, v105 = v213, (v174 & 1) == 0))
                            {
                              [array removeLastObject];
                              firstObject4 = [v171 firstObject];
                              [array addObject:firstObject4];
                            }

                            v176 = v224;
                            if (!v224)
                            {
LABEL_252:
                              v177 = array;

                              contextCopy = v194;
                              filtersCopy = v192;
                              v178 = contactFiltersCopy;
                              v28 = v196;
                              resultsCopy = v197;
                              v179 = optionsCopy;
                              v180 = v198;
                              goto LABEL_253;
                            }
                          }

                          else
                          {
                            v176 = v224;
                            if (!v224)
                            {
                              goto LABEL_252;
                            }

                            if (([array containsObject:v224] & 1) == 0)
                            {
                              [array removeLastObject];
                              [array addObject:v224];
                            }
                          }

                          [array removeObject:v176];
                          [array insertObject:v176 atIndex:0];
                          goto LABEL_252;
                        }

                        continue;
                      }

                      goto LABEL_100;
                    }

LABEL_113:
                    [v88 rankingScore];
                    if (v96 != 0.0 && (!contactFiltersCopy || ([contactFiltersCopy containsObject:v91] & 1) == 0) && (objc_msgSend(v228, "containsObject:", v91) & 1) == 0)
                    {
                      [v208 addObject:v88];
                      [v225 addObject:v91];
                      v97 = v228;
                      goto LABEL_132;
                    }

                    goto LABEL_134;
                  }

                  if ([v225 containsObject:v91])
                  {
                    goto LABEL_134;
                  }

                  v95 = v209;
                }

                break;
              }

              [v95 addObject:v88];
              v97 = v221;
              v99 = v88;
              goto LABEL_133;
            }
          }
        }

LABEL_17:
        v39 = [v30 objectForKeyedSubscript:@"localFilteringScore"];
        if (v39)
        {
          v202 = [v30 objectForKeyedSubscript:@"localFilteringScore"];
        }

        else
        {
          v202 = 0;
        }

        v40 = [v30 objectForKeyedSubscript:@"qualityThreshold"];
        if (v40)
        {
          v195 = [v30 objectForKeyedSubscript:@"qualityThreshold"];
        }

        else
        {
          v195 = 0;
        }

        v41 = [v30 objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
        if (v41)
        {
          v42 = [v30 objectForKeyedSubscript:@"ignoreMaxCountForSingleSuggestionsType"];
          ignoreMaxCount = [v42 BOOLValue];

          v30 = optionsCopy;
        }

        else
        {
          ignoreMaxCount = [(SSBullseyeSuggestionsManager *)self ignoreMaxCount];
        }

        v43 = [v30 objectForKeyedSubscript:@"prefersLocalUserTypedSuggestion"];
        if (v43)
        {
          v44 = [v30 objectForKeyedSubscript:@"prefersLocalUserTypedSuggestion"];
          bOOLValue = [v44 BOOLValue];

          v30 = optionsCopy;
        }

        else
        {
          bOOLValue = 0;
        }

        v45 = [v30 objectForKeyedSubscript:@"suggestionsAreBlended"];
        if (v45)
        {
          v46 = [v30 objectForKeyedSubscript:@"suggestionsAreBlended"];
          v184 = [v46 BOOLValue] ^ 1;
        }

        else
        {
          LOBYTE(v184) = 1;
        }

        v47 = v196;

        if (v202)
        {
          if (v195)
          {
            [v202 doubleValue];
            v49 = v48;
            [v195 doubleValue];
            v51 = v49 < v50;
          }

          else
          {
            v195 = 0;
            v51 = 1;
          }

          v187 = v51;
        }

        else
        {
          v202 = 0;
          v187 = 0;
        }

        goto LABEL_39;
      }
    }

    else
    {
      intValue = [(SSBullseyeSuggestionsManager *)self localDisplayPosition];
    }

    localSuggestionThreshold = [(SSBullseyeSuggestionsManager *)self localSuggestionThreshold];

    if (!v30)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v180 = v198;
  if (v198)
  {
    [array addObject:v198];
  }

  v178 = contactFiltersCopy;
  v179 = optionsCopy;
  if (v28)
  {
    [array addObject:v28];
  }

  v182 = array;
  v218 = 0;
  v224 = v198;
  v220 = v28;
LABEL_253:

  return array;
}

- (id)intentBasedSuggestionBlending:(id)blending suggestions:(id)suggestions
{
  v33 = *MEMORY[0x1E69E9840];
  blendingCopy = blending;
  suggestionsCopy = suggestions;
  queryIntent = [blendingCopy queryIntent];
  if (!queryIntent)
  {
    goto LABEL_24;
  }

  v8 = queryIntent;
  queryIntent2 = [blendingCopy queryIntent];
  if (![queryIntent2 intentType])
  {

    goto LABEL_24;
  }

  queryIntent3 = [blendingCopy queryIntent];
  suggestionConfig = [queryIntent3 suggestionConfig];

  if (!suggestionConfig)
  {
LABEL_24:
    array = suggestionsCopy;
    goto LABEL_25;
  }

  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v27 = blendingCopy;
  queryIntent4 = [blendingCopy queryIntent];
  suggestionConfig2 = [queryIntent4 suggestionConfig];

  localSuggestionQuota = [suggestionConfig2 localSuggestionQuota];
  serverSuggestionQuota = [suggestionConfig2 serverSuggestionQuota];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = suggestionsCopy;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * v21);
        type = [v22 type];
        if (type <= 0x27)
        {
          if (((1 << type) & 0xCF80010000) != 0)
          {
            if (localSuggestionQuota)
            {
              [array addObject:v22];
              --localSuggestionQuota;
            }
          }

          else if (((1 << type) & 0x10020000) != 0)
          {
            if (serverSuggestionQuota)
            {
              [array addObject:v22];
              --serverSuggestionQuota;
            }
          }

          else if (type == 29 && [suggestionConfig2 showWebAsTypedSuggestion])
          {
            [array addObject:v22];
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v24 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v19 = v24;
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);
  blendingCopy = v27;
LABEL_25:

  return array;
}

@end