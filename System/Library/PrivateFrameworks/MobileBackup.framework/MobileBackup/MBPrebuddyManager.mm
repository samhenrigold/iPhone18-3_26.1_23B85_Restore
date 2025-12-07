@interface MBPrebuddyManager
+ (BOOL)hasPrebuddyFollowUp;
+ (NSString)backupToCloudImageName;
+ (NSString)twoDeviceImageName;
+ (id)baseFollowupItem;
+ (id)sharedManager;
- (BOOL)beginPrebuddyBackupFromManualSignal:(BOOL)signal error:(id *)error;
- (BOOL)isPrebuddyMode;
- (MBPrebuddyManager)init;
- (id)dateOfLastBackup;
- (void)extendPrebuddy:(id)prebuddy completion:(id)completion;
- (void)followupAction:(id)action;
- (void)prebuddyBackupDeleted:(id)deleted;
- (void)shortenPrebuddyExpiration;
- (void)signalPrebuddy:(id)prebuddy;
@end

@implementation MBPrebuddyManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MBPrebuddyManager sharedManager];
  }

  v3 = _sharedManager;

  return v3;
}

uint64_t __34__MBPrebuddyManager_sharedManager__block_invoke()
{
  _sharedManager = objc_alloc_init(MBPrebuddyManager);

  return MEMORY[0x1EEE66BB8]();
}

- (MBPrebuddyManager)init
{
  v7.receiver = self;
  v7.super_class = MBPrebuddyManager;
  v2 = [(MBPrebuddyManager *)&v7 init];
  if (v2)
  {
    v3 = [MBXPCClient alloc];
    v4 = [(MBXPCClient *)v3 initWithDelegate:v2 eventQueue:MEMORY[0x1E69E96A0]];
    managerClient = v2->_managerClient;
    v2->_managerClient = v4;
  }

  return v2;
}

- (void)signalPrebuddy:(id)prebuddy
{
  v8[1] = *MEMORY[0x1E69E9840];
  prebuddyCopy = prebuddy;
  v5 = prebuddyCopy;
  if (prebuddyCopy)
  {
    v8[0] = prebuddyCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(MBXPCClient *)self->_managerClient _sendRequest:@"kMBMessageStartPrebuddySignal" arguments:v6 error:0];
}

- (void)extendPrebuddy:(id)prebuddy completion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MBPrebuddyManager_extendPrebuddy_completion___block_invoke;
  block[3] = &unk_1E8684730;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);
}

uint64_t __47__MBPrebuddyManager_extendPrebuddy_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, MEMORY[0x1E695E0F8]);
  }

  return result;
}

- (void)prebuddyBackupDeleted:(id)deleted
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MBManager);
  v10 = 0;
  v5 = [(MBManager *)v4 restorePreviousSettingsEnabledForMegaBackup:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    v8 = MBGetDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to restore previous settings enabled for mega backup: %@", buf, 0xCu);
      _MBLog(@"Df", "Failed to restore previous settings enabled for mega backup: %@", v7);
    }
  }

  v9 = [(MBXPCClient *)self->_managerClient _sendRequest:@"kMBMessagePrebuddyBackupDeleted" arguments:0 error:0];
}

- (BOOL)beginPrebuddyBackupFromManualSignal:(BOOL)signal error:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  managerClient = self->_managerClient;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:signal];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [(MBXPCClient *)managerClient _sendRequest:@"kMBMessageStartPrebuddyBackup" arguments:v7 error:error];

  LOBYTE(error) = [v8 BOOLValue];
  return error;
}

+ (NSString)twoDeviceImageName
{
  v2 = MBDeviceClass();
  lowercaseString = [v2 lowercaseString];

  v4 = MBHomeButtonType();
  integerValue = [v4 integerValue];

  v6 = [lowercaseString isEqualToString:@"ipad"];
  v7 = @"iPad_home";
  v8 = @"iPhone_home";
  if (integerValue == 2)
  {
    v7 = @"iPad";
    v8 = @"iPhone";
  }

  if (v6)
  {
    p_isa = &v7->isa;
  }

  else
  {
    p_isa = &v8->isa;
  }

  return p_isa;
}

+ (NSString)backupToCloudImageName
{
  v2 = MBDeviceClass();
  lowercaseString = [v2 lowercaseString];

  v4 = MBHomeButtonType();
  integerValue = [v4 integerValue];

  v6 = [lowercaseString isEqualToString:@"ipad"];
  v7 = @"cloud-arrow-up-iPad-2";
  v8 = @"cloud-arrow-up-iphone-2";
  if (integerValue == 2)
  {
    v7 = @"cloud-arrow-up-iPad";
    v8 = @"cloud-arrow-up-iphone-1";
  }

  if (v6)
  {
    p_isa = &v7->isa;
  }

  else
  {
    p_isa = &v8->isa;
  }

  return p_isa;
}

+ (id)baseFollowupItem
{
  v3 = objc_alloc_init(MEMORY[0x1E6997AD0]);
  [v3 setUniqueIdentifier:@"com.apple.backupd.prebuddy"];
  [v3 setGroupIdentifier:*MEMORY[0x1E6997AA0]];
  [v3 setTargetBundleIdentifier:*MEMORY[0x1E6997A88]];
  [v3 setExtensionIdentifier:@"com.apple.MobileBackup.framework.MBPrebuddyFollowUpExtension"];
  [v3 setRepresentingBundlePath:@"/System/Library/PrivateFrameworks/MobileBackup.framework/PlugIns/MBPrebuddyFollowUpExtension.appex"];
  twoDeviceImageName = [self twoDeviceImageName];
  [v3 setBundleIconName:twoDeviceImageName];

  [v3 setDisplayStyle:16];

  return v3;
}

+ (BOOL)hasPrebuddyFollowUp
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6997AC8]) initWithClientIdentifier:@"com.apple.backupd"];
  v21 = 0;
  v3 = [v2 pendingFollowUpItems:&v21];
  v4 = v21;
  v5 = v4;
  if (v4)
  {
    v6 = MBGetDefaultLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_ERROR, "Unable to fetch pending follow ups: %@", buf, 0xCu);
      _MBLog(@"E ", "Unable to fetch pending follow ups: %@", v5);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        uniqueIdentifier = [v12 uniqueIdentifier];
        if ([uniqueIdentifier isEqualToString:@"com.apple.backupd.prebuddy"])
        {
          isExpired = [v12 isExpired];

          if ((isExpired & 1) == 0)
          {
            v15 = 1;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (void)followupAction:(id)action
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6997AC0];
  actionCopy = action;
  v5 = MBLocalizedStringFromTable(@"MB_PREBUDDY_START_TITLE", @"MobileBackup");
  v6 = [v3 actionWithLabel:v5 url:0];

  v8 = @"manualSignal";
  v9[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v6 setUserInfo:v7];

  actionCopy[2](actionCopy, v6);
}

- (id)dateOfLastBackup
{
  managerClient = [(MBPrebuddyManager *)self managerClient];
  dateOfLastBackup = [managerClient dateOfLastBackup];

  return dateOfLastBackup;
}

- (BOOL)isPrebuddyMode
{
  v2 = [(MBXPCClient *)self->_managerClient _sendRequest:@"kMBMessageIsPrebuddyMode" arguments:MEMORY[0x1E695E0F0] error:0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)shortenPrebuddyExpiration
{
  v17 = *MEMORY[0x1E69E9840];
  isPrebuddyMode = [(MBPrebuddyManager *)self isPrebuddyMode];
  if (isPrebuddyMode)
  {
    date = [MEMORY[0x1E695DF00] date];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [currentCalendar dateByAddingUnit:64 value:5 toDate:date options:0];

    managerClient = self->_managerClient;
    v12 = 0;
    v8 = [(MBXPCClient *)managerClient requestMegaBackupExpirationDate:v6 error:&v12];
    v9 = v12;
    v10 = MBGetDefaultLog(v9);
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v6;
        _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_DEFAULT, "Successfully shortened prebuddy expiration to %{public}@", buf, 0xCu);
        _MBLog(@"Df", "Successfully shortened prebuddy expiration to %{public}@", v6);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_ERROR, "Unable to shorten prebuddy expiration to %{public}@. Error: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Unable to shorten prebuddy expiration to %{public}@. Error: %{public}@", v6, v9);
    }
  }

  else
  {
    date = MBGetDefaultLog(isPrebuddyMode);
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, date, OS_LOG_TYPE_DEFAULT, "Not in Prebuddy mode, so nothing to shorten.", buf, 2u);
      _MBLog(@"Df", "Not in Prebuddy mode, so nothing to shorten.");
    }
  }
}

@end