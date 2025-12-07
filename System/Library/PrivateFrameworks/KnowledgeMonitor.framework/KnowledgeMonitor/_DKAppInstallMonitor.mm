@interface _DKAppInstallMonitor
+ (id)_eventWithAppProxy:(id)proxy didInstall:(BOOL)install;
+ (id)_metadataFromProxy:(id)proxy didInstall:(BOOL)install;
- (_DKAppInstallMonitor)init;
- (void)_applicationsDidChange:(id)change didInstall:(BOOL)install;
@end

@implementation _DKAppInstallMonitor

- (_DKAppInstallMonitor)init
{
  v12.receiver = self;
  v12.super_class = _DKAppInstallMonitor;
  v2 = [(_DKMonitor *)&v12 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    v4 = [v3 App];
    install = [v4 Install];
    source = [install source];
    source = v2->_source;
    v2->_source = source;

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    appWorkspace = v2->_appWorkspace;
    v2->_appWorkspace = defaultWorkspace;

    [(LSApplicationWorkspace *)v2->_appWorkspace addObserver:v2];
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_DEBUG))
    {
      [(_DKAppInstallMonitor *)knowledgeChannel init];
    }
  }

  return v2;
}

+ (id)_metadataFromProxy:(id)proxy didInstall:(BOOL)install
{
  installCopy = install;
  v32 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  itemName = [proxyCopy itemName];
  if (itemName)
  {
    title = [MEMORY[0x277CFE160] title];
    [dictionary setObject:itemName forKeyedSubscript:title];
  }

  genre = [proxyCopy genre];
  if (genre)
  {
    primaryCategory = [MEMORY[0x277CFE160] primaryCategory];
    [dictionary setObject:genre forKeyedSubscript:primaryCategory];
  }

  subgenres = [proxyCopy subgenres];
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = subgenres;
    v25 = genre;
    v26 = itemName;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = subgenres;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 objectForKeyedSubscript:@"genre"];
            if (v19)
            {
              [array addObject:v19];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    itemName = v26;
    installCopy = installCopy;
    genre = v25;
  }

  if ([array count])
  {
    subCategories = [MEMORY[0x277CFE160] subCategories];
    [dictionary setObject:array forKeyedSubscript:subCategories];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:installCopy];
  isInstall = [MEMORY[0x277CFE160] isInstall];
  [dictionary setObject:v21 forKeyedSubscript:isInstall];

  return dictionary;
}

+ (id)_eventWithAppProxy:(id)proxy didInstall:(BOOL)install
{
  installCopy = install;
  proxyCopy = proxy;
  v7 = [self _metadataFromProxy:proxyCopy didInstall:installCopy];
  v8 = [self _identifierFromProxy:proxyCopy];
  v9 = [self _dateFromProxy:proxyCopy];

  v10 = MEMORY[0x277CFE1D8];
  appInstallStream = [MEMORY[0x277CFE298] appInstallStream];
  v12 = [MEMORY[0x277CFE1A8] withBundle:v8];
  v13 = [v10 eventWithStream:appInstallStream startDate:v9 endDate:v9 value:v12 metadata:v7];

  return v13;
}

- (void)_applicationsDidChange:(id)change didInstall:(BOOL)install
{
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = [(_DKMonitor *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58___DKAppInstallMonitor__applicationsDidChange_didInstall___block_invoke;
  v13[3] = &unk_27856F678;
  v8 = changeCopy;
  v14 = v8;
  objc_copyWeak(&v15, &location);
  installCopy = install;
  v9 = v13;
  v10 = queue;
  v11 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_27856F178;
  v19 = v11;
  v20 = v9;
  v12 = v11;
  dispatch_async(v10, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end