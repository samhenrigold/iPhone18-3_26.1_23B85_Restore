@interface SPParsecSuggestionsDatastore
- (id)performQuery:(id)query;
@end

@implementation SPParsecSuggestionsDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v16 = *v5;
  v17 = v6;
  v18 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecSuggestionsDatastore performQuery:]";
  si_tracing_log_span_begin();
  queryContext = [queryCopy queryContext];
  queryKind = [queryContext queryKind];

  if ((queryKind - 1) > 1)
  {
    v12 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SPParsecSuggestionsDatastore;
    v12 = [(SPParsecDatastore *)&v15 performQuery:queryCopy];
  }

  si_tracing_log_span_end();
  v13 = v17;
  *v5 = v16;
  *(v5 + 16) = v13;
  *(v5 + 32) = v18;

  return v12;
}

@end