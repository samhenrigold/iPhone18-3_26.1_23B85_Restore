@interface SPBookmarkDatastore
- (id)performQuery:(id)query;
@end

@implementation SPBookmarkDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v18 = *v5;
  v19 = v6;
  v20 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPBookmarkDatastore performQuery:]";
  si_tracing_log_span_begin();
  if ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v10 = 0;
  }

  else
  {
    v11 = SPLogForSPLogCategoryTelemetry();
    externalID = [queryCopy externalID];
    if (externalID && os_signpost_enabled(v11))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "bookmarkSpotlightLatency", " enableTelemetry=YES ", v17, 2u);
    }

    v10 = [[SPBookmarkDatastoreToken alloc] initWithStore:self];
    [(SPBookmarkDatastoreToken *)v10 begin:queryCopy];
    v13 = SPLogForSPLogCategoryTelemetry();
    externalID2 = [queryCopy externalID];
    if (externalID2 && os_signpost_enabled(v13))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, externalID2, "bookmarkSpotlightLatency", " enableTelemetry=YES ", v17, 2u);
    }
  }

  si_tracing_log_span_end();
  v15 = v19;
  *v5 = v18;
  *(v5 + 16) = v15;
  *(v5 + 32) = v20;

  return v10;
}

@end