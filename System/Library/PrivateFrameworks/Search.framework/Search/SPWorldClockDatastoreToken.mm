@interface SPWorldClockDatastoreToken
- (SPWorldClockDatastoreToken)initWithStore:(id)store;
- (void)begin:(id)begin;
@end

@implementation SPWorldClockDatastoreToken

- (SPWorldClockDatastoreToken)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SPWorldClockDatastoreToken;
  v6 = [(SPWorldClockDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_type = 7;
  }

  return v7;
}

- (void)begin:(id)begin
{
  beginCopy = begin;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v38 = *v5;
  v39 = v6;
  v40 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPWorldClockDatastoreToken begin:]";
  si_tracing_log_span_begin();
  externalID = [beginCopy externalID];
  v11 = SPLogForSPLogCategoryTelemetry();
  v12 = v11;
  if (externalID && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "worldClockLatency", " enableTelemetry=YES ", buf, 2u);
  }

  queryContext = [beginCopy queryContext];
  searchString = [queryContext searchString];

  v15 = [SFStartLocalSearchFeedback alloc];
  queryContext2 = [beginCopy queryContext];
  v17 = [v15 initWithInput:searchString triggerEvent:objc_msgSend(queryContext2 indexType:"whyQuery") queryId:{1, objc_msgSend(beginCopy, "queryIdent")}];

  v18 = +[SPFeedbackProxy sharedProxy];
  queryIdent = [beginCopy queryIdent];
  connection = [beginCopy connection];
  bundleID = [connection bundleID];
  [v18 sendFeedbackType:5 feedback:v17 queryId:queryIdent clientID:bundleID];

  v22 = *(v5 + 16);
  *buf = *v5;
  v36 = v22;
  v37 = *(v5 + 32);
  queryIdent2 = [beginCopy queryIdent];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100061A54;
  v27[3] = &unk_100093D20;
  v24 = beginCopy;
  v31 = *buf;
  v32 = v36;
  v33 = v37;
  v34 = externalID;
  v28 = v24;
  selfCopy = self;
  v25 = v17;
  v30 = v25;
  [SSWorldClockUtilities getWorldClockResultsForQuery:searchString queryID:queryIdent2 completionHandler:v27];

  si_tracing_log_span_end();
  v26 = v39;
  *v5 = v38;
  *(v5 + 16) = v26;
  *(v5 + 32) = v40;
}

@end