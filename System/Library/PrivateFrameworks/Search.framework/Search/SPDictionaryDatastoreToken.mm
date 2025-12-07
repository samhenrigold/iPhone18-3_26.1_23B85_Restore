@interface SPDictionaryDatastoreToken
- (SPDictionaryDatastoreToken)initWithStore:(id)store;
- (void)begin:(id)begin;
- (void)finishWithClientID:(id)d;
@end

@implementation SPDictionaryDatastoreToken

- (SPDictionaryDatastoreToken)initWithStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = SPDictionaryDatastoreToken;
  v6 = [(SPDictionaryDatastoreToken *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_type = 4;
    v8 = [SITracingObjcLifetimeSpan alloc];
    v9 = si_tracing_current_span();
    v10 = *(v9 + 16);
    v15[0] = *v9;
    v15[1] = v10;
    v16 = *(v9 + 32);
    v12 = [v11 init:v15 kind:111 what:"SPDictionaryDatastoreToken"];
    lifetimeSpan = v7->_lifetimeSpan;
    v7->_lifetimeSpan = v12;
  }

  return v7;
}

- (void)begin:(id)begin
{
  beginCopy = begin;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v49 = *v5;
  v50 = v6;
  v51 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPDictionaryDatastoreToken begin:]";
  si_tracing_log_span_begin();
  queryContext = [beginCopy queryContext];
  connection = [beginCopy connection];
  bundleID = [connection bundleID];

  v13 = [SFStartLocalSearchFeedback alloc];
  searchString = [queryContext searchString];
  v15 = [v13 initWithInput:searchString triggerEvent:objc_msgSend(queryContext indexType:"whyQuery") queryId:{6, objc_msgSend(beginCopy, "queryIdent")}];
  feedback = self->_feedback;
  self->_feedback = v15;

  v17 = +[SPFeedbackProxy sharedProxy];
  [v17 sendFeedbackType:5 feedback:self->_feedback queryId:objc_msgSend(beginCopy clientID:{"queryIdent"), bundleID}];

  [beginCopy externalID];
  kdebug_trace();
  v18 = SPLogForSPLogCategoryTelemetry();
  externalID = [beginCopy externalID];
  if (externalID && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "dictionaryLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v38 = +[NSCharacterSet whitespaceCharacterSet];
  getTrimmedSearchString = [queryContext getTrimmedSearchString];
  v21 = [getTrimmedSearchString mutableCopy];

  if (qword_1000A85E8 != -1)
  {
    sub_1000635D0();
  }

  v22 = [v21 length];
  v37 = queryContext;
  if (v22 > [qword_1000A85F0 length] && objc_msgSend(v21, "hasPrefix:", qword_1000A85F0) && (objc_msgSend(v38, "characterIsMember:", objc_msgSend(v21, "characterAtIndex:", objc_msgSend(qword_1000A85F0, "length"))) & 1) != 0)
  {
    v23 = &qword_1000A85F0;
  }

  else
  {
    if (v22 <= [qword_1000A85F8 length] || !objc_msgSend(v21, "hasPrefix:", qword_1000A85F8) || !objc_msgSend(v38, "characterIsMember:", objc_msgSend(v21, "characterAtIndex:", objc_msgSend(qword_1000A85F8, "length"))))
    {
      v25 = 0;
      goto LABEL_17;
    }

    v23 = &qword_1000A85F8;
  }

  v24 = *v23;
  v25 = v24;
  if (v24)
  {
    [v21 deleteCharactersInRange:{0, objc_msgSend(v24, "length")}];
    v26 = [v21 stringByTrimmingCharactersInSet:v38];
    v27 = [v26 mutableCopy];

    v28 = 1;
    v21 = v27;
    goto LABEL_18;
  }

LABEL_17:
  v28 = 0;
LABEL_18:
  if (qword_1000A8608 != -1)
  {
    sub_1000635F8();
  }

  v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *buf = 0;
  v46 = buf;
  v47 = 0x2020000000;
  v48 = 0;
  store = [(SPDictionaryDatastoreToken *)self store];
  dictionaries = [store dictionaries];

  if ([dictionaries count])
  {
    objc_initWeak(location, beginCopy);
    objc_copyWeak(v42, location);
    v32 = v21;
    v43 = v28;
    v42[1] = v29;
    v40 = v32;
    v41 = bundleID;
    md_tracing_dispatch_async_propagating();

    objc_destroyWeak(v42);
    objc_destroyWeak(location);
  }

  else
  {
    v33 = +[SDController workQueue];
    v39 = beginCopy;
    md_tracing_dispatch_async_propagating();

    [v39 externalID];
    kdebug_trace();
    v34 = SPLogForSPLogCategoryTelemetry();
    externalID2 = [v39 externalID];
    if (externalID2 && os_signpost_enabled(v34))
    {
      LOWORD(location[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, externalID2, "dictionaryLatency", " enableTelemetry=YES ", location, 2u);
    }

    [(SPDictionaryDatastoreToken *)self finishWithClientID:bundleID];
  }

  _Block_object_dispose(buf, 8);
  si_tracing_log_span_end();
  v36 = v50;
  *v5 = v49;
  *(v5 + 16) = v36;
  *(v5 + 32) = v51;
}

- (void)finishWithClientID:(id)d
{
  dCopy = d;
  v5 = +[SPFeedbackProxy sharedProxy];
  v6 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:self->_feedback];
  [v5 sendFeedbackType:6 feedback:v6 queryId:-[SFStartSearchFeedback queryId](self->_feedback clientID:{"queryId"), dCopy}];

  feedback = self->_feedback;
  self->_feedback = 0;
}

@end