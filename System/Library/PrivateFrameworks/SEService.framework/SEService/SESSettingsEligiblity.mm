@interface SESSettingsEligiblity
+ (BOOL)isApplicationInstalledOrPlaceholder:(id)placeholder;
+ (BOOL)isContactlessTCCServiceEligible;
+ (BOOL)isSecureElementTCCServiceEligible;
@end

@implementation SESSettingsEligiblity

+ (BOOL)isSecureElementTCCServiceEligible
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced.contactlessCredential.settings"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLForKey:@"shouldShowSecureElementTcc"];
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109376;
      v7[1] = 1;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "SE TCC Pane: Platform eligible %d, Apps eligible: %d", v7, 0xEu);
    }
  }

  else
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_DEBUG, "Unable to initialize user default suite for Settings Eligibility", v7, 2u);
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isContactlessTCCServiceEligible
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced.contactlessCredential.settings"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLForKey:@"shouldShowContactlessTcc"];
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109376;
      v7[1] = 1;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "Contactless TCC Pane: Platform eligible %d, Apps eligible: %d", v7, 0xEu);
    }
  }

  else
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_DEBUG, "Unable to initialize user default suite for Settings Eligibility", v7, 2u);
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isApplicationInstalledOrPlaceholder:(id)placeholder
{
  v14 = *MEMORY[0x1E69E9840];
  placeholderCopy = placeholder;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:placeholderCopy allowPlaceholder:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = placeholderCopy;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_ERROR, "Error %@ encountered when checking if %@ is installed", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4 != 0;
  }

  return v7;
}

@end