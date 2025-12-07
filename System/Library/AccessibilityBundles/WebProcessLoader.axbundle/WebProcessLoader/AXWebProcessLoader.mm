@interface AXWebProcessLoader
+ (void)_accessibilityLoadWebCoreAXBundle;
+ (void)_axUpdated:(id)updated;
+ (void)_registerForAccessibility;
+ (void)initialize;
@end

@implementation AXWebProcessLoader

+ (void)_axUpdated:(id)updated
{
  v3 = dispatch_time(0, 50000000);
  v4 = MEMORY[0x29EDCA578];

  dispatch_after(v3, v4, &__block_literal_global);
}

void __33__AXWebProcessLoader__axUpdated___block_invoke()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = _AXSApplicationAccessibilityEnabled();
  v1 = AXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2[0] = 67109120;
    v2[1] = v0 != 0;
    _os_log_impl(&dword_29C7BB000, v1, OS_LOG_TYPE_INFO, "WebProcess loader updated: checking whether to load: %d", v2, 8u);
  }

  if (v0)
  {
    if (MACancelDownloadErrorDomain_block_invoke_onceToken != -1)
    {
      __33__AXWebProcessLoader__axUpdated___block_invoke_cold_1();
    }
  }
}

void __33__AXWebProcessLoader__axUpdated___block_invoke_281()
{
  if (_CFMZEnabled())
  {
    AXAccessibilityMacCatalystBundlesDirectory();
  }

  else
  {
    AXAccessibilityBundlesDirectory();
  }
  v0 = ;
  v1 = MEMORY[0x29EDB9F48];
  v2 = [v0 stringByAppendingPathComponent:@"WebProcess.axbundle"];
  v3 = [v1 bundleWithPath:v2];

  v8 = 0;
  v4 = [v3 loadAndReturnError:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [objc_msgSend(v3 "principalClass")];
  }

  else
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __33__AXWebProcessLoader__axUpdated___block_invoke_281_cold_1();
    }
  }
}

+ (void)_registerForAccessibility
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__axUpdated_ name:*MEMORY[0x29EDC83D8] object:0];
}

+ (void)initialize
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __32__AXWebProcessLoader_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

uint64_t __32__AXWebProcessLoader_initialize__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = _AXSApplicationAccessibilityEnabled();
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2 != 0;
    _os_log_impl(&dword_29C7BB000, v3, OS_LOG_TYPE_INFO, "WebProcess loader checking whether to load: %d", v5, 8u);
  }

  if (v2)
  {
    [*(a1 + 32) _accessibilityLoadWebCoreAXBundle];
  }

  [*(a1 + 32) _axUpdated:0];
  return [*(a1 + 32) _registerForAccessibility];
}

+ (void)_accessibilityLoadWebCoreAXBundle
{
  if (_accessibilityLoadWebCoreAXBundle_onceToken != -1)
  {
    +[AXWebProcessLoader _accessibilityLoadWebCoreAXBundle];
  }
}

void __55__AXWebProcessLoader__accessibilityLoadWebCoreAXBundle__block_invoke()
{
  v12 = *MEMORY[0x29EDCA608];
  if (_CFMZEnabled())
  {
    AXAccessibilityMacCatalystBundlesDirectory();
  }

  else
  {
    AXAccessibilityBundlesDirectory();
  }
  v0 = ;
  v1 = MEMORY[0x29EDB9F48];
  v2 = [v0 stringByAppendingPathComponent:@"WebCore.axbundle"];
  v3 = [v1 bundleWithPath:v2];

  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_29C7BB000, v4, OS_LOG_TYPE_INFO, "Loading WebCore bundle: %@", buf, 0xCu);
  }

  v9 = 0;
  v5 = [v3 loadAndReturnError:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [objc_msgSend(v3 "principalClass")];
  }

  else
  {
    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __33__AXWebProcessLoader__axUpdated___block_invoke_281_cold_1();
    }
  }
}

@end