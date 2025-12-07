@interface SUCorePersistedState
- (BOOL)BOOLeanForKey:(id)key forType:(int)type;
- (BOOL)isPersistedStateLoaded;
- (BOOL)loadPersistedState;
- (SUCorePersistedState)initWithDispatchQueue:(id)queue withPersistencePath:(id)path forPolicyVersion:(id)version issuingDefaultLevelLogging:(BOOL)logging;
- (id)_createEmptyPersistedState;
- (id)_keyNameForPersistedStateType:(int)type;
- (id)dataForKey:(id)key forType:(int)type;
- (id)dateForKey:(id)key forType:(int)type;
- (id)description;
- (id)dictionaryForKey:(id)key forType:(int)type;
- (id)objectForKey:(id)key ofClass:(Class)class forType:(int)type;
- (id)persistedContentsType;
- (id)persistedCoreVersion;
- (id)persistedPolicyVersion;
- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class;
- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class encodeClasses:(id)classes forType:(int)type;
- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class forType:(int)type;
- (id)stringForKey:(id)key forType:(int)type;
- (id)summary;
- (unint64_t)ullForKey:(id)key forType:(int)type;
- (void)_writePersistedState;
- (void)persistBoolean:(BOOL)boolean forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistData:(id)data forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistDate:(id)date forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistDictionary:(id)dictionary forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistObject:(id)object forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistSecureCodedObject:(id)object forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistState;
- (void)persistString:(id)string forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)persistULL:(unint64_t)l forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist;
- (void)removePersistedState;
@end

@implementation SUCorePersistedState

- (BOOL)loadPersistedState
{
  v38 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
  if (!persistedState)
  {
    if (defaultLevelLogging)
    {
      v9 = +[SUCoreLog sharedLogger];
      oslog = [v9 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        summary = [(SUCorePersistedState *)self summary];
        *buf = 138543362;
        v37 = summary;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] loading persisted state with summary: %{public}@", buf, 0xCu);
      }
    }

    v12 = MEMORY[0x1E695DEF0];
    persistencePath = [(SUCorePersistedState *)self persistencePath];
    v35 = 0;
    v14 = [v12 dataWithContentsOfFile:persistencePath options:1 error:&v35];
    oslog5 = v35;

    if (oslog5)
    {
      domain = [oslog5 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]])
      {
        if ([oslog5 code]== 4)
        {

LABEL_27:
          if ([(SUCorePersistedState *)self defaultLevelLogging])
          {
            v26 = +[SUCoreLog sharedLogger];
            oslog2 = [v26 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] no persisted state file found at persistence path", buf, 2u);
            }
          }

          v8 = 1;
          goto LABEL_34;
        }

        code = [oslog5 code];

        if (code == 260)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    else if (v14)
    {
      v16 = objc_autoreleasePoolPush();
      v34 = 0;
      v17 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:&v34];
      v18 = v34;
      v19 = v18;
      v8 = v17 != 0;
      if (v17)
      {
        if (v18)
        {
          v20 = +[SUCoreDiag sharedDiag];
          [v20 trackAnomaly:@"[PERSISTED_STATE]" forReason:@"an error occurred when loading the persisted state withResult:but the state was still loaded" withError:{8251, v19}];
        }

        if ([(SUCorePersistedState *)self defaultLevelLogging])
        {
          v21 = +[SUCoreLog sharedLogger];
          oslog3 = [v21 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v37 = v17;
            _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] loaded persisted state: %{public}@", buf, 0xCu);
          }
        }

        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v17, 1uLL);

        [(SUCorePersistedState *)self setPersistedState:DeepCopy];
      }

      else
      {
        DeepCopy = +[SUCoreDiag sharedDiag];
        [DeepCopy trackError:@"[PERSISTED_STATE]" forReason:@"unable to load persisted state as dictionary" withResult:8106 withError:v19];
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_34;
    }

    v24 = +[SUCoreDiag sharedDiag];
    [v24 trackError:@"[PERSISTED_STATE]" forReason:@"unable to serialize contents of persisted state file" withResult:8106 withError:oslog5];

    v8 = 0;
LABEL_34:
    persistedState2 = [(SUCorePersistedState *)self persistedState];

    if (!persistedState2)
    {
      _createEmptyPersistedState = [(SUCorePersistedState *)self _createEmptyPersistedState];
      [(SUCorePersistedState *)self setPersistedState:_createEmptyPersistedState];

      if ([(SUCorePersistedState *)self defaultLevelLogging])
      {
        v30 = +[SUCoreLog sharedLogger];
        oslog4 = [v30 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          persistedState3 = [(SUCorePersistedState *)self persistedState];
          *buf = 138543362;
          v37 = persistedState3;
          _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] created a new, empty persisted state dictionary: %{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_40;
  }

  if (defaultLevelLogging)
  {
    v6 = +[SUCoreLog sharedLogger];
    oslog5 = [v6 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, oslog5, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] attempting to load persisted state, but state is already loaded - no operation to perform", buf, 2u);
    }

    v8 = 1;
LABEL_40:

    return v8;
  }

  return 1;
}

- (SUCorePersistedState)initWithDispatchQueue:(id)queue withPersistencePath:(id)path forPolicyVersion:(id)version issuingDefaultLevelLogging:(BOOL)logging
{
  queueCopy = queue;
  pathCopy = path;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = SUCorePersistedState;
  v14 = [(SUCorePersistedState *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistedStateQueue, queue);
    objc_storeStrong(&v15->_persistencePath, path);
    objc_storeStrong(&v15->_versionPolicyLayer, version);
    v15->_defaultLevelLogging = logging;
    objc_storeStrong(&v15->_versionSUCore, @"2.1.0");
    persistedState = v15->_persistedState;
    v15->_persistedState = 0;
  }

  return v15;
}

- (BOOL)isPersistedStateLoaded
{
  selfCopy = self;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)selfCopy persistedState];
  LOBYTE(selfCopy) = persistedState != 0;

  return selfCopy;
}

- (id)persistedContentsType
{
  v13 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v6 = [persistedState2 safeStringForKey:@"SUCorePersistedStateContentsType"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      oslog = [v7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted contents type with string value: %{public}@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackError:@"[PERSISTED_STATE]" forReason:@"persisted state is not loaded withResult:unable to load core contents type string" withError:{8250, 0}];

    v6 = 0;
  }

  return v6;
}

- (id)persistedCoreVersion
{
  v13 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v6 = [persistedState2 safeStringForKey:@"SUCorePersistedStateCoreVersion"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      oslog = [v7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted core version with string value: %{public}@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackError:@"[PERSISTED_STATE]" forReason:@"persisted state is not loaded withResult:unable to load core version string" withError:{8250, 0}];

    v6 = 0;
  }

  return v6;
}

- (id)persistedPolicyVersion
{
  v13 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v6 = [persistedState2 safeStringForKey:@"SUCorePersistedStatePolicyVersion"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      oslog = [v7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted policy version with string value: %{public}@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackError:@"[PERSISTED_STATE]" forReason:@"persisted state is not loaded withResult:unable to load policy version string" withError:{8250, 0}];

    v6 = 0;
  }

  return v6;
}

- (void)removePersistedState
{
  v19 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  if ([(SUCorePersistedState *)self defaultLevelLogging])
  {
    v4 = +[SUCoreLog sharedLogger];
    oslog = [v4 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(SUCorePersistedState *)self summary];
      *buf = 138543362;
      v18 = summary;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "attempting to remove persisted state with summary: %{public}@", buf, 0xCu);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  persistencePath = [(SUCorePersistedState *)self persistencePath];
  v16 = 0;
  v9 = [defaultManager removeItemAtPath:persistencePath error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
  }

  else
  {
    code = [v10 code];

    if (code != 4)
    {
      v15 = +[SUCoreDiag sharedDiag];
      [v15 trackError:@"[PERSISTED_STATE]" forReason:@"failed to remove persisted state file" withResult:8110 withError:v11];

      goto LABEL_14;
    }
  }

  if ([(SUCorePersistedState *)self defaultLevelLogging])
  {
    v13 = +[SUCoreLog sharedLogger];
    oslog2 = [v13 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] successfully removed persisted state file", buf, 2u);
    }
  }

  [(SUCorePersistedState *)self setPersistedState:0];
LABEL_14:
}

- (BOOL)BOOLeanForKey:(id)key forType:(int)type
{
  v4 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (!persistedState)
  {
    v11 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load BOOLean value for key: %@", keyCopy];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  persistedState2 = [(SUCorePersistedState *)self persistedState];
  v10 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
  v11 = [persistedState2 safeObjectForKey:v10 ofClass:objc_opt_class()];

  if (!v11)
  {
    v14 = +[SUCoreDiag sharedDiag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v17 = [v15 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v16];
    [v14 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8252 withError:0];

    goto LABEL_6;
  }

  v12 = [v11 safeBooleanForKey:keyCopy];
LABEL_7:

  return v12;
}

- (unint64_t)ullForKey:(id)key forType:(int)type
{
  v4 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (!persistedState)
  {
    v11 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load ULL value for key: %@", keyCopy];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  persistedState2 = [(SUCorePersistedState *)self persistedState];
  v10 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
  v11 = [persistedState2 safeObjectForKey:v10 ofClass:objc_opt_class()];

  if (!v11)
  {
    v14 = +[SUCoreDiag sharedDiag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v17 = [v15 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v16];
    [v14 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8252 withError:0];

    goto LABEL_6;
  }

  v12 = [v11 safeULLForKey:keyCopy];
LABEL_7:

  return v12;
}

- (id)stringForKey:(id)key forType:(int)type
{
  v4 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v10 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v11 = [persistedState2 safeObjectForKey:v10 ofClass:objc_opt_class()];

    if (v11)
    {
      v12 = [v11 safeStringForKey:keyCopy];
      goto LABEL_7;
    }

    v14 = +[SUCoreDiag sharedDiag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v17 = [v15 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v16];
    [v14 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8252 withError:0];
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load string value for key: %@", keyCopy];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)dictionaryForKey:(id)key forType:(int)type
{
  v4 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v10 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v11 = [persistedState2 safeObjectForKey:v10 ofClass:objc_opt_class()];

    if (v11)
    {
      keyCopy = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
      v13 = [v11 safeDictionaryForKey:keyCopy fromBase:@"SUCorePersistedState fieldSpecificDictionary" withKeyDescription:keyCopy];
      goto LABEL_7;
    }

    keyCopy = +[SUCoreDiag sharedDiag];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v16 = [v14 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v15];
    [keyCopy trackError:@"[PERSISTED_STATE]" forReason:v16 withResult:8252 withError:0];
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load dictionary value for key: %@", keyCopy];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)dataForKey:(id)key forType:(int)type
{
  v4 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v10 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v11 = [persistedState2 safeObjectForKey:v10 ofClass:objc_opt_class()];

    if (v11)
    {
      v12 = [v11 safeDataForKey:keyCopy];
      goto LABEL_7;
    }

    v14 = +[SUCoreDiag sharedDiag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v17 = [v15 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v16];
    [v14 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8252 withError:0];
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load data value for key: %@", keyCopy];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)dateForKey:(id)key forType:(int)type
{
  v4 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v10 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v11 = [persistedState2 safeObjectForKey:v10 ofClass:objc_opt_class()];

    if (v11)
    {
      v12 = [v11 safeDateForKey:keyCopy];
      goto LABEL_7;
    }

    v14 = +[SUCoreDiag sharedDiag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v4];
    v17 = [v15 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v16];
    [v14 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8252 withError:0];
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load date value for key: %@", keyCopy];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)objectForKey:(id)key ofClass:(Class)class forType:(int)type
{
  v5 = *&type;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v12 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v5];
    v13 = [persistedState2 safeObjectForKey:v12 ofClass:objc_opt_class()];

    if (v13)
    {
      v14 = [v13 safeObjectForKey:keyCopy ofClass:class];
      goto LABEL_7;
    }

    v16 = +[SUCoreDiag sharedDiag];
    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v5];
    v19 = [v17 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v18];
    [v16 trackError:@"[PERSISTED_STATE]" forReason:v19 withResult:8252 withError:0];
  }

  else
  {
    v13 = +[SUCoreDiag sharedDiag];
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted state is not loaded, unable to load object value for key: %@", keyCopy];
    [v13 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8250 withError:0];
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [[v6 alloc] initWithObjects:{class, 0}];
  v9 = [(SUCorePersistedState *)self secureCodedObjectForKey:keyCopy ofClass:class encodeClasses:v8 forType:3];

  return v9;
}

- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class forType:(int)type
{
  v5 = *&type;
  v8 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v10 = [[v8 alloc] initWithObjects:{class, 0}];
  v11 = [(SUCorePersistedState *)self secureCodedObjectForKey:keyCopy ofClass:class encodeClasses:v10 forType:v5];

  return v11;
}

- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class encodeClasses:(id)classes forType:(int)type
{
  v6 = *&type;
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  classesCopy = classes;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  if ((v6 & 0xFFFFFFFE) != 2)
  {
    v21 = +[SUCoreDiag sharedDiag];
    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v6];
    v24 = [v22 initWithFormat:@"invalid SUCorePersistedStateType (%@) provided for secure coded object persistence", v23];
    [v21 trackAnomaly:@"[PERSISTED_STATE]" forReason:v24 withResult:8253 withError:0];

    v25 = 0;
    goto LABEL_22;
  }

  v13 = [(SUCorePersistedState *)self dataForKey:keyCopy forType:v6];
  defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
  if (v13)
  {
    if (defaultLevelLogging)
    {
      v15 = +[SUCoreLog sharedLogger];
      oslog = [v15 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v33 = keyCopy;
        v34 = 2114;
        v35 = classesCopy;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] attempting to load encoded data for key %{public}@ with classes: %{public}@", buf, 0x16u);
      }
    }

    v31 = 0;
    v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:classesCopy fromData:v13 error:&v31];
    oslog2 = v31;
    if (oslog2)
    {
      v19 = +[SUCoreDiag sharedDiag];
      keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NSKeyedUnarchiver error found when attempting to unarchive data for key %@", keyCopy];
      [v19 trackError:@"[PERSISTED_STATE]" forReason:keyCopy withResult:8254 withError:oslog2];
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v17;
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      v28 = +[SUCoreDiag sharedDiag];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unarchived object is not of the expected class %@", class];
      [v28 trackError:@"[PERSISTED_STATE]" forReason:v29 withResult:8255 withError:0];
    }

    v25 = 0;
    goto LABEL_19;
  }

  if (defaultLevelLogging)
  {
    v26 = +[SUCoreLog sharedLogger];
    oslog2 = [v26 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v6];
      *buf = 138543618;
      v33 = keyCopy;
      v34 = 2114;
      v35 = v27;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] no data object present in secure coded object persisted state for key %{public}@ and type %{public}@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_20;
  }

  v25 = 0;
LABEL_21:

LABEL_22:

  return v25;
}

- (void)persistBoolean:(BOOL)boolean forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  booleanCopy = boolean;
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v14 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v15 = [persistedState2 safeObjectForKey:v14 ofClass:objc_opt_class()];

    if (v15)
    {
      if ([(SUCorePersistedState *)self defaultLevelLogging])
      {
        v16 = +[SUCoreLog sharedLogger];
        oslog = [v16 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = @"NO";
          if (booleanCopy)
          {
            v18 = @"YES";
          }

          *buf = 138543618;
          v29 = keyCopy;
          v30 = 2114;
          v31 = v18;
          _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with BOOLean value: %{public}@=%{public}@", buf, 0x16u);
        }
      }

      v19 = [MEMORY[0x1E696AD98] numberWithBool:booleanCopy];
      [v15 setValue:v19 forKey:keyCopy];

      if (persistCopy)
      {
        [(SUCorePersistedState *)self _writePersistedState];
      }
    }

    else
    {
      v24 = +[SUCoreDiag sharedDiag];
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      v26 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v27 = [v25 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v26];
      [v24 trackError:@"[PERSISTED_STATE]" forReason:v27 withResult:8252 withError:0];
    }
  }

  else
  {
    v20 = +[SUCoreDiag sharedDiag];
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = @"NO";
    if (booleanCopy)
    {
      v22 = @"YES";
    }

    v23 = [v21 initWithFormat:@"unable to persist BOOLean for key with value: %@=%@", keyCopy, v22];
    [v20 trackError:@"[PERSISTED_STATE]" forReason:v23 withResult:8250 withError:0];
  }
}

- (void)persistULL:(unint64_t)l forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v14 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v15 = [persistedState2 safeObjectForKey:v14 ofClass:objc_opt_class()];

    if (v15)
    {
      if ([(SUCorePersistedState *)self defaultLevelLogging])
      {
        v16 = +[SUCoreLog sharedLogger];
        oslog = [v16 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v26 = keyCopy;
          v27 = 2048;
          lCopy = l;
          _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with ULL value: %{public}@=%lld", buf, 0x16u);
        }
      }

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:l];
      [v15 setValue:v18 forKey:keyCopy];

      if (persistCopy)
      {
        [(SUCorePersistedState *)self _writePersistedState];
      }
    }

    else
    {
      v21 = +[SUCoreDiag sharedDiag];
      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v24 = [v22 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v23];
      [v21 trackError:@"[PERSISTED_STATE]" forReason:v24 withResult:8252 withError:0];
    }
  }

  else
  {
    v19 = +[SUCoreDiag sharedDiag];
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to persist ULL for key with value: %@=%lld", keyCopy, l];
    [v19 trackError:@"[PERSISTED_STATE]" forReason:v20 withResult:8250 withError:0];
  }
}

- (void)persistString:(id)string forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  v32 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v15 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v16 = [persistedState2 safeObjectForKey:v15 ofClass:objc_opt_class()];

    if (v16)
    {
      defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
      if (stringCopy)
      {
        if (defaultLevelLogging)
        {
          v18 = +[SUCoreLog sharedLogger];
          oslog = [v18 oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = keyCopy;
            v30 = 2114;
            v31 = stringCopy;
            _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with string value: %{public}@=%{public}@", buf, 0x16u);
          }
        }

        [v16 setValue:stringCopy forKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (defaultLevelLogging)
        {
          v26 = +[SUCoreLog sharedLogger];
          oslog2 = [v26 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = keyCopy;
            _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] removing persisted state string for key: %{public}@", buf, 0xCu);
          }
        }

        [v16 removeObjectForKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      [(SUCorePersistedState *)self _writePersistedState];
    }

    else
    {
      v22 = +[SUCoreDiag sharedDiag];
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v25 = [v23 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v24];
      [v22 trackError:@"[PERSISTED_STATE]" forReason:v25 withResult:8252 withError:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = +[SUCoreDiag sharedDiag];
  stringCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to persist string for key with value: %@=%@", keyCopy, stringCopy];
  [v20 trackError:@"[PERSISTED_STATE]" forReason:stringCopy withResult:8250 withError:0];

LABEL_19:
}

- (void)persistDictionary:(id)dictionary forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v15 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v16 = [persistedState2 safeObjectForKey:v15 ofClass:objc_opt_class()];

    if (v16)
    {
      defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
      if (dictionaryCopy)
      {
        if (defaultLevelLogging)
        {
          v18 = +[SUCoreLog sharedLogger];
          oslog = [v18 oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = keyCopy;
            v30 = 2114;
            v31 = dictionaryCopy;
            _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with dictionary value: %{public}@=%{public}@", buf, 0x16u);
          }
        }

        [v16 setValue:dictionaryCopy forKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (defaultLevelLogging)
        {
          v26 = +[SUCoreLog sharedLogger];
          oslog2 = [v26 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = keyCopy;
            _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] removing persisted state dictionary for key: %{public}@", buf, 0xCu);
          }
        }

        [v16 removeObjectForKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      [(SUCorePersistedState *)self _writePersistedState];
    }

    else
    {
      v22 = +[SUCoreDiag sharedDiag];
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v25 = [v23 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v24];
      [v22 trackError:@"[PERSISTED_STATE]" forReason:v25 withResult:8252 withError:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = +[SUCoreDiag sharedDiag];
  dictionaryCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to persist dictionary for key with value: %@=%@", keyCopy, dictionaryCopy];
  [v20 trackError:@"[PERSISTED_STATE]" forReason:dictionaryCopy withResult:8250 withError:0];

LABEL_19:
}

- (void)persistData:(id)data forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v15 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v16 = [persistedState2 safeObjectForKey:v15 ofClass:objc_opt_class()];

    if (v16)
    {
      defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
      if (dataCopy)
      {
        if (defaultLevelLogging)
        {
          v18 = +[SUCoreLog sharedLogger];
          oslog = [v18 oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = keyCopy;
            v30 = 2114;
            v31 = dataCopy;
            _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with data value: %{public}@=%{public}@", buf, 0x16u);
          }
        }

        [v16 setValue:dataCopy forKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (defaultLevelLogging)
        {
          v26 = +[SUCoreLog sharedLogger];
          oslog2 = [v26 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = keyCopy;
            _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] removing persisted state data for key: %{public}@", buf, 0xCu);
          }
        }

        [v16 removeObjectForKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      [(SUCorePersistedState *)self _writePersistedState];
    }

    else
    {
      v22 = +[SUCoreDiag sharedDiag];
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v25 = [v23 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v24];
      [v22 trackError:@"[PERSISTED_STATE]" forReason:v25 withResult:8252 withError:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = +[SUCoreDiag sharedDiag];
  dataCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to persist data for key with value: %@=%@", keyCopy, dataCopy];
  [v20 trackError:@"[PERSISTED_STATE]" forReason:dataCopy withResult:8250 withError:0];

LABEL_19:
}

- (void)persistDate:(id)date forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  v32 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v15 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v16 = [persistedState2 safeObjectForKey:v15 ofClass:objc_opt_class()];

    if (v16)
    {
      defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
      if (dateCopy)
      {
        if (defaultLevelLogging)
        {
          v18 = +[SUCoreLog sharedLogger];
          oslog = [v18 oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = keyCopy;
            v30 = 2114;
            v31 = dateCopy;
            _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with date value: %{public}@=%{public}@", buf, 0x16u);
          }
        }

        [v16 setValue:dateCopy forKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (defaultLevelLogging)
        {
          v26 = +[SUCoreLog sharedLogger];
          oslog2 = [v26 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = keyCopy;
            _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] removing persisted state date for key: %{public}@", buf, 0xCu);
          }
        }

        [v16 removeObjectForKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      [(SUCorePersistedState *)self _writePersistedState];
    }

    else
    {
      v22 = +[SUCoreDiag sharedDiag];
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v25 = [v23 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v24];
      [v22 trackError:@"[PERSISTED_STATE]" forReason:v25 withResult:8252 withError:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = +[SUCoreDiag sharedDiag];
  dateCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to persist date for key with value: %@=%@", keyCopy, dateCopy];
  [v20 trackError:@"[PERSISTED_STATE]" forReason:dateCopy withResult:8250 withError:0];

LABEL_19:
}

- (void)persistObject:(id)object forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  v32 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v15 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v16 = [persistedState2 safeObjectForKey:v15 ofClass:objc_opt_class()];

    if (v16)
    {
      defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
      if (objectCopy)
      {
        if (defaultLevelLogging)
        {
          v18 = +[SUCoreLog sharedLogger];
          oslog = [v18 oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = keyCopy;
            v30 = 2114;
            v31 = objectCopy;
            _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] setting persisted state for key with object value: %{public}@=%{public}@", buf, 0x16u);
          }
        }

        [v16 setValue:objectCopy forKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (defaultLevelLogging)
        {
          v26 = +[SUCoreLog sharedLogger];
          oslog2 = [v26 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = keyCopy;
            _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] removing persisted state object for key: %{public}@", buf, 0xCu);
          }
        }

        [v16 removeObjectForKey:keyCopy];
        if (!persistCopy)
        {
          goto LABEL_18;
        }
      }

      [(SUCorePersistedState *)self _writePersistedState];
    }

    else
    {
      v22 = +[SUCoreDiag sharedDiag];
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
      v25 = [v23 initWithFormat:@"failed to load dictionary for SUCorePersistedStateType=%@", v24];
      [v22 trackError:@"[PERSISTED_STATE]" forReason:v25 withResult:8252 withError:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = +[SUCoreDiag sharedDiag];
  objectCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to persist object for key with value: %@=%@", keyCopy, objectCopy];
  [v20 trackError:@"[PERSISTED_STATE]" forReason:objectCopy withResult:8250 withError:0];

LABEL_19:
}

- (void)persistSecureCodedObject:(id)object forKey:(id)key forType:(int)type shouldPersist:(BOOL)persist
{
  persistCopy = persist;
  v7 = *&type;
  objectCopy = object;
  keyCopy = key;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    if (objectCopy)
    {
      v20 = 0;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v20];
      v14 = v20;
      if (v14)
      {
        v15 = +[SUCoreDiag sharedDiag];
        [v15 trackError:@"[PERSISTED_STATE]" forReason:@"failed to use NSKeyedArchiver to archive the object into encoded NSData" withResult:8254 withError:v14];
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    [(SUCorePersistedState *)self persistData:v13 forKey:keyCopy forType:v7 shouldPersist:persistCopy];
  }

  else
  {
    v16 = +[SUCoreDiag sharedDiag];
    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:v7];
    v19 = [v17 initWithFormat:@"invalid SUCorePersistedStateType (%@) provided for secure coded object persistence", v18];
    [v16 trackAnomaly:@"[PERSISTED_STATE]" forReason:v19 withResult:8253 withError:0];
  }
}

- (void)persistState
{
  v14 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v5 = +[SUCoreLog sharedLogger];
      oslog = [v5 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(SUCorePersistedState *)self description];
        *buf = 138543362;
        v13 = v7;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] persisting the state %{public}@", buf, 0xCu);
      }
    }

    [(SUCorePersistedState *)self _writePersistedState];
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(SUCorePersistedState *)self description];
    v10 = [v8 initWithFormat:@"unable to persist state: %@", v9];
    [v11 trackError:@"[PERSISTED_STATE]" forReason:v10 withResult:8250 withError:0];
  }
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  persistencePath = [(SUCorePersistedState *)self persistencePath];
  versionPolicyLayer = [(SUCorePersistedState *)self versionPolicyLayer];
  versionSUCore = [(SUCorePersistedState *)self versionSUCore];
  v7 = [v3 initWithFormat:@"persistencePath:%@, versionPolicyLayer:%@, versionSUCore:%@", persistencePath, versionPolicyLayer, versionSUCore];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  persistencePath = [(SUCorePersistedState *)self persistencePath];
  versionPolicyLayer = [(SUCorePersistedState *)self versionPolicyLayer];
  versionSUCore = [(SUCorePersistedState *)self versionSUCore];
  persistedState = [(SUCorePersistedState *)self persistedState];
  v8 = [v3 initWithFormat:@"\n[>>>\n    persistencePath: %@\n versionPolicyLayer: %@\n      versionSUCore: %@\n     persistedState: %@\n<<<]", persistencePath, versionPolicyLayer, versionSUCore, persistedState];

  return v8;
}

- (void)_writePersistedState
{
  v3 = MEMORY[0x1E696AE40];
  persistedState = [(SUCorePersistedState *)self persistedState];
  v19 = 0;
  v5 = [v3 dataWithPropertyList:persistedState format:200 options:0 error:&v19];
  v6 = v19;

  if (v5)
  {
    persistencePath = [(SUCorePersistedState *)self persistencePath];
    v18 = v6;
    v8 = [v5 writeToFile:persistencePath options:268435457 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = MEMORY[0x1E696AC00];
      persistencePath2 = [(SUCorePersistedState *)self persistencePath];
      v12 = [v10 fileHandleForUpdatingAtPath:persistencePath2];

      if (v12)
      {
        [v12 synchronizeFile];
        [v12 closeFile];
      }

      else
      {
        v13 = +[SUCoreDiag sharedDiag];
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = *__error();
        v16 = __error();
        v17 = [v14 initWithFormat:@"failed to open persistence file: %d - message: %s", v15, strerror(*v16)];
        [v13 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8121 withError:0];
      }
    }

    else
    {
      v12 = +[SUCoreDiag sharedDiag];
      [v12 trackError:@"[PERSISTED_STATE]" forReason:@"failed to write persistence file" withResult:8109 withError:v9];
    }

    v6 = v9;
  }

  else
  {
    v12 = +[SUCoreDiag sharedDiag];
    [v12 trackError:@"[PERSISTED_STATE]" forReason:@"failed to serialize persisted state to plist" withResult:8106 withError:v6];
  }
}

- (id)_createEmptyPersistedState
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:@"SoftwareUpdateCorePersistedStateFile" forKey:@"SUCorePersistedStateContentsType"];
  versionSUCore = [(SUCorePersistedState *)self versionSUCore];
  [v3 setValue:versionSUCore forKey:@"SUCorePersistedStateCoreVersion"];

  versionPolicyLayer = [(SUCorePersistedState *)self versionPolicyLayer];
  [v3 setValue:versionPolicyLayer forKey:@"SUCorePersistedStatePolicyVersion"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:0];
  [v3 setValue:v6 forKey:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:1];
  [v3 setValue:v8 forKey:v9];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:2];
  [v3 setValue:v10 forKey:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:3];
  [v3 setValue:v12 forKey:v13];

  return v3;
}

- (id)_keyNameForPersistedStateType:(int)type
{
  if (type >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SUCorePersistedStateTypeUnknown(%d)", *&type];
  }

  else
  {
    v4 = off_1E86FD390[type];
  }

  return v4;
}

@end