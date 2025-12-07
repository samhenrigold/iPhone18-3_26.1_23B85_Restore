@interface FAFetchFamilyCircleRequest
- (FAFetchFamilyCircleRequest)init;
- (id)fetchCachedFamilyCircle:(id *)circle;
- (id)fetchCachedFamilyCircleWithCache:(id)cache deviceInfo:(id)info error:(id *)error;
- (id)fetchFamilyCircleWithError:(id *)error;
- (id)requestOptions;
- (unint64_t)_cachePolicy;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAFetchFamilyCircleRequest

- (FAFetchFamilyCircleRequest)init
{
  v3.receiver = self;
  v3.super_class = FAFetchFamilyCircleRequest;
  result = [(FAFamilyCircleRequest *)&v3 init];
  if (result)
  {
    result->_cachePolicy = 1;
  }

  return result;
}

- (unint64_t)_cachePolicy
{
  doNotFetchFromServer = [(FAFetchFamilyCircleRequest *)self doNotFetchFromServer];
  if (doNotFetchFromServer)
  {
    v4 = _FALogSystem(doNotFetchFromServer);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FAFetchFamilyCircleRequest *)v4 _cachePolicy];
    }

    self->_cachePolicy = 0;
  }

  forceServerFetch = [(FAFetchFamilyCircleRequest *)self forceServerFetch];
  if ((forceServerFetch & 1) == 0)
  {
    return self->_cachePolicy;
  }

  v6 = _FALogSystem(forceServerFetch);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(FAFetchFamilyCircleRequest *)v6 _cachePolicy];
  }

  result = 2;
  self->_cachePolicy = 2;
  return result;
}

- (id)requestOptions
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = FAFetchFamilyCircleRequest;
  requestOptions = [(FAFamilyCircleRequest *)&v12 requestOptions];
  v4 = [requestOptions mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FAFetchFamilyCircleRequest promptUserToResolveAuthenticatonFailure](self, "promptUserToResolveAuthenticatonFailure")}];
  [v4 setObject:v5 forKeyedSubscript:@"promptUserToResolveAuthenticatonFailure"];

  qualityOfService = [(FAFetchFamilyCircleRequest *)self qualityOfService];
  if (qualityOfService)
  {
    v7 = _FALogSystem(qualityOfService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = FALogStringForQualityOfService([(FAFetchFamilyCircleRequest *)self qualityOfService]);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Client set desired QOS - %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAFetchFamilyCircleRequest qualityOfService](self, "qualityOfService")}];
    [v4 setObject:v9 forKeyedSubscript:@"FAQualityOfServiceOptionKey"];
  }

  v10 = [v4 copy];

  return v10;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CA46D8;
  v5 = handlerCopy;
  v16 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v15];
  v7 = _FALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Starting family request: %@", buf, 0xCu);
  }

  _cachePolicy = [(FAFetchFamilyCircleRequest *)self _cachePolicy];
  signedInAccountShouldBeApprover = [(FAFetchFamilyCircleRequest *)self signedInAccountShouldBeApprover];
  context = [(FAFetchFamilyCircleRequest *)self context];
  requestOptions = [(FAFetchFamilyCircleRequest *)self requestOptions];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke_29;
  v13[3] = &unk_1E7CA58A8;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [v6 fetchFamilyCircleWithCachePolicy:_cachePolicy signedInAccountShouldBeApprover:signedInAccountShouldBeApprover context:context options:requestOptions replyBlock:v13];
}

void __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest: Error from service - %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = _FALogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Family request came back with response: %@ - %@ - %@", &v14, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  v12 = *(a1 + 40);
  if (v9 | v10)
  {
    (*(v12 + 16))(v12, v9, v10);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:-1015];
    (*(v12 + 16))(v12, 0, v13);
  }
}

- (id)fetchFamilyCircleWithError:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9;
  v40 = __Block_byref_object_dispose__9;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__9;
  v34 = __Block_byref_object_dispose__9;
  v35 = 0;
  v5 = _FASignpostLogSystem(self);
  v6 = _FASignpostCreate(v5);
  v8 = v7;

  v10 = _FASignpostLogSystem(v9);
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchFamilyCircleRequestSync", "", buf, 2u);
  }

  v13 = _FASignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(FAFetchFamilyCircleRequest *)v6 fetchFamilyCircleWithError:v13];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __57__FAFetchFamilyCircleRequest_fetchFamilyCircleWithError___block_invoke;
  v29[3] = &unk_1E7CA5670;
  v29[4] = &v36;
  v14 = [(FAFamilyCircleRequest *)self synchronousRemoteObjectWithErrorHandler:v29];
  _cachePolicy = [(FAFetchFamilyCircleRequest *)self _cachePolicy];
  signedInAccountShouldBeApprover = [(FAFetchFamilyCircleRequest *)self signedInAccountShouldBeApprover];
  context = [(FAFetchFamilyCircleRequest *)self context];
  requestOptions = [(FAFetchFamilyCircleRequest *)self requestOptions];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__FAFetchFamilyCircleRequest_fetchFamilyCircleWithError___block_invoke_2;
  v28[3] = &unk_1E7CA58D0;
  v28[4] = &v36;
  v28[5] = &v30;
  [v14 fetchFamilyCircleWithCachePolicy:_cachePolicy signedInAccountShouldBeApprover:signedInAccountShouldBeApprover context:context options:requestOptions replyBlock:v28];

  if (error)
  {
    *error = v37[5];
  }

  Nanoseconds = _FASignpostGetNanoseconds(v6, v8);
  v20 = _FASignpostLogSystem(Nanoseconds);
  v21 = v20;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    code = [v37[5] code];
    *buf = 67240192;
    LODWORD(v43) = code;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v21, OS_SIGNPOST_INTERVAL_END, v6, "FetchFamilyCircleRequestSync", " ErrorCode=%{public,signpost.telemetry:number1,name=ErrorCode}d ", buf, 8u);
  }

  v24 = _FASignpostLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    code2 = [v37[5] code];
    *buf = 134218496;
    v43 = v6;
    v44 = 2048;
    v45 = Nanoseconds / 1000000000.0;
    v46 = 1026;
    v47 = code2;
    _os_log_debug_impl(&dword_1B70B0000, v24, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchFamilyCircleRequestSync  ErrorCode=%{public,signpost.telemetry:number1,name=ErrorCode}d ", buf, 0x1Cu);
  }

  v25 = v31[5];
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v25;
}

void __57__FAFetchFamilyCircleRequest_fetchFamilyCircleWithError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _FALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "Synchronous family request came back with response: %@ - %@ - %@", &v16, 0x20u);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v13 = v9;

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;
}

- (id)fetchCachedFamilyCircle:(id *)circle
{
  v5 = objc_alloc_init(FADeviceInfo);
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v7 = [FAFamilyCircleCache alloc];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v9 = [(FAFamilyCircleCache *)v7 initWithAccount:aa_primaryAppleAccount];

  v10 = [(FAFetchFamilyCircleRequest *)self fetchCachedFamilyCircleWithCache:v9 deviceInfo:v5 error:circle];

  return v10;
}

- (id)fetchCachedFamilyCircleWithCache:(id)cache deviceInfo:(id)info error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  infoCopy = info;
  v10 = _FALogSystem(infoCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "Starting in process family request: %@", buf, 0xCu);
  }

  unlockedSinceBoot = [infoCopy unlockedSinceBoot];
  if (unlockedSinceBoot)
  {
    v19 = 0;
    v12 = [cacheCopy loadWithError:&v19];
    v13 = v19;
    familyCircleIfFresh = [v12 familyCircleIfFresh];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:-1010];
    v13 = v15;
    familyCircleIfFresh = 0;
  }

  v16 = _FALogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = familyCircleIfFresh;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_1B70B0000, v16, OS_LOG_TYPE_DEFAULT, "Family request came back with response: %@ - %@", buf, 0x16u);
  }

  if (error)
  {
    v17 = v13;
    *error = v13;
  }

  return familyCircleIfFresh;
}

- (void)fetchFamilyCircleWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: FetchFamilyCircleRequestSync ", &v2, 0xCu);
}

- (void)fetchCachedFamilyCircle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "fetchCachedFamilyCircle exception %@", &v2, 0xCu);
}

@end