@interface DMCLazyInitializationUtilities
+ (void)initAppleIDSSOAuthentication;
+ (void)initAuthKit;
+ (void)initMobileActivation;
+ (void)initSetupAssistant;
+ (void)initSpringBoardServices;
+ (void)loadBundleAtURL:(id)l completionBlock:(id)block;
+ (void)loadNSBundleAtURL:(id)l completionBlock:(id)block;
@end

@implementation DMCLazyInitializationUtilities

+ (void)loadBundleAtURL:(id)l completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v9 = *DMCLogObjects(lastPathComponent, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = lastPathComponent;
    _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_INFO, "Lazy loading %{public}@", buf, 0xCu);
  }

  v10 = CFBundleCreate(0, lCopy);

  if (v10)
  {
    error = 0;
    v13 = CFBundleLoadExecutableAndReturnError(v10, &error);
    v14 = v13;
    v16 = *DMCLogObjects(v13, v15);
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = lastPathComponent;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@", buf, 0xCu);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, 1, v10);
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = lastPathComponent;
        v21 = 2114;
        v22 = error;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Could not load %{public}@: %{public}@", buf, 0x16u);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, 0, 0);
      }
    }

    CFRelease(v10);
    if (error)
    {
      CFRelease(error);
    }
  }

  else
  {
    v17 = *DMCLogObjects(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = lastPathComponent;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, 0, 0);
    }
  }
}

+ (void)loadNSBundleAtURL:(id)l completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v9 = *DMCLogObjects(lastPathComponent, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = lastPathComponent;
    _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_INFO, "Lazy loading NSBundle %{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];

  v19 = 0;
  v11 = [v10 loadAndReturnError:&v19];
  v12 = v19;
  v14 = *DMCLogObjects(v12, v13);
  if (v11)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    v21 = lastPathComponent;
    v15 = "Loaded %{public}@";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v21 = lastPathComponent;
    v22 = 2114;
    v23 = v12;
    v15 = "Could not load %{public}@: %{public}@";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 22;
  }

  _os_log_impl(&dword_1B1630000, v16, v17, v15, buf, v18);
LABEL_9:
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v11, v10);
  }
}

+ (void)initSpringBoardServices
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__DMCLazyInitializationUtilities_initSpringBoardServices__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initSpringBoardServices_onceToken != -1)
  {
    dispatch_once(&initSpringBoardServices_onceToken, block);
  }
}

void __57__DMCLazyInitializationUtilities_initSpringBoardServices__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/SpringBoardServices.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_9];
}

void __57__DMCLazyInitializationUtilities_initSpringBoardServices__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _SBUserNotificationDontDismissOnUnlock = *CFBundleGetDataPointerForName(bundle, @"SBUserNotificationDontDismissOnUnlock");
    _SBUserNotificationDismissOnLock = *CFBundleGetDataPointerForName(bundle, @"SBUserNotificationDismissOnLock");
  }
}

+ (void)initSetupAssistant
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__DMCLazyInitializationUtilities_initSetupAssistant__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initSetupAssistant_onceToken != -1)
  {
    dispatch_once(&initSetupAssistant_onceToken, block);
  }
}

void __52__DMCLazyInitializationUtilities_initSetupAssistant__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/SetupAssistant.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_31];
}

void __52__DMCLazyInitializationUtilities_initSetupAssistant__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _BYSetupAssistantNeedsToRun = CFBundleGetFunctionPointerForName(bundle, @"BYSetupAssistantNeedsToRun");
    v4 = *CFBundleGetDataPointerForName(bundle, @"BYSetupAssistantFinishedDarwinNotification");

    objc_storeStrong(&_BYSetupAssistantFinishedDarwinNotification, v4);
  }
}

+ (void)initAuthKit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DMCLazyInitializationUtilities_initAuthKit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initAuthKit_onceToken != -1)
  {
    dispatch_once(&initAuthKit_onceToken, block);
  }
}

void __45__DMCLazyInitializationUtilities_initAuthKit__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AuthKit.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_39];
}

void __45__DMCLazyInitializationUtilities_initAuthKit__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    DataPointerForName = CFBundleGetDataPointerForName(bundle, @"AKAuthenticationUsernameKey");
    objc_storeStrong(&_AKAuthenticationUsernameKey, *DataPointerForName);
    v5 = CFBundleGetDataPointerForName(bundle, @"AKAuthenticationPasswordKey");
    objc_storeStrong(&_AKAuthenticationPasswordKey, *v5);
    v6 = CFBundleGetDataPointerForName(bundle, @"AKAuthenticationAlternateDSIDKey");
    objc_storeStrong(&_AKAuthenticationAlternateDSIDKey, *v6);
    v7 = CFBundleGetDataPointerForName(bundle, @"AKAuthenticationDSIDKey");
    objc_storeStrong(&_AKAuthenticationDSIDKey, *v7);
    v8 = *CFBundleGetDataPointerForName(bundle, @"AKAuthenticationIDMSTokenKey");

    objc_storeStrong(&_AKAuthenticationIDMSTokenKey, v8);
  }
}

+ (void)initAppleIDSSOAuthentication
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__DMCLazyInitializationUtilities_initAppleIDSSOAuthentication__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initAppleIDSSOAuthentication_onceToken != -1)
  {
    dispatch_once(&initAppleIDSSOAuthentication_onceToken, block);
  }
}

void __62__DMCLazyInitializationUtilities_initAppleIDSSOAuthentication__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleIDSSOAuthentication.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_56];
}

void __62__DMCLazyInitializationUtilities_initAppleIDSSOAuthentication__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    DataPointerForName = CFBundleGetDataPointerForName(bundle, @"AIDAServiceTypeCloud");
    objc_storeStrong(&_AIDAServiceTypeCloud, *DataPointerForName);
    v5 = CFBundleGetDataPointerForName(bundle, @"AIDAServiceTypeMessages");
    objc_storeStrong(&_AIDAServiceTypeMessages, *v5);
    v6 = CFBundleGetDataPointerForName(bundle, @"AIDAServiceTypeFaceTime");
    objc_storeStrong(&_AIDAServiceTypeFaceTime, *v6);
    v7 = CFBundleGetDataPointerForName(bundle, @"AIDAServiceTypeStore");
    objc_storeStrong(&_AIDAServiceTypeStore, *v7);
    v8 = *CFBundleGetDataPointerForName(bundle, @"AIDAServiceTypeGameCenter");

    objc_storeStrong(&_AIDAServiceTypeGameCenter, v8);
  }
}

+ (void)initMobileActivation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__DMCLazyInitializationUtilities_initMobileActivation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initMobileActivation_onceToken != -1)
  {
    dispatch_once(&initMobileActivation_onceToken, block);
  }
}

void __54__DMCLazyInitializationUtilities_initMobileActivation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/MobileActivation.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_99];
}

void __54__DMCLazyInitializationUtilities_initMobileActivation__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    DataPointerForName = CFBundleGetDataPointerForName(bundle, @"kMAActivationStateActivated");
    objc_storeStrong(&_kMAActivationStateActivated, *DataPointerForName);
    v5 = CFBundleGetDataPointerForName(bundle, @"kNotificationActivationStateChanged");
    objc_storeStrong(&_kNotificationActivationStateChanged, *v5);
    _MAEGetActivationStateWithError = CFBundleGetFunctionPointerForName(bundle, @"MAEGetActivationStateWithError");
    _MAECopyActivationRecordWithError = CFBundleGetFunctionPointerForName(bundle, @"MAECopyActivationRecordWithError");
  }
}

@end