@interface _PSSuggestionFromTextPredictorDelegateWrapper
- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithDelegateType:(int64_t)type textPredictor:(id)predictor startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery priorScoreThreshold:(float)threshold isEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category;
- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)predictor calendarConfig:(id)config;
- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)predictor remindersConfig:(id)config;
- (id)getSuggestionsWithPredictionContext:(id)context;
- (void)suggestionsForInteractionSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply;
- (void)updateWithCalendarConfig:(id)config;
- (void)updateWithRemindersConfig:(id)config;
@end

@implementation _PSSuggestionFromTextPredictorDelegateWrapper

- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithDelegateType:(int64_t)type textPredictor:(id)predictor startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery priorScoreThreshold:(float)threshold isEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category
{
  predictorCopy = predictor;
  v21.receiver = self;
  v21.super_class = _PSSuggestionFromTextPredictorDelegateWrapper;
  v18 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_delegateType = type;
    objc_storeStrong(&v18->_textPredictor, predictor);
    v19->_startSecondsFromQuery = query;
    v19->_endSecondsFromQuery = fromQuery;
    v19->_priorScoreThreshold = threshold;
    v19->_isEnabled = enabled;
    v19->_defaultConfidenceCategory = category;
  }

  return v19;
}

- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)predictor calendarConfig:(id)config
{
  configCopy = config;
  predictorCopy = predictor;
  [configCopy startSecondsFromQuery];
  v9 = v8;
  [configCopy endSecondsFromQuery];
  v11 = v10;
  [configCopy priorScoreThreshold];
  v13 = v12;
  isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  LODWORD(v16) = v13;
  v17 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)self initWithDelegateType:1 textPredictor:predictorCopy startSecondsFromQuery:isEnabled endSecondsFromQuery:defaultConfidenceCategory priorScoreThreshold:v9 isEnabled:v11 defaultConfidenceCategory:v16];

  return v17;
}

- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)predictor remindersConfig:(id)config
{
  configCopy = config;
  predictorCopy = predictor;
  [configCopy startSecondsFromQuery];
  v9 = v8;
  [configCopy endSecondsFromQuery];
  v11 = v10;
  [configCopy priorScoreThreshold];
  v13 = v12;
  isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  LODWORD(v16) = v13;
  v17 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)self initWithDelegateType:2 textPredictor:predictorCopy startSecondsFromQuery:isEnabled endSecondsFromQuery:defaultConfidenceCategory priorScoreThreshold:v9 isEnabled:v11 defaultConfidenceCategory:v16];

  return v17;
}

- (void)updateWithCalendarConfig:(id)config
{
  configCopy = config;
  [configCopy startSecondsFromQuery];
  self->_startSecondsFromQuery = v5;
  [configCopy endSecondsFromQuery];
  self->_endSecondsFromQuery = v6;
  [configCopy priorScoreThreshold];
  self->_priorScoreThreshold = v7;
  self->_isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  self->_defaultConfidenceCategory = defaultConfidenceCategory;
}

- (void)updateWithRemindersConfig:(id)config
{
  configCopy = config;
  [configCopy startSecondsFromQuery];
  self->_startSecondsFromQuery = v5;
  [configCopy endSecondsFromQuery];
  self->_endSecondsFromQuery = v6;
  [configCopy priorScoreThreshold];
  self->_priorScoreThreshold = v7;
  self->_isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  self->_defaultConfidenceCategory = defaultConfidenceCategory;
}

- (id)getSuggestionsWithPredictionContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!self->_isEnabled)
  {
    delegateType = self->_delegateType;
    v5 = +[_PSLogging generalChannel];
    v15 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (delegateType == 1)
    {
      if (v15)
      {
        LOWORD(v21) = 0;
        v16 = "ZKW unstructured calendar model disabled. Not generating suggestions.";
LABEL_15:
        _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, v16, &v21, 2u);
      }
    }

    else if (v15)
    {
      LOWORD(v21) = 0;
      v16 = "ZKW unstructured reminders model disabled. Not generating suggestions.";
      goto LABEL_15;
    }

    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-self->_startSecondsFromQuery];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_endSecondsFromQuery];
  v7 = self->_delegateType;
  if (v7 == 2)
  {
    v17 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v17))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredRemindersModelTotalTime", " enableTelemetry=YES ", &v21, 2u);
    }

    *&v18 = self->_priorScoreThreshold;
    v10 = [(_PSSuggestionFromTextPredictor *)self->_textPredictor suggestionsFromIncompleteRemindersWithContext:contextCopy startDate:v5 endDate:v6 priorScoreThreshold:v18];
    v19 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v19))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredRemindersModelTotalTime", &unk_1B5FD970D, &v21, 2u);
    }

    v12 = +[_PSLogging generalChannel];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v21 = 138412290;
    v22 = v10;
    v13 = "ZKW unstructured reminders suggestions: %@";
    goto LABEL_23;
  }

  if (v7 != 1)
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_PSSuggestionFromTextPredictorDelegateWrapper *)&self->_delegateType getSuggestionsWithPredictionContext:v12];
    }

    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_27;
  }

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredCalendarModelTotalTime", " enableTelemetry=YES ", &v21, 2u);
  }

  *&v9 = self->_priorScoreThreshold;
  v10 = [(_PSSuggestionFromTextPredictor *)self->_textPredictor suggestionsFromUnstructuredCalendarEventsWithContext:contextCopy startDate:v5 endDate:v6 priorScoreThreshold:v9];
  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredCalendarModelTotalTime", &unk_1B5FD970D, &v21, 2u);
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v10;
    v13 = "ZKW unstructured calendar suggestions: %@";
LABEL_23:
    _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, v13, &v21, 0xCu);
  }

LABEL_27:

LABEL_28:

  return v10;
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
    [_PSSuggestionFromTextPredictorDelegateWrapper suggestionsForInteractionSuggestionRequest:requestCopy clientModelId:self reply:v7];
  }

  if (!self->_delegateType)
  {
    psPredictionContext = [objc_alloc(getATXSuggestionRequestResponseClass_0()) initWithSuggestions:MEMORY[0x1E695E0F0] feedbackMetadata:0 originalRequest:requestCopy responseCode:2 error:0];
    replyCopy[2](replyCopy, psPredictionContext);
    goto LABEL_44;
  }

  psPredictionContext = [requestCopy psPredictionContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggestionFromTextPredictorDelegateWrapper suggestionsForInteractionSuggestionRequest:psPredictionContext clientModelId:v8 reply:?];
    }
  }

  delegateType = self->_delegateType;
  if (delegateType == 1)
  {
    v10 = 30;
    goto LABEL_13;
  }

  if (delegateType == 2)
  {
    v10 = 31;
LABEL_13:
    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v11 = getATXProactiveSuggestionClientModelClass_softClass_0;
    v75 = getATXProactiveSuggestionClientModelClass_softClass_0;
    if (!getATXProactiveSuggestionClientModelClass_softClass_0)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getATXProactiveSuggestionClientModelClass_block_invoke_0;
      v70 = &unk_1E7C23BF0;
      v71 = &v72;
      ProactiveSuggestionClientModelLibraryCore_0();
      v73[3] = objc_getClass("ATXProactiveSuggestionClientModel");
      getATXProactiveSuggestionClientModelClass_softClass_0 = *(v71[1] + 24);
      v11 = v73[3];
    }

    v12 = v11;
    _Block_object_dispose(&v72, 8);
    v49 = [v11 clientModelIdFromClientModelType:v10];
    v13 = [v49 isEqualToString:{idCopy, v49}];
    goto LABEL_17;
  }

  v13 = [0 isEqualToString:{idCopy, 0}];
LABEL_17:
  if (v13)
  {
    v14 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)self getSuggestionsWithPredictionContext:psPredictionContext];
    v56 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v14;
    v59 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v59)
    {
      v55 = *v64;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v64 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v63 + 1) + 8 * i);
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v17 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_0;
          v75 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionClientModelSpecificationClass_softClass_0)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke_0;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_0();
            Class = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
            *(v71[1] + 24) = Class;
            getATXProactiveSuggestionClientModelSpecificationClass_softClass_0 = *(v71[1] + 24);
            v17 = v73[3];
          }

          v19 = v17;
          _Block_object_dispose(&v72, 8);
          v20 = [[v17 alloc] initWithClientModelId:idCopy clientModelVersion:@"1.0" engagementResetPolicy:0];
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v21 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_0;
          v75 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionExecutableSpecificationClass_softClass_0)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke_0;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_0();
            v22 = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
            *(v71[1] + 24) = v22;
            getATXProactiveSuggestionExecutableSpecificationClass_softClass_0 = *(v71[1] + 24);
            v21 = v73[3];
          }

          v23 = v21;
          _Block_object_dispose(&v72, 8);
          v24 = [v21 alloc];
          v25 = [v16 description];
          v26 = objc_opt_new();
          uUIDString = [v26 UUIDString];
          v28 = [v24 initWithExecutableObject:v16 executableDescription:v25 executableIdentifier:uUIDString suggestionExecutableType:6];

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v29 = getATXProactiveSuggestionUISpecificationClass_softClass_0;
          v75 = getATXProactiveSuggestionUISpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionUISpecificationClass_softClass_0)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionUISpecificationClass_block_invoke_0;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_0();
            v30 = objc_getClass("ATXProactiveSuggestionUISpecification");
            *(v71[1] + 24) = v30;
            getATXProactiveSuggestionUISpecificationClass_softClass_0 = *(v71[1] + 24);
            v29 = v73[3];
          }

          v31 = v29;
          _Block_object_dispose(&v72, 8);
          v32 = [v29 alloc];
          groupName = [v16 groupName];
          v34 = groupName;
          if (!groupName)
          {
            recipients = [v16 recipients];
            firstObject = [recipients firstObject];
            handle = [firstObject handle];
            v34 = handle;
          }

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v35 = getATXProactiveSuggestionLayoutConfigClass_softClass_0;
          v75 = getATXProactiveSuggestionLayoutConfigClass_softClass_0;
          if (!getATXProactiveSuggestionLayoutConfigClass_softClass_0)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke_0;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_0();
            v36 = objc_getClass("ATXProactiveSuggestionLayoutConfig");
            *(v71[1] + 24) = v36;
            getATXProactiveSuggestionLayoutConfigClass_softClass_0 = *(v71[1] + 24);
            v35 = v73[3];
          }

          v37 = v35;
          _Block_object_dispose(&v72, 8);
          v38 = [v35 layoutConfigurationsForLayoutOptions:2];
          v39 = [v32 initWithTitle:v34 subtitle:0 preferredLayoutConfigs:v38 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

          if (!groupName)
          {
          }

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v40 = getATXProactiveSuggestionScoreSpecificationClass_softClass_0;
          v75 = getATXProactiveSuggestionScoreSpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionScoreSpecificationClass_softClass_0)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke_0;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_0();
            v41 = objc_getClass("ATXProactiveSuggestionScoreSpecification");
            *(v71[1] + 24) = v41;
            getATXProactiveSuggestionScoreSpecificationClass_softClass_0 = *(v71[1] + 24);
            v40 = v73[3];
          }

          v42 = v40;
          _Block_object_dispose(&v72, 8);
          v43 = [[v40 alloc] initWithRawScore:self->_defaultConfidenceCategory suggestedConfidenceCategory:90.0];
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v44 = getATXProactiveSuggestionClass_softClass_0;
          v75 = getATXProactiveSuggestionClass_softClass_0;
          if (!getATXProactiveSuggestionClass_softClass_0)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionClass_block_invoke_0;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore_0();
            v45 = objc_getClass("ATXProactiveSuggestion");
            *(v71[1] + 24) = v45;
            getATXProactiveSuggestionClass_softClass_0 = *(v71[1] + 24);
            v44 = v73[3];
          }

          v46 = v44;
          _Block_object_dispose(&v72, 8);
          v47 = [[v44 alloc] initWithClientModelSpecification:v20 executableSpecification:v28 uiSpecification:v39 scoreSpecification:v43];
          [v56 addObject:v47];
        }

        v59 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v59);
    }

    v48 = [objc_alloc(getATXSuggestionRequestResponseClass_0()) initWithSuggestions:v56 feedbackMetadata:0 originalRequest:requestCopy responseCode:2 error:0];
    replyCopy[2](replyCopy, v48);
  }

  else
  {
    obj = [_PSZkwUtils clientModelMismatchErrorResponseForRequest:requestCopy requestedClientModelId:idCopy actualClientModelId:v50];
    replyCopy[2](replyCopy, obj);
  }

LABEL_44:
}

- (void)getSuggestionsWithPredictionContext:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Unknown ZKW unstructured reminders delegate type: %ld", &v3, 0xCu);
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(uint64_t)a2 reply:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "Unstructured text model delegate call %@ for delegate type %ld", &v4, 0x16u);
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