@interface ICSUbiquityAccessManager
+ (ICSUbiquityAccessManager)sharedInstance;
- (BOOL)isAccessGrantedForBundleID:(id)d;
- (ICSUbiquityAccessManager)init;
- (__CFBundle)_bundleForBundleID:(id)d;
- (id)_serviceNamesForBundleID:(id)d;
- (id)_servicesForBundleID:(id)d;
- (void)_addAccessInfo:(id)info forServiceName:(id)name;
- (void)_updateCacheGranted:(BOOL)granted forBundleID:(id)d;
- (void)reloadAccessInfo;
- (void)setAppAccessGranted:(BOOL)granted forBundleID:(id)d;
@end

@implementation ICSUbiquityAccessManager

+ (ICSUbiquityAccessManager)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[ICSUbiquityAccessManager sharedInstance];
  }

  v3 = sharedInstance__accessManager;

  return v3;
}

uint64_t __42__ICSUbiquityAccessManager_sharedInstance__block_invoke()
{
  sharedInstance__accessManager = objc_alloc_init(ICSUbiquityAccessManager);

  return MEMORY[0x2821F96F8]();
}

- (ICSUbiquityAccessManager)init
{
  v5.receiver = self;
  v5.super_class = ICSUbiquityAccessManager;
  v2 = [(ICSUbiquityAccessManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICSUbiquityAccessManager *)v2 reloadAccessInfo];
  }

  return v3;
}

- (void)reloadAccessInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  accessInfoCacheByBundleID = self->_accessInfoCacheByBundleID;
  self->_accessInfoCacheByBundleID = v3;

  v5 = MEMORY[0x277D6C230];
  v8 = TCCAccessCopyInformation();
  v6 = MEMORY[0x277D6C190];
  v7 = TCCAccessCopyInformation();
  [(ICSUbiquityAccessManager *)self _addAccessInfo:v8 forServiceName:*v5];
  [(ICSUbiquityAccessManager *)self _addAccessInfo:v7 forServiceName:*v6];
}

- (void)_addAccessInfo:(id)info forServiceName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  nameCopy = name;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = infoCopy;
  v7 = [infoCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D6C0C8];
    v10 = MEMORY[0x277D6C0D0];
    v28 = *v30;
    do
    {
      v11 = 0;
      v26 = v8;
      do
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:*v9];
        v14 = CFBundleGetIdentifier(v13);
        v15 = [v12 objectForKeyedSubscript:*v10];
        v16 = v15;
        if (v14)
        {
          if (!v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithBool:0];
          }

          v17 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKey:v14];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 objectForKey:@"services"];
            if (v19)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v18 setObject:v19 forKey:@"services"];
            [v18 setObject:v13 forKey:@"bundle"];
            [(NSMutableDictionary *)self->_accessInfoCacheByBundleID setObject:v18 forKey:v14];
            if (v19)
            {
LABEL_11:
              v20 = v10;
              selfCopy = self;
              v22 = v9;
              v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v23 setObject:v16 forKey:@"granted"];
              [v23 setObject:nameCopy forKey:@"serviceName"];
              [v19 addObject:v23];

              v9 = v22;
              self = selfCopy;
              v10 = v20;
              v8 = v26;
            }
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v8 = v24;
    }

    while (v24);
  }
}

- (__CFBundle)_bundleForBundleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKeyedSubscript:d];
  v4 = [v3 objectForKey:@"bundle"];

  return v4;
}

- (id)_servicesForBundleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKeyedSubscript:d];
  v4 = [v3 objectForKey:@"services"];

  return v4;
}

- (id)_serviceNamesForBundleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_accessInfoCacheByBundleID objectForKeyedSubscript:d];
  v4 = [v3 objectForKey:@"services"];
  v5 = [v4 valueForKey:@"serviceName"];

  return v5;
}

- (BOOL)isAccessGrantedForBundleID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  [(ICSUbiquityAccessManager *)self _servicesForBundleID:d];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) objectForKey:{@"granted", v12}];
        bOOLValue = [v8 BOOLValue];

        if (bOOLValue)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)setAppAccessGranted:(BOOL)granted forBundleID:(id)d
{
  grantedCopy = granted;
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (![(ICSUbiquityAccessManager *)self _bundleForBundleID:dCopy])
  {
    v7 = LogSubsystem(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = dCopy;
      _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "Error! No bundle for bundle ID: %@. Maybe iCloud Drive is turned off?", buf, 0xCu);
    }
  }

  v8 = [(ICSUbiquityAccessManager *)self _serviceNamesForBundleID:dCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        TCCAccessSetForBundle();
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(ICSUbiquityAccessManager *)self _updateCacheGranted:grantedCopy forBundleID:dCopy];
  v13 = [(ICSUbiquityAccessManager *)self _serviceNamesForBundleID:dCopy];
  v14 = [v13 containsObject:*MEMORY[0x277D6C230]];

  if (v14)
  {
    mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
    [mEMORY[0x277D0AE18] terminateApplication:dCopy forReason:3 andReport:0 withDescription:0];
  }
}

- (void)_updateCacheGranted:(BOOL)granted forBundleID:(id)d
{
  grantedCopy = granted;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(ICSUbiquityAccessManager *)self _servicesForBundleID:d];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CCABB0] numberWithBool:grantedCopy];
        [v10 setObject:v11 forKey:@"granted"];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end