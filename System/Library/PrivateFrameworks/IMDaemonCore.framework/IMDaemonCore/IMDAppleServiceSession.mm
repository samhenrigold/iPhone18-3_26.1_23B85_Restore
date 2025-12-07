@interface IMDAppleServiceSession
+ (id)idsAccounts;
- (BOOL)isiMessageServiceIDSAccount:(id)account;
- (IDSAccount)idsAccount;
- (IMDAppleServiceSession)initWithAccount:(id)account service:(id)service;
- (NSArray)aliases;
- (NSArray)registeredURIs;
- (NSArray)vettedAliases;
- (NSString)callerURI;
- (id)_aliasStringsForIDSAccount:(id)account;
- (id)_aliases;
- (id)_aliasesForIDSAccount:(id)account;
- (id)_findMatchingURI:(id)i;
- (id)callerURIForIDSAccount:(id)account;
- (id)callerURIForMessageGUID:(id)d idsAccount:(id)account;
- (id)chatForOutgoingMessage:(id)message fromIdentifier:(id)identifier isInProxyMode:(BOOL)mode createIfNotExists:(BOOL)exists;
- (id)idsAccountForURI:(id)i IDSServiceName:(id)name;
- (id)imdAccountForIDSAccount:(id)account;
- (int64_t)_validationStatusForAlias:(id)alias onAccount:(id)account;
- (int64_t)validationStatusForAlias:(id)alias;
- (void)_updateAccountStatusToUnregistered:(BOOL)unregistered withAccount:(id)account;
- (void)addAliases:(id)aliases account:(id)account;
- (void)authenticateAccount:(id)account;
- (void)dealloc;
- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 storageContext:(id)self1;
- (void)loginServiceSessionWithAccount:(id)account;
- (void)logoutServiceSessionWithAccount:(id)account;
- (void)passwordUpdatedWithAccount:(id)account;
- (void)reIdentify;
- (void)refreshRegistration;
- (void)registerAccount:(id)account;
- (void)removeAliases:(id)aliases account:(id)account;
- (void)reregister;
- (void)resetCallerIDForIDSAccount:(id)account;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)account;
- (void)tryToRepairCallerID:(id)d forIDSAccount:(id)account;
- (void)unregisterAccount:(id)account;
- (void)unvalidateAliases:(id)aliases account:(id)account;
- (void)updateAuthorizationCredentials:(id)credentials token:(id)token account:(id)account;
- (void)validateAliases:(id)aliases account:(id)account;
- (void)validateProfileWithAccount:(id)account;
@end

@implementation IMDAppleServiceSession

- (IMDAppleServiceSession)initWithAccount:(id)account service:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = IMDAppleServiceSession;
  v5 = [(IMDServiceSession *)&v11 initWithAccount:account service:?];
  if (v5)
  {
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "%@: Initialized!  (Environment: %@)", buf, 0x16u);
    }

    v5->_GUID = [MEMORY[0x277CCACA8] stringGUID];
    v5->_serviceName = [service internalName];
  }

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    GUID = self->_GUID;
    *buf = 138412290;
    v7 = GUID;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Dealloc service session: %@", buf, 0xCu);
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v5.receiver = self;
  v5.super_class = IMDAppleServiceSession;
  [(IMDServiceSession *)&v5 dealloc];
}

- (IDSAccount)idsAccount
{
  account = [(IMDServiceSession *)self account];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IMDInconsistencyResolved(self);

    return [(IMDAccount *)account idsAccount];
  }

  else
  {
    if ([(IMDServiceSession *)self isActive])
    {
      [(IMDServiceSession *)self accounts];
      IMDNoticedInconsistency(self, @"********** We don't have an IDSAccount, please file a radar ********** State: service session = %@, accounts = %@", v5, v6, v7, v8, v9, v10, self);
    }

    return 0;
  }
}

- (id)imdAccountForIDSAccount:(id)account
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(IMDServiceSession *)self isReplicating])
  {

    return [(IMDServiceSession *)self account];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v7 = [(NSArray *)accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 idsAccount] == account)
          {
            IMDInconsistencyResolved(self);
            return v11;
          }
        }

        v8 = [(NSArray *)accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if ([(IMDServiceSession *)self isActive])
    {
      [(IMDServiceSession *)self accounts];
      IMDNoticedInconsistency(self, @"********** We couldn't find an IMDAccount for the IDSAccount, please file a radar ********** State: service session = %@, IDSAccount = %@, accounts = %@", v12, v13, v14, v15, v16, v17, self);
    }

    return 0;
  }
}

- (NSArray)registeredURIs
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  idsAccounts = [objc_opt_class() idsAccounts];
  v5 = [idsAccounts countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(idsAccounts);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        im_registeredURIs = [v9 im_registeredURIs];
        v11 = [im_registeredURIs countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(im_registeredURIs);
              }

              v15 = [*(*(&v24 + 1) + 8 * j) _URIFromFZIDType:{objc_msgSend(*(*(&v24 + 1) + 8 * j), "_FZBestGuessFZIDType")}];
              if ([v15 length])
              {
                [v3 addObject:v15];
              }
            }

            v12 = [im_registeredURIs countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v12);
        }
      }

      v6 = [idsAccounts countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    IMDInconsistencyResolved(selfCopy);
    return [v3 allObjects];
  }

  else
  {
    if ([(IMDServiceSession *)selfCopy isActive])
    {
      [objc_opt_class() idsAccounts];
      IMDNoticedInconsistency(selfCopy, @"********** Requesting registered URIs but we don't have an IDSAccount, please file a radar ********** State: service session = %@, accounts = %@", v17, v18, v19, v20, v21, v22, selfCopy);
    }

    return 0;
  }
}

- (void)_updateAccountStatusToUnregistered:(BOOL)unregistered withAccount:(id)account
{
  unregisteredCopy = unregistered;
  if (unregistered || [account registrationStatus] >= 2)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    [v6 setObject:v7 forKey:*MEMORY[0x277D19460]];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v6 setObject:v8 forKey:*MEMORY[0x277D19470]];
    [account writeAccountDefaults:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v6, *MEMORY[0x277D19468])}];

    if (unregisteredCopy)
    {
      v9 = MEMORY[0x277CBEAC0];
      null = [MEMORY[0x277CBEB68] null];
      [account writeAccountDefaults:{objc_msgSend(v9, "dictionaryWithObject:forKey:", null, *MEMORY[0x277D193F0])}];
    }
  }

  v11 = MEMORY[0x277CBEAC0];
  null2 = [MEMORY[0x277CBEB68] null];
  v13 = [v11 dictionaryWithObject:null2 forKey:*MEMORY[0x277D19408]];

  [account writeAccountDefaults:v13];
}

- (void)sessionDidBecomeActive
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[IMDAppleServiceSession sessionDidBecomeActive]";
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    accountID = [(IMDServiceSession *)self accountID];
    v6 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    *buf = 138412546;
    v9 = accountID;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Session activating: %@ on Environment: %@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = IMDAppleServiceSession;
  [(IMDServiceSession *)&v7 sessionDidBecomeActive];
  [(IMDAppleServiceSession *)self refreshRegistration];
}

- (void)sessionWillBecomeInactiveWithAccount:(id)account
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[IMDAppleServiceSession sessionWillBecomeInactiveWithAccount:]";
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    accountID = [(IMDServiceSession *)self accountID];
    v8 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    *buf = 138412546;
    v11 = accountID;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Session deactivating: %@ on Environment: %@", buf, 0x16u);
  }

  IMDInconsistencyResolved(self);
  v9.receiver = self;
  v9.super_class = IMDAppleServiceSession;
  [(IMDServiceSession *)&v9 sessionWillBecomeInactiveWithAccount:account];
  [(IMDAppleServiceSession *)self _updateAccountStatusToUnregistered:0 withAccount:account];
  [(IMDAppleServiceSession *)self refreshRegistration];
}

- (void)loginServiceSessionWithAccount:(id)account
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "AppleServiceSession: %@", &v6, 0xCu);
    }
  }

  [(IMDServiceSession *)self refreshServiceCapabilities];
  [(IMDServiceSession *)self serviceSessionDidLoginWithAccount:account];
}

- (void)logoutServiceSessionWithAccount:(id)account
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "AppleServiceSession: %@", &v6, 0xCu);
    }
  }

  if ([account loginStatus] != 2)
  {
    [account setLoginStatus:0 message:0];
    [(IMDServiceSession *)self serviceSessionDidLogoutWithAccount:account];
  }
}

- (void)authenticateAccount:(id)account
{
  v24 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    v22 = 2112;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client requested re-authenticate (Environment: %@) account: %@", buf, 0x16u);
  }

  if ([account length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v7 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v16;
      *&v8 = 138412290;
      v14 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(accounts);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v12 accountID])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              registration2 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v14;
                v21 = v12;
                _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to re-authenticate account: %@", buf, 0xCu);
              }

              [objc_msgSend(v12 "idsAccount")];
            }
          }
        }

        v9 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)registerAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client requested re-register (Environment: %@)", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v7 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 138412290;
    v14 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(accounts);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v12 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v14;
              v21 = v12;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to re-register account: %@", buf, 0xCu);
            }

            [objc_msgSend(v12 "idsAccount")];
          }
        }
      }

      v9 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)unregisterAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client requested de-register (Environment: %@)", buf, 0xCu);
  }

  account = [(IMDServiceSession *)self account];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  accounts = [(IMDServiceSession *)self accounts];
  v8 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(accounts);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([(NSString *)[(IMDAccount *)v12 accountID] isEqualToString:account])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v21 = v12;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to de-register account: %@", buf, 0xCu);
            }

            [-[IMDAccount idsAccount](v12 "idsAccount")];
            account = v12;
          }
        }
      }

      v9 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(IMDAppleServiceSession *)selfCopy _updateAccountStatusToUnregistered:1 withAccount:account];
}

- (void)passwordUpdatedWithAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client requested password updated (account: %@)", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v7 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 138412290;
    v14 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(accounts);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v12 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v14;
              accountCopy = v12;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to update password account: %@", buf, 0xCu);
            }

            [objc_msgSend(v12 "idsAccount")];
          }
        }
      }

      v9 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)updateAuthorizationCredentials:(id)credentials token:(id)token account:(id)account
{
  v26 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client updateAuthorizationCredentials (account: %@)", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v11 = [(NSArray *)accounts countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v20;
    *&v12 = 138412290;
    v18 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(accounts);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([objc_msgSend(v16 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              accountCopy = v16;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to updateAuthorizationCredentials: %@", buf, 0xCu);
            }

            [objc_msgSend(v16 "idsAccount")];
          }
        }
      }

      v13 = [(NSArray *)accounts countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }
}

- (int64_t)_validationStatusForAlias:(id)alias onAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  result = [alias length];
  if (result)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(IMDAppleServiceSession *)self _aliasesForIDSAccount:account, 0];
    result = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v15;
      v11 = *MEMORY[0x277D18A88];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(v13 objectForKey:{v11), "isEqualToString:", alias}])
          {
            return [objc_msgSend(v13 objectForKey:{*MEMORY[0x277D18A90]), "intValue"}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        result = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (id)_aliasStringsForIDSAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(IMDAppleServiceSession *)self _aliasesForIDSAccount:account, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = *MEMORY[0x277D18A88];
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) objectForKey:v10];
        if ([v12 length])
        {
          if (MEMORY[0x231897A50](v12))
          {
            v12 = IMCanonicalizeFormattedString();
          }

          [v5 addObject:v12];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_aliases
{
  idsAccount = [(IMDAppleServiceSession *)self idsAccount];

  return [(IMDAppleServiceSession *)self _aliasesForIDSAccount:idsAccount];
}

- (id)_aliasesForIDSAccount:(id)account
{
  aliases = [account aliases];

  return [aliases __imArrayByApplyingBlock:&unk_283F1B4E8];
}

- (void)removeAliases:(id)aliases account:(id)account
{
  v34 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    aliasesCopy2 = aliases;
    v32 = 2112;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client request to remove aliases: %@ account: %@", buf, 0x16u);
  }

  idsAccount = [(IMDAppleServiceSession *)self idsAccount];
  account = [(IMDServiceSession *)self account];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  accounts = [(IMDServiceSession *)self accounts];
  v10 = [(NSArray *)accounts countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([(NSString *)[(IMDAccount *)v14 accountID] isEqualToString:account])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            idsAccount = [(IMDAccount *)v14 idsAccount];
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              aliasesCopy2 = aliases;
              v32 = 2112;
              accountCopy = v14;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to remove aliases: %@  account: %@", buf, 0x16u);
            }

            account = v14;
          }
        }
      }

      v11 = [(NSArray *)accounts countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v16 = [aliases __imArrayByApplyingBlock:&unk_283F1B508];
  if ([v16 count])
  {
    v17 = [-[IMDAppleServiceSession _aliasesForIDSAccount:](selfCopy _aliasesForIDSAccount:{idsAccount), "count"}];
    if (v17 - 1 >= 0)
    {
      v18 = v17;
      v19 = *MEMORY[0x277D18A88];
      v20 = *MEMORY[0x277D19408];
      while (1)
      {
        v21 = [objc_msgSend(-[IMDAppleServiceSession _aliasesForIDSAccount:](selfCopy _aliasesForIDSAccount:{idsAccount), "objectAtIndex:", --v18), "objectForKey:", v19}];
        if ([v16 containsObject:v21])
        {
          v22 = [(NSDictionary *)[(IMDAccount *)account accountDefaults] objectForKey:v20];
          if ([v22 length])
          {
            if ([v22 isEqualToString:v21])
            {
              break;
            }
          }
        }

        if (v18 <= 0)
        {
          goto LABEL_24;
        }
      }

      -[IMDAccount writeAccountDefaults:](account, "writeAccountDefaults:", [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CBEB68] forKey:{"null"), v20}]);
    }

LABEL_24:
    [(IDSAccount *)idsAccount removeAliases:v16];
  }
}

- (void)addAliases:(id)aliases account:(id)account
{
  v26 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    aliasesCopy2 = aliases;
    v24 = 2112;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client request to add aliases: %@  account: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v9 = [(NSArray *)accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    *&v10 = 138412546;
    v16 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v14 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v16;
              aliasesCopy2 = aliases;
              v24 = 2112;
              accountCopy = v14;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to add aliases: %@  account: %@", buf, 0x16u);
            }

            [objc_msgSend(v14 "idsAccount")];
          }
        }
      }

      v11 = [(NSArray *)accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)validateAliases:(id)aliases account:(id)account
{
  v26 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    aliasesCopy2 = aliases;
    v24 = 2112;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client request to validate: %@  account: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v9 = [(NSArray *)accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    *&v10 = 138412546;
    v16 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v14 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v16;
              aliasesCopy2 = aliases;
              v24 = 2112;
              accountCopy = v14;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to validate aliases: %@  account: %@", buf, 0x16u);
            }

            [objc_msgSend(v14 "idsAccount")];
          }
        }
      }

      v11 = [(NSArray *)accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)unvalidateAliases:(id)aliases account:(id)account
{
  v26 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    aliasesCopy2 = aliases;
    v24 = 2112;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client request to unvalidate: %@  account: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v9 = [(NSArray *)accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    *&v10 = 138412546;
    v16 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v14 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v16;
              aliasesCopy2 = aliases;
              v24 = 2112;
              accountCopy = v14;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to unvalidate aliases: %@  account: %@", buf, 0x16u);
            }

            [objc_msgSend(v14 "idsAccount")];
          }
        }
      }

      v11 = [(NSArray *)accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)validateProfileWithAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    accountCopy = account;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Client request to validate profile info: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v7 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 138412290;
    v14 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(accounts);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v12 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            registration2 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v14;
              accountCopy = v12;
              _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "Found account to validate profile info account: %@", buf, 0xCu);
            }

            [objc_msgSend(v12 "idsAccount")];
          }
        }
      }

      v9 = [(NSArray *)accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)resetCallerIDForIDSAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  if (-[IMDAppleServiceSession _isDeviceRegisteredForAccount:](self, "_isDeviceRegisteredForAccount:") && [objc_msgSend(account "vettedAliases")])
  {
    accountInfo = [account accountInfo];
    v6 = [accountInfo objectForKey:*MEMORY[0x277D18A98]];
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v6;
      v16 = 2112;
      uniqueID = [account uniqueID];
      v18 = 2112;
      v19 = accountInfo;
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Checking specified caller ID: %@ on account: %@, accountDefaults: %@", &v14, 0x20u);
    }

    if (![v6 length])
    {
      registration2 = [MEMORY[0x277D19298] registration];
      if (!os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v14) = 0;
      v11 = "No caller ID specified, moving along";
      v12 = registration2;
      goto LABEL_11;
    }

    v8 = [(IMDAppleServiceSession *)self validationStatusForAlias:v6 onAccount:account];
    registration3 = [MEMORY[0x277D19298] registration];
    v10 = os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT);
    if (v8 == 3)
    {
      if (!v10)
      {
        return;
      }

      LOWORD(v14) = 0;
      v11 = " Caller ID is valid, registered and in good shape, moving along";
      v12 = registration3;
LABEL_11:
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, 2u);
      return;
    }

    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEFAULT, "Caller ID isn't validated, try repair if we find another account with the same caller id. clearing caller ID settings for current account", &v14, 2u);
    }

    [(IMDAppleServiceSession *)self tryToRepairCallerID:v6 forIDSAccount:account];
    [account setDisplayName:0];
  }
}

- (void)tryToRepairCallerID:(id)d forIDSAccount:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(IMDAppleServiceSession *)self isiMessageServiceIDSAccount:account])
  {
    v7 = [objc_msgSend(IMPreferredAccountMap() objectForKey:{*MEMORY[0x277D1A620]), "objectForKey:", @"guid"}];
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      dCopy = v7;
      v29 = 2112;
      uniqueID = [account uniqueID];
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "CallerID Repair - Current preferred account: [%@], account to repair: [%@]", buf, 0x16u);
    }

    if ([v7 isEqualToString:{objc_msgSend(account, "uniqueID")}])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      idsAccounts = [objc_opt_class() idsAccounts];
      v10 = [idsAccounts countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v23;
        *&v11 = 138412546;
        v21 = v11;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(idsAccounts);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if (([v15 isEqual:{account, v21, v22}] & 1) == 0 && -[IMDAppleServiceSession isiMessageServiceIDSAccount:](self, "isiMessageServiceIDSAccount:", v15))
            {
              registration2 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
              {
                uniqueID2 = [v15 uniqueID];
                displayName = [v15 displayName];
                *buf = v21;
                dCopy = uniqueID2;
                v29 = 2112;
                uniqueID = displayName;
                _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "CallerID Repair - Found another iMessage account: [%@], displayName: [%@]", buf, 0x16u);
              }

              if ([d isEqualToString:{objc_msgSend(v15, "displayName")}])
              {
                IMRegisterForPreferredAccountChangeNotificationsInternal();
                registration3 = [MEMORY[0x277D19298] registration];
                if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
                {
                  uniqueID3 = [v15 uniqueID];
                  *buf = v21;
                  dCopy = d;
                  v29 = 2112;
                  uniqueID = uniqueID3;
                  _os_log_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEFAULT, "CallerID Repair - Found a match for callerID: [%@], update preferred account to: [%@] for iMessage", buf, 0x16u);
                }

                [v15 uniqueID];
                IMUpdatePreferredAccountForService();
              }
            }
          }

          v12 = [idsAccounts countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }
    }
  }
}

- (BOOL)isiMessageServiceIDSAccount:(id)account
{
  serviceName = [account serviceName];

  return [serviceName isEqualToString:@"com.apple.madrid"];
}

- (void)refreshRegistration
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  idsAccounts = [objc_opt_class() idsAccounts];
  v4 = [idsAccounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(idsAccounts);
        }

        [(IMDAppleServiceSession *)self resetCallerIDForIDSAccount:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [idsAccounts countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)reregister
{
  idsAccount = [(IMDAppleServiceSession *)self idsAccount];

  MEMORY[0x2821F9670](idsAccount, sel__reregisterAndReidentify_);
}

- (void)reIdentify
{
  idsAccount = [(IMDAppleServiceSession *)self idsAccount];

  MEMORY[0x2821F9670](idsAccount, sel__reregisterAndReidentify_);
}

- (NSArray)vettedAliases
{
  idsAccount = [(IMDAppleServiceSession *)self idsAccount];

  return [(IDSAccount *)idsAccount vettedAliases];
}

- (NSArray)aliases
{
  idsAccount = [(IMDAppleServiceSession *)self idsAccount];

  return [(IMDAppleServiceSession *)self _aliasStringsForIDSAccount:idsAccount];
}

- (int64_t)validationStatusForAlias:(id)alias
{
  [(IMDAppleServiceSession *)self idsAccount];

  return MEMORY[0x2821F9670](self, sel__validationStatusForAlias_onAccount_);
}

- (id)callerURIForMessageGUID:(id)d idsAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  if (![d length])
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA3BC(v10);
    }

    return 0;
  }

  if (!account)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA378(v14);
    }

    return 0;
  }

  v7 = [+[IMDMessageStore sharedInstance](IMDMessageStore messageWithGUID:"messageWithGUID:", d];
  if (v7 && (v8 = v7, [objc_msgSend(v7 "destinationCallerID")]))
  {
    v9 = -[IMDAppleServiceSession _findMatchingURI:](self, "_findMatchingURI:", [v8 destinationCallerID]);
    if (v9)
    {
      return v9;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      dCopy2 = d;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No message found for message GUID '%@' or no destinationCallerID", &v18, 0xCu);
    }
  }

  v12 = [+[IMDMessageStore sharedInstance](IMDMessageStore chatForMessageGUID:"chatForMessageGUID:", d];
  v13 = v12;
  if (v12 && [objc_msgSend(v12 "lastAddressedLocalHandle")])
  {
    v9 = -[IMDAppleServiceSession _findMatchingURI:](self, "_findMatchingURI:", [v13 lastAddressedLocalHandle]);
    if (v9)
    {
      return v9;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      dCopy2 = d;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No chat found for message GUID '%@' or no lastAddressedLocalHandle", &v18, 0xCu);
    }
  }

  v9 = [(IMDAppleServiceSession *)self callerURIForIDSAccount:account];
  if (![v9 length])
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA300(account, v17);
    }
  }

  return v9;
}

- (id)_findMatchingURI:(id)i
{
  v37 = *MEMORY[0x277D85DE8];
  if (![i length])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v20 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v17 = "No handle provided to find matching URI";
    v18 = v20;
    v19 = 2;
    goto LABEL_27;
  }

  v5 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v6 addObjectsFromArray:{objc_msgSend(*(*(&v27 + 1) + 8 * i), "aliases")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v7);
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      iCopy3 = i;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Checking if local handle '%@' is in registered URIs: %@", buf, 0x16u);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = *v24;
    v13 = *MEMORY[0x277D18AB8];
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v23 + 1) + 8 * j);
        if (([v15 isEqualToIgnoringCase:v13] & 1) == 0 && objc_msgSend(i, "isEqualToIgnoringCase:", v15))
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              iCopy3 = i;
              _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Found matching alias: %@", buf, 0xCu);
            }
          }

          return [i _bestGuessURIFromCanicalizedID];
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      iCopy3 = i;
      v17 = "Local handle '%@' not found in registered URIs";
      v18 = v16;
      v19 = 12;
LABEL_27:
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
    }
  }

  return 0;
}

- (NSString)callerURI
{
  idsAccount = [(IMDAppleServiceSession *)self idsAccount];

  return [(IMDAppleServiceSession *)self callerURIForIDSAccount:idsAccount];
}

- (id)callerURIForIDSAccount:(id)account
{
  v37 = *MEMORY[0x277D85DE8];
  if ([account accountType] || (v21 = objc_msgSend(objc_msgSend(account, "loginID"), "_URIFromCanonicalizedPhoneNumber"), !objc_msgSend(v21, "length")))
  {
    im_registeredURIs = [account im_registeredURIs];
    if ([im_registeredURIs count])
    {
      accountInfo = [account accountInfo];
      [accountInfo objectForKey:*MEMORY[0x277D18A98]];
      v7 = [im_registeredURIs __imArrayByApplyingBlock:&unk_283F1B528];
      v8 = _IDSCopyCallerID();
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          accountCopy2 = self;
          v31 = 2112;
          registeredURIs = v8;
          v33 = 2112;
          v34 = v7;
          v35 = 2112;
          accountCopy = account;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%@ callerID - choosing %@ from %@, idsAccount %@", buf, 0x2Au);
        }
      }

      registration = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        accountCopy2 = self;
        v31 = 2112;
        registeredURIs = v8;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "%@ callerID - choosing %@ from %@", buf, 0x20u);
      }

      lowercaseString = [v8 lowercaseString];
      v12 = [(IMDAppleServiceSession *)self _aliasStringsForIDSAccount:account];
      v13 = [lowercaseString length];
      v14 = MEMORY[0x277D18AB8];
      if (v13 && [v12 containsObject:lowercaseString] && !objc_msgSend(lowercaseString, "_appearsToBeDSID") || (v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, (v15 = objc_msgSend(v12, "countByEnumeratingWithState:objects:count:", &v24, v28, 16)) == 0))
      {
LABEL_20:
        __imFirstObject = lowercaseString;
      }

      else
      {
        v16 = *v25;
        v17 = *v14;
LABEL_13:
        v18 = 0;
        while (1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v12);
          }

          __imFirstObject = *(*(&v24 + 1) + 8 * v18);
          if (([__imFirstObject isEqualToIgnoringCase:v17] & 1) == 0 && !objc_msgSend(__imFirstObject, "_appearsToBeDSID"))
          {
            break;
          }

          if (v15 == ++v18)
          {
            v15 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v15)
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }
        }
      }

      if (([im_registeredURIs containsObject:__imFirstObject] & 1) == 0)
      {
        if ([0 isEqualToIgnoringCase:*v14])
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              accountCopy2 = 0;
              v31 = 2112;
              registeredURIs = im_registeredURIs;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " ** Selected display ID: %@  was not in URIs set: %@", buf, 0x16u);
            }
          }
        }

        __imFirstObject = [im_registeredURIs __imFirstObject];
      }

      return [__imFirstObject _URIFromFZIDType:{objc_msgSend(__imFirstObject, "_FZBestGuessFZIDType")}];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          accountCopy2 = account;
          v31 = 2112;
          registeredURIs = [account registeredURIs];
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "callerURI - No bindings !!, idsAccount %@ registeredURIs %@", buf, 0x16u);
        }
      }

      return 0;
    }
  }

  return v21;
}

+ (id)idsAccounts
{
  if (qword_281421308 != -1)
  {
    sub_22B7DA400();
  }

  accounts = [qword_281421310 accounts];
  if (![objc_msgSend(qword_281421318 "accounts")])
  {
    return accounts;
  }

  return MEMORY[0x2821F9670](accounts, sel_setByAddingObjectsFromSet_);
}

- (id)idsAccountForURI:(id)i IDSServiceName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  idsAccounts = [objc_opt_class() idsAccounts];
  v7 = 0;
  v8 = [idsAccounts countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v10 = *v19;
    *&v9 = 138412546;
    v17 = v9;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(idsAccounts);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(v12 serviceName] && (v13 = objc_msgSend(v12, "im_registeredURIs"), objc_msgSend(i, "_stripFZIDPrefix"), objc_msgSend(v13, "containsObject:", IMCanonicalizeFormattedString())))
        {
          if ([v12 canSend])
          {
            return v12;
          }

          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = v17;
              v23 = v12;
              v24 = 2112;
              iCopy2 = i;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "IDS Account (%@) registered for: %@ but registration status was wrong. Saving for later", buf, 0x16u);
            }
          }

          v7 = v12;
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v23 = v7;
            v24 = 2112;
            iCopy2 = i;
            v26 = 2112;
            nameCopy = name;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IDS Account (%@) not registered for: %@, serviceName: %@, moving on", buf, 0x20u);
          }
        }
      }

      v8 = [idsAccounts countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 storageContext:(id)self1
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      internalName = [[(IMDServiceSession *)self service] internalName];
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Outgoing plain text messages are unsupported on %@.", &v13, 0xCu);
    }
  }
}

- (id)chatForOutgoingMessage:(id)message fromIdentifier:(id)identifier isInProxyMode:(BOOL)mode createIfNotExists:(BOOL)exists
{
  existsCopy = exists;
  modeCopy = mode;
  v78 = *MEMORY[0x277D85DE8];
  service = [(IMDServiceSession *)self service];
  messageCopy = message;
  if ([(IMDService *)service supportsCapability:*MEMORY[0x277D1A560]])
  {
    v10 = [message objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v52 = [v10 objectForKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  else
  {
    v52 = 0;
  }

  service2 = [(IMDServiceSession *)self service];
  if ([(IMDService *)service2 supportsCapability:*MEMORY[0x277D1A558]])
  {
    messageCopy3 = message;
    v13 = [message objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v51 = [v13 objectForKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];
    v14 = [message objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v53 = [v14 objectForKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
  }

  else
  {
    v53 = 0;
    v51 = 0;
    messageCopy3 = message;
  }

  obj = [objc_msgSend(messageCopy3 objectForKey:{IMDCTMessageDictionaryReceipientsKey), "__imArrayByApplyingBlock:", &unk_283F1B568}];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = obj;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "ChatForOutgoingMessage recipients %@", buf, 0xCu);
    }
  }

  identifier = [+[IMDRelayServiceController sharedInstance](IMDRelayServiceController _isDefaultPairedDeviceRelayingLocally:"_isDefaultPairedDeviceRelayingLocally:", identifier];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v17 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v17)
  {
    v18 = identifier || modeCopy;
    v19 = *v66;
    if (identifier || modeCopy)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (identifier)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v56 = v21;
    v57 = v20;
    if (modeCopy)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [objc_msgSend(MEMORY[0x277D18998] "sharedInstance")];
        v25 = IMOSLoggingEnabled();
        if (((v24 ^ 1 | v18) & 1) == 0)
        {
          if (v25)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "One of the recipients of this outgoing message is an emergency number, Not processing message", buf, 2u);
            }
          }

          return 0;
        }

        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v27 = @"NO";
            if (v24)
            {
              v27 = @"YES";
            }

            *&buf[4] = v27;
            v71 = 2112;
            v72 = v57;
            v73 = 2112;
            v74 = v56;
            v75 = 2112;
            v76 = v22;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Will send SMS, recipient is Emergency %@, shouldRelayEmergencyTextFromPairedDevice: %@, isDefaultPairedDeviceRelayingLocally: %@, isInProxyMode %@ ", buf, 0x2Au);
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = _ChatStyleFromChatStyleString([messageCopy objectForKey:IMDRelayMessageDictionaryChatStyleKey]);
  style = v58;
  if (v58 == 45)
  {
    __imFirstObject = [obj __imFirstObject];
    *buf = __imFirstObject;
    v30 = MEMORY[0x277CBEAC0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v28 addObject:{objc_msgSend(v30, "dictionaryWithObjectsAndKeys:", v31, *MEMORY[0x277D192F8], __imFirstObject, *MEMORY[0x277D193A8], 0)}];
    v32 = -[IMDChatRegistry existingChatForID:account:](+[IMDChatRegistry sharedInstance](IMDChatRegistry, "sharedInstance"), "existingChatForID:account:", [obj __imFirstObject], -[IMDServiceSession account](self, "account"));
LABEL_53:
    v34 = v32;
    goto LABEL_54;
  }

  *buf = [+[IMDChatRegistry sharedInstance](IMDChatRegistry generateUnusedChatIdentifierForGroupChatWithAccount:"generateUnusedChatIdentifierForGroupChatWithAccount:", [(IMDServiceSession *)self account]];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v35)
  {
    v36 = *v61;
    v37 = *MEMORY[0x277D192F8];
    v38 = *MEMORY[0x277D193A8];
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v61 != v36)
        {
          objc_enumerationMutation(obj);
        }

        [v28 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", 2), v37, *(*(&v60 + 1) + 8 * j), v38, 0)}];
      }

      v35 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v35);
  }

  v40 = +[IMDChatRegistry sharedInstance];
  account = [(IMDServiceSession *)self account];
  if ([[(IMDServiceSession *)self service] groupsMergeDisplayNames])
  {
    v42 = v52;
  }

  else
  {
    v42 = 0;
  }

  v34 = [(IMDChatRegistry *)v40 existingChatForIDs:obj account:account displayName:v42 groupID:v51 style:43];
  if (!v34 && v53)
  {
    v43 = +[IMDChatRegistry sharedInstance];
    account2 = [(IMDServiceSession *)self account];
    if ([[(IMDServiceSession *)self service] groupsMergeDisplayNames])
    {
      v45 = v52;
    }

    else
    {
      v45 = 0;
    }

    v32 = [(IMDChatRegistry *)v43 existingChatForIDs:obj account:account2 displayName:v45 originalGroupID:v53 style:43];
    goto LABEL_53;
  }

LABEL_54:
  if (v34)
  {
    *buf = [v34 chatIdentifier];
    style = [v34 style];
  }

  else
  {
    [(IMDServiceSession *)self canonicalizeChatIdentifier:buf style:&style];
    if (existsCopy)
    {
      [(IMDServiceSession *)self didJoinChat:*buf style:style displayName:v52 groupID:v51 originalGroupID:v53 handleInfo:v28];
      v46 = +[IMDChatRegistry sharedInstance];
      if (v58 == 45)
      {
        v47 = -[IMDChatRegistry existingChatForID:account:](v46, "existingChatForID:account:", [obj __imFirstObject], -[IMDServiceSession account](self, "account"));
      }

      else
      {
        v47 = [(IMDChatRegistry *)v46 existingChatForIDs:obj account:[(IMDServiceSession *)self account] displayName:v52 groupID:v51 style:43];
      }

      v34 = v47;
    }

    else
    {
      v34 = 0;
    }
  }

  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    if (!v53)
    {
      goto LABEL_72;
    }

    v48 = *MEMORY[0x277D19780];
    if (([objc_msgSend(v34 identifiersForDomain:{*MEMORY[0x277D19780]), "containsObject:", v53}] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](self, "allowedToOverwriteOriginalGroupIDForChat:", v34))
    {
      goto LABEL_72;
    }

    [v34 assignIdentifier:v53 forDomain:v48 isHistoricalIdentifier:1];
  }

  else
  {
    if (!v53 || ([objc_msgSend(v34 "originalGroupID")] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](self, "allowedToOverwriteOriginalGroupIDForChat:", v34))
    {
      goto LABEL_72;
    }

    [v34 setOriginalGroupID:v53];
  }

  [+[IMDChatStore sharedInstance](IMDChatStore storeChat:"storeChat:", v34];
  [-[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(v34, "isBlackholed")), "chat:updated:", objc_msgSend(v34, "guid"), objc_msgSend(v34, "dictionaryRepresentation")}];
LABEL_72:

  return v34;
}

@end