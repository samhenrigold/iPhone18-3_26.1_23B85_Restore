@interface CKSettingsCriticalMessagesAppManager
- (CKSettingsCriticalMessagesAppManager)init;
- (id)criticalMessagesAppForBundleID:(id)d;
- (id)criticalMessagesApps;
- (void)setActive:(BOOL)active forPhoneNumber:(id)number inAppForBundle:(id)bundle;
@end

@implementation CKSettingsCriticalMessagesAppManager

- (CKSettingsCriticalMessagesAppManager)init
{
  v36 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = CKSettingsCriticalMessagesAppManager;
  v20 = [(CKSettingsCriticalMessagesAppManager *)&v33 init];
  if (v20)
  {
    appBundleIDs = [MEMORY[0x277D1A8C8] appBundleIDs];
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CKSettingsCriticalMessagesAppManager *)v20 setAppList:v3];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = appBundleIDs;
    v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v22)
    {
      v21 = *v30;
      do
      {
        v4 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v29 + 1) + 8 * v4);
          v24 = v4;
          v5 = [MEMORY[0x277D1A8C8] recipientsForBundleID:?];
          v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          allKeys = [v5 allKeys];
          v8 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v26;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v26 != v10)
                {
                  objc_enumerationMutation(allKeys);
                }

                v12 = *(*(&v25 + 1) + 8 * i);
                v13 = [v5 objectForKey:v12];
                intValue = [v13 intValue];

                v15 = [[CKSettingsCriticalMessagesAppRecipient alloc] initWithRecipient:v12 isActive:intValue == 2];
                if (v15)
                {
                  [v6 addObject:v15];
                }
              }

              v9 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v9);
          }

          v16 = [[CKSettingsCriticalMessagesApp alloc] initWithBundleID:v23 recipients:v6];
          if (v16)
          {
            appList = [(CKSettingsCriticalMessagesAppManager *)v20 appList];
            [appList addObject:v16];
          }

          v4 = v24 + 1;
        }

        while (v24 + 1 != v22);
        v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v22);
    }
  }

  return v20;
}

- (id)criticalMessagesApps
{
  v2 = [(NSMutableArray *)self->_appList copy];

  return v2;
}

- (id)criticalMessagesAppForBundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  criticalMessagesApps = [(CKSettingsCriticalMessagesAppManager *)self criticalMessagesApps];
  v6 = [criticalMessagesApps countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(criticalMessagesApps);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        bundleID = [v9 bundleID];
        v11 = [bundleID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [criticalMessagesApps countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setActive:(BOOL)active forPhoneNumber:(id)number inAppForBundle:(id)bundle
{
  activeCopy = active;
  v43 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  bundleCopy = bundle;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = self->_appList;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    v31 = v10;
    v32 = bundleCopy;
    v30 = activeCopy;
    v29 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        bundleID = [v15 bundleID];
        v17 = [bundleID isEqualToString:bundleCopy];

        if (v17)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          recipients = [v15 recipients];
          v19 = [recipients countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v34;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v34 != v21)
                {
                  objc_enumerationMutation(recipients);
                }

                v23 = *(*(&v33 + 1) + 8 * j);
                number = [v23 number];
                v25 = [numberCopy isEqual:number];

                if (v25)
                {
                  if ([v23 isActive] != v30)
                  {
                    [v23 setActive:v30];
                    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                    [defaultCenter postNotificationName:@"CKSettingsCriticalMessagesAppsChangedNotification" object:0];
                  }

                  v27 = MEMORY[0x277D1A8C8];
                  getIMRecipient = [v23 getIMRecipient];
                  bundleCopy = v32;
                  [v27 toggleEnablement:v30 forRecipient:getIMRecipient inAppBundleID:v32];

                  v10 = v31;
                  goto LABEL_22;
                }
              }

              v20 = [recipients countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v10 = v31;
          bundleCopy = v32;
          v13 = v29;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

LABEL_22:
}

@end