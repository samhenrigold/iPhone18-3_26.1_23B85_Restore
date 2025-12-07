@interface AXSShouldLoadInvertBundles
@end

@implementation AXSShouldLoadInvertBundles

void ___AXSShouldLoadInvertBundles_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (_AXSProcessLoadsInvertBundlesForPerAppSmartInvert())
  {
    if (_AXSProcessIsSpringBoard_onceToken != -1)
    {
      ___AXSShouldLoadInvertBundles_block_invoke_cold_1();
    }

    if ((_AXSProcessIsSpringBoard__AXSProcessIsSpringBoard & 1) == 0)
    {
      v0 = CFPreferencesCopyValue(@"AXSSystemUIProcessAppSmartInvertEnabledPreference", kAXSAccessibilityPreferenceDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [v0 BOOLValue];
        _kAXSystemUIProcessShouldLoadInvertBundles = isKindOfClass;
      }

      v2 = AXLogInvertColorsLoadBundles(isKindOfClass);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [MEMORY[0x1E696AD98] numberWithBool:_kAXSystemUIProcessShouldLoadInvertBundles];
        v4 = 138412290;
        v5 = v3;
        _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "SystemUIProcessShouldLoadInvertBundles: %@", &v4, 0xCu);
      }
    }
  }
}

@end