@interface MAClientLog
@end

@implementation MAClientLog

void ___MAClientLog_block_invoke()
{
  v15[11] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69D3880] sharedCore];
  [v0 useDomain:@"com.apple.MobileAsset"];

  v14[0] = @"DEFAULT";
  v13 = os_log_create("com.apple.MobileAsset", [@"DEFAULT" UTF8String]);
  v15[0] = v13;
  v14[1] = @"V2";
  v1 = os_log_create("com.apple.MobileAsset", [@"V2" UTF8String]);
  v15[1] = v1;
  v14[2] = @"Brain";
  v2 = os_log_create("com.apple.MobileAsset", [@"Brain" UTF8String]);
  v15[2] = v2;
  v14[3] = @"SSO";
  v3 = os_log_create("com.apple.MobileAsset", [@"SSO" UTF8String]);
  v15[3] = v3;
  v14[4] = @"PushNotification";
  v4 = os_log_create("com.apple.MobileAsset", [@"PushNotification" UTF8String]);
  v15[4] = v4;
  v14[5] = @"SecureMA";
  v5 = os_log_create("com.apple.MobileAsset", [@"SecureMA" UTF8String]);
  v15[5] = v5;
  v14[6] = @"Manifest";
  v6 = os_log_create("com.apple.MobileAsset", [@"Manifest" UTF8String]);
  v15[6] = v6;
  v14[7] = @"KeyManager";
  v7 = os_log_create("com.apple.MobileAsset", [@"KeyManager" UTF8String]);
  v15[7] = v7;
  v14[8] = @"Auto";
  v8 = os_log_create("com.apple.MobileAsset", [@"Auto" UTF8String]);
  v15[8] = v8;
  v14[9] = @"AutoSet";
  v9 = os_log_create("com.apple.MobileAsset", [@"AutoSet" UTF8String]);
  v15[9] = v9;
  v14[10] = @"AutoStager";
  v10 = os_log_create("com.apple.MobileAsset", [@"AutoStager" UTF8String]);
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v12 = _MAClientLog_clientLoggers;
  _MAClientLog_clientLoggers = v11;
}

@end