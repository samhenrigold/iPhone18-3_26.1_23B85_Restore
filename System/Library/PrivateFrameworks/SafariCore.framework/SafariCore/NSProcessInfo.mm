@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __70__NSProcessInfo_SafariCoreExtras__safari_operatingSystemVersionString__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_operatingSystemVersion(*(a1 + 32), a2);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = [v2 _safari_operatingSystemVersionStringFromOperatingSystemVersion:v5];
  v4 = safari_operatingSystemVersionString_osVersionString;
  safari_operatingSystemVersionString_osVersionString = v3;
}

void __67__NSProcessInfo_SafariCoreExtras__safari_isPasswordManagerTestMode__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"PASSWORD_MANAGER_TESTING"];

  if ([v2 BOOLValue])
  {
    safari_isPasswordManagerTestMode_isTestMode = +[WBSFeatureAvailability isInternalInstall];
  }
}

void __52__NSProcessInfo_SafariCoreExtras__safari_deviceUDID__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v4.tv_sec = 0;
  v4.tv_nsec = 0;
  memset(v5, 0, sizeof(v5));
  if (gethostuuid(v5, &v4))
  {
    v0 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  else
  {
    v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];
  }

  v1 = v0;
  v2 = [v0 UUIDString];
  v3 = safari_deviceUDID_udid;
  safari_deviceUDID_udid = v2;
}

@end