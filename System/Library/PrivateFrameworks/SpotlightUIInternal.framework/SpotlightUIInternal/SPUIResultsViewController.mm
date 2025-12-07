@interface SPUIResultsViewController
- (BOOL)_hasRealSuggestions;
- (BOOL)isResultOriginalSearchSuggestion:(id)suggestion;
- (BOOL)searchAgentHasWindow:(id)window;
- (CGSize)contentSize;
- (CGSize)oldContentSize;
- (SFSearchResult)actualSearchSuggestionResult;
- (SPUIResultsViewController)initWithSearchModel:(id)model searchEntity:(id)entity;
- (SearchUIBackgroundColorDelegate)backgroundColorDelegate;
- (UISearchToken)searchToken;
- (id)asTypedSearchResult;
- (id)makeAsYouTypeSuggestionSearchResultWithSearchString:(id)string detailText:(id)text suggestionIdentifier:(id)identifier queryContext:(id)context;
- (id)restorationContext;
- (id)searchUIBackgroundColor;
- (unint64_t)currentDeviceAuthenticationState;
- (void)_pushSectionsUpdate;
- (void)changeTextFieldsReturnKeyType:(int64_t)type withGoTakeoverResult:(id)result;
- (void)finishedGettingResults:(BOOL)results;
- (void)forceHighlightForResult:(id)result;
- (void)highlightResultAfterUnmarkingText;
- (void)invalidateContentHeight;
- (void)purgeMemory;
- (void)removeCompletionAndHighlightAsTyped:(BOOL)typed;
- (void)reportFinalResults:(id)results;
- (void)searchAgentClearedResults:(id)results;
- (void)searchAgentUpdatedResults:(id)results;
- (void)searchUpdatedWithString:(id)string tokenEntity:(id)entity queryId:(unint64_t)id wantsCompletions:(BOOL)completions keyboardLanguage:(id)language;
- (void)setRestorationContext:(id)context;
- (void)setUseLoadingView:(BOOL)view;
- (void)unhideLoadingView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SPUIResultsViewController

- (id)searchUIBackgroundColor
{
  searchEntity = [(SPUIResultsViewController *)self searchEntity];
  entityBackgroundColor = [searchEntity entityBackgroundColor];

  return entityBackgroundColor;
}

- (void)purgeMemory
{
  v3.receiver = self;
  v3.super_class = SPUIResultsViewController;
  [(SearchUIResultsViewController *)&v3 purgeMemory];
  [(SPUIResultsViewController *)self setResultSections:0];
  [(SPUIResultsViewController *)self setSuggestionsSection:0];
}

- (unint64_t)currentDeviceAuthenticationState
{
  v2 = MEMORY[0x277D65D88];
  view = [(SPUIResultsViewController *)self view];
  v4 = [v2 deviceAuthenticationStateForView:view];

  return v4;
}

- (void)_pushSectionsUpdate
{
  v78 = *MEMORY[0x277D85DE8];
  resultSections = [(SPUIResultsViewController *)self resultSections];
  firstObject = [resultSections firstObject];

  results = [firstObject results];
  firstObject2 = [results firstObject];

  delegate = SPBlueButtonBehavior();
  bundleIdentifier = [firstObject bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:*MEMORY[0x277D65CC8]];

  results2 = [firstObject results];
  if ([results2 count] == 1)
  {
    renderHorizontallyWithOtherResultsInCategory = 1;
  }

  else
  {
    renderHorizontallyWithOtherResultsInCategory = [firstObject2 renderHorizontallyWithOtherResultsInCategory];
  }

  noGoTakeover = [firstObject2 noGoTakeover];
  if (delegate != 1 && ((delegate == 0) & renderHorizontallyWithOtherResultsInCategory) == 0)
  {
    if (delegate == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (!v9)
  {
LABEL_12:
    v14 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  delegate = [(SearchUIResultsViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();
  if (v13 & 1) != 0 && (-[SearchUIResultsViewController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), ([v9 optOutOfGoButton]))
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    if ((noGoTakeover & 1) == 0)
    {
      if (v13)
      {
      }

      goto LABEL_28;
    }

    v14 = 1;
  }

LABEL_13:
  asTypedSearchResult = [(SPUIResultsViewController *)self asTypedSearchResult];
  v16 = firstObject2 == asTypedSearchResult && [firstObject2 type] == 29;

  if (v13)
  {
  }

  if (v14)
  {

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_22:
    asTypedSearchResult2 = [(SPUIResultsViewController *)self asTypedSearchResult];
    selfCopy2 = self;
    v19 = 6;
    v20 = 0;
    goto LABEL_29;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_28:
  asTypedSearchResult2 = firstObject2;
  selfCopy2 = self;
  v19 = 1;
  v20 = asTypedSearchResult2;
LABEL_29:
  [(SPUIResultsViewController *)selfCopy2 changeTextFieldsReturnKeyType:v19 withGoTakeoverResult:v20];
  if ([(SPUIResultsViewController *)self hasResultsWaitingToUpdate])
  {
    delegate2 = [(SearchUIResultsViewController *)self delegate];
    [delegate2 willUpdateFromResultsWithHighlightedResult:asTypedSearchResult2 viewController:self];

    [(SPUIResultsViewController *)self setHasResultsWaitingToUpdate:0];
  }

  resultSections2 = [(SPUIResultsViewController *)self resultSections];
  v23 = resultSections2;
  v24 = MEMORY[0x277CBEBF8];
  if (resultSections2)
  {
    v24 = resultSections2;
  }

  v25 = v24;

  searchField = [(SearchUIResultsViewController *)self searchField];
  searchText = [searchField searchText];

  v61 = firstObject2;
  v62 = firstObject;
  v59 = asTypedSearchResult2;
  selfCopy3 = self;
  v58 = searchText;
  if (firstObject2)
  {
    queryId = [firstObject2 queryId];
    if ([searchText length])
    {
      v29 = queryId != [(SPUIResultsViewController *)self previousQueryId];
    }

    else
    {
      v29 = 1;
    }

    v57 = v29;
    [(SPUIResultsViewController *)self setPreviousQueryId:queryId];
  }

  else
  {
    v57 = 1;
  }

  v30 = SPSuggestionDetailTextBehavior();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v25;
  v65 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v65)
  {
    v64 = *v71;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v71 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v70 + 1) + 8 * i);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        results3 = [v32 results];
        v34 = [results3 countByEnumeratingWithState:&v66 objects:v76 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v67;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v67 != v36)
              {
                objc_enumerationMutation(results3);
              }

              v38 = [MEMORY[0x277D4C898] cardSectionsForRenderingResult:*(*(&v66 + 1) + 8 * j)];
              firstObject3 = [v38 firstObject];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                suggestionType = [firstObject3 suggestionType];
                v41 = v30 != 1 || suggestionType == 0;
                v42 = !v41;
                if (!v30 || v42)
                {
                  [firstObject3 setDetailText:0];
                }
              }
            }

            v35 = [results3 countByEnumeratingWithState:&v66 objects:v76 count:16];
          }

          while (v35);
        }
      }

      v65 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v65);
  }

  v43 = [MEMORY[0x277D4C898] cardForRenderingResult:v61];
  backgroundColor = [v43 backgroundColor];

  if (backgroundColor)
  {
    searchEntity = [(SPUIResultsViewController *)selfCopy3 searchEntity];
    entityBackgroundColor = [searchEntity entityBackgroundColor];

    if (!entityBackgroundColor)
    {
      searchEntity2 = [(SPUIResultsViewController *)selfCopy3 searchEntity];
      [searchEntity2 setEntityBackgroundColor:backgroundColor];

      backgroundColorDelegate = [(SPUIResultsViewController *)selfCopy3 backgroundColorDelegate];
      [backgroundColorDelegate didUpdateBackgroundColorForViewController:selfCopy3];
    }
  }

  [(SearchUIResultsViewController *)selfCopy3 updateWithResultSections:obj resetScrollPoint:v57 animated:[(SPUIResultsViewController *)selfCopy3 shouldAnimateUpdates]];
  searchField2 = [(SearchUIResultsViewController *)selfCopy3 searchField];
  isFirstResponder = [searchField2 isFirstResponder];

  v51 = v59;
  if ((isFirstResponder & 1) == 0)
  {

    v51 = 0;
  }

  [(SPUIResultsViewController *)selfCopy3 forceHighlightForResult:v51];
  v52 = [obj count];
  v53 = MEMORY[0x277D65D40];
  v54 = *(MEMORY[0x277D65D40] + 40);
  if (v52)
  {
    if (!v54)
    {
      SPUIInitLogging();
      v54 = *(v53 + 40);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
      v56 = [obj count];
      *buf = 134217984;
      v75 = v56;
      _os_log_impl(&dword_26B837000, v55, OS_LOG_TYPE_DEFAULT, "update with section count %lu", buf, 0xCu);
    }
  }

  else
  {
    if (!v54)
    {
      SPUIInitLogging();
      v54 = *(v53 + 40);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B837000, v54, OS_LOG_TYPE_DEFAULT, "no results", buf, 2u);
    }
  }
}

- (id)asTypedSearchResult
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  suggestionsSection = [(SPUIResultsViewController *)self suggestionsSection];
  results = [suggestionsSection results];

  v4 = [results countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(results);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 type] == 30)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [results countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)unhideLoadingView
{
  loadingView = [(SPUIResultsViewController *)self loadingView];
  loadingState = [loadingView loadingState];

  if (!loadingState)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SPUIResultsViewController_unhideLoadingView__block_invoke;
    v5[3] = &unk_279D06C78;
    v5[4] = self;
    [MEMORY[0x277D4C898] performAnimatableChanges:v5];
  }
}

void __46__SPUIResultsViewController_unhideLoadingView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) loadingView];
  [v1 setAlpha:1.0];
}

- (SPUIResultsViewController)initWithSearchModel:(id)model searchEntity:(id)entity
{
  modelCopy = model;
  entityCopy = entity;
  v14.receiver = self;
  v14.super_class = SPUIResultsViewController;
  v9 = [(SPUIResultsViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    view = [(SPUIResultsViewController *)v9 view];
    layer = [view layer];
    [layer setAllowsGroupOpacity:0];

    [(SearchUIResultsViewController *)v10 setShouldUseInsetRoundedSections:0];
    [(SPUIResultsViewController *)v10 setHasResultsWaitingToUpdate:0];
    [modelCopy setDelegate:v10];
    [modelCopy setMaxUISuggestions:0x7FFFFFFFFFFFFFFFLL];
    objc_storeStrong(&v10->_model, model);
    [(SPUIResultsViewController *)v10 setSearchEntity:entityCopy];
    [(SearchUIResultsViewController *)v10 setRestorationContextClass:objc_opt_class()];
  }

  return v10;
}

- (void)setUseLoadingView:(BOOL)view
{
  self->_useLoadingView = view;
  if (view && ([(SPUIResultsViewController *)self loadingView], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = objc_opt_new();
    [(SPUIResultsViewController *)self setLoadingView:v6];

    view = [(SPUIResultsViewController *)self view];
    loadingView = [(SPUIResultsViewController *)self loadingView];
    [view insertSubview:loadingView atIndex:0];

    v9 = MEMORY[0x277D4C828];
    loadingView2 = [(SPUIResultsViewController *)self loadingView];
    [v9 fillContainerWithView:loadingView2];

    contentScrollView = [(SearchUIResultsViewController *)self contentScrollView];
    [contentScrollView setAlpha:0.0];
  }

  else
  {
    loadingView3 = [(SPUIResultsViewController *)self loadingView];
    [loadingView3 removeFromSuperview];

    [(SPUIResultsViewController *)self setLoadingView:0];
  }
}

- (UISearchToken)searchToken
{
  searchEntity = [(SPUIResultsViewController *)self searchEntity];
  v4 = [SPUISearchHeader tokenFromSearchEntity:searchEntity];

  searchEntity2 = [(SPUIResultsViewController *)self searchEntity];
  tokenText = [searchEntity2 tokenText];
  [v4 setRepresentedObject:tokenText];

  return v4;
}

- (BOOL)isResultOriginalSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  actualSearchSuggestionResult = [(SPUIResultsViewController *)self actualSearchSuggestionResult];

  return actualSearchSuggestionResult == suggestionCopy;
}

- (BOOL)searchAgentHasWindow:(id)window
{
  view = [(SPUIResultsViewController *)self view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (void)searchAgentUpdatedResults:(id)results
{
  v35 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = MEMORY[0x277D65D40];
  v6 = *(MEMORY[0x277D65D40] + 32);
  if (!v6)
  {
    SPUIInitLogging();
    v6 = *(v5 + 32);
  }

  v7 = os_signpost_id_generate(v6);
  v8 = *(v5 + 32);
  if (!v8)
  {
    SPUIInitLogging();
    v8 = *(v5 + 32);
  }

  v9 = v8;
  v10 = v9;
  v11 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "tableUpdate", "", buf, 2u);
  }

  if ([resultsCopy queryPartiallyComplete])
  {
    if (self->_startTime)
    {
      sp_analytics_log_timing();
    }

    self->_startTime = 0;
  }

  else if ([resultsCopy queryComplete])
  {
    [(SPUIResultsViewController *)self finishedGettingResults:1];
  }

  else if (self->_startTime)
  {
    sp_analytics_log_timing();
  }

  sections = [resultsCopy sections];
  if ([resultsCopy wantsCompletions])
  {
    v27 = v7 - 1;
    v28 = v7;
    [(SPUIResultsViewController *)self setSuggestionsSection:0];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = sections;
    v13 = sections;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      v17 = *MEMORY[0x277D65C88];
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          bundleIdentifier = [v19 bundleIdentifier];
          v21 = [bundleIdentifier isEqualToString:v17];

          if (v21)
          {
            [(SPUIResultsViewController *)self setSuggestionsSection:v19];
            goto LABEL_28;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v11 = v27;
    v7 = v28;
    v5 = MEMORY[0x277D65D40];
    sections = v26;
  }

  else
  {
    [(SPUIResultsViewController *)self clearSuggestionSection];
  }

  -[SPUIResultsViewController setQueryJustHasTopHits:](self, "setQueryJustHasTopHits:", [resultsCopy queryJustHasTopHits]);
  if ([resultsCopy queryPartiallyComplete] & 1) != 0 || (objc_msgSend(resultsCopy, "queryComplete"))
  {
    searchThroughSection = [resultsCopy searchThroughSection];
    [(SPUIResultsViewController *)self setSearchThroughSection:searchThroughSection];
  }

  else
  {
    [(SPUIResultsViewController *)self setSearchThroughSection:0];
  }

  [(SPUIResultsViewController *)self setResultSections:sections];
  [(SPUIResultsViewController *)self setHasResultsWaitingToUpdate:1];
  [(SPUIResultsViewController *)self _pushSectionsUpdate];
  if ([resultsCopy queryComplete])
  {
    [(SPUIResultsViewController *)self reportFinalResults:resultsCopy];
  }

  v23 = *(v5 + 32);
  if (!v23)
  {
    SPUIInitLogging();
    v23 = *(v5 + 32);
  }

  v24 = v23;
  v25 = v24;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v25, OS_SIGNPOST_INTERVAL_END, v7, "tableUpdate", " enableTelemetry=YES ", buf, 2u);
  }
}

- (void)finishedGettingResults:(BOOL)results
{
  resultsCopy = results;
  didFinishGettingAllResultsHandler = [(SPUIResultsViewController *)self didFinishGettingAllResultsHandler];

  if (didFinishGettingAllResultsHandler)
  {
    didFinishGettingAllResultsHandler2 = [(SPUIResultsViewController *)self didFinishGettingAllResultsHandler];
    didFinishGettingAllResultsHandler2[2](didFinishGettingAllResultsHandler2, resultsCopy);
  }

  loadingView = [(SPUIResultsViewController *)self loadingView];

  if (loadingView)
  {
    loadingView2 = [(SPUIResultsViewController *)self loadingView];
    [loadingView2 setAlpha:0.0];

    loadingView3 = [(SPUIResultsViewController *)self loadingView];
    [loadingView3 setLoadingState:1];

    loadingViewTimer = [(SPUIResultsViewController *)self loadingViewTimer];
    [loadingViewTimer invalidate];

    contentScrollView = [(SearchUIResultsViewController *)self contentScrollView];
    layer = [contentScrollView layer];
    [layer setAllowsGroupOpacity:0];

    v13[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__SPUIResultsViewController_finishedGettingResults___block_invoke;
    v14[3] = &unk_279D06C78;
    v14[4] = self;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__SPUIResultsViewController_finishedGettingResults___block_invoke_2;
    v13[3] = &unk_279D06C78;
    [MEMORY[0x277D4C898] performAnimatableChanges:v14 animated:1 completion:v13];
  }
}

void __52__SPUIResultsViewController_finishedGettingResults___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentScrollView];
  [v1 setAlpha:1.0];
}

uint64_t __52__SPUIResultsViewController_finishedGettingResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setLoadingView:0];
}

- (void)reportFinalResults:(id)results
{
  resultsCopy = results;
  sections = [(SearchUIResultsViewController *)self sections];
  queryTask = [resultsCopy queryTask];

  searchString = [queryTask searchString];
  [SPUIFeedbackManager resultsDidFinishWithSections:sections withQueryString:searchString];
}

- (void)invalidateContentHeight
{
  [(SPUIResultsViewController *)self setQueryJustHasTopHits:0];
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);

  [(SPUIResultsViewController *)self setOldContentSize:v3, v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = SPUIResultsViewController;
  [(SPUIResultsViewController *)&v9 viewWillAppear:appear];
  loadingView = [(SPUIResultsViewController *)self loadingView];
  loadingState = [loadingView loadingState];

  if (!loadingState)
  {
    loadingView2 = [(SPUIResultsViewController *)self loadingView];
    [loadingView2 setAlpha:0.0];

    loadingViewTimer = [(SPUIResultsViewController *)self loadingViewTimer];
    [loadingViewTimer invalidate];

    [(SPUIResultsViewController *)self setLoadingViewTimer:0];
    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_unhideLoadingView selector:0 userInfo:0 repeats:0.5];
    [(SPUIResultsViewController *)self setLoadingViewTimer:v8];
  }
}

- (void)searchAgentClearedResults:(id)results
{
  [(SearchUIResultsViewController *)self updateWithResultSections:MEMORY[0x277CBEBF8] resetScrollPoint:1];
  [(SPUIResultsViewController *)self setSuggestionsSection:0];
  [(SPUIResultsViewController *)self setResultSections:0];
  [(SPUIResultsViewController *)self setSearchThroughSection:0];
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);

  [(SPUIResultsViewController *)self setOldContentSize:v4, v5];
}

- (SFSearchResult)actualSearchSuggestionResult
{
  suggestionsSection = [(SPUIResultsViewController *)self suggestionsSection];
  results = [suggestionsSection results];
  firstObject = [results firstObject];

  return firstObject;
}

- (id)makeAsYouTypeSuggestionSearchResultWithSearchString:(id)string detailText:(id)text suggestionIdentifier:(id)identifier queryContext:(id)context
{
  v9 = *MEMORY[0x277D4BF28];
  contextCopy = context;
  identifierCopy = identifier;
  textCopy = text;
  stringCopy = string;
  if ([identifierCopy isEqualToString:v9])
  {
    v14 = 6;
  }

  else
  {
    v14 = 14;
  }

  v15 = [objc_alloc(MEMORY[0x277D4C5D8]) initWithIdentifier:identifierCopy suggestion:stringCopy query:stringCopy score:v14 type:1.0];

  [v15 setDetailText:textCopy];
  v16 = [MEMORY[0x277D65D58] buildResultWithSuggestion:v15 queryContext:contextCopy];

  return v16;
}

- (void)searchUpdatedWithString:(id)string tokenEntity:(id)entity queryId:(unint64_t)id wantsCompletions:(BOOL)completions keyboardLanguage:(id)language
{
  completionsCopy = completions;
  v81 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  entityCopy = entity;
  languageCopy = language;
  self->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [(SearchUIResultsViewController *)self setQueryString:stringCopy];
  if (![stringCopy length])
  {
    tokenText = [entityCopy tokenText];
    v16 = [tokenText length];

    if (!v16)
    {
      [(SPUIResultsViewController *)self clearSuggestionSection];
      [(SPUIResultsViewController *)self setResultSections:0];
      [(SPUIResultsViewController *)self setSearchThroughSection:0];
      [(SPUIResultsViewController *)self _pushSectionsUpdate];
      goto LABEL_43;
    }
  }

  if (!completionsCopy)
  {
    [(SPUIResultsViewController *)self clearSuggestionSection];
    goto LABEL_43;
  }

  v17 = objc_opt_new();
  [v17 setSearchString:stringCopy];
  [v17 setKeyboardLanguage:languageCopy];
  [v17 setQueryIdent:id];
  v18 = [(SPUIResultsViewController *)self makeAsYouTypeSuggestionSearchResultWithSearchString:stringCopy detailText:0 suggestionIdentifier:*MEMORY[0x277D4BF28] queryContext:v17];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SUGGESTION_DETAIL_WEB" value:&stru_287C49600 table:@"Search"];

  v74 = [(SPUIResultsViewController *)self makeAsYouTypeSuggestionSearchResultWithSearchString:stringCopy detailText:v20 suggestionIdentifier:*MEMORY[0x277D4BF30] queryContext:v17];
  suggestionsSection = [(SPUIResultsViewController *)self suggestionsSection];

  if (!suggestionsSection)
  {
    v49 = 1;
    goto LABEL_39;
  }

  suggestionsSection2 = [(SPUIResultsViewController *)self suggestionsSection];
  results = [suggestionsSection2 results];
  v24 = [results mutableCopy];

  v25 = [v24 count];
  v72 = v18;
  v71 = v25 == 0;
  v70 = v24;
  if (!v25)
  {
    [v24 addObject:v18];
    [v24 addObject:v74];
    goto LABEL_35;
  }

  v69 = v17;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (!v27)
  {

    goto LABEL_35;
  }

  v28 = v27;
  obj = v26;
  v64 = v20;
  selfCopy = self;
  v66 = languageCopy;
  v67 = entityCopy;
  v63 = stringCopy;
  v29 = 0;
  v30 = *v77;
  v31 = *MEMORY[0x277D4BF00];
  v73 = *MEMORY[0x277D4BF08];
  v32 = -1;
  v33 = -1;
  while (2)
  {
    v34 = 0;
    v68 = v29 + v28;
    do
    {
      if (*v77 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v76 + 1) + 8 * v34);
      resultBundleId = [v35 resultBundleId];
      v37 = [resultBundleId isEqualToString:v31];

      if (v37)
      {
        v33 = v29;
      }

      else
      {
        resultBundleId2 = [v35 resultBundleId];
        v39 = [resultBundleId2 isEqualToString:v73];

        if (v39)
        {
          v40 = [MEMORY[0x277D4C898] cardSectionsForRenderingResult:v35];
          firstObject = [v40 firstObject];

          v42 = [MEMORY[0x277D4C898] cardSectionsForRenderingResult:v74];
          firstObject2 = [v42 firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              detailText = [firstObject detailText];
              text = [detailText text];

              detailText2 = [firstObject2 detailText];
              [detailText2 setText:text];
            }
          }

          v32 = v29;
        }
      }

      if ((v33 & 0x8000000000000000) == 0 && (v32 & 0x8000000000000000) == 0)
      {
        v47 = obj;

        self = selfCopy;
        languageCopy = v66;
        v17 = v69;
        v48 = v72;
        v20 = v64;
LABEL_28:
        v50 = [v47 objectAtIndexedSubscript:v33];
        [(SearchUIResultsViewController *)self replaceResult:v50 withResult:v48];

        highlightedResult = [(SPUIResultsViewController *)self highlightedResult];
        [v47 objectAtIndexedSubscript:v33];
        v53 = v52 = v48;

        if (highlightedResult == v53)
        {
          [(SPUIResultsViewController *)self forceHighlightForResult:v52];
        }

        [v47 replaceObjectAtIndex:v33 withObject:v52];
        entityCopy = v67;
        goto LABEL_31;
      }

      ++v29;
      ++v34;
    }

    while (v28 != v34);
    v28 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
    v29 = v68;
    if (v28)
    {
      continue;
    }

    break;
  }

  v47 = obj;

  languageCopy = v66;
  entityCopy = v67;
  v20 = v64;
  self = selfCopy;
  v17 = v69;
  v48 = v72;
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  stringCopy = v63;
  if ((v32 & 0x8000000000000000) == 0)
  {
    v54 = [obj objectAtIndexedSubscript:v32];
    [(SearchUIResultsViewController *)self replaceResult:v54 withResult:v74];

    [obj replaceObjectAtIndex:v32 withObject:v74];
  }

LABEL_35:
  v55 = v20;
  suggestionsSection3 = [(SPUIResultsViewController *)self suggestionsSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suggestionsSection4 = [(SPUIResultsViewController *)self suggestionsSection];
    mutableDeepCopy = [suggestionsSection4 mutableDeepCopy];
  }

  else
  {
    v59 = objc_alloc(MEMORY[0x277D65848]);
    suggestionsSection4 = [(SPUIResultsViewController *)self suggestionsSection];
    mutableDeepCopy = [v59 initWithSection:suggestionsSection4];
  }

  v60 = mutableDeepCopy;

  [v60 setResults:v70];
  [(SPUIResultsViewController *)self setSuggestionsSection:v60];

  v18 = v72;
  v20 = v55;
  v49 = v71;
LABEL_39:
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  isRunningTest = [mEMORY[0x277D75128] isRunningTest];

  if (v49 && !isRunningTest)
  {
    [(SPUIResultsViewController *)self _pushSectionsUpdate];
  }

LABEL_43:
}

- (CGSize)contentSize
{
  if ([(SPUIResultsViewController *)self queryJustHasTopHits])
  {

    [(SPUIResultsViewController *)self oldContentSize];
  }

  else
  {
    sections = [(SearchUIResultsViewController *)self sections];
    v6 = [sections count];

    if (v6)
    {
      v9.receiver = self;
      v9.super_class = SPUIResultsViewController;
      [(SearchUIResultsViewController *)&v9 contentSize];
    }

    else
    {
      v7 = *MEMORY[0x277CBF3A8];
      v8 = *(MEMORY[0x277CBF3A8] + 8);
    }

    [(SPUIResultsViewController *)self setOldContentSize:v7, v8];
    [(SPUIResultsViewController *)self oldContentSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)_hasRealSuggestions
{
  suggestionsSection = [(SPUIResultsViewController *)self suggestionsSection];
  results = [suggestionsSection results];
  v4 = [results count] != 0;

  return v4;
}

- (void)removeCompletionAndHighlightAsTyped:(BOOL)typed
{
  if (typed)
  {
    asTypedSearchResult = [(SPUIResultsViewController *)self asTypedSearchResult];
    [(SPUIResultsViewController *)self forceHighlightForResult:asTypedSearchResult];
  }

  else
  {
    [(SPUIResultsViewController *)self forceHighlightForResult:0];
  }

  [(SPUIResultsViewController *)self changeTextFieldsReturnKeyType:6 withGoTakeoverResult:0];
}

- (void)setRestorationContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SPUIResultsViewController;
  [(SearchUIResultsViewController *)&v8 setRestorationContext:contextCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sections = [contextCopy sections];
    [(SearchUIResultsViewController *)self setSections:sections];

    searchEntity = [contextCopy searchEntity];
    [(SPUIResultsViewController *)self setSearchEntity:searchEntity];

    searchString = [contextCopy searchString];
    [(SearchUIResultsViewController *)self setQueryString:searchString];
  }
}

- (id)restorationContext
{
  v8.receiver = self;
  v8.super_class = SPUIResultsViewController;
  restorationContext = [(SearchUIResultsViewController *)&v8 restorationContext];
  sections = [(SearchUIResultsViewController *)self sections];
  [restorationContext setSections:sections];

  searchEntity = [(SPUIResultsViewController *)self searchEntity];
  [restorationContext setSearchEntity:searchEntity];

  queryString = [(SearchUIResultsViewController *)self queryString];
  [restorationContext setSearchString:queryString];

  return restorationContext;
}

- (void)highlightResultAfterUnmarkingText
{
  highlightedResult = [(SPUIResultsViewController *)self highlightedResult];
  [(SPUIResultsViewController *)self forceHighlightForResult:highlightedResult];
}

- (void)forceHighlightForResult:(id)result
{
  resultCopy = result;
  if (-[SPUIResultsViewController allowHighlightingWhenInactive](self, "allowHighlightingWhenInactive") || (-[SearchUIResultsViewController delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isActiveViewController:self], v4, v5))
  {
    self->_isHighlighting = 1;
    searchField = [(SearchUIResultsViewController *)self searchField];
    hasMarkedText = [searchField hasMarkedText];

    if ((hasMarkedText & 1) == 0)
    {
      [(SearchUIResultsViewController *)self highlightResult:resultCopy];
    }

    [(SPUIResultsViewController *)self setHighlightedResult:resultCopy];
    self->_isHighlighting = 0;
  }
}

- (void)changeTextFieldsReturnKeyType:(int64_t)type withGoTakeoverResult:(id)result
{
  resultCopy = result;
  if (-[SPUIResultsViewController allowHighlightingWhenInactive](self, "allowHighlightingWhenInactive") || (-[SearchUIResultsViewController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isActiveViewController:self], v6, v7))
  {
    v8 = type == 1 ? resultCopy : 0;
    [(SPUIResultsViewController *)self setGoTakeoverResult:v8];
    searchField = [(SearchUIResultsViewController *)self searchField];
    returnKeyType = [searchField returnKeyType];

    if (returnKeyType != type)
    {
      searchField2 = [(SearchUIResultsViewController *)self searchField];
      [searchField2 setReturnKeyType:type];

      +[SPUITextField updateBlueButton];
    }
  }
}

- (SearchUIBackgroundColorDelegate)backgroundColorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundColorDelegate);

  return WeakRetained;
}

- (CGSize)oldContentSize
{
  objc_copyStruct(v4, &self->_oldContentSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end