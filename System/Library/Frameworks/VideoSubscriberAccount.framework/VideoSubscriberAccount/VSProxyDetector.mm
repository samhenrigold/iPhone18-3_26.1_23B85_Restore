@interface VSProxyDetector
+ (BOOL)isProxyConfigured;
@end

@implementation VSProxyDetector

+ (BOOL)isProxyConfigured
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = CFNetworkCopySystemProxySettings();
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CBAD28]];

  v5 = VSDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 != 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Proxy Configured? %d", v7, 8u);
  }

  return v3 != 0;
}

@end