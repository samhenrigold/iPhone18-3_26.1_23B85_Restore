@interface AKLoginCodeNotificationBuilder
+ (__CFUserNotification)buildLoginCodeNotificationWithTitle:(id)title body:(id)body footer:(id)footer loginCode:(id)code;
+ (id)buildLoginCodeNotificationOptionsWithTitle:(id)title body:(id)body footer:(id)footer loginCode:(id)code;
@end

@implementation AKLoginCodeNotificationBuilder

+ (__CFUserNotification)buildLoginCodeNotificationWithTitle:(id)title body:(id)body footer:(id)footer loginCode:(id)code
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v19 = 0;
  objc_storeStrong(&v19, body);
  v18 = 0;
  objc_storeStrong(&v18, footer);
  v17 = 0;
  objc_storeStrong(&v17, code);
  if ([MEMORY[0x1E6985DD8] deviceIsAudioAccessory])
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_193225000, log, type, "Attempted to show login code CFUserNotification on HomePod, AuthKit prompts aren't made for this!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v21 = 0;
    v13 = 1;
  }

  else
  {
    v12 = [AKLoginCodeNotificationBuilder buildLoginCodeNotificationOptionsWithTitle:location[0] body:v19 footer:v18 loginCode:v17];
    v21 = AKUserNotificationCreate(*MEMORY[0x1E695E480], 0, 0, v12, 0.0);
    v13 = 1;
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v21;
}

+ (id)buildLoginCodeNotificationOptionsWithTitle:(id)title body:(id)body footer:(id)footer loginCode:(id)code
{
  v30[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v28 = 0;
  objc_storeStrong(&v28, body);
  v27 = 0;
  objc_storeStrong(&v27, footer);
  v26 = 0;
  objc_storeStrong(&v26, code);
  v25 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [(AKAppleIDAuthenticationContext *)v25 _setMessage:location[0]];
  [(AKAppleIDAuthenticationContext *)v25 setReason:v28];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%06u", objc_msgSend(v26, "unsignedIntValue")];
  [(AKAppleIDAuthenticationContext *)v25 setGeneratedCode:?];
  MEMORY[0x1E69E5920](v10);
  [(AKAppleIDAuthenticationContext *)v25 setNotificationDisclaimer:v27];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v11 = [v12 localizedStringForKey:@"LOGIN_CODE_ALERT_OK_BUTTON" value:&stru_1F0781300 table:@"Localizable"];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  _message = [(AKAppleIDAuthenticationContext *)v25 _message];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](_message);
  _interpolatedReason = [(AKAppleIDAuthenticationContext *)v25 _interpolatedReason];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](_interpolatedReason);
  v19 = MEMORY[0x1E695E118];
  [v24 setObject:? forKeyedSubscript:?];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v16 resourceURL];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](resourceURL);
  MEMORY[0x1E69E5920](v16);
  v23 = [MEMORY[0x1E696ABE0] extensionItemWithAppleIDAuthenticationContext:v25];
  v17 = MEMORY[0x1E696ACC8];
  v30[0] = v23;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v22 = [v17 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  MEMORY[0x1E69E5920](v18);
  v20 = MEMORY[0x1E69D44F8];
  [v24 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69D44F8]];
  [v24 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69D44D0]];
  [v24 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69D44E8]];
  [v24 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69D4508]];
  [v24 setObject:v22 forKeyedSubscript:*v20];
  [v24 setObject:@"com.apple.AuthKitUI.AKSecondFactorAlert" forKeyedSubscript:*MEMORY[0x1E69D44F0]];
  v21 = MEMORY[0x1E69E5928](v24);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);

  return v21;
}

@end