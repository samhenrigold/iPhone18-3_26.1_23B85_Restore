@interface GCSCopilotFusedControllersCollection
- (BOOL)storeVersionIsCompatible;
- (GCSCopilotFusedControllersCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults;
- (GCSSettingsStoreService)settingsStore;
- (id)_unitTest_fusePilotController:(id)controller withCopilot:(id)copilot;
- (id)copilotFusedControllerForControllerIdentifier:(id)identifier;
- (id)copilotFusedControllerForCopilotControllerIdentifier:(id)identifier;
- (id)copilotFusedControllerForFusedControllerIdentifier:(id)identifier;
- (id)copilotFusedControllerForPilotControllerIdentifier:(id)identifier;
- (void)_unitTest_saveCopilotFusedControllers:(id)controllers;
- (void)_unitTest_unfuseCopilotFusedController:(id)controller;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateCopilotFusedControllers:(id)controllers;
@end

@implementation GCSCopilotFusedControllersCollection

- (GCSCopilotFusedControllersCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults
{
  storeCopy = store;
  defaultsCopy = defaults;
  v14.receiver = self;
  v14.super_class = GCSCopilotFusedControllersCollection;
  v8 = [(GCSCopilotFusedControllersCollection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, storeCopy);
    objc_storeStrong(&v9->_userDefaults, defaults);
    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"copilotFusedControllers" options:5 context:0];
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

- (id)copilotFusedControllerForControllerIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        fusedControllerIdentifier = [v10 fusedControllerIdentifier];
        if ([fusedControllerIdentifier isEqualToString:identifierCopy])
        {
          goto LABEL_14;
        }

        pilotIdentifier = [v10 pilotIdentifier];
        if ([pilotIdentifier isEqualToString:identifierCopy])
        {

LABEL_14:
LABEL_15:
          v15 = v10;
          goto LABEL_16;
        }

        copilotIdentifier = [v10 copilotIdentifier];
        v14 = [copilotIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          goto LABEL_15;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (id)copilotFusedControllerForFusedControllerIdentifier:(id)identifier
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
        fusedControllerIdentifier = [v9 fusedControllerIdentifier];
        v11 = [fusedControllerIdentifier isEqualToString:identifierCopy];

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

- (id)copilotFusedControllerForPilotControllerIdentifier:(id)identifier
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
        pilotIdentifier = [v9 pilotIdentifier];
        v11 = [pilotIdentifier isEqualToString:identifierCopy];

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

- (id)copilotFusedControllerForCopilotControllerIdentifier:(id)identifier
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
        copilotIdentifier = [v9 copilotIdentifier];
        v11 = [copilotIdentifier isEqualToString:identifierCopy];

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

- (void)updateCopilotFusedControllers:(id)controllers
{
  v24 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSCopilotFusedControllersCollection *)self storeVersionIsCompatible])
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
            v12 = [GCSCopilotFusedController alloc];
            v13 = [(GCSCopilotFusedController *)v12 initWithJSONObject:v11, v17];
            [v6 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }

      v14 = getGCSLogger([(GCSCopilotFusedControllersCollection *)self setValues:v6]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        values = [(GCSCopilotFusedControllersCollection *)self values];
        *buf = 138412290;
        v23 = values;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSCopilotFusedControllersCollection.values = %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = getGCSLogger([(GCSCopilotFusedControllersCollection *)self setValues:MEMORY[0x277CBEBF8]]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      values2 = [(GCSCopilotFusedControllersCollection *)self values];
      *buf = 138412290;
      v23 = values2;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSCopilotFusedControllersCollection.values = %@", buf, 0xCu);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"copilotFusedControllers"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![pathCopy isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSCopilotFusedControllersCollection;
      [(GCSCopilotFusedControllersCollection *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"copilotFusedControllers"];
  }

  v14 = v13;
  [(GCSCopilotFusedControllersCollection *)self updateCopilotFusedControllers:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"copilotFusedControllers" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"settingsVersion" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSCopilotFusedControllersCollection;
  [(GCSCopilotFusedControllersCollection *)&v6 dealloc];
}

- (id)_unitTest_fusePilotController:(id)controller withCopilot:(id)copilot
{
  copilotCopy = copilot;
  controllerCopy = controller;
  v9 = [(GCSCopilotFusedControllersCollection *)self copilotFusedControllerForControllerIdentifier:controllerCopy];

  if (v9)
  {
    [GCSCopilotFusedControllersCollection _unitTest_fusePilotController:a2 withCopilot:self];
  }

  v10 = [(GCSCopilotFusedControllersCollection *)self copilotFusedControllerForControllerIdentifier:copilotCopy];

  if (v10)
  {
    [GCSCopilotFusedControllersCollection _unitTest_fusePilotController:a2 withCopilot:self];
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [[GCSCopilotFusedController alloc] initWithFusedControllerIdentifier:uUIDString pilotIdentifier:controllerCopy copilotIdentifier:copilotCopy];
  values = self->_values;
  if (values)
  {
    v15 = [(NSArray *)values mutableCopy];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  [(NSArray *)v15 addObject:v13];
  v17 = self->_values;
  self->_values = v16;
  v18 = v16;

  [(GCSCopilotFusedControllersCollection *)self _unitTest_saveCopilotFusedControllers:v18];

  return uUIDString;
}

- (void)_unitTest_unfuseCopilotFusedController:(id)controller
{
  v10 = [(GCSCopilotFusedControllersCollection *)self copilotFusedControllerForControllerIdentifier:controller];
  if (!v10)
  {
    [(GCSCopilotFusedControllersCollection *)a2 _unitTest_unfuseCopilotFusedController:?];
  }

  values = self->_values;
  if (values)
  {
    v6 = [(NSArray *)values mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  [(NSArray *)v6 removeObject:v10];
  v8 = self->_values;
  self->_values = v7;
  v9 = v7;

  [(GCSCopilotFusedControllersCollection *)self _unitTest_saveCopilotFusedControllers:v9];
}

- (void)_unitTest_saveCopilotFusedControllers:(id)controllers
{
  v23 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = controllersCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        jsonObject = [*(*(&v16 + 1) + 8 * v10) jsonObject];
        [v5 addObject:jsonObject];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  v20[0] = @"data";
  v20[1] = @"tombstones";
  v21[0] = v5;
  v12 = [(GCUserDefaults *)self->_userDefaults objectForKey:?];
  v13 = v12;
  v14 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v14 = v12;
  }

  v21[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:{2, v16}];

  [(GCUserDefaults *)self->_userDefaults setObject:@"10.1.21" forKey:@"settingsVersion"];
  [(GCUserDefaults *)self->_userDefaults setObject:v15 forKey:@"copilotFusedControllers"];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

- (void)_unitTest_fusePilotController:(uint64_t)a1 withCopilot:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCSCopilotFusedControllersCollection.m" lineNumber:134 description:@"The pilot controller is already fused to another controller"];
}

- (void)_unitTest_fusePilotController:(uint64_t)a1 withCopilot:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCSCopilotFusedControllersCollection.m" lineNumber:135 description:@"The copilot controller is already fused to another controller"];
}

- (void)_unitTest_unfuseCopilotFusedController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCSCopilotFusedControllersCollection.m" lineNumber:151 description:@"The copilot fused controller does not exist"];
}

@end