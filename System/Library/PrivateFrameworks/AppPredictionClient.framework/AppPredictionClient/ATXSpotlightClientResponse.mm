@interface ATXSpotlightClientResponse
+ (id)_createEmptyResultsWithCount:(unint64_t)count;
+ (id)_limitingResults:(id)results scores:(id)scores spotlightRecentIndex:(unint64_t)index limit:(unint64_t)limit;
+ (id)_removeDuplicates:(id)duplicates;
+ (id)_resultForError:(id)error subtitles:(id)subtitles searchString:(id)string;
+ (id)createSectionWithTitle:(id)title sectionBundleIdentifier:(id)identifier resultCount:(unint64_t)count;
+ (unint64_t)_indexOfFirstSpotlightRecentInServerResults:(id)results withSections:(id)sections;
+ (unint64_t)_trialSuggestionsMaxCountWithDefault:(unint64_t)default;
+ (void)_logWeatherResponsesWithTopics:(id)topics serverResults:(id)results;
- (ATXSpotlightClientResponse)initWithTopics:(id)topics scores:(id)scores sections:(id)sections;
- (NSArray)codePathIdTriggers;
- (id)_addIdentifiersFromTopics:(id)topics serverTopics:(id)serverTopics;
- (id)_createSectionsFromServerResults:(id)results;
- (id)_createSectionsFromServerResults:(id)results limit:(unint64_t)limit;
- (id)_removeDuplicateTopics:(id)topics;
- (id)_removeHidden:(id)hidden;
- (id)_replaceMissingWithError:(id)error;
- (void)_updateSectionBundleIdentifiersWithServerResults:(id)results;
- (void)dealloc;
@end

@implementation ATXSpotlightClientResponse

- (void)dealloc
{
  v3 = __atxlog_handle_metrics(self);
  v4 = v3;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v4, OS_SIGNPOST_INTERVAL_END, signpostId, "ATXSpotlightClientResponse", " enableTelemetry=YES ", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = ATXSpotlightClientResponse;
  [(ATXSpotlightClientResponse *)&v6 dealloc];
}

- (id)_createSectionsFromServerResults:(id)results limit:(unint64_t)limit
{
  v47 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v7 = __atxlog_handle_metrics(resultsCopy);
  v8 = v7;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v41) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v8, OS_SIGNPOST_INTERVAL_END, signpostId, "ATXSpotlightClientResponse", " enableTelemetry=YES ", &v41, 2u);
  }

  self->_signpostId = 0;
  v11 = __atxlog_handle_ui(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSArray *)self->_topics count];
    v13 = [(NSArray *)self->_scores count];
    v14 = [resultsCopy count];
    v41 = 134218496;
    v42 = v12;
    v43 = 2048;
    v44 = v13;
    v45 = 2048;
    v46 = v14;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Create sections from server response - topics: %lu, scores: %lu, received: %lu", &v41, 0x20u);
  }

  v15 = [(NSArray *)self->_topics count];
  v16 = [(NSArray *)self->_scores count];
  if (v15 != v16 || (v17 = -[NSArray count](self->_topics, "count"), v16 = [resultsCopy count], v17 != v16))
  {
    v33 = __atxlog_handle_ui(v16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v38 = [(NSArray *)self->_topics count];
      v39 = [(NSArray *)self->_scores count];
      v40 = [resultsCopy count];
      v41 = 134218496;
      v42 = v38;
      v43 = 2048;
      v44 = v39;
      v45 = 2048;
      v46 = v40;
      _os_log_fault_impl(&dword_1BF549000, v33, OS_LOG_TYPE_FAULT, "ZKW Server Result: Server did not send back same count. Sent topics: %lu, scores: %lu Received: %lu", &v41, 0x20u);
    }

    goto LABEL_20;
  }

  if (![(NSArray *)self->_topics count])
  {
    v33 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(NSArray *)self->_topics count];
      v36 = [(NSArray *)self->_scores count];
      v37 = [resultsCopy count];
      v41 = 134218496;
      v42 = v35;
      v43 = 2048;
      v44 = v36;
      v45 = 2048;
      v46 = v37;
      _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Requested no topics, returning. Sent topics: %lu, scores: %lu Received: %lu", &v41, 0x20u);
    }

LABEL_20:

    v32 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  [objc_opt_class() _logWeatherResponsesWithTopics:self->_topics serverResults:resultsCopy];
  v18 = [(ATXSpotlightClientResponse *)self _replaceMissingWithError:resultsCopy];

  v19 = [objc_opt_class() _removeDuplicates:v18];

  [(ATXSpotlightClientResponse *)self _updateSectionBundleIdentifiersWithServerResults:v19];
  v20 = [(ATXSpotlightClientResponse *)self _addIdentifiersFromTopics:self->_topics serverTopics:v19];

  isZKWHideContextsEnabled = [MEMORY[0x1E698AFE8] isZKWHideContextsEnabled];
  self->_isZKWHideContextsEnabled = isZKWHideContextsEnabled;
  if (isZKWHideContextsEnabled)
  {
    v22 = objc_opt_new();
    controller = self->_controller;
    self->_controller = v22;

    v24 = [(ATXSpotlightClientResponse *)self _removeHidden:v20];

    v20 = v24;
  }

  v25 = [(ATXSpotlightClientResponse *)self _removeDuplicateTopics:v20];

  v26 = [objc_opt_class() _indexOfFirstSpotlightRecentInServerResults:v25 withSections:self->_sections];
  v27 = __atxlog_handle_ui(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 134217984;
    v42 = v26;
    _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Index of first spotlight recent: %lu", &v41, 0xCu);
  }

  v28 = [v25 indexesOfObjectsPassingTest:&__block_literal_global_78];
  v29 = [v28 count];

  if (v29 >= 5)
  {
    v30 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
    if ([v30 matchesSuggestionsMaxCount])
    {
      codePathIdForSuggestionsMaxCount = [v30 codePathIdForSuggestionsMaxCount];
      [(ATXSpotlightClientResponse *)self addCodePathId:codePathIdForSuggestionsMaxCount];
    }
  }

  resultsCopy = [objc_opt_class() _limitingResults:v25 scores:self->_scores spotlightRecentIndex:v26 limit:limit];

  v32 = [(ATXSpotlightClientResponse *)self _createSectionsFromServerResults:resultsCopy];
LABEL_21:

  return v32;
}

BOOL __69__ATXSpotlightClientResponse__createSectionsFromServerResults_limit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 results];
  v3 = [v2 firstObject];

  return v3 != 0;
}

- (ATXSpotlightClientResponse)initWithTopics:(id)topics scores:(id)scores sections:(id)sections
{
  topicsCopy = topics;
  scoresCopy = scores;
  sectionsCopy = sections;
  v24.receiver = self;
  v24.super_class = ATXSpotlightClientResponse;
  v12 = [(ATXSpotlightClientResponse *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topics, topics);
    objc_storeStrong(&v13->_scores, scores);
    objc_storeStrong(&v13->_sections, sections);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    codePathIdTriggers = v13->_codePathIdTriggers;
    v13->_codePathIdTriggers = v14;

    v17 = __atxlog_handle_metrics(v16);
    v13->_signpostId = os_signpost_id_generate(v17);

    v18 = [(NSArray *)v13->_topics count];
    if (!v18)
    {
      v13->_signpostId = 0;
    }

    v19 = __atxlog_handle_metrics(v18);
    v20 = v19;
    signpostId = v13->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v20, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "ATXSpotlightClientResponse", " enableTelemetry=YES ", v23, 2u);
    }
  }

  return v13;
}

- (NSArray)codePathIdTriggers
{
  v2 = [(NSMutableArray *)self->_codePathIdTriggers copy];

  return v2;
}

+ (id)createSectionWithTitle:(id)title sectionBundleIdentifier:(id)identifier resultCount:(unint64_t)count
{
  v8 = MEMORY[0x1E69CA390];
  identifierCopy = identifier;
  titleCopy = title;
  v11 = objc_alloc_init(v8);
  [v11 setSubtitle:titleCopy];

  [v11 setBundleIdentifier:identifierCopy];
  v12 = [self _createEmptyResultsWithCount:count];
  [v11 setResults:v12];

  return v11;
}

+ (id)_createEmptyResultsWithCount:(unint64_t)count
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); count; --count)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CA3E8]);
    [i addObject:v5];
  }

  v6 = [i copy];

  return v6;
}

- (void)_updateSectionBundleIdentifiersWithServerResults:(id)results
{
  v34 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_sections;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v5 = 0;
    v20 = *v29;
    v23 = resultsCopy;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        results = [v7 results];
        if ([results count])
        {
          v9 = 0;
          while (1)
          {
            v10 = [resultsCopy count];

            if (v5 >= v10)
            {
              break;
            }

            v11 = [resultsCopy objectAtIndexedSubscript:v5];
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            results2 = [v11 results];
            v13 = [results2 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(results2);
                  }

                  v17 = *(*(&v24 + 1) + 8 * i);
                  bundleIdentifier = [v7 bundleIdentifier];
                  [v17 setSectionBundleIdentifier:bundleIdentifier];
                }

                v14 = [results2 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v14);
            }

            ++v5;

            ++v9;
            results = [v7 results];
            resultsCopy = v23;
            if (v9 >= [results count])
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }
}

- (id)_addIdentifiersFromTopics:(id)topics serverTopics:(id)serverTopics
{
  topicsCopy = topics;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke;
  v9[3] = &unk_1E80C4A48;
  v10 = topicsCopy;
  v6 = topicsCopy;
  v7 = [serverTopics _pas_mappedArrayWithIndexedTransform:v9];

  return v7;
}

id __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [v5 results];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2;
  v11[3] = &unk_1E80C4A20;
  v12 = v6;
  v8 = v6;
  v9 = [v7 _pas_mappedArrayWithTransform:v11];

  [v5 setResults:v9];

  return v5;
}

ATXSuggestionSearchResult *__69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  v4 = [v3 sectionBundleIdentifier];
  v5 = [ATXSpotlightContextAdapter isSpotlightRecentSectionIdentifier:v4];

  if (v5)
  {
    v7 = __atxlog_handle_ui(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v8 = "ZKW Server Id: Skip recents";
LABEL_8:
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, v8, &v19, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = __atxlog_handle_ui(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v8 = "ZKW Server Id: Skip contacts";
      goto LABEL_8;
    }

LABEL_9:

LABEL_10:
    v10 = v3;
    goto LABEL_11;
  }

  if (!*(a1 + 32))
  {
    v7 = __atxlog_handle_ui(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2_cold_2(v7);
    }

    goto LABEL_9;
  }

  v12 = objc_alloc(MEMORY[0x1E69C5B70]);
  v13 = *(a1 + 32);
  v14 = [v3 sectionBundleIdentifier];
  v15 = [v12 initWithTopic:v13 sectionBundleIdentifier:v14];

  if (!v15)
  {
    v17 = __atxlog_handle_ui(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __69__ATXSpotlightClientResponse__addIdentifiersFromTopics_serverTopics___block_invoke_2_cold_1(v17);
    }
  }

  v10 = [[ATXSuggestionSearchResult alloc] initWithSearchResult:v3];
  v18 = __atxlog_handle_ui([(ATXSuggestionSearchResult *)v10 setContextActionIdentifier:v15]);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v15;
    _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ZKW Server Id: Converting %@", &v19, 0xCu);
  }

LABEL_11:

  return v10;
}

+ (id)_removeDuplicates:(id)duplicates
{
  v13 = *MEMORY[0x1E69E9840];
  duplicatesCopy = duplicates;
  v4 = __atxlog_handle_ui(duplicatesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [duplicatesCopy count];
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Removing duplicates in %lu serverResults", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke;
  v7[3] = &unk_1E80C4A98;
  v7[4] = &buf;
  v5 = [duplicatesCopy _pas_mappedArrayWithTransform:v7];
  _Block_object_dispose(&buf, 8);

  return v5;
}

id __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke_2;
  v7[3] = &unk_1E80C4A70;
  v7[4] = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];

  [v3 setResults:v5];

  return v3;
}

uint64_t __48__ATXSpotlightClientResponse__removeDuplicates___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_msgSend_containsObject_(*(*(*(a1 + 32) + 8) + 40));
  v5 = v4;
  v6 = __atxlog_handle_ui(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: - Removing duplicate", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: - Keeping", v9, 2u);
    }

    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return v5 ^ 1u;
}

- (id)_removeHidden:(id)hidden
{
  v11 = *MEMORY[0x1E69E9840];
  hiddenCopy = hidden;
  v5 = __atxlog_handle_ui(hiddenCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [hiddenCopy count];
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Removing hidden in %lu results", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__ATXSpotlightClientResponse__removeHidden___block_invoke;
  v8[3] = &unk_1E80C4AE8;
  v8[4] = self;
  v6 = [hiddenCopy _pas_mappedArrayWithTransform:v8];

  return v6;
}

id __44__ATXSpotlightClientResponse__removeHidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ATXSpotlightClientResponse__removeHidden___block_invoke_2;
  v7[3] = &unk_1E80C4AC0;
  v7[4] = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];

  [v3 setResults:v5];

  return v3;
}

- (id)_removeDuplicateTopics:(id)topics
{
  v49 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  v4 = __atxlog_handle_ui(topicsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v48 = [topicsCopy count];
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: _removeDuplicateTopics in %lu results", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_sections;
  v27 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v27)
  {
    v7 = 0;
    v26 = *v42;
    v29 = topicsCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v8;
        v31 = *(*(&v41 + 1) + 8 * v8);
        results = [v31 results];
        if ([results count])
        {
          v10 = 0;
          while (1)
          {
            v11 = [topicsCopy count];

            if (v7 >= v11)
            {
              break;
            }

            v34 = v10;
            v12 = [(NSArray *)self->_topics objectAtIndexedSubscript:v7];
            v13 = [topicsCopy objectAtIndexedSubscript:v7];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v33 = v13;
            results2 = [v13 results];
            v15 = [results2 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v15)
            {
              v16 = v15;
              v32 = v7;
              v17 = 0;
              v18 = *v38;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(results2);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  if ([ATXSpotlightClient topic:v12 isDuplicateComparingTopics:v5])
                  {
                    [v6 addObject:v20];
                  }

                  else
                  {
                    v17 = 1;
                  }
                }

                v16 = [results2 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v16);

              topicsCopy = v29;
              v7 = v32;
              v21 = v34;
              if (v17)
              {
                [v5 addObject:v12];
              }
            }

            else
            {

              v21 = v10;
            }

            ++v7;

            results = [v31 results];
            v10 = v21 + 1;
            if (v21 + 1 >= [results count])
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
        }

        v8 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v27);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__ATXSpotlightClientResponse__removeDuplicateTopics___block_invoke;
  v35[3] = &unk_1E80C4AE8;
  v36 = v6;
  v22 = v6;
  v23 = [topicsCopy _pas_mappedArrayWithTransform:v35];

  return v23;
}

id __53__ATXSpotlightClientResponse__removeDuplicateTopics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ATXSpotlightClientResponse__removeDuplicateTopics___block_invoke_2;
  v7[3] = &unk_1E80C4AC0;
  v8 = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];

  [v3 setResults:v5];

  return v3;
}

+ (unint64_t)_indexOfFirstSpotlightRecentInServerResults:(id)results withSections:(id)sections
{
  v32 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  sectionsCopy = sections;
  v7 = [sectionsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    v26 = *v28;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(sectionsCopy);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        bundleIdentifier = [v12 bundleIdentifier];
        v14 = [bundleIdentifier isEqual:@"com.apple.spotlight.dec.zkw.recents"];

        results = [v12 results];
        v16 = [results count];
        if (v14)
        {
          if (v16)
          {
            v17 = sectionsCopy;
            v18 = 0;
            while (1)
            {
              v19 = [resultsCopy count];

              if (v9 + v18 >= v19)
              {
                v9 += v18;
                sectionsCopy = v17;
                v10 = v26;
                goto LABEL_15;
              }

              v20 = [resultsCopy objectAtIndexedSubscript:v9 + v18];
              results2 = [v20 results];
              firstObject = [results2 firstObject];

              if (firstObject)
              {
                break;
              }

              ++v18;
              results = [v12 results];
              if (v18 >= [results count])
              {
                v9 += v18;
                sectionsCopy = v17;
                v10 = v26;
                goto LABEL_14;
              }
            }

            v24 = v9 + v18;
            sectionsCopy = v17;
            goto LABEL_22;
          }
        }

        else
        {
          v9 += v16;
        }

LABEL_14:

LABEL_15:
        ++v11;
      }

      while (v11 != v8);
      v23 = [sectionsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
      v8 = v23;
      v24 = 0x7FFFFFFFFFFFFFFFLL;
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_22:

  return v24;
}

+ (id)_limitingResults:(id)results scores:(id)scores spotlightRecentIndex:(unint64_t)index limit:(unint64_t)limit
{
  v51[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  scoresCopy = scores;
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"zkwShowAllContexts", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v13 = __atxlog_handle_ui(AppBooleanValue);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 0;
    }

    v14 = resultsCopy;
  }

  else
  {
    v15 = [self _trialSuggestionsMaxCountWithDefault:limit];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke;
    v41[3] = &unk_1E80C4B10;
    v16 = resultsCopy;
    v42 = v16;
    v30 = [scoresCopy _pas_mappedArrayWithIndexedTransform:v41];
    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0];
    v51[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v19 = [v30 sortedArrayUsingDescriptors:v18];

    v20 = [v19 count];
    if (v15 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v15;
    }

    v22 = v21 - (index != 0x7FFFFFFFFFFFFFFFLL);
    v23 = MEMORY[0x1E695DFD8];
    v24 = [v19 subarrayWithRange:{0, v22}];
    v25 = [v23 setWithArray:v24];

    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = index != 0x7FFFFFFFFFFFFFFFLL;
    v27 = __atxlog_handle_ui(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 134218754;
      v44 = v22;
      v45 = 2112;
      v46 = scoresCopy;
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = v25;
      _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "ZKW Server Limit: Fill slots %lu, scores: %@, omit empty: %@, allowed: %@", keyExistsAndHasValidFormat, 0x2Au);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke_54;
    v31[3] = &unk_1E80C4B38;
    v32 = scoresCopy;
    v34 = v40;
    v36 = v15;
    indexCopy = index;
    v35 = v38;
    v28 = v25;
    v33 = v28;
    v14 = [v16 _pas_mappedArrayWithIndexedTransform:v31];

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(v40, 8);
  }

  return v14;
}

id __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [v6 results];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = &unk_1F3E601B0;
  }

  return v9;
}

id __81__ATXSpotlightClientResponse__limitingResults_scores_spotlightRecentIndex_limit___block_invoke_54(uint64_t a1, void *a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = __atxlog_handle_ui(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218242;
    v25 = a3;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ZKW Server Limit: Consider result %lu with score: %@", &v24, 0x16u);
  }

  v8 = [v5 results];
  v9 = [v8 firstObject];

  if (!v9)
  {
    v14 = __atxlog_handle_ui([v5 setResults:MEMORY[0x1E695E0F0]]);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v24 = 134217984;
    v25 = a3;
    v15 = "ZKW Server Limit: Remove %lu, result is nil";
    goto LABEL_13;
  }

  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    v14 = __atxlog_handle_ui([v5 setResults:MEMORY[0x1E695E0F0]]);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v18 = *(a1 + 64);
    v24 = 134218240;
    v25 = a3;
    v26 = 2048;
    v27 = v18;
    v15 = "ZKW Server Limit: Remove %lu. Already included limit of %lu";
    goto LABEL_24;
  }

  if (*(a1 + 72) > a3)
  {
    v11 = objc_msgSend_containsObject_(*(a1 + 40));
    if ((v11 & 1) == 0)
    {
      v14 = __atxlog_handle_ui([v5 setResults:MEMORY[0x1E695E0F0]]);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v21 = *(a1 + 40);
      v24 = 134218498;
      v25 = a3;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v21;
      v15 = "ZKW Server Limit: Remove %lu, score %@ isn't high enough, %@";
      v16 = v14;
      v17 = 32;
      goto LABEL_25;
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 24) + 1;
    if (v13 == *(a1 + 64) && *(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v14 = __atxlog_handle_ui([v5 setResults:MEMORY[0x1E695E0F0]]);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v24 = 134217984;
      v25 = a3;
      v15 = "ZKW Server Limit: Remove %lu. One slot left and need to add Spotlight Recent";
LABEL_13:
      v16 = v14;
      v17 = 12;
LABEL_25:
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, v15, &v24, v17);
      goto LABEL_26;
    }

    *(v12 + 24) = v13;
    v14 = __atxlog_handle_ui(v11);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v19 = __atxlog_handle_ui(v10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134217984;
    v25 = a3;
    _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ZKW Server Limit: Found Spotlight Recent %lu", &v24, 0xCu);
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  ++*(*(*(a1 + 48) + 8) + 24);
  v14 = __atxlog_handle_ui(v20);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
LABEL_23:
    v22 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 134218240;
    v25 = a3;
    v26 = 2048;
    v27 = v22;
    v15 = "ZKW Server Limit: Added %lu. Count is now %lu";
LABEL_24:
    v16 = v14;
    v17 = 22;
    goto LABEL_25;
  }

LABEL_26:

  return v5;
}

- (id)_createSectionsFromServerResults:(id)results
{
  v70 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = self->_sections;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  v46 = v5;
  if (v5)
  {
    v7 = 0;
    v45 = *v59;
    *&v6 = 134217984;
    v42 = v6;
    selfCopy = self;
    v49 = resultsCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v8;
        v9 = *(*(&v58 + 1) + 8 * v8);
        v10 = __atxlog_handle_ui(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          subtitle = [v9 subtitle];
          v12 = [subtitle hash];
          *buf = v42;
          v63 = v12;
          _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Section considered with title.hash %lu", buf, 0xCu);
        }

        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        results = [v9 results];
        if ([results count])
        {
          v15 = 0;
          v50 = v9;
          while (1)
          {
            v16 = [resultsCopy count];

            if (v7 >= v16)
            {
              break;
            }

            v52 = v15;
            v17 = [(NSArray *)self->_topics objectAtIndexedSubscript:v7];
            v18 = [resultsCopy objectAtIndexedSubscript:v7];
            v53 = v7 + 1;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v51 = v18;
            results2 = [v18 results];
            v20 = [results2 countByEnumeratingWithState:&v54 objects:v68 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v55;
              do
              {
                v23 = 0;
                do
                {
                  if (*v55 != v22)
                  {
                    objc_enumerationMutation(results2);
                  }

                  v24 = *(*(&v54 + 1) + 8 * v23);
                  v25 = __atxlog_handle_ui(v20);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = objc_opt_class();
                    v27 = NSStringFromClass(v26);
                    [v17 identifier];
                    v29 = v28 = v13;
                    *buf = 134218499;
                    v63 = v53;
                    v64 = 2112;
                    v65 = v27;
                    v66 = 2117;
                    v67 = v29;
                    _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Result %lu added: %@ %{sensitive}@", buf, 0x20u);

                    v13 = v28;
                  }

                  v20 = [v13 addObject:v24];
                  ++v23;
                }

                while (v21 != v23);
                v20 = [results2 countByEnumeratingWithState:&v54 objects:v68 count:16];
                v21 = v20;
              }

              while (v20);
            }

            results3 = [v51 results];
            firstObject = [results3 firstObject];

            v7 = v53;
            v9 = v50;
            if (!firstObject)
            {
              v33 = __atxlog_handle_ui(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = objc_opt_class();
                v35 = NSStringFromClass(v34);
                identifier = [v17 identifier];
                *buf = 134218499;
                v63 = v53;
                v64 = 2112;
                v65 = v35;
                v66 = 2117;
                v67 = identifier;
                _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Result %lu empty: %@ %{sensitive}@", buf, 0x20u);
              }
            }

            v15 = v52 + 1;
            results = [v50 results];
            self = selfCopy;
            resultsCopy = v49;
            if (v52 + 1 >= [results count])
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
        }

        if ([v13 count])
        {
          v37 = [v9 copy];
          v38 = [v13 copy];
          [v37 setResults:v38];

          [v44 addObject:v37];
        }

        else
        {
          v37 = __atxlog_handle_ui(0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BF549000, v37, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Section not added", buf, 2u);
          }
        }

        v8 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      v46 = v5;
    }

    while (v5);
  }

  if (self->_isZKWHideContextsEnabled)
  {
    [(ATXSpotlightHidingUIController *)self->_controller addHidingPreviewButtonItemsToServerResultSections:v44];
  }

  else
  {
    v40 = __atxlog_handle_ui(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }
  }

  return v44;
}

+ (void)_logWeatherResponsesWithTopics:(id)topics serverResults:(id)results
{
  resultsCopy = results;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke;
  v7[3] = &unk_1E80C4B60;
  v8 = resultsCopy;
  v6 = resultsCopy;
  [topics enumerateObjectsUsingBlock:v7];
}

void __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v8 = [v7 results];
    v9 = [v8 firstObject];

    if (!v9)
    {
      v45 = __atxlog_handle_ui(v10);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v93) = 0;
        _os_log_impl(&dword_1BF549000, v45, OS_LOG_TYPE_DEFAULT, "ZKW Weather: Weather response empty", &v93, 2u);
      }

      v11 = __atxlog_handle_metrics(v46);
      v47 = __atxlog_handle_metrics(v11);
      v48 = os_signpost_id_generate(v47);

      if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        v93 = 134349056;
        v94 = 1;
        _os_signpost_emit_with_name_impl(&dword_1BF549000, v11, OS_SIGNPOST_EVENT, v48, "ATXSpotlightWeatherResponse", "result=%{public, signpost.telemetry:number1}lu enableTelemetry=YES ", &v93, 0xCu);
      }

      goto LABEL_43;
    }

    v11 = [v9 normalizedTopic];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v49 = __atxlog_handle_ui(isKindOfClass);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke_cold_1(v11, v49);
      }

      v19 = __atxlog_handle_metrics(v50);
      v51 = __atxlog_handle_metrics(v19);
      v52 = os_signpost_id_generate(v51);

      if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        v93 = 134349056;
        v94 = 2;
        _os_signpost_emit_with_name_impl(&dword_1BF549000, v19, OS_SIGNPOST_EVENT, v52, "ATXSpotlightWeatherResponse", "result=%{public, signpost.telemetry:number1}lu enableTelemetry=YES ", &v93, 0xCu);
      }

      goto LABEL_42;
    }

    v13 = objc_alloc(MEMORY[0x1E6985C40]);
    v14 = [v6 location];
    [v14 lat];
    v16 = v15;
    v17 = [v6 location];
    [v17 lng];
    v19 = [v13 initWithLatitude:v16 longitude:v18];

    v20 = v11;
    v21 = objc_alloc(MEMORY[0x1E6985C40]);
    v22 = [v20 location];
    [v22 lat];
    v24 = v23;
    v25 = [v20 location];
    [v25 lng];
    v27 = [v21 initWithLatitude:v24 longitude:v26];

    v28 = [v27 distanceFromLocation:v19];
    v30 = v29;
    if (v29 >= 1000.0)
    {
      if (v29 >= 8000.0)
      {
        v65 = __atxlog_handle_ui(v28);
        v66 = os_log_type_enabled(v65, OS_LOG_TYPE_FAULT);
        if (v30 >= 24000.0)
        {
          if (v66)
          {
            v84 = [v6 query];
            v85 = [v20 query];
            [v19 coordinate];
            v87 = v86;
            [v19 coordinate];
            v89 = v88;
            [v27 coordinate];
            v91 = v90;
            [v27 coordinate];
            v93 = 134219523;
            *&v94 = v30 / 1000.0;
            v95 = 2112;
            v96 = v84;
            v97 = 2112;
            v98 = v85;
            v99 = 2049;
            v100 = v87;
            v101 = 2049;
            v102 = v89;
            v103 = 2049;
            v104 = v91;
            v105 = 2049;
            v106 = v92;
            _os_log_fault_impl(&dword_1BF549000, v65, OS_LOG_TYPE_FAULT, "ZKW Weather: Weather response fail.far: %.2f km (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v93, 0x48u);
          }

          v42 = __atxlog_handle_metrics(v69);
          v70 = __atxlog_handle_metrics(v42);
          v44 = os_signpost_id_generate(v70);

          if (v44 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
          {
            goto LABEL_38;
          }

          v93 = 134349056;
          v94 = 6;
        }

        else
        {
          if (v66)
          {
            v75 = [v6 query];
            v76 = [v20 query];
            [v19 coordinate];
            v78 = v77;
            [v19 coordinate];
            v80 = v79;
            [v27 coordinate];
            v82 = v81;
            [v27 coordinate];
            v93 = 134219523;
            *&v94 = v30 / 1000.0;
            v95 = 2112;
            v96 = v75;
            v97 = 2112;
            v98 = v76;
            v99 = 2049;
            v100 = v78;
            v101 = 2049;
            v102 = v80;
            v103 = 2049;
            v104 = v82;
            v105 = 2049;
            v106 = v83;
            _os_log_fault_impl(&dword_1BF549000, v65, OS_LOG_TYPE_FAULT, "ZKW Weather: Weather response fail.near: %.2f km (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v93, 0x48u);
          }

          v42 = __atxlog_handle_metrics(v67);
          v68 = __atxlog_handle_metrics(v42);
          v44 = os_signpost_id_generate(v68);

          if (v44 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
          {
            goto LABEL_38;
          }

          v93 = 134349056;
          v94 = 5;
        }
      }

      else
      {
        v53 = __atxlog_handle_ui(v28);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [v6 query];
          v55 = [v20 query];
          [v19 coordinate];
          v57 = v56;
          [v19 coordinate];
          v59 = v58;
          [v27 coordinate];
          v61 = v60;
          [v27 coordinate];
          v93 = 134219523;
          *&v94 = v30 / 1000.0;
          v95 = 2112;
          v96 = v54;
          v97 = 2112;
          v98 = v55;
          v99 = 2049;
          v100 = v57;
          v101 = 2049;
          v102 = v59;
          v103 = 2049;
          v104 = v61;
          v105 = 2049;
          v106 = v62;
          _os_log_impl(&dword_1BF549000, v53, OS_LOG_TYPE_DEFAULT, "ZKW Weather: Weather response pass.far: %.2f km (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v93, 0x48u);
        }

        v42 = __atxlog_handle_metrics(v63);
        v64 = __atxlog_handle_metrics(v42);
        v44 = os_signpost_id_generate(v64);

        if (v44 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
        {
          goto LABEL_38;
        }

        v93 = 134349056;
        v94 = 4;
      }
    }

    else
    {
      v31 = __atxlog_handle_ui(v28);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v6 query];
        v33 = [v20 query];
        [v19 coordinate];
        v35 = v34;
        [v19 coordinate];
        v37 = v36;
        [v27 coordinate];
        v39 = v38;
        [v27 coordinate];
        v93 = 134219523;
        *&v94 = v30;
        v95 = 2112;
        v96 = v32;
        v97 = 2112;
        v98 = v33;
        v99 = 2049;
        v100 = v35;
        v101 = 2049;
        v102 = v37;
        v103 = 2049;
        v104 = v39;
        v105 = 2049;
        v106 = v40;
        _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ZKW Weather: Weather response pass.near: %.2f m (%@ -> %@) (%{private}f, %{private}f) -> (%{private}f, %{private}f)", &v93, 0x48u);
      }

      v42 = __atxlog_handle_metrics(v41);
      v43 = __atxlog_handle_metrics(v42);
      v44 = os_signpost_id_generate(v43);

      if (v44 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
      {
        goto LABEL_38;
      }

      v93 = 134349056;
      v94 = 3;
    }

    _os_signpost_emit_with_name_impl(&dword_1BF549000, v42, OS_SIGNPOST_EVENT, v44, "ATXSpotlightWeatherResponse", "result=%{public, signpost.telemetry:number1}lu enableTelemetry=YES ", &v93, 0xCu);
LABEL_38:

    v72 = __atxlog_handle_metrics(v71);
    v73 = __atxlog_handle_metrics(v72);
    v74 = os_signpost_id_generate(v73);

    if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
    {
      v93 = 134349056;
      *&v94 = v30;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v72, OS_SIGNPOST_EVENT, v74, "ATXSpotlightWeatherResponse", "distance=%{public, signpost.telemetry:number2}.0f enableTelemetry=YES ", &v93, 0xCu);
    }

LABEL_42:
LABEL_43:
  }
}

- (id)_replaceMissingWithError:(id)error
{
  errorCopy = error;
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"zkwShowErrorTopicResponse", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v6 = __atxlog_handle_ui(AppBooleanValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Debug: Replacing empty response with debug ui", keyExistsAndHasValidFormat, 2u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__ATXSpotlightClientResponse__replaceMissingWithError___block_invoke;
    v10[3] = &unk_1E80C4A48;
    v10[4] = self;
    v7 = [errorCopy _pas_mappedArrayWithIndexedTransform:v10];
  }

  else
  {
    v7 = errorCopy;
  }

  v8 = v7;

  return v8;
}

id __55__ATXSpotlightClientResponse__replaceMissingWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 results];
  v7 = [v6 firstObject];

  if (!v7)
  {
    v8 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:a3];
    v9 = [v5 results];
    v10 = [v9 firstObject];
    v11 = [v10 normalizedTopic];

    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v45 = [v12 stringWithFormat:@"Missing: %@", v14];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [v8 identifier];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = @"nil";
    }

    [v15 addObject:v18];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v20 = [v19 query];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = @"nil";
      }

      [v15 addObject:v22];

      v23 = MEMORY[0x1E696AEC0];
      v24 = [v19 queryType];

      v25 = [v23 stringWithFormat:@"%d", v24];
      [v15 addObject:v25];
    }

    v26 = [v11 identifier];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = @"nil";
    }

    [v15 addObject:v28];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v11;
      v30 = [v29 query];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = @"nil";
      }

      [v15 addObject:v32];

      v33 = MEMORY[0x1E696AEC0];
      v34 = [v29 queryType];

      v35 = [v33 stringWithFormat:@"%d", v34];
      [v15 addObject:v35];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v37 = v8;
      if ([v37 queryType] == 2 || objc_msgSend(v37, "queryType") == 3)
      {
        v38 = [v37 identifier];
      }

      else if ([v37 queryType] == 1)
      {
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v44 = [v37 identifier];
        v38 = [v43 initWithFormat:@"%@ site:music.apple.com", v44];
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = __atxlog_handle_ui(isKindOfClass);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v48 = a3;
      v49 = 2112;
      v50 = v15;
      _os_log_impl(&dword_1BF549000, v39, OS_LOG_TYPE_DEFAULT, "ZKW Server Result: Debug: [%lu] %@", buf, 0x16u);
    }

    v40 = [objc_opt_class() _resultForError:v45 subtitles:v15 searchString:v38];
    v46 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    [v5 setResults:v41];
  }

  return v5;
}

+ (id)_resultForError:(id)error subtitles:(id)subtitles searchString:(id)string
{
  v33 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  subtitlesCopy = subtitles;
  stringCopy = string;
  v9 = objc_alloc_init(MEMORY[0x1E69CA3E8]);
  [v9 setResultBundleId:&stru_1F3E050C8];
  v10 = objc_opt_new();
  [v10 setText:errorCopy];
  [v9 setTitle:v10];
  [v9 setCompletion:errorCopy];
  v11 = objc_opt_new();
  [v11 setSymbolName:@"exclamationmark.triangle.fill"];
  [v11 setPunchThroughBackground:0];
  [v11 setPrimaryColor:5];
  v12 = objc_opt_new();
  [v12 setShouldUseCompactDisplay:1];
  [v12 setThumbnail:v11];
  v26 = errorCopy;
  v13 = [MEMORY[0x1E69CA3A0] textWithString:errorCopy];
  [v12 setTitle:v13];

  v14 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = subtitlesCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [MEMORY[0x1E69CA3A0] textWithString:*(*(&v27 + 1) + 8 * i)];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v17);
  }

  [v12 setDescriptions:v14];
  if (stringCopy)
  {
    v21 = objc_alloc_init(MEMORY[0x1E69CA408]);
    [v21 setSearchString:stringCopy];
    [v12 setCommand:v21];
  }

  v22 = objc_opt_new();
  v31 = v12;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [v22 setCardSections:v23];

  [v9 setInlineCard:v22];

  return v9;
}

+ (unint64_t)_trialSuggestionsMaxCountWithDefault:(unint64_t)default
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DB518] clientWithIdentifier:232];
  v5 = [v4 levelForFactor:@"ZKWSuggestionsMaxCount" withNamespaceName:@"SPOTLIGHT_UI"];
  v6 = __atxlog_handle_ui(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    defaultCopy = v5;
    v12 = 2112;
    v13 = @"ZKWSuggestionsMaxCount";
    v14 = 2048;
    longValue = [v5 longValue];
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "+[ATXSpotlightClientResponse _trialSuggestionsMaxCount]: level(%@)=%@ level.longValue=%lld", &v10, 0x20u);
  }

  if (v5)
  {
    default = [v5 longValue];
  }

  else
  {
    v8 = __atxlog_handle_ui(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      defaultCopy = default;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "+[ATXSpotlightClientResponse _trialSuggestionsMaxCount]: level is null. returning default value of %lu", &v10, 0xCu);
    }
  }

  return default;
}

void __75__ATXSpotlightClientResponse__logWeatherResponsesWithTopics_serverResults___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ZKW Weather: Weather response mismatch: %@", &v5, 0xCu);
}

@end