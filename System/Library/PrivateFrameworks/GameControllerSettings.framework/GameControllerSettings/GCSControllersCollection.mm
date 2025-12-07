@interface GCSControllersCollection
- (BOOL)storeVersionIsCompatible;
- (GCSControllersCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults;
- (GCSSettingsStoreService)settingsStore;
- (id)controllerForPersistentIdentifier:(id)identifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateControllers:(id)controllers;
@end

@implementation GCSControllersCollection

- (GCSControllersCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults
{
  storeCopy = store;
  defaultsCopy = defaults;
  v14.receiver = self;
  v14.super_class = GCSControllersCollection;
  v8 = [(GCSControllersCollection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, storeCopy);
    objc_storeStrong(&v9->_userDefaults, defaults);
    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"controllers" options:5 context:0];
    WeakRetained = objc_loadWeakRetained(&v9->_settingsStore);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = objc_loadWeakRetained(&v9->_settingsStore);
      [v12 addObserver:v9 forKeyPath:@"settingsVersion" options:5 context:0];
    }
  }

  return v9;
}

- (BOOL)storeVersionIsCompatible
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  v3 = [WeakRetained savedDataMeetsRequiredVersion:@"10.1.21"];

  return v3;
}

- (id)controllerForPersistentIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        persistentIdentifier = [v9 persistentIdentifier];
        v11 = [persistentIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)updateControllers:(id)controllers
{
  v24 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSControllersCollection *)self storeVersionIsCompatible])
  {
    v5 = [controllersCopy objectForKeyedSubscript:@"data"];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v5, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          v10 = 0;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            v12 = [GCSController alloc];
            v13 = [(GCSController *)v12 initWithJSONObject:v11, v17];
            [v6 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }

      v14 = getGCSLogger([(GCSControllersCollection *)self setValues:v6]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        values = [(GCSControllersCollection *)self values];
        *buf = 138412290;
        v23 = values;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSControllersCollection.values = %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = getGCSLogger([(GCSControllersCollection *)self setValues:MEMORY[0x277CBEBF8]]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      values2 = [(GCSControllersCollection *)self values];
      *buf = 138412290;
      v23 = values2;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSControllersCollection.values = %@", buf, 0xCu);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"controllers"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![pathCopy isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSControllersCollection;
      [(GCSControllersCollection *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"controllers"];
  }

  v14 = v13;
  [(GCSControllersCollection *)self updateControllers:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"controllers" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"settingsVersion" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSControllersCollection;
  [(GCSControllersCollection *)&v6 dealloc];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

@end