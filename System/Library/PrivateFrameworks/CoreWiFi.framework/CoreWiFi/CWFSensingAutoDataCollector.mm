@interface CWFSensingAutoDataCollector
+ (id)sharedCWFSensingAutoDataCollectorInstanceWith:(id)with;
- (BOOL)currentAccessoryInfo:(id)info;
- (CWFSensingAutoDataCollector)initWithHomes:(id)homes;
- (void)cleanUpOutOfScopeAccessory;
- (void)registerForAccessoriesInRoomWithDelegate:(id)delegate;
- (void)updateRegisteredServiceWithDelegate:(id)delegate;
@end

@implementation CWFSensingAutoDataCollector

+ (id)sharedCWFSensingAutoDataCollectorInstanceWith:(id)with
{
  withCopy = with;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1C3CC;
  block[3] = &unk_1E86E6010;
  v10 = withCopy;
  v4 = qword_1ED7E3948;
  v5 = withCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1ED7E3948, block);
  }

  v6 = qword_1ED7E3940;
  v7 = qword_1ED7E3940;

  return v6;
}

- (CWFSensingAutoDataCollector)initWithHomes:(id)homes
{
  v19 = *MEMORY[0x1E69E9840];
  homesCopy = homes;
  v12.receiver = self;
  v12.super_class = CWFSensingAutoDataCollector;
  v5 = [(CWFSensingAutoDataCollector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if ([(CWFSensingAutoDataCollector *)v5 currentAccessoryInfo:homesCopy])
    {
      v7 = dispatch_queue_create("com.apple.wifi.CWFSensingAutoDataCollector", 0);
      [(CWFSensingAutoDataCollector *)v6 set_serviceQueue:v7];

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(CWFSensingAutoDataCollector *)v6 set_serviceObjects:dictionary];
    }

    else
    {

      v10 = CWFGetOSLog();
      if (v10)
      {
        dictionary = CWFGetOSLog();
      }

      else
      {
        dictionary = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
      {
        v13 = 136446722;
        v14 = "[CWFSensingAutoDataCollector initWithHomes:]";
        v15 = 2082;
        v16 = "CWFSensingAutoDataCollector.m";
        v17 = 1024;
        v18 = 90;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, dictionary, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to find current accessory", &v13, 28);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)currentAccessoryInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = info;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        accessories = [v9 accessories];
        v11 = [accessories countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(accessories);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if ([v15 isCurrentAccessory])
              {
                [(CWFSensingAutoDataCollector *)self set_currentAccessory:v15];
                v6 = 1;
                goto LABEL_16;
              }
            }

            v12 = [accessories countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)cleanUpOutOfScopeAccessory
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _serviceObjects = [(CWFSensingAutoDataCollector *)self _serviceObjects];
  v4 = [_serviceObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(_serviceObjects);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        _serviceQueue = [(CWFSensingAutoDataCollector *)self _serviceQueue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = sub_1E0C1C8E4;
        v10[3] = &unk_1E86E6420;
        v10[4] = self;
        v10[5] = v8;
        dispatch_async(_serviceQueue, v10);

        ++v7;
      }

      while (v5 != v7);
      v5 = [_serviceObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)registerForAccessoriesInRoomWithDelegate:(id)delegate
{
  v52 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  _currentAccessory = [(CWFSensingAutoDataCollector *)self _currentAccessory];
  room = [_currentAccessory room];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = room;
  accessories = [room accessories];
  v7 = [accessories countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v38;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(accessories);
      }

      v11 = *(*(&v37 + 1) + 8 * i);
      _serviceObjects = [(CWFSensingAutoDataCollector *)self _serviceObjects];
      uniqueIdentifier = [v11 uniqueIdentifier];
      v14 = [_serviceObjects objectForKey:uniqueIdentifier];
      if (v14)
      {
      }

      else
      {
        isCurrentAccessory = [v11 isCurrentAccessory];

        if (isCurrentAccessory)
        {
          continue;
        }

        v16 = [CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:v11 withOptions:0 andDelegate:delegateCopy];
        if (!v16)
        {
          v26 = CWFGetOSLog();
          if (v26)
          {
            v27 = CWFGetOSLog();
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
            v28 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            uniqueIdentifier2 = [v11 uniqueIdentifier];
            v41 = 136446978;
            v42 = "[CWFSensingAutoDataCollector registerForAccessoriesInRoomWithDelegate:]";
            v43 = 2082;
            v44 = "CWFSensingAutoDataCollector.m";
            v45 = 1024;
            v46 = 137;
            v47 = 2114;
            v48 = uniqueIdentifier2;
            LODWORD(v30) = 38;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create service for UUID %{public}@", &v41, v30);
          }

          goto LABEL_19;
        }

        v17 = v16;
        _serviceQueue = [(CWFSensingAutoDataCollector *)self _serviceQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C1CF3C;
        block[3] = &unk_1E86E6060;
        _serviceObjects = v17;
        v34 = _serviceObjects;
        v35 = v11;
        selfCopy = self;
        dispatch_async(_serviceQueue, block);

        _serviceObjects2 = [(CWFSensingAutoDataCollector *)self _serviceObjects];
        uniqueIdentifier3 = [v11 uniqueIdentifier];
        [_serviceObjects2 setObject:_serviceObjects forKey:uniqueIdentifier3];

        v21 = CWFGetOSLog();
        if (v21)
        {
          v22 = CWFGetOSLog();
        }

        else
        {
          v22 = MEMORY[0x1E69E9C10];
          v23 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          uniqueIdentifier4 = [v11 uniqueIdentifier];
          _serviceObjects3 = [(CWFSensingAutoDataCollector *)self _serviceObjects];
          v41 = 136447234;
          v42 = "[CWFSensingAutoDataCollector registerForAccessoriesInRoomWithDelegate:]";
          v43 = 2082;
          v44 = "CWFSensingAutoDataCollector.m";
          v45 = 1024;
          v46 = 150;
          v47 = 2114;
          v48 = uniqueIdentifier4;
          v49 = 2114;
          v50 = _serviceObjects3;
          LODWORD(v30) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 0, "[corewifi] %{public}s (%{public}s:%u) Successfully added service object for UUID %{public}@, %{public}@", &v41, v30);
        }

        uniqueIdentifier = v34;
      }
    }

    v8 = [accessories countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
}

- (void)updateRegisteredServiceWithDelegate:(id)delegate
{
  [(CWFSensingAutoDataCollector *)self registerForAccessoriesInRoomWithDelegate:delegate];

  MEMORY[0x1EEE66B58](self, sel_cleanUpOutOfScopeAccessory);
}

@end