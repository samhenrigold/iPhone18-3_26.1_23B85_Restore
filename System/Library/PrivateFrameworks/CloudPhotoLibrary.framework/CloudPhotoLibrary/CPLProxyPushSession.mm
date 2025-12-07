@interface CPLProxyPushSession
- (void)commitChangeBatch:(id)batch withCompletionHandler:(id)handler;
@end

@implementation CPLProxyPushSession

void __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E861B550;
  v15 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v14];
  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_1;
    v12[3] = &unk_1E861B5F0;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v3 commitChangeBatch:v4 withCompletionHandler:v12];
    v5 = v13;
  }

  else
  {
    v6 = [*(a1 + 32) proxyLibraryManager];
    v7 = [v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_8;
    v10[3] = &unk_1E861B4E0;
    v11 = *(a1 + 48);
    v8 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_1;
    block[3] = &unk_1E861B4E0;
    v17 = v8;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v9);

    v5 = v11;
  }
}

void __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_1(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) proxyLibraryManager];
  v13 = [v12 queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_2_2;
  v20[3] = &unk_1E861B5C8;
  v21 = v9;
  v14 = *(a1 + 40);
  v22 = v10;
  v23 = v11;
  v24 = v14;
  v25 = a3;
  v15 = v20;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1;
  block[3] = &unk_1E861B4E0;
  v27 = v15;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v19);
}

uint64_t __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_2_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_2_2_cold_1(_CPLSilentLogging, a1);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLProxyPushSessionOSLogDomain(_CPLSilentLogging);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Commiting failed with error %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)commitChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  handlerCopy = handler;
  v8 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLProxyPushSessionOSLogDomain(handlerCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = batchCopy;
      OUTLINED_FUNCTION_1_1(&dword_1DC05A000, v9, v10, "Comitting %@", buf);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLProxyPushSessionOSLogDomain(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Sending commit message to connection", buf, 2u);
      }
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E861ABE0;
  v16 = batchCopy;
  v17 = v8;
  v15[4] = self;
  v13 = batchCopy;
  v14 = v8;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v15];
}

void __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLProxyPushSessionOSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = v3;
      OUTLINED_FUNCTION_1_1(&dword_1DC05A000, v4, v5, "Commiting failed with error %@", &v7);
    }
  }

  OUTLINED_FUNCTION_0_0();
  v6();
}

void __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [CPLErrors cplErrorWithCode:150 description:@"Exception raised while trying to send a batch to the daemon: %@", *(a1 + 32)];
  v3 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLProxyPushSessionOSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v3;
      OUTLINED_FUNCTION_1_1(&dword_1DC05A000, v4, v5, "Commiting failed with error %@", buf);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLProxyPushSessionOSLogDomain(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(*(a1 + 40) countStyle:{"estimatedBatchSize"), 1}];
        v10 = *(a1 + 40);
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Unable to send batch to daemon for commit: %@\nBatch (estimated size: %@): %@", buf, 0x20u);
      }
    }
  }

  OUTLINED_FUNCTION_0_0();
  v11();
}

void __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = __CPLProxyPushSessionOSLogDomain(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DC05A000, v1, OS_LOG_TYPE_DEBUG, "Proxy has disappeared", v4, 2u);
    }
  }

  v2 = +[CPLErrors libraryClosedError];
  OUTLINED_FUNCTION_0_0();
  v3();
}

uint64_t __63__CPLProxyPushSession_commitChangeBatch_withCompletionHandler___block_invoke_2_2_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0)
  {
    v3 = __CPLProxyPushSessionOSLogDomain(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a2 + 48);
      v7 = 138412290;
      v8 = v5;
      OUTLINED_FUNCTION_1_1(&dword_1DC05A000, v3, v4, "Committing succeeded with new library version: %@", &v7);
    }
  }

  return (*(*(a2 + 56) + 16))();
}

@end