@interface SDFeedbackInterceptor
+ (id)sharedInstance;
- (SDFeedbackInterceptor)init;
- (id)_itemsFromSentSectionsWithProtectionClasses:(id)classes filterWithResults:(id)results;
- (void)annotateRankingFeedback:(id)feedback completion:(id)completion;
- (void)cleanup;
- (void)didClearInput:(id)input;
- (void)didEngageResult:(id)result;
- (void)didEngageSection:(id)section;
- (void)didPerformCommand:(id)command;
- (void)didRankSections:(id)sections;
- (void)dumpTTRDebugFiles;
- (void)resultsDidBecomeVisible:(id)visible;
- (void)searchViewDidAppear:(id)appear;
- (void)searchViewDidDisappear:(id)disappear;
- (void)willSendSections:(id)sections forQuery:(id)query queryIdentifier:(unint64_t)identifier allowAnonymousDataCollection:(BOOL)collection withRankerUsed:(id)used withRankingConfiguration:(id)configuration internalDebug:(BOOL)debug keyboardPrimaryLanguage:(id)self0 clientID:(id)self1;
@end

@implementation SDFeedbackInterceptor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SDFeedbackInterceptor sharedInstance];
  }

  v3 = sharedInstance_listener;

  return v3;
}

uint64_t __39__SDFeedbackInterceptor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_listener;
  sharedInstance_listener = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SDFeedbackInterceptor)init
{
  v16.receiver = self;
  v16.super_class = SDFeedbackInterceptor;
  v2 = [(SDFeedbackInterceptor *)&v16 init];
  v3 = v2;
  if (v2)
  {
    currentQuery = v2->_currentQuery;
    v2->_currentQuery = 0;

    v5 = objc_opt_new();
    sentSections = v3->_sentSections;
    v3->_sentSections = v5;

    v7 = objc_opt_new();
    sectionOrder = v3->_sectionOrder;
    v3->_sectionOrder = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.searchd.feedbackInterceptorQueue", v9);
    queue = v3->_queue;
    v3->_queue = v10;

    v3->_collectAnonymousData = 0;
    v12 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    v3->_testRenderEngagementCounts = [v12 BOOLForKey:@"testRenderEngagementCounts"];
    v3->_stressTestCounts = [v12 BOOLForKey:@"stressTestCounts"];
    v3->_isInternalDevice = os_variant_has_internal_diagnostics();
    v3->_engagedTTR = 0;
    v13 = +[SPPersonalMetricManager sharedInstance];
    personalMetricManager = v3->_personalMetricManager;
    v3->_personalMetricManager = v13;
  }

  return v3;
}

- (void)annotateRankingFeedback:(id)feedback completion:(id)completion
{
  feedbackCopy = feedback;
  completionCopy = completion;
  v8 = SDFeedbackTransactionCreate(@"annotate");
  queue = [(SDFeedbackInterceptor *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__SDFeedbackInterceptor_annotateRankingFeedback_completion___block_invoke;
  v13[3] = &unk_1E82F94A8;
  v13[4] = self;
  v14 = v8;
  v15 = feedbackCopy;
  v16 = completionCopy;
  v10 = feedbackCopy;
  v11 = v8;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __60__SDFeedbackInterceptor_annotateRankingFeedback_completion___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) collectAnonymousData])
  {
    if (([*(a1 + 32) isInternalDevice] & 1) == 0)
    {
LABEL_42:
      (*(*(a1 + 56) + 16))();
      if (*(a1 + 40))
      {
        v40 = objc_opt_self();
      }

      return;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69D3E38] sharedHandler];
    if ([v2 collectScores])
    {
    }

    else
    {
      v3 = [*(a1 + 32) isInternalDevice];

      if ((v3 & 1) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v42 = a1;
  obj = [*(a1 + 48) sections];
  v5 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v10 = [v9 results];
        v11 = [v10 countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v50;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v50 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v49 + 1) + 8 * j) result];
              v16 = [v15 identifier];
              [v4 setObject:v15 forKey:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v49 objects:v62 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v6);
  }

  v17 = [*(v42 + 32) _itemsFromSentSections];
  v18 = [MEMORY[0x1E69D3E50] sharedModelManager];
  v41 = [v18 getL2ModelVersionForClientBundle:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obja = v17;
  v19 = [obja countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v45 + 1) + 8 * k);
        v24 = [v23 identifier];
        v25 = [v4 objectForKey:v24];

        v26 = [v23 L2FeatureVector];

        if (v26)
        {
          v27 = v25 == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v59[0] = @"score";
          v31 = MEMORY[0x1E696AD98];
          [v23 score];
          v32 = [v31 numberWithFloat:?];
          v60[0] = v32;
          v59[1] = @"raw score";
          v33 = MEMORY[0x1E696AD98];
          [v23 rawScore];
          v34 = [v33 numberWithFloat:?];
          v60[1] = v34;
          v59[2] = @"original score";
          v35 = MEMORY[0x1E696AD98];
          v36 = [v23 L2FeatureVector];
          [v36 originalL2Score];
          v37 = [v35 numberWithFloat:?];
          v60[2] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
          [v25 setLocalFeatures:v38];

LABEL_36:
          goto LABEL_37;
        }

        v28 = [v23 localSuggestionsData];

        if (v28)
        {
          v29 = v25 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v57 = @"suggestion score";
          v30 = MEMORY[0x1E696AD98];
          [v23 suggestionScore];
          v32 = [v30 numberWithDouble:?];
          v58 = v32;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          [v25 setLocalFeatures:v34];
          goto LABEL_36;
        }

LABEL_37:
      }

      v20 = [obja countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v20);
  }

  [*(v42 + 48) setL2ModelVersion:v41];
  (*(*(v42 + 56) + 16))();
  if (*(v42 + 40))
  {
    v39 = objc_opt_self();
  }
}

- (void)willSendSections:(id)sections forQuery:(id)query queryIdentifier:(unint64_t)identifier allowAnonymousDataCollection:(BOOL)collection withRankerUsed:(id)used withRankingConfiguration:(id)configuration internalDebug:(BOOL)debug keyboardPrimaryLanguage:(id)self0 clientID:(id)self1
{
  v79 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  usedCopy = used;
  configurationCopy = configuration;
  languageCopy = language;
  dCopy = d;
  sectionsCopy = sections;
  v47 = SDFeedbackTransactionCreate(@"willSendSections");
  v15 = [sectionsCopy copy];

  v16 = [v15 count];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v58 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v16];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v15;
  v19 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v75;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v75 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v74 + 1) + 8 * i);
        results = [v23 results];
        v25 = [results copy];
        [v17 addObject:v25];

        bundleIdentifier = [v23 bundleIdentifier];
        v27 = [v18 objectForKeyedSubscript:bundleIdentifier];
        if (!v27)
        {
          v27 = objc_opt_new();
          resultSet = [v23 resultSet];
          v29 = [resultSet count];

          maxInitiallyVisibleResults = [v23 maxInitiallyVisibleResults];
          if (v29 >= maxInitiallyVisibleResults)
          {
            v31 = maxInitiallyVisibleResults;
          }

          else
          {
            v31 = v29;
          }

          [v27 setCountOfVisibleResults:v31];
          [v18 setObject:v27 forKeyedSubscript:bundleIdentifier];
          bundleIdentifier2 = [v23 bundleIdentifier];
          [v58 addObject:bundleIdentifier2];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v20);
  }

  [configurationCopy lock];
  queryDependentCategoryProbabilities = [configurationCopy queryDependentCategoryProbabilities];
  v34 = [queryDependentCategoryProbabilities copy];

  [configurationCopy unlock];
  v35 = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __183__SDFeedbackInterceptor_willSendSections_forQuery_queryIdentifier_allowAnonymousDataCollection_withRankerUsed_withRankingConfiguration_internalDebug_keyboardPrimaryLanguage_clientID___block_invoke;
  block[3] = &unk_1E82F94D0;
  block[4] = self;
  v62 = languageCopy;
  v63 = obj;
  v64 = v17;
  v65 = v18;
  v66 = v34;
  collectionCopy = collection;
  v67 = queryCopy;
  v68 = dCopy;
  v69 = usedCopy;
  v70 = v58;
  v71 = v47;
  identifierCopy = identifier;
  queuea = v35;
  v54 = v47;
  v36 = v58;
  v59 = usedCopy;
  v37 = dCopy;
  v38 = queryCopy;
  v39 = v34;
  v40 = v18;
  v41 = v17;
  v42 = obj;
  v43 = languageCopy;
  v44 = qos_class_self();
  if (v44 < 0x1A)
  {
    v45 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v45 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v44, 0, block);
  }

  v46 = v45;
  dispatch_async(queuea, v45);
}

void __183__SDFeedbackInterceptor_willSendSections_forQuery_queryIdentifier_allowAnonymousDataCollection_withRankerUsed_withRankingConfiguration_internalDebug_keyboardPrimaryLanguage_clientID___block_invoke(uint64_t a1)
{
  v105 = *MEMORY[0x1E69E9840];
  v83 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:{@"com.apple.other.search_web", @"com.apple.other.search_app_store", @"com.apple.other.search_maps", 0}];
  v79 = a1;
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  if (kPlaceHolderInputName_block_invoke_onceToken != -1)
  {
    __183__SDFeedbackInterceptor_willSendSections_forQuery_queryIdentifier_allowAnonymousDataCollection_withRankerUsed_withRankingConfiguration_internalDebug_keyboardPrimaryLanguage_clientID___block_invoke_cold_1();
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = *(a1 + 48);
  v72 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
  if (v72)
  {
    v2 = 0;
    v71 = *v95;
    v82 = *MEMORY[0x1E69D3F20];
    v81 = *MEMORY[0x1E69D3F18];
    v80 = *MEMORY[0x1E69D3F08];
    v73 = *MEMORY[0x1E69D3F00];
    v78 = *MEMORY[0x1E696A388];
    do
    {
      v3 = 0;
      do
      {
        if (*v95 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v76 = v3;
        v77 = v2;
        v4 = *(*(&v94 + 1) + 8 * v3);
        v5 = [*(v79 + 56) objectAtIndex:v2];
        v75 = [v4 bundleIdentifier];
        v84 = objc_opt_new();
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v90 objects:v100 count:16];
        if (!v7)
        {
          v85 = 0;
          goto LABEL_61;
        }

        v8 = v7;
        v85 = 0;
        v9 = *v91;
        do
        {
          v10 = 0;
          do
          {
            if (*v91 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v90 + 1) + 8 * v10);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
              v13 = [v12 type];
              v14 = [v12 sectionBundleIdentifier];
              if (!v14)
              {
                goto LABEL_50;
              }

              v15 = [v12 rankingItem];

              if (!v15)
              {
                goto LABEL_50;
              }

              v16 = [v12 rankingItem];
              v17 = [v16 sectionBundleIdentifier];

              if (!v17)
              {
                v18 = [v12 rankingItem];
                [v18 setSectionBundleIdentifier:v14];
              }

              if ((SSResultTypeIsServer() & 1) == 0 && (v13 & 0xFFFFFFFE) != 6)
              {
                v19 = v85;
                if (!v85)
                {
                  v19 = objc_opt_new();
                }

                v85 = v19;
                v20 = [v12 identifier];
                v21 = [v12 rankingItem];
                [v21 setIdentifier:v20];

                if ([v14 isEqualToString:@"com.apple.DocumentsApp"])
                {
                  v22 = [v12 resultBundleId];

                  v14 = v22;
                }

                v23 = [v12 rankingItem];
                [v23 setSectionBundleIdentifier:v14];

                v24 = [v12 rankingItem];
                [v84 addObject:v24];

                v25 = [v12 identifier];
                if (v25)
                {

                  goto LABEL_38;
                }

                v32 = [v12 sectionBundleIdentifier];
                v33 = [v32 isEqualToString:@"com.apple.calculation"];

                if (v33)
                {
LABEL_38:
                  v35 = [v12 protectionClass];

                  if (v35)
                  {
                    v36 = [v12 protectionClass];
                    v37 = [v12 identifier];
                    [v85 setObject:v36 forKey:v37];

                    goto LABEL_49;
                  }
                }

                else
                {
                  v38 = SPLogForSPLogCategoryDefault(v34);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                  {
                    v53 = [v12 resultBundleId];
                    v74 = [v53 UTF8String];
                    v54 = [v12 sectionBundleIdentifier];
                    v55 = [v54 UTF8String];
                    *__str = 136315394;
                    *&__str[4] = v74;
                    v103 = 2080;
                    v104 = v55;
                    _os_log_fault_impl(&dword_1C81BF000, v38, OS_LOG_TYPE_FAULT, "result identifier is nil, resultBundleId: >%s<, sectionBundleIdentifier: >%s<", __str, 0x16u);
                  }
                }

                goto LABEL_50;
              }

              if (!SSResultTypeIsServer())
              {
                goto LABEL_50;
              }

              v26 = [v12 rankingItem];

              if (!v26)
              {
                goto LABEL_50;
              }

              if (_os_feature_enabled_impl())
              {
                if ([v14 isEqual:v82] & 1) != 0 || (objc_msgSend(v14, "isEqual:", v81) & 1) != 0 || (objc_msgSend(v14, "isEqual:", v80))
                {
                  v27 = [v12 getStableServerResultIdentifier];
                  v28 = [v12 rankingItem];
                  [v28 setIdentifier:v27];

                  goto LABEL_33;
                }

                v50 = [v14 isEqual:v73];
                v51 = [v12 getStableServerResultIdentifier];
                v52 = [v12 rankingItem];
                [v52 setIdentifier:v51];

                if ((v50 & 1) == 0)
                {
LABEL_46:
                  bzero(v99, 0x400uLL);
                  json_writer_init_with_buffer();
                  json_writer_begin_dictionary();
                  json_writer_add_key();
                  [v12 rankingScore];
                  v41 = v40;
                  bzero(__str, 0x400uLL);
                  snprintf(__str, 0x400uLL, "%.2g", v41);
                  atof(__str);
                  json_writer_add_double();
                  json_writer_add_key();
                  v42 = [v12 sectionBundleIdentifier];
                  [v42 UTF8String];
                  json_writer_add_string();

                  json_writer_add_key();
                  json_writer_add_raw_value();
                  json_writer_add_key();
                  [v12 feedbackBlockId];
                  json_writer_add_uint32();
                  json_writer_end_dictionary();
                  *__str = 0;
                  data = json_writer_get_data();
                  if (data)
                  {
                    v44 = data;
                    v45 = objc_alloc(MEMORY[0x1E695DEF0]);
                    v46 = [v45 initWithBytes:*__str length:v44];
                    v47 = [v12 rankingItem];
                    [v47 setServerFeaturesJSON:v46];
                  }

                  v48 = [v12 rankingItem];
                  v49 = [v48 sectionBundleIdentifier];
                  [v83 addObject:v49];

                  v36 = [v12 rankingItem];
                  [v84 addObject:v36];
LABEL_49:

LABEL_50:
                  goto LABEL_51;
                }

LABEL_33:
                v29 = v85;
                if (!v85)
                {
                  v29 = objc_opt_new();
                }

                v85 = v29;
                v30 = [v12 protectionClass];
                if (v30)
                {
                  v31 = v30;
LABEL_45:

                  goto LABEL_46;
                }

                if (!v85)
                {
                  v85 = 0;
                  goto LABEL_46;
                }

                v31 = [v12 rankingItem];
                v39 = [v31 identifier];
                [v85 setObject:v78 forKey:v39];
              }

              else
              {
                v31 = [v12 getStableServerResultIdentifier];
                v39 = [v12 rankingItem];
                [v39 setIdentifier:v31];
              }

              goto LABEL_45;
            }

LABEL_51:
            ++v10;
          }

          while (v8 != v10);
          v56 = [v6 countByEnumeratingWithState:&v90 objects:v100 count:16];
          v8 = v56;
        }

        while (v56);
LABEL_61:

        if ([v84 count])
        {
          v57 = [*(v79 + 64) objectForKeyedSubscript:v75];
          [v57 setArrayOfRankingItems:v84];
          [v57 setBundleIdentifier:v75];
          if (v85)
          {
            [v57 setMapResultIdToProtectionClass:?];
          }
        }

        v2 = v77 + 1;

        v3 = v76 + 1;
      }

      while (v76 + 1 != v72);
      v72 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
    }

    while (v72);
  }

  v58 = objc_opt_new();
  if (*(v79 + 72))
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v59 = v83;
    v60 = [v59 countByEnumeratingWithState:&v86 objects:v98 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v87;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v87 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v86 + 1) + 8 * i);
          v65 = *(v79 + 72);
          v66 = [v64 lowercaseString];
          v67 = [v65 objectForKey:v66];

          if (v67)
          {
            [v58 setObject:v67 forKey:v64];
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v86 objects:v98 count:16];
      }

      while (v61);
    }
  }

  v68 = v79;
  *(*(v79 + 32) + 8) = *(v79 + 128);
  objc_storeStrong((*(v79 + 32) + 24), *(v79 + 80));
  *(*(v79 + 32) + 32) = *(v79 + 120);
  objc_storeStrong((*(v68 + 32) + 40), *(v68 + 88));
  objc_storeStrong((*(v68 + 32) + 64), *(v68 + 96));
  objc_storeStrong((*(v68 + 32) + 16), *(v68 + 64));
  objc_storeStrong((*(v68 + 32) + 48), *(v68 + 104));
  objc_storeStrong((*(v79 + 32) + 72), v58);
  if (*(v79 + 112))
  {
    v69 = objc_opt_self();
  }
}

uint64_t __183__SDFeedbackInterceptor_willSendSections_forQuery_queryIdentifier_allowAnonymousDataCollection_withRankerUsed_withRankingConfiguration_internalDebug_keyboardPrimaryLanguage_clientID___block_invoke_2()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = kPlaceHolderInputName_block_invoke_classes;
  kPlaceHolderInputName_block_invoke_classes = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)didEngageSection:(id)section
{
  sectionCopy = section;
  v5 = SDFeedbackTransactionCreate(@"didEngageSection");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SDFeedbackInterceptor_didEngageSection___block_invoke;
  block[3] = &unk_1E82F9018;
  v10 = sectionCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = sectionCopy;
  dispatch_async(queue, block);
}

void __42__SDFeedbackInterceptor_didEngageSection___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) section];
  v2 = [*(a1 + 32) triggerEvent];
  v3 = *(*(a1 + 40) + 16);
  v4 = [v8 bundleIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v2 == 3)
  {
    [v5 setCountOfVisibleResults:{objc_msgSend(v8, "maxInitiallyVisibleResults")}];
  }

  else if (v2 == 2)
  {
    v6 = [v8 results];
    [v5 setCountOfVisibleResults:{objc_msgSend(v6, "count")}];
  }

  if (*(a1 + 48))
  {
    v7 = objc_opt_self();
  }
}

- (id)_itemsFromSentSectionsWithProtectionClasses:(id)classes filterWithResults:(id)results
{
  v50 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  resultsCopy = results;
  v7 = [resultsCopy count];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [(NSMutableOrderedSet *)self->_sectionOrder count];
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = 0;
    v41 = classesCopy;
    v36 = v10;
    selfCopy = self;
    do
    {
      v13 = [(NSMutableOrderedSet *)self->_sectionOrder objectAtIndexedSubscript:v12];
      sentSections = [(SDFeedbackInterceptor *)self sentSections];
      v40 = v13;
      v15 = [sentSections objectForKeyedSubscript:v13];

      mapResultIdToProtectionClass = [v15 mapResultIdToProtectionClass];
      [classesCopy addEntriesFromDictionary:mapResultIdToProtectionClass];

      v39 = v15;
      if (v7)
      {
        arrayOfRankingItems = [v15 arrayOfRankingItems];
        v18 = [arrayOfRankingItems count];
        if (v18 < 1 || v7 < 1)
        {
          goto LABEL_33;
        }

        v20 = v18;
        v38 = v12;
        v21 = 0;
        v22 = 0;
        v42 = v18;
        do
        {
          v23 = [arrayOfRankingItems objectAtIndexedSubscript:v21];
          identifier = [v23 identifier];
          if (!classesCopy || ([classesCopy objectForKey:identifier], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
          {
            if (v22 < v7)
            {
              v43 = v22;
              v26 = v22;
              while (1)
              {
                v27 = [resultsCopy objectAtIndexedSubscript:v26];
                identifier2 = [v27 identifier];
                v29 = [identifier2 isEqualToString:identifier];

                ++v26;
                if (v29)
                {
                  break;
                }

                if (v7 == v26)
                {
                  classesCopy = v41;
                  v20 = v42;
                  v22 = v43;
                  goto LABEL_20;
                }
              }

              [v9 addObject:v23];

              v22 = v26;
              classesCopy = v41;
              v20 = v42;
            }
          }

LABEL_20:

          ++v21;
        }

        while (v21 < v20 && v22 < v7);
        v11 = v36;
        self = selfCopy;
      }

      else
      {
        v38 = v12;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        arrayOfRankingItems = [v15 arrayOfRankingItems];
        v30 = [arrayOfRankingItems countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v46;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v46 != v32)
              {
                objc_enumerationMutation(arrayOfRankingItems);
              }

              v34 = *(*(&v45 + 1) + 8 * i);
              if (([v9 containsObject:v34] & 1) == 0)
              {
                [v9 addObject:v34];
              }
            }

            v31 = [arrayOfRankingItems countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v31);
        }
      }

      v12 = v38;
LABEL_33:

      ++v12;
    }

    while (v12 != v11);
  }

  return v9;
}

- (void)didPerformCommand:(id)command
{
  commandCopy = command;
  v5 = SDFeedbackTransactionCreate(@"didEngageResult");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SDFeedbackInterceptor_didPerformCommand___block_invoke;
  block[3] = &unk_1E82F9018;
  v10 = commandCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = commandCopy;
  dispatch_async(queue, block);
}

void __43__SDFeedbackInterceptor_didPerformCommand___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) result];
  v3 = [v2 identifier];
  if ([v3 isEqualToString:@"com.apple.other:taptoradar"])
  {
    *(*(a1 + 40) + 13) = 1;
  }

  v4 = [*(*(a1 + 40) + 88) indexOfObject:v3];
  v5 = [*(a1 + 40) suggestionsIdentifiers];

  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = *(a1 + 40);
  v73 = v2;
  if (v5 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v6 initWithCapacity:{objc_msgSend(*(v7 + 80), "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v9 = *(*(a1 + 40) + 80);
    v10 = [v9 countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v87;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v87 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[SDSuggestionsFeedbackCollectible alloc] initWithSuggestionsData:*(*(&v86 + 1) + 8 * i)];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v86 objects:v93 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x1E69D3E30] sharedManager];
    v16 = [*(a1 + 40) usedRanker];
    [v15 extractTrainingDataWithItemAtIndex:v4 withItems:v8 withRanker:v16 forQuery:*(*(a1 + 40) + 24) dataCollectAllowed:1 forClientBundle:*MEMORY[0x1E69D3F28] keyboardPrimaryLanguage:*(*(a1 + 40) + 96) clientID:*(*(a1 + 40) + 40)];
    v17 = v73;
    goto LABEL_87;
  }

  v8 = [v6 initWithCapacity:{objc_msgSend(*(v7 + 16), "count")}];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v18 = *(*(a1 + 40) + 48);
  v19 = [v18 countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v83;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v83 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(*(&v82 + 1) + 8 * j)];
        [v8 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v20);
  }

  v72 = objc_opt_new();
  [*(a1 + 40) _itemsFromSentSectionsWithProtectionClasses:? filterWithResults:?];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v24 = v81 = 0u;
  v15 = [v24 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v15)
  {
    v25 = *v79;
    while (2)
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v79 != v25)
        {
          objc_enumerationMutation(v24);
        }

        v27 = *(*(&v78 + 1) + 8 * k);
        v28 = [v27 identifier];
        v29 = [v28 isEqualToString:v3];

        if (v29)
        {
          v15 = v27;
          goto LABEL_30;
        }
      }

      v15 = [v24 countByEnumeratingWithState:&v78 objects:v91 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:
  v71 = v24;

  v17 = v73;
  v30 = [v73 type] == 36 || objc_msgSend(v73, "type") == 37;
  v31 = _os_feature_enabled_impl();
  if (v15)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v34 = [v15 sectionBundleIdentifier];
    v35 = [v34 isEqual:*MEMORY[0x1E69D3F20]];
    if (v35)
    {
      v33 = 1;
    }

    else
    {
      v36 = [v15 sectionBundleIdentifier];
      if ([v36 isEqual:*MEMORY[0x1E69D3F18]])
      {
        v33 = 1;
      }

      else
      {
        v37 = [v15 sectionBundleIdentifier];
        if ([v37 isEqual:*MEMORY[0x1E69D3F08]])
        {
          v33 = 1;
        }

        else
        {
          v68 = [v15 sectionBundleIdentifier];
          v33 = [v68 isEqual:*MEMORY[0x1E69D3F00]];
        }
      }
    }
  }

  v38 = [v73 type];
  v39 = [v15 sectionBundleIdentifier];
  v40 = [v39 isEqual:*MEMORY[0x1E69D3F78]];
  if (v38 == 20)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v38 == 2 || v30;
    if ((v42 & 1) == 0 && (v38 > 7 || ((1 << v38) & 0xD0) == 0) && (v33 & 1) == 0)
    {
      if (v15)
      {
        v65 = v41;
      }

      else
      {
        v65 = 0;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_60:
      v43 = [v15 identifier];
      v44 = [v72 objectForKey:v43];

      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v33;
      }

      if (v45 == 1)
      {
        v44 = *MEMORY[0x1E696A388];
      }

      if (v44)
      {
        v46 = [v15 sectionBundleIdentifier];
        v47 = [v46 isEqualToString:@"com.apple.DocumentsApp"];

        if (v47)
        {
          v48 = [v73 resultBundleId];
          [v15 setSectionBundleIdentifier:v48];
        }

        v49 = [MEMORY[0x1E69D3E90] sharedInstance];
        [v49 didEngageResultWithRankingItem:v15 startDate:0 protectionClass:v44 query:*(*(a1 + 40) + 24)];
      }

      goto LABEL_70;
    }

    if (v15)
    {
      goto LABEL_60;
    }
  }

LABEL_70:
  [*(a1 + 40) _itemsFromSentSections];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v50 = v77 = 0u;
  v51 = [v50 countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v51)
  {
    v52 = v51;
    v69 = v15;
    v53 = *v75;
    while (2)
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v75 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v74 + 1) + 8 * m);
        v56 = [v55 identifier];
        v57 = [v56 isEqualToString:v3];

        if (v57)
        {
          v58 = [v50 indexOfObject:v55];
          goto LABEL_80;
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v74 objects:v90 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }

    v58 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_80:
    v17 = v73;
    v15 = v69;
  }

  else
  {
    v58 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v72;
  if ([*(a1 + 32) triggerEvent] != 5 && v58 != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "type") != 26)
  {
    v59 = [MEMORY[0x1E69D3E30] sharedManager];
    v60 = [*(a1 + 40) usedRanker];
    v61 = *(a1 + 40);
    v70 = *(v61 + 24);
    v67 = *(v61 + 8);
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v61, "currentQueryId")}];
    v63 = *(a1 + 40);
    LOBYTE(v66) = *(v63 + 9);
    [v59 extractTrainingDataWithItemAtIndex:v58 withItems:v50 withRanker:v60 forQuery:v70 dataCollectAllowed:v67 queryID:v62 withCEPData:*(v63 + 72) forClientBundle:*MEMORY[0x1E69D3EC8] debugInfoEnabled:v66 keyboardPrimaryLanguage:*(v63 + 96) clientID:*(v63 + 40)];

    v16 = v72;
  }

LABEL_87:
  if (*(a1 + 48))
  {
    v64 = objc_opt_self();
  }
}

- (void)dumpTTRDebugFiles
{
  v3 = SDFeedbackTransactionCreate(@"dumpTTRDebugFiles");
  self->_engagedTTR = 1;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SDFeedbackInterceptor_dumpTTRDebugFiles__block_invoke;
  v6[3] = &unk_1E82F8E68;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_sync(queue, v6);
}

void __42__SDFeedbackInterceptor_dumpTTRDebugFiles__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v7), v11}];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = +[SDTTRSupport getSharedInstance];
  [v9 dumpTTRDebugFilesForQuery:*(*(a1 + 32) + 24) sections:v2 enableKeyLogRanking:0];

  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  if (*(a1 + 40))
  {
    v10 = objc_opt_self();
  }
}

- (void)didClearInput:(id)input
{
  mEMORY[0x1E69D3E90] = [MEMORY[0x1E69D3E90] sharedInstance];
  [mEMORY[0x1E69D3E90] writeRenderAndEngagementInfo];
}

- (void)didRankSections:(id)sections
{
  sectionsCopy = sections;
  v5 = SDFeedbackTransactionCreate(@"didRank");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SDFeedbackInterceptor_didRankSections___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = sectionsCopy;
  v11 = v5;
  v7 = v5;
  v8 = sectionsCopy;
  dispatch_async(queue, block);
}

void __41__SDFeedbackInterceptor_didRankSections___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 104) didRankSections:*(a1 + 40)];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [*(a1 + 40) sections];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v3)
  {
LABEL_9:

    goto LABEL_30;
  }

  v4 = v3;
  v5 = *v35;
  v6 = *MEMORY[0x1E69D3F28];
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v35 != v5)
    {
      objc_enumerationMutation(v2);
    }

    v8 = [*(*(&v34 + 1) + 8 * v7) section];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 isEqualToString:v6];

    if (v10)
    {
      break;
    }

    if (v4 == ++v7)
    {
      v4 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  if (!v8)
  {
LABEL_30:
    if (*(a1 + 48))
    {
      v28 = objc_opt_self();
    }

    return;
  }

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = *(*(a1 + 32) + 16);
  v14 = [v8 bundleIdentifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (!v15)
  {
    goto LABEL_25;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = v15;
  v16 = [v15 arrayOfRankingItems];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = *v31;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v31 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v30 + 1) + 8 * i);
      v22 = [v21 identifier];
      [v11 addObject:v22];

      v23 = [v21 localSuggestionsData];

      if (v23)
      {
        v24 = [v21 localSuggestionsData];
      }

      else
      {
        v25 = [v21 serverSuggestionsData];

        if (!v25)
        {
          continue;
        }

        v24 = [v21 serverSuggestionsData];
      }

      v26 = v24;
      [v12 addObject:v24];
    }

    v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  }

  while (v18);
LABEL_24:

  v15 = v29;
LABEL_25:
  if ([v11 count])
  {
    objc_storeStrong((*(a1 + 32) + 88), v11);
    objc_storeStrong((*(a1 + 32) + 80), v12);
  }

  if (*(a1 + 48))
  {
    v27 = objc_opt_self();
  }
}

- (void)didEngageResult:(id)result
{
  resultCopy = result;
  v5 = SDFeedbackTransactionCreate(@"didEngage");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SDFeedbackInterceptor_didEngageResult___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = resultCopy;
  v11 = v5;
  v7 = v5;
  v8 = resultCopy;
  dispatch_async(queue, block);
}

id __41__SDFeedbackInterceptor_didEngageResult___block_invoke(void *a1)
{
  [*(a1[4] + 104) didEngageResult:a1[5]];
  result = a1[6];
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)resultsDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  v5 = SDFeedbackTransactionCreate(@"didBecomeVisible");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SDFeedbackInterceptor_resultsDidBecomeVisible___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = visibleCopy;
  v11 = v5;
  v7 = v5;
  v8 = visibleCopy;
  dispatch_async(queue, block);
}

void __49__SDFeedbackInterceptor_resultsDidBecomeVisible___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) resultsDidBecomeVisible:*(a1 + 40)];
  v11 = [*(a1 + 40) results];
  if ([v11 count])
  {
    v2 = [v11 firstObject];
    v3 = [v2 sectionBundleIdentifier];
    v4 = [v3 isEqualToString:@"com.apple.searchd.zkw.apps"];

    if (v4)
    {
      if (*(a1 + 48))
      {
        v5 = objc_opt_self();
      }

      goto LABEL_9;
    }

    v6 = [*(a1 + 40) results];
    v7 = objc_opt_new();
    v8 = [*(a1 + 32) _itemsFromSentSectionsWithProtectionClasses:v7 filterWithResults:v6];
    v9 = [MEMORY[0x1E69D3E90] sharedInstance];
    [v9 resultsWithRankingItemsDidBecomeVisible:v8 date:0 protectionClassMapping:v7];
  }

  if (*(a1 + 48))
  {
    v10 = objc_opt_self();
  }

LABEL_9:
}

- (void)searchViewDidAppear:(id)appear
{
  v4 = SDFeedbackTransactionCreate(@"didAppear");
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SDFeedbackInterceptor_searchViewDidAppear___block_invoke;
  v7[3] = &unk_1E82F8E68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

id __45__SDFeedbackInterceptor_searchViewDidAppear___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) testRenderEngagementCounts])
  {
    if ([*(a1 + 32) isInternalDevice])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__SDFeedbackInterceptor_searchViewDidAppear___block_invoke_2;
      block[3] = &unk_1E82F8F28;
      block[4] = *(a1 + 32);
      if (kPlaceHolderInputName_block_invoke_2_onceToken != -1)
      {
        dispatch_once(&kPlaceHolderInputName_block_invoke_2_onceToken, block);
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

void __45__SDFeedbackInterceptor_searchViewDidAppear___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D3E90] sharedInstance];
  [v2 testCountsMovingDaysInPast];
  [v2 testCountsMovingYearInPast];
  [v2 testCountsMovingCoupleOfYearsInPast];
  [v2 testCountsUptoOneDay];
  [v2 testCountsUptoWeek];
  [v2 testCountsUptoMonth];
  [v2 testCountsUptoQuarter];
  [v2 testCountsUptoHalfYear];
  [v2 testCountsAfterYear];
  [v2 testCountsAfterCoupleYears];
  [v2 testCountsForRegularEngagement];
  [v2 testForDummyEntry];
  if ([*(a1 + 32) stressTestCounts])
  {
    [v2 stressTestCounts];
  }
}

- (void)searchViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  v5 = SDFeedbackTransactionCreate(@"didDisappear");
  if (self->_isInternalDevice && ![disappearCopy viewDisappearEvent])
  {
    self->_engagedTTR = 1;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SDFeedbackInterceptor_searchViewDidDisappear___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v11 = disappearCopy;
  v12 = v5;
  v7 = v5;
  v8 = disappearCopy;
  dispatch_async(queue, block);
  mEMORY[0x1E69D3E90] = [MEMORY[0x1E69D3E90] sharedInstance];
  [mEMORY[0x1E69D3E90] writeRenderAndEngagementInfo];
}

id __48__SDFeedbackInterceptor_searchViewDidDisappear___block_invoke(void *a1)
{
  [*(a1[4] + 104) searchViewDidDisappear:a1[5]];
  v2 = a1[4];
  if (*(v2 + 13))
  {
    *(v2 + 13) = 0;
  }

  else
  {
    [*(v2 + 16) removeAllObjects];
    [*(a1[4] + 48) removeAllObjects];
  }

  v3 = a1[4];
  v4 = *(v3 + 88);
  *(v3 + 88) = 0;

  v5 = a1[4];
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  v7 = a1[4];
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  result = a1[6];
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)cleanup
{
  v3 = SDFeedbackTransactionCreate(@"cleanup");
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__SDFeedbackInterceptor_cleanup__block_invoke;
  v6[3] = &unk_1E82F8E68;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

id __32__SDFeedbackInterceptor_cleanup__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;

  result = *(a1 + 40);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

@end