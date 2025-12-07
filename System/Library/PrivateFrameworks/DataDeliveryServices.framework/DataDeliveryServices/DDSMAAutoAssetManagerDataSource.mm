@interface DDSMAAutoAssetManagerDataSource
- (id)supportedAutoAssetSpecifiers;
- (int64_t)linguisticAssetCompatabilityVersion;
@end

@implementation DDSMAAutoAssetManagerDataSource

- (int64_t)linguisticAssetCompatabilityVersion
{
  if (linguisticAssetCompatabilityVersion_onceToken != -1)
  {
    [DDSMAAutoAssetManagerDataSource linguisticAssetCompatabilityVersion];
  }

  return linguisticAssetCompatabilityVersion_supportedCompatibilityVersion;
}

void __70__DDSMAAutoAssetManagerDataSource_linguisticAssetCompatabilityVersion__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  linguisticAssetCompatabilityVersion_supportedCompatibilityVersion = DDSReadCompatabilityVersionFromFile(@"Info.plist");
  v0 = DefaultLog(linguisticAssetCompatabilityVersion_supportedCompatibilityVersion);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 134217984;
    v2 = linguisticAssetCompatabilityVersion_supportedCompatibilityVersion;
    _os_log_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEFAULT, "Supported compatibility version for LinguisticData assets = %ld", &v1, 0xCu);
  }
}

- (id)supportedAutoAssetSpecifiers
{
  if (supportedAutoAssetSpecifiers_onceToken != -1)
  {
    [DDSMAAutoAssetManagerDataSource supportedAutoAssetSpecifiers];
  }

  v3 = supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers;

  return v3;
}

void __63__DDSMAAutoAssetManagerDataSource_supportedAutoAssetSpecifiers__block_invoke()
{
  v0 = DDSReadSupportedPriorityAssetSpecifiersFromFile(@"Info.plist");
  v1 = supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers;
  supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers = v0;

  v3 = DefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__DDSMAAutoAssetManagerDataSource_supportedAutoAssetSpecifiers__block_invoke_cold_1(v3);
  }
}

void __63__DDSMAAutoAssetManagerDataSource_supportedAutoAssetSpecifiers__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers;
  _os_log_debug_impl(&dword_1DF7C6000, log, OS_LOG_TYPE_DEBUG, "Supported auto asset specifiers: %@", &v1, 0xCu);
}

@end