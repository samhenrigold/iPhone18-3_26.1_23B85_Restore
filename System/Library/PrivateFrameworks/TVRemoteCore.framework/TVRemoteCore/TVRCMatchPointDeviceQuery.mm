@interface TVRCMatchPointDeviceQuery
- (TVRCMatchPointDeviceQuery)init;
- (TVRCServiceDeviceQueryDelegate)delegate;
- (void)_matchPointServiceAdded:(id)added;
- (void)_matchPointServiceNameChanged:(id)changed;
- (void)_matchPointServiceRemoved:(id)removed;
- (void)_notifyAddedService:(id)service;
- (void)_notifyRemovedService:(id)service;
- (void)dealloc;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)start;
- (void)stop;
@end

@implementation TVRCMatchPointDeviceQuery

- (TVRCMatchPointDeviceQuery)init
{
  v6.receiver = self;
  v6.super_class = TVRCMatchPointDeviceQuery;
  v2 = [(TVRCMatchPointDeviceQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceImplMap = v2->_deviceImplMap;
    v2->_deviceImplMap = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(TVRCMatchPointDeviceQuery *)self stop];
  v3.receiver = self;
  v3.super_class = TVRCMatchPointDeviceQuery;
  [(TVRCMatchPointDeviceQuery *)&v3 dealloc];
}

- (void)start
{
  v3 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Starting query for HomeKit services", v10, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__matchPointServiceAdded_ name:@"TVRCMatchPointServiceAddedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__matchPointServiceRemoved_ name:@"TVRCMatchPointServiceRemovedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__matchPointServiceNameChanged_ name:@"TVRCMatchPointServiceNameChangedNotification" object:0];
  if (!self->_homeManager)
  {
    v5 = [objc_alloc(MEMORY[0x277CD1C60]) initWithOptions:1024 cachePolicy:1];
    [v5 setAdaptive:1];
    v6 = [objc_alloc(MEMORY[0x277CD1A90]) initWithConfiguration:v5];
    homeManager = self->_homeManager;
    self->_homeManager = v6;

    [(HMHomeManager *)self->_homeManager setDelegate:self];
    v8 = [(HMHomeManager *)self->_homeManager _beginActiveAssertionWithReason:@"foreground"];
    homekitActiveAssertion = self->_homekitActiveAssertion;
    self->_homekitActiveAssertion = v8;
  }
}

- (void)stop
{
  v3 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping query for HomeKit services", v8, 2u);
  }

  if (self->_homekitActiveAssertion)
  {
    [(HMHomeManager *)self->_homeManager _endActiveAssertion:?];
    homekitActiveAssertion = self->_homekitActiveAssertion;
    self->_homekitActiveAssertion = 0;
  }

  [(HMHomeManager *)self->_homeManager setDelegate:0];
  homeManager = self->_homeManager;
  self->_homeManager = 0;

  [(NSMutableDictionary *)self->_deviceImplMap removeAllObjects];
  v6 = +[TVRCHMHomeObserver sharedInstance];
  [v6 setCurrentHome:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceAddedNotification" object:0];
  [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceRemovedNotification" object:0];
  [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceNameChangedNotification" object:0];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v12 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v4 = _TVRCHomeKitLog(homesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated homes", &v8, 2u);
  }

  currentHome = [homesCopy currentHome];
  if (currentHome)
  {
    v6 = +[TVRCHMHomeObserver sharedInstance];
    [v6 setCurrentHome:currentHome];
  }

  else
  {
    v6 = _TVRCHomeKitLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      homes = [homesCopy homes];
      v8 = 138412546;
      v9 = homesCopy;
      v10 = 2112;
      v11 = homes;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "No current home found for manager %@. All homes - %@", &v8, 0x16u);
    }
  }
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = _TVRCHomeKitLog(homeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated current home", &v12, 2u);
  }

  if (self->_homeManager == homeCopy)
  {
    currentHome = [(HMHomeManager *)homeCopy currentHome];
    if (currentHome)
    {
      v8 = +[TVRCHMHomeObserver sharedInstance];
      currentHome2 = [v8 currentHome];

      if (currentHome2 == currentHome)
      {
        goto LABEL_12;
      }

      v10 = +[TVRCHMHomeObserver sharedInstance];
      [v10 setCurrentHome:currentHome];
    }

    else
    {
      v10 = _TVRCHomeKitLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        homes = [(HMHomeManager *)homeCopy homes];
        v12 = 138412546;
        v13 = homeCopy;
        v14 = 2112;
        v15 = homes;
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "No current home found for manager %@. All homes - %@", &v12, 0x16u);
      }
    }

    goto LABEL_12;
  }

  currentHome = _TVRCHomeKitLog(v6);
  if (os_log_type_enabled(currentHome, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26CF7F000, currentHome, OS_LOG_TYPE_DEFAULT, "HomeKit home manager does not match", &v12, 2u);
  }

LABEL_12:
}

- (void)_matchPointServiceAdded:(id)added
{
  v18 = *MEMORY[0x277D85DE8];
  object = [added object];
  v5 = _TVRCHomeKitLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = object;
    v6 = v15;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that MatchPoint service added %@", &v14, 0x16u);
  }

  uniqueIdentifier = [object uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v9 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:uUIDString];

  v11 = _TVRCHomeKitLog(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v14 = 138412290;
      v15 = object;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Found existing mapping for service: %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      v14 = 138412290;
      v15 = object;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Creating mapping for service %@", &v14, 0xCu);
    }

    v11 = [TVRCHMServiceWrapper wrapperWithService:object];
    v13 = [TVRCMatchPointDeviceImpl implWithService:v11];
    [(NSMutableDictionary *)self->_deviceImplMap setObject:v13 forKey:uUIDString];
    [(TVRCMatchPointDeviceQuery *)self _notifyAddedService:v13];
  }
}

- (void)_matchPointServiceRemoved:(id)removed
{
  v14 = *MEMORY[0x277D85DE8];
  object = [removed object];
  v5 = _TVRCHomeKitLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = object;
    v6 = v11;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that MatchPoint service removed %@", &v10, 0x16u);
  }

  uniqueIdentifier = [object uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v9 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:uUIDString];
  if (v9)
  {
    [(NSMutableDictionary *)self->_deviceImplMap removeObjectForKey:uUIDString];
    [(TVRCMatchPointDeviceQuery *)self _notifyRemovedService:v9];
  }
}

- (void)_matchPointServiceNameChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  object = [changed object];
  uniqueIdentifier = [object uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v7 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:uUIDString];
  v8 = _TVRCHomeKitLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    name = [object name];
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = object;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that service updated name %@. New name : %@", &v12, 0x20u);
  }

  if (v7)
  {
    [(TVRCMatchPointDeviceQuery *)self _notifyRemovedService:v7];
    [(TVRCMatchPointDeviceQuery *)self _notifyAddedService:v7];
  }
}

- (void)_notifyAddedService:(id)service
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = _TVRCHomeKitLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = serviceCopy;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Informing delegate we added MatchPoint service, %@", &v10, 0xCu);
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 addedDevice:serviceCopy];
  }
}

- (void)_notifyRemovedService:(id)service
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = _TVRCHomeKitLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = serviceCopy;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Informing delegate we removed MatchPoint service, %@", &v10, 0xCu);
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 removedDevice:serviceCopy];
  }
}

- (TVRCServiceDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end