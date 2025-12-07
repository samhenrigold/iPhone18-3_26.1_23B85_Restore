@interface PPCollaborativeFilteringSampler
- (BOOL)constructAndSendMessageForSamplingRate:(double)rate shouldContinueBlock:(id)block error:(id *)error;
- (PPCollaborativeFilteringSampler)init;
- (PPCollaborativeFilteringSampler)initWithSamplingWeightTrie:(id)trie;
- (id)_weightedSampleFeedbackItems:(id)items;
- (unsigned)_probabilityForItemString:(id)string clientIdentifier:(id)identifier;
@end

@implementation PPCollaborativeFilteringSampler

- (BOOL)constructAndSendMessageForSamplingRate:(double)rate shouldContinueBlock:(id)block error:(id *)error
{
  v94 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([MEMORY[0x277D3A578] yesWithProbability:rate])
  {
    v8 = +[PPLocalTopicStore defaultStore];
    v9 = objc_opt_new();
    v10 = [v8 rankedTopicsWithQuery:v9 error:error];

    if (v10)
    {
      v72 = [v10 _pas_shuffledArrayUsingRng:0];

      if ((blockCopy[2]() & 1) == 0)
      {
        v46 = pp_default_log_handle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring snapshot", buf, 2u);
        }

        v70 = 0;
        goto LABEL_50;
      }

      v11 = objc_opt_new();
      pendingTopicFeedback = [v11 pendingTopicFeedback];

      v73 = [(PPCollaborativeFilteringSampler *)self _weightedSampleFeedbackItems:pendingTopicFeedback];
      v12 = +[PPTrialWrapper sharedInstance];
      concatenatedTreatmentNames = [v12 concatenatedTreatmentNames];
      _pas_stringBackedByUTF8CString = [concatenatedTreatmentNames _pas_stringBackedByUTF8CString];

      v14 = +[PPConfiguration sharedInstance];
      LODWORD(concatenatedTreatmentNames) = [v14 portraitAnalyticsMaximumNumberOfRecords];

      if (concatenatedTreatmentNames)
      {
        v15 = 0;
        while (1)
        {
          v16 = objc_autoreleasePoolPush();
          if ((blockCopy[2]() & 1) == 0)
          {
            break;
          }

          if (v15 == [v72 count])
          {
            objc_autoreleasePoolPop(v16);
            goto LABEL_29;
          }

          v17 = objc_opt_new();
          if (v73)
          {
            clientIdentifier = [v73 clientIdentifier];

            if (clientIdentifier)
            {
              clientIdentifier2 = [v73 clientIdentifier];
              _pas_stringBackedByUTF8CString2 = [clientIdentifier2 _pas_stringBackedByUTF8CString];
              [v17 setObject:_pas_stringBackedByUTF8CString2 forKeyedSubscript:@"clientIdentifier"];
            }

            feedbackItems = [v73 feedbackItems];
            firstObject = [feedbackItems firstObject];
            itemString = [firstObject itemString];

            if (itemString)
            {
              feedbackItems2 = [v73 feedbackItems];
              firstObject2 = [feedbackItems2 firstObject];
              itemString2 = [firstObject2 itemString];
              _pas_stringBackedByUTF8CString3 = [itemString2 _pas_stringBackedByUTF8CString];
              [v17 setObject:_pas_stringBackedByUTF8CString3 forKeyedSubscript:@"clientTopic"];
            }

            feedbackItems3 = [v73 feedbackItems];
            firstObject3 = [feedbackItems3 firstObject];
            itemFeedbackType = [firstObject3 itemFeedbackType];

            if (itemFeedbackType)
            {
              v31 = MEMORY[0x277CCABB0];
              feedbackItems4 = [v73 feedbackItems];
              firstObject4 = [feedbackItems4 firstObject];
              v34 = [v31 numberWithUnsignedInt:{objc_msgSend(firstObject4, "itemFeedbackType")}];
              [v17 setObject:v34 forKeyedSubscript:@"engagementType"];
            }
          }

          [v17 setObject:_pas_stringBackedByUTF8CString forKeyedSubscript:@"activeTreatments"];
          v35 = [v72 objectAtIndexedSubscript:v15];
          item = [v35 item];
          topicIdentifier = [item topicIdentifier];
          _pas_stringBackedByUTF8CString4 = [topicIdentifier _pas_stringBackedByUTF8CString];
          [v17 setObject:_pas_stringBackedByUTF8CString4 forKeyedSubscript:@"topic"];

          v39 = MEMORY[0x277CCABB0];
          v40 = [v72 objectAtIndexedSubscript:v15];
          [v40 score];
          LODWORD(v42) = vcvtmd_s64_f64(v41 * 5.0);
          v43 = [v39 numberWithInt:v42];
          [v17 setObject:v43 forKeyedSubscript:@"score"];

          AnalyticsSendEvent();
          objc_autoreleasePoolPop(v16);
          v44 = +[PPConfiguration sharedInstance];
          ++v15;
          LODWORD(v43) = [v44 portraitAnalyticsMaximumNumberOfRecords];

          if (v15 >= v43)
          {
            goto LABEL_29;
          }
        }

        v47 = pp_default_log_handle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring snapshot in loop.", buf, 2u);
        }

        objc_autoreleasePoolPop(v16);
        v70 = 0;
        goto LABEL_49;
      }

LABEL_29:
      v48 = objc_opt_new();
      v49 = [@"PersonalizationPortrait" copy];
      [v48 setCaller:v49];

      v50 = dispatch_group_create();
      dispatch_group_enter(v50);
      *buf = 0;
      v82 = buf;
      v83 = 0x3032000000;
      v84 = __Block_byref_object_copy__6825;
      v85 = __Block_byref_object_dispose__6826;
      v86 = 0;
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __100__PPCollaborativeFilteringSampler_constructAndSendMessageForSamplingRate_shouldContinueBlock_error___block_invoke;
      v78[3] = &unk_2789760B8;
      v80 = buf;
      v51 = v50;
      v79 = v51;
      v66 = v48;
      [v48 makeRequestWithCompletion:v78];
      v67 = v51;
      v52 = [MEMORY[0x277D425A0] waitForGroup:v51 timeoutSeconds:8.0];
      v70 = blockCopy[2]();
      if (v70)
      {
        if (v52 == 1 || !*(v82 + 5))
        {
          v70 = 0;
          goto LABEL_48;
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v53 = *(v82 + 5);
        v54 = [v53 countByEnumeratingWithState:&v74 objects:v93 count:16];
        if (v54)
        {
          v55 = *v75;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v75 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v74 + 1) + 8 * i);
              v58 = objc_autoreleasePoolPush();
              v59 = pp_default_log_handle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                v63 = [v57 ID];
                name = [v57 name];
                *v89 = 138740227;
                v90 = v63;
                v91 = 2117;
                v92 = name;
                _os_log_debug_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEBUG, "PPMaintenance: TV app favorite: %{sensitive}@: \t\t %{sensitive}@", v89, 0x16u);
              }

              v60 = [v57 ID];

              if (v60)
              {
                v87 = @"sportsFavorite";
                v61 = [v57 ID];
                v88 = v61;
                v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                AnalyticsSendEvent();
              }

              objc_autoreleasePoolPop(v58);
            }

            v54 = [v53 countByEnumeratingWithState:&v74 objects:v93 count:16];
          }

          while (v54);
        }
      }

      else
      {
        v53 = pp_default_log_handle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *v89 = 0;
          _os_log_debug_impl(&dword_23224A000, v53, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring WLKFavorite request for snapshot.", v89, 2u);
        }
      }

LABEL_48:
      _Block_object_dispose(buf, 8);

LABEL_49:
LABEL_50:
      v45 = v72;
      goto LABEL_51;
    }

    v45 = pp_default_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v45, OS_LOG_TYPE_ERROR, "PPMaintenance: unable to fetch ranked topics.", buf, 2u);
    }

    v70 = 0;
  }

  else
  {
    pp_default_log_handle();
    v45 = v70 = 1;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v70 = 1;
      _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_INFO, "Skipping snapshot sampling.", buf, 2u);
    }
  }

LABEL_51:

  return v70;
}

void __100__PPCollaborativeFilteringSampler_constructAndSendMessageForSamplingRate_shouldContinueBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMaintenance: Enters favRequest completion block.", &v11, 2u);
  }

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to make WLKFavoritesRequest: %@", &v11, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_weightedSampleFeedbackItems:(id)items
{
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (![itemsCopy count])
  {
    v25 = 0;
    goto LABEL_26;
  }

  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v27 = itemsCopy;
    obj = v5;
    v8 = 0;
    v9 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        feedbackItems = [v11 feedbackItems];
        firstObject = [feedbackItems firstObject];
        itemString = [firstObject itemString];

        if (itemString)
        {
          clientIdentifier = [v11 clientIdentifier];
          v17 = [(PPCollaborativeFilteringSampler *)self _probabilityForItemString:itemString clientIdentifier:clientIdentifier];

          v8 += v17;
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
          [v4 addObject:v18];
        }

        else
        {
          [v4 addObject:&unk_284783C60];
          v18 = pp_default_log_handle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPCollaborativeFilteringSampler: found feedback without item string.", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);

    if (!v8)
    {
      v25 = 0;
LABEL_24:
      itemsCopy = v27;
      goto LABEL_25;
    }

    v19 = objc_opt_new();
    next = [v19 next];

    if ([v4 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = next % v8;
      while (1)
      {
        v24 = [v4 objectAtIndexedSubscript:v21];
        v22 += [v24 intValue];

        if (v22 >= v23)
        {
          break;
        }

        if (++v21 >= [v4 count])
        {
          goto LABEL_18;
        }
      }

      v25 = [obj objectAtIndexedSubscript:v21];
      goto LABEL_24;
    }

LABEL_18:
    v5 = pp_default_log_handle();
    itemsCopy = v27;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPCollaborativeFilteringSampler: sampling identified no items", buf, 2u);
    }
  }

  v25 = 0;
LABEL_25:

LABEL_26:

  return v25;
}

- (unsigned)_probabilityForItemString:(id)string clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  samplingWeightTrie = self->_samplingWeightTrie;
  v8 = MEMORY[0x277CCACA8];
  stringCopy = string;
  stringCopy = [[v8 alloc] initWithFormat:@"%@:%@", identifierCopy, stringCopy];

  v11 = [(_PASCFBurstTrie *)samplingWeightTrie payloadForString:stringCopy];
  if (!v11)
  {
    v12 = self->_samplingWeightTrie;
    identifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:*", identifierCopy];
    v14 = [(_PASCFBurstTrie *)v12 payloadForString:identifierCopy];

    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = 100;
    }
  }

  return v11;
}

- (PPCollaborativeFilteringSampler)init
{
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [v3 filepathForFactor:@"collaborativeFilteringWeights.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v4];
    self = [(PPCollaborativeFilteringSampler *)self initWithSamplingWeightTrie:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPCollaborativeFilteringSampler)initWithSamplingWeightTrie:(id)trie
{
  trieCopy = trie;
  v9.receiver = self;
  v9.super_class = PPCollaborativeFilteringSampler;
  v6 = [(PPCollaborativeFilteringSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_samplingWeightTrie, trie);
  }

  return v7;
}

@end