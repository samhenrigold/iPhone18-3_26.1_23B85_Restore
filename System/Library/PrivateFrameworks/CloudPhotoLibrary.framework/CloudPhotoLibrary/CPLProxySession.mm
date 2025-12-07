@interface CPLProxySession
+ (void)beginSessionForProxy:(id)proxy knownVersion:(id)version context:(id)context completionHandler:(id)handler;
- (id)proxyLibraryManager;
- (id)proxyWithErrorHandler:(id)handler;
- (void)beginSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)dispatchBlockWhenLibraryIsOpen:(id)open;
- (void)finalizeWithCompletionHandler:(id)handler;
@end

@implementation CPLProxySession

- (id)proxyLibraryManager
{
  abstractObject = [(CPLPlatformObject *)self abstractObject];
  libraryManager = [abstractObject libraryManager];
  platformObject = [libraryManager platformObject];

  return platformObject;
}

- (id)proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  proxyLibraryManager = [(CPLProxySession *)self proxyLibraryManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__CPLProxySession_proxyWithErrorHandler___block_invoke;
  v9[3] = &unk_1E861AAF0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [proxyLibraryManager proxyWithErrorHandler:v9];

  return v7;
}

+ (void)beginSessionForProxy:(id)proxy knownVersion:(id)version context:(id)context completionHandler:(id)handler
{
  proxyCopy = proxy;
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxySession.m"];
  v17 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:32 description:{@"%@ should be implemented by subclasses", v17}];

  abort();
}

void __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_2;
  v16[3] = &unk_1E861B618;
  v16[4] = v2;
  v17 = *(a1 + 56);
  v3 = [v2 proxyWithErrorHandler:v16];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_5;
    v14[3] = &unk_1E861B618;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 56);
    [v4 beginSessionForProxy:v3 knownVersion:v5 context:v6 completionHandler:v14];
    v7 = v15;
  }

  else
  {
    v8 = [*(a1 + 32) proxyLibraryManager];
    v9 = [v8 queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_8;
    v12[3] = &unk_1E861B4E0;
    v13 = *(a1 + 56);
    v10 = v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_2;
    block[3] = &unk_1E861B4E0;
    v19 = v10;
    v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v11);

    v7 = v13;
  }
}

void __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) proxyLibraryManager];
  v5 = [v4 queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_2_6;
  v11[3] = &unk_1E861B3D0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v14 = v7;
  v8 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_2;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v10);
}

void __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) proxyLibraryManager];
  v5 = [v4 queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E861B3D0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v14 = v7;
  v8 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_2;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v10);
}

- (void)dispatchBlockWhenLibraryIsOpen:(id)open
{
  openCopy = open;
  proxyLibraryManager = [(CPLProxySession *)self proxyLibraryManager];
  [proxyLibraryManager dispatchBlockWhenLibraryIsOpen:openCopy];
}

- (void)beginSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  v11 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSessionOSLogDomain(handlerCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Beginning %@", buf, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSessionOSLogDomain(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Sending begin session message to connection", buf, 2u);
      }
    }
  }

  OUTLINED_FUNCTION_12();
  v18[1] = 3221225472;
  v18[2] = __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = versionCopy;
  v20 = contextCopy;
  v21 = v11;
  v15 = contextCopy;
  v16 = versionCopy;
  v17 = v11;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v18];
}

void __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSessionOSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_6_0(&dword_1DC05A000, v5, v6, "Beginning %@ failed with error %@", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_37();
  v11();
}

uint64_t __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_2_6(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLSessionOSLogDomain(a1);
      if (OUTLINED_FUNCTION_75(v2))
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_25();
        _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
      }

LABEL_9:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v8))
    {
      OUTLINED_FUNCTION_25();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_37();
  return v17(v14, v15, v16);
}

void __81__CPLProxySession_beginSessionWithKnownLibraryVersion_context_completionHandler___block_invoke_8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v2))
    {
      LOWORD(v10) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }

  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_3_0();
  v9(v8);
}

- (void)finalizeWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSessionOSLogDomain(handlerCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Finalizing %@", buf, 0xCu);
    }
  }

  OUTLINED_FUNCTION_12();
  v8[1] = 3221225472;
  v8[2] = __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E861AA50;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v8];
}

void __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSessionOSLogDomain(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Sending finalize message to connection", buf, 2u);
    }
  }

  v3 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_10;
  v15[3] = &unk_1E861B618;
  v15[4] = v3;
  v16 = *(a1 + 40);
  v4 = [v3 proxyWithErrorHandler:v15];
  if (v4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_11;
    v13[3] = &unk_1E861B618;
    v5 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v5;
    [v4 finalizeSessionWithCompletionHandler:v13];
    v6 = v14;
  }

  else
  {
    v7 = [*(a1 + 32) proxyLibraryManager];
    v8 = [v7 queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_12;
    v11[3] = &unk_1E861B4E0;
    v12 = *(a1 + 40);
    v9 = v11;
    *buf = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __cpl_dispatch_async_block_invoke_2;
    v20 = &unk_1E861B4E0;
    v21 = v9;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v8, v10);

    v6 = v12;
  }
}

void __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSessionOSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_6_0(&dword_1DC05A000, v5, v6, "Finalizing %@ failed with error %@", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_37();
  v11();
}

uint64_t __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLSessionOSLogDomain(a1);
      if (OUTLINED_FUNCTION_75(v2))
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_25();
        _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
      }

LABEL_9:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v8))
    {
      OUTLINED_FUNCTION_25();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_37();
  return v17(v14, v15, v16);
}

void __49__CPLProxySession_finalizeWithCompletionHandler___block_invoke_12(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSessionOSLogDomain(a1);
    if (OUTLINED_FUNCTION_75(v2))
    {
      LOWORD(v10) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }

  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_3_0();
  v9(v8);
}

@end