@interface SPParsecResultsDatastore
- (id)performQuery:(id)query;
@end

@implementation SPParsecResultsDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v14 = *v5;
  v15 = v6;
  v16 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecResultsDatastore performQuery:]";
  si_tracing_log_span_begin();
  v13.receiver = self;
  v13.super_class = SPParsecResultsDatastore;
  v10 = [(SPParsecDatastore *)&v13 performQuery:queryCopy];
  si_tracing_log_span_end();
  v11 = v15;
  *v5 = v14;
  *(v5 + 16) = v11;
  *(v5 + 32) = v16;

  return v10;
}

@end