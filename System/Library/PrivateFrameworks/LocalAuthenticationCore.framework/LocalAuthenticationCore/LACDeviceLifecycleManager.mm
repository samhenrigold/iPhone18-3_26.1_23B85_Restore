@interface LACDeviceLifecycleManager
+ (LACDeviceLifecycleManager)sharedInstance;
- (void)rebootDeviceWithReason:(id)reason forced:(BOOL)forced completion:(id)completion;
@end

@implementation LACDeviceLifecycleManager

+ (LACDeviceLifecycleManager)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[LACDeviceLifecycleManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_8;

  return v3;
}

uint64_t __43__LACDeviceLifecycleManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACDeviceLifecycleManager);
  v1 = sharedInstance_sharedInstance_8;
  sharedInstance_sharedInstance_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)rebootDeviceWithReason:(id)reason forced:(BOOL)forced completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  v9 = LACLogDefault(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = reasonCopy;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Rebooting device with reason: %@", &v18, 0xCu);
  }

  if (forced || !objc_opt_class())
  {
    v15 = reboot3();
    v16 = v15;
    v17 = LACLogDefault(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109120;
      LODWORD(v19) = v16;
      _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Requested hard reboot with result: %d", &v18, 8u);
    }

    if (v16)
    {
      v14 = [LACError errorWithCode:-1000 debugDescription:@"Failed to reboot the device"];
      v10 = v14;
    }

    else
    {
      v14 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E699FC98]) initWithReason:reasonCopy];
    [v10 setSource:1];
    [v10 setRebootType:1];
    mEMORY[0x1E699FCA8] = [MEMORY[0x1E699FCA8] sharedService];
    [mEMORY[0x1E699FCA8] shutdownWithOptions:v10];

    v13 = LACLogDefault(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "Requested soft reboot", &v18, 2u);
    }

    v14 = 0;
  }

  completionCopy[2](completionCopy, v14);
}

@end