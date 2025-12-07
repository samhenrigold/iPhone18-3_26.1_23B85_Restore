@interface WBSPasswordBreachSettings
+ (BOOL)isPasswordBreachDetectionEnabled;
+ (void)setPasswordBreachDetectionEnabled:(BOOL)enabled;
@end

@implementation WBSPasswordBreachSettings

+ (BOOL)isPasswordBreachDetectionEnabled
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults safari_BOOLForKey:@"PasswordBreachDetectionOn" defaultValue:1];

  return v3;
}

+ (void)setPasswordBreachDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setBool:enabledCopy forKey:@"PasswordBreachDetectionOn"];

  if (!enabledCopy)
  {
    v5 = objc_alloc_init(WBSPasswordBreachHelperProxy);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSPasswordBreachSettings_setPasswordBreachDetectionEnabled___block_invoke;
    v7[3] = &unk_1E7CF33E0;
    v8 = v5;
    v6 = v5;
    [(WBSPasswordBreachHelperProxy *)v6 clearAllRecordsWithCompletionHandler:v7];
  }
}

uint64_t __63__WBSPasswordBreachSettings_setPasswordBreachDetectionEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(a1, a2);
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Password Monitoring turned off. Cleared all Password Monitoring records.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__WBSPasswordBreachSettings_setPasswordBreachDetectionEnabled___block_invoke_cold_1(v5);
  }

  return [*(a1 + 32) invalidate];
}

@end