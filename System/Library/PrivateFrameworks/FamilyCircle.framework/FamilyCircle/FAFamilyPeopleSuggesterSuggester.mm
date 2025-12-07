@interface FAFamilyPeopleSuggesterSuggester
- (id)getFamilyRecommendationsWithContext:(id *)context error:(id *)error;
@end

@implementation FAFamilyPeopleSuggesterSuggester

- (id)getFamilyRecommendationsWithContext:(id *)context error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = _FASignpostLogSystem(self);
  v5 = _FASignpostCreate(v4);
  v38 = v6;

  v8 = _FASignpostLogSystem(v7);
  v9 = v8;
  v37 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PeopleSuggesterFetchRecommendation", "", buf, 2u);
  }

  v11 = _FASignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FAFamilyPeopleSuggesterSuggester getFamilyRecommendationsWithContext:v5 error:v11];
  }

  v13 = _FALogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to get Family suggestions from PeopleSuggester", buf, 2u);
  }

  v39 = v5;

  suggesterWithDaemon = [MEMORY[0x1E69BDBF0] suggesterWithDaemon];
  v15 = objc_alloc_init(MEMORY[0x1E69BDBE8]);
  v16 = +[FAPeopleDiscoveryService sharedInstance];
  getNearbyPeople = [v16 getNearbyPeople];
  allObjects = [getNearbyPeople allObjects];

  [v15 setSeedContactIdentifiers:allObjects];
  v19 = [suggesterWithDaemon familyRecommendationSuggestionsWithPredictionContext:v15];
  v20 = _FALogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v19;
    _os_log_impl(&dword_1B70B0000, v20, OS_LOG_TYPE_DEFAULT, "Loaded family PeopleSuggester suggestions. %@", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = v19;
  v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v22);
        }

        recipients = [*(*(&v42 + 1) + 8 * i) recipients];
        firstObject = [recipients firstObject];

        if (firstObject)
        {
          v29 = [[FARecommendedFamilyMember alloc] initWithPeopleSuggesterRecommendation:firstObject];
          [array addObject:v29];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v24);
  }

  Nanoseconds = _FASignpostGetNanoseconds(v39, v38);
  v31 = _FASignpostLogSystem(Nanoseconds);
  v32 = v31;
  if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v32, OS_SIGNPOST_INTERVAL_END, v39, "PeopleSuggesterFetchRecommendation", "", buf, 2u);
  }

  v34 = _FASignpostLogSystem(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [(FAFamilyPeopleSuggesterSuggester *)v39 getFamilyRecommendationsWithContext:v34 error:Nanoseconds / 1000000000.0];
  }

  if (context)
  {
    *context = [[FAFamilySuggesterFeedbackContext alloc] initWithPredictionContext:v15 suggestions:v22];
  }

  if (error)
  {
    *error = 0;
  }

  v35 = [array copy];

  return v35;
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: PeopleSuggesterFetchRecommendation ", &v2, 0xCu);
}

- (void)getFamilyRecommendationsWithContext:(double)a3 error:.cold.2(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:PeopleSuggesterFetchRecommendation ", &v3, 0x16u);
}

@end