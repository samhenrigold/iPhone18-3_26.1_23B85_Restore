@interface DAEASOAuthMigrationActivity
+ (BOOL)profileMigrationDisabled;
+ (BOOL)profileMigrationEnabled;
- (BOOL)_isExchangeBasicAccount:(id)account;
- (id)_migrationDecisionString:(unint64_t)string;
- (id)_serverMigrationStatus;
- (id)_triggerAccountMigration;
- (unint64_t)_migrateExchangeAccountToOAuthDecision:(id)decision disallowedDomains:(id)domains disallowedHosts:(id)hosts;
- (void)_retrieveMigrationStatusFromConfigurationURI:(id)i withCompletion:(id)completion;
- (void)_sendAnalyticsForMigratingAccount:(id)account withStatus:(id)status;
- (void)invalidateActivity;
- (void)scheduleActivity;
@end

@implementation DAEASOAuthMigrationActivity

- (void)scheduleActivity
{
  scheduler = [(DAEASOAuthMigrationActivity *)self scheduler];

  if (!scheduler)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.exchangesync.DAEASOAuthMigrationActivity"];
    [(DAEASOAuthMigrationActivity *)self setScheduler:v4];

    scheduler2 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler2 setRepeats:1];

    LODWORD(scheduler2) = +[DAEASOAuthMigrationActivity profileMigrationEnabled];
    scheduler3 = [(DAEASOAuthMigrationActivity *)self scheduler];
    v7 = scheduler3;
    v8 = scheduler2 == 0;
    if (scheduler2)
    {
      v9 = 33;
    }

    else
    {
      v9 = 9;
    }

    v10 = MEMORY[0x277D07A40];
    if (v8)
    {
      v10 = MEMORY[0x277D07A38];
    }

    if (v8)
    {
      v11 = MEMORY[0x277D07A48];
    }

    else
    {
      v11 = MEMORY[0x277D07A50];
    }

    [scheduler3 setInterval:*v10];

    v12 = *v11;
    scheduler4 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler4 setTolerance:v12];

    scheduler5 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler5 setQualityOfService:v9];

    scheduler6 = [(DAEASOAuthMigrationActivity *)self scheduler];
    _triggerAccountMigration = [(DAEASOAuthMigrationActivity *)self _triggerAccountMigration];
    [scheduler6 scheduleWithBlock:_triggerAccountMigration];
  }
}

- (void)invalidateActivity
{
  scheduler = [(DAEASOAuthMigrationActivity *)self scheduler];

  if (scheduler)
  {
    scheduler2 = [(DAEASOAuthMigrationActivity *)self scheduler];
    [scheduler2 invalidate];

    [(DAEASOAuthMigrationActivity *)self setScheduler:0];
  }
}

- (void)_retrieveMigrationStatusFromConfigurationURI:(id)i withCompletion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke;
  v10[3] = &unk_278EE06F8;
  v11 = iCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = iCopy;
  dispatch_async(v7, v10);
}

void __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAB70];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  v4 = [v2 requestWithURL:v3];

  [v4 _setNonAppInitiated:1];
  v5 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke_2;
  v8[3] = &unk_278EE06D0;
  v9 = *(a1 + 40);
  v7 = [v6 dataTaskWithRequest:v4 completionHandler:v8];
  [v7 resume];
}

void __91__DAEASOAuthMigrationActivity__retrieveMigrationStatusFromConfigurationURI_withCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v6 && !v7)
  {
    v25 = 0;
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v25];
    v10 = v25;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationEnabled-v2"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationEnabled-v2"];
          [v13 isEqualToString:@"YES"];
        }

        v20 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedDomains"];
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();

        if (v21)
        {
          v16 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedDomains"];
        }

        else
        {
          v16 = 0;
        }

        v22 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedHosts"];
        objc_opt_class();
        v23 = objc_opt_isKindOfClass();

        if (v23)
        {
          v15 = [v9 objectForKeyedSubscript:@"iOSExchangeAccountAuthMigrationDisallowedHosts"];
        }

        else
        {
          v15 = 0;
        }

        v17 = DALoggingwithCategory();
        v24 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v17, v24))
        {
          *buf = 138412290;
          v27 = v9;
          _os_log_impl(&dword_247E05000, v17, v24, "DAEASOAuthMigrationActivity: Configuration set to: %@", buf, 0xCu);
        }

        goto LABEL_16;
      }

      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 138412290;
        v27 = v9;
        v19 = "DAEASOAuthMigrationActivity: Invalid configuration data: %@";
        goto LABEL_14;
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 138412290;
        v27 = v10;
        v19 = "DAEASOAuthMigrationActivity: Unable to decode configuration data. Error: %@";
LABEL_14:
        _os_log_impl(&dword_247E05000, v17, v18, v19, buf, 0xCu);
      }
    }

    v15 = 0;
    v16 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v10 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v14))
  {
    *buf = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_247E05000, v10, v14, "DAEASOAuthMigrationActivity: Could not retrieve configuration. Error: %@. Data: %@", buf, 0x16u);
  }

  v15 = 0;
  v16 = 0;
LABEL_17:

  (*(*(a1 + 32) + 16))();
}

- (id)_serverMigrationStatus
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DAEASOAuthMigrationActivity__serverMigrationStatus__block_invoke;
  v7[3] = &unk_278EE0720;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(DAEASOAuthMigrationActivity *)self _retrieveMigrationStatusFromConfigurationURI:@"https://configuration.apple.com/configurations/internetservices/exchangesync/oauth-migration-configuration.plist" withCompletion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

intptr_t __53__DAEASOAuthMigrationActivity__serverMigrationStatus__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithBool:a2];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKeyedSubscript:@"migrationEnabled"];

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"disallowedDomains"];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:@"disallowedHosts"];

  v11 = *(a1 + 32);

  return dispatch_semaphore_signal(v11);
}

+ (BOOL)profileMigrationEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation valueForKey:@"ExchangeAccountEnableMigration"];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  v7 = os_log_type_enabled(v5, v6);
  if (v4)
  {
    if (v7)
    {
      v12 = 0;
      v8 = "profileMigrationEnabled: YES";
      v9 = &v12;
LABEL_6:
      _os_log_impl(&dword_247E05000, v5, v6, v8, v9, 2u);
    }
  }

  else if (v7)
  {
    v11 = 0;
    v8 = "profileMigrationEnabled: NO";
    v9 = &v11;
    goto LABEL_6;
  }

  return v4 != 0;
}

+ (BOOL)profileMigrationDisabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation valueForKey:@"ExchangeAccountDisableMigration"];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  v7 = os_log_type_enabled(v5, v6);
  if (v4)
  {
    if (v7)
    {
      v12 = 0;
      v8 = "profileMigrationDisabled: YES";
      v9 = &v12;
LABEL_6:
      _os_log_impl(&dword_247E05000, v5, v6, v8, v9, 2u);
    }
  }

  else if (v7)
  {
    v11 = 0;
    v8 = "profileMigrationDisabled: NO";
    v9 = &v11;
    goto LABEL_6;
  }

  return v4 != 0;
}

- (BOOL)_isExchangeBasicAccount:(id)account
{
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v19 = 0;
  v4 = [MEMORY[0x277CE8538] credentialForAccount:accountCopy clientID:0 error:&v19];
  v5 = v19;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x277CB8C00]];

  username = [accountCopy username];
  if (!username || (v10 = username, [v4 password], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v8 = 0;
  }

  oauthRefreshToken = [v4 oauthRefreshToken];
  v13 = oauthRefreshToken == 0;

  v14 = v13 & v8;
  v15 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = @"No";
    if (v14)
    {
      v17 = @"Yes";
    }

    *buf = 138412546;
    v21 = accountCopy;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&dword_247E05000, v15, v16, "_isExchangeBasicAccount: Account %@ is a basic exchange account? %@", buf, 0x16u);
  }

  return v14;
}

- (void)_sendAnalyticsForMigratingAccount:(id)account withStatus:(id)status
{
  accountCopy = account;
  statusCopy = status;
  v6 = statusCopy;
  v7 = accountCopy;
  AnalyticsSendEventLazy();
}

id __76__DAEASOAuthMigrationActivity__sendAnalyticsForMigratingAccount_withStatus___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) identifier];
  [v2 setObject:v3 forKeyedSubscript:@"accountIdentifier"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"migrationStatus"];
  if ([*(a1 + 48) _isExchangeBasicAccount:*(a1 + 32)])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v2 setObject:v4 forKeyedSubscript:@"accountIsExchangeBasic"];

  return v2;
}

- (id)_migrationDecisionString:(unint64_t)string
{
  if (string - 1 > 6)
  {
    return @"Not basic account";
  }

  else
  {
    return off_278EE07B8[string - 1];
  }
}

- (unint64_t)_migrateExchangeAccountToOAuthDecision:(id)decision disallowedDomains:(id)domains disallowedHosts:(id)hosts
{
  v80 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  domainsCopy = domains;
  hostsCopy = hosts;
  if (![(DAEASOAuthMigrationActivity *)self _isExchangeBasicAccount:decisionCopy])
  {
    v34 = 0;
    goto LABEL_34;
  }

  selfCopy = self;
  sel = a2;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v65 = domainsCopy;
  v12 = domainsCopy;
  v13 = [v12 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v71;
    v16 = *MEMORY[0x277D03818];
    v64 = hostsCopy;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v71 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v70 + 1) + 8 * i);
        username = [decisionCopy username];
        if ([username hasSuffix:v18])
        {

LABEL_23:
          v35 = DALoggingwithCategory();
          v36 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v35, v36))
          {
            Name = sel_getName(sel);
            *buf = 136315394;
            v76 = Name;
            v77 = 2114;
            v78 = v18;
            _os_log_impl(&dword_247E05000, v35, v36, "In %s: No because it ends with %{public}@ domain (consumer account).", buf, 0x16u);
          }

          v34 = 1;
          hostsCopy = v64;
          domainsCopy = v65;
          goto LABEL_34;
        }

        v20 = [decisionCopy objectForKeyedSubscript:v16];
        v21 = [v20 hasSuffix:v18];

        if (v21)
        {
          goto LABEL_23;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v70 objects:v79 count:16];
      hostsCopy = v64;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v22 = hostsCopy;
  v23 = hostsCopy;
  v24 = [v23 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v67;
    v27 = *MEMORY[0x277D03820];
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v67 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v66 + 1) + 8 * j);
        v30 = [decisionCopy objectForKeyedSubscript:{v27, selfCopy}];
        v31 = [v30 isEqualToString:v29];

        if (v31)
        {
          v38 = DALoggingwithCategory();
          v39 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v38, v39))
          {
            v40 = sel_getName(sel);
            *buf = 136315394;
            v76 = v40;
            v77 = 2114;
            v78 = v29;
            _os_log_impl(&dword_247E05000, v38, v39, "In %s: No because the host is %{public}@ (consumer account).", buf, 0x16u);
          }

          v34 = 2;
          domainsCopy = v65;
          hostsCopy = v22;
          goto LABEL_34;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  managingOwnerIdentifier = [decisionCopy managingOwnerIdentifier];
  if (managingOwnerIdentifier)
  {
    v33 = managingOwnerIdentifier;
    domainsCopy = v65;
    hostsCopy = v22;
LABEL_31:
    v42 = DALoggingwithCategory();
    v43 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = sel_getName(sel);
      *buf = 136315138;
      v76 = v44;
      _os_log_impl(&dword_247E05000, v42, v43, "In %s: No because it is being managed.", buf, 0xCu);
    }

    v34 = 3;
    goto LABEL_34;
  }

  v41 = [decisionCopy objectForKeyedSubscript:*MEMORY[0x277CB8A90]];
  hostsCopy = v22;
  if (v41)
  {
    v33 = v41;
    domainsCopy = v65;
    goto LABEL_31;
  }

  v46 = *MEMORY[0x277D07A58];
  v47 = [decisionCopy objectForKeyedSubscript:*MEMORY[0x277D07A58]];

  domainsCopy = v65;
  if (!v47)
  {
    goto LABEL_41;
  }

  v48 = MEMORY[0x277CBEAA8];
  v49 = [decisionCopy objectForKeyedSubscript:v46];
  [v49 doubleValue];
  v50 = [v48 dateWithTimeIntervalSince1970:?];

  LODWORD(v48) = [objc_opt_class() profileMigrationEnabled];
  [v50 timeIntervalSinceNow];
  if (v48)
  {
    v52 = MEMORY[0x277D07A68];
  }

  else
  {
    v52 = MEMORY[0x277D07A60];
  }

  if (v51 < -*v52)
  {

LABEL_41:
    migrationStatus = [decisionCopy migrationStatus];
    v34 = 7;
    if (migrationStatus != 3)
    {
      v54 = migrationStatus;
      if (migrationStatus != 5)
      {
        v55 = DALoggingwithCategory();
        v56 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v55, v56))
        {
          v57 = sel_getName(sel);
          migrationStatusString = [decisionCopy migrationStatusString];
          *buf = 136315394;
          v76 = v57;
          v77 = 2112;
          v78 = migrationStatusString;
          _os_log_impl(&dword_247E05000, v55, v56, "In %s: No because migration status is %@.", buf, 0x16u);
        }

        if (v54 == 1)
        {
          v34 = 5;
        }

        else
        {
          v34 = 6;
        }
      }
    }

    goto LABEL_34;
  }

  v59 = DALoggingwithCategory();
  v60 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = sel_getName(sel);
    *buf = 136315394;
    v76 = v61;
    v77 = 2112;
    v78 = v50;
    _os_log_impl(&dword_247E05000, v59, v60, "In %s: No because last attempt was very recent: %@).", buf, 0x16u);
  }

  v34 = 4;
LABEL_34:

  return v34;
}

- (id)_triggerAccountMigration
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke;
  v4[3] = &unk_278EE0798;
  v4[4] = self;
  v2 = MEMORY[0x24C1BC830](v4, a2);

  return v2;
}

void __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_247E05000, v4, v5, "DAEASOAuthMigrationActivity: Starting.", buf, 2u);
  }

  if (![objc_opt_class() profileMigrationDisabled])
  {
    type = v5;
    v7 = [*(a1 + 32) _serverMigrationStatus];
    v8 = [v7 objectForKeyedSubscript:@"migrationEnabled"];
    v9 = [v8 BOOLValue];

    v10 = [v7 objectForKeyedSubscript:@"disallowedDomains"];
    v11 = [v7 objectForKeyedSubscript:@"disallowedHosts"];
    v12 = [*(a1 + 32) scheduler];
    if ([v12 shouldDefer])
    {
    }

    else
    {
      v13 = [objc_opt_class() profileMigrationEnabled] | v9;

      if (v13)
      {
        v14 = objc_opt_new();
        v15 = [v14 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
        v16 = v15;
        v17 = type;
        if (v15)
        {
          v34 = v7;
          v35 = v3;
          v32 = v15;
          v33 = v14;
          [v14 accountsWithAccountType:v15];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          obj = v42 = 0u;
          v18 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v40;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v40 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v39 + 1) + 8 * i);
                v23 = [*(a1 + 32) _migrateExchangeAccountToOAuthDecision:v22 disallowedDomains:v10 disallowedHosts:v11];
                if (v23 == 7)
                {
                  v45 = @"DAEASRenewCredentialsShouldTriggerMigrationKey";
                  v46 = MEMORY[0x277CBEC38];
                  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
                  v25 = DALoggingwithCategory();
                  if (os_log_type_enabled(v25, v17))
                  {
                    *buf = 138412290;
                    v44 = v22;
                    _os_log_impl(&dword_247E05000, v25, v17, "DAEASOAuthMigrationActivity: Calling renewCredentialsForAccount for account: %@.", buf, 0xCu);
                  }

                  v26 = sharedDAAccountStore();
                  v38[0] = MEMORY[0x277D85DD0];
                  v38[1] = 3221225472;
                  v38[2] = __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke_95;
                  v38[3] = &unk_278EE0770;
                  v27 = *(a1 + 32);
                  v38[4] = v22;
                  v38[5] = v27;
                  [v26 renewCredentialsForAccount:v22 options:v24 completion:v38];
                }

                else
                {
                  v24 = [*(a1 + 32) _migrationDecisionString:v23];
                  v28 = *(a1 + 32);
                  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skipped: %@", v24];
                  [v28 _sendAnalyticsForMigratingAccount:v22 withStatus:v29];

                  v17 = type;
                }
              }

              v19 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v19);
          }

          v7 = v34;
          v3 = v35;
          v16 = v32;
          v14 = v33;
        }

        v30 = DALoggingwithCategory();
        if (os_log_type_enabled(v30, v17))
        {
          *buf = 0;
          _os_log_impl(&dword_247E05000, v30, v17, "DAEASOAuthMigrationActivity: Finished.", buf, 2u);
        }

        v3[2](v3, 1);
        goto LABEL_30;
      }
    }

    v31 = DALoggingwithCategory();
    if (os_log_type_enabled(v31, type))
    {
      *buf = 0;
      _os_log_impl(&dword_247E05000, v31, type, "DAEASOAuthMigrationActivity: Deferred.", buf, 2u);
    }

    v3[2](v3, 2);
LABEL_30:

    goto LABEL_31;
  }

  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_247E05000, v6, v5, "DAEASOAuthMigrationActivity: Profile says we should not proceed, exiting.", buf, 2u);
  }

  v3[2](v3, 1);
LABEL_31:
}

void __55__DAEASOAuthMigrationActivity__triggerAccountMigration__block_invoke_95(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reload];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_247E05000, v2, v3, "DAEASOAuthMigrationActivity: Finished calling renewCredentialsForAccount for account: %@.", &v9, 0xCu);
  }

  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = [v5 migrationStatusString];
  [v6 _sendAnalyticsForMigratingAccount:v5 withStatus:v8];
}

@end