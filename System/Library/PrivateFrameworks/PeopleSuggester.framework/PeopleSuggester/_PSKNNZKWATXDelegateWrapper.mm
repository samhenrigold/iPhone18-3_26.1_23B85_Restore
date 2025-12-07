@interface _PSKNNZKWATXDelegateWrapper
- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)model fallbackInteractionConfig:(id)config;
- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)model modelType:(int64_t)type modelConfiguration:(id)configuration maxSuggestions:(unint64_t)suggestions transformers:(id)transformers isEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category;
- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)model primaryInteractionsConfig:(id)config;
- (id)getSuggestionsWithPredictionContext:(id)context;
- (void)suggestionsForInteractionSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply;
- (void)updateWithFallbackInteractionsConfig:(id)config;
- (void)updateWithPrimaryInteractionsConfig:(id)config;
@end

@implementation _PSKNNZKWATXDelegateWrapper

- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)model modelType:(int64_t)type modelConfiguration:(id)configuration maxSuggestions:(unint64_t)suggestions transformers:(id)transformers isEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category
{
  modelCopy = model;
  configurationCopy = configuration;
  transformersCopy = transformers;
  v22.receiver = self;
  v22.super_class = _PSKNNZKWATXDelegateWrapper;
  v19 = [(_PSKNNZKWATXDelegateWrapper *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_knnModel, model);
    v20->_modelType = type;
    objc_storeStrong(&v20->_modelConfiguration, configuration);
    v20->_maxSuggestions = suggestions;
    objc_storeStrong(&v20->_transformers, transformers);
    v20->_isEnabled = enabled;
    v20->_defaultConfidenceCategory = category;
  }

  return v20;
}

- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)model primaryInteractionsConfig:(id)config
{
  v24[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  modelCopy = model;
  v8 = [_PSKNNModelConfiguration alloc];
  mechanisms = [configCopy mechanisms];
  interactionCountMaxDepths = [configCopy interactionCountMaxDepths];
  interactionHistoryRelativeStartDates = [configCopy interactionHistoryRelativeStartDates];
  bundleIds = [configCopy bundleIds];
  modelType = [configCopy modelType];
  _getInteractionFilterForPrimaryInteractionsModel = [(_PSKNNZKWATXDelegateWrapper *)self _getInteractionFilterForPrimaryInteractionsModel];
  v15 = [(_PSKNNModelConfiguration *)v8 initWithInteractionMechanisms:mechanisms interactionCountMaxDepths:interactionCountMaxDepths interactionHistoryRelativeStartDates:interactionHistoryRelativeStartDates bundleIds:bundleIds modelType:modelType clusterPruneThreshold:5 modelName:@"PastFaceTimeCallsorMessages" shouldExcludeInteractionBlock:_getInteractionFilterForPrimaryInteractionsModel];

  v16 = objc_opt_new();
  maxSuggestions = [configCopy maxSuggestions];
  v18 = [v16 mapRecipientsToContactsWithUnmapped:0];
  v24[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  v22 = [(_PSKNNZKWATXDelegateWrapper *)self initWithKNNModel:modelCopy modelType:32 modelConfiguration:v15 maxSuggestions:maxSuggestions transformers:v19 isEnabled:isEnabled defaultConfidenceCategory:defaultConfidenceCategory];
  return v22;
}

- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)model fallbackInteractionConfig:(id)config
{
  v22[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  modelCopy = model;
  v8 = [_PSKNNModelConfiguration alloc];
  mechanisms = [configCopy mechanisms];
  interactionCountMaxDepths = [configCopy interactionCountMaxDepths];
  interactionHistoryRelativeStartDates = [configCopy interactionHistoryRelativeStartDates];
  bundleIds = [configCopy bundleIds];
  v13 = -[_PSKNNModelConfiguration initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:](v8, "initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:", mechanisms, interactionCountMaxDepths, interactionHistoryRelativeStartDates, bundleIds, [configCopy modelType], 5, @"PastPhoneCalls");

  v14 = objc_opt_new();
  maxSuggestions = [configCopy maxSuggestions];
  v16 = [v14 mapRecipientsToContactsWithUnmapped:0];
  v22[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  v20 = [(_PSKNNZKWATXDelegateWrapper *)self initWithKNNModel:modelCopy modelType:33 modelConfiguration:v13 maxSuggestions:maxSuggestions transformers:v17 isEnabled:isEnabled defaultConfidenceCategory:defaultConfidenceCategory];
  return v20;
}

- (void)updateWithPrimaryInteractionsConfig:(id)config
{
  configCopy = config;
  v5 = [_PSKNNModelConfiguration alloc];
  mechanisms = [configCopy mechanisms];
  interactionCountMaxDepths = [configCopy interactionCountMaxDepths];
  interactionHistoryRelativeStartDates = [configCopy interactionHistoryRelativeStartDates];
  bundleIds = [configCopy bundleIds];
  modelType = [configCopy modelType];
  _getInteractionFilterForPrimaryInteractionsModel = [(_PSKNNZKWATXDelegateWrapper *)self _getInteractionFilterForPrimaryInteractionsModel];
  v12 = [(_PSKNNModelConfiguration *)v5 initWithInteractionMechanisms:mechanisms interactionCountMaxDepths:interactionCountMaxDepths interactionHistoryRelativeStartDates:interactionHistoryRelativeStartDates bundleIds:bundleIds modelType:modelType clusterPruneThreshold:5 modelName:@"PastFaceTimeCallsorMessages" shouldExcludeInteractionBlock:_getInteractionFilterForPrimaryInteractionsModel];
  modelConfiguration = self->_modelConfiguration;
  self->_modelConfiguration = v12;

  self->_isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  self->_defaultConfidenceCategory = defaultConfidenceCategory;
}

- (void)updateWithFallbackInteractionsConfig:(id)config
{
  configCopy = config;
  v5 = [_PSKNNModelConfiguration alloc];
  mechanisms = [configCopy mechanisms];
  interactionCountMaxDepths = [configCopy interactionCountMaxDepths];
  interactionHistoryRelativeStartDates = [configCopy interactionHistoryRelativeStartDates];
  bundleIds = [configCopy bundleIds];
  v10 = -[_PSKNNModelConfiguration initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:](v5, "initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:", mechanisms, interactionCountMaxDepths, interactionHistoryRelativeStartDates, bundleIds, [configCopy modelType], 5, @"PastPhoneCalls");
  modelConfiguration = self->_modelConfiguration;
  self->_modelConfiguration = v10;

  self->_isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  self->_defaultConfidenceCategory = defaultConfidenceCategory;
}

- (id)getSuggestionsWithPredictionContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  modelType = self->_modelType;
  if (!self->_isEnabled)
  {
    v7 = +[_PSLogging generalChannel];
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (modelType == 32)
    {
      if (!v11)
      {
        goto LABEL_26;
      }

      LOWORD(v17) = 0;
      v12 = "ZKW primary interaction model disabled. Not generating suggestions.";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_26;
      }

      LOWORD(v17) = 0;
      v12 = "ZKW fallback interaction model disabled. Not generating suggestions.";
    }

    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, v12, &v17, 2u);
    goto LABEL_26;
  }

  if (modelType == 33)
  {
    v13 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v13))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFallbackInteractionModelTotalTime", " enableTelemetry=YES ", &v17, 2u);
    }

    v7 = [(_PSKNNModel *)self->_knnModel rankedZkwSuggestionsWithPredictionContext:contextCopy modelConfiguration:self->_modelConfiguration maxSuggestions:self->_maxSuggestions];
    v14 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v14))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFallbackInteractionModelTotalTime", &unk_1B5FD970D, &v17, 2u);
    }

    v9 = +[_PSLogging generalChannel];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v17 = 138739971;
    v18 = v7;
    v10 = "ZKW fallback interaction suggestions: %{sensitive}@";
    goto LABEL_22;
  }

  if (modelType == 32)
  {
    v6 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v6))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFaceTimeInteractionModelTotalTime", " enableTelemetry=YES ", &v17, 2u);
    }

    v7 = [(_PSKNNModel *)self->_knnModel rankedZkwSuggestionsWithPredictionContext:contextCopy modelConfiguration:self->_modelConfiguration maxSuggestions:self->_maxSuggestions];
    v8 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v8))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFaceTimeInteractionModelTotalTime", &unk_1B5FD970D, &v17, 2u);
    }

    v9 = +[_PSLogging generalChannel];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v17 = 138739971;
    v18 = v7;
    v10 = "ZKW primary interaction suggestions: %{sensitive}@";
LABEL_22:
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, v10, &v17, 0xCu);
LABEL_23:

    v15 = [_PSFTZKWSuggestionsTransformerFactory getResultsFromTransformers:self->_transformers suggestions:v7];
    goto LABEL_27;
  }

  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(_PSKNNZKWATXDelegateWrapper *)&self->_modelType getSuggestionsWithPredictionContext:v7];
  }

LABEL_26:
  v15 = MEMORY[0x1E695E0F0];
LABEL_27:

  return v15;
}

- (void)suggestionsForInteractionSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply
{
  v77 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  idCopy = id;
  replyCopy = reply;
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_PSKNNZKWATXDelegateWrapper suggestionsForInteractionSuggestionRequest:requestCopy clientModelId:v7 reply:?];
  }

  psPredictionContext = [requestCopy psPredictionContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSKNNZKWATXDelegateWrapper suggestionsForInteractionSuggestionRequest:psPredictionContext clientModelId:v8 reply:?];
    }
  }

  v51 = [getATXProactiveSuggestionClientModelClass_1() clientModelIdFromClientModelType:self->_modelType];
  if ([idCopy isEqualToString:v51])
  {
    v9 = [(_PSKNNZKWATXDelegateWrapper *)self getSuggestionsWithPredictionContext:psPredictionContext];
    v57 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v9;
    v58 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v58)
    {
      v56 = *v64;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v64 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v63 + 1) + 8 * i);
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v12 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_1;
          v75 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionClientModelSpecificationClass_softClass_1)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke_1;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_2();
            Class = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
            *(v71[1] + 24) = Class;
            getATXProactiveSuggestionClientModelSpecificationClass_softClass_1 = *(v71[1] + 24);
            v12 = v73[3];
          }

          v14 = v12;
          _Block_object_dispose(&v72, 8);
          v15 = [v12 alloc];
          v16 = [getATXProactiveSuggestionClientModelClass_1() clientModelIdFromClientModelType:self->_modelType];
          v17 = [v15 initWithClientModelId:v16 clientModelVersion:@"1.0" engagementResetPolicy:0];

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v18 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_1;
          v75 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionExecutableSpecificationClass_softClass_1)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke_1;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_2();
            v19 = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
            *(v71[1] + 24) = v19;
            getATXProactiveSuggestionExecutableSpecificationClass_softClass_1 = *(v71[1] + 24);
            v18 = v73[3];
          }

          v20 = v18;
          _Block_object_dispose(&v72, 8);
          v21 = [v18 alloc];
          v22 = [v11 description];
          v23 = objc_opt_new();
          uUIDString = [v23 UUIDString];
          v25 = [v21 initWithExecutableObject:v11 executableDescription:v22 executableIdentifier:uUIDString suggestionExecutableType:6];

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v26 = getATXProactiveSuggestionUISpecificationClass_softClass_1;
          v75 = getATXProactiveSuggestionUISpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionUISpecificationClass_softClass_1)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionUISpecificationClass_block_invoke_1;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_2();
            v27 = objc_getClass("ATXProactiveSuggestionUISpecification");
            *(v71[1] + 24) = v27;
            getATXProactiveSuggestionUISpecificationClass_softClass_1 = *(v71[1] + 24);
            v26 = v73[3];
          }

          v28 = v26;
          _Block_object_dispose(&v72, 8);
          v29 = [v26 alloc];
          groupName = [v11 groupName];
          v31 = groupName;
          if (!groupName)
          {
            recipients = [v11 recipients];
            firstObject = [recipients firstObject];
            handle = [firstObject handle];
            v31 = handle;
          }

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v32 = getATXProactiveSuggestionLayoutConfigClass_softClass_1;
          v75 = getATXProactiveSuggestionLayoutConfigClass_softClass_1;
          if (!getATXProactiveSuggestionLayoutConfigClass_softClass_1)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke_1;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_2();
            v33 = objc_getClass("ATXProactiveSuggestionLayoutConfig");
            *(v71[1] + 24) = v33;
            getATXProactiveSuggestionLayoutConfigClass_softClass_1 = *(v71[1] + 24);
            v32 = v73[3];
          }

          v34 = v32;
          _Block_object_dispose(&v72, 8);
          v35 = [v32 layoutConfigurationsForLayoutOptions:2];
          v36 = [v29 initWithTitle:v31 subtitle:0 preferredLayoutConfigs:v35 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

          if (!groupName)
          {
          }

          v37 = self->_modelType == 32;
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v38 = getATXProactiveSuggestionScoreSpecificationClass_softClass_1;
          v75 = getATXProactiveSuggestionScoreSpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionScoreSpecificationClass_softClass_1)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke_1;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_2();
            v39 = objc_getClass("ATXProactiveSuggestionScoreSpecification");
            *(v71[1] + 24) = v39;
            getATXProactiveSuggestionScoreSpecificationClass_softClass_1 = *(v71[1] + 24);
            v38 = v73[3];
          }

          v40 = v38;
          _Block_object_dispose(&v72, 8);
          v41 = [[v38 alloc] initWithRawScore:self->_defaultConfidenceCategory suggestedConfidenceCategory:dbl_1B5FCAE30[v37]];
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v42 = getATXProactiveSuggestionClass_softClass_1;
          v75 = getATXProactiveSuggestionClass_softClass_1;
          if (!getATXProactiveSuggestionClass_softClass_1)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionClass_block_invoke_1;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_2();
            v43 = objc_getClass("ATXProactiveSuggestion");
            *(v71[1] + 24) = v43;
            getATXProactiveSuggestionClass_softClass_1 = *(v71[1] + 24);
            v42 = v73[3];
          }

          v44 = v42;
          _Block_object_dispose(&v72, 8);
          v45 = [[v42 alloc] initWithClientModelSpecification:v17 executableSpecification:v25 uiSpecification:v36 scoreSpecification:v41];
          [v57 addObject:v45];
        }

        v58 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v58);
    }

    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v46 = getATXSuggestionRequestResponseClass_softClass_2;
    v75 = getATXSuggestionRequestResponseClass_softClass_2;
    if (!getATXSuggestionRequestResponseClass_softClass_2)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getATXSuggestionRequestResponseClass_block_invoke_2;
      v70 = &unk_1E7C23BF0;
      v71 = &v72;
      ProactiveSuggestionClientModelLibraryCore_2();
      v47 = objc_getClass("ATXSuggestionRequestResponse");
      *(v71[1] + 24) = v47;
      getATXSuggestionRequestResponseClass_softClass_2 = *(v71[1] + 24);
      v46 = v73[3];
    }

    v48 = v46;
    _Block_object_dispose(&v72, 8);
    v49 = [[v46 alloc] initWithSuggestions:v57 feedbackMetadata:0 originalRequest:requestCopy responseCode:2 error:0];
    replyCopy[2](replyCopy, v49);
  }

  else
  {
    obj = [_PSZkwUtils clientModelMismatchErrorResponseForRequest:requestCopy requestedClientModelId:idCopy actualClientModelId:v51];
    replyCopy[2](replyCopy, obj);
  }
}

- (void)getSuggestionsWithPredictionContext:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Unknown ZKW fallback interaction model type: %ld", &v3, 0xCu);
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(NSObject *)a2 reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Interaction model delegate call %@", &v2, 0xCu);
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(NSObject *)a2 reply:.cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Encountered context of unknown class: %@", &v5, 0xCu);
}

@end