@interface IMDIDSService
- (BOOL)canManageRegistration;
- (BOOL)isRegistrationUnmanaged;
- (IMDIDSService)initWithBundle:(id)bundle isMainService:(BOOL)service;
- (IMDIDSService)initWithBundle:(id)bundle subServiceName:(id)name;
- (IMDIDSService)mainService;
- (NSArray)accountsLoadedFromIdentityServices;
- (NSArray)activeAccountsFromIdentityServices;
- (id)accountFromIDSAccountWithUniqueID:(id)d;
- (id)imdAccountLoginFromIDSAccountWithType:(int)type login:(id)login;
- (id)newAccountWithAccountDefaults:(id)defaults accountID:(id)d;
- (void)_loadIDSAccountController;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)account:(id)account displayNameChanged:(id)changed;
- (void)account:(id)account loginChanged:(id)changed;
- (void)account:(id)account profileChanged:(id)changed;
- (void)account:(id)account registrationStatusInfoChanged:(id)changed;
- (void)account:(id)account vettedAliasesChanged:(id)changed;
- (void)accountAdded:(id)added;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)accountController:(id)controller accountDisabled:(id)disabled;
- (void)accountController:(id)controller accountEnabled:(id)enabled;
- (void)accountController:(id)controller accountRemoved:(id)removed;
- (void)accountController:(id)controller accountUpdated:(id)updated;
- (void)accountRemoved:(id)removed;
- (void)dealloc;
- (void)disableAccount:(id)account;
- (void)enableAccount:(id)account;
- (void)refreshRegistrationForAccount:(id)account;
- (void)registrationFailedForAccount:(id)account needsDeletion:(id)deletion;
@end

@implementation IMDIDSService

- (void)_loadIDSAccountController
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_accountController)
  {
    v3 = [objc_alloc(MEMORY[0x277D186C8]) initWithService:sub_22B6E43EC(self)];
    self->_accountController = v3;
    [(IDSAccountController *)v3 addDelegate:self queue:MEMORY[0x277D85CD0]];
    if ([(IMDIDSService *)self canManageRegistration])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      accounts = [(IDSAccountController *)self->_accountController accounts];
      v5 = [accounts countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        v7 = v5;
        v8 = *v15;
        *&v6 = 138412290;
        v13 = v6;
        v9 = MEMORY[0x277D85CD0];
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(accounts);
            }

            v11 = *(*(&v14 + 1) + 8 * v10);
            registration = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
            {
              *buf = v13;
              v19 = v11;
              _os_log_debug_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEBUG, "Adding registration delegate for account %@", buf, 0xCu);
            }

            [v11 addRegistrationDelegate:self queue:v9];
            ++v10;
          }

          while (v7 != v10);
          v7 = [accounts countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v7);
      }
    }
  }

  [[(IMDIDSService *)self subService] _loadIDSAccountController];
}

- (IMDIDSService)initWithBundle:(id)bundle subServiceName:(id)name
{
  v9.receiver = self;
  v9.super_class = IMDIDSService;
  v6 = [(IMDService *)&v9 initWithBundle:?];
  if (v6)
  {
    if ([name length])
    {
      v7 = [[IMDIDSService alloc] initWithBundle:bundle isMainService:0];
      v6->_subService = v7;
      [(IMDIDSService *)v7 setMainService:v6];
      [(IMDIDSService *)v6->_subService setSubServiceName:name];
    }

    [(IMDIDSService *)v6 _loadIDSAccountController];
  }

  return v6;
}

- (IMDIDSService)initWithBundle:(id)bundle isMainService:(BOOL)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = IMDIDSService;
  v5 = [(IMDService *)&v9 initWithBundle:bundle];
  v6 = v5;
  if (v5)
  {
    v7 = !serviceCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(IMDIDSService *)v5 _loadIDSAccountController];
  }

  return v6;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accounts = [(IDSAccountController *)self->_accountController accounts];
  v4 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeRegistrationDelegate:self];
      }

      while (v5 != v7);
      v5 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(IDSAccountController *)self->_accountController removeDelegate:self];

  objc_storeWeak(&self->_mainService, 0);
  v8.receiver = self;
  v8.super_class = IMDIDSService;
  [(IMDService *)&v8 dealloc];
}

- (id)accountFromIDSAccountWithUniqueID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  [(IMDIDSService *)self _loadIDSAccountController];
  v5 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v10 "idsAccount")])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (IMDIDSService)mainService
{
  if (objc_loadWeak(&self->_mainService))
  {

    return objc_loadWeak(&self->_mainService);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = IMDIDSService;
    return [(IMDService *)&v4 mainService];
  }
}

- (BOOL)isRegistrationUnmanaged
{
  if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")] && (IMGetDomainBoolForKey() & 1) != 0)
  {
    return 0;
  }

  serviceProperties = [(IMDService *)self serviceProperties];
  v5 = [(NSDictionary *)serviceProperties objectForKeyedSubscript:*MEMORY[0x277D1A6A8]];

  return [v5 BOOLValue];
}

- (BOOL)canManageRegistration
{
  if ([(IMDIDSService *)self isSubService])
  {
    return 0;
  }

  else
  {
    return ![(IMDIDSService *)self isRegistrationUnmanaged];
  }
}

- (id)imdAccountLoginFromIDSAccountWithType:(int)type login:(id)login
{
  v5 = MEMORY[0x231897A70](login, a2);
  v6 = v5;
  if (type)
  {
    if (type <= 2)
    {
      if ([v5 length])
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"E:%@", v6];
      }

      return @"E:";
    }
  }

  else
  {
    if ([v5 length])
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"P:%@", IMFormatPhoneNumber()];
    }

    return @"P:";
  }

  return v6;
}

- (NSArray)accountsLoadedFromIdentityServices
{
  v21 = *MEMORY[0x277D85DE8];
  [(IMDIDSService *)self _loadIDSAccountController];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(IDSAccountController *)self->_accountController accounts];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = *MEMORY[0x277D18AB0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = -[IMDIDSService imdAccountLoginFromIDSAccountWithType:login:](self, "imdAccountLoginFromIDSAccountWithType:login:", [v9 accountType], objc_msgSend(v9, "loginID"));
        v11 = [objc_msgSend(v9 "accountInfo")];
        [v11 setObject:v10 forKey:v7];
        v12 = -[IMDIDSAccount initWithAccountID:defaults:service:idsAccount:]([IMDIDSAccount alloc], "initWithAccountID:defaults:service:idsAccount:", [v9 uniqueID], v11, self, v9);
        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  accountsLoadedFromIdentityServices = [[(IMDIDSService *)self subService] accountsLoadedFromIdentityServices];
  if ([(NSArray *)accountsLoadedFromIdentityServices count])
  {
    [v3 addObjectsFromArray:accountsLoadedFromIdentityServices];
  }

  return v3;
}

- (NSArray)activeAccountsFromIdentityServices
{
  v3 = [-[IDSAccountController enabledAccounts](self->_accountController "enabledAccounts")];
  activeAccountsFromIdentityServices = [[(IMDIDSService *)self subService] activeAccountsFromIdentityServices];
  if (![(NSArray *)activeAccountsFromIdentityServices count])
  {
    return v3;
  }

  return [(NSArray *)v3 arrayByAddingObjectsFromArray:activeAccountsFromIdentityServices];
}

- (void)accountAdded:(id)added
{
  v12 = *MEMORY[0x277D85DE8];
  if ([added service] != self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_11:
    v7.receiver = self;
    v7.super_class = IMDIDSService;
    [(IMDService *)&v7 accountAdded:added];
    return;
  }

  idsAccount = [added idsAccount];
  if ([(IMDIDSService *)self canManageRegistration])
  {
    [idsAccount addRegistrationDelegate:self queue:MEMORY[0x277D85CD0]];
  }

  if ([idsAccount accountType] != 2)
  {
    if (-[IMDIDSService canManageRegistration](self, "canManageRegistration") && !-[IDSAccountController accountWithUniqueID:](self->_accountController, "accountWithUniqueID:", [idsAccount uniqueID]))
    {
      registration = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        addedCopy = added;
        v10 = 2112;
        v11 = idsAccount;
        _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDAccount added %@, adding corresponding IDSAccount %@", buf, 0x16u);
      }

      [(IDSAccountController *)self->_accountController addAccount:idsAccount];
    }

    goto LABEL_11;
  }
}

- (void)accountRemoved:(id)removed
{
  v12 = *MEMORY[0x277D85DE8];
  if ([removed service] == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idsAccount = [removed idsAccount];
      [idsAccount removeRegistrationDelegate:self];
      if ([idsAccount accountType] == 2)
      {
        return;
      }

      if ([(IMDIDSService *)self canManageRegistration])
      {
        registration = [MEMORY[0x277D19298] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          removedCopy = removed;
          v10 = 2112;
          v11 = idsAccount;
          _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDAccount removed %@, removing corresponding IDSAccount %@", buf, 0x16u);
        }

        -[IDSAccountController _removeAccount:](self->_accountController, "_removeAccount:", [idsAccount uniqueID]);
      }
    }
  }

  v7.receiver = self;
  v7.super_class = IMDIDSService;
  [(IMDService *)&v7 accountRemoved:removed];
}

- (id)newAccountWithAccountDefaults:(id)defaults accountID:(id)d
{
  v7 = [objc_alloc(MEMORY[0x277D186C0]) initWithDictionary:defaults uniqueID:d serviceName:sub_22B6E43EC(self)];
  v8 = [[IMDIDSAccount alloc] initWithAccountID:d defaults:defaults service:self idsAccount:v7];

  return v8;
}

- (void)enableAccount:(id)account
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_activatingAccount && [account service] == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idsAccount = [account idsAccount];
      if ([(IMDIDSService *)self canManageRegistration])
      {
        registration = [MEMORY[0x277D19298] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 138412290;
          v8 = idsAccount;
          _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Enabling IDSAccount %@", &v7, 0xCu);
        }

        [(IDSAccountController *)self->_accountController enableAccount:idsAccount];
      }
    }
  }
}

- (void)disableAccount:(id)account
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_deactivatingAccount && [account service] == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idsAccount = [account idsAccount];
      if ([idsAccount accountType] != 2)
      {
        if ([(IMDIDSService *)self canManageRegistration])
        {
          registration = [MEMORY[0x277D19298] registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            v7 = 138412290;
            uniqueID = [idsAccount uniqueID];
            _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Disabling IDSAccount %@", &v7, 0xCu);
          }

          [(IDSAccountController *)self->_accountController disableAccount:idsAccount];
        }
      }
    }
  }
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  v10 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    uniqueID = [added uniqueID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Received account added %@", &v8, 0xCu);
  }

  if ([(IMDIDSService *)self canManageRegistration])
  {
    [added addRegistrationDelegate:self queue:MEMORY[0x277D85CD0]];
  }

  v7 = -[IMDIDSAccount initWithAccountID:defaults:service:idsAccount:]([IMDIDSAccount alloc], "initWithAccountID:defaults:service:idsAccount:", [added uniqueID], objc_msgSend(added, "accountInfo"), self, added);
  if (v7)
  {
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  }
}

- (void)accountController:(id)controller accountUpdated:(id)updated
{
  v10 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    uniqueID = [updated uniqueID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Received account updates %@", &v8, 0xCu);
  }

  v7 = -[IMDIDSService accountFromIDSAccountWithUniqueID:](self, "accountFromIDSAccountWithUniqueID:", [updated uniqueID]);
  if ([(IMDIDSService *)self canManageRegistration])
  {
    [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  }

  [objc_msgSend(v7 "session")];
}

- (void)accountController:(id)controller accountRemoved:(id)removed
{
  v17 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    uniqueID = [removed uniqueID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Received accountRemoved %@", &v15, 0xCu);
  }

  if ([(IMDIDSService *)self canManageRegistration])
  {
    [removed removeRegistrationDelegate:self];
  }

  v7 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if (v7)
  {
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  }

  else
  {
    registration2 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9E30(removed, registration2, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)accountController:(id)controller accountEnabled:(id)enabled
{
  v17 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    uniqueID = [enabled uniqueID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Received accountEnabled %@", &v15, 0xCu);
  }

  v7 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if (v7)
  {
    self->_activatingAccount = 1;
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
    self->_activatingAccount = 0;
  }

  else
  {
    registration2 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9E9C(enabled, registration2, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)accountController:(id)controller accountDisabled:(id)disabled
{
  v17 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    uniqueID = [disabled uniqueID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Received accountDisabled %@", &v15, 0xCu);
  }

  v7 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if (v7)
  {
    self->_deactivatingAccount = 1;
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
    self->_deactivatingAccount = 0;
  }

  else
  {
    registration2 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9F08(disabled, registration2, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)account:(id)account registrationStatusInfoChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  changed = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account, changed];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = changed;
    v8 = 2112;
    accountID = [changed accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received registration status changed: %@ (%@)", &v6, 0x16u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    changedCopy = changed;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    accountID = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received aliases changed to %@: %@ (%@)", &v7, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (void)account:(id)account vettedAliasesChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  changed = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account, changed];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = changed;
    v8 = 2112;
    accountID = [changed accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received vetted aliases changed: %@ (%@)", &v6, 0x16u);
  }

  -[IMDNicknameController aliasesDidChange:](+[IMDNicknameController sharedInstance](IMDNicknameController, "sharedInstance"), "aliasesDidChange:", [changed multiplePhoneNumbersTiedToAccount]);
  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (void)account:(id)account profileChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    changedCopy = changed;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    accountID = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received profile changed to %@: %@ (%@)", &v7, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (void)account:(id)account loginChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    changedCopy = changed;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    accountID = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received login changed to %@: %@ (%@)", &v7, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (void)account:(id)account displayNameChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    changedCopy = changed;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    accountID = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received display name changed to %@: %@ (%@)", &v7, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

- (void)registrationFailedForAccount:(id)account needsDeletion:(id)deletion
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = v5;
    v10 = 2112;
    accountID = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, " => Registration failed, deactivating...: %@ (%@)", buf, 0x16u);
  }

  [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if ([deletion BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6E60C8;
    block[3] = &unk_278704F90;
    block[4] = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)refreshRegistrationForAccount:(id)account
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:account];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    accountID = [v3 accountID];
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "IMDIDSService received refresh registration: %@ (%@)", &v5, 0x16u);
  }

  [objc_msgSend(v3 "session")];
}

@end