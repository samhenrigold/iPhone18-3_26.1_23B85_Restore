@interface BKSearchController
- (BESearchControllerDelegate)delegate;
- (BKSearchController)init;
- (BOOL)_isDocumentOrdinalSearchable:(int64_t)searchable;
- (BOOL)_searchOnCandidateOrdinal:(int64_t)ordinal;
- (id)_newSearchOperationForOrdinal:(int64_t)ordinal;
- (id)_searchQueue;
- (void)_addResultsFromSearch:(id)search;
- (void)_didFinishCreatingWebView:(id)view forTrackingID:(int64_t)d completion:(id)completion;
- (void)_resultsChanged;
- (void)_scheduleSearchAfterDelay:(double)delay reportAnalytics:(BOOL)analytics;
- (void)_searchOnOrdinal:(int64_t)ordinal;
- (void)_startSearchNowWithReportAnalytics:(id)analytics;
- (void)_unscheduleSearch;
- (void)beginSearchWithReportAnalytics:(BOOL)analytics;
- (void)cancelSearch;
- (void)continueSearch;
- (void)dealloc;
- (void)endSearch;
- (void)loadMore;
- (void)pauseSearch;
- (void)provideWebView:(CGRect)view protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager contentSupportMode:(unint64_t)self0 completion:(id)self1;
- (void)searchDidFinish:(id)finish;
- (void)searchHasPartialResults:(id)results;
- (void)searchLimitHit:(id)hit;
- (void)setContentStyle:(id)style configuration:(id)configuration;
- (void)setSearchBook:(id)book;
- (void)setSearchString:(id)string;
@end

@implementation BKSearchController

- (BKSearchController)init
{
  v8.receiver = self;
  v8.super_class = BKSearchController;
  v2 = [(BKSearchController *)&v8 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:100];
    results = v2->_results;
    v2->_results = v3;

    v5 = [[IMPerformSelectorProxy alloc] initWithTarget:v2];
    performSelectorProxy = v2->_performSelectorProxy;
    v2->_performSelectorProxy = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSOperationQueue *)self->_searchQueue cancelAllOperations];
  searchQueue = self->_searchQueue;
  self->_searchQueue = 0;

  [(IMPerformSelectorProxy *)self->_performSelectorProxy teardown];
  indexQueryResult = self->_indexQueryResult;
  self->_indexQueryResult = 0;

  v6.receiver = self;
  v6.super_class = BKSearchController;
  [(BKSearchController *)&v6 dealloc];
}

- (id)_searchQueue
{
  searchQueue = self->_searchQueue;
  if (!searchQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_searchQueue;
    self->_searchQueue = v4;

    [(NSOperationQueue *)self->_searchQueue setMaxConcurrentOperationCount:1];
    searchQueue = self->_searchQueue;
  }

  return searchQueue;
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  obj = [stringCopy stringByTrimmingCharactersInSet:v5];

  if (([(NSString *)self->_searchString isEqual:obj]& 1) == 0)
  {
    objc_storeStrong(&self->_searchString, obj);
    [(BKSearchController *)self setAborted:0];
    [(BKSearchController *)self setPartialResults:0];
    [(BKSearchController *)self setSearchCompleted:0];
    [(BKSearchController *)self cancelSearch];
    indexQueryResult = self->_indexQueryResult;
    self->_indexQueryResult = 0;

    if ([obj length] >= 3)
    {
      [(BKSearchController *)self _scheduleSearchAfterDelay:1 reportAnalytics:1.0];
    }
  }
}

- (void)setContentStyle:(id)style configuration:(id)configuration
{
  styleCopy = style;
  configurationCopy = configuration;
  v8 = [styleCopy isEqual:self->_style];
  if ((v8 & 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
  }

  v9 = [configurationCopy copy];
  environment = [v9 environment];
  [environment unfreeze];

  delegate = [(BKSearchController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(BKSearchController *)self delegate];
    v14 = [delegate2 environmentOverrideViewForSearchController:self];

    if (v14)
    {
      environment2 = [v9 environment];
      [environment2 setView:v14];
    }
  }

  environment3 = [v9 environment];
  [environment3 freeze];

  if (![(BKFlowingBookLayoutConfiguration *)self->_configuration isEqual:v9])
  {
    [(BKSearchController *)self setConfiguration:configurationCopy];
    goto LABEL_11;
  }

  if ((v8 & 1) == 0)
  {
LABEL_11:
    [(BKSearchController *)self beginSearchWithReportAnalytics:1];
  }
}

- (void)setSearchBook:(id)book
{
  bookCopy = book;
  p_book = &self->_book;
  if (self->_book != bookCopy)
  {
    v7 = bookCopy;
    objc_storeStrong(p_book, book);
    p_book = [(BKSearchController *)self setSearchString:0];
    bookCopy = v7;
  }

  _objc_release_x1(p_book, bookCopy);
}

- (id)_newSearchOperationForOrdinal:(int64_t)ordinal
{
  v5 = _AESearchLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    ordinalCopy = ordinal;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-- _newSearchOperationForOrdinal for ordinal: %ld", &v12, 0xCu);
  }

  contentType = [(AEBookInfo *)self->_book contentType];
  if (contentType)
  {
    if (contentType != 2)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = off_1E1300;
  }

  else
  {
    v7 = &off_1E1328;
  }

  v8 = objc_alloc_init(*v7);
LABEL_9:
  [v8 setDelegate:self];
  searchString = [(BKSearchController *)self searchString];
  [v8 setSearchString:searchString];

  searchBook = [(BKSearchController *)self searchBook];
  [v8 setSearchBook:searchBook];

  [v8 setTimeOut:0.0];
  [v8 setOrdinal:ordinal];
  return v8;
}

- (BOOL)_searchOnCandidateOrdinal:(int64_t)ordinal
{
  v5 = _AESearchLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    ordinalCopy3 = ordinal;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-- _searchOnCandidateOrdinal ordinal: %ld", buf, 0xCu);
  }

  if (self->_indexQueryResult)
  {
    v7 = _AESearchLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      ordinalCopy3 = ordinal;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "-- _searchOnCandidateOrdinal _indexQueryResult available for ordinal: %ld", buf, 0xCu);
    }

    v17 = 0;
    searchBook = [(BKSearchController *)self searchBook];
    readingDocumentCount = [searchBook readingDocumentCount];

    if (readingDocumentCount > ordinal)
    {
      *&v10 = 134218498;
      v16 = v10;
      while (1)
      {
        v11 = [(BKTextIndexQueryResult *)self->_indexQueryResult isCandidateOrdinal:ordinal isMissing:&v17, v16];
        if (v11)
        {
          v11 = [(BKSearchController *)self _isDocumentOrdinalSearchable:ordinal];
          if (v11)
          {
            break;
          }
        }

        v12 = _AESearchLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [NSNumber numberWithBool:[(BKSearchController *)self _isDocumentOrdinalSearchable:ordinal]];
          v14 = [NSNumber numberWithBool:[(BKTextIndexQueryResult *)self->_indexQueryResult isCandidateOrdinal:ordinal isMissing:&v17]];
          *buf = v16;
          ordinalCopy3 = ordinal;
          v20 = 2112;
          v21 = v13;
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "-- _searchOnCandidateOrdinal skipping ordinal: %ld isDocumentSearchable: %@ isCandidateOrdinal: %@", buf, 0x20u);
        }

        ++ordinal;
        --self->_chaptersRemaining;
        if (readingDocumentCount == ordinal)
        {
          return 0;
        }
      }
    }

    if (ordinal >= readingDocumentCount)
    {
      return 0;
    }
  }

  [(BKSearchController *)self _searchOnOrdinal:ordinal];
  return 1;
}

- (BOOL)_isDocumentOrdinalSearchable:(int64_t)searchable
{
  searchBook = [(BKSearchController *)self searchBook];
  if ([searchBook contentType])
  {
    v5 = 1;
  }

  else
  {
    v5 = [searchBook linearIndexForOrdinal:searchable] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)_searchOnOrdinal:(int64_t)ordinal
{
  searchBook = [(BKSearchController *)self searchBook];
  readingDocumentCount = [searchBook readingDocumentCount];

  if (readingDocumentCount <= ordinal)
  {
    return;
  }

  v17 = [(BKSearchController *)self _newSearchOperationForOrdinal:ordinal];
  [v17 setStartSearchFromIndex:{-[BKSearchController startSearchIndex](self, "startSearchIndex")}];
  lastSavedSearchResult = [(BKSearchController *)self lastSavedSearchResult];
  [v17 setLastSavedSearchResult:lastSavedSearchResult];

  contentType = [(AEBookInfo *)self->_book contentType];
  if (contentType == 2)
  {
    objc_opt_class();
    v9 = BUDynamicCast();
    if (v9)
    {
      [v9 setCurrentPageIndex:{-[BKSearchController startSearchIndex](self, "startSearchIndex")}];
      objc_opt_class();
      lastSavedSearchResult2 = [(BKSearchController *)self lastSavedSearchResult];
      searchBook4 = BUDynamicCast();
      [v9 setLastSavedSearchResult:searchBook4];
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!contentType)
  {
    objc_opt_class();
    v9 = BUDynamicCast();
    if (v9)
    {
      searchBook2 = [(BKSearchController *)self searchBook];
      lastSavedSearchResult2 = [searchBook2 documentWithOrdinal:ordinal];

      searchBook3 = [(BKSearchController *)self searchBook];
      v13 = [searchBook3 physicalPageMapForDocument:lastSavedSearchResult2];
      [v9 setPhysicalPageMap:v13];

      searchBook4 = [(BKSearchController *)self searchBook];
      baseURL = [searchBook4 baseURL];
      [v9 setBaseURL:baseURL];

LABEL_9:
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
  _searchQueue = [(BKSearchController *)self _searchQueue];
  [_searchQueue addOperation:v17];
}

- (void)beginSearchWithReportAnalytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  v5 = _AESearchLog([(BKSearchController *)self cancelSearch]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "beginSearchWithReportAnalytics - schedule search after 0", v6, 2u);
  }

  [(BKSearchController *)self _scheduleSearchAfterDelay:analyticsCopy reportAnalytics:0.0];
}

- (void)_unscheduleSearch
{
  performSelectorProxy = [(BKSearchController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"_startSearchNowWithReportAnalytics:" object:&__kCFBooleanTrue];

  performSelectorProxy2 = [(BKSearchController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy2 selector:"_startSearchNowWithReportAnalytics:" object:&__kCFBooleanFalse];
}

- (void)_scheduleSearchAfterDelay:(double)delay reportAnalytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  [(BKSearchController *)self _unscheduleSearch];
  performSelectorProxy = [(BKSearchController *)self performSelectorProxy];
  v7 = [NSNumber numberWithBool:analyticsCopy];
  [performSelectorProxy performSelector:"_startSearchNowWithReportAnalytics:" withObject:v7 afterDelay:delay];
}

- (void)_startSearchNowWithReportAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if ([(NSString *)self->_searchString length]&& ![(BKSearchController *)self isSearching])
  {
    [(BKSearchController *)self cancelSearch];
    environment = [(BKFlowingBookLayoutConfiguration *)self->_configuration environment];
    [environment unfreeze];

    delegate = [(BKSearchController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(BKSearchController *)self delegate];
      v9 = [delegate2 environmentOverrideViewForSearchController:self];

      if (v9)
      {
        environment2 = [(BKFlowingBookLayoutConfiguration *)self->_configuration environment];
        [environment2 setView:v9];
      }
    }

    environment3 = [(BKFlowingBookLayoutConfiguration *)self->_configuration environment];
    [environment3 freeze];

    if (!self->_indexQueryResult)
    {
      baseURL = [(AEBookInfo *)self->_book baseURL];
      absoluteString = [baseURL absoluteString];
      lastPathComponent = [absoluteString lastPathComponent];
      v15 = [BKTextIndex bookIndexWithName:lastPathComponent];

      searchString = self->_searchString;
      searchBook = [(BKSearchController *)self searchBook];
      v18 = [v15 queryForString:searchString maxOrdinal:{objc_msgSend(searchBook, "readingDocumentCount")}];
      indexQueryResult = self->_indexQueryResult;
      self->_indexQueryResult = v18;

      if (!self->_indexQueryResult)
      {
        [(BKSearchController *)self endSearch];

        goto LABEL_15;
      }
    }

    self->_maxSearchResults = 100;
    [(BKSearchController *)self setStartSearchIndex:0];
    [(BKSearchController *)self setLastSavedSearchResult:0];
    searchBook2 = [(BKSearchController *)self searchBook];
    self->_chaptersRemaining = [searchBook2 readingDocumentCount];

    v22 = _AESearchLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      chaptersRemaining = self->_chaptersRemaining;
      v25 = 134217984;
      v26 = chaptersRemaining;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "-- _startSearchNowWithReportAnalytics _chaptersRemaining: %ld", &v25, 0xCu);
    }

    if ([(BKSearchController *)self contentIsPages])
    {
      self->_pagesRemaining = [(BKSearchController *)self pageCount];
    }

    [(BKSearchController *)self setSearching:1];
    delegate3 = [(BKSearchController *)self delegate];
    [delegate3 searchControllerWillBeginSearching:self reportAnalytics:{objc_msgSend(analyticsCopy, "BOOLValue")}];

    [(BKSearchController *)self setAborted:0];
    [(BKSearchController *)self setPartialResults:0];
    [(BKSearchController *)self setSearchCompleted:0];
    [(BKSearchController *)self _searchOnCandidateOrdinal:0];
  }

LABEL_15:
}

- (void)cancelSearch
{
  isSearching = [(BKSearchController *)self isSearching];
  [(BKSearchController *)self _unscheduleSearch];
  [(BKSearchController *)self setSearching:0];
  [(BKSearchController *)self setPartialResults:0];
  [(BKSearchController *)self setStartSearchIndex:0];
  [(BKSearchController *)self setLastSavedSearchResult:0];
  [(BKSearchController *)self setSearchCompleted:0];
  _searchQueue = [(BKSearchController *)self _searchQueue];
  [_searchQueue cancelAllOperations];

  [(BKSearchController *)self setWebView:0];
  [(BKSearchController *)self setWebViewTrackingID:[(BKSearchController *)self webViewTrackingID]+ 1];
  if ([(NSMutableArray *)self->_results count])
  {
    [(NSMutableArray *)self->_results removeAllObjects];
    [(BKSearchController *)self _resultsChanged];
  }

  else if (!isSearching)
  {
    goto LABEL_5;
  }

  delegate = [(BKSearchController *)self delegate];
  [delegate searchControllerDidFinishSearching:self];

LABEL_5:
  indexQueryResult = self->_indexQueryResult;
  self->_indexQueryResult = 0;
}

- (void)pauseSearch
{
  if ([(BKSearchController *)self isSearching])
  {
    [(BKSearchController *)self setSearching:0];
    [(BKSearchController *)self setPartialResults:1];
    delegate = [(BKSearchController *)self delegate];
    [delegate searchControllerResultsChanged:self];

    delegate2 = [(BKSearchController *)self delegate];
    [delegate2 searchControllerDidFinishSearching:self];

    baseURL = [(AEBookInfo *)self->_book baseURL];
    absoluteString = [baseURL absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];
    v8 = [BKTextIndex bookIndexWithName:lastPathComponent];

    [v8 save];
  }
}

- (void)continueSearch
{
  if (![(BKSearchController *)self isSearching])
  {
    searchString = [(BKSearchController *)self searchString];
    v4 = [searchString length];

    if (v4)
    {
      delegate = [(BKSearchController *)self delegate];
      [delegate searchControllerWillBeginSearching:self reportAnalytics:1];

      [(BKSearchController *)self setAborted:0];
      [(BKSearchController *)self setPartialResults:0];
      [(BKSearchController *)self setSearchCompleted:0];
      [(BKSearchController *)self setSearching:1];
      searchBook = [(BKSearchController *)self searchBook];
      readingDocumentCount = [searchBook readingDocumentCount];

      if (![(BKSearchController *)self _searchOnCandidateOrdinal:&readingDocumentCount[-self->_chaptersRemaining]])
      {

        [(BKSearchController *)self endSearch];
      }
    }
  }
}

- (void)endSearch
{
  [(BKSearchController *)self setSearching:0];
  [(BKSearchController *)self setSearchCompleted:1];
  _searchQueue = [(BKSearchController *)self _searchQueue];
  [_searchQueue cancelAllOperations];

  [(BKSearchController *)self setWebView:0];
  [(BKSearchController *)self setWebViewTrackingID:[(BKSearchController *)self webViewTrackingID]+ 1];
  delegate = [(BKSearchController *)self delegate];
  [delegate searchControllerResultsChanged:self];

  delegate2 = [(BKSearchController *)self delegate];
  [delegate2 searchControllerDidFinishSearching:self];

  baseURL = [(AEBookInfo *)self->_book baseURL];
  absoluteString = [baseURL absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];
  v9 = [BKTextIndex bookIndexWithName:lastPathComponent];

  [v9 save];
}

- (void)loadMore
{
  if (![(BKSearchController *)self isSearching])
  {
    searchString = [(BKSearchController *)self searchString];
    v4 = [searchString length];

    if (v4)
    {
      self->_maxSearchResults += 100;

      [(BKSearchController *)self continueSearch];
    }
  }
}

- (void)_addResultsFromSearch:(id)search
{
  searchCopy = search;
  results = [searchCopy results];
  v5 = [results count];

  if (v5)
  {
    results = self->_results;
    results2 = [searchCopy results];
    [(NSMutableArray *)results addObjectsFromArray:results2];

    [(BKSearchController *)self _resultsChanged];
  }
}

- (void)_resultsChanged
{
  delegate = [(BKSearchController *)self delegate];
  [delegate searchControllerResultsChanged:self];
}

- (void)provideWebView:(CGRect)view protocolCacheItem:(id)item paginationOptions:(id)options cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions stylesheetSet:(id)set styleManager:(id)manager contentSupportMode:(unint64_t)self0 completion:(id)self1
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  itemCopy = item;
  optionsCopy = options;
  cleanupOptionsCopy = cleanupOptions;
  cfiOptionsCopy = cfiOptions;
  setCopy = set;
  managerCopy = manager;
  completionCopy = completion;
  webView = [(BKSearchController *)self webView];

  if (webView)
  {
    v30 = _AESearchLog(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      webView2 = [(BKSearchController *)self webView];
      *buf = 138412290;
      v40 = webView2;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Reusing web view %@", buf, 0xCu);
    }

    v32 = objc_retainBlock(completionCopy);
    if (v32)
    {
      webView3 = [(BKSearchController *)self webView];
      v32[2](v32, webView3, 0);
    }
  }

  else
  {
    [(BKSearchController *)self setWebViewTrackingID:[(BKSearchController *)self webViewTrackingID]+ 1];
    webViewTrackingID = [(BKSearchController *)self webViewTrackingID];
    v35 = _AESearchLog(webViewTrackingID);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v40) = webViewTrackingID;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Creating web view for tracking ID: %d", buf, 8u);
    }

    objc_initWeak(buf, self);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_8F3C8;
    v36[3] = &unk_1E4E10;
    objc_copyWeak(v38, buf);
    v38[1] = webViewTrackingID;
    v37 = completionCopy;
    [BEWebViewFactory viewConfiguredForSearch:itemCopy protocolCacheItem:optionsCopy paginationOptions:cleanupOptionsCopy cleanupOptions:cfiOptionsCopy cfiOptions:setCopy stylesheetSet:managerCopy styleManager:x contentSupportMode:y completion:width, height, mode, v36];

    objc_destroyWeak(v38);
    objc_destroyWeak(buf);
  }
}

- (void)_didFinishCreatingWebView:(id)view forTrackingID:(int64_t)d completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v10 = _AESearchLog(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    dCopy2 = d;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Finished creating web view for tracking ID: %d", &v15, 8u);
  }

  webViewTrackingID = [(BKSearchController *)self webViewTrackingID];
  if (webViewTrackingID == d)
  {
    [(BKSearchController *)self setWebView:viewCopy];
  }

  else
  {
    v12 = _AESearchLog(webViewTrackingID);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      webViewTrackingID2 = [(BKSearchController *)self webViewTrackingID];
      v15 = 67109376;
      dCopy2 = d;
      v17 = 1024;
      v18 = webViewTrackingID2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Ignoring web view for old tracking ID: %d (currently: %d)", &v15, 0xEu);
    }
  }

  v14 = objc_retainBlock(completionCopy);

  if (v14)
  {
    v14[2](v14, viewCopy, 1);
  }
}

- (void)searchLimitHit:(id)hit
{
  hitCopy = hit;
  delegate = [(BKSearchController *)self delegate];
  [delegate searchControllerFinishedSearchingChapter:self];

  [(BKSearchController *)self _addResultsFromSearch:hitCopy];
  contentIsPages = [(BKSearchController *)self contentIsPages];
  startSearchFromIndex = [hitCopy startSearchFromIndex];
  if ((contentIsPages & 1) == 0)
  {
    startSearchFromIndex = &startSearchFromIndex[[(BKSearchController *)self startSearchIndex]];
  }

  [(BKSearchController *)self setStartSearchIndex:startSearchFromIndex];
  lastSavedSearchResult = [hitCopy lastSavedSearchResult];
  [(BKSearchController *)self setLastSavedSearchResult:lastSavedSearchResult];

  [(BKSearchController *)self pauseSearch];
}

- (void)searchHasPartialResults:(id)results
{
  resultsCopy = results;
  contentIsPages = [(BKSearchController *)self contentIsPages];
  v5 = resultsCopy;
  if (contentIsPages)
  {
    objc_opt_class();
    v6 = BUDynamicCast();
    remainingPages = [v6 remainingPages];
    if (self->_pagesRemaining != remainingPages)
    {
      self->_pagesRemaining = remainingPages;
      delegate = [(BKSearchController *)self delegate];
      [delegate searchControllerFinishedSearchingChapter:self];
    }

    v5 = resultsCopy;
  }

  [(BKSearchController *)self _addResultsFromSearch:v5];
  if ([(NSMutableArray *)self->_results count]>= self->_maxSearchResults)
  {
    [(BKSearchController *)self pauseSearch];
  }
}

- (void)searchDidFinish:(id)finish
{
  finishCopy = finish;
  --self->_chaptersRemaining;
  v5 = _AESearchLog(finishCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ordinal = [finishCopy ordinal];
    chaptersRemaining = self->_chaptersRemaining;
    *buf = 134218240;
    v21 = ordinal;
    v22 = 2048;
    v23 = chaptersRemaining;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-- searchDidFinishfor ordinal: %ld  chaptersRemaining: %ld", buf, 0x16u);
  }

  delegate = [(BKSearchController *)self delegate];
  [delegate searchControllerFinishedSearchingChapter:self];

  [(BKSearchController *)self _addResultsFromSearch:finishCopy];
  [(BKSearchController *)self setStartSearchIndex:0];
  [(BKSearchController *)self setLastSavedSearchResult:0];
  if ([(NSMutableArray *)self->_results count]< self->_maxSearchResults && [(BKSearchController *)self isSearching])
  {
    -[BKSearchController _searchOnCandidateOrdinal:](self, "_searchOnCandidateOrdinal:", [finishCopy ordinal] + 1);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    _searchQueue = [(BKSearchController *)self _searchQueue];
    operations = [_searchQueue operations];

    v11 = [operations countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(operations);
          }

          if (![*(*(&v15 + 1) + 8 * v14) isDone])
          {

            goto LABEL_15;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [operations countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [(BKSearchController *)self endSearch];
  }

  else
  {
    [(BKSearchController *)self pauseSearch];
  }

LABEL_15:
}

- (BESearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end