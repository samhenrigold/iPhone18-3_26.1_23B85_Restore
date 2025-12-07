@interface CDPWalrusSecurityProxyImpl
- (void)setWebAccessStatusEnabled:(BOOL)enabled completion:(id)completion;
- (void)webAccessStatusWithCompletion:(id)completion;
@end

@implementation CDPWalrusSecurityProxyImpl

- (void)webAccessStatusWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&_accountSettingsLock);
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  cliqueConfiguration = [contextForPrimaryAccount cliqueConfiguration];
  v15 = 0;
  v6 = [MEMORY[0x277CDBD48] fetchAccountWideSettingsDefaultWithForceFetch:0 configuration:cliqueConfiguration error:&v15];
  v7 = v15;
  os_unfair_lock_unlock(&_accountSettingsLock);
  v8 = _CDPLogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPWalrusSecurityProxyImpl *)v7 webAccessStatusWithCompletion:v9];
    }

    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      webAccess = [v6 webAccess];
      enabled = [webAccess enabled];
      *buf = 67109120;
      v17 = enabled;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched web access status (%{BOOL}d)", buf, 8u);
    }

    webAccess2 = [v6 webAccess];
    enabled2 = [webAccess2 enabled];

    if (enabled2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    completionCopy[2](completionCopy, v14, 0);
  }
}

- (void)setWebAccessStatusEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&_accountSettingsLock);
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  cliqueConfiguration = [contextForPrimaryAccount cliqueConfiguration];
  v18 = 0;
  v8 = [MEMORY[0x277CDBD48] fetchAccountWideSettingsDefaultWithForceFetch:0 configuration:cliqueConfiguration error:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = v9;
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CDPWalrusSecurityProxyImpl setWebAccessStatusEnabled:v10 completion:v11];
    }

    os_unfair_lock_unlock(&_accountSettingsLock);
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D36DB0]);
    [v12 setEnabled:enabledCopy];
    [v8 setWebAccess:v12];
    v13 = [objc_alloc(MEMORY[0x277CDBD48]) initWithContextData:cliqueConfiguration];
    v17 = 0;
    v14 = [v13 setAccountSetting:v8 error:&v17];
    v10 = v17;
    v15 = _CDPLogSystem();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = enabledCopy;
        _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Successfully updated web access status (%{BOOL}d).", buf, 8u);
      }

      +[CDPBroadcaster broadcastWebAccessStateChangeNotification];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CDPWalrusSecurityProxyImpl *)enabledCopy setWebAccessStatusEnabled:v10 completion:v16];
      }
    }

    os_unfair_lock_unlock(&_accountSettingsLock);
    completionCopy[2](completionCopy, v10);

    completionCopy = v12;
  }
}

- (void)webAccessStatusWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch web access status with error: %@", &v4, 0xCu);
}

- (void)setWebAccessStatusEnabled:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch existing account settings with error: %@", &v2, 0xCu);
}

- (void)setWebAccessStatusEnabled:(NSObject *)a3 completion:.cold.2(char a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = [a2 description];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_24510B000, a3, OS_LOG_TYPE_ERROR, "Failed to update web access status (%{BOOL}d) with error: %@", v6, 0x12u);
}

@end