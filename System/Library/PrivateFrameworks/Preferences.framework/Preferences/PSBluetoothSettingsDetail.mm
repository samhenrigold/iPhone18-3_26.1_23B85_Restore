@interface PSBluetoothSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSBluetoothSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x1E69E9840];
  v4 = _PSLoggingFacility(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[PSBluetoothSettingsDetail setEnabled:]";
    v8 = 1024;
    v9 = enabledCopy;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v6, 0x12u);
  }

  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  [mEMORY[0x1E698F468] setEnabled:enabledCopy];
}

+ (BOOL)isEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  available = [mEMORY[0x1E698F468] available];

  v5 = _PSLoggingFacility(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (available)
  {
    if (v6)
    {
      v16 = 136315138;
      v17 = "+[PSBluetoothSettingsDetail isEnabled]";
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "######## %s - BT is already available", &v16, 0xCu);
    }

    mEMORY[0x1E698F468]2 = [MEMORY[0x1E698F468] sharedInstance];
    enabled = [mEMORY[0x1E698F468]2 enabled];
  }

  else
  {
    if (v6)
    {
      v16 = 136315138;
      v17 = "+[PSBluetoothSettingsDetail isEnabled]";
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "######## %s - BT not available, checking SCDynamicStore", &v16, 0xCu);
    }

    v9 = SCDynamicStoreCreate(0, @"com.apple.settings.bluetooth", 0, 0);
    if (!v9)
    {
      enabled = 0;
      goto LABEL_16;
    }

    v10 = v9;
    mEMORY[0x1E698F468]2 = SCDynamicStoreCopyValue(v9, @"com.apple.MobileBluetooth");
    v11 = _PSLoggingFacility(mEMORY[0x1E698F468]2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "+[PSBluetoothSettingsDetail isEnabled]";
      v18 = 2112;
      v19 = mEMORY[0x1E698F468]2;
      _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_DEFAULT, "######## %s - SCDynamicStore shows: %@", &v16, 0x16u);
    }

    v12 = [mEMORY[0x1E698F468]2 objectForKey:@"Powered"];
    v13 = v12;
    if (v12)
    {
      enabled = [v12 BOOLValue];
    }

    else
    {
      enabled = 0;
    }

    CFRelease(v10);
  }

LABEL_16:
  v14 = _PSLoggingFacility(v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "+[PSBluetoothSettingsDetail isEnabled]";
    v18 = 1024;
    LODWORD(v19) = enabled;
    _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v16, 0x12u);
  }

  return enabled;
}

@end