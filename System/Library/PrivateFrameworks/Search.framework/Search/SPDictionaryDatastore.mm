@interface SPDictionaryDatastore
- (SPDictionaryDatastore)init;
- (id)performQuery:(id)query;
@end

@implementation SPDictionaryDatastore

- (SPDictionaryDatastore)init
{
  v6.receiver = self;
  v6.super_class = SPDictionaryDatastore;
  v2 = [(SPDictionaryDatastore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SPDictionaryDatastore.activation", 0);
    activationQueue = v2->_activationQueue;
    v2->_activationQueue = v3;
  }

  return v2;
}

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v15 = *v5;
  v16 = v6;
  v17 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPDictionaryDatastore performQuery:]";
  si_tracing_log_span_begin();
  if ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v10 = 0;
  }

  else
  {
    v11 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#query dictionary start", v14, 2u);
    }

    v10 = [[SPDictionaryDatastoreToken alloc] initWithStore:self];
    [(SPDictionaryDatastoreToken *)v10 begin:queryCopy];
  }

  si_tracing_log_span_end();
  v12 = v16;
  *v5 = v15;
  *(v5 + 16) = v12;
  *(v5 + 32) = v17;

  return v10;
}

@end