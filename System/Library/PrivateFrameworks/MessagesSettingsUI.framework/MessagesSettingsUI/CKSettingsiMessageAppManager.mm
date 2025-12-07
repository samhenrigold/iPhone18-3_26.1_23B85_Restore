@interface CKSettingsiMessageAppManager
- (BOOL)haveDeletableApps;
- (CKSettingsiMessageAppManager)init;
- (NSArray)alliMessageApps;
- (NSArray)deletableAppsWithiMessageApp;
- (NSArray)deletableiMessageOnlyApps;
- (NSArray)highMemoryPayloadProviderExtensions;
- (NSArray)payloadProviderExtensions;
- (id)_beginMonitoringExtensionPoint:(id)point;
- (id)_loadiMessageAppsSyncronouslyForExtensionPoint:(id)point;
- (id)appWithBundleID:(id)d;
- (id)extensionAttributesForExtensionPoint:(id)point;
- (void)_clearCacheForDerivableiMessageAppLists;
- (void)_endMonitoringExtensionInstallation;
- (void)_notifyForInstalledAppChange;
- (void)dealloc;
@end

@implementation CKSettingsiMessageAppManager

- (CKSettingsiMessageAppManager)init
{
  v9.receiver = self;
  v9.super_class = CKSettingsiMessageAppManager;
  v2 = [(CKSettingsiMessageAppManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CKSettingsiMessageAppManager *)v2 _beginMonitoringExtensionPoint:*MEMORY[0x277D19F68]];
    payloadProviderExtensionsMonitoringContext = v3->_payloadProviderExtensionsMonitoringContext;
    v3->_payloadProviderExtensionsMonitoringContext = v4;

    v6 = [(CKSettingsiMessageAppManager *)v3 _beginMonitoringExtensionPoint:*MEMORY[0x277D19F70]];
    highMemoryPayloadProviderExtensionsMonitoringContext = v3->_highMemoryPayloadProviderExtensionsMonitoringContext;
    v3->_highMemoryPayloadProviderExtensionsMonitoringContext = v6;
  }

  return v3;
}

- (NSArray)payloadProviderExtensions
{
  payloadProviderExtensions = self->_payloadProviderExtensions;
  if (!payloadProviderExtensions)
  {
    v4 = [(CKSettingsiMessageAppManager *)self _loadiMessageAppsSyncronouslyForExtensionPoint:*MEMORY[0x277D19F68]];
    v5 = self->_payloadProviderExtensions;
    self->_payloadProviderExtensions = v4;

    payloadProviderExtensions = self->_payloadProviderExtensions;
  }

  return payloadProviderExtensions;
}

- (NSArray)highMemoryPayloadProviderExtensions
{
  highMemoryPayloadProviderExtensions = self->_highMemoryPayloadProviderExtensions;
  if (!highMemoryPayloadProviderExtensions)
  {
    v4 = [(CKSettingsiMessageAppManager *)self _loadiMessageAppsSyncronouslyForExtensionPoint:*MEMORY[0x277D19F70]];
    v5 = self->_highMemoryPayloadProviderExtensions;
    self->_highMemoryPayloadProviderExtensions = v4;

    highMemoryPayloadProviderExtensions = self->_highMemoryPayloadProviderExtensions;
  }

  return highMemoryPayloadProviderExtensions;
}

- (NSArray)alliMessageApps
{
  alliMessageApps = self->_alliMessageApps;
  if (!alliMessageApps)
  {
    payloadProviderExtensions = [(CKSettingsiMessageAppManager *)self payloadProviderExtensions];
    highMemoryPayloadProviderExtensions = [(CKSettingsiMessageAppManager *)self highMemoryPayloadProviderExtensions];
    v6 = [payloadProviderExtensions arrayByAddingObjectsFromArray:highMemoryPayloadProviderExtensions];
    v7 = self->_alliMessageApps;
    self->_alliMessageApps = v6;

    alliMessageApps = self->_alliMessageApps;
  }

  return alliMessageApps;
}

- (NSArray)deletableiMessageOnlyApps
{
  v19 = *MEMORY[0x277D85DE8];
  deletableiMessageOnlyApps = self->_deletableiMessageOnlyApps;
  if (!deletableiMessageOnlyApps)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    alliMessageApps = [(CKSettingsiMessageAppManager *)self alliMessageApps];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [alliMessageApps countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(alliMessageApps);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 isDeletable] && objc_msgSend(v10, "isiMessageAppOnly"))
          {
            [v4 addObject:v10];
          }
        }

        v7 = [alliMessageApps countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 sortedArrayUsingComparator:&__block_literal_global_0];
    v12 = self->_deletableiMessageOnlyApps;
    self->_deletableiMessageOnlyApps = v11;

    deletableiMessageOnlyApps = self->_deletableiMessageOnlyApps;
  }

  return deletableiMessageOnlyApps;
}

uint64_t __57__CKSettingsiMessageAppManager_deletableiMessageOnlyApps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 extensionDisplayName];
  v6 = [v4 extensionDisplayName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (NSArray)deletableAppsWithiMessageApp
{
  v19 = *MEMORY[0x277D85DE8];
  deletableAppsWithiMessageApp = self->_deletableAppsWithiMessageApp;
  if (!deletableAppsWithiMessageApp)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    alliMessageApps = [(CKSettingsiMessageAppManager *)self alliMessageApps];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [alliMessageApps countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(alliMessageApps);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 isDeletable] && (objc_msgSend(v10, "isiMessageAppOnly") & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [alliMessageApps countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 sortedArrayUsingComparator:&__block_literal_global_91];
    v12 = self->_deletableAppsWithiMessageApp;
    self->_deletableAppsWithiMessageApp = v11;

    deletableAppsWithiMessageApp = self->_deletableAppsWithiMessageApp;
  }

  return deletableAppsWithiMessageApp;
}

uint64_t __60__CKSettingsiMessageAppManager_deletableAppsWithiMessageApp__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 appDisplayName];
  v6 = [v4 appDisplayName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)appWithBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(CKSettingsiMessageAppManager *)self alliMessageApps];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *v17;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      extensionBundleID = [v10 extensionBundleID];
      if ([dCopy isEqualToString:extensionBundleID])
      {
        v13 = v10;
LABEL_14:

        goto LABEL_15;
      }

      appBundleID = [v10 appBundleID];
      if ([dCopy isEqualToString:appBundleID])
      {
        v14 = v10;

        goto LABEL_14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v10 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v10;
}

- (BOOL)haveDeletableApps
{
  deletableAppsWithiMessageApp = [(CKSettingsiMessageAppManager *)self deletableAppsWithiMessageApp];
  if ([deletableAppsWithiMessageApp count])
  {
    v4 = 1;
  }

  else
  {
    deletableiMessageOnlyApps = [(CKSettingsiMessageAppManager *)self deletableiMessageOnlyApps];
    v4 = [deletableiMessageOnlyApps count] != 0;
  }

  return v4;
}

- (void)_clearCacheForDerivableiMessageAppLists
{
  alliMessageApps = self->_alliMessageApps;
  self->_alliMessageApps = 0;

  deletableiMessageOnlyApps = self->_deletableiMessageOnlyApps;
  self->_deletableiMessageOnlyApps = 0;

  deletableAppsWithiMessageApp = self->_deletableAppsWithiMessageApp;
  self->_deletableAppsWithiMessageApp = 0;
}

- (id)extensionAttributesForExtensionPoint:(id)point
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCA0F8];
  v8[0] = point;
  v3 = MEMORY[0x277CBEAC0];
  pointCopy = point;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)_loadiMessageAppsSyncronouslyForExtensionPoint:(id)point
{
  v25 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v5 = [(CKSettingsiMessageAppManager *)self extensionAttributesForExtensionPoint:pointCopy];
  v21 = 0;
  v16 = [MEMORY[0x277CCA9C8] extensionsWithMatchingAttributes:v5 error:&v21];
  v6 = v21;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = pointCopy;
        _os_log_impl(&dword_258D24000, v7, OS_LOG_TYPE_INFO, "Error loading extension point: %@", buf, 0xCu);
      }
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v16;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [[CKSettingsiMessageApp alloc] initWithExtension:*(*(&v17 + 1) + 8 * i)];
          if (v14)
          {
            [v9 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }

    v8 = [v9 copy];
  }

  return v8;
}

- (id)_beginMonitoringExtensionPoint:(id)point
{
  pointCopy = point;
  v5 = [(CKSettingsiMessageAppManager *)self extensionAttributesForExtensionPoint:pointCopy];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CCA9C8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CKSettingsiMessageAppManager__beginMonitoringExtensionPoint___block_invoke;
  v10[3] = &unk_2798C4A10;
  objc_copyWeak(&v12, &location);
  v7 = pointCopy;
  v11 = v7;
  v8 = [v6 beginMatchingExtensionsWithAttributes:v5 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __63__CKSettingsiMessageAppManager__beginMonitoringExtensionPoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_258D24000, v8, OS_LOG_TYPE_INFO, "Received updated extension list for extension point: %@", buf, 0xCu);
    }
  }

  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__CKSettingsiMessageAppManager__beginMonitoringExtensionPoint___block_invoke_95;
    block[3] = &unk_2798C49E8;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__CKSettingsiMessageAppManager__beginMonitoringExtensionPoint___block_invoke_95(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [CKSettingsiMessageApp alloc];
        v10 = [(CKSettingsiMessageApp *)v9 initWithExtension:v8, v15];
        if (v10)
        {
          [v2 addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([a1[5] isEqualToString:*MEMORY[0x277D19F68]])
  {
    v11 = 8;
LABEL_14:
    v12 = [v2 copy];
    v13 = a1[6];
    v14 = *&v13[v11];
    *&v13[v11] = v12;

    goto LABEL_15;
  }

  if ([a1[5] isEqualToString:*MEMORY[0x277D19F70]])
  {
    v11 = 16;
    goto LABEL_14;
  }

LABEL_15:
  [a1[6] _clearCacheForDerivableiMessageAppLists];
  [a1[6] _notifyForInstalledAppChange];
}

- (void)_notifyForInstalledAppChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CKSettingsiMessageAppManagerInstalledAppsDidChange" object:0];
}

- (void)_endMonitoringExtensionInstallation
{
  if (self->_payloadProviderExtensionsMonitoringContext)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
    payloadProviderExtensionsMonitoringContext = self->_payloadProviderExtensionsMonitoringContext;
    self->_payloadProviderExtensionsMonitoringContext = 0;
  }

  if (self->_highMemoryPayloadProviderExtensionsMonitoringContext)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
    highMemoryPayloadProviderExtensionsMonitoringContext = self->_highMemoryPayloadProviderExtensionsMonitoringContext;
    self->_highMemoryPayloadProviderExtensionsMonitoringContext = 0;
  }
}

- (void)dealloc
{
  [(CKSettingsiMessageAppManager *)self _endMonitoringExtensionInstallation];
  v3.receiver = self;
  v3.super_class = CKSettingsiMessageAppManager;
  [(CKSettingsiMessageAppManager *)&v3 dealloc];
}

@end