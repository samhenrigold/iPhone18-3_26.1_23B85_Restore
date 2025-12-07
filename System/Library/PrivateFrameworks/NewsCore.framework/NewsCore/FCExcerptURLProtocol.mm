@interface FCExcerptURLProtocol
+ (BOOL)canHandleURL:(id)l;
+ (BOOL)canHandleURLWithComponents:(id)components;
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
+ (id)excerptURLForArticleID:(id)d changeTag:(id)tag;
+ (void)initialize;
+ (void)setupWithArticleDatabase:(id)database;
+ (void)unregister;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation FCExcerptURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x1E695AC60];

    [v3 registerClass:self];
  }
}

+ (void)setupWithArticleDatabase:(id)database
{
  v18 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"excerpt URL protocol requires a non-nil database"];
    v10 = 136315906;
    v11 = "+[FCExcerptURLProtocol setupWithArticleDatabase:]";
    v12 = 2080;
    v13 = "FCExcerptURLProtocol.m";
    v14 = 1024;
    v15 = 41;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&s_database_0);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = NSClassFromString(&cfstr_Xctest.isa);

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"excerpt URL protocol has already been setup"];
      v10 = 136315906;
      v11 = "+[FCExcerptURLProtocol setupWithArticleDatabase:]";
      v12 = 2080;
      v13 = "FCExcerptURLProtocol.m";
      v14 = 1024;
      v15 = 42;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
    }
  }

  objc_storeWeak(&s_database_0, databaseCopy);
  [MEMORY[0x1E695AC60] registerClass:self];
}

+ (void)unregister
{
  WeakRetained = objc_loadWeakRetained(&s_database_0);

  if (WeakRetained)
  {
    objc_storeWeak(&s_database_0, 0);
    v4 = MEMORY[0x1E695AC60];

    [v4 unregisterClass:self];
  }
}

+ (id)excerptURLForArticleID:(id)d changeTag:(id)tag
{
  v26 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&s_database_0);

  if (!WeakRetained && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't construct a URL without a database"];
    *buf = 136315906;
    v19 = "+[FCExcerptURLProtocol excerptURLForArticleID:changeTag:]";
    v20 = 2080;
    v21 = "FCExcerptURLProtocol.m";
    v22 = 1024;
    v23 = 61;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v8 setScheme:@"news-excerpt"];
  v9 = objc_loadWeakRetained(&s_database_0);
  containerIdentifier = [v9 containerIdentifier];
  [v8 setHost:containerIdentifier];

  v11 = [@"/" stringByAppendingString:dCopy];

  [v8 setPath:v11];
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"changetag" value:tagCopy];

  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v8 setQueryItems:v13];

  v14 = [v8 URL];

  return v14;
}

+ (BOOL)canHandleURL:(id)l
{
  scheme = [l scheme];
  v4 = [scheme isEqualToString:@"news-excerpt"];

  return v4;
}

+ (BOOL)canHandleURLWithComponents:(id)components
{
  scheme = [components scheme];
  v4 = [scheme isEqualToString:@"news-excerpt"];

  return v4;
}

+ (BOOL)canInitWithRequest:(id)request
{
  v4 = [request URL];
  LOBYTE(self) = [self canHandleURL:v4];

  return self;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  requestCopy = request;
  v6 = [equivalent URL];
  v7 = [requestCopy URL];

  LOBYTE(requestCopy) = [v6 isEqual:v7];
  return requestCopy;
}

- (void)startLoading
{
  v29[1] = *MEMORY[0x1E69E9840];
  fetchOperation = [(FCExcerptURLProtocol *)self fetchOperation];

  if (fetchOperation && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have a fetch operation yet"];
    *buf = 136315906;
    *&buf[4] = "[FCExcerptURLProtocol startLoading]";
    *&buf[12] = 2080;
    *&buf[14] = "FCExcerptURLProtocol.m";
    *&buf[22] = 1024;
    LODWORD(v26) = 102;
    WORD2(v26) = 2114;
    *(&v26 + 6) = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  request = [(NSURLProtocol *)self request];
  v5 = [request URL];

  lastPathComponent = [v5 lastPathComponent];
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:lastPathComponent];
  v8 = objc_alloc_init(FCCKContentFetchOperation);
  WeakRetained = objc_loadWeakRetained(&s_database_0);
  [(FCCKContentFetchOperation *)v8 setDatabase:?];

  v29[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v10, v11, 384);
  }

  v28 = @"excerpt";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v12, v13, 400);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v26 = __Block_byref_object_copy__62;
  *(&v26 + 1) = __Block_byref_object_dispose__62;
  v27 = 0;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __36__FCExcerptURLProtocol_startLoading__block_invoke;
  newValue[3] = &unk_1E7C39CA8;
  newValue[4] = buf;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v14, newValue, 416);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __36__FCExcerptURLProtocol_startLoading__block_invoke_2;
  v19[3] = &unk_1E7C44418;
  objc_copyWeak(&v22, &location);
  v21 = buf;
  v16 = v5;
  v20 = v16;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v15, v19, 424);
  }

  [(FCExcerptURLProtocol *)self setFetchOperation:v8];
  fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v8];

  objc_destroyWeak(&v22);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

void __36__FCExcerptURLProtocol_startLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FCExcerptURLProtocol_startLoading__block_invoke_3;
  v7[3] = &unk_1E7C443F0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  FCPerformIfNonNil(WeakRetained, v7);
}

void __36__FCExcerptURLProtocol_startLoading__block_invoke_3(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 fetchOperation];
  v4 = [v3 isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"excerpt"];
      v8 = [v7 dataUsingEncoding:4];
      v9 = [v8 fc_gzipDeflate];

      v10 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:a1[4] MIMEType:@"application/gzip" expectedContentLength:objc_msgSend(v9 textEncodingName:{"length"), 0}];
      v11 = [v14 client];
      [v11 URLProtocol:v14 didReceiveResponse:v10 cacheStoragePolicy:2];

      v12 = [v14 client];
      [v12 URLProtocol:v14 didLoadData:v9];

      v13 = [v14 client];
      [v13 URLProtocolDidFinishLoading:v14];
    }

    else
    {
      v9 = [v14 client];
      [v9 URLProtocol:v14 didFailWithError:a1[5]];
    }
  }
}

- (void)stopLoading
{
  fetchOperation = [(FCExcerptURLProtocol *)self fetchOperation];
  [fetchOperation cancel];
}

@end