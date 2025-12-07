@interface BKWK2WebViewLoader
- (BKWK2WebViewLoader)initWithPaginationOptions:(id)options ordinal:(unint64_t)ordinal;
- (BKWK2WebViewLoaderDelegate)delegate;
- (BOOL)isVerticalDocument;
- (BOOL)pageTextDirectionIsRTL;
- (CGRect)contentRectForVisibleContent;
- (CGRect)contentRectForVisiblePage;
- (CGRect)desiredWebViewFrame;
- (CGRect)rectForPageOffset:(unint64_t)offset;
- (CGSize)contentSize;
- (_NSRange)_uncheckedPageOffsetRangeForRect:(CGRect)rect;
- (_NSRange)pageOffsetRangeForRect:(CGRect)rect;
- (id)_pageOffsetsForFrames:(id)frames;
- (id)anchorFrameForAnchor:(id)anchor;
- (id)locationForAnchor:(id)anchor;
- (id)locationForPageOffset:(unint64_t)offset contentOffset:(CGPoint)contentOffset;
- (int64_t)_scrollPageCountFromCurrentPageSize;
- (unint64_t)_pageOffsetForXOffset:(double)offset;
- (unint64_t)pageCount;
- (unint64_t)pageOffsetForAnchor:(id)anchor;
- (unint64_t)pageOffsetForLocation:(id)location;
- (void)_postLoadComplete:(id)complete;
- (void)_sendNextInfoRequest;
- (void)_updateContentInformationWithRequest:(id)request;
- (void)cancelCurrentRequest;
- (void)clearPaginationResults;
- (void)clientRectForEpubLocation:(id)location completion:(id)completion;
- (void)clientRectsForLocation:(id)location completion:(id)completion;
- (void)clientRectsForLocations:(id)locations completion:(id)completion;
- (void)dealloc;
- (void)enqueueContentInfoRequest:(id)request;
- (void)generatePaginationDataCompletion:(id)completion;
- (void)pageOffsetRangeForLocation:(id)location completion:(id)completion;
- (void)parseTOCIdCssRulesForMap:(id)map completion:(id)completion;
- (void)registerForVisibleCFIUpdates;
- (void)setDesiredWebViewFrame:(CGRect)frame;
- (void)setPageTextDirectionIsRTL:(BOOL)l isVerticalDocument:(BOOL)document;
- (void)setWebView:(id)view;
- (void)unregisterForVisibleCFIUpdates;
- (void)updateAnchorInformation:(id)information;
- (void)updateMediaFrames:(id)frames;
- (void)updatePaginationOptions:(id)options;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation BKWK2WebViewLoader

- (BKWK2WebViewLoader)initWithPaginationOptions:(id)options ordinal:(unint64_t)ordinal
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = BKWK2WebViewLoader;
  v8 = [(BKWK2WebViewLoader *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_paginationOptions, options);
    v9->_ordinal = ordinal;
    tocIdCssRules = v9->_tocIdCssRules;
    v9->_tocIdCssRules = &stru_1E7188;

    v9->_pageCount = 0x7FFFFFFFFFFFFFFFLL;
    v9->_contentInfo = 501;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BKWK2WebViewLoader;
  [(BKWK2WebViewLoader *)&v2 dealloc];
}

- (void)setWebView:(id)view
{
  viewCopy = view;
  if (self->_webView != viewCopy)
  {
    calculatingPageLocations = [(BKWK2WebViewLoader *)self calculatingPageLocations];
    if (calculatingPageLocations)
    {
      v7 = _AEWKLoaderLog(calculatingPageLocations);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Setting webView while it is calculating page locations -- this should not happen", buf, 2u);
      }
    }

    [(BKWK2WebViewLoader *)self unregisterForVisibleCFIUpdates];
    configuration = [(WKWebView *)viewCopy configuration];
    userContentController = [configuration userContentController];

    [userContentController removeScriptMessageHandlerForName:@"cfiUpdate"];
    [userContentController removeScriptMessageHandlerForName:@"selectionChange"];
    objc_storeStrong(&self->_webView, view);
    [(BKWK2WebViewLoader *)self desiredWebViewFrame];
    v35.origin.x = CGRectZero.origin.x;
    v35.origin.y = CGRectZero.origin.y;
    v35.size.width = CGRectZero.size.width;
    v35.size.height = CGRectZero.size.height;
    v10 = CGRectEqualToRect(v33, v35);
    [(WKWebView *)viewCopy frame];
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    if (v10)
    {
      [(BKWK2WebViewLoader *)self setDesiredWebViewFrame:v11, v12, v13, v14];
    }

    else
    {
      [(BKWK2WebViewLoader *)self desiredWebViewFrame];
      v36.origin.x = v19;
      v36.origin.y = v20;
      v36.size.width = v21;
      v36.size.height = v22;
      v34.origin.x = v15;
      v34.origin.y = v16;
      v34.size.width = v17;
      v34.size.height = v18;
      v23 = CGRectEqualToRect(v34, v36);
      if (!v23)
      {
        v24 = _AEWKLoaderLog(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          ordinal = [(BKWK2WebViewLoader *)self ordinal];
          *buf = 134217984;
          v32 = ordinal;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "wkWebView frame mismatch ordinal:%lu", buf, 0xCu);
        }

        [(BKWK2WebViewLoader *)self desiredWebViewFrame];
        [(WKWebView *)self->_webView setFrame:?];
      }
    }

    [(BKWK2WebViewLoader *)self registerForVisibleCFIUpdates];
    configuration2 = [(WKWebView *)self->_webView configuration];
    userContentController2 = [configuration2 userContentController];

    [userContentController2 be_addScriptMessageHandler:self name:@"selectionChange"];
    objc_initWeak(buf, self);
    be_navigationHandler = [(WKWebView *)self->_webView be_navigationHandler];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_68D6C;
    v29[3] = &unk_1E4570;
    objc_copyWeak(&v30, buf);
    [be_navigationHandler performAfterLoadCompleteOrFailure:v29];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }
}

- (void)registerForVisibleCFIUpdates
{
  configuration = [(WKWebView *)self->_webView configuration];
  if (configuration)
  {
    listeningForCFIUpdates = self->_listeningForCFIUpdates;

    if (!listeningForCFIUpdates)
    {
      self->_listeningForCFIUpdates = 1;
      configuration2 = [(WKWebView *)self->_webView configuration];
      userContentController = [configuration2 userContentController];
      [userContentController be_addScriptMessageHandler:self name:@"cfiUpdate"];
    }
  }
}

- (void)unregisterForVisibleCFIUpdates
{
  self->_listeningForCFIUpdates = 0;
  configuration = [(WKWebView *)self->_webView configuration];
  userContentController = [configuration userContentController];
  [userContentController removeScriptMessageHandlerForName:@"cfiUpdate"];
}

- (void)_postLoadComplete:(id)complete
{
  completeCopy = complete;
  [(BKWK2WebViewLoader *)self setWebViewLoaded:1];
  v5 = _AEWKLoaderLog([(BKWK2WebViewLoader *)self setPageCount:[(WKWebView *)self->_webView _pageCount]]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    webView = [(BKWK2WebViewLoader *)self webView];
    ordinal = [(BKWK2WebViewLoader *)self ordinal];
    pageCount = self->_pageCount;
    *buf = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = webView;
    v18 = 2048;
    v19 = ordinal;
    v20 = 2048;
    v21 = pageCount;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Loader %@ webView %@ didFinishLoadOfURL for ordinal %lu captured pageCount:%lu", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  webView = self->_webView;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_69208;
  v11[3] = &unk_1E45D8;
  objc_copyWeak(&v13, buf);
  v10 = completeCopy;
  v12 = v10;
  [(WKWebView *)webView be_evaluateJavaScript:&stru_1E45B0 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)setDesiredWebViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(BKWK2WebViewLoader *)self desiredWebViewFrame];
  v23.origin.x = v8;
  v23.origin.y = v9;
  v23.size.width = v10;
  v23.size.height = v11;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v12 = CGRectEqualToRect(v21, v23);
  if (!v12)
  {
    self->_desiredWebViewFrame.origin.x = x;
    self->_desiredWebViewFrame.origin.y = y;
    self->_desiredWebViewFrame.size.width = width;
    self->_desiredWebViewFrame.size.height = height;
    v13 = _AEWKLoaderLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ordinal = [(BKWK2WebViewLoader *)self ordinal];
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v15 = NSStringFromCGRect(v22);
      v17 = 134218242;
      v18 = ordinal;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "setDesiredWebViewFrame setting webView frame ordinal: %ld to:%@", &v17, 0x16u);
    }

    webView = [(BKWK2WebViewLoader *)self webView];
    [webView setFrame:{x, y, width, height}];
  }
}

- (void)updatePaginationOptions:(id)options
{
  optionsCopy = options;
  paginationOptions = [(BKWK2WebViewLoader *)self paginationOptions];
  v6 = [paginationOptions isEqual:optionsCopy];

  v8 = _AEWKLoaderLog(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 134217984;
      ordinal = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "updatePaginationOptions equal pagination options for ordinal %lu", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      ordinal = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "updatePaginationOptions for ordinal %lu", buf, 0xCu);
    }

    [(BKWK2WebViewLoader *)self setPaginationOptions:optionsCopy];
    [(BKWK2WebViewLoader *)self setPageCount:0x7FFFFFFFFFFFFFFFLL];
    [(BKWK2WebViewLoader *)self clearPaginationResults];
    [(BKWK2WebViewLoader *)self webView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_697BC;
    v10[3] = &unk_1E3F50;
    v11 = v10[4] = self;
    v8 = v11;
    [v8 _doAfterNextStablePresentationUpdate:v10];
  }
}

- (void)setPageTextDirectionIsRTL:(BOOL)l isVerticalDocument:(BOOL)document
{
  documentCopy = document;
  lCopy = l;
  [(BKWK2WebViewLoader *)self setTextDirectionDetermined:1];
  [(BKWK2WebViewLoader *)self setPageTextDirectionIsRTL:lCopy];

  [(BKWK2WebViewLoader *)self setIsVerticalDocument:documentCopy];
}

- (void)clearPaginationResults
{
  v3 = _AEWKLoaderLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    ordinal = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "clearPaginationResults for ordinal %lu", &v5, 0xCu);
  }

  anchorLocations = self->_anchorLocations;
  self->_anchorLocations = 0;
}

- (unint64_t)pageCount
{
  webView = [(BKWK2WebViewLoader *)self webView];

  if (!webView)
  {
    return self->_pageCount;
  }

  webView2 = [(BKWK2WebViewLoader *)self webView];
  _pageCount = [webView2 _pageCount];

  webView3 = [(BKWK2WebViewLoader *)self webView];
  _paginationMode = [webView3 _paginationMode];

  if (!_paginationMode)
  {
    _pageCount = [(BKWK2WebViewLoader *)self _scrollPageCountFromCurrentPageSize];
  }

  if (self->_pageCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    webViewLoaded = [(BKWK2WebViewLoader *)self webViewLoaded];
    if (webViewLoaded)
    {
      v9 = _AEWKLoaderLog(webViewLoaded);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218240;
        ordinal = [(BKWK2WebViewLoader *)self ordinal];
        v22 = 2048;
        v23 = _pageCount;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Unknown page count. Ordinal: %lu capturing pageCount: %lu", &v20, 0x16u);
      }

      self->_pageCount = _pageCount;
    }
  }

  webViewLoaded2 = [(BKWK2WebViewLoader *)self webViewLoaded];
  if ((webViewLoaded2 & 1) == 0)
  {
    v11 = _AEWKLoaderLog(webViewLoaded2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      webView4 = [(BKWK2WebViewLoader *)self webView];
      v13 = [webView4 URL];
      v14 = [NSNumber numberWithUnsignedInteger:[(BKWK2WebViewLoader *)self ordinal]];
      v20 = 138412546;
      ordinal = v13;
      v22 = 2112;
      v23 = v14;
    }
  }

  if (_pageCount != self->_pageCount)
  {
    v15 = _AEWKLoaderLog(webViewLoaded2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ordinal2 = [(BKWK2WebViewLoader *)self ordinal];
      webView5 = [(BKWK2WebViewLoader *)self webView];
      pageCount = self->_pageCount;
      v20 = 134349826;
      ordinal = ordinal2;
      v22 = 2112;
      v23 = webView5;
      v24 = 2050;
      v25 = _pageCount;
      v26 = 2050;
      v27 = pageCount;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Loader Asking PageCount for ordinal %{public}lu webView %@ webViewPageCount:%{public}lu captured pageCount:%{public}lu", &v20, 0x2Au);
    }

    self->_pageCount = _pageCount;
  }

  return _pageCount;
}

- (void)parseTOCIdCssRulesForMap:(id)map completion:(id)completion
{
  mapCopy = map;
  completionCopy = completion;
  webView = [(BKWK2WebViewLoader *)self webView];

  v9 = webView == 0;
  v11 = _AEWKLoaderLog(v10);
  v12 = v11;
  if (!v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BKWK2WebViewLoader *)self url];
      *buf = 138412290;
      ordinal = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Loader parseTOCIdCssRules %@", buf, 0xCu);
    }

    if ([mapCopy count])
    {
      v21 = 0;
      v14 = [NSJSONSerialization dataWithJSONObject:mapCopy options:1 error:&v21];
      v15 = v21;
      if (!v15)
      {
        if (v14)
        {
          v15 = [[NSString alloc] initWithData:v14 encoding:4];
          if (v15)
          {
            v16 = [NSString stringWithFormat:@"__ibooks_content_cleanup.tocIdCssRules(%@)", v15];;
            objc_initWeak(buf, self);
            webView2 = [(BKWK2WebViewLoader *)self webView];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_69F38;
            v18[3] = &unk_1E4600;
            objc_copyWeak(&v20, buf);
            v18[4] = self;
            v19 = completionCopy;
            [webView2 evaluateJavaScript:v16 completionHandler:v18];

            objc_destroyWeak(&v20);
            objc_destroyWeak(buf);

            v15 = 0;
LABEL_14:

            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    completionCopy[2](completionCopy);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    ordinal = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Attempting to parseTOCIdCssRulesForMap with no web view ordinal: %lu", buf, 0xCu);
  }

  completionCopy[2](completionCopy);
LABEL_15:
}

- (void)_updateContentInformationWithRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    currentInfoRequest = [(BKWK2WebViewLoader *)self currentInfoRequest];

    v6 = currentInfoRequest == 0;
    v8 = _AEWKLoaderLog(v7);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        webView = [(BKWK2WebViewLoader *)self webView];
        *buf = 138412802;
        selfCopy3 = self;
        v46 = 2112;
        v47 = webView;
        v48 = 2112;
        v49 = requestCopy;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "loader: %@ webview: %@ processing request: %@", buf, 0x20u);
      }

      [(BKWK2WebViewLoader *)self setCurrentInfoRequest:requestCopy];
      webView2 = [(BKWK2WebViewLoader *)self webView];
      stylesheetSet = [requestCopy stylesheetSet];
      [stylesheetSet applyToWebView:webView2];
      [requestCopy fontSize];
      [webView2 _setTextZoomFactor:?];
      paginationOptions = [requestCopy paginationOptions];
      [paginationOptions applyToWebView:webView2];
      [(BKWK2WebViewLoader *)self updatePaginationOptions:paginationOptions];
      v22 = [BEContentLayoutInfo updateScriptWithOptions:paginationOptions];
      cfiOptions = [requestCopy cfiOptions];
      [paginationOptions gapBetweenPages];
      v25 = +[BECFIUtilitiesJS updateScriptWithOptions:gapBetweenPages:paginatedTopToBottom:](BECFIUtilitiesJS, "updateScriptWithOptions:gapBetweenPages:paginatedTopToBottom:", cfiOptions, [paginationOptions mode] == &dword_4, v24);

      cleanupOptions = [requestCopy cleanupOptions];
      [paginationOptions pageLength];
      v28 = v27;
      [paginationOptions gapBetweenPages];
      v30 = [BEContentCleanupJS updateScriptWithOptions:cleanupOptions pageLength:v28 gapBetweenPages:v29];

      objc_initWeak(buf, self);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_6A548;
      v38[3] = &unk_1E4628;
      v31 = v22;
      v39 = v31;
      v32 = v25;
      v40 = v32;
      v33 = v30;
      v41 = v33;
      selfCopy2 = self;
      v34 = requestCopy;
      v43 = v34;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_6A6A8;
      v35[3] = &unk_1E4650;
      objc_copyWeak(&v37, buf);
      v35[4] = self;
      v36 = v34;
      [webView2 be_evaluateJavaScript:v38 completion:v35];

      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        currentInfoRequest2 = [(BKWK2WebViewLoader *)self currentInfoRequest];
        *buf = 138412546;
        selfCopy3 = currentInfoRequest2;
        v46 = 2112;
        v47 = requestCopy;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Currently handling request %@ when received request %@", buf, 0x16u);
      }

      pendingInfoRequest = [(BKWK2WebViewLoader *)self pendingInfoRequest];

      if (pendingInfoRequest)
      {
        v13 = _AEWKLoaderLog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          pendingInfoRequest2 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
          *buf = 138412802;
          selfCopy3 = self;
          v46 = 2112;
          v47 = pendingInfoRequest2;
          v48 = 2112;
          v49 = requestCopy;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "loader: %@ enqueueContentInfoRequest replacing pendingRequest: %@ with request %@", buf, 0x20u);
        }

        pendingInfoRequest3 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
        completion = [pendingInfoRequest3 completion];

        if (completion)
        {
          pendingInfoRequest4 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
          (completion)[2](completion, pendingInfoRequest4, 0);
        }
      }

      [(BKWK2WebViewLoader *)self setPendingInfoRequest:requestCopy];
    }
  }
}

- (void)generatePaginationDataCompletion:(id)completion
{
  completionCopy = completion;
  currentInfoRequest = [(BKWK2WebViewLoader *)self currentInfoRequest];
  [currentInfoRequest setState:1];

  v7 = _AEWKLoaderLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    webView = [(BKWK2WebViewLoader *)self webView];
    *buf = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = webView;
    v18 = 2048;
    ordinal = [(BKWK2WebViewLoader *)self ordinal];
    v20 = 2048;
    pageCount = [(BKWK2WebViewLoader *)self pageCount];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Loader: %@ webView: %@ generatePaginationData for ordinal %lu using pageCount:%lu", buf, 0x2Au);
  }

  anchorLocations = self->_anchorLocations;
  self->_anchorLocations = 0;

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6AAF0;
  v11[3] = &unk_1E4010;
  objc_copyWeak(&v13, buf);
  v10 = completionCopy;
  v12 = v10;
  [(BKWK2WebViewLoader *)self updateAnchorInformation:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)updateAnchorInformation:(id)information
{
  informationCopy = information;
  currentInfoRequest = [(BKWK2WebViewLoader *)self currentInfoRequest];
  [currentInfoRequest setState:3];

  webView = [(BKWK2WebViewLoader *)self webView];
  v7 = webView;
  if (webView && (-[BKWK2WebViewLoader currentInfoRequest](self, "currentInfoRequest"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isRequestValid], v8, (v9 & 1) != 0))
  {
    objc_initWeak(location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_6ADCC;
    v16[3] = &unk_1E4678;
    objc_copyWeak(&v17, location);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_6AEF4;
    v13[3] = &unk_1E45D8;
    objc_copyWeak(&v15, location);
    v14 = informationCopy;
    [v7 be_evaluateJavaScript:v16 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = _AEWKLoaderLog(webView);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "No webview when trying to get anchor locations for ordinal:%lu !", location, 0xCu);
    }

    v11 = objc_retainBlock(informationCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (void)updateMediaFrames:(id)frames
{
  framesCopy = frames;
  objc_initWeak(&location, self);
  webView = [(BKWK2WebViewLoader *)self webView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6B200;
  v10[3] = &unk_1E4678;
  objc_copyWeak(&v11, &location);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6B2C0;
  v7[3] = &unk_1E45D8;
  objc_copyWeak(&v9, &location);
  v6 = framesCopy;
  v8 = v6;
  [webView be_evaluateJavaScript:v10 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)pageOffsetRangeForLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  v8 = completionCopy;
  if (locationCopy)
  {
    objc_opt_class();
    v9 = BUDynamicCast();
    objc_opt_class();
    v10 = BUDynamicCast();
    if (v9)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_6B8AC;
      v35[3] = &unk_1E46A0;
      v35[4] = self;
      v36 = v9;
      v37 = v8;
      [(BKWK2WebViewLoader *)self clientRectsForLocation:v36 completion:v35];

      v11 = v36;
LABEL_4:

LABEL_26:
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pageOffset = [locationCopy pageOffset];
      v15 = _AEWKLoaderLog(pageOffset);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        ordinal2 = pageOffset;
        v40 = 2112;
        ordinal = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Determined pageOffset: %lu for page location: %@", buf, 0x16u);
      }

      v16 = objc_retainBlock(v8);
      v17 = v16;
      if (v16)
      {
        (*(v16 + 2))(v16, pageOffset, 1);
      }

LABEL_25:

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = locationCopy;
      anchor = [v17 anchor];
      v19 = [anchor length];
      if (v19)
      {
        v19 = [(BKWK2WebViewLoader *)self pageOffsetForAnchor:anchor];
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = _AEWKLoaderLog(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        ordinal2 = v20;
        v40 = 2112;
        ordinal = v17;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Determined pageOffset: %lu for anchor location: %@", buf, 0x16u);
      }

      v22 = objc_retainBlock(v8);
      v23 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, v20, 1);
      }

      goto LABEL_25;
    }

    if (v10)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_6BA54;
      v32[3] = &unk_1E46C8;
      v32[4] = self;
      v33 = v10;
      v34 = v8;
      [(BKWK2WebViewLoader *)self clientRectForEpubLocation:v33 completion:v32];

      v11 = v33;
      goto LABEL_4;
    }

    v24 = [locationCopy isMemberOfClass:objc_opt_class()];
    if (v24)
    {
      v25 = objc_retainBlock(v8);
      v26 = v25;
      if (!v25)
      {
LABEL_36:

        goto LABEL_26;
      }

      v27 = v25[2];
    }

    else
    {
      v28 = _AEWKLoaderLog(v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138412546;
        ordinal2 = v30;
        v40 = 2048;
        ordinal = [(BKWK2WebViewLoader *)self ordinal];
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "pageOffsetRangeForLocation unsupported location type (%@) for ordinal:%lu", buf, 0x16u);
      }

      v31 = objc_retainBlock(v8);
      v26 = v31;
      if (!v31)
      {
        goto LABEL_36;
      }

      v27 = v31[2];
    }

    v27();
    goto LABEL_36;
  }

  v12 = _AEWKLoaderLog(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    ordinal2 = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "pageOffsetRangeForLocation missing location for ordinal:%lu", buf, 0xCu);
  }

  v13 = objc_retainBlock(v8);
  v9 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, 0x7FFFFFFFFFFFFFFFLL, 0);
  }

LABEL_27:
}

- (void)clientRectsForLocations:(id)locations completion:(id)completion
{
  locationsCopy = locations;
  completionCopy = completion;
  v6 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = locationsCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v11 = BUDynamicCast();
        v12 = v11;
        if (v11)
        {
          cfiString = [v11 cfiString];
          [v6 addObject:cfiString];
        }

        else
        {
          cfiString = _AEWKLoaderLog(0);
          if (os_log_type_enabled(cfiString, OS_LOG_TYPE_ERROR))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            *buf = 138412290;
            v38 = v15;
            _os_log_impl(&dword_0, cfiString, OS_LOG_TYPE_ERROR, "We should not get any type other than a BKEpubCFILocation here but we got a %@", buf, 0xCu);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v8);
  }

  v30 = 0;
  v16 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v30];
  v17 = v30;
  v18 = [v16 length];
  if (!v18 || v17)
  {
    if (!v17)
    {
      v21 = [objc_opt_class() description];
      v35 = NSLocalizedDescriptionKey;
      v36 = @"no JSON data";
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v17 = [NSError errorWithDomain:v21 code:1 userInfo:v22];
    }

    v23 = _AEWKLoaderLog(v18);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Failed to get JSON Data from cfi strings - %@", buf, 0xCu);
    }

    v24 = objc_retainBlock(completionCopy);
    v19 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, v17);
    }
  }

  else
  {
    v17 = [[NSString alloc] initWithData:v16 encoding:4];
    v19 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.getClientRects(%@)", v17];;
    objc_initWeak(buf, self);
    webView = [(BKWK2WebViewLoader *)self webView];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_6C030;
    v27[3] = &unk_1E4600;
    objc_copyWeak(&v29, buf);
    v27[4] = self;
    v28 = completionCopy;
    [webView evaluateJavaScript:v19 completionHandler:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

- (void)clientRectsForLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  v14 = locationCopy;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6C394;
  v11[3] = &unk_1E46F0;
  v12 = locationCopy;
  v13 = completionCopy;
  v9 = locationCopy;
  v10 = completionCopy;
  [(BKWK2WebViewLoader *)self clientRectsForLocations:v8 completion:v11];
}

- (void)clientRectForEpubLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  jsonObject = [locationCopy jsonObject];
  v9 = jsonObject;
  if (jsonObject)
  {
    v24 = @"_id";
    v25 = jsonObject;
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    locationCopy = [BECFIUtilitiesJS upgradeAnnotationsScript:v10];

    webView = [(BKWK2WebViewLoader *)self webView];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6C6F4;
    v19[3] = &unk_1E4718;
    v20 = locationCopy;
    selfCopy = self;
    v22 = completionCopy;
    [webView evaluateJavaScript:locationCopy completionHandler:v19];

    v13 = v20;
  }

  else
  {
    v14 = _AEAnnotationLocationLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = locationCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Failed to get json object from location: %@", buf, 0xCu);
    }

    locationCopy = [NSString stringWithFormat:@"Failed to get json object from location: %@", locationCopy];
    v26 = NSDebugDescriptionErrorKey;
    v27 = locationCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [NSError errorWithDomain:@"BookEPUBError" code:4 userInfo:v15];

    v16 = objc_retainBlock(completionCopy);
    if (v16)
    {
      size = CGRectZero.size;
      v23[0] = CGRectZero.origin;
      v23[1] = size;
      v18 = [NSValue valueWithBytes:v23 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v16[2](v16, v18, v13);
    }
  }
}

- (BOOL)pageTextDirectionIsRTL
{
  textDirectionDetermined = [(BKWK2WebViewLoader *)self textDirectionDetermined];
  if ((textDirectionDetermined & 1) == 0)
  {
    v4 = _AEWKLoaderLog(textDirectionDetermined);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Attempting to use pageTextDirectionIsRTL before it has been determined.", v6, 2u);
    }
  }

  return self->_pageTextDirectionIsRTL;
}

- (BOOL)isVerticalDocument
{
  textDirectionDetermined = [(BKWK2WebViewLoader *)self textDirectionDetermined];
  if ((textDirectionDetermined & 1) == 0)
  {
    v4 = _AEWKLoaderLog(textDirectionDetermined);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Attempting to use isVerticalDocument before it has been determined.", v6, 2u);
    }
  }

  return self->_isVerticalDocument;
}

- (void)cancelCurrentRequest
{
  currentInfoRequest = [(BKWK2WebViewLoader *)self currentInfoRequest];
  [currentInfoRequest invalidateRequest];
}

- (void)enqueueContentInfoRequest:(id)request
{
  requestCopy = request;
  pendingInfoRequest = [(BKWK2WebViewLoader *)self pendingInfoRequest];

  if (pendingInfoRequest)
  {
    v7 = _AEWKLoaderLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pendingInfoRequest2 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = pendingInfoRequest2;
      v16 = 2112;
      v17 = requestCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "loader: %@ enqueueContentInfoRequest replacing pendingRequest: %@ with request %@", &v12, 0x20u);
    }

    pendingInfoRequest3 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
    completion = [pendingInfoRequest3 completion];

    if (completion)
    {
      pendingInfoRequest4 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
      (completion)[2](completion, pendingInfoRequest4, 0);
    }
  }

  [(BKWK2WebViewLoader *)self setPendingInfoRequest:requestCopy];
  [(BKWK2WebViewLoader *)self _sendNextInfoRequest];
}

- (void)_sendNextInfoRequest
{
  currentInfoRequest = [(BKWK2WebViewLoader *)self currentInfoRequest];

  if (!currentInfoRequest)
  {
    pendingInfoRequest = [(BKWK2WebViewLoader *)self pendingInfoRequest];
    if (pendingInfoRequest)
    {
      v5 = pendingInfoRequest;
      [(BKWK2WebViewLoader *)self setPendingInfoRequest:0];
      [(BKWK2WebViewLoader *)self _updateContentInformationWithRequest:v5];
      pendingInfoRequest = v5;
    }
  }
}

- (int64_t)_scrollPageCountFromCurrentPageSize
{
  paginationOptions = [(BKWK2WebViewLoader *)self paginationOptions];
  [paginationOptions scrollPageLength];
  v5 = v4;

  if (v5 <= 1.0)
  {
    return 1;
  }

  webView = [(BKWK2WebViewLoader *)self webView];
  be_estimatedContentSizeValue = [webView be_estimatedContentSizeValue];

  if (!be_estimatedContentSizeValue || (([be_estimatedContentSizeValue CGSizeValue], CGSizeZero.width == v9) ? (v10 = CGSizeZero.height == v8) : (v10 = 0), v10))
  {
    webView2 = [(BKWK2WebViewLoader *)self webView];
    scrollView = [webView2 scrollView];
    [scrollView contentSize];
    v12 = v18;
    v14 = v19;
  }

  else
  {
    [be_estimatedContentSizeValue CGSizeValue];
    v12 = v11;
    v14 = v13;
  }

  paginationOptions2 = [(BKWK2WebViewLoader *)self paginationOptions];
  if (![paginationOptions2 isHorizontalScroll])
  {
    v12 = v14;
  }

  return vcvtmd_s64_f64(v12 / v5) + 1;
}

- (id)_pageOffsetsForFrames:(id)frames
{
  framesCopy = frames;
  v5 = objc_alloc_init(NSMutableDictionary);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6CE78;
  v10[3] = &unk_1E4740;
  v10[4] = self;
  ordinal = [(BKWK2WebViewLoader *)self ordinal];
  v6 = v5;
  v11 = v6;
  [framesCopy enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (unint64_t)_pageOffsetForXOffset:(double)offset
{
  paginationOptions = [(BKWK2WebViewLoader *)self paginationOptions];

  if (!paginationOptions)
  {
    v7 = _AEWKLoaderLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Invalid Pagination Options in Loader %@ when trying to determine pageOffsetForXOffset", &v37, 0xCu);
    }
  }

  if ([(BKWK2WebViewLoader *)self pageCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = _AEWKLoaderLog(0x7FFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Page count not initialied in Loader %@ when trying to determine pageOffsetForXOffset", &v37, 0xCu);
    }
  }

  paginationOptions2 = [(BKWK2WebViewLoader *)self paginationOptions];
  paginationOptions3 = [(BKWK2WebViewLoader *)self paginationOptions];
  mode = [paginationOptions3 mode];

  if (mode)
  {
    [paginationOptions2 pageLength];
    v13 = v12;
    [paginationOptions2 gapBetweenPages];
    v15 = v13 + v14;
  }

  else
  {
    [paginationOptions2 scrollPageLength];
    v15 = v16;
  }

  if (v15 <= 0.0)
  {
    goto LABEL_25;
  }

  paginationOptions4 = [(BKWK2WebViewLoader *)self paginationOptions];
  mode2 = [paginationOptions4 mode];

  if (mode2 == &dword_0 + 2)
  {
    v19 = vcvtmd_u64_f64(fmax(offset, 0.0) / v15);
    goto LABEL_31;
  }

  if (([paginationOptions2 isHorizontalScroll] & 1) == 0)
  {
    mode3 = [paginationOptions2 mode];
    if (mode3 != &dword_0 + 3)
    {
      v31 = _AEWKLoaderLog(mode3);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "We don't handle calculating the page offset for this document.", &v37, 2u);
      }

LABEL_25:
      v19 = 0;
      goto LABEL_31;
    }
  }

  if ([(BKWK2WebViewLoader *)self pageTextDirectionIsRTL])
  {
    webView = [(BKWK2WebViewLoader *)self webView];
    [webView frame];
    Width = CGRectGetWidth(v43);
    [paginationOptions2 pageLength];
    v24 = v23 + v23;

    if (Width > v24)
    {
      v26 = _AEBookPluginsRTLLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        webView2 = [(BKWK2WebViewLoader *)self webView];
        v28 = [NSNumber numberWithDouble:offset];
        offset = offset - v15;
        v29 = [NSNumber numberWithDouble:offset];
        v37 = 134218498;
        selfCopy2 = webView2;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = v29;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[#RTL] WebView: %p is possibly 2up. Changing xOffset from %@ to %@ to get page Offset", &v37, 0x20u);
      }

      else
      {
        offset = offset - v15;
      }
    }

    v30 = ceil(-offset / v15);
    v32 = floor(offset / v15);
    if (offset > 0.0)
    {
      v30 = v32;
    }
  }

  else
  {
    v30 = fabs(floor(offset / v15));
  }

  v19 = v30;
LABEL_31:
  pageCount = [(BKWK2WebViewLoader *)self pageCount];
  if (v19 < pageCount || pageCount < 1)
  {
    v35 = v19;
  }

  else
  {
    v35 = pageCount - 1;
  }

  return v35;
}

- (_NSRange)pageOffsetRangeForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  paginationOptions = [(BKWK2WebViewLoader *)self paginationOptions];

  if (!paginationOptions)
  {
    v10 = _AEWKLoaderLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Invalid pagination options in loader %@", &v15, 0xCu);
    }
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  IsNull = CGRectIsNull(v18);
  if (IsNull)
  {
    v12 = _AEWKLoaderLog(IsNull);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Invalid rect when getting pageOffsetForRect in loader %@", &v15, 0xCu);
    }

    v13 = 0;
    height = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    height = [(BKWK2WebViewLoader *)self _uncheckedPageOffsetRangeForRect:x, y, width, height];
  }

  result.length = v13;
  result.location = height;
  return result;
}

- (_NSRange)_uncheckedPageOffsetRangeForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  paginationOptions = [(BKWK2WebViewLoader *)self paginationOptions];
  if ([paginationOptions mode])
  {
  }

  else
  {
    paginationOptions2 = [(BKWK2WebViewLoader *)self paginationOptions];
    isHorizontalScroll = [paginationOptions2 isHorizontalScroll];

    if (!isHorizontalScroll)
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      MinY = CGRectGetMinY(v35);
      if (MinY <= 3.40282347e38)
      {
        v23 = MinY;
      }

      else
      {
        v23 = 3.40282347e38;
      }

      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v25 = fmax(CGRectGetMaxY(v36), -3.40282347e38);
      if (v23 > v25)
      {
        v15 = _AEWKLoaderLog(v24);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v30 = 0;
        v16 = &v30;
        goto LABEL_10;
      }

      paginationOptions3 = [(BKWK2WebViewLoader *)self paginationOptions];
      [paginationOptions3 contentLayoutSize];
      v28 = v27;

      v20 = vcvtmd_u64_f64(v23 / v28);
      v29 = vcvtmd_u64_f64(v25 / v28);
      if (v20 >= v29)
      {
        v18 = v29;
      }

      else
      {
        v18 = v20;
      }

      if (v20 <= v29)
      {
        v20 = v29;
      }

LABEL_16:
      v17 = v20 - v18 + 1;
      goto LABEL_29;
    }
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinX = CGRectGetMinX(v33);
  if (MinX <= 3.40282347e38)
  {
    v12 = MinX;
  }

  else
  {
    v12 = 3.40282347e38;
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v14 = fmax(CGRectGetMaxX(v34), -3.40282347e38);
  if (v12 <= v14)
  {
    v19 = [(BKWK2WebViewLoader *)self _pageOffsetForXOffset:v12];
    v18 = [(BKWK2WebViewLoader *)self _pageOffsetForXOffset:v14];
    v20 = v18;
    v21 = v19 > v18;
    if (v19 < v18)
    {
      v18 = v19;
    }

    if (v21)
    {
      v20 = v19;
    }

    goto LABEL_16;
  }

  v15 = _AEWKLoaderLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = buf;
LABEL_10:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Bogus rect checking _uncheckedPageOffsetRangeForRect", v16, 2u);
  }

LABEL_11:

  v17 = 0;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:
  result.length = v17;
  result.location = v18;
  return result;
}

- (unint64_t)pageOffsetForLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = v5;
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pageOffset = [locationCopy pageOffset];
      v9 = _AEWKLoaderLog(pageOffset);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134218242;
        v15 = pageOffset;
        v16 = 2112;
        v17 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Determined Page Offset %lu for page location %@", &v14, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([locationCopy isMemberOfClass:objc_opt_class()])
        {
          pageOffset = 0;
        }

        else
        {
          pageOffset = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_21;
      }

      anchor = [locationCopy anchor];
      v9 = anchor;
      if (anchor)
      {
        anchor = [(BKWK2WebViewLoader *)self pageOffsetForAnchor:anchor];
        pageOffset = anchor;
      }

      else
      {
        pageOffset = 0;
      }

      v12 = _AEWKLoaderLog(anchor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134218242;
        v15 = pageOffset;
        v16 = 2112;
        v17 = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Determined Page Offset %lu for anchor location %@", &v14, 0x16u);
      }
    }

    goto LABEL_21;
  }

  isPageLocation = [v5 isPageLocation];
  if (isPageLocation)
  {
    pageOffset = [v6 pageOffset];
  }

  else
  {
    v10 = _AEWKLoaderLog(isPageLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "CFI Location is not a pageLocation - unable to get pageOffset for this location", &v14, 2u);
    }

    pageOffset = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_21:

  return pageOffset;
}

- (id)locationForPageOffset:(unint64_t)offset contentOffset:(CGPoint)contentOffset
{
  v5 = [BKEpubCFILocation unknownLocation:offset];
  currentFirstVisbleCFILocation = [(BKWK2WebViewLoader *)self currentFirstVisbleCFILocation];

  if (currentFirstVisbleCFILocation)
  {
    currentFirstVisbleCFILocation2 = [(BKWK2WebViewLoader *)self currentFirstVisbleCFILocation];

    v5 = currentFirstVisbleCFILocation2;
  }

  return v5;
}

- (id)locationForAnchor:(id)anchor
{
  anchorCopy = anchor;
  anchorLocations = [(BKWK2WebViewLoader *)self anchorLocations];
  v6 = [anchorLocations objectForKey:anchorCopy];

  return v6;
}

- (id)anchorFrameForAnchor:(id)anchor
{
  anchorCopy = anchor;
  anchorFrames = [(BKWK2WebViewLoader *)self anchorFrames];
  v6 = [anchorFrames objectForKey:anchorCopy];

  return v6;
}

- (unint64_t)pageOffsetForAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (![anchorCopy length])
  {
    v5 = _AEWKLoaderLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      ordinal = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Request to find page offset from an empty anchor ordinal:%lu", &v11, 0xCu);
    }

    goto LABEL_12;
  }

  v5 = [(BKWK2WebViewLoader *)self locationForAnchor:anchorCopy];
  v6 = _AEWKLoaderLog(v5);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      ordinal = anchorCopy;
      v13 = 2048;
      ordinal2 = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Unknown location for anchor %@ ordinal:%lu", &v11, 0x16u);
    }

LABEL_12:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    ordinal = v5;
    v13 = 2112;
    ordinal2 = anchorCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Found location %@ for anchor %@", &v11, 0x16u);
  }

  if ([v5 pageOffset]== 0x7FFFFFFFFFFFFFFFLL)
  {
    pageOffset = [(BKWK2WebViewLoader *)self pageOffsetForLocation:v5];
  }

  else
  {
    pageOffset = [v5 pageOffset];
  }

  v9 = pageOffset;
LABEL_15:

  return v9;
}

- (CGRect)rectForPageOffset:(unint64_t)offset
{
  pageCount = [(BKWK2WebViewLoader *)self pageCount];
  if (pageCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    paginationOptions = [(BKWK2WebViewLoader *)self paginationOptions];
    [paginationOptions contentLayoutSize];
    v9 = v8;
    height = v10;

    v13 = _AEWKLoaderLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v44 = 134217984;
      ordinal = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "rectForPageOffset invalid page count ordinal: %lu", &v44, 0xCu);
    }

    y = 0.0;
    goto LABEL_5;
  }

  if (offset != 0x7FFFFFFFFFFFFFFFLL)
  {
    paginationOptions2 = [(BKWK2WebViewLoader *)self paginationOptions];
    [paginationOptions2 contentLayoutSize];
    v9 = v18;
    height = v19;

    paginationOptions3 = [(BKWK2WebViewLoader *)self paginationOptions];
    mode = [paginationOptions3 mode];

    paginationOptions4 = [(BKWK2WebViewLoader *)self paginationOptions];
    if ([paginationOptions4 mode] == &dword_0 + 3)
    {
      isHorizontalScroll = 1;
    }

    else
    {
      paginationOptions5 = [(BKWK2WebViewLoader *)self paginationOptions];
      isHorizontalScroll = [paginationOptions5 isHorizontalScroll];
    }

    paginationOptions6 = [(BKWK2WebViewLoader *)self paginationOptions];
    mode2 = [paginationOptions6 mode];
    if (mode2 == &dword_4 || (-[BKWK2WebViewLoader paginationOptions](self, "paginationOptions"), paginationOptions5 = objc_claimAutoreleasedReturnValue(), ![paginationOptions5 mode]))
    {
      paginationOptions7 = [(BKWK2WebViewLoader *)self paginationOptions];
      v26 = [paginationOptions7 isHorizontalScroll] ^ 1;

      if (mode2 == &dword_4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_18:
    if (mode)
    {
      paginationOptions8 = [(BKWK2WebViewLoader *)self paginationOptions];
      [paginationOptions8 gapBetweenPages];
      v30 = v29;

      if (offset)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = 0.0;
      if (offset)
      {
LABEL_20:
        v31 = v30 * 0.5;
        v32 = (offset - 1);
        if (v26)
        {
          y = v31 + height + v31 + v32 * (height + v30);
          x = 0.0;
          if ((isHorizontalScroll & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_26;
        }

        v33 = v9 + v30;
        if ((isHorizontalScroll & 1) == 0)
        {
          x = v31 + v9 + v31 + v32 * v33;
LABEL_33:
          y = 0.0;
          goto LABEL_34;
        }

LABEL_30:
        v34 = -(v33 * offset);
        webView = [(BKWK2WebViewLoader *)self webView];
        [webView frame];
        Width = CGRectGetWidth(v46);
        paginationOptions9 = [(BKWK2WebViewLoader *)self paginationOptions];
        [paginationOptions9 pageLength];
        v39 = v38 + v38;

        if (Width <= v39)
        {
          x = v34;
        }

        else
        {
          x = v33 + v34;
        }

        goto LABEL_33;
      }
    }

    y = 0.0;
    if ((isHorizontalScroll & 1) == 0)
    {
LABEL_5:
      x = 0.0;
      goto LABEL_34;
    }

    if (v26)
    {
LABEL_26:
      x = -0.0;
      goto LABEL_34;
    }

    v33 = v9 + v30;
    goto LABEL_30;
  }

  v16 = _AEWKLoaderLog(pageCount);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v44 = 134217984;
    ordinal = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "rectForPageOffset invalid pageOffset request in ordinal: %lu", &v44, 0xCu);
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  v9 = CGRectNull.size.width;
  height = CGRectNull.size.height;

LABEL_34:
  v40 = x;
  v41 = y;
  v42 = v9;
  v43 = height;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)contentRectForVisibleContent
{
  webView = [(BKWK2WebViewLoader *)self webView];
  [(BKWK2WebViewLoader *)self contentRectForVisiblePage];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  window = [webView window];
  if (window)
  {
    [webView bounds];
    [window convertRect:webView fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [window bounds];
    v41.origin.x = v21;
    v41.origin.y = v22;
    v41.size.width = v23;
    v41.size.height = v24;
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    v39 = CGRectIntersection(v38, v41);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    be_contentView = [webView be_contentView];
    [window convertRect:be_contentView toView:{x, y, width, height}];
    v5 = v30;
    v7 = v31;
    v9 = v32;
    v11 = v33;
  }

  v34 = v5;
  v35 = v7;
  v36 = v9;
  v37 = v11;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)contentRectForVisiblePage
{
  webView = [(BKWK2WebViewLoader *)self webView];
  be_contentView = [webView be_contentView];
  [webView bounds];
  [be_contentView convertRect:webView fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  v7 = [name isEqualToString:@"cfiUpdate"];

  if (v7)
  {
    objc_opt_class();
    body = [messageCopy body];
    v9 = BUDynamicCast();

    objc_opt_class();
    v10 = [v9 objectForKeyedSubscript:@"visibleCFIs"];
    v11 = BUDynamicCast();

    objc_opt_class();
    v12 = [v11 objectForKeyedSubscript:@"start"];
    v13 = BUDynamicCast();

    objc_opt_class();
    v14 = [v11 objectForKeyedSubscript:@"end"];
    v15 = BUDynamicCast();

    v50 = v11;
    if (!v11 || !v13 || !v15)
    {
      v17 = _AEWKLoaderLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        name2 = [messageCopy name];
        body2 = [messageCopy body];
        *buf = 138412546;
        v56 = name2;
        v57 = 2112;
        v58 = body2;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Failed to get cfi string from message %@ %@", buf, 0x16u);
      }
    }

    v20 = _AECaptureLocationLog(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [NSNumber numberWithUnsignedInteger:[(BKWK2WebViewLoader *)self ordinal]];
      *buf = 138412802;
      v56 = v21;
      v57 = 2112;
      v58 = v13;
      v59 = 2112;
      v60 = v15;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "ordinal: %@ BKWK2WebViewLoaderCFIUpdateJSMessage received start: %@  end: %@ ", buf, 0x20u);
    }

    if (v13)
    {
      v54 = 0;
      v22 = [BKEpubCFILocation locationForCFI:v13 error:&v54];
      v23 = v54;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v51 = v9;
    if (v15)
    {
      v53 = 0;
      v37 = [BKEpubCFILocation locationForCFI:v15 error:&v53];
      v38 = v53;

      v23 = v38;
    }

    else
    {
      v37 = 0;
    }

    v39 = [v37 cfi];
    v40 = [v22 cfi];
    v41 = [v39 compare:v40];

    if (v41 == -1)
    {
      v42 = v22;
    }

    else
    {
      v42 = v37;
    }

    if (v41 == -1)
    {
      v22 = v37;
    }

    if (v22 && v42)
    {
      v43 = [v22 unionWithCFI:v42];
    }

    else if (v22)
    {
      v43 = v22;
    }

    else
    {
      v43 = v42;
    }

    v44 = v43;
    v45 = _AECaptureLocationLog(v43);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [NSNumber numberWithUnsignedInteger:[(BKWK2WebViewLoader *)self ordinal]];
      *buf = 138412546;
      v56 = v46;
      v57 = 2112;
      v58 = v22;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "ordinal: %@ BKWK2WebViewLoaderCFIUpdateJSMessage capturing startLocation location: %@ ", buf, 0x16u);
    }

    [(BKWK2WebViewLoader *)self setCurrentFirstVisbleCFILocation:v22];
    [(BKWK2WebViewLoader *)self setCurrentLastVisbleCFILocation:v42];
    [(BKWK2WebViewLoader *)self setCurrentVisbleCFILocation:v44];
    delegate = [(BKWK2WebViewLoader *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      currentVisbleCFILocation = [(BKWK2WebViewLoader *)self currentVisbleCFILocation];
      [delegate webViewLoader:self didUpdateCurrentVisibleCFILocation:currentVisbleCFILocation];
    }

    v29 = v50;
    v27 = v51;
    goto LABEL_43;
  }

  name3 = [messageCopy name];
  v25 = [name3 isEqualToString:@"selectionChange"];

  if (v25)
  {
    objc_opt_class();
    body3 = [messageCopy body];
    v27 = BUDynamicCast();

    if (!v27)
    {
LABEL_44:

      goto LABEL_45;
    }

    objc_opt_class();
    v28 = [v27 objectForKeyedSubscript:@"cfi"];
    v13 = BUDynamicCast();

    if ([v13 length])
    {
      v52 = 0;
      v29 = [BKEpubCFILocation locationForCFI:v13 error:&v52];
      v30 = v52;
      v15 = v30;
      if (v30)
      {
        v31 = _AEWKLoaderLog(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          name4 = [messageCopy name];
          *buf = 138412546;
          v56 = name4;
          v57 = 2112;
          v58 = v15;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Failed to get cfi string from message %@ %@", buf, 0x16u);
        }
      }

      if (v29)
      {
        [(BKWK2WebViewLoader *)self setCurrentSelectionCFI:v29];
        objc_opt_class();
        v33 = [v27 objectForKeyedSubscript:@"containsAnchor"];
        v34 = BUDynamicCast();
        -[BKWK2WebViewLoader setCurrentSelectionContainsAnchor:](self, "setCurrentSelectionContainsAnchor:", [v34 BOOLValue]);

        delegate2 = [(BKWK2WebViewLoader *)self delegate];
        LOBYTE(v33) = objc_opt_respondsToSelector();

        if (v33)
        {
          delegate3 = [(BKWK2WebViewLoader *)self delegate];
          [delegate3 webViewLoader:self didChangeSelection:v29];
        }
      }
    }

    else
    {
      v29 = 0;
      v15 = 0;
    }

    objc_opt_class();
    v49 = [v27 objectForKeyedSubscript:@"selectionText"];
    v23 = BUDynamicCast();

    if (v23)
    {
      [(BKWK2WebViewLoader *)self setCurrentTextSelection:v23];
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_45:
}

- (CGRect)desiredWebViewFrame
{
  x = self->_desiredWebViewFrame.origin.x;
  y = self->_desiredWebViewFrame.origin.y;
  width = self->_desiredWebViewFrame.size.width;
  height = self->_desiredWebViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BKWK2WebViewLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end