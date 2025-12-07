@interface LNDaemonMediator
+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation LNDaemonMediator

+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v24 = identifierCopy;
  }

  v8 = objc_alloc(MEMORY[0x1E696B0B8]);
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.private.appintents.delegate.%@", identifierCopy];
  v10 = [v8 initWithMachServiceName:identifierCopy options:0];

  v11 = LNConnectionHostXPCListenerEndpointVendingInterface();
  [v10 setRemoteObjectInterface:v11];

  [v10 setInterruptionHandler:&__block_literal_global_12828];
  [v10 setInvalidationHandler:&__block_literal_global_11];
  [v10 resume];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_12;
  v21[3] = &unk_1E74B2848;
  v12 = handlerCopy;
  v22 = v12;
  v13 = [v10 remoteObjectProxyWithErrorHandler:v21];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_14;
  v17[3] = &unk_1E74B2230;
  v19 = identifierCopy;
  v20 = v12;
  v18 = v10;
  v14 = identifierCopy;
  v15 = v12;
  v16 = v10;
  [v13 getListenerEndpointWithCompletionHandler:v17];
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E74B2318;
  v15 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = *(*(a1 + 48) + 16);
  if (v7)
  {
    v11();
    v12 = getLNLogCategoryDaemonMediator();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11();
  }

  v10[2](v10);
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_9(uint64_t a1)
{
  v1 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19763D000, v1, OS_LOG_TYPE_INFO, "Daemon Mediator XPC connection has been invalidated", v2, 2u);
  }
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19763D000, v1, OS_LOG_TYPE_INFO, "Daemon Mediator XPC connection has been interrupted", v2, 2u);
  }
}

@end