@interface LSDiskUsage
@end

@implementation LSDiskUsage

void __27___LSDiskUsage_staticUsage__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"static"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __28___LSDiskUsage_dynamicUsage__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"dynamic"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __38___LSDiskUsage_onDemandResourcesUsage__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"ODR"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __27___LSDiskUsage_sharedUsage__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"shared"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __42___LSDiskUsage_removeAllCachedUsageValues__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"static"];
  [*(*(a1 + 32) + 16) removeAllObjects];
  if (v2)
  {
    [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:@"static"];
  }
}

void __32___LSDiskUsage_debugDescription__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  v4 = [v2 initWithFormat:@"<%@ %p> { %@ }", v7, *(a1 + 32), *(*(a1 + 32) + 16)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __38___LSDiskUsage_Internal___serverQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("Disk usage population queue", v2);
  v1 = +[_LSDiskUsage(Internal) _serverQueue]::result;
  +[_LSDiskUsage(Internal) _serverQueue]::result = v0;
}

void __56___LSDiskUsage_Internal___fetchWithXPCConnection_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"dynamic"];
  if (v2)
  {
    v5 = v2;
    v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"ODR"];
    if (v3)
    {
      v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"shared"];
      *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v2 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __38___LSDiskUsage_Private__propertyQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("Disk usage property queue", v2);
  v1 = +[_LSDiskUsage(Private) propertyQueue]::result;
  +[_LSDiskUsage(Private) propertyQueue]::result = v0;
}

void __48___LSDiskUsage_Private__mobileInstallationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MobileInstallation callout queue for disk usage", v2);
  v1 = +[_LSDiskUsage(Private) mobileInstallationQueue]::result;
  +[_LSDiskUsage(Private) mobileInstallationQueue]::result = v0;
}

void __78___LSDiskUsage_Private__usageFromMobileInstallationForBundleIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v15[0] = @"DynamicDiskUsage";
  v15[1] = @"SharedDiskUsage";
  v16[0] = MEMORY[0x1E695E118];
  v16[1] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v6 = softLinkMobileInstallationCopyDiskUsageForLaunchServices(*(a1 + 32), v5);
  v7 = v6;
  if (!v6 || ([v6 objectForKeyedSubscript:*(a1 + 32)], v8 = objc_claimAutoreleasedReturnValue(), (v9 = v8) == 0))
  {
    v10 = 0;
    v11 = 0;
LABEL_7:
    v12 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 109, 0, "+[_LSDiskUsage(Private) usageFromMobileInstallationForBundleIdentifier:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDiskUsage.mm", 319);
    v3[2](v3, 0, v12);
    goto LABEL_8;
  }

  v10 = [v8 objectForKeyedSubscript:@"DynamicDiskUsage"];
  v11 = [v9 objectForKeyedSubscript:@"SharedDiskUsage"];

  if (!v10 || !v11)
  {
    goto LABEL_7;
  }

  v13[0] = @"dynamic";
  v13[1] = @"shared";
  v14[0] = v10;
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  (v3)[2](v3, v12, 0);
LABEL_8:

  objc_autoreleasePoolPop(v4);
}

void __38___LSDiskUsage_Private__ODRConnection__block_invoke()
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB21F0];
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ondemandd.launchservices" options:4096];
  v1 = +[_LSDiskUsage(Private) ODRConnection]::result;
  +[_LSDiskUsage(Private) ODRConnection]::result = v0;

  [+[_LSDiskUsage(Private) ODRConnection]::result setRemoteObjectInterface:v2];
  [+[_LSDiskUsage(Private) ODRConnection]::result setInterruptionHandler:&__block_literal_global_141];
  [+[_LSDiskUsage(Private) ODRConnection]::result resume];
}

void __38___LSDiskUsage_Private__ODRConnection__block_invoke_2(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Unable to connect to ondemandd.", v2, 2u);
  }
}

void __59___LSDiskUsage_Private__ODRUsageForBundleIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) ODRConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59___LSDiskUsage_Private__ODRUsageForBundleIdentifier_error___block_invoke_2;
  v11[3] = &unk_1E6A19090;
  v5 = v3;
  v12 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];

  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59___LSDiskUsage_Private__ODRUsageForBundleIdentifier_error___block_invoke_3;
  v9[3] = &unk_1E6A1BD90;
  v8 = v5;
  v10 = v8;
  [v6 bytesUsedForApplicationWithBundleID:v7 replyBlock:v9];
}

void __59___LSDiskUsage_Private__ODRUsageForBundleIdentifier_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  }

  (*(*(a1 + 32) + 16))();
}

void __50___LSDiskUsage_Private__fetchClientSideWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get dynamic/ODR disk usage for app %@, error = %@", &v8, 0x16u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __50___LSDiskUsage_Private__fetchClientSideWithError___block_invoke_145(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_opt_class() propertyQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50___LSDiskUsage_Private__fetchClientSideWithError___block_invoke_2;
    v11[3] = &unk_1E6A1ABE8;
    v11[4] = a1[4];
    v12 = v5;
    dispatch_barrier_async(v8, v11);

    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v9 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1[4] + 8);
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get dynamic/ODR disk usage for app %@, error = %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }
}

@end