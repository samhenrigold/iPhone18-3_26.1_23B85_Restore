@interface BKWebViewProxy
- (CGRect)contentRectForVisibleContent;
- (CGRect)frame;
- (CGRect)localFrame;
- (CGRect)rectForPageOffset:(unint64_t)offset;
- (double)scrollingPageHeightForPaginationMode:(unint64_t)mode configuration:(id)configuration;
- (double)scrollingPageWidthForPaginationMode:(unint64_t)mode configuration:(id)configuration;
- (id)currentLocationForOrdinal:(unint64_t)ordinal pageOffset:(unint64_t)offset contentInsets:(UIEdgeInsets)insets;
- (unint64_t)pageCount;
- (unint64_t)pageOffsetForLocation:(id)location;
- (void)_butActually_wk2_scrollToPage:(int64_t)page paginationMode:(unint64_t)mode pageProgressionDirection:(int)direction configuration:(id)configuration;
- (void)_wk2_scrollToPage:(int64_t)page paginationMode:(unint64_t)mode pageProgressionDirection:(int)direction configuration:(id)configuration;
- (void)clientRectsForLocation:(id)location completion:(id)completion;
- (void)clientRectsForLocations:(id)locations completion:(id)completion;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setScrollViewClipsToBounds:(BOOL)bounds;
@end

@implementation BKWebViewProxy

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(BKWebViewProxy *)self setLocalFrame:?];
  loader = [(BKWebViewProxy *)self loader];
  [loader setDesiredWebViewFrame:{x, y, width, height}];
}

- (CGRect)frame
{
  [(BKWebViewProxy *)self loader];

  [(BKWebViewProxy *)self localFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (unint64_t)pageCount
{
  loader = [(BKWebViewProxy *)self loader];
  pageCount = [loader pageCount];

  return pageCount;
}

- (void)setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  loader = [(BKWebViewProxy *)self loader];
  webView = [loader webView];
  [webView setClipsToBounds:boundsCopy];
}

- (void)setScrollViewClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  loader = [(BKWebViewProxy *)self loader];
  webView = [loader webView];
  scrollView = [webView scrollView];
  [scrollView setClipsToBounds:boundsCopy];
}

- (void)clientRectsForLocations:(id)locations completion:(id)completion
{
  locationsCopy = locations;
  completionCopy = completion;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = locationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        v15 = BUDynamicCast();
        if (v15)
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  loader = [(BKWebViewProxy *)self loader];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8BA10;
  v19[3] = &unk_1E46F0;
  v20 = v8;
  v21 = completionCopy;
  v17 = v8;
  v18 = completionCopy;
  [loader clientRectsForLocations:v9 completion:v19];
}

- (void)clientRectsForLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  v8 = completionCopy;
  if (locationCopy)
  {
    v16 = locationCopy;
    v9 = [NSArray arrayWithObjects:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_8BC2C;
    v14[3] = &unk_1E4DC0;
    v15 = v8;
    [(BKWebViewProxy *)self clientRectsForLocations:v9 completion:v14];

    v10 = v15;
  }

  else
  {
    v11 = _AEWKProxyLog(completionCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "clientRectsForLocation: nil location", v13, 2u);
    }

    v12 = objc_retainBlock(v8);
    v10 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0, 0, 0);
    }
  }
}

- (CGRect)contentRectForVisibleContent
{
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    loader = [(BKWebViewProxy *)self loader];
    [loader contentRectForVisibleContent];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)rectForPageOffset:(unint64_t)offset
{
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    loader = [(BKWebViewProxy *)self loader];
    [loader rectForPageOffset:offset];
    x = v6;
    y = v8;
    width = v10;
    height = v12;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)currentLocationForOrdinal:(unint64_t)ordinal pageOffset:(unint64_t)offset contentInsets:(UIEdgeInsets)insets
{
  v6 = [(BKWebViewProxy *)self loader:ordinal];
  currentFirstVisbleCFILocation = [v6 currentFirstVisbleCFILocation];

  [currentFirstVisbleCFILocation setWk1EpubLocation:0];
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    v8 = currentFirstVisbleCFILocation;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (unint64_t)pageOffsetForLocation:(id)location
{
  locationCopy = location;
  hasWKWebView = [(BKWebViewProxy *)self hasWKWebView];
  if (hasWKWebView)
  {
    v6 = _AEWKProxyLog(hasWKWebView);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v16 = 138412290;
      v17 = v8;
    }
  }

  [(BKWebViewProxy *)self loader];

  [(BKWebViewProxy *)self hasWKWebView];
  hasWKWebView2 = [(BKWebViewProxy *)self hasWKWebView];
  if (hasWKWebView2)
  {
    v10 = _AEWKProxyLog(hasWKWebView2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Unable to determine current page offset.", &v16, 2u);
    }

    v12 = _AERePaginationLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BKEPubCVC - pageOffsetForLocation: No Page Offset Found for location of type (%@)!", &v16, 0xCu);
    }
  }

  [(BKWebViewProxy *)self hasWKWebView];

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (double)scrollingPageWidthForPaginationMode:(unint64_t)mode configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [configurationCopy contentLayoutSize];
    Width = v8;
  }

  else
  {
    Width = 0.0;
    if ([(BKWebViewProxy *)self hasWKWebView])
    {
      loader = [(BKWebViewProxy *)self loader];
      [loader desiredWebViewFrame];
      Width = CGRectGetWidth(v12);
    }
  }

  return Width;
}

- (double)scrollingPageHeightForPaginationMode:(unint64_t)mode configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (mode == 4)
  {
    [configurationCopy contentLayoutSize];
    Height = v8;
  }

  else
  {
    Height = 0.0;
    if ([(BKWebViewProxy *)self hasWKWebView])
    {
      loader = [(BKWebViewProxy *)self loader];
      [loader desiredWebViewFrame];
      Height = CGRectGetHeight(v12);
    }
  }

  return Height;
}

- (void)_wk2_scrollToPage:(int64_t)page paginationMode:(unint64_t)mode pageProgressionDirection:(int)direction configuration:(id)configuration
{
  configurationCopy = configuration;
  loader = [(BKWebViewProxy *)self loader];
  webView = [loader webView];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_8C414;
  v33[3] = &unk_1E4DE8;
  v33[4] = self;
  pageCopy = page;
  modeCopy = mode;
  directionCopy = direction;
  v13 = configurationCopy;
  v34 = v13;
  v14 = objc_retainBlock(v33);
  scrollView = [webView scrollView];
  [scrollView contentSize];
  v17 = v16;
  v19 = v18;

  loader2 = [(BKWebViewProxy *)self loader];
  pageCount = [loader2 pageCount];

  be_pageLength = [v13 be_pageLength];
  v24 = v23;
  if ((mode & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v25 = v17;
  }

  else
  {
    v25 = v19;
  }

  v26 = v25 / pageCount;
  if (v26 < v23 * 0.8)
  {
    v27 = _AEBookPluginsPageTurnLog(be_pageLength);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [NSNumber numberWithDouble:v25];
      v29 = [NSNumber numberWithDouble:v24 * [(BKWebViewProxy *)self pageCount]];
      v30 = [NSNumber numberWithDouble:v26];
      v31 = [NSNumber numberWithDouble:v24 * 0.8];
      *buf = 138413058;
      v39 = v28;
      v40 = 2112;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "contentLength is %@ but a size more like %@ seems more plausible. we compared %@ against %@", buf, 0x2Au);
    }

    goto LABEL_13;
  }

  if (v17 == CGSizeZero.width && v19 == CGSizeZero.height)
  {
LABEL_13:
    [webView _doAfterNextPresentationUpdate:v14];
    goto LABEL_14;
  }

  (v14[2])(v14);
LABEL_14:
}

- (void)_butActually_wk2_scrollToPage:(int64_t)page paginationMode:(unint64_t)mode pageProgressionDirection:(int)direction configuration:(id)configuration
{
  configurationCopy = configuration;
  if (page <= 0x7FFFFFFFFFFFFFFELL)
  {
    if ([(BKWebViewProxy *)self hasWKWebView])
    {
      loader = [(BKWebViewProxy *)self loader];
      pageCount = [loader pageCount];
    }

    else
    {
      pageCount = 0;
    }

    loader2 = [(BKWebViewProxy *)self loader];
    webView = [loader2 webView];
    isLoading = [webView isLoading];

    if (isLoading && pageCount <= 0)
    {
      webView2 = _AEBookPluginsPageTurnLog(v16);
      if (os_log_type_enabled(webView2, OS_LOG_TYPE_ERROR))
      {
        loader3 = [(BKWebViewProxy *)self loader];
        v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [loader3 ordinal]);
        v20 = [NSNumber numberWithInteger:page];
        *buf = 138412546;
        v130 = v19;
        v131 = 2112;
        v132 = v20;
        _os_log_impl(&dword_0, webView2, OS_LOG_TYPE_ERROR, "Attempt to turn pages in:%@ to %@ when we are not loaded and have no known pagecount.", buf, 0x16u);

LABEL_12:
      }
    }

    else
    {
      if (pageCount != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (pageCount >= page)
        {
          pageCopy = page;
        }

        else
        {
          pageCopy = (pageCount - 1);
          v23 = _AEBookPluginsPageTurnLog(v16);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [NSNumber numberWithInteger:page];
            v25 = [NSNumber numberWithInteger:pageCount];
            v26 = [NSNumber numberWithInteger:pageCount - 1];
            *buf = 138412802;
            v130 = v24;
            v131 = 2112;
            v132 = v25;
            v133 = 2112;
            v134 = v26;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Attempt to turn to page %@ when we have %@ pages -- setting pageOffset to %@", buf, 0x20u);

            pageCopy = (pageCount - 1);
          }
        }

        loader4 = [(BKWebViewProxy *)self loader];
        webView2 = [loader4 webView];

        [webView2 frame];
        v29 = v28;
        v31 = v30;
        v116 = v33;
        v117 = v32;
        scrollView = [webView2 scrollView];
        be_estimatedContentSizeValue = [webView2 be_estimatedContentSizeValue];
        be_requestedContentOffset = [webView2 be_requestedContentOffset];
        [scrollView contentOffset];
        v38 = v37;
        v40 = v39;
        [scrollView contentSize];
        v42 = v41;
        v44 = v43;
        if (be_requestedContentOffset)
        {
          [be_requestedContentOffset CGPointValue];
          v46 = v45;
          v48 = v47;
          CGRectMakeWithSize();
          v141.x = v46;
          v141.y = v48;
          v49 = CGRectContainsPoint(v142, v141);
          if (v49)
          {
            if (v38 == CGPointZero.x && v40 == CGPointZero.y)
            {
              v40 = v48;
              v38 = v46;
            }
          }

          else
          {
            v114 = pageCopy;
            v50 = _AEBookPluginsPageTurnLog(v49);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v118 = be_requestedContentOffset;
              *v128 = v46;
              *&v128[1] = v48;
              [NSValue valueWithBytes:v128 objCType:"{CGPoint=dd}"];
              v121 = scrollView;
              v52 = v51 = be_estimatedContentSizeValue;
              *v127 = v42;
              *&v127[1] = v44;
              v53 = [NSValue valueWithBytes:v127 objCType:"{CGSize=dd}"];
              *buf = 138412546;
              v130 = v52;
              v131 = 2112;
              v132 = v53;
              _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "Requested content offset outside availabe content! offset: %@ contentSize: %@", buf, 0x16u);

              be_requestedContentOffset = v118;
              be_estimatedContentSizeValue = v51;
              scrollView = v121;
            }

            pageCopy = v114;
          }
        }

        if ([configurationCopy isScroll])
        {
          if (be_estimatedContentSizeValue)
          {
            v119 = v38;
            v122 = v40;
            [be_estimatedContentSizeValue CGSizeValue];
            CGRectMakeWithSize();
            v55 = v54;
            v57 = v56;
            v113 = v44;
            v115 = v42;
            v58 = v29;
            v60 = v59;
            v61 = v31;
            v63 = v62;
            CGRectMakeWithSize();
            v149.origin.x = v64;
            v149.origin.y = v65;
            v149.size.width = v66;
            v149.size.height = v67;
            v143.origin.x = v55;
            v143.origin.y = v57;
            v143.size.width = v60;
            v68 = v58;
            v42 = v115;
            v143.size.height = v63;
            v144 = CGRectUnion(v143, v149);
            width = v144.size.width;
            height = v144.size.height;
            v144.origin.x = v68;
            v144.origin.y = v61;
            v144.size.width = v117;
            v144.size.height = v116;
            if (v115 <= CGRectGetWidth(v144))
            {
              v145.origin.x = v68;
              v145.origin.y = v61;
              v145.size.width = v117;
              v145.size.height = v116;
              v44 = v113;
              v38 = v119;
              v40 = v122;
              if (v113 <= CGRectGetHeight(v145))
              {
                v44 = height;
                v42 = width;
              }
            }

            else
            {
              v38 = v119;
              v40 = v122;
              v44 = v113;
            }
          }

          if ([configurationCopy layout] == &dword_0 + 2)
          {
            [configurationCopy contentLayoutSize];
            v81 = v80;
            [configurationCopy contentInsets];
            v83 = -(v82 - v81 * pageCopy);
            [scrollView bounds];
            v85 = v44 - CGRectGetHeight(v146);
            if (v83 < v85)
            {
              v85 = v83;
            }

            if (v85 >= 0.0)
            {
              v40 = v85;
            }

            else
            {
              v40 = 0.0;
            }
          }

          else
          {
            layout = [configurationCopy layout];
            if (layout == &dword_0 + 3)
            {
              [(BKWebViewProxy *)self scrollingPageWidthForPaginationMode:mode configuration:configurationCopy];
              v87 = v86;
              [configurationCopy contentInsets];
              if (direction == 1)
              {
                v90 = v42 - v87 * (pageCopy + 1) + v89;
              }

              else
              {
                v90 = -(v88 - v87 * pageCopy);
              }

              [scrollView bounds];
              v112 = v42 - CGRectGetWidth(v148);
              if (v90 < v112)
              {
                v112 = v90;
              }

              if (v112 >= 0.0)
              {
                v38 = v112;
              }

              else
              {
                v38 = 0.0;
              }
            }
          }
        }

        else
        {
          [configurationCopy contentLayoutSize];
          v72 = v71;
          [configurationCopy gutterWidth];
          v74 = v73;
          [configurationCopy gutterWidth];
          if (pageCopy)
          {
            v76 = v72 + v74;
            v77 = ((pageCount * v76) - v75);
            v78 = (pageCopy * v76);
            if (v78 > v77)
            {
              v78 = v77;
            }
          }

          else
          {
            v78 = 0.0;
          }

          v79 = be_requestedContentOffset;
          if (direction == 1)
          {
            if ([configurationCopy layout] == &dword_0 + 2)
            {
              v78 = -v78;
            }

            else
            {
              loader5 = [(BKWebViewProxy *)self loader];
              webView3 = [loader5 webView];
              [webView3 bounds];
              v93 = CGRectGetWidth(v147);

              [configurationCopy contentLayoutSize];
              v78 = v93 - (v78 + v94);
            }
          }

          loader6 = [(BKWebViewProxy *)self loader];
          webView4 = [loader6 webView];
          be_contentView = [webView4 be_contentView];
          v40 = 0.0;
          [be_contentView convertPoint:scrollView toView:{v78, 0.0}];
          v38 = v98;

          be_requestedContentOffset = v79;
        }

        v99 = _AEBookPluginsLifeCycleLog(layout);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          *v126 = v38;
          *&v126[1] = v40;
          v100 = [NSValue valueWithBytes:v126 objCType:"{CGPoint=dd}"];
          v120 = be_requestedContentOffset;
          [scrollView contentOffset];
          v125[0] = v101;
          v125[1] = v102;
          [NSValue valueWithBytes:v125 objCType:"{CGPoint=dd}"];
          v123 = scrollView;
          v104 = v103 = be_estimatedContentSizeValue;
          [v123 contentSize];
          v124[0] = v105;
          v124[1] = v106;
          v107 = [NSValue valueWithBytes:v124 objCType:"{CGSize=dd}"];
          loader7 = [(BKWebViewProxy *)self loader];
          v109 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [loader7 ordinal]);
          *buf = 138544642;
          v130 = v100;
          v131 = 2114;
          v132 = v104;
          v133 = 2114;
          v134 = v120;
          v135 = 2114;
          v136 = v107;
          v137 = 2114;
          v138 = v103;
          v139 = 2114;
          v140 = v109;
          _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEFAULT, "BKWVP scrollToPage contentOffset:%{public}@ currentScrollViewOffset:%{public}@ requestedContentOffset:%{public}@ scrollViewContentSize:%{public}@ estimatedContentSize:%{public}@ ordinal:%{public}@", buf, 0x3Eu);

          be_requestedContentOffset = v120;
          be_estimatedContentSizeValue = v103;
          scrollView = v123;
        }

        loader8 = [(BKWebViewProxy *)self loader];
        webView5 = [loader8 webView];
        [webView5 be_setContentOffset:{v38, v40}];

        goto LABEL_53;
      }

      webView2 = _AEBookPluginsPageTurnLog(v16);
      if (os_log_type_enabled(webView2, OS_LOG_TYPE_ERROR))
      {
        loader3 = [NSNumber numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
        v21 = [NSNumber numberWithInteger:page];
        *buf = 138543618;
        v130 = loader3;
        v131 = 2114;
        v132 = v21;
        _os_log_impl(&dword_0, webView2, OS_LOG_TYPE_ERROR, "Attempt to set invalid offset - totalPages:%{public}@ pageOffset:%{public}@", buf, 0x16u);

        goto LABEL_12;
      }
    }

LABEL_53:
  }
}

- (CGRect)localFrame
{
  x = self->_localFrame.origin.x;
  y = self->_localFrame.origin.y;
  width = self->_localFrame.size.width;
  height = self->_localFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end