@interface CDMFeatureFlags
+ (BOOL)isLogNluEnabled;
+ (BOOL)isSSUCacheUpdateOnEveryRequestEnabled;
+ (BOOL)isSSUEnableIndexingEnabled;
+ (BOOL)isSSUEnabled;
@end

@implementation CDMFeatureFlags

+ (BOOL)isSSUEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if ([self isCDMClientXPCEnabled])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315138;
        v7 = "+[CDMFeatureFlags isSSUEnabled]";
        _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: Mismatched feature flags: SiriNL/SiriMiniSSU cannot be enabled while SiriNL/isCDMClientXPCEnabled is disabled. Forcing SiriNL/SiriMiniSSU=off.", &v6, 0xCu);
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (BOOL)isSSUCacheUpdateOnEveryRequestEnabled
{
  isSSUEnabled = [self isSSUEnabled];
  if (isSSUEnabled)
  {

    LOBYTE(isSSUEnabled) = _os_feature_enabled_impl();
  }

  return isSSUEnabled;
}

+ (BOOL)isSSUEnableIndexingEnabled
{
  isSSUEnabled = [self isSSUEnabled];
  if (isSSUEnabled)
  {

    LOBYTE(isSSUEnabled) = _os_feature_enabled_impl();
  }

  return isSSUEnabled;
}

+ (BOOL)isLogNluEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return +[CDMUserDefaultsUtils isWriteDebugToDiskEnabled];
}

@end