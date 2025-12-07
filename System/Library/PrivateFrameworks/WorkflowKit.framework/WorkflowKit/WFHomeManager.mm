@interface WFHomeManager
+ (id)cachedHomeSceneNames;
+ (id)sharedManager;
+ (void)updateHomeToHH2;
- (BOOL)requiresHomeUpdate;
- (NSArray)homesToWhichWeCanAddHomeAutomations;
- (NSArray)homesToWhichWeHaveAdminAccess;
- (WFHomeManager)init;
- (id)homeNamed:(id)named;
- (id)homeWithIdentifier:(id)identifier;
- (id)primaryHome;
- (id)sceneNamed:(id)named inHome:(id)home;
- (id)serviceWithIdentifier:(id)identifier inHome:(id)home;
- (unint64_t)status;
- (void)_setHomes:(id)homes;
- (void)addEventObserver:(id)observer;
- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change;
- (void)cacheHomeSceneNames;
- (void)dealloc;
- (void)ensureHomesAreLoadedWithCompletionHandler:(id)handler;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)reloadData;
- (void)removeEventObserver:(id)observer;
@end

@implementation WFHomeManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1644 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1644, &__block_literal_global_1645);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __30__WFHomeManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WFHomeManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (WFHomeManager)init
{
  v12.receiver = self;
  v12.super_class = WFHomeManager;
  v2 = [(WFHomeManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    homes = v2->_homes;
    v2->_homes = MEMORY[0x1E695E0F0];

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventObservers = v3->_eventObservers;
    v3->_eventObservers = weakObjectsHashTable;

    v7 = dispatch_group_create();
    loadHomesGroup = v3->_loadHomesGroup;
    v3->_loadHomesGroup = v7;

    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    [mEMORY[0x1E6996CA8] addApplicationStateObserver:v3 forEvent:3];

    v10 = v3;
  }

  return v3;
}

- (void)reloadData
{
  if (!self->_loading)
  {
    v3 = objc_opt_new();
    status = [v3 status];

    if (status == 4)
    {
      if (!self->_homeManager)
      {
        v5 = [objc_alloc(getHMHomeManagerClass()) initWithOptions:1025];
        homeManager = self->_homeManager;
        self->_homeManager = v5;
      }

      self->_loading = 1;
      dispatch_group_enter(self->_loadHomesGroup);
      [(HMHomeManager *)self->_homeManager setDelegate:0];
      v7 = self->_homeManager;

      [(HMHomeManager *)v7 setDelegate:self];
    }
  }
}

- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change
{
  if (change == 3)
  {
    [(WFHomeManager *)self reloadData];
  }
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  v17 = *MEMORY[0x1E69E9840];
  if (state)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(WFHomeManager *)self eventObservers:manager];
    allObjects = [v5 allObjects];

    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 homeManagerDidMigrateToHH2:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  *&self->_hasLoadedHomes = 1;
  homes = [homes homes];
  [(WFHomeManager *)self _setHomes:homes];

  loadHomesGroup = self->_loadHomesGroup;

  dispatch_group_leave(loadHomesGroup);
}

- (void)cacheHomeSceneNames
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  homes = [(WFHomeManager *)self homes];
  v5 = [homes countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        actionSets = [v9 actionSets];
        v11 = [actionSets countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            v14 = 0;
            do
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(actionSets);
              }

              name = [*(*(&v17 + 1) + 8 * v14) name];
              [v3 addObject:name];

              ++v14;
            }

            while (v12 != v14);
            v12 = [actionSets countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [homes countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults setObject:v3 forKey:@"WFKnownHomeSceneNames"];
}

- (id)serviceWithIdentifier:(id)identifier inHome:(id)home
{
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  homes = [(WFHomeManager *)self homes];
  v7 = [homes countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = *v42;
    v31 = homes;
    v28 = *v42;
    do
    {
      v9 = 0;
      v27 = v7;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(homes);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        serviceGroups = [v10 serviceGroups];
        v30 = [serviceGroups countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v30)
        {
          v12 = *v38;
          v26 = v9;
          v32 = serviceGroups;
          v29 = *v38;
          do
          {
            v13 = 0;
            do
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(serviceGroups);
              }

              v14 = *(*(&v37 + 1) + 8 * v13);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              services = [v14 services];
              v16 = [services countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v34;
                while (2)
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v34 != v18)
                    {
                      objc_enumerationMutation(services);
                    }

                    v20 = *(*(&v33 + 1) + 8 * i);
                    uniqueIdentifier = [v20 uniqueIdentifier];
                    uUIDString = [uniqueIdentifier UUIDString];
                    isEqualToString = objc_msgSend_isEqualToString_(uUIDString);

                    if (isEqualToString)
                    {
                      v24 = v20;

                      homes = v31;
                      goto LABEL_26;
                    }
                  }

                  v17 = [services countByEnumeratingWithState:&v33 objects:v45 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v13;
              homes = v31;
              serviceGroups = v32;
              v12 = v29;
            }

            while (v13 != v30);
            v9 = v26;
            v30 = [v32 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v30);
        }

        ++v9;
        v8 = v28;
      }

      while (v9 != v27);
      v7 = [homes countByEnumeratingWithState:&v41 objects:v47 count:16];
      v8 = v28;
      v24 = 0;
    }

    while (v7);
  }

  else
  {
    v24 = 0;
  }

LABEL_26:

  return v24;
}

- (id)sceneNamed:(id)named inHome:(id)home
{
  namedCopy = named;
  actionSets = [home actionSets];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__WFHomeManager_sceneNamed_inHome___block_invoke;
  v11[3] = &unk_1E8373690;
  v12 = namedCopy;
  v7 = namedCopy;
  v8 = [actionSets if_objectsPassingTest:v11];
  firstObject = [v8 firstObject];

  return firstObject;
}

BOOL __35__WFHomeManager_sceneNamed_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 localizedStandardCompare:*(a1 + 32)] == 0;

  return v4;
}

- (id)primaryHome
{
  homes = [(WFHomeManager *)self homes];
  v3 = [homes if_objectsPassingTest:&__block_literal_global_205];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)homeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  homes = [(WFHomeManager *)self homes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__WFHomeManager_homeWithIdentifier___block_invoke;
  v10[3] = &unk_1E8373668;
  v11 = identifierCopy;
  v6 = identifierCopy;
  v7 = [homes if_objectsPassingTest:v10];
  firstObject = [v7 firstObject];

  return firstObject;
}

uint64_t __36__WFHomeManager_homeWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = WFSerializableHomeIdentifier(a2);
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (id)homeNamed:(id)named
{
  namedCopy = named;
  homes = [(WFHomeManager *)self homes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__WFHomeManager_homeNamed___block_invoke;
  v10[3] = &unk_1E8373668;
  v11 = namedCopy;
  v6 = namedCopy;
  v7 = [homes if_objectsPassingTest:v10];
  firstObject = [v7 firstObject];

  return firstObject;
}

BOOL __27__WFHomeManager_homeNamed___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 localizedStandardCompare:*(a1 + 32)] == 0;

  return v4;
}

- (NSArray)homesToWhichWeCanAddHomeAutomations
{
  homesToWhichWeHaveAdminAccess = [(WFHomeManager *)self homesToWhichWeHaveAdminAccess];
  v3 = [homesToWhichWeHaveAdminAccess if_objectsPassingTest:&__block_literal_global_203];

  return v3;
}

BOOL __52__WFHomeManager_homesToWhichWeCanAddHomeAutomations__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 residentDevices];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)homesToWhichWeHaveAdminAccess
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  homes = [(WFHomeManager *)self homes];
  v5 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        currentUser = [v9 currentUser];
        v11 = [v9 homeAccessControlForUser:currentUser];

        if ([v11 isAdministrator])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)status
{
  homeManager = [(WFHomeManager *)self homeManager];
  status = [homeManager status];

  return (status & 0x31) != 0;
}

- (void)removeEventObserver:(id)observer
{
  observerCopy = observer;
  eventObservers = [(WFHomeManager *)self eventObservers];
  [eventObservers removeObject:observerCopy];
}

- (void)addEventObserver:(id)observer
{
  observerCopy = observer;
  eventObservers = [(WFHomeManager *)self eventObservers];
  [eventObservers addObject:observerCopy];
}

- (void)ensureHomesAreLoadedWithCompletionHandler:(id)handler
{
  block = handler;
  if ([(WFHomeManager *)self hasLoadedHomes])
  {
    block[2]();
  }

  else
  {
    [(WFHomeManager *)self reloadData];
    dispatch_group_notify(self->_loadHomesGroup, MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)requiresHomeUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  homesToWhichWeHaveAdminAccess = [(WFHomeManager *)self homesToWhichWeHaveAdminAccess];
  v3 = [homesToWhichWeHaveAdminAccess countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(homesToWhichWeHaveAdminAccess);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        currentUser = [v6 currentUser];
        v8 = [v6 homeAccessControlForUser:currentUser];

        if (([v8 isAccessAllowed] & 1) == 0 && objc_msgSend(v8, "accessNotAllowedReasonCode") == 8)
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [homesToWhichWeHaveAdminAccess countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)_setHomes:(id)homes
{
  v19 = *MEMORY[0x1E69E9840];
  homesCopy = homes;
  if (([homesCopy isEqualToArray:self->_homes] & 1) == 0)
  {
    v5 = [homesCopy copy];
    homes = self->_homes;
    self->_homes = v5;

    [(WFHomeManager *)self cacheHomeSceneNames];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    eventObservers = [(WFHomeManager *)self eventObservers];
    allObjects = [eventObservers allObjects];

    v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 homeManagerDidUpdateHomes:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)dealloc
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  [mEMORY[0x1E6996CA8] removeApplicationStateObserver:self forEvent:3];

  v4.receiver = self;
  v4.super_class = WFHomeManager;
  [(WFHomeManager *)&v4 dealloc];
}

+ (id)cachedHomeSceneNames
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults arrayForKey:@"WFKnownHomeSceneNames"];

  return v3;
}

+ (void)updateHomeToHH2
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"com.apple.Home-private://homeHubUpdate"];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = 0;
  [defaultWorkspace openSensitiveURL:v2 withOptions:0 error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = getWFEditorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "+[WFHomeManager updateHomeToHH2]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Caught error attempting to open home app to migrate to HH2: %@", buf, 0x16u);
    }
  }
}

@end