@interface LKLogoutSupport
- (BOOL)_canLogoutToLoginSession;
- (BOOL)isCurrentUserAnonymous;
- (LKLogoutSupport)init;
- (id)logoutWarningMessage;
- (void)_syncPreferencesIfNeeded;
- (void)logoutToLoginSessionWithCompletionHandler:(id)handler;
- (void)logoutToLoginUserWithCompletionHandler:(id)handler;
- (void)logoutToLoginWindowWithCompletionHandler:(id)handler;
@end

@implementation LKLogoutSupport

- (LKLogoutSupport)init
{
  v6.receiver = self;
  v6.super_class = LKLogoutSupport;
  v2 = [(LKLogoutSupport *)&v6 init];
  v4 = v2;
  if (v2)
  {
    LKRegisterLoginKitLogging(v2, v3);
  }

  return v4;
}

- (BOOL)_canLogoutToLoginSession
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  loginUser = [mEMORY[0x277D77BF8] loginUser];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  userAuxiliaryString = [loginUser userAuxiliaryString];
  v7 = [userAuxiliaryString isEqualToString:localeIdentifier];

  if ((v7 & 1) == 0)
  {
    v8 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      userAuxiliaryString2 = [loginUser userAuxiliaryString];
      v18 = 138412546;
      v19 = localeIdentifier;
      v20 = 2112;
      v21 = userAuxiliaryString2;
      _os_log_impl(&dword_25618F000, v9, OS_LOG_TYPE_DEFAULT, "User locale (%@) is different from login user locale (%@)", &v18, 0x16u);
    }
  }

  CanSupportLoginUI = _AXSCurrentAccessibilitySettingsCanSupportLoginUI();
  if (!CanSupportLoginUI)
  {
    v12 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_25618F000, v12, OS_LOG_TYPE_DEFAULT, "Accessibility settings are on for user", &v18, 2u);
    }
  }

  mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8]2 currentUser];
  isAuditor = [currentUser isAuditor];

  if (v7)
  {
    v16 = (CanSupportLoginUI != 0) & (isAuditor ^ 1);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)logoutToLoginSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "Switch to the login session", v6, 2u);
  }

  kdebug_trace();
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  [mEMORY[0x277D77BF8] logoutToLoginSessionWithCompletionHandler:handlerCopy];
}

- (void)logoutToLoginUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "Switch to the login user", v6, 2u);
  }

  kdebug_trace();
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  [mEMORY[0x277D77BF8] switchToLoginUserWithCompletionHandler:handlerCopy];
}

- (void)_syncPreferencesIfNeeded
{
  if (_os_feature_enabled_impl())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke;
    block[3] = &unk_2798264A0;
    block[4] = self;
    if (_syncPreferencesIfNeeded_onceToken != -1)
    {
      dispatch_once(&_syncPreferencesIfNeeded_onceToken, block);
    }
  }
}

void __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 currentUser];

  if (([v3 isTransientUser] & 1) == 0 && (objc_msgSend(v3, "isAuditor") & 1) == 0)
  {
    v21 = a1;
    v4 = +[LKUniversalDiskStorage sharedStorage];
    v22 = [v4 retrieveValueForKey:@"com.apple.idms.config.ApplicationPreferences"];

    v5 = +[LKUniversalDiskStorage sharedStorage];
    v30[0] = @"com.apple.idms.config.ApplicationPreferences";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [v5 clearKeys:v6];

    v7 = objc_opt_new();
    if (!_AXSCurrentAccessibilitySettingsCanSupportLoginUI())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = [&unk_28683CEA0 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        v11 = *MEMORY[0x277CBF040];
        v12 = *MEMORY[0x277CBF030];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(&unk_28683CEA0);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = CFPreferencesCopyMultiple(0, v14, v11, v12);
            [v7 setObject:v15 forKeyedSubscript:v14];
          }

          v9 = [&unk_28683CEA0 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v9);
      }
    }

    if (([v7 isEqualToDictionary:v22] & 1) == 0 && (objc_msgSend(v7, "count") || objc_msgSend(v22, "count")))
    {
      kdebug_trace();
      v17 = [MEMORY[0x277D77C20] taskWithName:@"Upload preferences to idMS" reason:@"Upload preferences to idMS"];
      [*(v21 + 32) setSyncTask:v17];

      v18 = [*(v21 + 32) syncTask];
      [v18 begin];

      v19 = objc_alloc_init(MEMORY[0x277CF0178]);
      v20 = [v3 alternateDSID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke_12;
      v23[3] = &unk_279826710;
      v23[4] = *(v21 + 32);
      [v19 setConfigurationInfo:v7 forIdentifier:@"com.apple.idms.config.ApplicationPreferences" forAltDSID:v20 completion:v23];
    }

    else
    {
      v16 = LKLogDefault;
      if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25618F000, v16, OS_LOG_TYPE_DEFAULT, "idMS has the latest preferences already. No need to sync anything.", buf, 2u);
      }
    }
  }
}

void __43__LKLogoutSupport__syncPreferencesIfNeeded__block_invoke_12(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_25618F000, v6, OS_LOG_TYPE_DEFAULT, "Wrote preferences data to IdMS, success = %d, error = %{public}@", v8, 0x12u);
  }

  v7 = [*(a1 + 32) syncTask];
  [v7 end];

  [*(a1 + 32) setSyncTask:0];
  kdebug_trace();
}

- (void)logoutToLoginWindowWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(LKLogoutSupport *)self _syncPreferencesIfNeeded];
  if ([(LKLogoutSupport *)self _canLogoutToLoginSession])
  {
    [(LKLogoutSupport *)self logoutToLoginSessionWithCompletionHandler:handlerCopy];
  }

  else
  {
    [(LKLogoutSupport *)self logoutToLoginUserWithCompletionHandler:handlerCopy];
  }
}

- (id)logoutWarningMessage
{
  if ([(LKLogoutSupport *)self isCurrentUserAnonymous])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"Data will not be saved." value:&stru_286839188 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCurrentUserAnonymous
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];

  LOBYTE(mEMORY[0x277D77BF8]) = [currentUser isTransientUser];
  return mEMORY[0x277D77BF8];
}

@end