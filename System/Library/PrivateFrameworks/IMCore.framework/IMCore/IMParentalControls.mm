@interface IMParentalControls
+ (id)standardControls;
- (BOOL)accountHasAllowlist:(id)allowlist;
- (BOOL)accountIsEnabled:(id)enabled;
- (BOOL)disableAccount:(id)account;
- (BOOL)disableService:(id)service;
- (BOOL)forceAllowlistForAccount:(id)account;
- (BOOL)forceAllowlistForService:(id)service;
- (IMParentalControls)init;
- (id)_serviceWithName:(id)name;
- (id)allowlistForAccount:(id)account;
- (id)allowlistForService:(id)service;
- (void)_updateParentalSettings;
- (void)dealloc;
@end

@implementation IMParentalControls

+ (id)standardControls
{
  if (qword_1ED7677A8 != -1)
  {
    sub_1A824C8CC();
  }

  if (qword_1ED7677B8 != -1)
  {
    sub_1A824C8E0();
  }

  if (qword_1ED7677B0 != -1)
  {
    sub_1A824C8F4();
  }

  v2 = qword_1ED7677A0;

  return v2;
}

- (IMParentalControls)init
{
  v7.receiver = self;
  v7.super_class = IMParentalControls;
  v2 = [(IMParentalControls *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parentalControls = v2->_parentalControls;
    v2->_parentalControls = v3;

    [(IMParentalControls *)v2 setShouldPostNotifications:0];
    [(IMParentalControls *)v2 _updateParentalSettings];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__managedPrefsNotification_ name:*MEMORY[0x1E695E718] object:*MEMORY[0x1E695E720]];

    [(IMParentalControls *)v2 setShouldPostNotifications:1];
  }

  return v2;
}

- (void)_updateParentalSettings
{
  v56 = *MEMORY[0x1E69E9840];
  v45 = !self->_active;
  if (!self->_active)
  {
    self->_active = 1;
  }

  v2 = [(IMParentalControls *)self _serviceWithName:*MEMORY[0x1E69A7AD0]];
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADF88]];
  if ((v4 == 2) != [v2 disableService])
  {
    [v2 setDisableService:v4 == 2];
    v45 = 1;
  }

  v5 = [(IMParentalControls *)self _serviceWithName:@"Calling"];

  mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v7 = [mEMORY[0x1E69ADFB8]2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADDD0]];
  if ((v7 == 2) != [v5 disableService])
  {
    [v5 setDisableService:v7 == 2];
    v45 = 1;
  }

  v44 = [(IMParentalControls *)self _serviceWithName:*MEMORY[0x1E69A7AF0]];

  mEMORY[0x1E69ADFB8]3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [mEMORY[0x1E69ADFB8]3 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE18]];
  if ((v9 == 2) != [v44 disableService])
  {
    [v44 setDisableService:v9 == 2];
    v45 = 1;
  }

  mEMORY[0x1E69ADFC8] = [MEMORY[0x1E69ADFC8] sharedManager];
  [mEMORY[0x1E69ADFC8] invalidateRestrictions];

  mEMORY[0x1E69ADFC8]2 = [MEMORY[0x1E69ADFC8] sharedManager];
  [mEMORY[0x1E69ADFC8]2 invalidateSettings];

  v12 = [IMParentalControls objectForKey:*MEMORY[0x1E69A6208]];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 intValue] != 0;
  }

  else
  {
    v14 = 0;
  }

  if (self->_forceChatLogging != v14)
  {
    self->_forceChatLogging = v14;
    v45 = 1;
  }

  v42 = [IMParentalControls objectForKey:*MEMORY[0x1E69A6200]];

  if (v42)
  {
    v15 = [v42 intValue] != 0;
  }

  else
  {
    v15 = 0;
  }

  if (self->_disableAV != v15)
  {
    self->_disableAV = v15;
    v45 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      active = [(IMParentalControls *)self active];
      v18 = @"NO";
      if (active)
      {
        v18 = @"YES";
      }

      *buf = 138412290;
      v52 = v18;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "Active: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      disableAV = [(IMParentalControls *)self disableAV];
      v21 = @"NO";
      if (disableAV)
      {
        v21 = @"YES";
      }

      *buf = 138412290;
      v52 = v21;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEBUG, "Disable AV: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      forceChatLogging = [(IMParentalControls *)self forceChatLogging];
      v24 = @"NO";
      if (forceChatLogging)
      {
        v24 = @"YES";
      }

      *buf = 138412290;
      v52 = v24;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEBUG, "Force Chat Logging: %@", buf, 0xCu);
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  allValues = [(NSMutableDictionary *)self->_parentalControls allValues];
  v26 = [allValues countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v26)
  {
    v27 = *v48;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(allValues);
        }

        v29 = *(*(&v47 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            name = [v29 name];
            disableService = [v29 disableService];
            *buf = 138412546;
            v33 = @"NO";
            if (disableService)
            {
              v33 = @"YES";
            }

            v52 = name;
            v53 = 2112;
            v54 = v33;
            _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "%@ Disabled: %@", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            name2 = [v29 name];
            forceAllowlist = [v29 forceAllowlist];
            *buf = 138412546;
            v37 = @"NO";
            if (forceAllowlist)
            {
              v37 = @"YES";
            }

            v52 = name2;
            v53 = 2112;
            v54 = v37;
            _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEBUG, "%@ Force Allowlist: %@", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            name3 = [v29 name];
            allowlist = [v29 allowlist];
            *buf = 138412546;
            v52 = name3;
            v53 = 2112;
            v54 = allowlist;
            _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_DEBUG, "%@ Allowlist: %@", buf, 0x16u);
          }
        }
      }

      v26 = [allValues countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v26);
  }

  if (v45 && self->_shouldPostNotifications)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMManagedPreferencesChangedNotification" object:self];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IMParentalControls;
  [(IMParentalControls *)&v4 dealloc];
}

- (id)_serviceWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_parentalControls objectForKey:nameCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(IMParentalControlsService);
      [(IMParentalControlsService *)v5 setName:nameCopy];
      [(NSMutableDictionary *)self->_parentalControls setObject:v5 forKey:nameCopy];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)disableService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    if ([(IMParentalControls *)self active])
    {
      internalName = [serviceCopy internalName];
      v6 = [(IMParentalControls *)self _serviceWithName:internalName];
      disableService = [v6 disableService];
    }

    else
    {
      disableService = 0;
    }
  }

  else
  {
    disableService = 1;
  }

  return disableService;
}

- (BOOL)disableAccount:(id)account
{
  service = [account service];
  LOBYTE(self) = [(IMParentalControls *)self disableService:service];

  return self;
}

- (id)allowlistForService:(id)service
{
  serviceCopy = service;
  if (serviceCopy && [(IMParentalControls *)self active])
  {
    internalName = [serviceCopy internalName];
    v6 = [(IMParentalControls *)self _serviceWithName:internalName];
    allowlist = [v6 allowlist];

    if ([allowlist count])
    {
      v8 = allowlist;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)forceAllowlistForService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    if ([(IMParentalControls *)self active])
    {
      internalName = [serviceCopy internalName];
      v6 = [(IMParentalControls *)self _serviceWithName:internalName];
      forceAllowlist = [v6 forceAllowlist];
    }

    else
    {
      forceAllowlist = 0;
    }
  }

  else
  {
    forceAllowlist = 1;
  }

  return forceAllowlist;
}

- (id)allowlistForAccount:(id)account
{
  service = [account service];
  v5 = [(IMParentalControls *)self allowlistForService:service];

  return v5;
}

- (BOOL)forceAllowlistForAccount:(id)account
{
  service = [account service];
  LOBYTE(self) = [(IMParentalControls *)self forceAllowlistForService:service];

  return self;
}

- (BOOL)accountIsEnabled:(id)enabled
{
  service = [enabled service];
  LOBYTE(self) = [(IMParentalControls *)self disableService:service];

  return self ^ 1;
}

- (BOOL)accountHasAllowlist:(id)allowlist
{
  service = [allowlist service];
  LOBYTE(self) = [(IMParentalControls *)self forceAllowlistForService:service];

  return self;
}

@end