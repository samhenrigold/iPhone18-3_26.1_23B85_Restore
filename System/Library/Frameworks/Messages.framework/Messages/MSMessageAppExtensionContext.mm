@interface MSMessageAppExtensionContext
@end

@implementation MSMessageAppExtensionContext

void __84___MSMessageAppExtensionContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS____MSMessageAppExtensionContext;
  v1 = objc_msgSendSuper2(&v7, sel__extensionContextHostProtocolAllowedClassesForItems);
  v2 = MEMORY[0x1E695DFA8];
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setWithArray:v3];

  [v4 unionSet:v1];
  v5 = [v4 copy];
  v6 = _extensionContextHostProtocolAllowedClassesForItems_allowedClasses;
  _extensionContextHostProtocolAllowedClassesForItems_allowedClasses = v5;
}

void __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = +[_MSExtensionGlobalState sharedInstance];
    [v3 setActiveExtensionContext:*(a1 + 32)];
  }
}

void __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1 && (+[_MSExtensionGlobalState sharedInstance](_MSExtensionGlobalState, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), [v3 activeExtensionContext], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 32), v4, v3, v4 == v5))
  {
    v6 = +[_MSExtensionGlobalState sharedInstance];
    [v6 setActiveExtensionContext:0];
  }

  else
  {
    v6 = ms_defaultLog(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1CADE6000, v6, OS_LOG_TYPE_DEFAULT, "_MSExtensionGlobalState: not clearing active extension context because either it is not the primary or a new extension context has already been created.", v16, 2u);
    }
  }

  v8 = ms_traceLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

void __64___MSMessageAppExtensionContext__installPrincipalObjectObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _principalObject];

  if (v1)
  {
    [WeakRetained _handlePrincipalObjectCreated];
  }
}

void __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_2;
  v3[3] = &unk_1E83A2E98;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke_2;
  v3[3] = &unk_1E83A2EC0;
  v3[4] = *(a1 + 32);
  [v2 updateSnapshotWithCompletionBlock:v3];
}

void __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 remoteProxy];
    [v4 _updateSnapshotForNextLaunch:v3];
  }
}

void __62___MSMessageAppExtensionContext_beginDisablingUserInteraction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) _principalObject];
    [v4 disableUserInteraction];
  }
}

void __60___MSMessageAppExtensionContext_endDisablingUserInteraction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) _principalObject];
    [v4 enableUserInteraction];
  }
}

void __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_MSMessageAppExtensionContext initWithInputItems:listenerEndpoint:contextUUID:]_block_invoke";
  OUTLINED_FUNCTION_0_1(&dword_1CADE6000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end