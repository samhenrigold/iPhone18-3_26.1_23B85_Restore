@interface CDPDBootSessionIDProvider
+ (id)bootSessionUUID;
@end

@implementation CDPDBootSessionIDProvider

+ (id)bootSessionUUID
{
  if (bootSessionUUID_onceToken != -1)
  {
    +[CDPDBootSessionIDProvider bootSessionUUID];
  }

  v3 = bootSessionUUID__bootSessionUUID;

  return v3;
}

void __44__CDPDBootSessionIDProvider_bootSessionUUID__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", v7, &v6, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = _CDPLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __44__CDPDBootSessionIDProvider_bootSessionUUID__block_invoke_cold_1(v1, v2);
    }

    v3 = bootSessionUUID__bootSessionUUID;
    bootSessionUUID__bootSessionUUID = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
    v5 = bootSessionUUID__bootSessionUUID;
    bootSessionUUID__bootSessionUUID = v4;
  }
}

void __44__CDPDBootSessionIDProvider_bootSessionUUID__block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_24510B000, a2, OS_LOG_TYPE_FAULT, "Failed to retrieve boot session UUID with exit code %d", v2, 8u);
}

@end