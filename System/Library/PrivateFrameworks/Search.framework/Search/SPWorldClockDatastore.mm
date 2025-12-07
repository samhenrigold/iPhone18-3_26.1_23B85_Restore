@interface SPWorldClockDatastore
- (id)performQuery:(id)query;
@end

@implementation SPWorldClockDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v11 = *v5;
  v12 = *(v5 + 16);
  v13 = *(v5 + 32);
  v6 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v5 + 8);
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v8;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPWorldClockDatastore performQuery:]";
  si_tracing_log_span_begin();
  v9 = [[SPWorldClockDatastoreToken alloc] initWithStore:self];
  [(SPWorldClockDatastoreToken *)v9 begin:queryCopy];
  si_tracing_log_span_end();
  *v5 = v11;
  *(v5 + 16) = v12;
  *(v5 + 32) = v13;

  return v9;
}

@end