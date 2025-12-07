@interface PHLiveLookupSettingsController
- (BOOL)_isUniqueExtension:(id)extension;
- (BOOL)canEditExtensions;
- (BOOL)hasExtensions;
- (PHLiveLookupSettingsController)initWithParent:(id)parent;
- (id)_extensionFrom:(id)from;
- (id)_localizedExtensionTitleForExtension:(id)extension unique:(BOOL)unique;
- (id)createExtensionsGroupSpecifiers;
- (id)extensionForSpecifier:(id)specifier;
- (id)readPreferenceValue:(id)value;
- (id)specifiers;
- (void)_updateExtensions;
- (void)dealloc;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification;
- (void)presentError:(id)error fromSettingEnabled:(BOOL)enabled forExtension:(id)extension;
- (void)refreshView;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation PHLiveLookupSettingsController

- (PHLiveLookupSettingsController)initWithParent:(id)parent
{
  parentCopy = parent;
  v15.receiver = self;
  v15.super_class = PHLiveLookupSettingsController;
  v6 = [(PHLiveLookupSettingsController *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(LiveLookupManagerProxy);
    extensionManager = v6->_extensionManager;
    v6->_extensionManager = v7;

    objc_storeStrong(&v6->_parent, parent);
    [(PHLiveLookupSettingsController *)v6 _updateExtensions];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _handleLLExtensionsChangedNotification, +[LiveLookupManagerProxy LLExtensionsChangedNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_handleUIApplicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create("PHLiveLookupSettingsControllerQueue", v11);
    queue = v6->_queue;
    v6->_queue = v12;
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PHLiveLookupSettingsController;
  [(PHLiveLookupSettingsController *)&v5 dealloc];
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    extensions = [(PHLiveLookupSettingsController *)self extensions];
    v11 = [extensions mutableCopy];

    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v11 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [v11 insertObject:v12 atIndex:{objc_msgSend(indexPathCopy, "row")}];
    [(PHLiveLookupSettingsController *)self setExtensions:v11];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          identifier = [*(*(&v21 + 1) + 8 * v18) identifier];
          [v13 addObject:identifier];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    extensionManager = [(PHLiveLookupSettingsController *)self extensionManager];
    [extensionManager setWithPrioritizedExtensionIdentifiers:v13];
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  extensions = [(PHLiveLookupSettingsController *)self extensions];
  v5 = [extensions count];

  if (v5)
  {
    createExtensionsGroupSpecifiers = [(PHLiveLookupSettingsController *)self createExtensionsGroupSpecifiers];
    [v3 addObjectsFromArray:createExtensionsGroupSpecifiers];
  }

  return v3;
}

- (id)readPreferenceValue:(id)value
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(PHLiveLookupSettingsController *)self extensionForSpecifier:value];
  if (v4)
  {
    extensionManager = [(PHLiveLookupSettingsController *)self extensionManager];
    v6 = [extensionManager extensionEnabled:v4];

    v9 = TPSLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"DISABLED";
      if (v6)
      {
        v10 = @"ENABLED";
      }

      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "Getting extension enabled (%@) as %@", &v13, 0x16u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v30 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  specifierCopy = specifier;
  v8 = [(PHLiveLookupSettingsController *)self extensionForSpecifier:specifierCopy];
  if (v8)
  {
    extensionManager = [(PHLiveLookupSettingsController *)self extensionManager];
    v10 = [extensionManager extensionEnabled:v8];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = [valueCopy BOOLValue];
      v13 = isKindOfClass;
    }

    else
    {
      v13 = 0;
    }

    v14 = TPSLog(isKindOfClass, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"DISABLED";
      if (v13)
      {
        v15 = @"ENABLED";
      }

      *buf = 138412546;
      v27 = v8;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Setting live lookup extension (%@) to %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    extensionManager2 = [(PHLiveLookupSettingsController *)self extensionManager];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke;
    v21 = &unk_2782E3A20;
    objc_copyWeak(&v24, buf);
    v17 = specifierCopy;
    v22 = v17;
    v25 = v13;
    v23 = v8;
    [extensionManager2 setEnabled:v13 forExtension:v23 completion:&v18];

    if (v10 != v13)
    {
      [v17 setProperty:MEMORY[0x277CBEC38] forKey:{*MEMORY[0x277D3FEA8], v18, v19, v20, v21, v22}];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

void __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2;
  block[3] = &unk_2782E39F8;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = *(a1 + 32);
  v7 = v3;
  v10 = *(a1 + 56);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [*(a1 + 32) setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEA8]];
    WeakRetained = [v4 refreshView];
  }

  if (*(a1 + 40))
  {
    v5 = TPSLog(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2_cold_1(a1, (a1 + 40), v5);
    }

    v6 = objc_loadWeakRetained((a1 + 56));
    v7 = v6;
    if (v6)
    {
      [v6 presentError:*(a1 + 40) fromSettingEnabled:*(a1 + 64) forExtension:*(a1 + 48)];
      v8 = [v7 parent];
      [v8 reloadSpecifier:*(a1 + 32) animated:1];
    }
  }
}

- (id)extensionForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"LiveLookupDBExtension"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = TPSLog(notificationCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    name = [notificationCopy name];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  [(PHLiveLookupSettingsController *)self _updateExtensions];
}

- (void)_updateExtensions
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = TPSLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "live lookup _updateExtensions", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PHLiveLookupSettingsController__updateExtensions__block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  v6 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__PHLiveLookupSettingsController__updateExtensions__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) extensionManager];
  v3 = [v2 extensions];

  if (v3)
  {
    v6 = TPSLog(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v3;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Received live lookup extensions %@", buf, 0xCu);
    }
  }

  v7 = TPSLog(v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_DEFAULT, "live lookup _updateExtensions: %@", buf, 0xCu);
  }

  if (!v3 || ([*(a1 + 32) extensions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "isEqualToArray:", v8), v8, (v9 & 1) == 0))
  {
    v10 = [*(a1 + 32) parent];
    v11 = [v10 isEditing];

    if ((v11 & 1) == 0)
    {
      v12 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setExtensions:v12];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v3;
      v13 = v3;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v16 = v14;
        v17 = *v24;
        do
        {
          v18 = 0;
          do
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v23 + 1) + 8 * v18);
            v20 = TPSLog(v14, v15);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v29 = v19;
              _os_log_impl(&dword_21B8E9000, v20, OS_LOG_TYPE_DEFAULT, "live lookup extension: %@", buf, 0xCu);
            }

            v21 = [*(a1 + 32) extensions];
            [v21 addObject:v19];

            ++v18;
          }

          while (v16 != v18);
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
          v16 = v14;
        }

        while (v14);
      }

      [*(a1 + 32) refreshView];
      v3 = v22;
    }
  }
}

- (id)_extensionFrom:(id)from
{
  v4 = MEMORY[0x277CCA9C8];
  fromCopy = from;
  extensionManager = [(PHLiveLookupSettingsController *)self extensionManager];
  v7 = [extensionManager extensionName:fromCopy];

  v8 = [v4 extensionWithIdentifier:v7 error:0];

  return v8;
}

- (BOOL)_isUniqueExtension:(id)extension
{
  v26 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  selfCopy = self;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(PHLiveLookupSettingsController *)self extensions];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(PHLiveLookupSettingsController *)selfCopy _extensionFrom:*(*(&v21 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          containingAppURL = [v9 containingAppURL];
          absoluteString = [containingAppURL absoluteString];
          containingAppURL2 = [extensionCopy containingAppURL];
          absoluteString2 = [containingAppURL2 absoluteString];
          v15 = [absoluteString isEqualToString:absoluteString2];

          if (v15)
          {
            if (v6 >= 1)
            {

              goto LABEL_14;
            }

            ++v6;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v16 = v6 == 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  return v16;
}

- (id)createExtensionsGroupSpecifiers
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "live lookup createExtensionsGroupSpecifiers", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LIVE_LOOKUP_EXTENSIONS_LIST_HEADER" value:&stru_282D54710 table:@"CallDirectorySettings"];
  v8 = [v5 groupSpecifierWithID:@"LiveLookupSettingsGroup" name:v7];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"LIVE_LOOKUP_EXTENSIONS_LIST_FOOTER" value:&stru_282D54710 table:@"CallDirectorySettings"];
  [v8 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];

  v44 = array;
  v40 = v8;
  v11 = [array insertObject:v8 atIndex:0];
  v13 = TPSLog(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    extensions = [(PHLiveLookupSettingsController *)self extensions];
    *buf = 138412290;
    v56 = extensions;
    _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "live lookup extensions=%@", buf, 0xCu);
  }

  v15 = objc_alloc(MEMORY[0x277CBEB18]);
  extensions2 = [(PHLiveLookupSettingsController *)self extensions];
  v43 = [v15 initWithCapacity:{objc_msgSend(extensions2, "count")}];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  extensions3 = [(PHLiveLookupSettingsController *)self extensions];
  v18 = [extensions3 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v50;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(extensions3);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        v23 = MEMORY[0x277CCA9C8];
        extensionManager = [(PHLiveLookupSettingsController *)self extensionManager];
        v25 = [extensionManager extensionName:v22];
        v26 = [v23 extensionWithIdentifier:v25 error:0];

        if (v26)
        {
          [v43 addObject:v26];
        }
      }

      v19 = [extensions3 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v19);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [(PHLiveLookupSettingsController *)self extensions];
  v27 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v46;
    v42 = *MEMORY[0x277D3FFC0];
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v45 + 1) + 8 * j);
        v32 = [(PHLiveLookupSettingsController *)self _extensionFrom:v31];
        if (v32)
        {
          v33 = [(PHLiveLookupSettingsController *)self _localizedExtensionTitleForExtension:v32 unique:[(PHLiveLookupSettingsController *)self _isUniqueExtension:v32]];
          v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v33 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];
          v35 = MEMORY[0x277D755B8];
          plugInKitProxy = [v32 plugInKitProxy];
          v37 = [v35 _iconForResourceProxy:plugInKitProxy format:0];

          [v34 setProperty:v37 forKey:v42];
          [v34 setProperty:v31 forKey:@"LiveLookupDBExtension"];
          [v44 addObject:v34];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v28);
  }

  v38 = [v44 copy];

  return v38;
}

- (id)_localizedExtensionTitleForExtension:(id)extension unique:(BOOL)unique
{
  if (unique)
  {
    extensionCopy = extension;
    localizedName = [extensionCopy localizedName];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = MEMORY[0x277CCA8D8];
    extensionCopy2 = extension;
    extensionCopy = [v7 bundleForClass:objc_opt_class()];
    v9 = [extensionCopy localizedStringForKey:@"CALL_DIRECTORY_APP_%@_EXTENSION_%@" value:&stru_282D54710 table:@"CallDirectorySettings"];
    localizedContainingAppName = [extensionCopy2 localizedContainingAppName];
    localizedName2 = [extensionCopy2 localizedName];

    localizedName = [v6 stringWithFormat:v9, localizedContainingAppName, localizedName2];
  }

  return localizedName;
}

- (BOOL)hasExtensions
{
  extensions = [(PHLiveLookupSettingsController *)self extensions];
  v3 = [extensions count] != 0;

  return v3;
}

- (BOOL)canEditExtensions
{
  extensions = [(PHLiveLookupSettingsController *)self extensions];
  v3 = [extensions count] > 1;

  return v3;
}

- (void)refreshView
{
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "live lookup refreshView", v5, 2u);
  }

  parent = [(PHLiveLookupSettingsController *)self parent];
  [parent reloadSpecifiers];
}

- (void)presentError:(id)error fromSettingEnabled:(BOOL)enabled forExtension:(id)extension
{
  v7 = @"CALL_DIRECTORY_DISABLE_EXTENSION_ALERT_UNKNOWN_%@";
  if (enabled)
  {
    v7 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_UNKNOWN_%@";
  }

  v8 = MEMORY[0x277CCA8D8];
  if (enabled)
  {
    v9 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_TITLE";
  }

  else
  {
    v9 = @"CALL_DIRECTORY_DISABLE_EXTENSION_ALERT_TITLE";
  }

  v10 = v7;
  extensionCopy = extension;
  v12 = [v8 bundleForClass:objc_opt_class()];
  v25 = [v12 localizedStringForKey:v9 value:&stru_282D54710 table:@"CallDirectorySettings"];

  v13 = [(PHLiveLookupSettingsController *)self _extensionFrom:extensionCopy];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:v10 value:&stru_282D54710 table:@"CallDirectorySettings"];

  v17 = [(PHLiveLookupSettingsController *)self _localizedExtensionTitleForExtension:v13 unique:[(PHLiveLookupSettingsController *)self _isUniqueExtension:v13]];
  v18 = [v14 stringWithFormat:v16, v17];

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v25 message:v18 preferredStyle:1];
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"OK" value:&stru_282D54710 table:@"CallDirectorySettings"];
  v23 = [v20 actionWithTitle:v22 style:0 handler:0];

  [v19 addAction:v23];
  parent = [(PHLiveLookupSettingsController *)self parent];
  [parent presentViewController:v19 animated:1 completion:0];
}

void __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *a2;
  v6[0] = 67109634;
  v6[1] = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Error setting enabled to %d for live lookup extension %@: %@", v6, 0x1Cu);
}

@end