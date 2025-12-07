@interface CPLProxyPullSession
- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)getChangeBatchWithCompletionHandler:(id)handler;
@end

@implementation CPLProxyPullSession

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E861B550;
  v2 = *(a1 + 32);
  v15 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v14];
  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_1;
    v12[3] = &unk_1E861B578;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v4;
    [v3 getChangeBatchWithCompletionHandler:v12];
    v5 = v13;
  }

  else
  {
    v6 = [*(a1 + 32) proxyLibraryManager];
    v7 = [v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_5;
    v10[3] = &unk_1E861B4E0;
    v11 = *(a1 + 40);
    v8 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_0;
    block[3] = &unk_1E861B4E0;
    v17 = v8;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v9);

    v5 = v11;
  }
}

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) proxyLibraryManager];
  v8 = [v7 queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2;
  v14[3] = &unk_1E861ABE0;
  v15 = v5;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v10 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_0;
  block[3] = &unk_1E861B4E0;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v13);
}

uint64_t __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2_cold_1(_CPLSilentLogging);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLProxyPullSessionOSLogDomain(_CPLSilentLogging);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Getting batch failed with error %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E861B550;
  v15 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v14];
  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_6;
    v12[3] = &unk_1E861B5A0;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v3 acknowledgeChangeBatch:v4 withCompletionHandler:v12];
    v5 = v13;
  }

  else
  {
    v6 = [*(a1 + 32) proxyLibraryManager];
    v7 = [v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_12;
    v10[3] = &unk_1E861B4E0;
    v11 = *(a1 + 48);
    v8 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_0;
    block[3] = &unk_1E861B4E0;
    v17 = v8;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v9);

    v5 = v11;
  }
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) proxyLibraryManager];
  v8 = [v7 queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7;
  v14[3] = &unk_1E861ABE0;
  v15 = v5;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v10 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_0;
  block[3] = &unk_1E861B4E0;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v13);
}

uint64_t __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7_cold_1(_CPLSilentLogging);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLProxyPullSessionOSLogDomain(_CPLSilentLogging);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Acknowledging failed with error %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)getChangeBatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLProxyPullSessionOSLogDomain(handlerCopy);
    if (OUTLINED_FUNCTION_73(v7))
    {
      v23 = 0;
      OUTLINED_FUNCTION_41();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLProxyPullSessionOSLogDomain(v13);
      if (OUTLINED_FUNCTION_73(v14))
      {
        v23 = 0;
        OUTLINED_FUNCTION_41();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
      }
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E861AA50;
  v21[4] = self;
  v22 = v6;
  v20 = v6;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v21];
}

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLProxyPullSessionOSLogDomain(v3);
    if (OUTLINED_FUNCTION_73(v5))
    {
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  OUTLINED_FUNCTION_37();
  v12(v11, v4);
}

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLProxyPullSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v2))
    {
      LOWORD(v10) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }

  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_1_0();
  v9(v8);
}

- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  handlerCopy = handler;
  v8 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLProxyPullSessionOSLogDomain(handlerCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = batchCopy;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Acknowledging %@", buf, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLProxyPullSessionOSLogDomain(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "Sending Acknowledging message to connection", buf, 2u);
      }
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = batchCopy;
  v16 = v8;
  v14[4] = self;
  v12 = batchCopy;
  v13 = v8;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v14];
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLProxyPullSessionOSLogDomain(v3);
    if (OUTLINED_FUNCTION_73(v5))
    {
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  OUTLINED_FUNCTION_37();
  v12(v11, v4);
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_9(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [CPLErrors cplErrorWithCode:150 description:@"Exception raised while trying to send a batch to the daemon: %@", *(a1 + 32)];
  v4 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLProxyPullSessionOSLogDomain(v3);
    if (OUTLINED_FUNCTION_73(v5))
    {
      *buf = 138412290;
      v18 = v4;
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLProxyPullSessionOSLogDomain(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(*(a1 + 40) countStyle:{"estimatedBatchSize"), 1}];
        v15 = *(a1 + 40);
        *buf = 138412802;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Unable to send batch to daemon for ack: %@\nBatch (estimated size: %@): %@", buf, 0x20u);
      }
    }
  }

  OUTLINED_FUNCTION_37();
  v16();
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_12(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLProxyPullSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v2))
    {
      LOWORD(v10) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }

  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_1_0();
  v9(v8);
}

uint64_t __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2_cold_1(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = __CPLProxyPullSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v2))
    {
      OUTLINED_FUNCTION_25();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  OUTLINED_FUNCTION_37();
  return v9(v8, 0);
}

uint64_t __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7_cold_1(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = __CPLProxyPullSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v2))
    {
      OUTLINED_FUNCTION_25();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  OUTLINED_FUNCTION_37();
  return v9(v8, 0);
}

@end