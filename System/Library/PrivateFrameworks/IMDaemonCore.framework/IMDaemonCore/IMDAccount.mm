@interface IMDAccount
- (BOOL)_isUsableForSending;
- (BOOL)canMakeDowngradeRoutingChecks;
- (BOOL)isActive;
- (BOOL)isDisabled;
- (BOOL)isSMSRelayCapable;
- (BOOL)wasDisabledAutomatically;
- (IMDAccount)initWithAccountID:(id)d defaults:(id)defaults service:(id)service;
- (NSArray)aliases;
- (NSArray)replicationSessions;
- (NSDictionary)registrationAlertInfo;
- (NSString)loginID;
- (id)_registrationInfo;
- (id)accountInfoToPost;
- (id)description;
- (id)profileInfo;
- (int)registrationError;
- (int64_t)accountType;
- (int64_t)profileValidationStatus;
- (int64_t)registrationStatus;
- (void)_createReplicationSessionsIfNecessary;
- (void)_forceSetLoginStatus:(unint64_t)status message:(id)message reason:(int)reason properties:(id)properties;
- (void)createSessionIfNecessary;
- (void)dealloc;
- (void)postAccountCapabilities;
- (void)releaseSession;
- (void)resetReplicationSessions;
- (void)setIsManaged:(BOOL)managed;
- (void)setLoginStatus:(unint64_t)status message:(id)message reason:(int)reason properties:(id)properties;
- (void)setRegistrationStatus:(int64_t)status error:(int)error alertInfo:(id)info;
- (void)setWasDisabledAutomatically:(BOOL)automatically;
- (void)writeAccountDefaults:(id)defaults;
@end

@implementation IMDAccount

- (id)accountInfoToPost
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  accountID = [(IMDAccount *)self accountID];
  if (accountID)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19688], accountID);
  }

  accountDefaults = [(IMDAccount *)self accountDefaults];
  v6 = [accountDefaults count];

  if (v6)
  {
    v7 = *MEMORY[0x277D19678];
    accountDefaults2 = [(IMDAccount *)self accountDefaults];
    CFDictionarySetValue(v3, v7, accountDefaults2);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[IMDServiceSession capabilities](self->_session, "capabilities")}];
  if (v9)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19670], v9);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDAccount loginStatus](self, "loginStatus")}];
  if (v10)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19690], v10);
  }

  serviceLoginStatusMessage = [(IMDAccount *)self serviceLoginStatusMessage];
  if (serviceLoginStatusMessage)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19698], serviceLoginStatusMessage);
  }

  buddyProperties = [(IMDServiceSession *)self->_session buddyProperties];
  v13 = [buddyProperties copy];

  if ([v13 count])
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19668], v13);
  }

  groups = [(IMDServiceSession *)self->_session groups];
  v15 = [groups count];

  if (v15)
  {
    v16 = *MEMORY[0x277D19680];
    groups2 = [(IMDServiceSession *)self->_session groups];
    CFDictionarySetValue(v3, v16, groups2);
  }

  return v3;
}

- (BOOL)isActive
{
  v3 = +[IMDAccountController sharedAccountController];
  accountID = [(IMDAccount *)self accountID];
  v5 = [v3 isAccountActive:accountID];

  return v5;
}

- (NSString)loginID
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v4 = [accountDefaults objectForKey:*MEMORY[0x277D19420]];

  loginID = self->_loginID;
  p_loginID = &self->_loginID;
  if (![(NSString *)loginID isEqualToString:v4])
  {
    objc_storeStrong(p_loginID, v4);
  }

  v7 = *p_loginID;
  v8 = v7;

  return v7;
}

- (IMDAccount)initWithAccountID:(id)d defaults:(id)defaults service:(id)service
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  defaultsCopy = defaults;
  serviceCopy = service;
  v23.receiver = self;
  v23.super_class = IMDAccount;
  v12 = [(IMDAccount *)&v23 init];
  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v25 = dCopy;
        v26 = 2112;
        v27 = defaultsCopy;
        v28 = 2112;
        v29 = serviceCopy;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Creating account id: %@    defaults: %@    on service: %@", buf, 0x20u);
      }
    }

    objc_storeStrong(&v12->_accountID, d);
    objc_storeStrong(&v12->_service, service);
    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] addListener:v12];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [defaultsCopy mutableCopy];
      accountDefaults = v12->_accountDefaults;
      v12->_accountDefaults = v15;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = v12->_accountDefaults;
      v12->_accountDefaults = v18;

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          *buf = 138412546;
          v25 = defaultsCopy;
          v26 = 2112;
          v27 = v21;
          v22 = v21;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "IMDAccount: incoming 'defaults' is not a dictionary, %@, %@", buf, 0x16u);
        }
      }
    }
  }

  return v12;
}

- (void)dealloc
{
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  v4.receiver = self;
  v4.super_class = IMDAccount;
  [(IMDAccount *)&v4 dealloc];
}

- (int64_t)accountType
{
  loginID = [(IMDAccount *)self loginID];
  v4 = [loginID rangeOfString:@"P:"];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  service = [(IMDAccount *)self service];
  supportsAuthorization = [service supportsAuthorization];

  return supportsAuthorization;
}

- (void)setIsManaged:(BOOL)managed
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v7 = [v5 dictionaryWithObject:v6 forKey:*MEMORY[0x277D19428]];
  [(IMDAccount *)self writeAccountDefaults:v7];

  self->_managed = managed;
}

- (BOOL)canMakeDowngradeRoutingChecks
{
  if ([(IMDAccount *)self accountType]!= 2)
  {
    return 0;
  }

  service = [(IMDAccount *)self service];
  v4 = [service supportsCapability:*MEMORY[0x277D1A5D0]];

  return v4;
}

- (BOOL)wasDisabledAutomatically
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:@"AccountManaged"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setWasDisabledAutomatically:(BOOL)automatically
{
  v4 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:automatically];
  v5 = [v4 dictionaryWithObject:v6 forKey:@"AccountManaged"];
  [(IMDAccount *)self writeAccountDefaults:v5];
}

- (BOOL)isDisabled
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  parentalControls = [v3 parentalControls];
  LOBYTE(self) = [parentalControls disableAccount:self];

  return self;
}

- (void)writeAccountDefaults:(id)defaults
{
  v30 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v28 = 2112;
      v29 = defaultsCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ - write account defaults: %@", buf, 0x16u);
    }
  }

  if ([defaultsCopy count])
  {
    v6 = [defaultsCopy mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [defaultsCopy allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [defaultsCopy objectForKey:v11];
          if ([v12 isNull] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v12, "length"))
          {
            [v6 removeObjectForKey:v11];
            [(NSMutableDictionary *)self->_accountDefaults removeObjectForKey:v11];
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_accountDefaults addEntriesFromDictionary:v6];
  }

  v13 = +[IMDBroadcastController sharedProvider];
  service = [(IMDAccount *)self service];
  v15 = [v13 broadcasterForListenersSupportingService:service];
  accountID = [(IMDAccount *)self accountID];
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v18 = [accountDefaults copy];
  [v15 account:accountID defaultsChanged:v18];

  session = [(IMDAccount *)self session];
  [session accountDefaultsChanged:defaultsCopy];

  if ([defaultsCopy count] && !-[IMDAccount isLoading](self, "isLoading") && !-[IMDAccount isManaged](self, "isManaged"))
  {
    service2 = [(IMDAccount *)self service];
    [service2 delayedSaveSettings];
  }
}

- (void)postAccountCapabilities
{
  context = objc_autoreleasePoolPush();
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDAccount *)self service];
  v15 = [v3 broadcasterForListenersSupportingService:service];

  session = [(IMDAccount *)self session];
  accountID = [(IMDAccount *)self accountID];
  accountDefaults = [(IMDAccount *)self accountDefaults];
  blockList = [session blockList];
  allowList = [session allowList];
  blockingMode = [session blockingMode];
  blockIdleStatus = [session blockIdleStatus];
  capabilities = [session capabilities];
  loginStatus = [(IMDAccount *)self loginStatus];
  serviceLoginStatusMessage = [(IMDAccount *)self serviceLoginStatusMessage];
  [v15 account:accountID defaults:accountDefaults blockList:blockList allowList:allowList blockingMode:blockingMode blockIdleStatus:blockIdleStatus status:0 capabilities:capabilities serviceLoginStatus:loginStatus loginStatusMessage:serviceLoginStatusMessage];

  objc_autoreleasePoolPop(context);
}

- (void)createSessionIfNecessary
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(IMDAccount *)self isDisabled])
  {
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      selfCopy6 = self;
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "%@: Account is restricted, not creating session", &v22, 0xCu);
    }

LABEL_27:

    return;
  }

  if ([(IMDAccount *)self wasDisabledAutomatically])
  {
    [(IMDAccount *)self setWasDisabledAutomatically:0];
  }

  session = [(IMDAccount *)self session];

  if (!session)
  {
    service = [(IMDAccount *)self service];
    registration = [service mainService];

    if ([registration supportsOneSessionForAllAccounts])
    {
      v6 = [IMDServiceSession existingServiceSessionForService:registration];
      [(IMDAccount *)self setSession:v6];
    }

    if (self->_session)
    {
      session2 = [(IMDAccount *)self session];
      [session2 addAccount:self];

      registration2 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        session = self->_session;
        v22 = 138412546;
        selfCopy6 = self;
        v24 = 2112;
        v25 = session;
        _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "%@: Reused existing session: %@", &v22, 0x16u);
      }
    }

    else
    {
      v10 = [objc_alloc(-[NSObject sessionClass](registration "sessionClass"))];
      [(IMDAccount *)self setSession:v10];

      registration2 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_session;
        internalName = [registration internalName];
        v13 = NSStringFromClass([registration sessionClass]);
        v22 = 138413058;
        selfCopy6 = self;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = internalName;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "%@: Created active session: %@ of service type: %@   (Session class: %@)", &v22, 0x2Au);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@: Telling session it became active", &v22, 0xCu);
      }
    }

    session3 = [(IMDAccount *)self session];
    [session3 sessionDidBecomeActive];

    service2 = [(IMDAccount *)self service];
    shouldForceAccountsConnected = [service2 shouldForceAccountsConnected];

    if (shouldForceAccountsConnected)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          selfCopy6 = self;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "%@: Forcing login", &v22, 0xCu);
        }
      }

      session4 = [(IMDAccount *)self session];
      [session4 login];
    }

    registration3 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      session5 = [(IMDAccount *)self session];
      v22 = 138412546;
      selfCopy6 = self;
      v24 = 2112;
      v25 = session5;
      _os_log_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEFAULT, "%@: Done setting up session: %@", &v22, 0x16u);
    }

    goto LABEL_27;
  }
}

- (void)_createReplicationSessionsIfNecessary
{
  v41 = *MEMORY[0x277D85DE8];
  if (!self->_replicationSessions)
  {
    session = [(IMDAccount *)self session];
    if (session)
    {
      service = [(IMDAccount *)self service];
      mainService = [service mainService];
      replicationServices = [mainService replicationServices];
      v7 = [replicationServices count];

      if (v7)
      {
        v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
        service2 = [(IMDAccount *)self service];
        mainService2 = [service2 mainService];
        replicationServices2 = [mainService2 replicationServices];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = replicationServices2;
        v11 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v11)
        {
          v13 = *v31;
          *&v12 = 138412802;
          v27 = v12;
          do
          {
            v14 = 0;
            do
            {
              if (*v31 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v30 + 1) + 8 * v14);
              v16 = +[IMDAccountController sharedAccountController];
              v17 = [v16 activeAccountsForService:v15];

              session2 = [(IMDAccount *)self session];
              v19 = [session2 preferredAccountForReplicationOnService:v15 eligibleAccounts:v17];

              if (v19)
              {
                v20 = objc_alloc([v15 sessionClass]);
                session3 = [(IMDAccount *)self session];
                v22 = [v20 initWithAccount:v19 service:v15 replicatingForSession:session3];

                [v22 sessionDidBecomeActive];
                [v29 addObject:v22];
              }

              else if (IMOSLoggingEnabled())
              {
                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  loginID = [(IMDAccount *)self loginID];
                  *buf = v27;
                  selfCopy = self;
                  v36 = 2112;
                  v37 = v15;
                  v38 = 2112;
                  v39 = loginID;
                  _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Cannot create replication session for %@, no account found for %@ (loginID: %@)", buf, 0x20u);
                }
              }

              ++v14;
            }

            while (v11 != v14);
            v11 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v11);
        }

        v25 = [v29 copy];
        replicationSessions = self->_replicationSessions;
        self->_replicationSessions = v25;
      }
    }
  }
}

- (void)releaseSession
{
  session = [(IMDAccount *)self session];
  [session sessionWillBecomeInactiveWithAccount:self];

  [(IMDAccount *)self setSession:0];
}

- (NSArray)replicationSessions
{
  [(IMDAccount *)self createSessionIfNecessary];
  [(IMDAccount *)self _createReplicationSessionsIfNecessary];
  replicationSessions = self->_replicationSessions;

  return replicationSessions;
}

- (void)resetReplicationSessions
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting replication session for %@", &v6, 0xCu);
    }
  }

  replicationSessions = self->_replicationSessions;
  self->_replicationSessions = 0;

  session = [(IMDAccount *)self session];
  [session _replicationSessionsChanged];
}

- (void)setRegistrationStatus:(int64_t)status error:(int)error alertInfo:(id)info
{
  v5 = *&error;
  value = info;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  if (v9)
  {
    CFDictionarySetValue(v8, *MEMORY[0x277D19470], v9);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  if (v10)
  {
    CFDictionarySetValue(v8, *MEMORY[0x277D19460], v10);
  }

  if (value)
  {
    CFDictionarySetValue(v8, *MEMORY[0x277D19458], value);
  }

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:*MEMORY[0x277D19468]];
  [(IMDAccount *)self writeAccountDefaults:v11];
}

- (NSArray)aliases
{
  v21 = *MEMORY[0x277D85DE8];
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKeyedSubscript:*MEMORY[0x277D193F0]];

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277D193E8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:{v9, v16}];
        lowercaseString = [v11 lowercaseString];
        trimmedString = [lowercaseString trimmedString];

        if (trimmedString)
        {
          [v4 addObject:trimmedString];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

- (id)_registrationInfo
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:*MEMORY[0x277D19468]];

  return v3;
}

- (int64_t)registrationStatus
{
  _registrationInfo = [(IMDAccount *)self _registrationInfo];
  v3 = [_registrationInfo objectForKey:*MEMORY[0x277D19470]];
  intValue = [v3 intValue];

  return intValue;
}

- (int)registrationError
{
  _registrationInfo = [(IMDAccount *)self _registrationInfo];
  v3 = [_registrationInfo objectForKey:*MEMORY[0x277D19460]];
  intValue = [v3 intValue];

  return intValue;
}

- (NSDictionary)registrationAlertInfo
{
  _registrationInfo = [(IMDAccount *)self _registrationInfo];
  v3 = [_registrationInfo objectForKey:*MEMORY[0x277D19458]];

  return v3;
}

- (void)setLoginStatus:(unint64_t)status message:(id)message reason:(int)reason properties:(id)properties
{
  v7 = *&reason;
  messageCopy = message;
  propertiesCopy = properties;
  if ([(IMDAccount *)self loginStatus]!= status || [(IMDAccount *)self serviceDisconnectReason]!= v7)
  {
LABEL_5:
    [(IMDAccount *)self _forceSetLoginStatus:status message:messageCopy reason:v7 properties:propertiesCopy];
    goto LABEL_6;
  }

  serviceLoginStatusMessage = [(IMDAccount *)self serviceLoginStatusMessage];
  if (serviceLoginStatusMessage != messageCopy)
  {
    serviceLoginStatusMessage2 = [(IMDAccount *)self serviceLoginStatusMessage];
    v13 = [messageCopy isEqualToString:serviceLoginStatusMessage2];

    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (void)_forceSetLoginStatus:(unint64_t)status message:(id)message reason:(int)reason properties:(id)properties
{
  v7 = *&reason;
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      session = [(IMDAccount *)self session];
      v19 = 138413570;
      selfCopy = self;
      v21 = 2048;
      statusCopy = status;
      v23 = 2112;
      v24 = messageCopy;
      v25 = 1024;
      v26 = v7;
      v27 = 2112;
      v28 = propertiesCopy;
      v29 = 2112;
      v30 = session;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "[%@ _forceSetLoginStatus:%lu] session=%@", &v19, 0x3Au);
    }
  }

  loginStatus = [(IMDAccount *)self loginStatus];
  [(IMDAccount *)self setLoginStatus:status];
  [(IMDAccount *)self setServiceDisconnectReason:v7];
  serviceLoginStatusMessage = [(IMDAccount *)self serviceLoginStatusMessage];
  v16 = serviceLoginStatusMessage == messageCopy;

  if (!v16)
  {
    v17 = [messageCopy copy];
    [(IMDAccount *)self setServiceLoginStatusMessage:v17];
  }

  session2 = [(IMDAccount *)self session];
  [session2 __forceSetLoginStatus:status oldStatus:loginStatus message:messageCopy reason:v7 properties:propertiesCopy account:self];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accountID = [(IMDAccount *)self accountID];
  service = [(IMDAccount *)self service];
  v6 = [v3 stringWithFormat:@"<IMDAccount:%p, ID:%@, Service:%@ >", self, accountID, service];

  return v6;
}

- (id)profileInfo
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:*MEMORY[0x277D19430]];

  return v3;
}

- (int64_t)profileValidationStatus
{
  profileInfo = [(IMDAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x277D19438]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isSMSRelayCapable
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:*MEMORY[0x277D19000]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isUsableForSending
{
  v3 = MEMORY[0x277D1A898];
  v4 = +[IMDAccountController sharedInstance];
  accounts = [v4 accounts];
  LOBYTE(self) = [v3 isAccountUsableForSendingWithAllAccounts:accounts account:self];

  return self;
}

@end