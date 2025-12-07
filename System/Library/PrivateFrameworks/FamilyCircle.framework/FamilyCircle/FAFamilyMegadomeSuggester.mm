@interface FAFamilyMegadomeSuggester
- (FAFamilyMegadomeSuggester)init;
- (FAFamilyMegadomeSuggester)initWithRecommendationLoader:(id)loader;
- (id)getFamilyRecommendationsWithContext:(id *)context error:(id *)error;
- (id)peopleNotAlreadyInFamilyInPersonArray:(id)array;
- (id)recommendedFamilyMembersForMegadomeResults:(id)results;
@end

@implementation FAFamilyMegadomeSuggester

- (FAFamilyMegadomeSuggester)init
{
  v3 = objc_alloc_init(FAMegadomeRecommendationsLoader);
  v4 = [(FAFamilyMegadomeSuggester *)self initWithRecommendationLoader:v3];

  return v4;
}

- (FAFamilyMegadomeSuggester)initWithRecommendationLoader:(id)loader
{
  loaderCopy = loader;
  v9.receiver = self;
  v9.super_class = FAFamilyMegadomeSuggester;
  v6 = [(FAFamilyMegadomeSuggester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendationLoader, loader);
  }

  return v7;
}

- (id)getFamilyRecommendationsWithContext:(id *)context error:(id *)error
{
  v7 = _FASignpostLogSystem(self);
  v8 = _FASignpostCreate(v7);
  v10 = v9;

  v12 = _FASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MegadomeFetchRecommendation", "", buf, 2u);
  }

  v15 = _FASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FAFamilyMegadomeSuggester getFamilyRecommendationsWithContext:v8 error:v15];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_64_e54_v24__0__NSError_8__FAFamilySuggesterFeedbackContext_16l;
  aBlock[4] = v8;
  aBlock[5] = v10;
  aBlock[6] = context;
  aBlock[7] = error;
  v16 = _Block_copy(aBlock);
  v17 = _FALogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to get Family suggestions from Megadome", buf, 2u);
  }

  recommendationLoader = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
  v36 = 0;
  v19 = [recommendationLoader peopleViewWithError:&v36];
  v20 = v36;

  if (v19)
  {
    recommendationLoader2 = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
    v35 = 0;
    v23 = [recommendationLoader2 megadomeResultsForFamilyTagWithError:&v35];
    v24 = v35;

    if (v23)
    {
      recommendationLoader3 = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
      scoredEntities = [v23 scoredEntities];
      v28 = [recommendationLoader3 megadomePeopleFromScoredEntities:scoredEntities inVisualIdentifierView:v19];

      v29 = [(FAFamilyMegadomeSuggester *)self peopleNotAlreadyInFamilyInPersonArray:v28];
      v30 = [(FAFamilyMegadomeSuggester *)self recommendedFamilyMembersForMegadomeResults:v29];
      v31 = -[FAFamilySuggesterFeedbackContext initWithMegadomeFeedbackEventID:]([FAFamilySuggesterFeedbackContext alloc], "initWithMegadomeFeedbackEventID:", [v23 feedbackEventId]);
      v16[2](v16, 0, v31);
    }

    else
    {
      v33 = _FALogSystem(v25);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [FAFamilyMegadomeSuggester getFamilyRecommendationsWithContext:v24 error:v33];
      }

      (v16)[2](v16, v24, 0);
      v30 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v32 = _FALogSystem(v21);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [FAFamilyMegadomeSuggester getFamilyRecommendationsWithContext:v20 error:v32];
    }

    (v16)[2](v16, v20, 0);
    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

void __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _FASignpostGetNanoseconds(*(a1 + 32), *(a1 + 40));
  v8 = _FASignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v9, OS_SIGNPOST_INTERVAL_END, v10, "MegadomeFetchRecommendation", "", v15, 2u);
  }

  v12 = _FASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke_cold_1((a1 + 32), v12, Nanoseconds / 1000000000.0);
  }

  if (*(a1 + 48))
  {
    v13 = v6;
    **(a1 + 48) = v6;
  }

  if (*(a1 + 56))
  {
    v14 = v5;
    **(a1 + 56) = v5;
  }
}

- (id)peopleNotAlreadyInFamilyInPersonArray:(id)array
{
  v45 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  recommendationLoader = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
  familyHandles = [recommendationLoader familyHandles];

  if ([familyHandles count])
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = arrayCopy;
    obj = arrayCopy;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = MEMORY[0x1E695DF70];
          emails = [v10 emails];
          v13 = [v11 arrayWithArray:emails];

          phoneNumbers = [v10 phoneNumbers];
          v15 = [FAMegadomeRecommendationsLoader normalizedPhoneNumbersForPhoneNumbers:phoneNumbers];

          [v13 addObjectsFromArray:v15];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v16 = v13;
          v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v31 + 1) + 8 * j);
                v22 = [familyHandles containsObject:v21];
                if (v22)
                {
                  v23 = _FALogSystem(v22);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v40 = v21;
                    v41 = 2112;
                    v42 = v10;
                    _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Handle %@ already in Family. Removing recommendation from array: %@", buf, 0x16u);
                  }

                  goto LABEL_19;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          [v28 addObject:v10];
LABEL_19:
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v8);
    }

    v24 = [v28 copy];
    arrayCopy = v27;
  }

  else
  {
    v25 = _FALogSystem(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[FAFamilyMegadomeSuggester peopleNotAlreadyInFamilyInPersonArray:]";
      _os_log_impl(&dword_1B70B0000, v25, OS_LOG_TYPE_DEFAULT, "No Family handles. Returning early from %s.", buf, 0xCu);
    }

    v24 = arrayCopy;
  }

  return v24;
}

- (id)recommendedFamilyMembersForMegadomeResults:(id)results
{
  v20 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [FARecommendedFamilyMember alloc];
        v12 = [(FARecommendedFamilyMember *)v11 initWithMegadomeRecommendation:v10, v15];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [array copy];

  return v13;
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: MegadomeFetchRecommendation ", &v2, 0xCu);
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error initializing megadome entities for Family tag: %@", &v2, 0xCu);
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error initializing megadome visual identifier view: %@", &v2, 0xCu);
}

void __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke_cold_1(uint64_t *a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:MegadomeFetchRecommendation ", &v4, 0x16u);
}

@end