@interface SPKQuery
- (BOOL)sendEmptyResponseIfNecessaryForSourceKind:(int)kind;
- (BOOL)shouldReturnEarly;
- (NSArray)childQueries;
- (NSString)unmodifiedUserQueryString;
- (SFFeedbackListener)feedbackListener;
- (SPKQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context;
- (SPKQuery)parentQuery;
- (SPKQueryDelegate)delegate;
- (id)description;
- (id)responseHandler;
- (void)_queryWillStart;
- (void)addChildQuery:(id)query;
- (void)cancel;
- (void)sendEndLocalSearchFeedback;
- (void)sendStartLocalSearchFeedback;
- (void)start;
@end

@implementation SPKQuery

- (SPKQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context
{
  queryCopy = query;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = SPKQuery;
  v13 = [(SPKQuery *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_queryId = ++gQueryId;
    v13->_queryGroupId = id;
    objc_storeStrong(&v13->_userQueryString, query);
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v16 = [queryCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    trimmedUserQueryString = v14->_trimmedUserQueryString;
    v14->_trimmedUserQueryString = v16;

    v14->_queryOptions = options;
    v14->_queryStartTime = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v14->_queryContext, context);
    v14->_wantsSuggestions = [contextCopy queryKind] == 2;
    v14->_queryState = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  queryId = [(SPKQuery *)self queryId];
  queryState = [(SPKQuery *)self queryState];
  if (queryState > 6)
  {
    v8 = @"unknown state";
  }

  else
  {
    v8 = off_1E85954F8[queryState];
  }

  userQueryString = [(SPKQuery *)self userQueryString];
  queryContext = [(SPKQuery *)self queryContext];
  v11 = SSRedactStringClient(userQueryString, 1, [queryContext isSearchToolClient]);
  v12 = [v3 stringWithFormat:@"<%@>[%p] (%lu:%@ - %@)", v5, self, queryId, v8, v11];

  return v12;
}

- (NSString)unmodifiedUserQueryString
{
  internalUnmodifiedUserQueryString = [(SPKQuery *)self internalUnmodifiedUserQueryString];
  v4 = internalUnmodifiedUserQueryString;
  if (internalUnmodifiedUserQueryString)
  {
    userQueryString = internalUnmodifiedUserQueryString;
  }

  else
  {
    userQueryString = [(SPKQuery *)self userQueryString];
  }

  v6 = userQueryString;

  return v6;
}

- (id)responseHandler
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__SPKQuery_responseHandler__block_invoke;
  aBlock[3] = &unk_1E85954D8;
  objc_copyWeak(&v6, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __27__SPKQuery_responseHandler__block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained || ([WeakRetained isCanceled] & 1) != 0)
  {
    goto LABEL_29;
  }

  v6 = [v3 userQueryString];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 userQueryString];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 userQueryString];
      v11 = [v3 userQueryString];
      if (([v10 isEqualToString:v11] & 1) == 0)
      {
        v42 = [v3 isRewrite];

        if ((v42 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v45 = v5;
  v46 = a1;
  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = v3;
  v12 = [v3 sections];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v70 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v20 = [v19 bundleIdentifier];

        if (v20)
        {
          v21 = MEMORY[0x1E696AD98];
          v22 = [v19 results];
          v23 = [v21 numberWithUnsignedInteger:objc_msgSend_count(v22)];
          v24 = [v19 bundleIdentifier];
          [v47 setObject:v23 forKeyedSubscript:v24];

          v25 = [v19 results];
          v15 += objc_msgSend_count(v25);

          ++v16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:v70 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v27 = v26;
  [*(v46 + 32) startTime];
  v29 = v28;
  v30 = SSGeneralLog();
  v3 = v44;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v45 queryGroupId];
    v31 = [v45 userQueryString];
    v32 = [v45 queryContext];
    v33 = SSRedactStringClient(v31, 0, [v32 isSearchToolClient]);
    v34 = SPKStringFromSourceKind([v44 sourceKind]);
    v35 = SPKStringFromResponseKind([v44 kind]);
    v36 = [v44 topHitIsIn];
    *buf = 134220034;
    v53 = v43;
    v54 = 2112;
    v55 = v33;
    v56 = 2112;
    v57 = v34;
    v58 = 2112;
    v59 = v35;
    v60 = 2048;
    v61 = (v27 - v29) * 1000.0;
    v62 = 1024;
    v63 = v36;
    v64 = 2048;
    v65 = v15;
    v66 = 2048;
    v67 = v16;
    v68 = 2112;
    v69 = v47;
    _os_log_impl(&dword_1D9F69000, v30, OS_LOG_TYPE_DEFAULT, "[qid=%lu][%@][%@][%@] Sending response (time=%.3fms) with topHitIsIn:%d #(total):%lu #(sections):%lu section:%@", buf, 0x58u);
  }

  v5 = v45;
  v37 = [v45 delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = [v45 delegate];
    [v39 delayResponse:v44 forQuery:v45];
  }

  v40 = [v44 kind];
  if (v40)
  {
    if (v40 == 6 || v40 == 4)
    {
      [v45 _queryDidComplete];
    }
  }

  else
  {
    [v45 setQueryState:6];
  }

  [*(v46 + 32) sendEndLocalSearchFeedback];
  v41 = [v45 delegate];
  [v41 queryTask:v45 gotResponse:v44];

LABEL_29:
}

- (NSArray)childQueries
{
  v2 = [(NSMutableArray *)self->_childQueries copy];

  return v2;
}

- (void)addChildQuery:(id)query
{
  queryCopy = query;
  v7 = queryCopy;
  if (!self->_childQueries)
  {
    v5 = objc_opt_new();
    childQueries = self->_childQueries;
    self->_childQueries = v5;

    queryCopy = v7;
  }

  [queryCopy setParentQuery:self];
  [(NSMutableArray *)self->_childQueries addObject:v7];
}

- (BOOL)shouldReturnEarly
{
  queryContext = [(SPKQuery *)self queryContext];
  searchDomains = [queryContext searchDomains];

  searchDomain = [objc_opt_class() searchDomain];
  if (objc_msgSend_count(searchDomains))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:searchDomain];
    v6 = [searchDomains containsObject:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)sendEmptyResponseIfNecessaryForSourceKind:(int)kind
{
  v4 = *&kind;
  queryContext = [(SPKQuery *)self queryContext];
  queryKind = [queryContext queryKind];

  if (queryKind > 0xF || ((1 << queryKind) & 0xB000) == 0)
  {
    queryContext = [(SPKQuery *)self queryContext];
    searchEntities = [queryContext searchEntities];
    v9 = objc_msgSend_count(searchEntities) != 0;
  }

  else
  {
    v9 = 1;
  }

  if (queryKind > 0xF || ((1 << queryKind) & 0xB000) == 0)
  {
  }

  if ([(NSString *)self->_trimmedUserQueryString length])
  {
    userQueryString = [(SPKQuery *)self userQueryString];
    if ([userQueryString length])
    {
      userQueryString2 = [(SPKQuery *)self userQueryString];
      v12 = [userQueryString2 UTF8String] != 0;

      v9 |= v12;
    }

    else
    {
      v9 = 1;
    }
  }

  v13 = ![(SPKQuery *)self shouldReturnEarly]& v9;
  if ((v13 & 1) == 0)
  {
    v14 = [[SPKResponse alloc] initWithQueryID:[(SPKQuery *)self queryGroupId] sourceKind:v4 sections:0];
    responseHandler = [(SPKQuery *)self responseHandler];
    (responseHandler)[2](responseHandler, v14);
  }

  return v13 ^ 1;
}

- (void)sendStartLocalSearchFeedback
{
  feedbackListener = [(SPKQuery *)self feedbackListener];
  if (feedbackListener)
  {
    v32 = feedbackListener;
    queryContext = [(SPKQuery *)self queryContext];
    if ([queryContext isSearchToolClient])
    {
      [(SPKQuery *)self setStartLocalSearchFeedback:0];
LABEL_18:

      feedbackListener = v32;
      goto LABEL_19;
    }

    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];
    command = [firstObject command];
    v8 = [command copy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = v10;
    if (v10)
    {
      [v10 setSearchString:0];
      [v11 setTokenString:0];
      v12 = objc_alloc(MEMORY[0x1E69CA478]);
      whyQuery = [queryContext whyQuery];
      queryContext2 = [(SPKQuery *)self queryContext];
      queryIdent = [queryContext2 queryIdent];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v18 = [v12 initWithEntityQueryCommand:v11 triggerEvent:whyQuery searchType:3 indexType:1 queryId:queryIdent originatingApp:bundleIdentifier];
      [(SPKQuery *)self setStartLocalSearchFeedback:v18];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E69CA478]);
      queryContext2 = [queryContext searchString];
      mainBundle = [v19 initWithInput:queryContext2 triggerEvent:objc_msgSend(queryContext indexType:{"whyQuery"), 1}];
      [(SPKQuery *)self setStartLocalSearchFeedback:mainBundle];
    }

    queryIdent2 = [queryContext queryIdent];
    startLocalSearchFeedback = [(SPKQuery *)self startLocalSearchFeedback];
    [startLocalSearchFeedback setQueryId:queryIdent2];

    v22 = SPQueryKindToSFSpotlightBrowsingSearchScope([queryContext queryKind]);
    startLocalSearchFeedback2 = [(SPKQuery *)self startLocalSearchFeedback];
    [startLocalSearchFeedback2 setSpotlightBrowsingSearchScope:v22];

    searchString = [queryContext searchString];
    startLocalSearchFeedback3 = [(SPKQuery *)self startLocalSearchFeedback];
    [startLocalSearchFeedback3 setInput:searchString];

    queryKind = [queryContext queryKind];
    startLocalSearchFeedback4 = [(SPKQuery *)self startLocalSearchFeedback];
    input = [startLocalSearchFeedback4 input];
    if ([input length])
    {
      searchEntities2 = [queryContext searchEntities];
      v30 = objc_msgSend_count(searchEntities2);

      if (!v30 && (queryKind > 0x11 || ((1 << queryKind) & 0x27000) == 0))
      {
        goto LABEL_17;
      }

      startLocalSearchFeedback4 = [(SPKQuery *)self startLocalSearchFeedback];
      [startLocalSearchFeedback4 setInput:@"(redacted)"];
    }

    else
    {
    }

LABEL_17:
    startLocalSearchFeedback5 = [(SPKQuery *)self startLocalSearchFeedback];
    [v32 didStartSearch:startLocalSearchFeedback5];

    goto LABEL_18;
  }

LABEL_19:
}

- (void)sendEndLocalSearchFeedback
{
  startLocalSearchFeedback = [(SPKQuery *)self startLocalSearchFeedback];

  if (startLocalSearchFeedback)
  {
    v4 = objc_alloc(MEMORY[0x1E69CA058]);
    startLocalSearchFeedback2 = [(SPKQuery *)self startLocalSearchFeedback];
    v7 = [v4 initWithStartSearch:startLocalSearchFeedback2];

    [(SPKQuery *)self setStartLocalSearchFeedback:0];
    feedbackListener = [(SPKQuery *)self feedbackListener];
    [feedbackListener didEndSearch:v7];
  }
}

- (void)start
{
  if (![(SPKQuery *)self isStarted])
  {
    [(SPKQuery *)self _queryWillStart];
    if (![(SPKQuery *)self isParsecQuery])
    {

      [(SPKQuery *)self sendStartLocalSearchFeedback];
    }
  }
}

- (void)cancel
{
  v13 = *MEMORY[0x1E69E9840];
  [(SPKQuery *)self setQueryState:5];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  childQueries = [(SPKQuery *)self childQueries];
  v4 = [childQueries countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(childQueries);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [childQueries countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(SPKQuery *)self sendEndLocalSearchFeedback];
}

- (void)_queryWillStart
{
  [(SPKQuery *)self setQueryState:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_startTime = v3;
}

- (SFFeedbackListener)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackListener);

  return WeakRetained;
}

- (SPKQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SPKQuery)parentQuery
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuery);

  return WeakRetained;
}

@end