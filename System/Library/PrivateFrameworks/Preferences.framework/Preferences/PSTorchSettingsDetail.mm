@interface PSTorchSettingsDetail
+ (BOOL)isEnabled;
+ (int64_t)torchState;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSTorchSettingsDetail

+ (int64_t)torchState
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  hasTorch = [v2 hasTorch];
  if (hasTorch)
  {
    hasTorch = [v2 isTorchAvailable];
    v4 = hasTorch;
  }

  else
  {
    v4 = -1;
  }

  v5 = _PSLoggingFacility(hasTorch);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "########### Torch state (%d)", v7, 8u);
  }

  return v4;
}

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  if ([v4 isTorchModeSupported:enabledCopy])
  {
    v13 = 0;
    v5 = [v4 lockForConfiguration:&v13];
    unlockForConfiguration = v13;
    v8 = unlockForConfiguration;
    if (v5)
    {
      if (enabledCopy)
      {
        LODWORD(v7) = *MEMORY[0x1E69869A0];
        v12 = unlockForConfiguration;
        [v4 setTorchModeOnWithLevel:&v12 error:v7];
        v9 = v12;

        v8 = v9;
      }

      else
      {
        [v4 setTorchMode:0];
      }

      unlockForConfiguration = [v4 unlockForConfiguration];
    }

    v10 = _PSLoggingFacility(unlockForConfiguration);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"OFF";
      if (enabledCopy)
      {
        v11 = @"ON";
      }

      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "########### Tried to set torch (%@) Error: %@", buf, 0x16u);
    }
  }
}

+ (BOOL)isEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  isTorchAvailable = [v2 isTorchAvailable];
  if (isTorchAvailable)
  {
    isTorchAvailable = [v2 torchMode];
    v4 = isTorchAvailable == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = _PSLoggingFacility(isTorchAvailable);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"OFF";
    if (v4)
    {
      v6 = @"ON";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "########### Torch enabled (%@)", &v8, 0xCu);
  }

  return v4;
}

@end