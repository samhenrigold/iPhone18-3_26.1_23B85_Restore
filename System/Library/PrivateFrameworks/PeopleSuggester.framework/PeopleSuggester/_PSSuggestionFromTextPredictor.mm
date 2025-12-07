@interface _PSSuggestionFromTextPredictor
+ (BOOL)isEligibleUnstructuredEvent:(id)event;
- (_PSSuggestionFromTextPredictor)initWithEventStore:(id)store interactionStore:(id)interactionStore;
- (id)suggestionFromContactPriors:(id)priors priorScoreThreshold:(float)threshold bundleID:(id)d reason:(id)reason;
- (id)suggestionFromText:(id)text priorScoreThreshold:(float)threshold bundleID:(id)d reason:(id)reason;
- (id)suggestionsFromIncompleteRemindersWithContext:(id)context startDate:(id)date endDate:(id)endDate priorScoreThreshold:(float)threshold;
- (id)suggestionsFromPortraitExtractionsWithContext:(id)context startDate:(id)date endDate:(id)endDate priorScoreThreshold:(float)threshold reason:(id)reason;
- (id)suggestionsFromUnstructuredCalendarEventsWithContext:(id)context startDate:(id)date endDate:(id)endDate priorScoreThreshold:(float)threshold;
@end

@implementation _PSSuggestionFromTextPredictor

- (_PSSuggestionFromTextPredictor)initWithEventStore:(id)store interactionStore:(id)interactionStore
{
  storeCopy = store;
  interactionStoreCopy = interactionStore;
  v20.receiver = self;
  v20.super_class = _PSSuggestionFromTextPredictor;
  v9 = [(_PSSuggestionFromTextPredictor *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, store);
    objc_storeStrong(&v10->_interactionStore, interactionStore);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v11 = getCNContactFormatterClass_softClass_2;
    v29 = getCNContactFormatterClass_softClass_2;
    if (!getCNContactFormatterClass_softClass_2)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getCNContactFormatterClass_block_invoke_2;
      v24 = &unk_1E7C23BF0;
      v25 = &v26;
      __getCNContactFormatterClass_block_invoke_2(&v21);
      v11 = v27[3];
    }

    v12 = v11;
    _Block_object_dispose(&v26, 8);
    v13 = objc_opt_new();
    contactFormatter = v10->_contactFormatter;
    v10->_contactFormatter = v13;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v15 = getREMStoreClass_softClass;
    v29 = getREMStoreClass_softClass;
    if (!getREMStoreClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getREMStoreClass_block_invoke;
      v24 = &unk_1E7C23BF0;
      v25 = &v26;
      __getREMStoreClass_block_invoke(&v21);
      v15 = v27[3];
    }

    v16 = v15;
    _Block_object_dispose(&v26, 8);
    v17 = objc_opt_new();
    remStore = v10->_remStore;
    v10->_remStore = v17;
  }

  return v10;
}

- (id)suggestionFromContactPriors:(id)priors priorScoreThreshold:(float)threshold bundleID:(id)d reason:(id)reason
{
  v38[7] = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke;
  v36[3] = &__block_descriptor_36_e25_B16__0___PSContactPrior_8l;
  thresholdCopy = threshold;
  v12 = [priors _pas_filteredArrayWithTest:v36];
  v13 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_PSSuggestionFromTextPredictor suggestionFromContactPriors:priorScoreThreshold:bundleID:reason:];
  }

  if ([v12 count])
  {
    v30 = reasonCopy;
    v31 = dCopy;
    v14 = +[_PSConstants mobileFacetimeBundleId];
    v38[0] = v14;
    v15 = +[_PSConstants macFacetimeBundleId];
    v38[1] = v15;
    v16 = +[_PSConstants mobileMessagesBundleId];
    v38[2] = v16;
    v17 = +[_PSConstants macMessagesBundleId];
    v38[3] = v17;
    v18 = +[_PSConstants mobilePhoneBundleId];
    v38[4] = v18;
    v19 = +[_PSConstants mobileMailBundleId];
    v38[5] = v19;
    v20 = +[_PSConstants macMailBundleId];
    v38[6] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:7];

    v22 = [MEMORY[0x1E695DF00] now];
    v23 = [v22 dateByAddingTimeInterval:-1209600.0];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_83;
    v33[3] = &unk_1E7C25EA8;
    v33[4] = self;
    v24 = v21;
    v34 = v24;
    v25 = v23;
    v35 = v25;
    v26 = [v12 _pas_filteredArrayWithTest:v33];
    if ([v26 count])
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_85;
      v32[3] = &unk_1E7C25ED0;
      v32[4] = self;
      v27 = [v26 _pas_mappedArrayWithTransform:v32];
      reasonCopy = v30;
      dCopy = v31;
      if ([v27 count])
      {
        v28 = [[_PSSuggestion alloc] initWithBundleID:v31 conversationIdentifier:0 groupName:0 recipients:v27 reason:v30 reasonType:0];
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
      reasonCopy = v30;
      dCopy = v31;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)suggestionFromText:(id)text priorScoreThreshold:(float)threshold bundleID:(id)d reason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  textCopy = text;
  dCopy = d;
  reasonCopy = reason;
  if ([textCopy length])
  {
    v13 = [_PSContactSuggester contactPriorSuggestionsForText:textCopy];
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = textCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "For text %@ found contacts %@", &v18, 0x16u);
    }

    if ([v13 count])
    {
      *&v15 = threshold;
      v16 = [(_PSSuggestionFromTextPredictor *)self suggestionFromContactPriors:v13 priorScoreThreshold:dCopy bundleID:reasonCopy reason:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)isEligibleUnstructuredEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    if ([eventCopy isAllDay])
    {
      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:];
      }
    }

    else if ([v4 status] == 3)
    {
      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:];
      }
    }

    else
    {
      attendees = [v4 attendees];
      v7 = [attendees count];

      if (!v7)
      {
        v8 = 1;
        goto LABEL_13;
      }

      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:];
      }
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)suggestionsFromIncompleteRemindersWithContext:(id)context startDate:(id)date endDate:(id)endDate priorScoreThreshold:(float)threshold
{
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  remStore = self->_remStore;
  v28 = 0;
  v14 = [(REMStore *)remStore fetchListsForEventKitBridgingWithError:&v28];
  v15 = v28;
  if (v15 || ![v14 count])
  {
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_PSSuggestionFromTextPredictor suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:];
    }

    v17 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_25];
    v18 = self->_remStore;
    v27 = 0;
    v19 = [(REMStore *)v18 fetchIncompleteRemindersForEventKitBridgingWithDueDateFrom:dateCopy to:endDateCopy withListIDs:v16 error:&v27];
    v15 = v27;
    if (v15 || ![v19 count])
    {
      v20 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [_PSSuggestionFromTextPredictor suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:];
      }

      v17 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v21 = [v19 count];
      if (v21 >= 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v21;
      }

      v20 = [v19 subarrayWithRange:{0, v22}];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __118___PSSuggestionFromTextPredictor_suggestionsFromIncompleteRemindersWithContext_startDate_endDate_priorScoreThreshold___block_invoke_93;
      v24[3] = &unk_1E7C25F18;
      v24[4] = self;
      thresholdCopy = threshold;
      v25 = contextCopy;
      v17 = [v20 _pas_mappedArrayWithTransform:v24];
    }
  }

  return v17;
}

- (id)suggestionsFromPortraitExtractionsWithContext:(id)context startDate:(id)date endDate:(id)endDate priorScoreThreshold:(float)threshold reason:(id)reason
{
  v46[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  reasonCopy = reason;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v15 = getPPFuzzyContactQueryClass_softClass;
  v45 = getPPFuzzyContactQueryClass_softClass;
  if (!getPPFuzzyContactQueryClass_softClass)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getPPFuzzyContactQueryClass_block_invoke;
    v40 = &unk_1E7C23BF0;
    v41 = &v42;
    PersonalizationPortraitLibraryCore();
    v43[3] = objc_getClass("PPFuzzyContactQuery");
    getPPFuzzyContactQueryClass_softClass = *(v41[1] + 24);
    v15 = v43[3];
  }

  v16 = v15;
  _Block_object_dispose(&v42, 8);
  v17 = objc_opt_new();
  v18 = MEMORY[0x1E695DFD8];
  v19 = +[_PSConstants mobileCalendarBundleId];
  v46[0] = v19;
  v20 = +[_PSConstants macCalendarBundleId];
  v46[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v22 = [v18 setWithArray:v21];
  [v17 setSourceBundleIds:v22];

  [v17 setStartDate:dateCopy];
  [v17 setEndDate:endDateCopy];
  [v17 setOnlyAddressBook:1];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v23 = getPPContactStoreClass_softClass;
  v45 = getPPContactStoreClass_softClass;
  if (!getPPContactStoreClass_softClass)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getPPContactStoreClass_block_invoke;
    v40 = &unk_1E7C23BF0;
    v41 = &v42;
    PersonalizationPortraitLibraryCore();
    v43[3] = objc_getClass("PPContactStore");
    getPPContactStoreClass_softClass = *(v41[1] + 24);
    v23 = v43[3];
  }

  v24 = v23;
  _Block_object_dispose(&v42, 8);
  v25 = objc_opt_new();
  v36 = 0;
  v26 = [v25 upcomingRelevantContactsForQuery:v17 error:&v36];
  v27 = v36;
  if (v27 || ![v26 count])
  {
    v28 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [_PSSuggestionFromTextPredictor suggestionsFromPortraitExtractionsWithContext:startDate:endDate:priorScoreThreshold:reason:];
    }

    v29 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v28 = [v26 _pas_mappedArrayWithTransform:&__block_literal_global_101];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __125___PSSuggestionFromTextPredictor_suggestionsFromPortraitExtractionsWithContext_startDate_endDate_priorScoreThreshold_reason___block_invoke_2;
    v32[3] = &unk_1E7C25F60;
    v32[4] = self;
    thresholdCopy = threshold;
    v33 = contextCopy;
    v34 = reasonCopy;
    v29 = [v28 _pas_mappedArrayWithTransform:v32];
  }

  return v29;
}

- (id)suggestionsFromUnstructuredCalendarEventsWithContext:(id)context startDate:(id)date endDate:(id)endDate priorScoreThreshold:(float)threshold
{
  contextCopy = context;
  eventStore = self->_eventStore;
  endDateCopy = endDate;
  dateCopy = date;
  v14 = [(EKEventStore *)eventStore calendarsForEntityType:0];
  v15 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:v14];

  v16 = objc_opt_new();
  v17 = self->_eventStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __125___PSSuggestionFromTextPredictor_suggestionsFromUnstructuredCalendarEventsWithContext_startDate_endDate_priorScoreThreshold___block_invoke;
  v27[3] = &unk_1E7C25F88;
  v18 = v16;
  v28 = v18;
  [(EKEventStore *)v17 enumerateEventsMatchingPredicate:v15 usingBlock:v27];
  if ([v18 count])
  {
    v19 = [v18 count];
    if (v19 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 subarrayWithRange:{0, v20}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __125___PSSuggestionFromTextPredictor_suggestionsFromUnstructuredCalendarEventsWithContext_startDate_endDate_priorScoreThreshold___block_invoke_2;
    v24[3] = &unk_1E7C25FB0;
    v24[4] = self;
    thresholdCopy = threshold;
    v25 = contextCopy;
    v22 = [v21 _pas_mappedArrayWithTransform:v24];
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

- (void)suggestionFromContactPriors:priorScoreThreshold:bundleID:reason:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)suggestionsFromPortraitExtractionsWithContext:startDate:endDate:priorScoreThreshold:reason:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end