@interface MAPreferencesIsVerboseLoggingEnabled
@end

@implementation MAPreferencesIsVerboseLoggingEnabled

void ___MAPreferencesIsVerboseLoggingEnabled_block_invoke(void *result, uint64_t a2)
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  if (_MAPreferencesIsInternalAllowed__isAppleInternal == 1)
  {
    v3 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"EnableVerboseLogging", &v3);
    if (v3)
    {
      _MAPreferencesIsVerboseLoggingEnabled__verboseLoggingEnabled = AppBooleanValue;
    }
  }
}

@end