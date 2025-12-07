@interface IMDAccountController
+ (IMDAccountController)sharedInstance;
- (BOOL)_isAccountActive:(id)active forService:(id)service;
- (BOOL)_isOperationalForAccount:(id)account;
- (BOOL)accountAssociatedWithHandle:(id)handle;
- (BOOL)activeAccountsAreEligibleForFilterUnknownSendersByDefault;
- (BOOL)activeAccountsAreEligibleForHawking;
- (BOOL)hasActivePhoneAccount;
- (BOOL)isAccountActive:(id)active;
- (BOOL)receiverIsCandidateForHawking:(id)hawking;
- (BOOL)receiverIsCandidateForJunk:(id)junk forAccount:(id)account;
- (IMDAccountController)init;
- (NSArray)activeAccounts;
- (NSArray)activeSessions;
- (NSArray)connectedAccounts;
- (NSArray)connectingAccounts;
- (id)_operationalAccounts;
- (id)accountForHandle:(id)handle;
- (id)accountForIDSAccountUniqueID:(id)d;
- (id)accountsForLoginID:(id)d onService:(id)service;
- (id)accountsForService:(id)service;
- (id)activeAccountsForService:(id)service;
- (id)activeAccountsWithServiceCapability:(id)capability;
- (id)activeAliases;
- (id)anySessionForServiceName:(id)name;
- (id)connectedAccountsForService:(id)service;
- (id)connectingAccountsForService:(id)service;
- (id)sessionForAccount:(id)account;
- (id)sessionForReplicationSourceServiceName:(id)name replicatingAccount:(id)account;
- (void)_rebuildOperationalAccountsCache;
- (void)_resetAccountReplicationSessions;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)activateAccount:(id)account;
- (void)activateAccounts:(id)accounts;
- (void)addAccount:(id)account;
- (void)deactivateAccount:(id)account;
- (void)deactivateAccount:(id)account force:(BOOL)force;
- (void)deactivateAccounts:(id)accounts force:(BOOL)force;
- (void)dealloc;
- (void)deferredSave;
- (void)load;
- (void)removeAccount:(id)account;
- (void)save;
- (void)setNetworkDataAvailable:(BOOL)available;
@end

@implementation IMDAccountController

+ (IMDAccountController)sharedInstance
{
  if (qword_2814210F0 != -1)
  {
    sub_22B7CF5EC();
  }

  v3 = qword_281420F58;

  return v3;
}

- (NSArray)activeAccounts
{
  accounts = [(IMDAccountController *)self accounts];
  v3 = [accounts __imArrayByFilteringWithBlock:&unk_283F192A8];

  return v3;
}

- (IMDAccountController)init
{
  v5.receiver = self;
  v5.super_class = IMDAccountController;
  v2 = [(IMDAccountController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__daemonWillShutdown_ name:@"__kIMDaemonWillShutdownNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_accounts;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v8 idsAccount];
          [idsAccount removeDelegate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = IMDAccountController;
  [(IMDAccountController *)&v10 dealloc];
}

- (void)load
{
  v109 = *MEMORY[0x277D85DE8];
  self->_isLoading = 1;
  activeAccounts = self->_activeAccounts;
  self->_isFirstLoad = activeAccounts == 0;
  if (!activeAccounts)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = self->_activeAccounts;
    self->_activeAccounts = Mutable;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDServiceController sharedController];
      allServices = [v7 allServices];
      v9 = [allServices arrayByApplyingSelector:sel_internalName];
      v10 = v9;
      v11 = @"NO";
      if (self->_isFirstLoad)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      selfCopy = v9;
      v107 = 2112;
      v108 = v11;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Loading services: %@ (First load: %@)", buf, 0x16u);
    }
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v12 = +[IMDServiceController sharedController];
  obj = [v12 allServices];

  v79 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v79)
  {
    v78 = *v98;
    v74 = *MEMORY[0x277D193D0];
    v73 = *MEMORY[0x277D19018];
    v75 = *MEMORY[0x277D19418];
    v76 = *MEMORY[0x277D193E0];
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v98 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v84 = *(*(&v97 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v84;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Loading service: %@", buf, 0xCu);
          }
        }

        if ([(IMDAccountController *)v84 isDiscontinued])
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = self;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "service: %@ has been discontinued. Loading default disabled account", buf, 0xCu);
            }
          }

          createDiscontinuedAccount = [(IMDAccountController *)v84 createDiscontinuedAccount];
          [(IMDAccountController *)self addAccount:createDiscontinuedAccount];
          goto LABEL_123;
        }

        isIDSBased = [(IMDAccountController *)v84 isIDSBased];
        createDiscontinuedAccount = [(IMDAccountController *)v84 serviceDefaults];
        if (isIDSBased)
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = v84;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, " Not loading accounts from defaults, appears to be IDS Based: %@", buf, 0xCu);
            }
          }

          accountsLoadedFromIdentityServices = [(IMDAccountController *)v84 accountsLoadedFromIdentityServices];
          if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = accountsLoadedFromIdentityServices;
              _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " Found accounts: %@", buf, 0xCu);
            }
          }

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          stringGUID = accountsLoadedFromIdentityServices;
          v20 = [(IMDAccountController *)stringGUID countByEnumeratingWithState:&v89 objects:v102 count:16];
          if (v20)
          {
            v21 = *v90;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v90 != v21)
                {
                  objc_enumerationMutation(stringGUID);
                }

                v23 = *(*(&v89 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    selfCopy = v23;
                    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, " Loading: %@", buf, 0xCu);
                  }
                }

                [(IMDAccountController *)v23 setLoading:1];
                [(IMDAccountController *)self addAccount:v23];
                [(IMDAccountController *)v23 setLoading:0];
                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, " Done", buf, 2u);
                  }
                }
              }

              v20 = [(IMDAccountController *)stringGUID countByEnumeratingWithState:&v89 objects:v102 count:16];
            }

            while (v20);
          }

          activeAccountsFromIdentityServices = [(IMDAccountController *)v84 activeAccountsFromIdentityServices];
          if ([activeAccountsFromIdentityServices count])
          {
            [(IMDAccountController *)self activateAccounts:activeAccountsFromIdentityServices];
          }

          v83 = 0;
        }

        else
        {
          v83 = [createDiscontinuedAccount objectForKey:v74];

          v27 = [(IMDAccountController *)self accountsForService:v84];
          v28 = [v27 count];

          requiresSingleAccount = [(IMDAccountController *)v84 requiresSingleAccount];
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          allKeys = [v83 allKeys];
          v31 = [allKeys countByEnumeratingWithState:&v93 objects:v103 count:16];
          if (v31)
          {
            v32 = *v94;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v94 != v32)
                {
                  objc_enumerationMutation(allKeys);
                }

                v34 = *(*(&v93 + 1) + 8 * k);
                v35 = [(IMDAccountController *)self accountForAccountID:v34];
                v36 = v35 != 0;

                if (!(v36 | (v28 > 0) & requiresSingleAccount))
                {
                  if (IMOSLoggingEnabled())
                  {
                    v37 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      selfCopy = v34;
                      _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "   Creating account with ID: %@", buf, 0xCu);
                    }
                  }

                  v38 = [v83 objectForKey:v34];
                  if (![v38 count])
                  {
                    defaultAccountSettings = [(IMDAccountController *)v84 defaultAccountSettings];

                    v38 = defaultAccountSettings;
                  }

                  v40 = [[IMDAccount alloc] initWithAccountID:v34 defaults:v38 service:v84];
                  [(IMDAccount *)v40 setLoading:1];
                  [(IMDAccountController *)self addAccount:v40];
                  [(IMDAccount *)v40 setLoading:0];

                  ++v28;
                }
              }

              v31 = [allKeys countByEnumeratingWithState:&v93 objects:v103 count:16];
            }

            while (v31);
          }

          if ([v83 count])
          {
            goto LABEL_81;
          }

          if (v28 > 0)
          {
            goto LABEL_81;
          }

          serviceProperties = [(IMDAccountController *)v84 serviceProperties];
          v42 = [serviceProperties objectForKey:v73];
          v43 = [v42 intValue] == 0;

          if (v43)
          {
            goto LABEL_81;
          }

          stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          if (IMOSLoggingEnabled())
          {
            v44 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = stringGUID;
              _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "   Creating persistent session with ID: %@", buf, 0xCu);
            }
          }

          activeAccountsFromIdentityServices = [(IMDAccountController *)v84 defaultAccountSettings];
          v45 = [[IMDAccount alloc] initWithAccountID:stringGUID defaults:activeAccountsFromIdentityServices service:v84];
          [(IMDAccountController *)self addAccount:v45];
          if ([(IMDAccountController *)v84 shouldCreateActiveAccounts])
          {
            if (IMOSLoggingEnabled())
            {
              v46 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                selfCopy = stringGUID;
                _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "  Service wants new accounts active, setting active: %@", buf, 0xCu);
              }
            }

            [(IMDAccountController *)self activateAccount:stringGUID];
          }
        }

LABEL_81:
        v47 = [createDiscontinuedAccount objectForKey:v76];
        v80 = [createDiscontinuedAccount objectForKey:v75];
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v47;
            _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "  Setting active accounts: %@", buf, 0xCu);
          }
        }

        if (v47)
        {
          [(IMDAccountController *)self activateAccounts:v47];
        }

        if (((-[IMDAccountController disallowDeactivation](v84, "disallowDeactivation") & 1) != 0 || -[IMDAccountController shouldForceAccountsActive](v84, "shouldForceAccountsActive")) && [v83 count])
        {
          if (IMOSLoggingEnabled())
          {
            v49 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              allKeys2 = [v83 allKeys];
              *buf = 138412290;
              selfCopy = allKeys2;
              _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "  Service wants accounts always active, setting active: %@", buf, 0xCu);
            }
          }

          allKeys3 = [v83 allKeys];
          [(IMDAccountController *)self activateAccounts:allKeys3];
        }

        if (v80)
        {
          if (IMOSLoggingEnabled())
          {
            v52 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = v80;
              _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Logging in previously logged in accounts: %@", buf, 0xCu);
            }
          }

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v53 = v80;
          v54 = [(IMDAccountController *)v53 countByEnumeratingWithState:&v85 objects:v101 count:16];
          if (v54)
          {
            v55 = *v86;
            do
            {
              for (m = 0; m != v54; ++m)
              {
                if (*v86 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = *(*(&v85 + 1) + 8 * m);
                v58 = [(IMDAccountController *)self accountForAccountID:v57];
                v59 = IMOSLoggingEnabled();
                if (v58)
                {
                  if (v59)
                  {
                    v60 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      selfCopy = v58;
                      _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "  * Logging in previously logged in account: %@", buf, 0xCu);
                    }
                  }

                  [(IMDAccountController *)v58 createSessionIfNecessary];
                  session = [(IMDAccountController *)v58 session];
                  [session login];
                }

                else if (v59)
                {
                  v62 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    selfCopy = v57;
                    _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "  * No account found for account ID: %@", buf, 0xCu);
                  }
                }
              }

              v54 = [(IMDAccountController *)v53 countByEnumeratingWithState:&v85 objects:v101 count:16];
            }

            while (v54);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v63 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v84;
            _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Done loading service: %@", buf, 0xCu);
          }
        }

LABEL_123:
      }

      v79 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
    }

    while (v79);
  }

  v64 = +[IMDServiceController sharedController];
  v65 = [v64 serviceWithName:*MEMORY[0x277D1A620]];

  if (v65)
  {
    registration5 = [(IMDAccountController *)self accountsForService:v65];
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = v65;
      v107 = 2112;
      v108 = registration5;
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "iMessage service found: %@    accounts: %@", buf, 0x16u);
    }

    if ([registration5 count])
    {
      registration2 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(&registration2->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, &registration2->super, OS_LOG_TYPE_DEFAULT, "   We have iMessage acounts, good to go", buf, 2u);
      }

      goto LABEL_142;
    }

    registration2 = [[IMDAccount alloc] initWithAccountID:@"PlaceholderAccount" defaults:0 service:v65];
    registration3 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = registration2;
      _os_log_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEFAULT, "   Empty iMessage accounts, created one: %@", buf, 0xCu);
    }

    if (registration2)
    {
      [(IMDAccountController *)self addAccount:registration2];
      registration4 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v71 = "   Added, and moving along";
LABEL_140:
        _os_log_impl(&dword_22B4CC000, registration4, OS_LOG_TYPE_DEFAULT, v71, buf, 2u);
      }
    }

    else
    {
      registration4 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v71 = "   No account created";
        goto LABEL_140;
      }
    }

LABEL_142:
    goto LABEL_143;
  }

  registration5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, registration5, OS_LOG_TYPE_DEFAULT, "No iMessage service found", buf, 2u);
  }

LABEL_143:

  if (IMOSLoggingEnabled())
  {
    v72 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "Done loading all services", buf, 2u);
    }
  }

  *&self->_isLoading = 0;
  [(IMDAccountController *)self _checkPowerAssertion];
}

- (void)deferredSave
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];

  [(IMDAccountController *)self performSelector:sel_save withObject:0 afterDelay:10.0];
}

- (void)save
{
  v14 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  if (!self->_isLoading)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = +[IMDServiceController sharedController];
    allServices = [v3 allServices];

    v5 = [allServices countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(allServices);
          }

          [*(*(&v9 + 1) + 8 * v8++) saveSettings];
        }

        while (v6 != v8);
        v6 = [allServices countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)activateAccount:(id)account
{
  if (account)
  {
    v4 = IMSingleObjectArray();
    [(IMDAccountController *)self activateAccounts:v4];
  }
}

- (void)activateAccounts:(id)accounts
{
  v66 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  if (self->_isFirstLoad)
  {
    v47 = 0;
  }

  else
  {
    v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = accountsCopy;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Activating accounts: %@", buf, 0xCu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = accountsCopy;
  v6 = [(IMDAccountController *)obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v6)
  {
    v49 = *v57;
    *&v7 = 138412546;
    v46 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = [(IMDAccountController *)self accountForAccountID:v9, v46];
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v10;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "   Found account: %@", buf, 0xCu);
          }
        }

        if (v10)
        {
          if ([(IMDAccountController *)v10 isDisabled])
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "      => Disabled, continuing", buf, 2u);
              }
            }
          }

          else
          {
            service = [(IMDAccountController *)v10 service];
            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                selfCopy = service;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "      Found service: %@", buf, 0xCu);
              }
            }

            if ([(IMDAccountController *)service isDiscontinued])
            {
              if (IMOSLoggingEnabled())
              {
                v15 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "      => Service discontinued, skipping.", buf, 2u);
                }
              }
            }

            else
            {
              activeAccounts = self->_activeAccounts;
              internalName = [(IMDAccountController *)service internalName];
              v18 = [(NSMutableDictionary *)activeAccounts objectForKey:internalName];
              v19 = [v18 mutableCopy];

              if (!v19)
              {
                v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              if (([(IMDAccountController *)v19 containsObject:v9]& 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    *buf = v46;
                    selfCopy = v9;
                    v63 = 2112;
                    v64 = v19;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "      Adding account: %@ to active set: %@", buf, 0x16u);
                  }
                }

                if ([(IMDAccountController *)service supportsOneSessionForAllAccounts]&& [(IMDAccountController *)v19 count])
                {
                  lastObject = [(IMDAccountController *)v19 lastObject];
                  v22 = [(IMDAccountController *)self accountForAccountID:lastObject];

                  session = [v22 session];
                  if (session)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v24 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        selfCopy = session;
                        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Reusing session: %@", buf, 0xCu);
                      }
                    }

                    [(IMDAccountController *)v10 setSession:session];
                    [(IMDAccountController *)session addAccount:v10];
                    [(IMDAccountController *)session sessionDidBecomeActive];
                    service2 = [(IMDAccountController *)v10 service];
                    shouldForceAccountsConnected = [service2 shouldForceAccountsConnected];

                    if (shouldForceAccountsConnected)
                    {
                      if (IMOSLoggingEnabled())
                      {
                        v27 = OSLogHandleForIMFoundationCategory();
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412290;
                          selfCopy = self;
                          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "%@: Forcing login", buf, 0xCu);
                        }
                      }

                      session2 = [(IMDAccountController *)v10 session];
                      [session2 loginWithAccount:v10];
                    }
                  }
                }

                [(IMDAccountController *)v19 addObject:v9];
                [v47 addObject:service];
                if (IMOSLoggingEnabled())
                {
                  v29 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    selfCopy = v19;
                    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "      Active account set is: %@", buf, 0xCu);
                  }
                }

                v30 = self->_activeAccounts;
                if (!v30)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  v32 = self->_activeAccounts;
                  self->_activeAccounts = Mutable;

                  v30 = self->_activeAccounts;
                }

                internalName2 = [(IMDAccountController *)service internalName];
                [(NSMutableDictionary *)v30 setObject:v19 forKey:internalName2];

                if (IMOSLoggingEnabled())
                {
                  v34 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "      Building sesssion", buf, 2u);
                  }
                }

                [(IMDAccountController *)v10 createSessionIfNecessary];
                if (IMOSLoggingEnabled())
                {
                  v35 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "      Enable the associated account", buf, 2u);
                  }
                }

                [(IMDAccountController *)service enableAccount:v10];
              }
            }
          }
        }
      }

      v6 = [(IMDAccountController *)obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = v47;
  v36 = [v50 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v36)
  {
    v37 = *v53;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(v50);
        }

        v39 = *(*(&v52 + 1) + 8 * j);
        v40 = +[IMDBroadcastController sharedProvider];
        v41 = [v40 broadcasterForListenersSupportingService:v39];
        v42 = [(IMDAccountController *)self activeAccountsForService:v39];
        v43 = [v42 arrayByApplyingSelector:sel_accountID];
        internalName3 = [v39 internalName];
        [v41 activeAccountsChanged:v43 forService:internalName3];
      }

      v36 = [v50 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v36);
  }

  if ([v50 count])
  {
    [(IMDAccountController *)self _rebuildOperationalAccountsCache];
  }

  selfCopy3 = self;
  if (!self->_isLoading)
  {
    [(IMDAccountController *)self save];
    selfCopy3 = self;
  }

  [(IMDAccountController *)selfCopy3 _checkPowerAssertion];
}

- (void)deactivateAccounts:(id)accounts force:(BOOL)force
{
  v52 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = accountsCopy;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Deactivating accounts: %@", buf, 0xCu);
  }

  if (self->_isFirstLoad)
  {
    v36 = 0;
  }

  else
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = accountsCopy;
  v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v9 = *v45;
    *&v8 = 138412290;
    v35 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [(IMDAccountController *)self accountForAccountID:v11, v35];
        service = [v12 service];
        v14 = service;
        if (!v12)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_34;
          }

          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = v35;
            v51 = v11;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Tried to deactivate an account, but found no account: %@", buf, 0xCu);
          }

LABEL_33:

          goto LABEL_34;
        }

        if (!service)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_34;
          }

          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = v35;
            v51 = v11;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Tried to deactivate an account, but found no service; %@", buf, 0xCu);
          }

          goto LABEL_33;
        }

        if (force || ([service shouldForceAccountsActive] & 1) == 0)
        {
          activeAccounts = self->_activeAccounts;
          internalName = [v14 internalName];
          v17 = [(NSMutableDictionary *)activeAccounts objectForKey:internalName];
          v18 = [v17 mutableCopy];

          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          if (([v18 containsObject:v11] & 1) != 0 || objc_msgSend(v12, "isAccountKeyCDPSyncingOrWaitingForUser"))
          {
            [v18 removeObject:v11];
            [v36 addObject:v14];
            v19 = self->_activeAccounts;
            if (!v19)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v21 = self->_activeAccounts;
              self->_activeAccounts = Mutable;

              v19 = self->_activeAccounts;
            }

            internalName2 = [v14 internalName];
            [(NSMutableDictionary *)v19 setObject:v18 forKey:internalName2];

            session = [v12 session];
            if (session && [v12 loginStatus] >= 3)
            {
              session2 = [v12 session];
              [session2 logout];
            }

            [v14 disableAccount:v12];
            [session removeAccount:v12];
            [v12 releaseSession];
          }
        }

LABEL_34:
      }

      v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v7);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = v36;
  v26 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v26)
  {
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v38);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        v30 = +[IMDBroadcastController sharedProvider];
        v31 = [v30 broadcasterForListenersSupportingService:v29];
        v32 = [(IMDAccountController *)self activeAccountsForService:v29];
        v33 = [v32 arrayByApplyingSelector:sel_accountID];
        internalName3 = [v29 internalName];
        [v31 activeAccountsChanged:v33 forService:internalName3];
      }

      v26 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);
  }

  if ([v38 count])
  {
    [(IMDAccountController *)self _rebuildOperationalAccountsCache];
  }

  if (!self->_isLoading)
  {
    [(IMDAccountController *)self save];
  }

  [(IMDAccountController *)self _checkPowerAssertion];
}

- (void)deactivateAccount:(id)account
{
  if (account)
  {
    v4 = IMSingleObjectArray();
    [(IMDAccountController *)self deactivateAccounts:v4];
  }
}

- (void)deactivateAccount:(id)account force:(BOOL)force
{
  if (account)
  {
    forceCopy = force;
    v6 = IMSingleObjectArray();
    [(IMDAccountController *)self deactivateAccounts:v6 force:forceCopy];
  }
}

- (BOOL)_isAccountActive:(id)active forService:(id)service
{
  activeAccounts = self->_activeAccounts;
  activeCopy = active;
  internalName = [service internalName];
  v8 = [(NSMutableDictionary *)activeAccounts objectForKey:internalName];
  v9 = [v8 containsObject:activeCopy];

  return v9;
}

- (BOOL)isAccountActive:(id)active
{
  activeCopy = active;
  v5 = [(IMDAccountController *)self accountForAccountID:activeCopy];
  service = [v5 service];
  LOBYTE(self) = [(IMDAccountController *)self _isAccountActive:activeCopy forService:service];

  return self;
}

- (void)addAccount:(id)account
{
  v57 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (accountCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = accountCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Add account: %@", buf, 0xCu);
      }
    }

    accountID = [accountCopy accountID];
    v43 = [(IMDAccountController *)self accountForAccountID:accountID];

    if (v43)
    {
      v44 = v43;
      accountDefaults = [accountCopy accountDefaults];
      [v44 writeAccountDefaults:accountDefaults];
    }

    else
    {
      accounts = self->_accounts;
      if (!accounts)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v10 = self->_accounts;
        self->_accounts = Mutable;

        accounts = self->_accounts;
      }

      accountID2 = [accountCopy accountID];
      [(NSMutableDictionary *)accounts setObject:accountCopy forKey:accountID2];

      v44 = accountCopy;
    }

    if (!self->_isFirstLoad)
    {
      v12 = +[IMDBroadcastController sharedProvider];
      service = [accountCopy service];
      v14 = [v12 broadcasterForListenersSupportingService:service];
      accountID3 = [v44 accountID];
      accountDefaults2 = [v44 accountDefaults];
      service2 = [accountCopy service];
      internalName = [service2 internalName];
      [v14 accountAdded:accountID3 defaults:accountDefaults2 service:internalName];

      [(IMDAccountController *)self _rebuildOperationalAccountsCache];
      [v44 writeAccountDefaults:0];
      [v44 postAccountCapabilities];
      if (!self->_isFirstLoad && !self->_isLoading)
      {
        service3 = [accountCopy service];
        [service3 accountAdded:accountCopy];

        v20 = +[IMDServiceController sharedController];
        v42 = [v20 serviceWithName:*MEMORY[0x277D1A620]];

        service4 = [accountCopy service];
        LODWORD(v20) = service4 == v42;

        if (v20)
        {
          [(IMDAccountController *)self accountsForService:v42];
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v22 = v50 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v23)
          {
            v24 = *v50;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v50 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v49 + 1) + 8 * i);
                loginID = [v26 loginID];
                if (![loginID length])
                {

LABEL_26:
                  v30 = v26;

                  if (v30)
                  {
                    v31 = v30 == accountCopy;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  if (!v31)
                  {
                    registration = [MEMORY[0x277D19298] registration];
                    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v56 = v30;
                      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "*** Removing placeholder account: %@", buf, 0xCu);
                    }

                    [(IMDAccountController *)self removeAccount:v30];
                  }

                  goto LABEL_33;
                }

                accountID4 = [v26 accountID];
                v29 = [accountID4 isEqualToIgnoringCase:@"PlaceholderAccount"];

                if (v29)
                {
                  goto LABEL_26;
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v30 = 0;
LABEL_33:
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        accounts = [(IMDAccountController *)self accounts];
        v34 = [accounts countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v34)
        {
          v35 = *v46;
          v36 = MEMORY[0x277D85CD0];
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v46 != v35)
              {
                objc_enumerationMutation(accounts);
              }

              v38 = *(*(&v45 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                idsAccount = [v38 idsAccount];
                [idsAccount addDelegate:self queue:v36];
              }
            }

            v34 = [accounts countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v34);
        }
      }
    }

    service5 = [accountCopy service];
    if ([service5 shouldForceAccountsActive])
    {
      accountID5 = [accountCopy accountID];
      [(IMDAccountController *)self activateAccount:accountID5];
    }
  }
}

- (void)removeAccount:(id)account
{
  v28 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Remove account: %@", buf, 0xCu);
    }
  }

  if (accountCopy)
  {
    v6 = [(NSMutableDictionary *)self->_accounts allKeysForObject:accountCopy];
    v7 = v6;
    if (v6)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        do
        {
          v10 = 0;
          do
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * v10);
            service = [accountCopy service];
            v13 = [(IMDAccountController *)self _isAccountActive:v11 forService:service];

            if (v13)
            {
              [(IMDAccountController *)self deactivateAccount:v11 force:1];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }

      [(NSMutableDictionary *)self->_accounts removeObjectsForKeys:v7];
      if (![(NSMutableDictionary *)self->_accounts count])
      {
        accounts = self->_accounts;
        self->_accounts = 0;
      }

      if (!self->_isLoading)
      {
        [accountCopy writeAccountDefaults:0];
        v15 = +[IMDBroadcastController sharedProvider];
        service2 = [accountCopy service];
        v17 = [v15 broadcasterForListenersSupportingService:service2];
        accountID = [accountCopy accountID];
        [v17 accountRemoved:accountID];

        [(IMDAccountController *)self _rebuildOperationalAccountsCache];
        service3 = [accountCopy service];
        [service3 accountRemoved:accountCopy];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        idsAccount = [accountCopy idsAccount];
        [idsAccount removeDelegate:self];
      }
    }

    [(IMDAccountController *)self save];
  }

  [(IMDAccountController *)self _checkPowerAssertion];
}

- (id)accountsForLoginID:(id)d onService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  accounts = [(IMDAccountController *)self accounts];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B4EBF10;
  v13[3] = &unk_278702A18;
  v14 = serviceCopy;
  v15 = dCopy;
  v9 = dCopy;
  v10 = serviceCopy;
  v11 = [accounts __imArrayByFilteringWithBlock:v13];

  return v11;
}

- (id)accountForHandle:(id)handle
{
  v34 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  [(IMDAccountController *)self activeAccounts];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = MEMORY[0x277D1A620];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        service = [v11 service];
        internalName = [service internalName];
        v14 = [internalName isEqualToString:*v9];

        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            idsAccount = [v11 idsAccount];
            aliasStrings = [idsAccount aliasStrings];

            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v17 = aliasStrings;
            v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v25;
              while (2)
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v25 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([*(*(&v24 + 1) + 8 * j) isEqualToString:handleCopy])
                  {
                    v22 = v11;

                    goto LABEL_22;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v9 = MEMORY[0x277D1A620];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v22 = 0;
    }

    while (v7);
  }

  else
  {
    v22 = 0;
  }

LABEL_22:

  return v22;
}

- (id)accountsForService:(id)service
{
  serviceCopy = service;
  accounts = [(IMDAccountController *)self accounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC2C4;
  v9[3] = &unk_278702A40;
  v10 = serviceCopy;
  v6 = serviceCopy;
  v7 = [accounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsForService:(id)service
{
  serviceCopy = service;
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC3D4;
  v9[3] = &unk_278702A40;
  v10 = serviceCopy;
  v6 = serviceCopy;
  v7 = [activeAccounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsWithServiceCapability:(id)capability
{
  capabilityCopy = capability;
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC4E4;
  v9[3] = &unk_278702A88;
  v10 = capabilityCopy;
  v6 = capabilityCopy;
  v7 = [activeAccounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (NSArray)connectedAccounts
{
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts __imArrayByFilteringWithBlock:&unk_283F192C8];

  return v3;
}

- (id)connectedAccountsForService:(id)service
{
  v3 = [(IMDAccountController *)self activeAccountsForService:service];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_283F192E8];

  return v4;
}

- (NSArray)connectingAccounts
{
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts __imArrayByFilteringWithBlock:&unk_283F19308];

  return v3;
}

- (id)connectingAccountsForService:(id)service
{
  v3 = [(IMDAccountController *)self activeAccountsForService:service];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_283F19328];

  return v4;
}

- (BOOL)accountAssociatedWithHandle:(id)handle
{
  v3 = [(IMDAccountController *)self accountForHandle:handle];
  v4 = v3 != 0;

  return v4;
}

- (id)accountForIDSAccountUniqueID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accounts = [(IMDAccountController *)self accounts];
  v6 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v9 idsAccount];
          uniqueID = [idsAccount uniqueID];
          v12 = [uniqueID caseInsensitiveCompare:dCopy];

          if (!v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (NSArray)activeSessions
{
  v10 = *MEMORY[0x277D85DE8];
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts __imArrayByApplyingBlock:&unk_283F19348 filter:&unk_283F19368];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "activeSessions = %@", &v8, 0xCu);
    }
  }

  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v6 = array;

  return v6;
}

- (id)sessionForAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = [(IMDAccountController *)self accountForAccountID:accountCopy];
  session = [v5 session];
  if (!session)
  {
    service = [v5 service];
    v8 = [IMDServiceSession existingServiceSessionForService:service];

    if (!v8 || ([v5 createSessionIfNecessary], objc_msgSend(v5, "session"), (session = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          accounts = self->_accounts;
          v12 = 138412802;
          v13 = accountCopy;
          v14 = 2112;
          v15 = v5;
          v16 = 2112;
          v17 = accounts;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not find a service session for string: %@, account: %@, allAccounts: %@", &v12, 0x20u);
        }
      }

      session = 0;
    }
  }

  return session;
}

- (id)anySessionForServiceName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = +[IMDServiceController sharedController];
  v5 = [v4 serviceWithName:nameCopy];

  if (v5)
  {
    v6 = +[IMDAccountController sharedInstance];
    v7 = [v6 activeAccountsForService:v5];
    __imFirstObject = [v7 __imFirstObject];

    if (__imFirstObject)
    {
      session = [__imFirstObject session];
      v10 = session;
      if (session)
      {
        v11 = session;
      }

      else if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = 138412290;
          v21 = __imFirstObject;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find a session for account: %@", &v20, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = +[IMDAccountController sharedInstance];
          v15 = [v14 accountsForService:v5];
          v16 = +[IMDAccountController sharedInstance];
          accounts = [v16 accounts];
          v20 = 138412802;
          v21 = nameCopy;
          v22 = 2112;
          v23 = v15;
          v24 = 2112;
          v25 = accounts;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find an account for serviceString: %@, accountsForService: %@, accounts: %@", &v20, 0x20u);
        }
      }

      v10 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = nameCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find a service for string: %@", &v20, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)sessionForReplicationSourceServiceName:(id)name replicatingAccount:(id)account
{
  v46 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accountCopy = account;
  v6 = +[IMDServiceController sharedController];
  v30 = [v6 serviceWithName:nameCopy];

  if (v30)
  {
    [(IMDAccountController *)self activeAccountsForService:v30];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v27 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v27)
    {
      v7 = *v37;
      v25 = *v37;
      do
      {
        v8 = 0;
        do
        {
          if (*v37 != v7)
          {
            v9 = v8;
            objc_enumerationMutation(obj);
            v8 = v9;
          }

          v26 = v8;
          v10 = *(*(&v36 + 1) + 8 * v8);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          replicationSessions = [v10 replicationSessions];
          v12 = [replicationSessions countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v12)
          {
            v13 = *v33;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v33 != v13)
                {
                  objc_enumerationMutation(replicationSessions);
                }

                v15 = *(*(&v32 + 1) + 8 * i);
                replicationService = [v15 replicationService];
                internalName = [replicationService internalName];
                service = [accountCopy service];
                internalName2 = [service internalName];
                v20 = [internalName isEqualToString:internalName2];

                if (v20)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v23 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v41 = v15;
                      v42 = 2112;
                      v43 = accountCopy;
                      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found source session %@ for replicating account %@", buf, 0x16u);
                    }
                  }

                  v22 = v15;

                  goto LABEL_28;
                }
              }

              v12 = [replicationSessions countByEnumeratingWithState:&v32 objects:v44 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v8 = v26 + 1;
          v7 = v25;
        }

        while (v26 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
        v7 = v25;
      }

      while (v27);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = nameCopy;
      v42 = 2112;
      v43 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "IMDAccountController: No source session on service %@ for replicating account %@", buf, 0x16u);
    }
  }

  v22 = 0;
LABEL_28:

  return v22;
}

- (void)_rebuildOperationalAccountsCache
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_operationalAccountsCache;
  operationalAccountsCache = self->_operationalAccountsCache;
  self->_operationalAccountsCache = 0;

  _operationalAccounts = [(IMDAccountController *)self _operationalAccounts];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = _operationalAccounts;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Rebuilding operational accounts, old: (%@)  new: (%@)", &v11, 0x16u);
    }
  }

  v7 = [_operationalAccounts count];
  if (v7 != -[NSSet count](v3, "count") || ([_operationalAccounts isEqualToSet:v3] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Removing replication sessions due to account rebuild", &v11, 2u);
      }
    }

    [(IMDAccountController *)self _resetAccountReplicationSessions];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Operational accounts changed", &v11, 2u);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMDBadgeUtilitiesOperationalAccountsChangedNotification", 0, 0, 1u);
  }
}

- (void)_resetAccountReplicationSessions
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(activeAccounts);
        }

        [*(*(&v7 + 1) + 8 * v6++) resetReplicationSessions];
      }

      while (v4 != v6);
      v4 = [activeAccounts countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_operationalAccounts
{
  v18 = *MEMORY[0x277D85DE8];
  p_operationalAccountsCache = &self->_operationalAccountsCache;
  operationalAccountsCache = self->_operationalAccountsCache;
  if (operationalAccountsCache)
  {
    v4 = operationalAccountsCache;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    activeAccounts = [(IMDAccountController *)self activeAccounts];
    v7 = [activeAccounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(activeAccounts);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([(IMDAccountController *)self _isOperationalForAccount:v11])
          {
            [(NSSet *)v4 addObject:v11];
          }
        }

        v8 = [activeAccounts countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    objc_storeStrong(p_operationalAccountsCache, v4);
  }

  return v4;
}

- (BOOL)_isOperationalForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isActive])
  {
    service = [accountCopy service];
    supportsRegistration = [service supportsRegistration];
    v6 = !supportsRegistration || [accountCopy accountType] != 2 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(accountCopy, "idsAccount"), v7 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  changedCopy = changed;
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceName = [accountCopy serviceName];
  v8 = [serviceName isEqualToString:@"com.apple.madrid"];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      canSend = [accountCopy canSend];
      v11 = @"NO";
      if (changedCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *v17 = 138413058;
      *&v17[4] = accountCopy;
      if (canSend)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&v17[14] = v12;
      *&v17[12] = 2112;
      *&v17[22] = 2112;
      if (v8)
      {
        v11 = @"YES";
      }

      v18 = v13;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "IDS account %@ is active %@ can send %@ is madrid account %@", v17, 0x2Au);
    }
  }

  if (v8)
  {
    _nicknameController = [(IMDAccountController *)self _nicknameController];
    v15 = _nicknameController;
    if (changedCopy)
    {
      [_nicknameController newDeviceDidSignIntoiMessage];
    }

    else
    {
      [_nicknameController deviceSignedOutOfiMessage];
    }
  }

  v16 = [IMDBadgeUtilities sharedInstance:*v17];
  [v16 updateBadgeInCaseOfMistakenLoginInvalidation];

  [(IMDAccountController *)self _rebuildOperationalAccountsCache];
}

- (void)setNetworkDataAvailable:(BOOL)available
{
  availableCopy = available;
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (availableCopy)
      {
        v6 = @"YES";
      }

      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "calling setNetwork %@", &v10, 0xCu);
    }
  }

  if (self->_networkDataAvailable != availableCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "  => broadcasting", &v10, 2u);
      }
    }

    self->_networkDataAvailable = availableCopy;
    v8 = +[IMDBroadcastController sharedProvider];
    broadcasterForAllListeners = [v8 broadcasterForAllListeners];
    [broadcasterForAllListeners networkDataAvailabilityChanged:availableCopy];
  }
}

- (id)activeAliases
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  [(IMDAccountController *)self activeAccountsWithServiceCapability:*MEMORY[0x277D1A578]];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v8 idsAccount];
          aliasStrings = [idsAccount aliasStrings];

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = aliasStrings;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                if ([v16 length] && ((IMStringIsEmail() & 1) != 0 || MEMORY[0x231897A50](v16)))
                {
                  [v3 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)activeAccountsAreEligibleForFilterUnknownSendersByDefault
{
  v49 = *MEMORY[0x277D85DE8];
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  if ([activeAccounts count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v3 = activeAccounts;
    v4 = [v3 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v43;
      v7 = MEMORY[0x277D1A600];
      v33 = activeAccounts;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v43 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          service = [v9 service];
          internalName = [service internalName];
          v12 = [internalName isEqualToString:*v7];

          if ((v12 & 1) == 0)
          {
            idsAccount = [v9 idsAccount];
            regionID = [idsAccount regionID];

            if ([MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:regionID] & 1) != 0 || (objc_msgSend(MEMORY[0x277D1AC58], "receiverIsCandidateForDefaultAppleSMSFilter"))
            {
              goto LABEL_39;
            }

            aliases = [v9 aliases];
            v16 = [aliases count];

            if (v16)
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              aliases2 = [v9 aliases];
              v18 = [aliases2 countByEnumeratingWithState:&v38 objects:v47 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v39;
                v32 = v6;
LABEL_13:
                v21 = 0;
                while (1)
                {
                  if (*v39 != v20)
                  {
                    objc_enumerationMutation(aliases2);
                  }

                  v22 = *(*(&v38 + 1) + 8 * v21);
                  if ([MEMORY[0x277D1AC58] receiverIsCandidateForHawking:{v22, v32}] & 1) != 0 || (objc_msgSend(MEMORY[0x277D1AC58], "receiverIsCandidateForDefaultAppleSMSFilter:", v22))
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [aliases2 countByEnumeratingWithState:&v38 objects:v47 count:16];
                    v6 = v32;
                    if (v19)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_20;
                  }
                }

LABEL_36:
                activeAccounts = v33;

                v30 = 1;
                goto LABEL_40;
              }

LABEL_20:

              v7 = MEMORY[0x277D1A600];
            }

            else
            {
              v23 = MEMORY[0x277D1AC58];
              aliases2 = [v9 loginID];
              if ([v23 receiverIsCandidateForHawking:aliases2])
              {
                goto LABEL_36;
              }

              v24 = MEMORY[0x277D1AC58];
              loginID = [v9 loginID];
              LOBYTE(v24) = [v24 receiverIsCandidateForDefaultAppleSMSFilter:loginID];

              if (v24)
              {
LABEL_39:
                v30 = 1;
                activeAccounts = v33;
                goto LABEL_40;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v42 objects:v48 count:16];
        activeAccounts = v33;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x277D1A8F8] IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    regionID = v37 = 0u;
    v26 = [regionID countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(regionID);
          }

          if ([MEMORY[0x277D1AC58] receiverIsCandidateForDefaultAppleSMSFilter:*(*(&v34 + 1) + 8 * j)])
          {
            v30 = 1;
            goto LABEL_38;
          }
        }

        v27 = [regionID countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0;
LABEL_38:
    v3 = regionID;
LABEL_40:
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)activeAccountsAreEligibleForHawking
{
  v32 = *MEMORY[0x277D85DE8];
  [(IMDAccountController *)self activeAccounts];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = v29 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          service = [v7 service];
          internalName = [service internalName];
          v10 = [internalName isEqualToString:*MEMORY[0x277D1A600]];

          if ((v10 & 1) == 0)
          {
            idsAccount = [v7 idsAccount];
            regionID = [idsAccount regionID];

            if ([MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:regionID])
            {
LABEL_22:

              v20 = 1;
              goto LABEL_24;
            }

            idsAccount2 = [v7 idsAccount];
            aliasStrings = [idsAccount2 aliasStrings];

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v15 = aliasStrings;
            v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v23;
              while (2)
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v23 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  if ([MEMORY[0x277D1AC58] receiverIsCandidateForHawking:*(*(&v22 + 1) + 8 * j)])
                  {

                    goto LABEL_22;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v20 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_24:

  return v20;
}

- (BOOL)receiverIsCandidateForHawking:(id)hawking
{
  v22 = *MEMORY[0x277D85DE8];
  hawkingCopy = hawking;
  if ([hawkingCopy length])
  {
    v5 = IMChatCanonicalIDSIDsForAddress();
    v6 = MEMORY[0x231897A70]();

    v7 = [MEMORY[0x277D1AC58] mapID:v6 usingKey:*MEMORY[0x277D1AD68]];

    if (MEMORY[0x231897A50](v7))
    {
      v8 = IMCountryCodeForNumber();
      v9 = [v8 isEqualToString:@"cn"];
      v10 = IMOSLoggingEnabled();
      if (v9)
      {
        if (v10)
        {
          regionID = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(regionID, OS_LOG_TYPE_INFO))
          {
            v18 = 138412546;
            v19 = v7;
            v20 = 2112;
            v21 = v8;
            _os_log_impl(&dword_22B4CC000, regionID, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for spam filtering.", &v18, 0x16u);
          }

          goto LABEL_30;
        }
      }

      else if (v10)
      {
        regionID = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(regionID, OS_LOG_TYPE_INFO))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_22B4CC000, regionID, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is not a candidate for spam filtering.", &v18, 0x16u);
        }

        goto LABEL_30;
      }

LABEL_31:

      goto LABEL_32;
    }

    if (!IMStringIsEmail())
    {
      LOBYTE(v9) = 0;
LABEL_32:

      goto LABEL_33;
    }

    v8 = [(IMDAccountController *)self accountForHandle:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v18 = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = objc_opt_class();
          v16 = v21;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found an account (%@) that isn't IMDIDS (%@), can't determien region -- falling through.", &v18, 0x16u);
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_31;
    }

    idsAccount = [v8 idsAccount];
    regionID = [idsAccount regionID];

    v9 = [MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:regionID];
    v13 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = regionID;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Receiving id (%@) with region (%@) is a candidate for spam filtering.", &v18, 0x16u);
        }

LABEL_29:
      }
    }

    else if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = regionID;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Receiving id (%@) with region (%@) is not a candidate for spam filtering.", &v18, 0x16u);
      }

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  LOBYTE(v9) = 0;
LABEL_33:

  return v9;
}

- (BOOL)hasActivePhoneAccount
{
  v31 = *MEMORY[0x277D85DE8];
  [(IMDAccountController *)self activeAccounts];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = v28 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v6 = MEMORY[0x277D1A600];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        service = [v8 service];
        internalName = [service internalName];
        v11 = [internalName isEqualToString:*v6];

        if ((v11 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            idsAccount = [v8 idsAccount];
            aliasStrings = [idsAccount aliasStrings];

            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v14 = aliasStrings;
            v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v22;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v22 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  if (MEMORY[0x231897A50](*(*(&v21 + 1) + 8 * j)))
                  {

                    v19 = 1;
                    goto LABEL_22;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v19 = 0;
    }

    while (v4);
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (BOOL)receiverIsCandidateForJunk:(id)junk forAccount:(id)account
{
  v40 = *MEMORY[0x277D85DE8];
  junkCopy = junk;
  accountCopy = account;
  if (accountCopy)
  {
    v7 = MEMORY[0x231897A70](junkCopy);
    v8 = [MEMORY[0x277D1AC58] mapID:v7 usingKey:*MEMORY[0x277D1A880]];
    if (MEMORY[0x231897A50]())
    {
      v9 = IMCountryCodeForNumber();
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Receiving ID: %@ has country code: %@", buf, 0x16u);
        }
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      telephonyCountryCodesEligibleForJunkFiltering = [MEMORY[0x277D1AC58] telephonyCountryCodesEligibleForJunkFiltering];
      v12 = [telephonyCountryCodesEligibleForJunkFiltering countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        v13 = *v31;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(telephonyCountryCodesEligibleForJunkFiltering);
            }

            if ([*(*(&v30 + 1) + 8 * i) isEqualToString:v9])
            {
              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v37 = v8;
                  v38 = 2112;
                  v39 = v9;
                  _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for Oscar filtering.", buf, 0x16u);
                }
              }

              LOBYTE(v12) = 1;
              goto LABEL_39;
            }
          }

          v12 = [telephonyCountryCodesEligibleForJunkFiltering countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_39:
    }

    else
    {
      if (IMStringIsEmail())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [accountCopy idsAccount];
          regionID = [idsAccount regionID];

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v37 = v8;
              v38 = 2112;
              v39 = regionID;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Receiving ID: %@ has region: %@", buf, 0x16u);
            }
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          accountRegionsEligibleForJunkFiltering = [MEMORY[0x277D1AC58] accountRegionsEligibleForJunkFiltering];
          v12 = [accountRegionsEligibleForJunkFiltering countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v19 = *v27;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v27 != v19)
                {
                  objc_enumerationMutation(accountRegionsEligibleForJunkFiltering);
                }

                if ([*(*(&v26 + 1) + 8 * j) isEqualToString:regionID])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v24 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v37 = regionID;
                      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Region (%@) is a candidate for Oscar filtering.", buf, 0xCu);
                    }
                  }

                  LOBYTE(v12) = 1;
                  goto LABEL_50;
                }
              }

              v12 = [accountRegionsEligibleForJunkFiltering countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_50:

          goto LABEL_51;
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v37 = accountCopy;
            v38 = 2112;
            v39 = objc_opt_class();
            v23 = v39;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Found an account (%@) that isn't IMDIDS (%@), can't determine region -- falling through.", buf, 0x16u);
          }
        }
      }

      LOBYTE(v12) = 0;
    }

LABEL_51:

    goto LABEL_52;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22B7CF628(junkCopy, v7);
  }

  LOBYTE(v12) = 0;
LABEL_52:

  return v12;
}

@end