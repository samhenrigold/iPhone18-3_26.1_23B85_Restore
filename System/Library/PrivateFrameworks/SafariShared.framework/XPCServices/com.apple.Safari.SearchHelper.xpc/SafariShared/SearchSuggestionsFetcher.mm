@interface SearchSuggestionsFetcher
- (SearchSuggestionsFetcher)initWithSuggestionsURLTemplate:(id)template;
- (void)_handleErrorWithType:(int64_t)type;
- (void)_requestDidFailWithError:(id)error;
- (void)_requestDidFinishWithResponse:(id)response data:(id)data;
- (void)_resetFetchRequest;
- (void)_stopLoading;
- (void)cancelExistingSuggestionsRequest;
- (void)updateSuggestionsRequestWithSearchTerms:(id)terms userAgentString:(id)string completionHandler:(id)handler;
@end

@implementation SearchSuggestionsFetcher

- (SearchSuggestionsFetcher)initWithSuggestionsURLTemplate:(id)template
{
  templateCopy = template;
  v13.receiver = self;
  v13.super_class = SearchSuggestionsFetcher;
  v6 = [(SearchSuggestionsFetcher *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestionsURLTemplate, template);
    v8 = +[NSURLSessionConfiguration safari_ephemeralSessionConfiguration];
    [v8 setURLCache:0];
    [v8 set_timingDataOptions:2];
    v9 = [NSURLSession sessionWithConfiguration:v8];
    session = v7->_session;
    v7->_session = v9;

    v11 = v7;
  }

  return v7;
}

- (void)updateSuggestionsRequestWithSearchTerms:(id)terms userAgentString:(id)string completionHandler:(id)handler
{
  termsCopy = terms;
  stringCopy = string;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  [(SearchSuggestionsFetcher *)self _stopLoading];
  [(SearchSuggestionsFetcher *)self _handleErrorWithType:0];
  v11 = [termsCopy copy];
  searchTerms = self->_searchTerms;
  self->_searchTerms = v11;

  v13 = [handlerCopy copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v13;

  v15 = [(WBSOpenSearchURLTemplate *)self->_suggestionsURLTemplate URLWithSearchTerms:self->_searchTerms];
  v16 = [[NSMutableURLRequest alloc] initWithURL:v15 cachePolicy:1 timeoutInterval:2.0];
  [v16 setAttribution:1];
  if ([stringCopy length])
  {
    [v16 setValue:stringCopy forHTTPHeaderField:@"User-Agent"];
  }

  [v16 setNetworkServiceType:6];
  if (objc_opt_respondsToSelector())
  {
    [v16 _setWebSearchContent:1];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3042000000;
  v25 = sub_100002DB8;
  v26 = sub_100002DC4;
  v27 = 0;
  session = self->_session;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002DCC;
  v20[3] = &unk_100008550;
  objc_copyWeak(&v21, &location);
  v20[4] = &v22;
  v18 = [(NSURLSession *)session dataTaskWithRequest:v16 completionHandler:v20];
  dataTask = self->_dataTask;
  self->_dataTask = v18;

  objc_storeWeak(v23 + 5, self->_dataTask);
  [(NSURLSessionDataTask *)self->_dataTask resume];
  objc_destroyWeak(&v21);
  _Block_object_dispose(&v22, 8);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&location);
}

- (void)cancelExistingSuggestionsRequest
{
  [(SearchSuggestionsFetcher *)self _stopLoading];

  [(SearchSuggestionsFetcher *)self _handleErrorWithType:0];
}

- (void)_requestDidFinishWithResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  selfCopy = self;
  if ([(NSString *)self->_searchTerms length]&& self->_completionHandler)
  {
    _timingData = [(NSURLSessionDataTask *)self->_dataTask _timingData];
    countOfBytesReceived = [(NSURLSessionDataTask *)self->_dataTask countOfBytesReceived];
    dataTask = self->_dataTask;
    self->_dataTask = 0;

    v42 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v42;
    }

    else
    {
      v7 = 0;
    }

    v43 = v7;
    v8 = [v43 count];
    if (v8 <= 1)
    {
      v10 = sub_100003A74(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100003CDC(buf, [v43 count], v10);
      }

      (*(selfCopy->_completionHandler + 2))();
      [(SearchSuggestionsFetcher *)selfCopy _resetFetchRequest];
      goto LABEL_44;
    }

    searchTerms = self->_searchTerms;
    v12 = [v43 safari_stringAtIndex:0];
    LOBYTE(searchTerms) = [(NSString *)searchTerms isEqualToString:v12];

    if ((searchTerms & 1) == 0)
    {
      v15 = sub_100003A74(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = selfCopy->_searchTerms;
        v17 = [v43 safari_stringAtIndex:0];
        sub_100003C58(v16, v17, buf, v15);
      }
    }

    if ([v43 count] < 4)
    {
      v39 = 0;
    }

    else
    {
      v18 = [v43 safari_dictionaryAtIndex:3];
      v19 = v18;
      if (v18)
      {
        v39 = [v18 safari_numberForKey:@"google:navintent"];
      }

      else
      {
        v39 = 0;
      }
    }

    v38 = [v43 safari_arrayAtIndex:1];
    v49 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v38 count]);
    v47 = +[NSMutableArray array];
    v48 = +[NSMutableDictionary dictionary];
    if ([v43 count] < 4)
    {
      v51 = 0;
    }

    else
    {
      v20 = [v43 safari_dictionaryAtIndex:3];
      v51 = [v20 safari_arrayForKey:@"google:suggestdetail"];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v38;
    v21 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (!v21)
    {
LABEL_43:

      v35 = +[NSMutableArray array];
      [v35 addObjectsFromArray:v47];
      [v35 addObjectsFromArray:v49];
      v36 = [v35 mutableCopy];

      v37 = [[WBSSearchSuggestionsFetcherResponse alloc] initWithSuggestions:v36 postFixSuggestions:v48 prefixNavigationalIntent:v39 sizeInBytes:countOfBytesReceived statusCode:objc_msgSend(responseCopy timingData:{"statusCode"), _timingData}];
      (*(selfCopy->_completionHandler + 2))();
      [(SearchSuggestionsFetcher *)selfCopy _resetFetchRequest];

LABEL_44:
      goto LABEL_45;
    }

    v22 = 0;
    v23 = *v53;
LABEL_25:
    v24 = 0;
    while (1)
    {
      if (*v53 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v52 + 1) + 8 * v24);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v27 = [v51 objectAtIndexedSubscript:v22];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_39;
        }

        v29 = [v51 objectAtIndexedSubscript:v22];
        v30 = [v29 objectForKeyedSubscript:@"t"];
        v31 = v30 == 0;

        if (v31)
        {
          goto LABEL_38;
        }

        v32 = [v29 objectForKeyedSubscript:@"t"];
        if (![v26 hasSuffix:v32])
        {

LABEL_38:
LABEL_39:
          if (v26)
          {
            [v49 addObject:v26];
          }

          goto LABEL_41;
        }

        v33 = [v29 objectForKeyedSubscript:@"mp"];
        v34 = [v33 stringByAppendingString:v32];
        [v48 setObject:v34 forKeyedSubscript:v26];

        [v47 addObject:v26];
        ++v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 count])
        {
          v26 = [v25 safari_stringAtIndex:0];
          goto LABEL_39;
        }

        v26 = 0;
      }

LABEL_41:

      if (v21 == ++v24)
      {
        v21 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (!v21)
        {
          goto LABEL_43;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_45:
}

- (void)_requestDidFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100003A74(errorCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_100003D24(safari_privacyPreservingDescription, v8, v6);
  }

  [(SearchSuggestionsFetcher *)self _stopLoading];
  [(SearchSuggestionsFetcher *)self _handleErrorWithType:1];
}

- (void)_resetFetchRequest
{
  searchTerms = self->_searchTerms;
  self->_searchTerms = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_stopLoading
{
  [(NSURLSessionDataTask *)self->_dataTask cancel];
  dataTask = self->_dataTask;
  self->_dataTask = 0;
}

- (void)_handleErrorWithType:(int64_t)type
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v5 = [NSError errorWithDomain:WBSSearchSuggestionsFetcherErrorDomain code:type userInfo:0];
    completionHandler[2](completionHandler, 0, v5);

    [(SearchSuggestionsFetcher *)self _resetFetchRequest];
  }
}

@end