@interface NSUserDefaults(TCSTinCanUserDefaults)
- (uint64_t)_tcsEnsureProtectionClass;
- (uint64_t)_tcsHandleDeviceFirstUnlock;
@end

@implementation NSUserDefaults(TCSTinCanUserDefaults)

- (uint64_t)_tcsHandleDeviceFirstUnlock
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSTinCanUserDefaults notified of device first-unlock.", v5, 2u);
  }

  return [self _tcsEnsureProtectionClass];
}

- (uint64_t)_tcsEnsureProtectionClass
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSTinCanUserDefaults ensuring domain is protection class C.", v5, 2u);
  }

  _CFPreferencesSetFileProtectionClass();
  [self _tcsSetPrefsDaemonCacheEnabled:0];
  [self _tcsSetPrefsObject:MEMORY[0x277CBEC38] forKey:@"SetFileProtectionClass"];
  [self _tcsSetPrefsObject:0 forKey:@"SetFileProtectionClass"];
  return [self _tcsSetPrefsDaemonCacheEnabled:1];
}

@end