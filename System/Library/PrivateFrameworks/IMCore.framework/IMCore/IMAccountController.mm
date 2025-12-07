@interface IMAccountController
+ (id)bestAccountFromAccounts:(id)accounts;
+ (id)sharedInstance;
- (BOOL)_deactivateAccount:(id)account;
- (BOOL)accountConnected:(id)connected;
- (BOOL)accountConnecting:(id)connecting;
- (BOOL)accountLogoutable:(id)logoutable;
- (BOOL)activateAccount:(id)account force:(BOOL)force locally:(BOOL)locally;
- (BOOL)activateAccounts:(id)accounts force:(BOOL)force locally:(BOOL)locally;
- (BOOL)activateAndHandleReconnectAccount:(id)account;
- (BOOL)activateAndHandleReconnectAccounts:(id)accounts;
- (BOOL)addAccount:(id)account locally:(BOOL)locally;
- (BOOL)canActivateAccount:(id)account;
- (BOOL)canActivateAccounts:(id)accounts;
- (BOOL)canDeleteAccount:(id)account;
- (BOOL)deactivateAccount:(id)account;
- (BOOL)deactivateAccount:(id)account withDisable:(BOOL)disable;
- (BOOL)deactivateAccounts:(id)accounts;
- (BOOL)deactivateAccounts:(id)accounts withDisable:(BOOL)disable;
- (BOOL)deleteAccount:(id)account;
- (BOOL)deleteAccount:(id)account locally:(BOOL)locally;
- (BOOL)hasRelayApprovedAccount;
- (BOOL)metionedHandleMatchesMeCard:(id)card;
- (BOOL)receiverIsMyMention:(id)mention;
- (IMAccount)activeIMessageAccount;
- (IMAccount)activeSMSAccount;
- (IMAccountController)init;
- (NSArray)activeAccounts;
- (NSArray)connectedAccounts;
- (NSArray)operationalAccounts;
- (id)_bestAccountForAddresses:(id)addresses;
- (id)_bestOperationalAccountForSendingForService:(id)service;
- (id)accountForUniqueID:(id)d;
- (id)accountsForService:(id)service;
- (id)accountsWithCapability:(unint64_t)capability;
- (id)accountsWithServiceCapability:(id)capability;
- (id)activeAccountsForService:(id)service;
- (id)activeAccountsWithServiceCapability:(id)capability;
- (id)aimAccount;
- (id)bestAccountForStatus;
- (id)bestAccountWithCapability:(unint64_t)capability;
- (id)connectedAccountsForService:(id)service;
- (id)connectedAccountsWithCapability:(unint64_t)capability;
- (id)connectedAccountsWithServiceCapability:(id)capability;
- (id)iMessageAccountForLastAddressedHandle:(id)handle simID:(id)d;
- (id)jabberAccount;
- (id)mostLoggedInAccount;
- (id)operationalAccountsForService:(id)service;
- (id)operationalAccountsWithCapability:(unint64_t)capability;
- (id)senderIdentifiers;
- (int64_t)activeAccountsAreEligibleForAppleSMSFilter;
- (int64_t)activeAccountsAreEligibleForAppleSMSFilterSubClassification;
- (int64_t)activeAccountsAreEligibleForDefaultAppleSMSFilter;
- (int64_t)activeAccountsAreEligibleForFilterUnknownSendersByDefault;
- (int64_t)activeAccountsAreEligibleForHawking;
- (int64_t)activeAccountsAreEligibleForInternationalFiltering;
- (int64_t)activeAccountsAreEligibleForiMessageJunk;
- (void)_disableCache;
- (void)_rebuildOperationalAccountsCache:(BOOL)cache;
- (void)_requestNetworkDataAvailability;
- (void)accountLoginComplete:(id)complete;
- (void)autoLogin;
- (void)dealloc;
- (void)deferredSetup;
- (void)setNetworkDataAvailable:(BOOL)available;
@end

@implementation IMAccountController

+ (id)sharedInstance
{
  if (qword_1ED767888 != -1)
  {
    sub_1A8241884();
  }

  v3 = qword_1ED767848;

  return v3;
}

- (IMAccountController)init
{
  v12.receiver = self;
  v12.super_class = IMAccountController;
  v2 = [(IMAccountController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    objc_sync_enter(v4);
    accounts = v4->_accounts;
    v4->_accounts = MEMORY[0x1E695E0F0];

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    accountMap = v4->_accountMap;
    v4->_accountMap = Mutable;

    objc_sync_exit(v4);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__activeAccountChanged_ name:@"NotificationActiveAccountChanged" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__accountRegistrationStatusChanged_ name:@"__kIMAccountRegistrationStatusChangedNotification" object:0];

    v4->_networkDataAvailable = 1;
    [(IMAccountController *)v4 performSelector:sel_deferredSetup withObject:0 afterDelay:0.0];
    v10 = v4;
  }

  return v3;
}

- (NSArray)operationalAccounts
{
  v20 = *MEMORY[0x1E69E9840];
  p_operationalAccountsCache = &self->_operationalAccountsCache;
  operationalAccountsCache = self->_operationalAccountsCache;
  if (operationalAccountsCache)
  {
    Mutable = operationalAccountsCache;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    activeAccounts = [(IMAccountController *)self activeAccounts];
    v7 = [activeAccounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(activeAccounts);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isOperational])
          {
            v12 = Mutable == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12 && v11 != 0)
          {
            CFArrayAppendValue(Mutable, v11);
          }
        }

        v8 = [activeAccounts countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    objc_storeStrong(p_operationalAccountsCache, Mutable);
  }

  return Mutable;
}

- (NSArray)activeAccounts
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_accounts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(IMAccountController *)self accountActive:v9, v13])
        {
          v10 = Mutable == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && v9 != 0)
        {
          CFArrayAppendValue(Mutable, v9);
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return Mutable;
}

- (void)deferredSetup
{
  if ([(IMAccountController *)self _shouldPerformDeferredSetup])
  {

    MEMORY[0x1EEE66B58](self, sel__requestNetworkDataAvailability);
  }
}

- (id)bestAccountForStatus
{
  activeAccounts = [(IMAccountController *)self activeAccounts];
  v3 = [IMAccountController bestAccountFromAccounts:activeAccounts];

  return v3;
}

- (int64_t)activeAccountsAreEligibleForiMessageJunk
{
  v40 = *MEMORY[0x1E69E9840];
  activeAccounts = [(IMAccountController *)self activeAccounts];
  if ([activeAccounts count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = activeAccounts;
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v35;
      v7 = MEMORY[0x1E69A7AD0];
      v28 = activeAccounts;
      while (2)
      {
        v8 = 0;
        v29 = v5;
        do
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v34 + 1) + 8 * v8);
          serviceName = [v9 serviceName];
          v11 = [serviceName isEqualToString:*v7];

          if ((v11 & 1) == 0)
          {
            v12 = MEMORY[0x1E69A82A0];
            countryCode = [v9 countryCode];
            if ([v12 accountCountryIsCandidateForiMessageJunk:countryCode])
            {
              goto LABEL_25;
            }

            v14 = v3;
            v15 = MEMORY[0x1E69A82A0];
            loginIMHandle = [v9 loginIMHandle];
            countryCode2 = [loginIMHandle countryCode];
            LOBYTE(v15) = [v15 accountCountryIsCandidateForiMessageJunk:countryCode2];

            if (v15)
            {
              v26 = 1;
              v3 = v14;
              goto LABEL_27;
            }

            aliases = [v9 aliases];
            v19 = [aliases count];

            v3 = v14;
            if (v19)
            {
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              countryCode = [v9 aliases];
              v20 = [countryCode countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v31;
LABEL_13:
                v23 = 0;
                while (1)
                {
                  if (*v31 != v22)
                  {
                    objc_enumerationMutation(countryCode);
                  }

                  if ([MEMORY[0x1E69A82A0] receiverIsCandidateForiMessageJunk:*(*(&v30 + 1) + 8 * v23)])
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [countryCode countByEnumeratingWithState:&v30 objects:v38 count:16];
                    if (v21)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_19;
                  }
                }

LABEL_25:

LABEL_26:
                v26 = 1;
LABEL_27:
                activeAccounts = v28;
                goto LABEL_29;
              }

LABEL_19:

              v5 = v29;
            }

            else
            {
              v24 = MEMORY[0x1E69A82A0];
              login = [v9 login];
              LOBYTE(v24) = [v24 receiverIsCandidateForiMessageJunk:login];

              v5 = v29;
              if (v24)
              {
                goto LABEL_26;
              }
            }
          }

          ++v8;
        }

        while (v8 != v5);
        v5 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v26 = 0;
        activeAccounts = v28;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_29:
  }

  else
  {
    v26 = -1;
  }

  return v26;
}

- (IMAccount)activeIMessageAccount
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[IMService iMessageService];
  v4 = [(IMAccountController *)self accountsForService:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 _isUsableForSending])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_requestNetworkDataAvailability
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon requestNetworkDataAvailability];
}

- (IMAccount)activeSMSAccount
{
  v2 = +[IMAccountController sharedInstance];
  v3 = +[IMServiceImpl smsService];
  v4 = [v2 activeAccountsForService:v3];
  firstObject = [v4 firstObject];

  if (firstObject && (([firstObject allowsSMSRelay] & 1) != 0 || objc_msgSend(firstObject, "allowsMMSRelay")))
  {
    v6 = firstObject;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)autoLogin
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_accounts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 autoLogin] && (objc_msgSend(v7, "isConnected") & 1) == 0)
        {
          [v7 loginAccount];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  accounts = selfCopy->_accounts;
  selfCopy->_accounts = 0;

  accountMap = selfCopy->_accountMap;
  selfCopy->_accountMap = 0;

  objc_sync_exit(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = IMAccountController;
  [(IMAccountController *)&v7 dealloc];
}

- (void)accountLoginComplete:(id)complete
{
  completeCopy = complete;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountControllerUpdatedNotification" object:completeCopy];
}

- (id)accountForUniqueID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_accountMap objectForKey:dCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)connectedAccounts
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_accounts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isConnected])
        {
          v10 = Mutable == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && v9 != 0)
        {
          CFArrayAppendValue(Mutable, v9);
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return Mutable;
}

- (id)accountsWithServiceCapability:(id)capability
{
  capabilityCopy = capability;
  accounts = self->_accounts;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82AC1A0;
  v9[3] = &unk_1E7810DE0;
  v10 = capabilityCopy;
  v6 = capabilityCopy;
  v7 = [(NSArray *)accounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)accountsForService:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    serviceToAccountsMap = self->_serviceToAccountsMap;
    internalName = [serviceCopy internalName];
    v8 = [(NSMutableDictionary *)serviceToAccountsMap objectForKey:internalName];

    if (!v8)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = selfCopy;
      v11 = selfCopy->_accounts;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            service = [v15 service];
            v17 = service == v5;

            if (v17 && Mutable != 0 && v15 != 0)
            {
              CFArrayAppendValue(Mutable, v15);
            }
          }

          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      objc_sync_exit(obj);
      if (!self->_serviceToAccountsMap)
      {
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v19 = self->_serviceToAccountsMap;
        self->_serviceToAccountsMap = v18;
      }

      v8 = Mutable;
      if (v8)
      {
        CFDictionarySetValue(self->_serviceToAccountsMap, [v5 internalName], v8);
      }
    }

    accounts = v8;
  }

  else
  {
    accounts = [(IMAccountController *)self accounts];
  }

  return accounts;
}

- (id)activeAccountsWithServiceCapability:(id)capability
{
  capabilityCopy = capability;
  accounts = self->_accounts;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82AC504;
  v9[3] = &unk_1E7810E08;
  v9[4] = self;
  v10 = capabilityCopy;
  v6 = capabilityCopy;
  v7 = [(NSArray *)accounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsForService:(id)service
{
  v27 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    serviceToActiveAccountsMap = self->_serviceToActiveAccountsMap;
    internalName = [serviceCopy internalName];
    v8 = [(NSMutableDictionary *)serviceToActiveAccountsMap objectForKey:internalName];

    if (!v8)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [(IMAccountController *)self accountsForService:v5, 0];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if ([(IMAccountController *)self accountActive:v15])
            {
              v16 = Mutable == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16 && v15 != 0)
            {
              CFArrayAppendValue(Mutable, v15);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      if (!self->_serviceToActiveAccountsMap)
      {
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v19 = self->_serviceToActiveAccountsMap;
        self->_serviceToActiveAccountsMap = v18;
      }

      v8 = Mutable;
      if (v8)
      {
        CFDictionarySetValue(self->_serviceToActiveAccountsMap, [v5 internalName], v8);
      }
    }

    activeAccounts = v8;
  }

  else
  {
    activeAccounts = [(IMAccountController *)self activeAccounts];
  }

  return activeAccounts;
}

- (id)operationalAccountsForService:(id)service
{
  v27 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    if (!self->_cachesEnabled || (v6 = self->_serviceToOperationalAccountsMap, [serviceCopy internalName], v7 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v6, "objectForKey:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [(IMAccountController *)self activeAccountsForService:v5, 0];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if ([v15 isOperational])
            {
              v16 = Mutable == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16 && v15 != 0)
            {
              CFArrayAppendValue(Mutable, v15);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      if (!self->_serviceToOperationalAccountsMap)
      {
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        serviceToOperationalAccountsMap = self->_serviceToOperationalAccountsMap;
        self->_serviceToOperationalAccountsMap = v18;
      }

      v8 = Mutable;
      if (v8)
      {
        CFDictionarySetValue(self->_serviceToOperationalAccountsMap, [v5 internalName], v8);
      }
    }

    operationalAccounts = v8;
  }

  else
  {
    operationalAccounts = [(IMAccountController *)self operationalAccounts];
  }

  return operationalAccounts;
}

- (id)connectedAccountsWithServiceCapability:(id)capability
{
  v3 = [(IMAccountController *)self accountsWithServiceCapability:capability];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_1F1B6E140];

  return v4;
}

- (id)connectedAccountsForService:(id)service
{
  v34 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = serviceCopy;
  if (serviceCopy)
  {
    if (self->_cachesEnabled && (v6 = self->_serviceToConnectedAccountsMap, [serviceCopy internalName], v7 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v6, "objectForKey:", v7), Mutable = objc_claimAutoreleasedReturnValue(), v7, Mutable))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = Mutable;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Caches were enabled, cached connected accounts are %@", buf, 0xCu);
        }
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [(IMAccountController *)self accountsForService:v5, 0];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v11)
      {
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            if (([v14 isConnected] & (Mutable != 0) & (v14 != 0)) == 1)
            {
              CFArrayAppendValue(Mutable, v14);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v11);
      }

      if (!self->_serviceToConnectedAccountsMap)
      {
        v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        serviceToConnectedAccountsMap = self->_serviceToConnectedAccountsMap;
        self->_serviceToConnectedAccountsMap = v15;
      }

      if (Mutable)
      {
        v17 = self->_serviceToConnectedAccountsMap;
        v18 = Mutable;
        CFDictionarySetValue(v17, [v5 internalName], v18);
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          internalName = [v5 internalName];
          *buf = 138412546;
          v30 = internalName;
          v31 = 2112;
          v32 = Mutable;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "For service %@, connected accounts are %@", buf, 0x16u);
        }
      }
    }

    connectedAccounts2 = Mutable;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        connectedAccounts = [(IMAccountController *)self connectedAccounts];
        *buf = 138412290;
        v30 = connectedAccounts;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Service is nil, connected accounts are %@", buf, 0xCu);
      }
    }

    connectedAccounts2 = [(IMAccountController *)self connectedAccounts];
  }

  return connectedAccounts2;
}

- (id)accountsWithCapability:(unint64_t)capability
{
  v21 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy->_accounts;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 hasCapability:{capability, v16}];
        if (Mutable)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        if (v14 == 1)
        {
          CFArrayAppendValue(Mutable, v11);
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);

  return Mutable;
}

- (id)operationalAccountsWithCapability:(unint64_t)capability
{
  v21 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(IMAccountController *)selfCopy accountsWithCapability:capability, 0];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isOperational])
        {
          isActive = [v11 isActive];
          v13 = !Mutable || v11 == 0;
          v14 = v13 ? 0 : isActive;
          if (v14 == 1)
          {
            CFArrayAppendValue(Mutable, v11);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);

  return Mutable;
}

- (id)connectedAccountsWithCapability:(unint64_t)capability
{
  v20 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(IMAccountController *)self accountsWithCapability:capability, 0];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isConnected])
        {
          v12 = Mutable == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && v11 != 0)
        {
          CFArrayAppendValue(Mutable, v11);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return Mutable;
}

- (BOOL)canDeleteAccount:(id)account
{
  accountCopy = account;
  service = [accountCopy service];
  if ([service isPersistent] & 1) != 0 || (objc_msgSend(accountCopy, "isManaged"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    service2 = [accountCopy service];
    v5 = [service2 shouldDisableDeactivation] ^ 1;
  }

  return v5;
}

- (BOOL)accountLogoutable:(id)logoutable
{
  v18 = *MEMORY[0x1E69E9840];
  logoutableCopy = logoutable;
  v5 = [(IMAccountController *)self accountActive:logoutableCopy];
  v6 = [(IMAccountController *)self isAccountKeyCDPSyncingOrWaitingForUser:logoutableCopy];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v5 || v6)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (v5)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      if (v6)
      {
        v8 = @"YES";
      }

      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "account is logoutable: %@, account is active: %@, account is CDPSyncing Or WaitingForUser: %@", &v12, 0x20u);
    }
  }

  return v5 || v6;
}

- (BOOL)addAccount:(id)account locally:(BOOL)locally
{
  locallyCopy = locally;
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  service = [accountCopy service];
  isPersistent = [service isPersistent];

  if (isPersistent && ([accountCopy service], v9 = objc_claimAutoreleasedReturnValue(), -[IMAccountController accountsForService:](self, "accountsForService:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v11))
  {
    v12 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = [(NSArray *)selfCopy->_accounts containsObjectIdenticalTo:accountCopy];
    objc_sync_exit(selfCopy);

    if ((v14 & 1) == 0)
    {
      if (!locallyCopy && IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v32 = 138412290;
          v33 = accountCopy;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Adding account: %@", &v32, 0xCu);
        }
      }

      v16 = selfCopy;
      objc_sync_enter(v16);
      v17 = [(NSArray *)selfCopy->_accounts arrayByAddingObject:accountCopy];
      [(IMAccountController *)v16 setAccounts:v17];

      v18 = accountCopy;
      v19 = v18;
      if (v18)
      {
        CFDictionarySetValue(v16->_accountMap, [v18 uniqueID], v18);
      }

      [(NSMutableDictionary *)v16->_serviceToAccountsMap removeAllObjects];
      [(NSMutableDictionary *)v16->_serviceToActiveAccountsMap removeAllObjects];
      objc_sync_exit(v16);

      if (![(IMAccountController *)v16 readOnly]&& !locallyCopy)
      {
        v20 = +[IMDaemonController sharedController];
        remoteDaemon = [v20 remoteDaemon];
        uniqueID = [v19 uniqueID];
        dictionary = [v19 dictionary];
        service2 = [v19 service];
        internalName = [service2 internalName];
        [remoteDaemon addAccount:uniqueID defaults:dictionary service:internalName];
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__k_IMAccountControllerUpdatedNotification" object:v19];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 __mainThreadPostNotificationName:@"__kIMAccountControllerUpdatedNotification" object:v19];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 __mainThreadPostNotificationName:@"__kIMAccountControllerAccountAddedNotification" object:v19];

      [(IMAccountController *)v16 _rebuildOperationalAccountsCache:1];
      v29 = +[IMParentalControls standardControls];
      v30 = [v29 okToConnectAccount:v19];

      if ((v30 & 1) == 0)
      {
        [(IMAccountController *)v16 deactivateAccount:v19 withDisable:1];
      }
    }

    v12 = 1;
  }

  return v12;
}

- (BOOL)deleteAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = accountCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Client request to delete account: %@", &v8, 0xCu);
    }
  }

  v6 = [(IMAccountController *)self deleteAccount:accountCopy locally:0];

  return v6;
}

- (BOOL)deleteAccount:(id)account locally:(BOOL)locally
{
  locallyCopy = locally;
  v29 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  service = [accountCopy service];
  shouldDisableDeactivation = [service shouldDisableDeactivation];

  if (shouldDisableDeactivation)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_26:
      v23 = 0;
      goto LABEL_27;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = accountCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Someone tried to delete an account that can't be deactivated, you can't do this (%@)", &v25, 0xCu);
    }

LABEL_5:

    goto LABEL_26;
  }

  if (!locallyCopy)
  {
    if ([accountCopy supportsRegistration] && objc_msgSend(accountCopy, "accountType") == 2)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_26;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Someone tried to delete a phone account, you can't do this", &v25, 2u);
      }

      goto LABEL_5;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v25 = 138412546;
        v26 = accountCopy;
        v27 = 2112;
        v28 = @"NO";
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Deleting account: %@  (Locally: %@)", &v25, 0x16u);
      }
    }
  }

  if ([accountCopy isConnected])
  {
    [accountCopy logoutAccount];
  }

  if ([(IMAccountController *)self accountActive:accountCopy]&& ![(IMAccountController *)self deactivateAccount:accountCopy])
  {
    goto LABEL_26;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountControllerAccountWillBeRemovedNotification" object:accountCopy];

  [accountCopy accountWillBeRemoved];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(NSArray *)selfCopy->_accounts mutableCopy];
  [v13 removeObject:accountCopy];
  [(IMAccountController *)selfCopy setAccounts:v13];
  uniqueID = [accountCopy uniqueID];

  if (uniqueID)
  {
    accountMap = selfCopy->_accountMap;
    uniqueID2 = [accountCopy uniqueID];
    [(NSMutableDictionary *)accountMap removeObjectForKey:uniqueID2];
  }

  [(NSMutableDictionary *)selfCopy->_serviceToAccountsMap removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_serviceToActiveAccountsMap removeAllObjects];

  objc_sync_exit(selfCopy);
  if (![(IMAccountController *)selfCopy readOnly]&& !locallyCopy)
  {
    v17 = +[IMDaemonController sharedController];
    remoteDaemon = [v17 remoteDaemon];
    uniqueID3 = [accountCopy uniqueID];
    [remoteDaemon removeAccount:uniqueID3];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 __mainThreadPostNotificationName:@"__k_IMAccountControllerUpdatedNotification" object:accountCopy];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 __mainThreadPostNotificationName:@"__kIMAccountControllerUpdatedNotification" object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 __mainThreadPostNotificationName:@"__kIMAccountControllerAccountRemovedNotification" object:accountCopy];

  v23 = 1;
  [(IMAccountController *)selfCopy _rebuildOperationalAccountsCache:1];
LABEL_27:

  return v23;
}

- (BOOL)deactivateAccounts:(id)accounts withDisable:(BOOL)disable
{
  disableCopy = disable;
  v56 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v7 = MEMORY[0x1E695E9C0];
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Mutable = CFArrayCreateMutable(0, 0, v7);
  v37 = disableCopy;
  if (disableCopy && ![(IMAccountController *)self readOnly]&& IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = accountsCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Deactivating accounts: %@", buf, 0xCu);
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = accountsCopy;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v11)
  {
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        if ([(IMAccountController *)self accountLogoutable:v14])
        {
          service = [v14 service];
          shouldDisableDeactivation = [service shouldDisableDeactivation];

          if ((shouldDisableDeactivation & 1) == 0)
          {
            if (Mutable && v14)
            {
              CFArrayAppendValue(Mutable, v14);
            }

            uniqueID = [v14 uniqueID];
            v18 = uniqueID == 0;

            if (!v18 && theArray != 0)
            {
              uniqueID2 = [v14 uniqueID];
              v20 = uniqueID2 == 0;

              if (!v20)
              {
                uniqueID3 = [v14 uniqueID];
                CFArrayAppendValue(theArray, uniqueID3);
              }
            }
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v11);
  }

  if ([(__CFArray *)Mutable count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = Mutable;
    v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v23)
    {
      v24 = *v44;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v43 + 1) + 8 * j);
          if ([v26 isConnected])
          {
            [v26 logoutAccount];
          }
        }

        v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v23);
    }

    if (v37 && ![(IMAccountController *)self readOnly])
    {
      v27 = +[IMDaemonController sharedController];
      remoteDaemon = [v27 remoteDaemon];
      [remoteDaemon deactivateAccounts:theArray];
    }

    [(NSMutableDictionary *)self->_serviceToActiveAccountsMap removeAllObjects];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v22;
    v30 = [(__CFArray *)v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v30)
    {
      v31 = *v40;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v39 + 1) + 8 * k);
          service2 = [v33 service];
          shouldDisableDeactivation2 = [service2 shouldDisableDeactivation];

          if ((shouldDisableDeactivation2 & 1) == 0)
          {
            [v33 setIsActive:0];
            [v33 accountDidDeactivate];
          }
        }

        v30 = [(__CFArray *)v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v30);
    }

    [(IMAccountController *)self _rebuildOperationalAccountsCache:1];
  }

  return 1;
}

- (BOOL)_deactivateAccount:(id)account
{
  accountCopy = account;
  service = [accountCopy service];
  shouldDisableDeactivation = [service shouldDisableDeactivation];

  v7 = (shouldDisableDeactivation & 1) == 0 && [(IMAccountController *)self deactivateAccount:accountCopy withDisable:1];
  return v7;
}

- (BOOL)deactivateAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = accountCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Client request to deactivate account: %@", &v8, 0xCu);
    }
  }

  v6 = [(IMAccountController *)self _deactivateAccount:accountCopy];

  return v6;
}

- (BOOL)deactivateAccounts:(id)accounts
{
  v10 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = accountsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Client request to deactivate accounts: %@", &v8, 0xCu);
    }
  }

  v6 = [(IMAccountController *)self _deactivateAccounts:accountsCopy];

  return v6;
}

- (BOOL)deactivateAccount:(id)account withDisable:(BOOL)disable
{
  disableCopy = disable;
  accountCopy = account;
  service = [accountCopy service];
  shouldDisableDeactivation = [service shouldDisableDeactivation];

  if (shouldDisableDeactivation)
  {
    v9 = 0;
  }

  else if (accountCopy)
  {
    v10 = IMSingleObjectArray();
    v9 = [(IMAccountController *)self deactivateAccounts:v10 withDisable:disableCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)activateAccounts:(id)accounts force:(BOOL)force locally:(BOOL)locally
{
  locallyCopy = locally;
  v75 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v48 = [(IMAccountController *)self canActivateAccounts:?];
  if (v48)
  {
    v47 = locallyCopy;
    if (!locallyCopy && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = accountsCopy;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Activating accounts: %@", buf, 0xCu);
      }
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v8 = accountsCopy;
    v9 = [v8 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v9)
    {
      v10 = *v66;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v66 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v65 + 1) + 8 * i);
          if (![(IMAccountController *)self accountActive:v12])
          {
            if (theArray && v12)
            {
              CFArrayAppendValue(theArray, v12);
            }

            uniqueID = [v12 uniqueID];
            v14 = uniqueID == 0;

            if (!v14 && Mutable != 0)
            {
              uniqueID2 = [v12 uniqueID];
              v16 = uniqueID2 == 0;

              if (!v16)
              {
                uniqueID3 = [v12 uniqueID];
                CFArrayAppendValue(Mutable, uniqueID3);
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v9);
    }

    if ([(__CFArray *)theArray count])
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = theArray;
      v19 = [(__CFArray *)obj countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v19)
      {
        v20 = *v62;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v62 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v61 + 1) + 8 * j);
            service = [v22 service];
            allowsMultipleConnections = [service allowsMultipleConnections];

            if ((allowsMultipleConnections & 1) == 0)
            {
              service2 = [v22 service];
              if (service2)
              {
                service3 = [v22 service];
                v27 = [v18 containsObject:service3];

                if ((v27 & 1) == 0)
                {
                  service4 = [v22 service];
                  [v18 addObject:service4];
                }
              }
            }
          }

          v19 = [(__CFArray *)obj countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v19);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v29 = v18;
      v30 = [v29 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v30)
      {
        v31 = *v58;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v58 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = [(IMAccountController *)self activeAccountsForService:*(*(&v57 + 1) + 8 * k)];
            __imSetFromArray = [v33 __imSetFromArray];
            v35 = [__imSetFromArray mutableCopy];

            __imSetFromArray2 = [v8 __imSetFromArray];
            if ([__imSetFromArray2 count])
            {
              [v35 minusSet:__imSetFromArray2];
            }

            if ([v35 count])
            {
              allObjects = [v35 allObjects];
              [(IMAccountController *)self deactivateAccounts:allObjects withDisable:1];
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v30);
      }

      if (![(IMAccountController *)self readOnly]&& !v47)
      {
        v38 = +[IMDaemonController sharedController];
        remoteDaemon = [v38 remoteDaemon];
        [remoteDaemon activateAccounts:Mutable];
      }

      [(NSMutableDictionary *)self->_serviceToActiveAccountsMap removeAllObjects];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = obj;
      v41 = [(__CFArray *)v40 countByEnumeratingWithState:&v53 objects:v69 count:16];
      if (v41)
      {
        v42 = *v54;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v54 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v53 + 1) + 8 * m);
            [v44 setIsActive:1];
            [v44 accountDidBecomeActive];
          }

          v41 = [(__CFArray *)v40 countByEnumeratingWithState:&v53 objects:v69 count:16];
        }

        while (v41);
      }

      [(IMAccountController *)self _rebuildOperationalAccountsCache:1];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v74 = accountsCopy;
      _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Accounts could not be activated: %@", buf, 0xCu);
    }
  }

  return v48;
}

- (BOOL)activateAccount:(id)account force:(BOOL)force locally:(BOOL)locally
{
  if (!account)
  {
    return 0;
  }

  locallyCopy = locally;
  forceCopy = force;
  v8 = IMSingleObjectArray();
  LOBYTE(locallyCopy) = [(IMAccountController *)self activateAccounts:v8 force:forceCopy locally:locallyCopy];

  return locallyCopy;
}

- (BOOL)activateAndHandleReconnectAccounts:(id)accounts
{
  v22 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  activeAccounts = [(IMAccountController *)self activeAccounts];
  v6 = [activeAccounts count];

  v7 = [(IMAccountController *)self activateAccounts:accountsCopy force:1 locally:0];
  if (v7)
  {
    if (!v6 || (+[IMDaemonController sharedController](IMDaemonController, "sharedController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 listener], v9 = objc_claimAutoreleasedReturnValue(), IsOnline = IMPersonStatusIsOnline(objc_msgSend(v9, "myStatus")), v9, v8, IsOnline))
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = accountsCopy;
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v17 + 1) + 8 * v15++) loginAccount];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }
  }

  return v7;
}

- (BOOL)activateAndHandleReconnectAccount:(id)account
{
  if (!account)
  {
    return 0;
  }

  v4 = IMSingleObjectArray();
  LOBYTE(self) = [(IMAccountController *)self activateAndHandleReconnectAccounts:v4];

  return self;
}

- (BOOL)accountConnecting:(id)connecting
{
  connectingCopy = connecting;
  if (-[IMAccountController accountActive:](self, "accountActive:", connectingCopy) && [connectingCopy isConnecting])
  {
    v5 = [connectingCopy isConnected] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)accountConnected:(id)connected
{
  connectedCopy = connected;
  if ([(IMAccountController *)self accountActive:connectedCopy])
  {
    isConnected = [connectedCopy isConnected];
  }

  else
  {
    isConnected = 0;
  }

  return isConnected;
}

- (BOOL)canActivateAccount:(id)account
{
  v17 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[IMParentalControls standardControls];
  v6 = [v5 okToConnectAccount:accountCopy];

  if (v6)
  {
    if (-[IMAccountController accountActive:](self, "accountActive:", accountCopy) || ([accountCopy service], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "allowsMultipleConnections"), v7, (v8 & 1) != 0) || (objc_msgSend(accountCopy, "service"), v9 = objc_claimAutoreleasedReturnValue(), -[IMAccountController connectedAccountsForService:](self, "connectedAccountsForService:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, !v11))
    {
      v13 = 1;
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = accountCopy;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Not activating account since we already have active accounts of this type for account: %@", &v15, 0xCu);
      }

LABEL_12:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = accountCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Parental controls disabled account: %@   not allowed to activate", &v15, 0xCu);
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)canActivateAccounts:(id)accounts
{
  v17 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  if ([accountsCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = accountsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![(IMAccountController *)self canActivateAccount:*(*(&v12 + 1) + 8 * i), v12])
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)bestAccountFromAccounts:(id)accounts
{
  v25 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [accountsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v21;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(accountsCopy);
      }

      v9 = *(*(&v20 + 1) + 8 * i);
      if (!v6)
      {
        v6 = v9;
        continue;
      }

      v10 = +[IMAccountController sharedInstance];
      if ([v10 accountActive:v6])
      {
      }

      else
      {
        v11 = +[IMAccountController sharedInstance];
        v12 = [v11 accountActive:v9];

        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (([v6 isConnected] & 1) == 0 && objc_msgSend(v9, "isConnected"))
      {
        goto LABEL_17;
      }

      v13 = +[IMAccountController sharedInstance];
      v14 = [v13 accountActive:v6];
      v15 = +[IMAccountController sharedInstance];
      if (v14 != [v15 accountActive:v9] || (v16 = objc_msgSend(v6, "isConnected"), v16 != objc_msgSend(v9, "isConnected")))
      {

        continue;
      }

      v17 = IMComparePersonStatus([v6 myStatus], objc_msgSend(v9, "myStatus"));

      if (v17 == NSOrderedAscending)
      {
LABEL_17:
        v18 = v9;

        v6 = v18;
        continue;
      }
    }

    v5 = [accountsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v5);
LABEL_22:

  return v6;
}

- (id)iMessageAccountForLastAddressedHandle:(id)handle simID:(id)d
{
  v71 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  dCopy = d;
  if ([dCopy length])
  {
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
    v40 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy];

    if (![handleCopy length])
    {
      phoneNumber = [v40 phoneNumber];

      handleCopy = phoneNumber;
    }
  }

  else
  {
    v40 = 0;
  }

  if ([handleCopy length])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v11 = +[IMServiceImpl iMessageService];
    v12 = [(IMAccountController *)self operationalAccountsForService:v11];

    v13 = [v12 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v13)
    {
      v14 = *v58;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          if ([v16 _isUsableForSending])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v13);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v10;
    v17 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v17)
    {
      v44 = 0;
      v18 = *v54;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v53 + 1) + 8 * j);
          if ([v20 accountType] == 2)
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            aliases = [v20 aliases];
            v22 = [aliases countByEnumeratingWithState:&v49 objects:v68 count:16];
            if (v22)
            {
              v23 = *v50;
              while (2)
              {
                for (k = 0; k != v22; ++k)
                {
                  if (*v50 != v23)
                  {
                    objc_enumerationMutation(aliases);
                  }

                  if ([MEMORY[0x1E69A51E8] isPhoneNumber:handleCopy equivalentToExistingPhoneNumber:*(*(&v49 + 1) + 8 * k)])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v25 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v62 = handleCopy;
                        v63 = 2112;
                        v64 = v20;
                        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Alias %@  matched phone based iMessage account: %@, selecting it", buf, 0x16u);
                      }
                    }

                    v26 = v20;

                    v44 = v26;
                    goto LABEL_35;
                  }
                }

                v22 = [aliases countByEnumeratingWithState:&v49 objects:v68 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

LABEL_35:
          }
        }

        v17 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v17);

      if (v44)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }

    HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = obj;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v67 count:16];
    if (!v30)
    {
LABEL_59:

LABEL_73:
      v44 = 0;
      goto LABEL_74;
    }

    v31 = *v46;
    if (v41)
    {
      v32 = HasMultipleActiveSubscriptions;
    }

    else
    {
      v32 = 0;
    }

LABEL_50:
    v33 = 0;
    while (1)
    {
      if (*v46 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v45 + 1) + 8 * v33);
      if (v32 && [*(*(&v45 + 1) + 8 * v33) accountType] == 1)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_68;
        }

        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v62 = handleCopy;
          v63 = 2112;
          v64 = v34;
          _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Alias %@  did not match any accounts, selecting Apple ID account %@", buf, 0x16u);
        }

        goto LABEL_67;
      }

      if ([v34 accountType] != 2)
      {
        aliases2 = [v34 aliases];
        v36 = [aliases2 containsObject:handleCopy];

        if (v36)
        {
          break;
        }
      }

      if (v30 == ++v33)
      {
        v30 = [v29 countByEnumeratingWithState:&v45 objects:v67 count:16];
        if (v30)
        {
          goto LABEL_50;
        }

        goto LABEL_59;
      }
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_68;
    }

    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v62 = handleCopy;
      v63 = 2112;
      v64 = v34;
      _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Alias %@  matched account: %@, selecting it", buf, 0x16u);
    }

LABEL_67:

LABEL_68:
    v44 = v34;

    if (!v44)
    {
      goto LABEL_73;
    }

LABEL_69:
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v62 = v44;
        v63 = 2112;
        v64 = handleCopy;
        v65 = 2112;
        v66 = dCopy;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Returning iMessage account %@ for lastAddressedHandle %@ and context %@", buf, 0x20u);
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v62 = dCopy;
      v63 = 2112;
      v64 = v41;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Returning nil account because senderLastAddressedHandle is nil for simID %@ and context %@", buf, 0x16u);
    }
  }

  v44 = 0;
LABEL_75:

  return v44;
}

- (id)bestAccountWithCapability:(unint64_t)capability
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(IMAccountController *)self operationalAccountsWithCapability:?];
  if ([v5 count])
  {
    v6 = [IMAccountController bestAccountFromAccounts:v5];
LABEL_8:

    goto LABEL_9;
  }

  v7 = [(IMAccountController *)self connectedAccountsWithCapability:capability];
  if ([v7 count])
  {
    v6 = [IMAccountController bestAccountFromAccounts:v7];
LABEL_7:

    goto LABEL_8;
  }

  v8 = [(IMAccountController *)self accountsWithCapability:capability];
  if ([v8 count])
  {
    v6 = [IMAccountController bestAccountFromAccounts:v8];

    goto LABEL_7;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [IMServiceImpl servicesWithCapability:capability, 0];
  v10 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = *v19;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v18 + 1) + 8 * i);
      v15 = [(IMAccountController *)self operationalAccountsForService:v14];
      if ([v15 count])
      {
        v6 = [IMAccountController bestAccountFromAccounts:v15];
LABEL_27:

        goto LABEL_8;
      }

      v16 = [(IMAccountController *)self connectedAccountsForService:v14];
      if ([v16 count])
      {
        v6 = [IMAccountController bestAccountFromAccounts:v16];
LABEL_26:

        goto LABEL_27;
      }

      v17 = [(IMAccountController *)self accountsForService:v14];
      if ([v17 count])
      {
        v6 = [IMAccountController bestAccountFromAccounts:v17];

        goto LABEL_26;
      }
    }

    v11 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v6 = [(IMAccountController *)self bestActiveAccountForService:0];
LABEL_9:

  return v6;
}

- (id)mostLoggedInAccount
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accounts = [(IMAccountController *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        loginStatus = [v9 loginStatus];
        if (loginStatus > v5)
        {
          v11 = loginStatus;
          v12 = v9;

          v5 = v11;
          v6 = v12;
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)aimAccount
{
  v3 = +[IMServiceImpl aimService];
  v4 = [(IMAccountController *)self bestAccountForService:v3];

  return v4;
}

- (id)jabberAccount
{
  v3 = +[IMServiceImpl jabberService];
  v4 = [(IMAccountController *)self bestAccountForService:v3];

  return v4;
}

- (void)_disableCache
{
  self->_cachesEnabled = 0;
  serviceToConnectedAccountsMap = self->_serviceToConnectedAccountsMap;
  self->_serviceToConnectedAccountsMap = 0;

  serviceToOperationalAccountsMap = self->_serviceToOperationalAccountsMap;
  self->_serviceToOperationalAccountsMap = 0;
}

- (void)_rebuildOperationalAccountsCache:(BOOL)cache
{
  v17 = *MEMORY[0x1E69E9840];
  p_operationalAccountsCache = &self->_operationalAccountsCache;
  __imSetFromArray = [(NSArray *)self->_operationalAccountsCache __imSetFromArray];
  v6 = *p_operationalAccountsCache;
  *p_operationalAccountsCache = 0;

  operationalAccounts = [(IMAccountController *)self operationalAccounts];
  __imSetFromArray2 = [operationalAccounts __imSetFromArray];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = __imSetFromArray;
      v15 = 2112;
      v16 = __imSetFromArray2;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Rebuilding operational accounts, old: (%@)  new: (%@)", &v13, 0x16u);
    }
  }

  v10 = [__imSetFromArray2 count];
  if (v10 != [__imSetFromArray count] || (objc_msgSend(__imSetFromArray2, "isEqualToSet:", __imSetFromArray) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, " ** Posting operational accounts changed", &v13, 2u);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountControllerOperationalAccountsChangedNotification" object:0];
  }
}

- (void)setNetworkDataAvailable:(BOOL)available
{
  if (self->_networkDataAvailable != available)
  {
    self->_networkDataAvailable = available;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMChatConnectivityChangedNotification" object:0];
  }
}

- (BOOL)hasRelayApprovedAccount
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  accounts = [(IMAccountController *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v7 + 1) + 8 * i) isSMSRelayCapable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accounts countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)senderIdentifiers
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  accounts = [(IMAccountController *)self accounts];
  v5 = [accounts countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        vettedAliases = [v9 vettedAliases];
        v11 = [vettedAliases countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(vettedAliases);
              }

              v15 = *(*(&v17 + 1) + 8 * j);
              if ([v15 length])
              {
                [v3 addObject:v15];
              }
            }

            v12 = [vettedAliases countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [accounts countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_bestOperationalAccountForSendingForService:(id)service
{
  v71 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v45 = serviceCopy;
  v7 = [(IMAccountController *)self operationalAccountsForService:serviceCopy];
  v8 = [v7 countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v8)
  {
    v9 = *v60;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v59 + 1) + 8 * i);
        if ([v11 _isUsableForSending])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v8);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v13)
  {
    v14 = *v56;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v55 + 1) + 8 * j);
        aliases = [v16 aliases];
        v18 = [aliases count] == 0;

        if (!v18)
        {
          aliases2 = [v16 aliases];
          [v5 addObjectsFromArray:aliases2];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v13);
  }

  allObjects = [v5 allObjects];
  v46 = _IDSCopyOrderedAliasStrings();

  if (![v46 count])
  {
    goto LABEL_54;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v22)
  {
    v23 = *v52;
LABEL_22:
    v24 = 0;
    while (1)
    {
      if (*v52 != v23)
      {
        objc_enumerationMutation(v21);
      }

      v25 = *(*(&v51 + 1) + 8 * v24);
      if ([v25 accountType] == 2)
      {
        aliases3 = [v25 aliases];
        firstObject = [v46 firstObject];
        v28 = [aliases3 containsObject:firstObject];

        if (v28)
        {
          break;
        }
      }

      if (v22 == ++v24)
      {
        v22 = [v21 countByEnumeratingWithState:&v51 objects:v68 count:16];
        if (v22)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        firstObject2 = [v46 firstObject];
        *buf = 138412546;
        v65 = firstObject2;
        v66 = 2112;
        v67 = v25;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Alias %@  matched phone based account: %@, selecting it", buf, 0x16u);
      }
    }

    anyObject = v25;

    if (anyObject)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_29:
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = v21;
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (!v33)
  {
LABEL_44:

LABEL_54:
    anyObject = [v12 anyObject];
    goto LABEL_55;
  }

  v34 = *v48;
LABEL_37:
  v35 = 0;
  while (1)
  {
    if (*v48 != v34)
    {
      objc_enumerationMutation(v32);
    }

    v36 = *(*(&v47 + 1) + 8 * v35);
    if ([v36 accountType] != 2)
    {
      aliases4 = [v36 aliases];
      firstObject3 = [v46 firstObject];
      v39 = [aliases4 containsObject:firstObject3];

      if (v39)
      {
        break;
      }
    }

    if (v33 == ++v35)
    {
      v33 = [v32 countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (v33)
      {
        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      firstObject4 = [v46 firstObject];
      *buf = 138412546;
      v65 = firstObject4;
      v66 = 2112;
      v67 = v36;
      _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Alias %@  matched account: %@, selecting it", buf, 0x16u);
    }
  }

  anyObject = v36;

  if (!anyObject)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v65 = anyObject;
      _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Returning selected best account: %@", buf, 0xCu);
    }
  }

LABEL_55:
  v43 = anyObject;

  return v43;
}

- (id)_bestAccountForAddresses:(id)addresses
{
  addressesCopy = addresses;
  v5 = +[IMServiceImpl iMessageService];
  v6 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(addressesCopy, 1, v5);

  if (([v6 _isUsableForSending] & 1) == 0)
  {
    v7 = +[IMServiceImpl smsService];
    if (v7)
    {
      v8 = [(IMAccountController *)self accountsForService:v7];
      __imFirstObject = [v8 __imFirstObject];

      v6 = __imFirstObject;
    }
  }

  return v6;
}

- (BOOL)receiverIsMyMention:(id)mention
{
  v19 = *MEMORY[0x1E69E9840];
  mentionCopy = mention;
  if ([mentionCopy length])
  {
    v5 = IMChatCanonicalIDSIDsForAddress();
    v6 = MEMORY[0x1AC56C3F0]();

    if ([v6 length])
    {
      [(IMAccountController *)self connectedAccountsWithServiceCapability:*MEMORY[0x1E69A79A8]];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v17 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            aliases = [*(*(&v14 + 1) + 8 * i) aliases];
            v12 = [aliases containsObject:v6];

            if (v12)
            {
              LOBYTE(v8) = 1;
              goto LABEL_14;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)metionedHandleMatchesMeCard:(id)card
{
  cardCopy = card;
  if ([(IMAccountController *)self receiverIsMyMention:cardCopy])
  {
    v5 = 1;
  }

  else
  {
    if (MEMORY[0x1AC56C3C0](cardCopy))
    {
      v6 = IMNormalizePhoneNumber();
    }

    else
    {
      v6 = cardCopy;
    }

    v7 = v6;
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    v9 = IMMentionContactKeysForMe();
    v10 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:v9];

    v11 = IMMentionMeTokensForContact();
    v5 = [v11 containsObject:v7];
  }

  return v5;
}

- (int64_t)activeAccountsAreEligibleForFilterUnknownSendersByDefault
{
  v56 = *MEMORY[0x1E69E9840];
  activeAccounts = [(IMAccountController *)self activeAccounts];
  if ([activeAccounts count])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v3 = activeAccounts;
    v4 = [v3 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v50;
      v7 = MEMORY[0x1E69A7AD0];
      v39 = activeAccounts;
      v40 = *v50;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v50 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v49 + 1) + 8 * i);
          serviceName = [v9 serviceName];
          v11 = [serviceName isEqualToString:*v7];

          if ((v11 & 1) == 0)
          {
            v12 = MEMORY[0x1E69A82A0];
            countryCode = [v9 countryCode];
            if ([v12 accountCountryIsCandidateForHawking:countryCode])
            {
              v14 = 1;
            }

            else
            {
              v15 = MEMORY[0x1E69A82A0];
              loginIMHandle = [v9 loginIMHandle];
              countryCode2 = [loginIMHandle countryCode];
              v14 = [v15 accountCountryIsCandidateForHawking:countryCode2];
            }

            v18 = MEMORY[0x1E69A82A0];
            countryCode3 = [v9 countryCode];
            if ([v18 receiverIsCandidateForDefaultAppleSMSFilter:countryCode3])
            {
              goto LABEL_39;
            }

            v20 = MEMORY[0x1E69A82A0];
            loginIMHandle2 = [v9 loginIMHandle];
            countryCode4 = [loginIMHandle2 countryCode];
            LODWORD(v20) = [v20 receiverIsCandidateForDefaultAppleSMSFilter:countryCode4];

            if ((v14 | v20))
            {
              goto LABEL_43;
            }

            aliases = [v9 aliases];
            v24 = [aliases count];

            if (v24)
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              countryCode3 = [v9 aliases];
              v25 = [countryCode3 countByEnumeratingWithState:&v45 objects:v54 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v46;
LABEL_16:
                v28 = 0;
                while (1)
                {
                  if (*v46 != v27)
                  {
                    objc_enumerationMutation(countryCode3);
                  }

                  v29 = *(*(&v45 + 1) + 8 * v28);
                  if ([MEMORY[0x1E69A82A0] receiverIsCandidateForHawking:v29] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69A82A0], "receiverIsCandidateForDefaultAppleSMSFilter:", v29))
                  {
                    break;
                  }

                  if (v26 == ++v28)
                  {
                    v26 = [countryCode3 countByEnumeratingWithState:&v45 objects:v54 count:16];
                    if (v26)
                    {
                      goto LABEL_16;
                    }

                    goto LABEL_23;
                  }
                }

LABEL_39:
                activeAccounts = v39;
                v36 = 1;
                goto LABEL_40;
              }

LABEL_23:

              v6 = v40;
              v7 = MEMORY[0x1E69A7AD0];
            }

            else
            {
              v30 = MEMORY[0x1E69A82A0];
              countryCode3 = [v9 login];
              if ([v30 receiverIsCandidateForHawking:countryCode3])
              {
                goto LABEL_39;
              }

              v31 = MEMORY[0x1E69A82A0];
              login = [v9 login];
              LOBYTE(v31) = [v31 receiverIsCandidateForDefaultAppleSMSFilter:login];

              v6 = v40;
              v7 = MEMORY[0x1E69A7AD0];
              if (v31)
              {
LABEL_43:
                activeAccounts = v39;
                v36 = 1;
                goto LABEL_41;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v49 objects:v55 count:16];
        activeAccounts = v39;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x1E69A7F58] IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    countryCode3 = v44 = 0u;
    v33 = [countryCode3 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v42;
      v36 = 1;
LABEL_30:
      v37 = 0;
      while (1)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(countryCode3);
        }

        if ([MEMORY[0x1E69A82A0] receiverIsCandidateForDefaultAppleSMSFilter:*(*(&v41 + 1) + 8 * v37)])
        {
          break;
        }

        if (v34 == ++v37)
        {
          v34 = [countryCode3 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v34)
          {
            goto LABEL_30;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:
      v36 = 0;
    }

    v3 = countryCode3;
LABEL_40:

LABEL_41:
  }

  else
  {
    v36 = -1;
  }

  return v36;
}

- (int64_t)activeAccountsAreEligibleForInternationalFiltering
{
  v35 = *MEMORY[0x1E69E9840];
  [(IMAccountController *)self activeAccounts];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = v32 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v6 = MEMORY[0x1E69A7AD0];
    v23 = *v30;
    while (2)
    {
      v7 = 0;
      v24 = v4;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        serviceName = [v8 serviceName];
        v10 = [serviceName isEqualToString:*v6];

        if ((v10 & 1) == 0)
        {
          countryCode = [v8 countryCode];
          loginIMHandle = [v8 loginIMHandle];
          countryCode2 = [loginIMHandle countryCode];

          if ([MEMORY[0x1E69A8320] accountCountryIsCandidateForInternationalFiltering:countryCode] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69A8320], "accountCountryIsCandidateForInternationalFiltering:", countryCode2))
          {
            goto LABEL_24;
          }

          regionID = [v8 regionID];
          if ([MEMORY[0x1E69A8320] accountRegionIsCandidateForInternationalFiltering:regionID])
          {
LABEL_23:

LABEL_24:
            v21 = 1;
            goto LABEL_26;
          }

          aliases = [v8 aliases];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v16 = aliases;
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                if ([MEMORY[0x1E69A8320] receiverIsCandidateForInternationalFiltering:*(*(&v25 + 1) + 8 * i)])
                {

                  goto LABEL_23;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v5 = v23;
          v4 = v24;
          v6 = MEMORY[0x1E69A7AD0];
        }

        ++v7;
      }

      while (v7 != v4);
      v4 = [v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v21 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_26:

  return v21;
}

- (int64_t)activeAccountsAreEligibleForHawking
{
  v40 = *MEMORY[0x1E69E9840];
  activeAccounts = [(IMAccountController *)self activeAccounts];
  if ([activeAccounts count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = activeAccounts;
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v35;
      v7 = MEMORY[0x1E69A7AD0];
      v28 = activeAccounts;
      while (2)
      {
        v8 = 0;
        v29 = v5;
        do
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v34 + 1) + 8 * v8);
          serviceName = [v9 serviceName];
          v11 = [serviceName isEqualToString:*v7];

          if ((v11 & 1) == 0)
          {
            v12 = MEMORY[0x1E69A82A0];
            countryCode = [v9 countryCode];
            if ([v12 accountCountryIsCandidateForHawking:countryCode])
            {
              goto LABEL_25;
            }

            v14 = v3;
            v15 = MEMORY[0x1E69A82A0];
            loginIMHandle = [v9 loginIMHandle];
            countryCode2 = [loginIMHandle countryCode];
            LOBYTE(v15) = [v15 accountCountryIsCandidateForHawking:countryCode2];

            if (v15)
            {
              v26 = 1;
              v3 = v14;
              goto LABEL_27;
            }

            aliases = [v9 aliases];
            v19 = [aliases count];

            v3 = v14;
            if (v19)
            {
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              countryCode = [v9 aliases];
              v20 = [countryCode countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v31;
LABEL_13:
                v23 = 0;
                while (1)
                {
                  if (*v31 != v22)
                  {
                    objc_enumerationMutation(countryCode);
                  }

                  if ([MEMORY[0x1E69A82A0] receiverIsCandidateForHawking:*(*(&v30 + 1) + 8 * v23)])
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [countryCode countByEnumeratingWithState:&v30 objects:v38 count:16];
                    if (v21)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_19;
                  }
                }

LABEL_25:

LABEL_26:
                v26 = 1;
LABEL_27:
                activeAccounts = v28;
                goto LABEL_29;
              }

LABEL_19:

              v5 = v29;
            }

            else
            {
              v24 = MEMORY[0x1E69A82A0];
              login = [v9 login];
              LOBYTE(v24) = [v24 receiverIsCandidateForHawking:login];

              v5 = v29;
              if (v24)
              {
                goto LABEL_26;
              }
            }
          }

          ++v8;
        }

        while (v8 != v5);
        v5 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v26 = 0;
        activeAccounts = v28;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_29:
  }

  else
  {
    v26 = -1;
  }

  return v26;
}

- (int64_t)activeAccountsAreEligibleForAppleSMSFilter
{
  if (![MEMORY[0x1E69A82A0] receiverIsCandidateForAppleSMSFilter])
  {
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Account is eligible for showing SMS Filter.", v4, 2u);
    }
  }

  return 1;
}

- (int64_t)activeAccountsAreEligibleForDefaultAppleSMSFilter
{
  receiverIsCandidateForDefaultAppleSMSFilter = [MEMORY[0x1E69A82A0] receiverIsCandidateForDefaultAppleSMSFilter];
  v3 = IMOSLoggingEnabled();
  if (receiverIsCandidateForDefaultAppleSMSFilter)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Account is eligible for enabling SMS Filter by default.", buf, 2u);
      }
    }

    return 1;
  }

  else
  {
    if (v3)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Account is not eligible for enabling SMS Filter by default.", v7, 2u);
      }
    }

    return 0;
  }
}

- (int64_t)activeAccountsAreEligibleForAppleSMSFilterSubClassification
{
  v2 = 1;
  while (![MEMORY[0x1E69A82A0] receiverIsCandidateForAppleSMSFilterSubClassificationWithSimSlot:v2])
  {
    if (++v2 == 3)
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Account is not eligible for enabling SMS SubClassification.", v6, 2u);
        }
      }

      return 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Account is eligible for enabling SMS SubClassification.", buf, 2u);
    }
  }

  return 1;
}

@end