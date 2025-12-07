@interface MSParsecSearchSession
+ (OS_os_log)log;
+ (id)sharedSession;
- (MSParsecSearchSession)init;
- (id)_categoryOrder;
- (id)_sectionFeedbackForBundleIdentifier:(id)identifier results:(id)results;
- (void)reportDidGoToCommittedSearch;
- (void)reportFeedback:(id)feedback;
- (void)reportInstantAnswerButtonSelected:(id)selected cardSectionID:(id)d command:(id)command;
- (void)reportInstantAnswerCardSelected:(id)selected cardSectionID:(id)d;
- (void)reportLocalSearchCancelled;
- (void)reportLocalSearchEnded;
- (void)reportMessageListResultsFetched:(id)fetched topHitResults:(id)results instantAnswerResult:(id)result isFinished:(BOOL)finished;
- (void)reportMessageResultEngaged:(id)engaged engagementAction:(int64_t)action;
- (void)reportMessageResultsVisible:(id)visible latencyMs:(id)ms;
- (void)reportQueryClearedEvent:(int64_t)event;
- (void)reportQueryWithRestrictedComponents:(id)components triggerEvent:(unint64_t)event searchType:(unint64_t)type hasCurrentMailboxScope:(BOOL)scope searchViewAppeared:(BOOL)appeared languages:(id)languages;
- (void)reportRankingFeedbackForSuggestions:(id)suggestions;
- (void)reportSearchEndedEvent:(int64_t)event;
- (void)reportSearchViewAppeared:(BOOL)appeared currentMailboxScope:(BOOL)scope languages:(id)languages;
- (void)reportSuggestionSelected:(id)selected;
- (void)reportSuggestionsVisible:(id)visible latencyMs:(id)ms;
- (void)reportTopHitSelected:(id)selected;
- (void)sendLogsToSettings;
@end

@implementation MSParsecSearchSession

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MSParsecSearchSession_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __28__MSParsecSearchSession_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (id)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    +[MSParsecSearchSession sharedSession];
  }

  v3 = sharedSession_sharedSession;

  return v3;
}

void __38__MSParsecSearchSession_sharedSession__block_invoke()
{
  v0 = objc_alloc_init(MSParsecSearchSession);
  v1 = sharedSession_sharedSession;
  sharedSession_sharedSession = v0;
}

- (MSParsecSearchSession)init
{
  v13.receiver = self;
  v13.super_class = MSParsecSearchSession;
  v2 = [(MSParsecSearchSession *)&v13 init];
  if (v2)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v3 = getPARSessionConfigurationClass_softClass;
    v22 = getPARSessionConfigurationClass_softClass;
    if (!getPARSessionConfigurationClass_softClass)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getPARSessionConfigurationClass_block_invoke;
      v17 = &unk_27985B7F0;
      v18 = &v19;
      __getPARSessionConfigurationClass_block_invoke(&v14);
      v3 = v20[3];
    }

    v4 = v3;
    _Block_object_dispose(&v19, 8);
    v5 = [[v3 alloc] initWithId:@"com.apple.mail" userAgent:@"Mail/1"];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = getPARSessionClass_softClass;
    v22 = getPARSessionClass_softClass;
    if (!getPARSessionClass_softClass)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getPARSessionClass_block_invoke;
      v17 = &unk_27985B7F0;
      v18 = &v19;
      __getPARSessionClass_block_invoke(&v14);
      v6 = v20[3];
    }

    v7 = v6;
    _Block_object_dispose(&v19, 8);
    v8 = [v6 sharedPARSessionWithConfiguration:v5];
    session = v2->_session;
    v2->_session = v8;

    v2->_currentQueryID = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentFeedback = v2->_currentFeedback;
    v2->_currentFeedback = v10;
  }

  return v2;
}

- (void)sendLogsToSettings
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[MSParsecSearchSession log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentFeedback = [(MSParsecSearchSession *)self currentFeedback];
    v6 = 138412290;
    v7 = currentFeedback;
    _os_log_impl(&dword_257F8E000, v3, OS_LOG_TYPE_DEFAULT, "Reporting feedback to settings %@", &v6, 0xCu);
  }

  currentFeedback2 = [(MSParsecSearchSession *)self currentFeedback];
  [currentFeedback2 removeAllObjects];
}

- (void)reportFeedback:(id)feedback
{
  v13 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  session = [(MSParsecSearchSession *)self session];
  [session reportFeedback:feedbackCopy queryId:self->_currentQueryID];

  currentFeedback = [(MSParsecSearchSession *)self currentFeedback];
  [currentFeedback addObject:feedbackCopy];

  v7 = +[MSParsecSearchSession log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    currentQueryID = self->_currentQueryID;
    v9 = 134218242;
    v10 = currentQueryID;
    v11 = 2112;
    v12 = feedbackCopy;
    _os_log_impl(&dword_257F8E000, v7, OS_LOG_TYPE_INFO, "Reporting queryID: %lld feedback: %@", &v9, 0x16u);
  }
}

- (void)reportSearchViewAppeared:(BOOL)appeared currentMailboxScope:(BOOL)scope languages:(id)languages
{
  scopeCopy = scope;
  appearedCopy = appeared;
  languagesCopy = languages;
  v8 = objc_alloc(MEMORY[0x277D4C5E0]);
  if (appearedCopy)
  {
    v9 = 9;
  }

  else
  {
    v9 = 26;
  }

  v10 = [v8 initWithEvent:v9];
  if (appearedCopy)
  {
    ++self->_currentQueryID;
  }

  [(MSParsecSearchSession *)self reportFeedback:v10];
  if (appearedCopy)
  {
    [(MSParsecSearchSession *)self reportQueryWithRestrictedComponents:MEMORY[0x277CBEBF8] triggerEvent:9 searchType:1 hasCurrentMailboxScope:scopeCopy searchViewAppeared:1 languages:languagesCopy];
  }
}

- (void)reportQueryWithRestrictedComponents:(id)components triggerEvent:(unint64_t)event searchType:(unint64_t)type hasCurrentMailboxScope:(BOOL)scope searchViewAppeared:(BOOL)appeared languages:(id)languages
{
  scopeCopy = scope;
  v38 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  languagesCopy = languages;
  currentLocalSearchFeedback = [(MSParsecSearchSession *)self currentLocalSearchFeedback];

  if (currentLocalSearchFeedback)
  {
    [(MSParsecSearchSession *)self reportLocalSearchCancelled];
  }

  if (!appeared)
  {
    ++self->_currentQueryID;
  }

  v17 = [MSParsecSearchSessionQueryComponent _structuredQueryForComponents:componentsCopy hasCurrentMailboxScope:scopeCopy languages:languagesCopy];
  v18 = +[MSParsecSearchSession log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    indexState = [(MSParsecSearchSession *)self indexState];
    [MSParsecSearchSession reportQueryWithRestrictedComponents:indexState triggerEvent:v37 searchType:v18 hasCurrentMailboxScope:? searchViewAppeared:? languages:?];
  }

  v20 = [objc_alloc(MEMORY[0x277D4C658]) initWithInput:v17 triggerEvent:event searchType:type indexType:0 queryId:self->_currentQueryID];
  [v20 setIsSemanticSearchEligible:EMIsGreymatterSupported()];
  v21 = objc_alloc_init(MEMORY[0x277D4C3D8]);
  v22 = MEMORY[0x277CCABB0];
  indexState2 = [(MSParsecSearchSession *)self indexState];
  v24 = [v22 numberWithInteger:{objc_msgSend(indexState2, "percentMessagesIndexed")}];
  [v21 setPercentMessagesIndexed:v24];

  v25 = MEMORY[0x277CCABB0];
  indexState3 = [(MSParsecSearchSession *)self indexState];
  v27 = [v25 numberWithInteger:{objc_msgSend(indexState3, "percentAttachmentsIndexed")}];
  [v21 setPercentAttachmentsIndexed:v27];

  v28 = MEMORY[0x277CCABB0];
  indexState4 = [(MSParsecSearchSession *)self indexState];
  v30 = [v28 numberWithInteger:{objc_msgSend(indexState4, "totalMessageCount")}];
  [v21 setTotalMessageCount:v30];

  v31 = MEMORY[0x277CCABB0];
  indexState5 = [(MSParsecSearchSession *)self indexState];
  v33 = [v31 numberWithInteger:{objc_msgSend(indexState5, "indexedMessageCount")}];
  [v21 setIndexedMessageCount:v33];

  v34 = MEMORY[0x277CCABB0];
  indexState6 = [(MSParsecSearchSession *)self indexState];
  v36 = [v34 numberWithInteger:{objc_msgSend(indexState6, "indexType")}];
  [v21 setSearchIndex:v36];

  [v20 setIndexState:v21];
  [(MSParsecSearchSession *)self setCurrentLocalSearchFeedback:v20];
  [(MSParsecSearchSession *)self reportFeedback:v20];
}

- (void)reportLocalSearchEnded
{
  v13 = *MEMORY[0x277D85DE8];
  currentLocalSearchFeedback = [(MSParsecSearchSession *)self currentLocalSearchFeedback];

  if (currentLocalSearchFeedback)
  {
    v4 = objc_alloc(MEMORY[0x277D4C348]);
    currentLocalSearchFeedback2 = [(MSParsecSearchSession *)self currentLocalSearchFeedback];
    v6 = [v4 initWithStartSearch:currentLocalSearchFeedback2];

    embeddingState = [(MSParsecSearchSession *)self embeddingState];
    if (embeddingState)
    {
      v8 = +[MSParsecSearchSession log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        embeddingState2 = [(MSParsecSearchSession *)self embeddingState];
        v11 = 138543362;
        v12 = embeddingState2;
        _os_log_impl(&dword_257F8E000, v8, OS_LOG_TYPE_INFO, "Sending Parsec embeddingState: %{public}@", &v11, 0xCu);
      }

      feedbackEmbedding = [embeddingState feedbackEmbedding];
      [v6 setEmbeddingState:feedbackEmbedding];

      [(MSParsecSearchSession *)self setEmbeddingState:0];
    }

    [(MSParsecSearchSession *)self setCurrentLocalSearchFeedback:0];
    [(MSParsecSearchSession *)self reportFeedback:v6];
  }
}

- (void)reportLocalSearchCancelled
{
  embeddingState = [(MSParsecSearchSession *)self embeddingState];
  v3 = +[MSParsecSearchEmbeddingState embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:](MSParsecSearchEmbeddingState, "embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:", 2, [embeddingState hasQueryEmbedding], objc_msgSend(embeddingState, "hasKeywordResults"), objc_msgSend(embeddingState, "hasEmbeddingResults"));
  [(MSParsecSearchSession *)self setEmbeddingState:v3];

  [(MSParsecSearchSession *)self reportLocalSearchEnded];
}

- (id)_categoryOrder
{
  if (_categoryOrder_onceToken != -1)
  {
    [MSParsecSearchSession _categoryOrder];
  }

  v3 = _categoryOrder_order;

  return v3;
}

void __39__MSParsecSearchSession__categoryOrder__block_invoke()
{
  v2[19] = *MEMORY[0x277D85DE8];
  v2[0] = @"cr";
  v2[1] = @"tophit";
  v2[2] = @"instantanswer";
  v2[3] = @"suggestion";
  v2[4] = @"people";
  v2[5] = @"date";
  v2[6] = @"subject";
  v2[7] = @"tu";
  v2[8] = @"tf";
  v2[9] = @"tv";
  v2[10] = @"attachment";
  v2[11] = @"mailbox";
  v2[12] = @"free_text";
  v2[13] = @"user_typed";
  v2[14] = @"document";
  v2[15] = @"link";
  v2[16] = @"flag";
  v2[17] = @"sender_contains";
  v2[18] = @"subject_contains";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:19];
  v1 = _categoryOrder_order;
  _categoryOrder_order = v0;
}

- (void)reportRankingFeedbackForSuggestions:(id)suggestions
{
  v19 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (suggestionsCopy)
  {
    [(MSParsecSearchSession *)self _categoryOrder];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v6 = v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [suggestionsCopy objectForKeyedSubscript:{v10, v14}];
          if (v11)
          {
            v12 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:v10 results:v11];
            [v5 addObject:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v5 blendingDuration:0.0];
  [(MSParsecSearchSession *)self reportFeedback:v13];
}

- (void)reportSuggestionsVisible:(id)visible latencyMs:(id)ms
{
  v26 = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  msCopy = ms;
  v19 = [visibleCopy ef_mapSelector:{sel_feedbackResult, visibleCopy}];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = visibleCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          inlineCard = [v13 inlineCard];
          cardSections = [inlineCard cardSections];
          firstObject = [cardSections firstObject];

          if (firstObject)
          {
            cardSectionId = [firstObject cardSectionId];
            [v7 addObject:cardSectionId];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = [objc_alloc(MEMORY[0x277D4C6F0]) initWithResults:v19 triggerEvent:0];
  [v18 setUniqueIdentifiersOfVisibleCardSections:v7];
  if (msCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 setInputToResultShownMs:msCopy];
  }

  [(MSParsecSearchSession *)self reportFeedback:v18];
}

- (void)reportTopHitSelected:(id)selected
{
  feedbackResult = [selected feedbackResult];
  v4 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:feedbackResult triggerEvent:2 destination:0];
  [(MSParsecSearchSession *)self reportFeedback:v4];
}

- (void)reportInstantAnswerCardSelected:(id)selected cardSectionID:(id)d
{
  dCopy = d;
  feedbackResult = [selected feedbackResult];
  v7 = objc_alloc_init(MEMORY[0x277D4C238]);
  [v7 setCardSectionId:dCopy];
  v8 = objc_alloc_init(MEMORY[0x277D4C6E8]);
  v9 = objc_alloc_init(MEMORY[0x277D4C200]);
  v10 = [objc_alloc(MEMORY[0x277D4C2B8]) initWithCommand:v8 cardSection:v7 result:feedbackResult button:v9];
  [v10 setTriggerEvent:2];
  [(MSParsecSearchSession *)self reportFeedback:v10];
}

- (void)reportInstantAnswerButtonSelected:(id)selected cardSectionID:(id)d command:(id)command
{
  dCopy = d;
  commandCopy = command;
  feedbackResult = [selected feedbackResult];
  v10 = objc_alloc_init(MEMORY[0x277D4C238]);
  [v10 setCardSectionId:dCopy];
  v11 = objc_alloc_init(MEMORY[0x277D4C200]);
  v12 = [objc_alloc(MEMORY[0x277D4C2B8]) initWithCommand:commandCopy cardSection:v10 result:feedbackResult button:v11];
  [v12 setTriggerEvent:2];
  [(MSParsecSearchSession *)self reportFeedback:v12];
}

- (void)reportSuggestionSelected:(id)selected
{
  feedbackResult = [selected feedbackResult];
  v4 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:feedbackResult triggerEvent:2 destination:0];
  [(MSParsecSearchSession *)self reportFeedback:v4];
}

- (void)reportDidGoToCommittedSearch
{
  v3 = [objc_alloc(MEMORY[0x277D4C330]) initWithInput:&stru_28692F9D8 endpoint:0];
  [(MSParsecSearchSession *)self reportFeedback:?];
}

- (void)reportMessageListResultsFetched:(id)fetched topHitResults:(id)results instantAnswerResult:(id)result isFinished:(BOOL)finished
{
  finishedCopy = finished;
  v19[1] = *MEMORY[0x277D85DE8];
  fetchedCopy = fetched;
  resultsCopy = results;
  resultCopy = result;
  if (finishedCopy)
  {
    [(MSParsecSearchSession *)self reportLocalSearchEnded];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (resultCopy)
  {
    v19[0] = resultCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v15 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:@"instantanswer" results:v14];

    [v13 addObject:v15];
  }

  if ([resultsCopy count])
  {
    v16 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:@"tophit" results:resultsCopy];
    [v13 addObject:v16];
  }

  if ([fetchedCopy count])
  {
    v17 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:@"com.apple.mail.search.messagelist" results:fetchedCopy];
    [v13 addObject:v17];
  }

  v18 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v13 blendingDuration:0.0];
  [(MSParsecSearchSession *)self reportFeedback:v18];
}

- (id)_sectionFeedbackForBundleIdentifier:(id)identifier results:(id)results
{
  identifierCopy = identifier;
  v6 = [results ef_compactMap:&__block_literal_global_35];
  v7 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v6 section:0 localSectionPosition:0 personalizationScore:0.0];
  v8 = objc_alloc_init(MEMORY[0x277D4C588]);
  [v8 setBundleIdentifier:identifierCopy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v8 setIdentifier:uUIDString];

  [v7 setSection:v8];

  return v7;
}

id __69__MSParsecSearchSession__sectionFeedbackForBundleIdentifier_results___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D4C580]);
  v4 = [v2 feedbackResult];
  v5 = [v3 initWithResult:v4 hiddenResults:0 duplicateResults:0 localResultPosition:0];

  return v5;
}

- (void)reportMessageResultsVisible:(id)visible latencyMs:(id)ms
{
  msCopy = ms;
  v6 = [visible ef_compactMapSelector:sel_feedbackResult];
  v7 = [objc_alloc(MEMORY[0x277D4C6F0]) initWithResults:v6 triggerEvent:0];
  if (msCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 setInputToResultShownMs:msCopy];
  }

  [(MSParsecSearchSession *)self reportFeedback:v7];
}

- (void)reportMessageResultEngaged:(id)engaged engagementAction:(int64_t)action
{
  feedbackResult = [engaged feedbackResult];
  if (action >= 5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSParsecSearchSession.m" lineNumber:352 description:{@"Using undefined MSParsecSearchSessionEngagementAction %ld to create SFResultEngagementFeedback", 0}];

    v7 = 0;
  }

  else
  {
    v7 = qword_257FB28E8[action];
  }

  v9 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:feedbackResult triggerEvent:v7 destination:0];
  [(MSParsecSearchSession *)self reportFeedback:v9];
}

- (void)reportQueryClearedEvent:(int64_t)event
{
  if (event >= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSParsecSearchSession.m" lineNumber:372 description:{@"Using undefined MSParsecSearchSessionClearedEvent %ld to create SFClearInputFeedback", event}];

    v5 = 0;
  }

  else
  {
    v5 = event + 1;
  }

  v8 = [objc_alloc(MEMORY[0x277D4C260]) initWithEvent:v5];
  [(MSParsecSearchSession *)self reportFeedback:?];
}

- (void)reportSearchEndedEvent:(int64_t)event
{
  if (event >= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSParsecSearchSession.m" lineNumber:392 description:{@"Using undefined MSParsecSearchSessionEndEvent %ld to create SFSearchViewDisappearFeedback", event}];

    v5 = 0;
  }

  else
  {
    v5 = qword_257FB2910[event];
  }

  v8 = [objc_alloc(MEMORY[0x277D4C5E8]) initWithEvent:v5];
  [(MSParsecSearchSession *)self reportFeedback:?];
  [(MSParsecSearchSession *)self sendLogsToSettings];
}

- (void)reportQueryWithRestrictedComponents:(os_log_t)log triggerEvent:searchType:hasCurrentMailboxScope:searchViewAppeared:languages:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_257F8E000, log, OS_LOG_TYPE_DEBUG, "Sending Parsec indexState: %@", buf, 0xCu);
}

@end