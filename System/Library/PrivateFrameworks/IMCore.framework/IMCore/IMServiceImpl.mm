@interface IMServiceImpl
+ (BOOL)hasAlias:(id)alias onAccountForService:(id)service;
+ (BOOL)iMessageEnabled;
+ (BOOL)iMessageEnabledForReachabilityContext:(id)context;
+ (BOOL)iMessageEnabledForSenderLastAddressedHandle:(id)handle simID:(id)d previousService:(id)service;
+ (BOOL)mmsEnabled;
+ (BOOL)smsEnabled;
+ (BOOL)systemSupportsSendingAttachmentsOfTypes:(id)types error:(int64_t *)error;
+ (Class)serviceClass;
+ (id)activeServices;
+ (id)allServices;
+ (id)allServicesNonBlocking;
+ (id)connectedServices;
+ (id)connectedServicesWithCapability:(unint64_t)capability;
+ (id)operationalServicesWithCapability:(unint64_t)capability;
+ (id)serviceWithInternalName:(id)name;
+ (id)serviceWithName:(id)name;
+ (id)servicesWithCapability:(unint64_t)capability;
+ (id)servicesWithCapabilityName:(id)name;
- (BOOL)equalID:(id)d andID:(id)iD;
- (BOOL)supportsCapability:(id)capability;
- (BOOL)supportsReplication;
- (BOOL)supportsReplicationCapability:(id)capability;
- (IMServiceImpl)initWithName:(id)name;
- (NSArray)accountIDs;
- (NSArray)siblingServices;
- (id)_sorting;
- (id)description;
- (id)infoForAllScreenNames;
- (id)infoForScreenName:(id)name;
- (id)myScreenNames;
- (int64_t)chatResolutionPriority;
- (int64_t)compareNames:(id)names;
- (int64_t)maxAttachmentSize;
- (int64_t)maxChatParticipantsForHandle:(id)handle simID:(id)d;
- (int64_t)serviceForSendingPriority;
- (unint64_t)status;
- (void)_calculateBestAccount;
- (void)_loadPropertiesIfNeeded;
- (void)activeAccountsChanged:(id)changed;
- (void)dealloc;
- (void)defaultsChanged:(id)changed;
- (void)disconnect;
- (void)doneSetup;
- (void)setServiceProperties:(id)properties;
- (void)statusChangedForAccount:(id)account from:(unint64_t)from to:(unint64_t)to;
@end

@implementation IMServiceImpl

+ (Class)serviceClass
{
  if (qword_1EB2EA178)
  {
    v2 = qword_1EB2EA178;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)_loadPropertiesIfNeeded
{
  if (!self->_hasLoadedServiceProperties)
  {
    self->_hasLoadedServiceProperties = 1;
    v4 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5E70]];
    self->_handlesChatInvites = [v4 intValue] > 0;

    v5 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5E18]];
    self->_isPersistent = [v5 intValue] > 0;

    v6 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5E88]];
    self->_isPlugInService = [v6 intValue] > 0;

    v7 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5E10]];
    self->_allowsMultipleConnections = [v7 intValue] > 0;

    v8 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5EE8]];
    self->_shouldInternationalizeNumbers = [v8 intValue] > 0;

    v9 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5E60]];
    self->_shouldDisableDeactivation = [v9 intValue] > 0;

    v10 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5E80]];
    self->_ignoresNetworkConnectivity = [v10 intValue] > 0;

    v11 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A7B08]];
    self->_isDiscontinued = [v11 intValue] > 0;

    v12 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A7B48]];
    self->_shouldReuseTypingIndicatorGUID = [v12 intValue] > 0;
  }
}

- (void)_calculateBestAccount
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[IMAccountController sharedInstance];
  v4 = [v3 activeAccountsForService:self];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      selfCopy = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Accounts: %@", &v10, 0xCu);
    }
  }

  v6 = [IMAccountController bestAccountFromAccounts:v4];
  bestAccount = self->_bestAccount;
  self->_bestAccount = v6;

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_bestAccount;
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Recalculated best account for %@: %@", &v10, 0x16u);
    }
  }
}

+ (id)allServices
{
  v2 = +[IMDaemonController sharedController];
  [v2 blockUntilConnected];

  v3 = +[IMDaemonController sharedController];
  listener = [v3 listener];
  allServices = [listener allServices];

  return allServices;
}

- (int64_t)chatResolutionPriority
{
  _sorting = [(IMServiceImpl *)self _sorting];
  v3 = [_sorting objectForKeyedSubscript:*MEMORY[0x1E69A7B58]];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)_sorting
{
  serviceProps = [(IMServiceImpl *)self serviceProps];
  v3 = [serviceProps objectForKeyedSubscript:*MEMORY[0x1E69A7B50]];

  return v3;
}

+ (id)allServicesNonBlocking
{
  v2 = +[IMDaemonController sharedController];
  [v2 connectToDaemonWithLaunch:0];

  v3 = +[IMDaemonController sharedController];
  listener = [v3 listener];
  allServices = [listener allServices];

  return allServices;
}

+ (BOOL)smsEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  supportsSMS = [mEMORY[0x1E699BE70] supportsSMS];

  if (supportsSMS)
  {
    return 1;
  }

  v5 = qword_1ED767640;
  if (!qword_1ED767640)
  {
    v6 = +[IMAccountController sharedInstance];
    v7 = +[IMServiceImpl smsService];
    v8 = [v6 bestAccountForService:v7];
    v9 = qword_1ED767640;
    qword_1ED767640 = v8;

    v5 = qword_1ED767640;
  }

  return [v5 allowsSMSRelay];
}

+ (BOOL)iMessageEnabled
{
  v22 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInIDSAccountCapableClient())
  {
    if (qword_1ED767698 != -1)
    {
      sub_1A84DF12C();
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    accounts = [qword_1ED7676A0 accounts];
    v3 = [accounts countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v3)
    {
      v4 = *v17;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v17 != v4)
          {
            objc_enumerationMutation(accounts);
          }

          if ([*(*(&v16 + 1) + 8 * i) canSend])
          {
            LOBYTE(v3) = 1;
            goto LABEL_25;
          }
        }

        v3 = [accounts countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v6 = +[IMAccountController sharedInstance];
    v7 = +[IMServiceImpl iMessageService];
    v8 = [v6 accountsForService:v7];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    accounts = v8;
    v3 = [accounts countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v3)
    {
      v9 = *v13;
      while (2)
      {
        for (j = 0; j != v3; ++j)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          if ([*(*(&v12 + 1) + 8 * j) _isUsableForSending])
          {
            LOBYTE(v3) = 1;
            goto LABEL_24;
          }
        }

        v3 = [accounts countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }

LABEL_25:

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E695DEC8];
  internalName = [(IMServiceImpl *)self internalName];
  v4 = [v2 arrayWithObjects:{@"IMService[", internalName, @"]", 0}];
  v5 = IMCreateSimpleComponentString();

  return v5;
}

+ (id)serviceWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = +[IMDaemonController sharedController];
    [v4 blockUntilConnected];

    v5 = +[IMDaemonController sharedController];
    listener = [v5 listener];
    v7 = [listener serviceWithName:nameCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)serviceWithInternalName:(id)name
{
  nameCopy = name;
  if (![nameCopy length])
  {
    v9 = 0;
    goto LABEL_24;
  }

  if (!qword_1ED767828)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = qword_1ED767828;
    qword_1ED767828 = v6;

    objc_sync_exit(selfCopy);
  }

  if (qword_1ED767808 && [nameCopy isEqualToString:*MEMORY[0x1E69A7AF0]])
  {
    v8 = qword_1ED767808;
LABEL_23:
    v9 = v8;
    goto LABEL_24;
  }

  if (qword_1ED767720 && [nameCopy isEqualToString:*MEMORY[0x1E69A7AF8]])
  {
    v8 = qword_1ED767720;
    goto LABEL_23;
  }

  if (qword_1ED767748 && [nameCopy isEqualToString:*MEMORY[0x1E69A7AE8]])
  {
    v8 = qword_1ED767748;
    goto LABEL_23;
  }

  if (qword_1ED767830 && [nameCopy isEqualToString:*MEMORY[0x1E69A7AE0]])
  {
    v8 = qword_1ED767830;
    goto LABEL_23;
  }

  if (qword_1ED767810 && [nameCopy isEqualToString:*MEMORY[0x1E69A7AD0]])
  {
    v8 = qword_1ED767810;
    goto LABEL_23;
  }

  if (qword_1ED767750 && [nameCopy isEqualToString:*MEMORY[0x1E69A7AD8]])
  {
    v8 = qword_1ED767750;
    goto LABEL_23;
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v12 = [qword_1ED767828 objectForKey:nameCopy];
  objc_sync_exit(selfCopy2);

  if (!v12)
  {
    v12 = [objc_alloc(objc_msgSend(selfCopy2 "serviceClass"))];
    if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AD0]])
    {
      v13 = &qword_1ED767810;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AF0]])
    {
      v13 = &qword_1ED767808;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AF8]])
    {
      v13 = &qword_1ED767720;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AE8]])
    {
      v13 = &qword_1ED767748;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AE0]])
    {
      v13 = &qword_1ED767830;
    }

    else
    {
      if (![nameCopy isEqualToString:*MEMORY[0x1E69A7AD8]])
      {
        goto LABEL_41;
      }

      v13 = &qword_1ED767750;
    }

    objc_storeStrong(v13, v12);
LABEL_41:
    if (v12)
    {
      v14 = selfCopy2;
      objc_sync_enter(v14);
      [qword_1ED767828 setObject:v12 forKey:nameCopy];
      objc_sync_exit(v14);
    }
  }

  v9 = v12;

LABEL_24:

  return v9;
}

+ (id)activeServices
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allServicesNonBlocking = [self allServicesNonBlocking];
  v5 = [allServicesNonBlocking countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allServicesNonBlocking);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = +[IMAccountController sharedInstance];
        v11 = [v10 activeAccountsForService:v9];
        v12 = [v11 count];

        if (v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allServicesNonBlocking countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

+ (id)connectedServices
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allServicesNonBlocking = [self allServicesNonBlocking];
  v5 = [allServicesNonBlocking countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allServicesNonBlocking);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = +[IMAccountController sharedInstance];
        v11 = [v10 connectedAccountsForService:v9];
        v12 = [v11 count];

        if (v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allServicesNonBlocking countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

+ (id)servicesWithCapability:(unint64_t)capability
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = +[IMAccountController sharedInstance];
  v6 = [v5 accountsWithCapability:capability];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        service = [v11 service];
        if (service)
        {
          service2 = [v11 service];
          [v4 addObject:service2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)connectedServicesWithCapability:(unint64_t)capability
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = +[IMAccountController sharedInstance];
  v6 = [v5 connectedAccountsWithCapability:capability];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        service = [v11 service];
        if (service)
        {
          service2 = [v11 service];
          [v4 addObject:service2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)operationalServicesWithCapability:(unint64_t)capability
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = +[IMAccountController sharedInstance];
  v6 = [v5 operationalAccountsWithCapability:capability];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        service = [v11 service];
        if (service)
        {
          service2 = [v11 service];
          [v4 addObject:service2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)servicesWithCapabilityName:(id)name
{
  nameCopy = name;
  allServices = [self allServices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A827CFB4;
  v9[3] = &unk_1E7810338;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [allServices __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (IMServiceImpl)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = IMServiceImpl;
  v6 = [(IMServiceImpl *)&v9 init];
  if (v6)
  {
    if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AD0]])
    {
      v7 = &qword_1ED767810;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AF0]])
    {
      v7 = &qword_1ED767808;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AF8]])
    {
      v7 = &qword_1ED767720;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AE8]])
    {
      v7 = &qword_1ED767748;
    }

    else if ([nameCopy isEqualToString:*MEMORY[0x1E69A7AE0]])
    {
      v7 = &qword_1ED767830;
    }

    else
    {
      if (![nameCopy isEqualToString:*MEMORY[0x1E69A7AD8]])
      {
LABEL_15:
        objc_storeStrong(&v6->_name, name);
        goto LABEL_16;
      }

      v7 = &qword_1ED767750;
    }

    objc_storeStrong(v7, v6);
    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IMServiceImpl;
  [(IMServiceImpl *)&v4 dealloc];
}

- (void)doneSetup
{
  [(IMServiceImpl *)self activeAccountsChanged:0];
  [(IMServiceImpl *)self _syncWithRemoteBuddies];
  v3 = +[IMServiceAgent notificationCenter];
  [v3 __mainThreadPostNotificationName:@"__kIMServiceStatusChangedNotification" object:self];
}

- (void)disconnect
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      internalName = [(IMServiceImpl *)self internalName];
      *buf = 138412290;
      v19 = internalName;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Service(%@): Disconnecting from agent", buf, 0xCu);
    }
  }

  if ([(IMServiceImpl *)self status]>= 3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = +[IMAccountController sharedInstance];
    v6 = [v5 accountsForService:self];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * v9++) setIMAccountLoginStatus:2];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  status = [(IMServiceImpl *)self status];
  bestAccount = self->_bestAccount;
  self->_bestAccount = 0;

  [(IMServiceImpl *)self statusChangedForAccount:0 from:status to:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"ServiceDidDisconnect" object:self];
}

- (void)statusChangedForAccount:(id)account from:(unint64_t)from to:(unint64_t)to
{
  toCopy = to;
  fromCopy = from;
  v17 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412802;
      v12 = accountCopy;
      v13 = 1024;
      v14 = fromCopy;
      v15 = 1024;
      v16 = toCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Status changed for account: %@             from: %d to: %d", &v11, 0x18u);
    }
  }

  [(IMServiceImpl *)self _calculateBestAccount];
  v10 = +[IMServiceAgent notificationCenter];
  [v10 __mainThreadPostNotificationName:@"__kIMServiceStatusChangedNotification" object:self];
}

- (BOOL)equalID:(id)d andID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy == iDCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (dCopy && iDCopy)
    {
      v10 = [(IMServiceImpl *)self canonicalFormOfID:dCopy];
      v11 = [(IMServiceImpl *)self canonicalFormOfID:v8];
      v9 = [v10 isEqualToString:v11];
    }
  }

  return v9;
}

- (int64_t)compareNames:(id)names
{
  namesCopy = names;
  name = [(IMServiceImpl *)self name];
  name2 = [namesCopy name];

  v7 = [name localizedCompareToString:name2];
  return v7;
}

- (unint64_t)status
{
  bestAccount = self->_bestAccount;
  if (bestAccount)
  {
    return [(IMAccount *)bestAccount loginStatus];
  }

  else
  {
    return 1;
  }
}

- (id)infoForScreenName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [(IMServiceImpl *)self _blockUntilInitialSyncPerformed];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = +[IMAccountController sharedInstance];
  v6 = [v5 accountsForService:self];

  publicAPIPropertiesDictionary = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (publicAPIPropertiesDictionary)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != publicAPIPropertiesDictionary; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) existingIMHandleWithID:nameCopy];
        bestAccountSibling = [v10 bestAccountSibling];

        if (bestAccountSibling)
        {
          publicAPIPropertiesDictionary = [bestAccountSibling publicAPIPropertiesDictionary];

          goto LABEL_11;
        }
      }

      publicAPIPropertiesDictionary = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (publicAPIPropertiesDictionary)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return publicAPIPropertiesDictionary;
}

- (id)infoForAllScreenNames
{
  v22 = *MEMORY[0x1E69E9840];
  [(IMServiceImpl *)self _blockUntilInitialSyncPerformed];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = +[IMAccountController sharedInstance];
  v5 = [v4 accountsForService:self];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E695DEC8]);
        arrayOfAllIMHandles = [v10 arrayOfAllIMHandles];
        v13 = [v11 initWithArray:arrayOfAllIMHandles];

        if ([v13 count])
        {
          [v3 addObjectsFromArray:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [IMHandle filterIMHandlesForBestAccountSiblings:v3];
  v15 = [v14 arrayByApplyingSelector:sel_publicAPIPropertiesDictionary];

  return v15;
}

- (id)myScreenNames
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[IMAccountController sharedInstance];
  v4 = [v3 activeAccountsForService:self];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        login = [*(*(&v13 + 1) + 8 * i) login];
        if (login)
        {
          [v5 addObject:login];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)supportsCapability:(id)capability
{
  serviceProps = self->_serviceProps;
  v4 = *MEMORY[0x1E69A7B00];
  capabilityCopy = capability;
  v6 = [(NSDictionary *)serviceProps objectForKey:v4];
  v7 = [v6 objectForKey:capabilityCopy];

  LOBYTE(capabilityCopy) = [v7 intValue] > 0;
  return capabilityCopy;
}

- (BOOL)supportsReplicationCapability:(id)capability
{
  serviceProps = self->_serviceProps;
  v4 = *MEMORY[0x1E69A7B20];
  capabilityCopy = capability;
  v6 = [(NSDictionary *)serviceProps objectForKey:v4];
  v7 = [v6 objectForKey:capabilityCopy];

  LOBYTE(capabilityCopy) = [v7 intValue] > 0;
  return capabilityCopy;
}

- (BOOL)supportsReplication
{
  v2 = [(NSDictionary *)self->_serviceProps objectForKeyedSubscript:*MEMORY[0x1E69A7B40]];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)serviceForSendingPriority
{
  _sorting = [(IMServiceImpl *)self _sorting];
  v3 = [_sorting objectForKeyedSubscript:*MEMORY[0x1E69A7B60]];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setServiceProperties:(id)properties
{
  v27 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  serviceProps = self->_serviceProps;
  if (serviceProps != propertiesCopy && [(NSDictionary *)serviceProps count]<= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        selfCopy = self;
        v25 = 2112;
        v26 = propertiesCopy;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Service: %@  set properties: %@", &v23, 0x16u);
      }
    }

    objc_storeStrong(&self->_serviceProps, properties);
    v8 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A5EB0]];
    localizedName = self->_localizedName;
    self->_localizedName = v8;

    v10 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A5ED0]];
    localizedShortName = self->_localizedShortName;
    self->_localizedShortName = v10;

    v12 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A5ED8]];
    siblingServiceNames = self->_siblingServiceNames;
    self->_siblingServiceNames = v12;

    v14 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A5E68]];
    emailDomains = self->_emailDomains;
    self->_emailDomains = v14;

    v16 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A5E78]];
    self->_screenNameSensitivity = [v16 intValue];

    v17 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A7B18]];
    self->_handleIDInsensitivityIsCarrierBased = [v17 BOOLValue];

    v18 = [(NSDictionary *)propertiesCopy objectForKey:*MEMORY[0x1E69A7B10]];
    self->_caseInsensitivityByHandleType = [v18 intValue];

    [(IMServiceImpl *)self _loadPropertiesIfNeeded];
    if ([(IMServiceImpl *)self supportsCapability:*MEMORY[0x1E69A79E8]]&& !self->_countryCode)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v20 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
      lowercaseString = [v20 lowercaseString];
      countryCode = self->_countryCode;
      self->_countryCode = lowercaseString;
    }
  }
}

+ (BOOL)hasAlias:(id)alias onAccountForService:(id)service
{
  v25 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  serviceCopy = service;
  v7 = +[IMAccountController sharedInstance];
  v8 = [v7 accountsForService:serviceCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (MEMORY[0x1AC56C3C0](aliasCopy))
        {
          v14 = IMCanonicalizeFormattedString();
        }

        else
        {
          v14 = 0;
        }

        aliases = [v13 aliases];
        if ([aliases containsObject:v14])
        {
          _isUsableForSending = [v13 _isUsableForSending];

          if (_isUsableForSending)
          {
            goto LABEL_20;
          }
        }

        else
        {
          aliases2 = [v13 aliases];
          if ([aliases2 containsObject:aliasCopy])
          {
            _isUsableForSending2 = [v13 _isUsableForSending];

            if (_isUsableForSending2)
            {

LABEL_20:
              LOBYTE(v10) = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v10;
}

+ (BOOL)iMessageEnabledForSenderLastAddressedHandle:(id)handle simID:(id)d previousService:(id)service
{
  v8 = MEMORY[0x1E69A8240];
  serviceCopy = service;
  dCopy = d;
  handleCopy = handle;
  v12 = objc_alloc_init(v8);
  [v12 setSenderLastAddressedHandle:handleCopy];

  [v12 setSenderLastAddressedSIMID:dCopy];
  name = [serviceCopy name];

  [v12 setLastUsedServiceName:name];
  LOBYTE(self) = [self iMessageEnabledForReachabilityContext:v12];

  return self;
}

+ (BOOL)mmsEnabled
{
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  supportsMMS = [mEMORY[0x1E699BE70] supportsMMS];

  mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
  mmsConfigured = [mEMORY[0x1E699BE70]2 mmsConfigured];

  _readMMSUserOverride = [self _readMMSUserOverride];
  if (supportsMMS)
  {
    v8 = mmsConfigured == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (_readMMSUserOverride & 1) != 0)
  {
    return 1;
  }

  v10 = qword_1EB2EA180;
  if (!qword_1EB2EA180)
  {
    v11 = +[IMAccountController sharedInstance];
    v12 = +[IMServiceImpl smsService];
    v13 = [v11 bestAccountForService:v12];
    v14 = qword_1EB2EA180;
    qword_1EB2EA180 = v13;

    v10 = qword_1EB2EA180;
  }

  return [v10 allowsMMSRelay];
}

- (int64_t)maxChatParticipantsForHandle:(id)handle simID:(id)d
{
  handleCopy = handle;
  dCopy = d;
  if (qword_1ED767808 == self)
  {
    if (qword_1EB2EA190 != -1)
    {
      sub_1A84DF140();
    }

    v10 = [qword_1EB2EA188 sharedInstanceForBagType:1];
    mEMORY[0x1E69A7F50] = [v10 objectForKey:@"md-max-chat-participants"];

    if (mEMORY[0x1E69A7F50] && [mEMORY[0x1E69A7F50] integerValue] > 10)
    {
      integerValue = [mEMORY[0x1E69A7F50] integerValue];
      goto LABEL_10;
    }

LABEL_12:
    v11 = -1;
    goto LABEL_14;
  }

  if (qword_1ED767830 == self)
  {
    v11 = [MEMORY[0x1E69A7F58] IMMMSMaxRecipientsForPhoneNumber:handleCopy simID:dCopy];
    goto LABEL_14;
  }

  if (qword_1ED767750 != self)
  {
    goto LABEL_12;
  }

  mEMORY[0x1E69A7F50] = [MEMORY[0x1E69A7F50] sharedManager];
  integerValue = [mEMORY[0x1E69A7F50] groupMessagingMaxGroupSizeForPhoneNumber:handleCopy simID:dCopy];
LABEL_10:
  v11 = integerValue;

LABEL_14:
  return v11;
}

- (int64_t)maxAttachmentSize
{
  v2 = [(NSDictionary *)self->_serviceProps objectForKey:*MEMORY[0x1E69A5EA8]];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (NSArray)siblingServices
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_siblingServiceNames, "count") + 1}];
  [v3 addObject:self];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_siblingServiceNames;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [IMServiceImpl serviceWithInternalName:*(*(&v12 + 1) + 8 * i), v12];
        v10 = v9;
        if (v3 && v9)
        {
          CFArrayAppendValue(v3, v9);
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)accountIDs
{
  v3 = +[IMAccountController sharedInstance];
  v4 = [v3 activeAccountsForService:self];
  v5 = [v4 arrayByApplyingSelector:sel_uniqueID];

  return v5;
}

- (void)defaultsChanged:(id)changed
{
  changedCopy = changed;
  if (self->_serviceDefaults != changedCopy)
  {
    objc_storeStrong(&self->_serviceDefaults, changed);
  }

  v5 = +[IMServiceAgent notificationCenter];
  [v5 __mainThreadPostNotificationName:@"__kIMServiceDefaultsChangedNotification" object:self userInfo:0];
}

- (void)activeAccountsChanged:(id)changed
{
  [(IMServiceImpl *)self _calculateBestAccount];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"NotificationActiveAccountChanged" object:self];
}

+ (BOOL)systemSupportsSendingAttachmentsOfTypes:(id)types error:(int64_t *)error
{
  typesCopy = types;
  if (objc_opt_class() == self)
  {
    CanBeSent = IMMMSPartCombinationCanBeSent();
  }

  else
  {
    CanBeSent = 1;
  }

  return CanBeSent;
}

+ (BOOL)iMessageEnabledForReachabilityContext:(id)context
{
  v4 = sub_1A84E570C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EB2E5A18;
  contextCopy = context;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_1A84E56FC();
  sub_1A84E56EC();
  (*(v5 + 8))(v7, v4);
  v10 = sub_1A84E5B5C();

  return v10 & 1;
}

@end