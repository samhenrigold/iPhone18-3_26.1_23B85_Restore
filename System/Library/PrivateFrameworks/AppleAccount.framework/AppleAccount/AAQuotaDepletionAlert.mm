@interface AAQuotaDepletionAlert
+ (BOOL)_isDisabledDataclass:(id)dataclass;
- (AAQuotaDepletionAlert)init;
- (BOOL)showIfNecessaryWithHandler:(id)handler;
- (id)_deviceSpecificLocalizedString:(id)string;
- (id)_primaryAccount;
- (id)initForDataclass:(id)dataclass;
- (void)showWithHandler:(id)handler;
@end

@implementation AAQuotaDepletionAlert

- (AAQuotaDepletionAlert)init
{
  v3.receiver = self;
  v3.super_class = AAQuotaDepletionAlert;
  return [(AAQuotaDepletionAlert *)&v3 init];
}

- (id)initForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v9.receiver = self;
  v9.super_class = AAQuotaDepletionAlert;
  v6 = [(AAQuotaDepletionAlert *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataclass, dataclass);
  }

  return v7;
}

+ (BOOL)_isDisabledDataclass:(id)dataclass
{
  v9[2] = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  v4 = *MEMORY[0x1E6959B28];
  v9[0] = *MEMORY[0x1E6959B58];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = v5;
  if (dataclassCopy)
  {
    v7 = [v5 containsObject:dataclassCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_primaryAccount
{
  if (!self->_primaryAccount)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = self->_accountStore;
    self->_accountStore = defaultStore;

    v5 = self->_accountStore;
    if (v5)
    {
      aa_primaryAppleAccount = [(ACAccountStore *)v5 aa_primaryAppleAccount];
      primaryAccount = self->_primaryAccount;
      self->_primaryAccount = aa_primaryAppleAccount;
    }
  }

  v8 = self->_primaryAccount;

  return v8;
}

- (void)showWithHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = [AAQuotaDepletionAlert _isDisabledDataclass:self->_dataclass];
  if (v5)
  {
    v6 = _AALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      dataclass = self->_dataclass;
      *buf = 138412290;
      v35 = dataclass;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Skipping notifying user.", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 3);
    }
  }

  else
  {
    _primaryAccount = [(AAQuotaDepletionAlert *)self _primaryAccount];
    if (_primaryAccount)
    {
      _primaryAccount2 = [(AAQuotaDepletionAlert *)self _primaryAccount];
      v10 = [_primaryAccount2 aa_isManagedAppleID] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_dataclass;
      *buf = 138412546;
      v35 = v13;
      v36 = 1024;
      v37 = v10;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Notify user. Upgrade Available: %d", buf, 0x12u);
    }

    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = v14;
    if (v10)
    {
      v16 = @"QUOTA_ALERT_UPGRADE_BUTTON";
    }

    else
    {
      v16 = @"QUOTA_ALERT_MANAGE_BUTTON";
    }

    v17 = [v14 localizedStringForKey:v16 value:&stru_1F2EF6280 table:@"Localizable"];

    v18 = [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x1E6959AD8]];
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = v19;
    if (v18)
    {
      v21 = [v19 localizedStringForKey:@"QUOTA_ALERT_BACKUP_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];

      v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v23 = [(AAQuotaDepletionAlert *)self _deviceSpecificLocalizedString:@"QUOTA_ALERT_BACKUP_MESSAGE"];
      v24 = [v22 localizedStringForKey:v23 value:&stru_1F2EF6280 table:@"Localizable"];
    }

    else
    {
      v21 = [v19 localizedStringForKey:@"QUOTA_ALERT_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];

      v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v24 = [v22 localizedStringForKey:@"QUOTA_ALERT_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
    }

    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __41__AAQuotaDepletionAlert_showWithHandler___block_invoke;
    v31 = &unk_1E7C9D710;
    v33 = v10;
    v32 = handlerCopy;
    v25 = _Block_copy(&v28);
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v28, v29, v30, v31}];
    v27 = [v26 localizedStringForKey:@"ALERT_CLOSE" value:&stru_1F2EF6280 table:@"Localizable"];
    [AAUserNotification showUserNotificationWithTitle:v21 message:v24 cancelButtonTitle:v27 otherButtonTitle:v17 withCompletionBlock:v25];
  }
}

uint64_t __41__AAQuotaDepletionAlert_showWithHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (*(a1 + 40))
    {
      v5 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/CHANGE_STORAGE_PLAN";
    }

    else
    {
      v5 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP";
    }

    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AAQuotaDepletionAlert_showWithHandler___block_invoke_2;
    block[3] = &unk_1E7C9A868;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, block);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void __41__AAQuotaDepletionAlert_showWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

- (BOOL)showIfNecessaryWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = [AAQuotaDepletionAlert _isDisabledDataclass:self->_dataclass];
  v6 = v5;
  v7 = _AALogSystem(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      dataclass = self->_dataclass;
      v17 = 138412290;
      v18 = dataclass;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Skipping notifying user.", &v17, 0xCu);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v10 = self->_dataclass;
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Notify user.", &v17, 0xCu);
  }

  v7 = CFPreferencesCopyAppValue(@"AANextCastleQuotaAlert", @"com.apple.appleaccount");
  if (v7)
  {
    date = [MEMORY[0x1E695DF00] date];
    v12 = [date compare:v7];

    if (v12 != 1)
    {
      goto LABEL_9;
    }
  }

  date2 = [MEMORY[0x1E695DF00] date];
  v14 = [date2 dateByAddingTimeInterval:86400.0];

  CFPreferencesSetAppValue(@"AANextCastleQuotaAlert", v14, @"com.apple.appleaccount");
  CFPreferencesSynchronize(@"com.apple.appleaccount", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  [(AAQuotaDepletionAlert *)self showWithHandler:handlerCopy];

  v15 = 1;
LABEL_10:

  return v15;
}

- (id)_deviceSpecificLocalizedString:(id)string
{
  stringCopy = string;
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"iPhone";
  }

  uppercaseString = [(__CFString *)v5 uppercaseString];
  v7 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", stringCopy, v7];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_1F2EF6280 table:@"Localizable"];

  return v10;
}

@end