@interface SPDataDetectorsDataStore
- (id)performQuery:(id)query;
@end

@implementation SPDataDetectorsDataStore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v34 = *v5;
  v35 = v6;
  v36 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPDataDetectorsDataStore performQuery:]";
  si_tracing_log_span_begin();
  v10 = SPLogForSPLogCategoryTelemetry();
  externalID = [queryCopy externalID];
  if (externalID && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "dataDetectorsLatency", " enableTelemetry=YES ", buf, 2u);
  }

  queryContext = [queryCopy queryContext];
  searchString = [queryContext searchString];
  v14 = [searchString mutableCopy];

  objc_initWeak(&location, queryCopy);
  v15 = [[DDStoreToken alloc] initWithStore:self];
  v16 = objc_alloc_init(SSDataDetectorResultGenerator);
  generator = self->_generator;
  self->_generator = v16;

  v18 = *(v5 + 16);
  *buf = *v5;
  v31 = v18;
  v32 = *(v5 + 32);
  v19 = self->_generator;
  queryIdent = [queryCopy queryIdent];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100055EAC;
  v24[3] = &unk_100093A88;
  v27 = *buf;
  v28 = v31;
  v29 = v32;
  objc_copyWeak(&v26, &location);
  v21 = v15;
  v25 = v21;
  [(SSDataDetectorResultGenerator *)v19 getResultSections:v14 queryId:queryIdent completion:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  si_tracing_log_span_end();
  v22 = v35;
  *v5 = v34;
  *(v5 + 16) = v22;
  *(v5 + 32) = v36;

  return v21;
}

@end