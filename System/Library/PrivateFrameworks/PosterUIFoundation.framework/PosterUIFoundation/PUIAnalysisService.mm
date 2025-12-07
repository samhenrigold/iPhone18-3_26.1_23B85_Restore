@interface PUIAnalysisService
+ (id)secureCodableRequestClasses;
+ (id)secureCodableResponseClasses;
- (PUIAnalysisService)init;
- (PUIAnalysisService)initWithUnderlyingConnection:(id)connection;
- (id)executeAnalysisRequest:(id)request completion:(id)completion;
- (id)executeAnalysisRequest:(id)request error:(id *)error;
- (void)cancelRequest:(id)request;
@end

@implementation PUIAnalysisService

+ (id)secureCodableRequestClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

+ (id)secureCodableResponseClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (PUIAnalysisService)init
{
  v3 = +[PUIServiceConnection defaultConnection];
  v4 = [(PUIAnalysisService *)self initWithUnderlyingConnection:v3];

  return v4;
}

- (PUIAnalysisService)initWithUnderlyingConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = PUIAnalysisService;
  v6 = [(PUIAnalysisService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingConnection, connection);
    Serial = BSDispatchQueueCreateSerial();
    timeoutQueue = v7->_timeoutQueue;
    v7->_timeoutQueue = Serial;
  }

  return v7;
}

- (id)executeAnalysisRequest:(id)request error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v8 = PUILogAnalysisService(requestCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(PUIAnalysisService *)a2 executeAnalysisRequest:requestCopy error:v8];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  underlyingConnection = self->_underlyingConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __51__PUIAnalysisService_executeAnalysisRequest_error___block_invoke;
  v26[3] = &unk_1E78549A8;
  v26[4] = &v27;
  v10 = [(PUIServiceConnection *)underlyingConnection remoteObjectProxyWithErrorHandler:v26];
  v11 = v10;
  v12 = v28[5];
  if (v10)
  {
    if (!v12)
    {
      v25 = 0;
      v13 = [v10 executeAnalysisRequest:requestCopy error:&v25];
      v14 = v25;
      v15 = v14;
      if (v14)
      {
        if (error)
        {
          v14 = v14;
          *error = v15;
        }

        v16 = PUILogAnalysisService(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v24 = NSStringFromSelector(a2);
          *buf = 138543874;
          v34 = v24;
          v35 = 2114;
          v36 = requestCopy;
          v37 = 2114;
          v38 = v15;
          _os_log_error_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_ERROR, "Fail %{public}@:%{public}@: %{public}@", buf, 0x20u);
        }
      }

      v17 = PUILogAnalysisService(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = NSStringFromSelector(a2);
        [(PUIAnalysisService *)v18 executeAnalysisRequest:requestCopy error:buf, v17];
      }

      goto LABEL_21;
    }
  }

  else if (!v12)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_PUIAnalysisServiceXPCConnection" code:-1 userInfo:0];
    v20 = v28[5];
    v28[5] = v19;
  }

  if (error)
  {
    v10 = v28[5];
    *error = v10;
  }

  v15 = PUILogAnalysisService(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v22 = NSStringFromSelector(a2);
    v23 = v28[5];
    *buf = 138543874;
    v34 = v22;
    v35 = 2114;
    v36 = requestCopy;
    v37 = 2114;
    v38 = v23;
    _os_log_error_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_ERROR, "Fail %{public}@:%{public}@: %{public}@", buf, 0x20u);
  }

  v13 = 0;
LABEL_21:

  _Block_object_dispose(&v27, 8);

  return v13;
}

- (id)executeAnalysisRequest:(id)request completion:(id)completion
{
  v50[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v9 = NSStringFromSelector(a2);
  v10 = PUILogAnalysisService(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PUIAnalysisService executeAnalysisRequest:completion:];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = 0;
  v11 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__10;
  v41[4] = __Block_byref_object_dispose__11;
  v42 = [completionCopy copy];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke;
  v35[3] = &unk_1E7855EA0;
  v12 = v11;
  v36 = v12;
  v13 = v9;
  v37 = v13;
  v14 = requestCopy;
  v38 = v14;
  v39 = v41;
  v40 = &v43;
  v15 = MEMORY[0x1AC5769F0](v35);
  underlyingConnection = self->_underlyingConnection;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_13;
  v33[3] = &unk_1E78549F8;
  v17 = v15;
  v34 = v17;
  v18 = [(PUIServiceConnection *)underlyingConnection remoteObjectProxyWithErrorHandler:v33];
  v19 = v44[5];
  v44[5] = v18;

  if (v44[5])
  {
    v20 = dispatch_time(0, 10000000000);
    timeoutQueue = self->_timeoutQueue;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_2;
    v31 = &unk_1E7854B48;
    v22 = v17;
    v32 = v22;
    dispatch_after(v20, timeoutQueue, &v28);
    v23 = [v44[5] executeAnalysisRequest:v14 reply:{v22, v28, v29, v30, v31}];
    v24 = v32;
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A588];
    v50[0] = @"service could not be started";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v26 = [v25 errorWithDomain:@"_PUIAnalysisServiceXPCConnection" code:-2 userInfo:v24];
    (*(v17 + 2))(v17, 0, v26);

    v23 = 0;
  }

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);

  return v23;
}

void __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) signal];
  if (v7)
  {
    v8 = PUILogAnalysisService(v7);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_cold_2();
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }

    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v6[0] = @"Timed out!";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"_PUIAnalysisServiceXPCConnection" code:-1 userInfo:v3];
  (*(v1 + 16))(v1, 0, v4);
}

- (void)cancelRequest:(id)request
{
  underlyingConnection = self->_underlyingConnection;
  requestCopy = request;
  v5 = [(PUIServiceConnection *)underlyingConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_26];
  [v5 cancelRequest:requestCopy];
}

- (void)executeAnalysisRequest:(NSObject *)a3 error:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_2();
  v7 = a2;
  _os_log_debug_impl(&dword_1A8C85000, a3, OS_LOG_TYPE_DEBUG, "Start %{public}@:%{public}@", v6, 0x16u);
}

- (void)executeAnalysisRequest:(uint8_t *)buf error:(os_log_t)log .cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A8C85000, log, OS_LOG_TYPE_DEBUG, "Finish %{public}@:%{public}@", buf, 0x16u);
}

- (void)executeAnalysisRequest:completion:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v3 = v0;
  _os_log_debug_impl(&dword_1A8C85000, v1, OS_LOG_TYPE_DEBUG, "Start %{public}@:%{public}@", v2, 0x16u);
}

void __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1A8C85000, v0, OS_LOG_TYPE_ERROR, "Fail %{public}@:%{public}@: %{public}@", v1, 0x20u);
}

void __56__PUIAnalysisService_executeAnalysisRequest_completion___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1A8C85000, v0, OS_LOG_TYPE_DEBUG, "Success %{public}@:%{public}@: %{public}@", v1, 0x20u);
}

@end