@interface SDShareSheetProxyLoader
- (SDShareSheetProxyLoader)initWithProxySection:(id)section;
- (SDShareSheetProxyLoaderDelegate)delegate;
- (id)description;
- (unint64_t)remainingProxiesCount;
- (void)_loadProxies:(id)proxies withTimeLimit:(BOOL)limit;
- (void)loadBatchWithSize:(unint64_t)size;
- (void)loadRemainingProxies;
@end

@implementation SDShareSheetProxyLoader

- (SDShareSheetProxyLoader)initWithProxySection:(id)section
{
  sectionCopy = section;
  v14.receiver = self;
  v14.super_class = SDShareSheetProxyLoader;
  v6 = [(SDShareSheetProxyLoader *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxySection, section);
    proxies = [sectionCopy proxies];
    v9 = [proxies copy];
    allProxies = v7->_allProxies;
    v7->_allProxies = v9;

    v11 = [(NSArray *)v7->_allProxies mutableCopy];
    remainingProxies = v7->_remainingProxies;
    v7->_remainingProxies = v11;

    v7->_loadTimeLimit = 0.25;
    atomic_store(0, &v7->_isCancelled);
  }

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDShareSheetProxyLoader;
  v3 = [(SDShareSheetProxyLoader *)&v7 description];
  proxySection = [(SDShareSheetProxyLoader *)self proxySection];
  v5 = [NSString stringWithFormat:@"%@ proxySection:%@", v3, proxySection];

  return v5;
}

- (unint64_t)remainingProxiesCount
{
  remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
  v3 = [remainingProxies count];

  return v3;
}

- (void)loadRemainingProxies
{
  isLoading = [(SDShareSheetProxyLoader *)self isLoading];
  if ((isLoading & 1) == 0)
  {
    v4 = share_sheet_log(isLoading);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "load remaining proxies for loader:%@", &v7, 0xCu);
    }

    remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
    v6 = [remainingProxies copy];
    [(SDShareSheetProxyLoader *)self _loadProxies:v6 withTimeLimit:1];
  }
}

- (void)loadBatchWithSize:(unint64_t)size
{
  isLoading = [(SDShareSheetProxyLoader *)self isLoading];
  if (size && (isLoading & 1) == 0)
  {
    remainingProxiesCount = [(SDShareSheetProxyLoader *)self remainingProxiesCount];
    if (remainingProxiesCount < size)
    {
      size = remainingProxiesCount;
    }

    if (!remainingProxiesCount)
    {
      sub_100085C54(a2, self);
    }

    v8 = share_sheet_log(remainingProxiesCount);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      sizeCopy = size;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "load proxy batch of size:%lu loader:%@", &v12, 0x16u);
    }

    v9 = [NSIndexSet indexSetWithIndexesInRange:0, size];
    remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
    v11 = [remainingProxies objectsAtIndexes:v9];

    [(SDShareSheetProxyLoader *)self _loadProxies:v11 withTimeLimit:0];
  }
}

- (void)_loadProxies:(id)proxies withTimeLimit:(BOOL)limit
{
  limitCopy = limit;
  proxiesCopy = proxies;
  [(SDShareSheetProxyLoader *)self setIsLoading:1];
  v47 = +[NSMutableArray array];
  v46 = +[NSMutableIndexSet indexSet];
  v45 = +[NSMutableIndexSet indexSet];
  v7 = +[NSDate timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = share_sheet_log(v7);
  v11 = share_sheet_log(v10);
  v12 = os_signpost_id_make_with_pointer(v11, self);

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadingProxies", "", buf, 2u);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = proxiesCopy;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        isCancelled = [(SDShareSheetProxyLoader *)self isCancelled];
        v19 = isCancelled;
        if (isCancelled)
        {
          v33 = share_sheet_log(isCancelled);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy2 = self;
            v34 = "loading was cancelled for loader:%@";
            goto LABEL_24;
          }

LABEL_25:
          v32 = v19 ^ 1;

          goto LABEL_26;
        }

        load = [(SDShareSheetProxyLoader *)v17 load];
        [v47 addObject:v17];
        allProxies = [(SDShareSheetProxyLoader *)self allProxies];
        v22 = [allProxies indexOfObject:v17];

        v24 = share_sheet_log(v23);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (load)
        {
          v26 = v46;
          if (v25)
          {
            *buf = 138412290;
            selfCopy2 = v17;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "load proxy succeeded:%@", buf, 0xCu);
            v26 = v46;
          }
        }

        else
        {
          v26 = v45;
          if (v25)
          {
            *buf = 138412290;
            selfCopy2 = v17;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "load proxy failed:%@", buf, 0xCu);
            v26 = v45;
          }
        }

        [v26 addIndex:v22];
        if (limitCopy)
        {
          [(SDShareSheetProxyLoader *)self loadTimeLimit];
          if (v27 > 0.0)
          {
            +[NSDate timeIntervalSinceReferenceDate];
            v29 = v28 - v9;
            loadTimeLimit = [(SDShareSheetProxyLoader *)self loadTimeLimit];
            if (v29 > v31 || v29 < 0.0)
            {
              v33 = share_sheet_log(loadTimeLimit);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                selfCopy2 = self;
                v34 = "loading time interval reached. Stop loading:%@";
LABEL_24:
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
              }

              goto LABEL_25;
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0;
  v19 = 0;
LABEL_26:

  v35 = share_sheet_log(+[CATransaction flush]);
  v36 = share_sheet_log(v35);
  v37 = os_signpost_id_make_with_pointer(v36, self);

  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v37, "LoadingProxies", "", buf, 2u);
  }

  remainingProxies = [(SDShareSheetProxyLoader *)self remainingProxies];
  [remainingProxies removeObjectsInArray:v47];

  [(SDShareSheetProxyLoader *)self setIsLoading:0];
  v39 = [obj count];
  if (v39 == [v47 count])
  {
    v40 = 0;
  }

  else
  {
    if (v19)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    if (((v32 | v19) & 1) == 0)
    {
      sub_100085CC8(a2, self);
      v40 = 2;
    }
  }

  v41 = objc_alloc_init(SDShareSheetProxyLoaderResult);
  [(SDShareSheetProxyLoaderResult *)v41 setState:v40];
  [(SDShareSheetProxyLoaderResult *)v41 setLoadedIndexes:v46];
  [(SDShareSheetProxyLoaderResult *)v41 setFailedIndexes:v45];
  delegate = [(SDShareSheetProxyLoader *)self delegate];
  [delegate proxyLoader:self didLoadProxiesWithResult:v41];
}

- (SDShareSheetProxyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end