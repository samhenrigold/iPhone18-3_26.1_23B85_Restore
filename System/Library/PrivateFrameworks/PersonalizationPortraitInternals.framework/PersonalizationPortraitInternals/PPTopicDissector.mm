@interface PPTopicDissector
+ (id)sharedInstance;
- (PPTopicDissector)init;
- (PPTopicDissector)initWithContextClient:(id)client;
- (id)extractionsFromContextKitWithText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id language:(id)language weight:(double)weight;
- (id)topicsInText:(id)text isPlainText:(BOOL)plainText source:(id)source cloudSync:(BOOL)sync language:(id)language topicAlgorithms:(id)algorithms namedEntityAlgorithms:(id)entityAlgorithms weight:(double)self0;
- (void)_collectHighLevelTopicsWithText:(id)text bundleId:(id)id addTopic:(id)topic weight:(double)weight;
- (void)_collectResultsFromContextKitWithText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id language:(id)language useContextKitTopics:(BOOL)topics useContextKitNamedEntities:(BOOL)entities addTopic:(id)topic addNamedEntity:(id)self0 weight:(double)self1;
@end

@implementation PPTopicDissector

- (void)_collectHighLevelTopicsWithText:(id)text bundleId:(id)id addTopic:(id)topic weight:(double)weight
{
  topicCopy = topic;
  textCopy = text;
  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "HighLevel Topic Extraction beginning for text...", buf, 2u);
  }

  transform = self->_transform;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__PPTopicDissector__collectHighLevelTopicsWithText_bundleId_addTopic_weight___block_invoke;
  v14[3] = &unk_2789722D0;
  v15 = topicCopy;
  v12 = topicCopy;
  [(PPTextToTopicTransform *)transform iterateTopicsForText:textCopy block:v14];

  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "HighLevel Topic Extraction completed for text", buf, 2u);
  }
}

void __77__PPTopicDissector__collectHighLevelTopicsWithText_bundleId_addTopic_weight___block_invoke(uint64_t a1, void *a2, float a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = pp_default_log_handle();
  v7 = a3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138740227;
    v12 = v5;
    v13 = 2048;
    v14 = v7;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "topicId: %{sensitive}@, score: %f", &v11, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277D3A498]);
  v9 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v5];
  v10 = [v8 initWithItem:v9 score:v7];

  (*(*(a1 + 32) + 16))();
}

- (void)_collectResultsFromContextKitWithText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id language:(id)language useContextKitTopics:(BOOL)topics useContextKitNamedEntities:(BOOL)entities addTopic:(id)topic addNamedEntity:(id)self0 weight:(double)self1
{
  entitiesCopy = entities;
  topicsCopy = topics;
  plainTextCopy = plainText;
  v41 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  entityCopy = entity;
  v21 = [(PPTopicDissector *)self extractionsFromContextKitWithText:text isPlainText:plainTextCopy bundleId:id language:language weight:weight];
  v22 = v21;
  if (topicsCopy)
  {
    if (v21)
    {
      v23 = *(v21 + 8);
      v24 = v22[3];
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v25 = v24;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __166__PPTopicDissector__collectResultsFromContextKitWithText_isPlainText_bundleId_language_useContextKitTopics_useContextKitNamedEntities_addTopic_addNamedEntity_weight___block_invoke;
    v37[3] = &unk_2789722A8;
    v38 = v25;
    v39 = topicCopy;
    v26 = v25;
    [v23 enumerateObjectsUsingBlock:v37];
  }

  if (entitiesCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    if (v22)
    {
      v27 = v22[2];
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v34;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(v28);
          }

          entityCopy[2](entityCopy, *(*(&v33 + 1) + 8 * i), 15);
        }

        v30 = [v28 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v30);
    }
  }
}

void __166__PPTopicDissector__collectResultsFromContextKitWithText_isPlainText_bundleId_language_useContextKitTopics_useContextKitNamedEntities_addTopic_addNamedEntity_weight___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(v4 + 16))(v4, v6, v7, 1);
}

- (id)topicsInText:(id)text isPlainText:(BOOL)plainText source:(id)source cloudSync:(BOOL)sync language:(id)language topicAlgorithms:(id)algorithms namedEntityAlgorithms:(id)entityAlgorithms weight:(double)self0
{
  plainTextCopy = plainText;
  v114 = *MEMORY[0x277D85DE8];
  textCopy = text;
  sourceCopy = source;
  languageCopy = language;
  algorithmsCopy = algorithms;
  entityAlgorithmsCopy = entityAlgorithms;
  v21 = objc_opt_new();
  v22 = 0.0;
  if (plainTextCopy)
  {
    bundleId = [sourceCopy bundleId];
    if ([*MEMORY[0x277D3A658] isEqualToString:bundleId])
    {

LABEL_5:
      v25 = +[PPSentiment sharedInstance];
      [v25 sentimentScoreForText:textCopy];
      v22 = v26;

      goto LABEL_6;
    }

    v24 = [*MEMORY[0x277D3A648] isEqualToString:bundleId];

    if (v24)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__PPTopicDissector_topicsInText_isPlainText_source_cloudSync_language_topicAlgorithms_namedEntityAlgorithms_weight___block_invoke;
  aBlock[3] = &unk_278972258;
  v27 = v21;
  v103 = v27;
  v28 = sourceCopy;
  v104 = v28;
  syncCopy = sync;
  v105 = v22;
  v79 = _Block_copy(aBlock);
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __116__PPTopicDissector_topicsInText_isPlainText_source_cloudSync_language_topicAlgorithms_namedEntityAlgorithms_weight___block_invoke_2;
  v97[3] = &unk_278972280;
  v77 = v27;
  v98 = v77;
  v29 = v28;
  v99 = v29;
  syncCopy2 = sync;
  v100 = v22;
  v76 = _Block_copy(v97);
  v30 = [algorithmsCopy containsObject:&unk_284783A80];
  v31 = [entityAlgorithmsCopy containsObject:&unk_284783A98];
  v32 = v31;
  if ((v30 & 1) != 0 || v31)
  {
    bundleId2 = [v29 bundleId];
    [(PPTopicDissector *)self _collectResultsFromContextKitWithText:textCopy isPlainText:plainTextCopy bundleId:bundleId2 language:languageCopy useContextKitTopics:v30 useContextKitNamedEntities:v32 addTopic:weight addNamedEntity:v79 weight:v76];
  }

  v74 = algorithmsCopy;
  if ([algorithmsCopy containsObject:&unk_284783AB0])
  {
    bundleId3 = [v29 bundleId];
    [(PPTopicDissector *)self _collectHighLevelTopicsWithText:textCopy bundleId:bundleId3 addTopic:v79 weight:weight];
  }

  v75 = textCopy;
  if (languageCopy)
  {
    userLanguagesWithoutCanonicalSuffixes = [MEMORY[0x277D3A248] userLanguagesWithoutCanonicalSuffixes];
    v36 = [userLanguagesWithoutCanonicalSuffixes containsObject:languageCopy];

    if ((v36 & 1) == 0)
    {
      languageStringToLanguageTopicQIDMapping = [MEMORY[0x277D3A248] languageStringToLanguageTopicQIDMapping];
      v38 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:languageCopy];
      v39 = [languageStringToLanguageTopicQIDMapping objectForKeyedSubscript:v38];

      if (v39)
      {
        v40 = objc_alloc(MEMORY[0x277D3A498]);
        v41 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v39];
        v42 = [v40 initWithItem:v41 score:1.0];

        v79[2](v79, v42, MEMORY[0x277CBEC28], 12);
        v43 = pp_default_log_handle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v110 = languageCopy;
          _os_log_debug_impl(&dword_23224A000, v43, OS_LOG_TYPE_DEBUG, "PPTopicDissector tagging topicRecord with %@ language.", buf, 0xCu);
        }
      }
    }
  }

  v73 = v29;
  [v77 allValues];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v96 = 0u;
  v82 = [obj countByEnumeratingWithState:&v93 objects:v113 count:16];
  if (v82)
  {
    v81 = *v94;
    do
    {
      v44 = 0;
      do
      {
        if (*v94 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v84 = v44;
        v45 = *(*(&v93 + 1) + 8 * v44);
        v46 = pp_default_log_handle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          topics = [v45 topics];
          v48 = [topics count];
          v49 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v45, "topicAlgorithm")}];
          *buf = 134218242;
          v110 = v48;
          v111 = 2112;
          v112 = v49;
          _os_log_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEFAULT, "PPTopicDissector detected %lu topics with algorithm %@.", buf, 0x16u);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v83 = v45;
        topics2 = [v45 topics];
        v51 = [topics2 countByEnumeratingWithState:&v89 objects:v108 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v90;
          do
          {
            v54 = 0;
            do
            {
              if (*v90 != v53)
              {
                objc_enumerationMutation(topics2);
              }

              v55 = *(*(&v89 + 1) + 8 * v54);
              v56 = pp_default_log_handle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                item = [v55 item];
                topicIdentifier = [item topicIdentifier];
                *buf = 138739971;
                v110 = topicIdentifier;
                _os_log_debug_impl(&dword_23224A000, v56, OS_LOG_TYPE_DEBUG, "  QID: %{sensitive}@", buf, 0xCu);
              }

              ++v54;
            }

            while (v52 != v54);
            v52 = [topics2 countByEnumeratingWithState:&v89 objects:v108 count:16];
          }

          while (v52);
        }

        v59 = pp_default_log_handle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          entities = [v83 entities];
          v61 = [entities count];
          v62 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v83, "entityAlgorithm")}];
          *buf = 134218242;
          v110 = v61;
          v111 = 2112;
          v112 = v62;
          _os_log_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEFAULT, "PPTopicDissector detected %lu named entities with algorithm %@.", buf, 0x16u);
        }

        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        entities2 = [v83 entities];
        v64 = [entities2 countByEnumeratingWithState:&v85 objects:v107 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v86;
          do
          {
            v67 = 0;
            do
            {
              if (*v86 != v66)
              {
                objc_enumerationMutation(entities2);
              }

              v68 = *(*(&v85 + 1) + 8 * v67);
              v69 = pp_default_log_handle();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                item2 = [v68 item];
                name = [item2 name];
                *buf = 138739971;
                v110 = name;
                _os_log_debug_impl(&dword_23224A000, v69, OS_LOG_TYPE_DEBUG, "  QID: %{sensitive}@", buf, 0xCu);
              }

              ++v67;
            }

            while (v65 != v67);
            v65 = [entities2 countByEnumeratingWithState:&v85 objects:v107 count:16];
          }

          while (v65);
        }

        v44 = v84 + 1;
      }

      while (v84 + 1 != v82);
      v82 = [obj countByEnumeratingWithState:&v93 objects:v113 count:16];
    }

    while (v82);
  }

  return obj;
}

void __116__PPTopicDissector_topicsInText_isPlainText_source_cloudSync_language_topicAlgorithms_namedEntityAlgorithms_weight___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v19 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"TP_%lu", a4];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    [v11 setTopics:v12];

    v13 = objc_opt_new();
    [v11 setTopicsExactMatchesInSourceText:v13];

    [v11 setSource:*(a1 + 40)];
    [v11 setTopicAlgorithm:a4];
    [v11 setCloudSync:*(a1 + 56)];
    [v11 setSentimentScore:*(a1 + 48)];
    v14 = *(a1 + 32);
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"TP_%lu", a4];
    [v14 setObject:v11 forKeyedSubscript:v15];
  }

  v16 = [v11 topics];
  v17 = [v16 arrayByAddingObject:v19];
  [v11 setTopics:v17];

  v18 = [v11 topicsExactMatchesInSourceText];
  [v18 addObject:v7];

  objc_autoreleasePoolPop(v8);
}

void __116__PPTopicDissector_topicsInText_isPlainText_source_cloudSync_language_topicAlgorithms_namedEntityAlgorithms_weight___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NE_%lu", a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    [v8 setEntities:v9];

    [v8 setSource:*(a1 + 40)];
    [v8 setEntityAlgorithm:a3];
    [v8 setCloudSync:*(a1 + 56)];
    [v8 setSentimentScore:*(a1 + 48)];
    v10 = *(a1 + 32);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NE_%lu", a3];
    [v10 setObject:v8 forKeyedSubscript:v11];
  }

  v12 = [v8 entities];
  v13 = [v12 arrayByAddingObject:v14];
  [v8 setEntities:v13];

  objc_autoreleasePoolPop(v5);
}

- (id)extractionsFromContextKitWithText:(id)text isPlainText:(BOOL)plainText bundleId:(id)id language:(id)language weight:(double)weight
{
  plainTextCopy = plainText;
  textCopy = text;
  idCopy = id;
  languageCopy = language;
  newRequest = [(CKContextClient *)self->_contextClient newRequest];
  [newRequest setText:textCopy];
  v16 = MEMORY[0x277CBEAF8];
  languageCode = languageCopy;
  if (!languageCopy)
  {
    id = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [id languageCode];
  }

  v18 = [v16 componentsFromLocaleIdentifier:languageCode];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  [newRequest setLanguageTag:v19];

  if (!languageCopy)
  {
  }

  [newRequest setTextIsRaw:!plainTextCopy];
  v20 = dispatch_semaphore_create(0);
  v21 = objc_opt_new();
  *(v21 + 8) = 0;
  v22 = objc_opt_new();
  v23 = *(v21 + 16);
  *(v21 + 16) = v22;

  v24 = objc_opt_new();
  v25 = *(v21 + 24);
  *(v21 + 24) = v24;

  v26 = objc_opt_new();
  v27 = *(v21 + 32);
  *(v21 + 32) = v26;

  v28 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v21];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke;
  v42[3] = &unk_278972208;
  v29 = idCopy;
  v43 = v29;
  v48 = plainTextCopy;
  v30 = v28;
  v44 = v30;
  weightCopy = weight;
  v31 = languageCopy;
  v45 = v31;
  v32 = v20;
  v46 = v32;
  [newRequest executeWithReply:v42];
  [MEMORY[0x277D425A0] waitForSemaphore:v32 timeoutSeconds:0 onAcquire:&__block_literal_global_140 onTimeout:3.0];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2906;
  v40 = __Block_byref_object_dispose__2907;
  v41 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_141;
  v35[3] = &unk_278972230;
  v35[4] = &v36;
  [v30 runWithLockAcquired:v35];
  v33 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v33;
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v4 = [v3 error];

  if (v4)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v33 = [v3 error];
      *buf = 138412290;
      v47 = v33;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "ContextKit error: %@", buf, 0xCu);
    }

    v6 = [v3 error];
    if ([v6 code] == 4)
    {
      v7 = 0;
      v8 = 0;
LABEL_24:

LABEL_26:
      v18 = +[PPLocalTopicStore defaultStore];
      [v18 logDonationErrorForReason:v8 errorCode:v7 source:*(a1 + 32)];
      goto LABEL_27;
    }

    v19 = [v3 error];
    v20 = [v19 code] == 7;

    if (!v20)
    {
      v6 = [v3 error];
      v7 = [v6 code];
      v8 = 3;
      goto LABEL_24;
    }

LABEL_25:
    v7 = 0;
    v8 = 0;
    goto LABEL_26;
  }

  v9 = [v3 results];
  if (!v9 || ([v3 results], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count") == 0, v10, v9, v11))
  {
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "nil or empty results received from ContextKit", buf, 2u);
    }

    if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D3A698]])
    {
      v22 = *(a1 + 72);
      v23 = [v3 error];
      v6 = v23;
      if (v22)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v7 = [v23 code];
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v12 = pp_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v3 results];
    v14 = [v13 count];
    *buf = 134217984;
    v47 = v14;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "got %lu results from ContextKit", buf, 0xCu);
  }

  v15 = pp_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v3 debug];
    *buf = 138739971;
    v47 = v34;
    _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "ContextKit debug info: %{sensitive}@", buf, 0xCu);
  }

  v16 = [v3 results];
  v17 = ([v16 count] & 0xFFFFFFFFFFFF0000) != 0;

  if (v17)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "ignoring excessive results returned from ContextKit.", buf, 2u);
    }
  }

  else
  {
    v24 = [v3 results];
    v25 = [v24 count];

    v26 = +[PPConfiguration sharedInstance];
    [v26 halfValuePosition];
    v28 = v27;

    v29 = *(a1 + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_129;
    v35[3] = &unk_2789721E0;
    v36 = v3;
    v38 = &v42;
    v30 = *(a1 + 64);
    v39 = v28;
    v40 = v30;
    v41 = v25;
    v37 = *(a1 + 48);
    [v29 runWithLockAcquired:v35];
    v31 = pp_default_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v43 + 12);
      *buf = 134217984;
      v47 = v32;
      _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "processed %lu results from ContextKit", buf, 0xCu);
    }

    v18 = v36;
  }

LABEL_27:

  dispatch_semaphore_signal(*(a1 + 56));
  _Block_object_dispose(&v42, 8);
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_141(uint64_t a1, _BYTE *a2)
{
  a2[8] = 1;
  v3 = a2;
  v4 = [PPContextKitResultContainer alloc];
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = *(v3 + 4);

  v8 = v6;
  v9 = v5;
  v10 = v7;
  if (v4)
  {
    v14.receiver = v4;
    v14.super_class = PPContextKitResultContainer;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    v4 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_topics, v6);
      objc_storeStrong(&v4->_namedEntities, v5);
      objc_storeStrong(&v4->_topicsExactMatchesInSourceText, v7);
    }
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v4;
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_138(uint64_t a1)
{
  v1 = pp_default_log_handle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_23224A000, v1, OS_LOG_TYPE_ERROR, "Timeout waiting for ContextKit response.", v2, 2u);
  }
}

void __91__PPTopicDissector_extractionsFromContextKitWithText_isPlainText_bundleId_language_weight___block_invoke_129(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(v3 + 8) == 1)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "Exceeded time limit to process ContextKit extractions. Stopping.", buf, 2u);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [*(a1 + 32) results];
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      obj = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * v8);
          v10 = pp_default_log_handle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v9 title];
            v23 = [v9 topicId];
            v24 = [v9 category];
            *buf = 138740483;
            v31 = v22;
            v32 = 2117;
            v33 = v23;
            v34 = 2117;
            v35 = v24;
            _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "ContextKit title: %{sensitive}@, qid: %{sensitive}@, category: %{sensitive}@", buf, 0x20u);
          }

          v11 = [v9 topicId];

          LOWORD(v12) = *(*(*(a1 + 48) + 8) + 24);
          v13 = *(a1 + 56) / (*(a1 + 56) + v12);
          if (v11)
          {
            v14 = objc_alloc(MEMORY[0x277D3A530]);
            v15 = [v9 topicId];
            v16 = [v14 initWithTopicIdentifier:v15];

            v17 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v16 score:*(*(*(a1 + 48) + 8) + 24) resultPosition:*(a1 + 72) resultCount:v13 * *(a1 + 64)];
            [v3[2] addObject:v17];
            v18 = v3[4];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isExactMatch")}];
            [v18 addObject:v19];
          }

          else
          {
            v20 = objc_alloc(MEMORY[0x277D3A420]);
            v21 = [v9 title];
            v16 = [v20 initWithName:v21 category:0 language:*(a1 + 40)];

            v17 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v16 score:*(*(*(a1 + 48) + 8) + 24) resultPosition:*(a1 + 72) resultCount:v13 * *(a1 + 64)];
            [v3[3] addObject:v17];
          }

          ++*(*(*(a1 + 48) + 8) + 24);
          ++v8;
        }

        while (v6 != v8);
        v4 = obj;
        v6 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v6);
    }
  }
}

- (PPTopicDissector)init
{
  if (init__pasOnceToken4 != -1)
  {
    dispatch_once(&init__pasOnceToken4, &__block_literal_global_2922);
  }

  v4 = init__pasExprOnceResult;
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPTopicDissector.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"contextClient"}];
  }

  v5 = [(PPTopicDissector *)self initWithContextClient:v4];

  return v5;
}

void __24__PPTopicDissector_init__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CFC738] clientWithDefaultRequestType:2];
  v2 = init__pasExprOnceResult;
  init__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (PPTopicDissector)initWithContextClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = PPTopicDissector;
  v6 = [(PPTopicDissector *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextClient, client);
    v8 = +[PPTextToTopicTransform sharedInstance];
    transform = v7->_transform;
    v7->_transform = v8;
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken14 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken14, &__block_literal_global_144);
  }

  v3 = sharedInstance__pasExprOnceResult_2939;

  return v3;
}

void __34__PPTopicDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_2939;
  sharedInstance__pasExprOnceResult_2939 = v1;

  objc_autoreleasePoolPop(v0);
}

@end