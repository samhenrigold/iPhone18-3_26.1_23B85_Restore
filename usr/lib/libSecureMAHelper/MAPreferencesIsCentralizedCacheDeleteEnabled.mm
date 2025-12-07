@interface MAPreferencesIsCentralizedCacheDeleteEnabled
@end

@implementation MAPreferencesIsCentralizedCacheDeleteEnabled

void ___MAPreferencesIsCentralizedCacheDeleteEnabled_block_invoke(void *result, uint64_t a2)
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  if (_MAPreferencesIsInternalAllowed__isAppleInternal == 1)
  {
    v3 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"EnableCentralizedCacheDelete", &v3);
    if (v3)
    {
      _MAPreferencesIsCentralizedCacheDeleteEnabled__centralizedCacheDeleteEnabled = AppBooleanValue;
    }
  }
}

@end