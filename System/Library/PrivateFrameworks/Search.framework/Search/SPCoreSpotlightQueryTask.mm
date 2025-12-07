@interface SPCoreSpotlightQueryTask
- (SDSearchQuery)resultPipe;
- (SPCoreSpotlightQueryTask)initWithStore:(id)store resultPipe:(id)pipe;
- (void)beginQuery:(id)query;
- (void)cancel;
- (void)finishWithSections:(id)sections suggestionResults:(id)results;
- (void)progressWithSections:(id)sections suggestionResults:(id)results;
- (void)reset;
- (void)sendCompletions:(id)completions;
@end

@implementation SPCoreSpotlightQueryTask

- (SPCoreSpotlightQueryTask)initWithStore:(id)store resultPipe:(id)pipe
{
  storeCopy = store;
  pipeCopy = pipe;
  v25.receiver = self;
  v25.super_class = SPCoreSpotlightQueryTask;
  v9 = [(SPCoreSpotlightQueryTask *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeWeak(&v10->_resultPipe, pipeCopy);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("Query Queue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v10->_type = 0;
    v14 = objc_opt_new();
    rankingInfo = v10->_rankingInfo;
    v10->_rankingInfo = v14;

    v16 = [SITracingObjcLifetimeSpan alloc];
    v17 = si_tracing_current_span();
    v18 = *(v17 + 16);
    v23[0] = *v17;
    v23[1] = v18;
    v24 = *(v17 + 32);
    v20 = [v19 init:v23 kind:111 what:"SPCoreSpotlightQueryTask"];
    lifetimeSpan = v10->_lifetimeSpan;
    v10->_lifetimeSpan = v20;
  }

  return v10;
}

- (void)reset
{
  v3 = [SITracingObjcLifetimeSpan alloc];
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v15[0] = *v4;
  v15[1] = v5;
  v16 = *(v4 + 32);
  v7 = [v6 init:v15 kind:111 what:"reused SPCoreSpotlightQueryTask"];
  lifetimeSpan = self->_lifetimeSpan;
  self->_lifetimeSpan = v7;

  [(SPCoreSpotlightQueryTask *)self setJob:0];
  [(SPCoreSpotlightQueryTask *)self setDone:0];
  [(SPCoreSpotlightQueryTask *)self setCanceled:0];
  if (self->_priorityIndexEnabled)
  {
    timeoutTimer = [(SPCoreSpotlightQueryTask *)self timeoutTimer];
    v10 = timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      [(SPCoreSpotlightQueryTask *)self setTimeoutTimer:0];
    }
  }

  feedback = self->_feedback;
  self->_feedback = 0;

  atomic_fetch_add(&dword_1000A8420, 0xFFFFFFFF);
  v12 = SPLogForSPLogCategoryTelemetry();
  queryID = [(SPCoreSpotlightTask *)self->_job queryID];
  if ((queryID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = queryID;
    if (os_signpost_enabled(v12))
    {
      LOWORD(v15[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "coreSpotlightReset", " enableTelemetry=YES ", v15, 2u);
    }
  }
}

- (void)cancel
{
  v3 = si_tracing_current_span();
  v8 = *v3;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightQueryTask cancel]";
  si_tracing_log_span_begin();
  v7 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:self->_feedback];
  md_tracing_dispatch_async_propagating();

  si_tracing_log_span_end();
  *v3 = v8;
  *(v3 + 16) = v9;
  *(v3 + 32) = v10;
}

- (void)beginQuery:(id)query
{
  queryCopy = query;
  queryContext = [queryCopy queryContext];
  isSearchToolClient = [queryContext isSearchToolClient];

  if ((isSearchToolClient & 1) == 0)
  {
    v7 = si_tracing_current_span();
    v32 = *v7;
    v33 = *(v7 + 16);
    v34 = *(v7 + 32);
    v8 = *v7;
    spanid = si_tracing_calc_next_spanid();
    v10 = *(v7 + 8);
    *v7 = v8;
    *(v7 + 8) = spanid;
    *(v7 + 16) = v10;
    *(v7 + 28) = 102;
    *(v7 + 32) = "[SPCoreSpotlightQueryTask beginQuery:]";
    si_tracing_log_span_begin();
    queryContext2 = [queryCopy queryContext];
    searchEntities = [queryContext2 searchEntities];
    firstObject = [searchEntities firstObject];

    if (firstObject)
    {
      currentSearchString = [firstObject currentSearchString];
      command = [firstObject command];
      if (command)
      {
        command2 = [firstObject command];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          command3 = [firstObject command];
          v19 = [command3 copy];

          [v19 setSearchString:0];
          [v19 setTokenString:0];
          v29 = [SFStartLocalSearchFeedback alloc];
          whyQuery = [queryContext2 whyQuery];
          queryIdent = [queryCopy queryIdent];
          connection = [queryCopy connection];
          bundleID = [connection bundleID];
          v23 = [v29 initWithEntityQueryCommand:v19 triggerEvent:whyQuery searchType:3 indexType:1 queryId:queryIdent originatingApp:bundleID];

LABEL_13:
          v30 = v23;
          v31 = queryCopy;
          md_tracing_dispatch_async_propagating();

          si_tracing_log_span_end();
          *v7 = v32;
          *(v7 + 16) = v33;
          *(v7 + 32) = v34;
          goto LABEL_14;
        }
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
      queryContext3 = [WeakRetained queryContext];
      currentSearchString = [queryContext3 searchString];
    }

    v26 = [SFStartLocalSearchFeedback alloc];
    if (objc_msgSend_isContactEntitySearch(firstObject))
    {
      v27 = 0;
    }

    else if (objc_msgSend_isPhotosEntitySearch(firstObject))
    {
      v27 = 0;
    }

    else
    {
      v27 = currentSearchString;
    }

    v23 = [v26 initWithInput:v27 triggerEvent:objc_msgSend(queryContext2 indexType:"whyQuery") queryId:{1, objc_msgSend(queryCopy, "queryIdent")}];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)sendCompletions:(id)completions
{
  completionsCopy = completions;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v20 = *v5;
  v21 = v6;
  v22 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPCoreSpotlightQueryTask sendCompletions:]";
  si_tracing_log_span_begin();
  if (self->_canceled)
  {
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v10, v12))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Not sending completions --- canceled.", buf, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
    v14 = +[SDController workQueue];
    v11 = WeakRetained;
    v18 = completionsCopy;
    tracing_dispatch_async();

    v15 = SPLogForSPLogCategoryTelemetry();
    v16 = [(SPCoreSpotlightTask *)self->_job queryID:_NSConcreteStackBlock];
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, v16, "coreSpotlightComplete", " enableTelemetry=YES ", buf, 2u);
    }
  }

  si_tracing_log_span_end();
  v17 = v21;
  *v5 = v20;
  *(v5 + 16) = v17;
  *(v5 + 32) = v22;
}

- (void)progressWithSections:(id)sections suggestionResults:(id)results
{
  sectionsCopy = sections;
  resultsCopy = results;
  v8 = si_tracing_current_span();
  v9 = *(v8 + 16);
  v28 = *v8;
  v29 = v9;
  v30 = *(v8 + 32);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "[SPCoreSpotlightQueryTask progressWithSections:suggestionResults:]";
  si_tracing_log_span_begin();
  v13 = SPLogForSPLogCategoryDefault();
  v14 = v13;
  if (gSPLogDebugAsDefault)
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    v16 = objc_opt_class();
    *buf = 138412546;
    v32 = v16;
    v33 = 1024;
    v34 = qos_class_self();
    _os_log_impl(&_mh_execute_header, v14, v15, "QOS %@ progressWithSections: %d", buf, 0x12u);
  }

  if (!self->_canceled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
    v18 = +[SDController workQueue];
    v19 = qos_class_self();
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100030004;
    v23[3] = &unk_100093178;
    v20 = WeakRetained;
    v24 = v20;
    selfCopy = self;
    v26 = sectionsCopy;
    v27 = resultsCopy;
    v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v19, 0, v23);
    tracing_dispatch_async();
  }

  si_tracing_log_span_end();
  v22 = v29;
  *v8 = v28;
  *(v8 + 16) = v22;
  *(v8 + 32) = v30;
}

- (void)finishWithSections:(id)sections suggestionResults:(id)results
{
  sectionsCopy = sections;
  resultsCopy = results;
  v8 = si_tracing_current_span();
  v9 = *(v8 + 16);
  v40 = *v8;
  v41 = v9;
  v42 = *(v8 + 32);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "[SPCoreSpotlightQueryTask finishWithSections:suggestionResults:]";
  si_tracing_log_span_begin();
  v13 = SPLogForSPLogCategoryDefault();
  v14 = v13;
  if (gSPLogDebugAsDefault)
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    v16 = objc_opt_class();
    *buf = 138412546;
    v44 = v16;
    v45 = 1024;
    v46 = qos_class_self();
    _os_log_impl(&_mh_execute_header, v14, v15, "QOS %@ finishWithSections: %d", buf, 0x12u);
  }

  if (!self->_done && !self->_canceled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
    queryContext = [WeakRetained queryContext];
    queryUnderstandingOutput = [queryContext queryUnderstandingOutput];
    v20 = [SSQueryUnderstandingUtilities queryUnderstandingParseWithQueryUnderstanding:queryUnderstandingOutput];

    queryContext2 = [WeakRetained queryContext];
    LOBYTE(queryUnderstandingOutput) = [queryContext2 isSearchToolClient];

    if ((queryUnderstandingOutput & 1) == 0)
    {
      v22 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:self->_feedback queryUnderstandingParse:v20];
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_1000303EC;
      v36 = &unk_100093150;
      v37 = v22;
      v38 = WeakRetained;
      selfCopy = self;
      md_tracing_dispatch_async_propagating();
    }

    v23 = +[SDController workQueue];
    v24 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030498;
    block[3] = &unk_100093178;
    v25 = WeakRetained;
    v29 = v25;
    selfCopy2 = self;
    v31 = sectionsCopy;
    v32 = resultsCopy;
    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v24, 0, block);
    tracing_dispatch_async();

    objc_storeWeak(&self->_resultPipe, 0);
    self->_done = 1;
    atomic_fetch_add(&dword_1000A8420, 0xFFFFFFFF);
  }

  si_tracing_log_span_end();
  v27 = v41;
  *v8 = v40;
  *(v8 + 16) = v27;
  *(v8 + 32) = v42;
}

- (SDSearchQuery)resultPipe
{
  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);

  return WeakRetained;
}

@end