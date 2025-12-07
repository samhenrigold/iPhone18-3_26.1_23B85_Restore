@interface CWFHomeManager
+ (id)cwfHomeManagerWithDelegate:(id)delegate;
- (BOOL)initHomeManagerInstance;
- (CWFHomeManager)initWithDelegate:(id)delegate;
- (id)getServiceEvents;
- (id)getServiceTypeStringFor:(int64_t)for;
- (int)createServiceObjectFor:(int64_t)for withParams:(id)params andAccessory:(id)accessory;
- (int)registerForAccessoryStateChange:(id)change withParams:(id)params forCWFHMServiceType:(int64_t)type;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)removeObjectForServieType:(int64_t)type withUUID:(id)d;
@end

@implementation CWFHomeManager

+ (id)cwfHomeManagerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[CWFHomeManager alloc] initWithDelegate:delegateCopy];

  return v4;
}

- (BOOL)initHomeManagerInstance
{
  v31 = *MEMORY[0x1E69E9840];
  sub_1E0D32224();
  if (!objc_opt_class())
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      defaultPrivateConfiguration = CWFGetOSLog();
    }

    else
    {
      defaultPrivateConfiguration = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(defaultPrivateConfiguration, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136446722;
      *&v28[4] = "[CWFHomeManager initHomeManagerInstance]";
      *&v28[12] = 2082;
      *&v28[14] = "CWFHomeManager.m";
      *&v28[22] = 1024;
      LODWORD(v29) = 90;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, defaultPrivateConfiguration, 16, "[corewifi] %{public}s (%{public}s:%u) HomeManager instance not available", v28, 28);
    }

    v4 = 0;
    goto LABEL_11;
  }

  _homeManager = [(CWFHomeManager *)self _homeManager];

  if (!_homeManager)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v5 = qword_1ED7E3A30;
    v27 = qword_1ED7E3A30;
    if (!qword_1ED7E3A30)
    {
      *v28 = MEMORY[0x1E69E9820];
      *&v28[8] = 3221225472;
      *&v28[16] = sub_1E0D33FB8;
      v29 = &unk_1E86E5600;
      v30 = &v24;
      sub_1E0D33E74();
      Class = objc_getClass("HMFLocationAuthorization");
      *(v30[1] + 24) = Class;
      qword_1ED7E3A30 = *(v30[1] + 24);
      v5 = v25[3];
    }

    v7 = v5;
    _Block_object_dispose(&v24, 8);
    v8 = [v5 alloc];
    v9 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"];
    v10 = [v8 initWithBundle:v9];
    [(CWFHomeManager *)self set_homeLocationAuthorization:v10];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v11 = qword_1ED7E3A38;
    v27 = qword_1ED7E3A38;
    if (!qword_1ED7E3A38)
    {
      *v28 = MEMORY[0x1E69E9820];
      *&v28[8] = 3221225472;
      *&v28[16] = sub_1E0D34008;
      v29 = &unk_1E86E5600;
      v30 = &v24;
      sub_1E0D33E74();
      v12 = objc_getClass("HMMutableHomeManagerConfiguration");
      *(v30[1] + 24) = v12;
      qword_1ED7E3A38 = *(v30[1] + 24);
      v11 = v25[3];
    }

    v13 = v11;
    _Block_object_dispose(&v24, 8);
    defaultPrivateConfiguration = [v11 defaultPrivateConfiguration];
    [defaultPrivateConfiguration setOptions:576];
    [defaultPrivateConfiguration setAdaptive:1];
    _homeLocationAuthorization = [(CWFHomeManager *)self _homeLocationAuthorization];
    [defaultPrivateConfiguration setLocationAuthorization:_homeLocationAuthorization];

    [defaultPrivateConfiguration setCachePolicy:0];
    v16 = [objc_alloc(sub_1E0D32224()) initWithHomeMangerConfiguration:defaultPrivateConfiguration];
    [(CWFHomeManager *)self set_homeManager:v16];

    _homeManager2 = [(CWFHomeManager *)self _homeManager];
    v4 = _homeManager2 != 0;

    if (v4)
    {
      _homeManager3 = [(CWFHomeManager *)self _homeManager];
      [_homeManager3 setDelegate:self];
    }

    else
    {
      v22 = CWFGetOSLog();
      if (v22)
      {
        _homeManager3 = CWFGetOSLog();
      }

      else
      {
        _homeManager3 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(_homeManager3, OS_LOG_TYPE_ERROR))
      {
        *v28 = 136446722;
        *&v28[4] = "[CWFHomeManager initHomeManagerInstance]";
        *&v28[12] = 2082;
        *&v28[14] = "CWFHomeManager.m";
        *&v28[22] = 1024;
        LODWORD(v29) = 103;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, _homeManager3, 16, "[corewifi] %{public}s (%{public}s:%u) null _homeManager", v28, 28, v24);
      }
    }

LABEL_11:
    return v4;
  }

  return 0;
}

- (CWFHomeManager)initWithDelegate:(id)delegate
{
  v30 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = CWFHomeManager;
  v5 = [(CWFHomeManager *)&v23 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.wifi.CWFHomeManager", 0);
    [(CWFHomeManager *)v5 set_serviceQueue:v6];

    [(CWFHomeManager *)v5 set_isHomeInformationAvailable:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(CWFHomeManager *)v5 set_serviceObjects:dictionary];

    [(CWFHomeManager *)v5 set_autoDataColletor:0];
    [(CWFHomeManager *)v5 set_delegate:delegateCopy];
    _delegate = [(CWFHomeManager *)v5 _delegate];

    if (_delegate)
    {
      _delegate2 = [(CWFHomeManager *)v5 _delegate];
      getServiceEvents = [(CWFHomeManager *)v5 getServiceEvents];
      v11 = [_delegate2 startMonitoringSupportedEvents:getServiceEvents];

      if ([v11 code])
      {
        v12 = CWFGetOSLog();
        if (v12)
        {
          v13 = CWFGetOSLog();
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136446722;
          v25 = "[CWFHomeManager initWithDelegate:]";
          v26 = 2082;
          v27 = "CWFHomeManager.m";
          v28 = 1024;
          v29 = 131;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] %{public}s (%{public}s:%u) unable to register for events", &v24, 28);
        }
      }

      if ([(CWFHomeManager *)v5 initHomeManagerInstance])
      {
        _homeManager = [(CWFHomeManager *)v5 _homeManager];
        v16 = [_homeManager _beginActiveAssertionWithReason:@"com.apple.wifi.HMNotificationAssertion"];
        [(CWFHomeManager *)v5 set_activeAssertion:v16];
      }

      else
      {

        v19 = CWFGetOSLog();
        if (v19)
        {
          _homeManager = CWFGetOSLog();
        }

        else
        {
          _homeManager = MEMORY[0x1E69E9C10];
          v21 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(_homeManager, OS_LOG_TYPE_ERROR))
        {
          v24 = 136446722;
          v25 = "[CWFHomeManager initWithDelegate:]";
          v26 = 2082;
          v27 = "CWFHomeManager.m";
          v28 = 1024;
          v29 = 136;
          LODWORD(v22) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, _homeManager, 16, "[corewifi] %{public}s (%{public}s:%u) unable to create HomeManager", &v24, v22);
        }

        v5 = 0;
      }
    }

    else
    {
      v18 = CWFGetOSLog();
      if (v18)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] Trying to register with NULL delegate", &v24, 2);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  _delegate = [(CWFHomeManager *)self _delegate];

  if (_delegate)
  {
    _delegate2 = [(CWFHomeManager *)self _delegate];
    getServiceEvents = [(CWFHomeManager *)self getServiceEvents];
    v6 = [_delegate2 stopMonitoringSupportedEvents:getServiceEvents];
  }

  v7.receiver = self;
  v7.super_class = CWFHomeManager;
  [(CWFHomeManager *)&v7 dealloc];
}

- (void)removeObjectForServieType:(int64_t)type withUUID:(id)d
{
  dCopy = d;
  _serviceObjects = [(CWFHomeManager *)self _serviceObjects];
  v7 = [_serviceObjects objectForKey:dCopy];

  v8 = [(CWFHomeManager *)self getServiceTypeStringFor:type];
  [v7 removeObjectForKey:v8];
}

- (int)createServiceObjectFor:(int64_t)for withParams:(id)params andAccessory:(id)accessory
{
  v48 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  if (for == 1)
  {
    paramsCopy = params;
    _delegate = [(CWFHomeManager *)self _delegate];
    v11 = [CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:accessoryCopy withOptions:paramsCopy andDelegate:_delegate];

    if (v11)
    {
      _serviceQueue = [(CWFHomeManager *)self _serviceQueue];
      block = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = sub_1E0D32BD0;
      v33 = &unk_1E86E6B18;
      v13 = v11;
      v34 = v13;
      v14 = accessoryCopy;
      v35 = v14;
      selfCopy = self;
      v37 = 1;
      dispatch_async(_serviceQueue, &block);

      _serviceObjects = [(CWFHomeManager *)self _serviceObjects];
      uniqueIdentifier = [v14 uniqueIdentifier];
      v17 = [_serviceObjects objectForKey:uniqueIdentifier];
      v18 = [(CWFHomeManager *)self getServiceTypeStringFor:1];
      [v17 setObject:v13 forKey:v18];

      v19 = CWFGetOSLog();
      if (v19)
      {
        v20 = CWFGetOSLog();
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier2 = [v14 uniqueIdentifier];
        _serviceObjects2 = [(CWFHomeManager *)self _serviceObjects];
        v38 = 136447234;
        v39 = "[CWFHomeManager createServiceObjectFor:withParams:andAccessory:]";
        v40 = 2082;
        v41 = "CWFHomeManager.m";
        v42 = 1024;
        v43 = 178;
        v44 = 2114;
        v45 = uniqueIdentifier2;
        v46 = 2114;
        v47 = _serviceObjects2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[corewifi] %{public}s (%{public}s:%u) Successfully added service object for UUID %{public}@, %{public}@", &v38, 48, block, v31, v32, v33);
      }

      v21 = 0;
      v25 = v34;
    }

    else
    {
      v27 = CWFGetOSLog();
      if (v27)
      {
        v25 = CWFGetOSLog();
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        uniqueIdentifier3 = [accessoryCopy uniqueIdentifier];
        v38 = 136446978;
        v39 = "[CWFHomeManager createServiceObjectFor:withParams:andAccessory:]";
        v40 = 2082;
        v41 = "CWFHomeManager.m";
        v42 = 1024;
        v43 = 165;
        v44 = 2114;
        v45 = uniqueIdentifier3;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create service for UUID %{public}@", &v38, 38);
      }

      v21 = -3931;
    }
  }

  else
  {
    v21 = -3900;
  }

  return v21;
}

- (id)getServiceTypeStringFor:(int64_t)for
{
  if (for == 1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CWFSensingDataCollect", v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getServiceEvents
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0D32EFC;
  v6[3] = &unk_1E86E9878;
  v6[4] = self;
  v4 = MEMORY[0x1E12EA400](v6);
  [dictionary setObject:v4 forKeyedSubscript:@"CWFPerformSensingDataCollect"];

  return dictionary;
}

- (int)registerForAccessoryStateChange:(id)change withParams:(id)params forCWFHMServiceType:(int64_t)type
{
  v81 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  paramsCopy = params;
  _homeManager = [(CWFHomeManager *)self _homeManager];

  if (!_homeManager)
  {
    v39 = CWFGetOSLog();
    if (v39)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 136446722;
      v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
      v73 = 2082;
      v74 = "CWFHomeManager.m";
      v75 = 1024;
      v76 = 225;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, homes, 0, "[corewifi] %{public}s (%{public}s:%u) No homeManager present present", &v71, 28);
    }

    goto LABEL_65;
  }

  _delegate = [(CWFHomeManager *)self _delegate];

  if (!_delegate)
  {
    v40 = CWFGetOSLog();
    if (v40)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v46 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 136446722;
      v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
      v73 = 2082;
      v74 = "CWFHomeManager.m";
      v75 = 1024;
      v76 = 230;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, homes, 0, "[corewifi] %{public}s (%{public}s:%u) No delegate present", &v71, 28);
    }

    goto LABEL_65;
  }

  if (![(CWFHomeManager *)self _isHomeInformationAvailable])
  {
    v41 = CWFGetOSLog();
    if (v41)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 136446722;
      v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
      v73 = 2082;
      v74 = "CWFHomeManager.m";
      v75 = 1024;
      v76 = 235;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, homes, 0, "[corewifi] %{public}s (%{public}s:%u) Home information not updated", &v71, 28);
    }

    goto LABEL_65;
  }

  if (!changeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v38 = CWFGetOSLog();
    if (v38)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 136446722;
      v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
      v73 = 2082;
      v74 = "CWFHomeManager.m";
      v75 = 1024;
      v76 = 240;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, homes, 0, "[corewifi] %{public}s (%{public}s:%u) Invalid accessory UUID", &v71, 28);
    }

    goto LABEL_79;
  }

  if (!paramsCopy)
  {
    v42 = CWFGetOSLog();
    if (v42)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v53 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 136446722;
      v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
      v73 = 2082;
      v74 = "CWFHomeManager.m";
      v75 = 1024;
      v76 = 245;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, homes, 0, "[corewifi] %{public}s (%{public}s:%u) Invalid params dictionary", &v71, 28);
    }

    goto LABEL_79;
  }

  if (type >= 2)
  {
    v43 = CWFGetOSLog();
    if (v43)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v54 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 136446722;
      v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
      v73 = 2082;
      v74 = "CWFHomeManager.m";
      v75 = 1024;
      v76 = 250;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, homes, 0, "[corewifi] %{public}s (%{public}s:%u) Invalid CWFHM service type", &v71, 28);
    }

LABEL_79:
    v48 = -3900;
    goto LABEL_66;
  }

  typeCopy = type;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  _homeManager2 = [(CWFHomeManager *)self _homeManager];
  homes = [_homeManager2 homes];

  v62 = [homes countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (!v62)
  {
LABEL_65:
    v48 = -3931;
LABEL_66:
    v59 = v48;
    goto LABEL_67;
  }

  v61 = *v68;
  v59 = -3931;
  obj = homes;
  v57 = changeCopy;
  while (2)
  {
    for (i = 0; i != v62; ++i)
    {
      if (*v68 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v67 + 1) + 8 * i);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      accessories = [v14 accessories];
      v16 = [accessories countByEnumeratingWithState:&v63 objects:v79 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v64;
LABEL_15:
        v19 = 0;
        while (1)
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(accessories);
          }

          v20 = *(*(&v63 + 1) + 8 * v19);
          uniqueIdentifier = [v20 uniqueIdentifier];
          v22 = [changeCopy isEqual:uniqueIdentifier];

          if (v22)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [accessories countByEnumeratingWithState:&v63 objects:v79 count:16];
            if (v17)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        _serviceObjects = [(CWFHomeManager *)self _serviceObjects];
        v24 = [_serviceObjects objectForKey:changeCopy];

        if (!v24)
        {
          _serviceObjects2 = [(CWFHomeManager *)self _serviceObjects];
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [_serviceObjects2 setObject:dictionary forKey:changeCopy];
        }

        _serviceObjects3 = [(CWFHomeManager *)self _serviceObjects];
        uniqueIdentifier2 = [v20 uniqueIdentifier];
        v29 = [_serviceObjects3 objectForKey:uniqueIdentifier2];
        v30 = [(CWFHomeManager *)self getServiceTypeStringFor:typeCopy];
        v31 = [v29 objectForKey:v30];

        if (v31)
        {
          v33 = CWFGetOSLog();
          if (v33)
          {
            v34 = CWFGetOSLog();
          }

          else
          {
            v34 = MEMORY[0x1E69E9C10];
            v36 = MEMORY[0x1E69E9C10];
          }

          homes = obj;
          changeCopy = v57;

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v71 = 136446722;
            v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
            v73 = 2082;
            v74 = "CWFHomeManager.m";
            v75 = 1024;
            v76 = 261;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 0, "[corewifi] %{public}s (%{public}s:%u) Service already exists", &v71, 28);
          }
        }

        else
        {
          v32 = [(CWFHomeManager *)self createServiceObjectFor:typeCopy withParams:paramsCopy andAccessory:v20];
          if (!v32)
          {
            v59 = 0;
            changeCopy = v57;
            goto LABEL_27;
          }

          v59 = v32;
          v35 = CWFGetOSLog();
          changeCopy = v57;
          if (v35)
          {
            v34 = CWFGetOSLog();
          }

          else
          {
            v34 = MEMORY[0x1E69E9C10];
            v37 = MEMORY[0x1E69E9C10];
          }

          homes = obj;

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v71 = 136446978;
            v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
            v73 = 2082;
            v74 = "CWFHomeManager.m";
            v75 = 1024;
            v76 = 266;
            v77 = 1024;
            v78 = v59;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 0, "[corewifi] %{public}s (%{public}s:%u) Unable to trigger service creation %d", &v71, 34);
          }
        }

        goto LABEL_67;
      }

LABEL_27:
    }

    homes = obj;
    v62 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_67:

  v49 = CWFGetOSLog();
  if (v49)
  {
    v50 = CWFGetOSLog();
  }

  else
  {
    v50 = MEMORY[0x1E69E9C10];
    v51 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 136446978;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 275;
    v77 = 1024;
    v78 = v59;
    LODWORD(v55) = 34;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v50, 0, "[corewifi] %{public}s (%{public}s:%u) Starting with params [%d]", &v71, v55);
  }

  return v59;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  _serviceQueue = [(CWFHomeManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D33BB4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(_serviceQueue, block);
}

@end