@interface CADDatabaseConnectionPool
- (BOOL)hasDatabaseAtPath:(id)path withDatabaseID:(int)d;
- (BOOL)performASAPWithConfiguration:(id)configuration databaseID:(int)d block:(id)block;
- (BOOL)performWithConfiguration:(id)configuration priority:(unint64_t)priority databaseID:(int)d block:(id)block;
- (CADDatabaseConnectionPool)initWithOptions:(id)options manager:(id)manager;
- (id)_openDatabases;
- (id)_poolForPath:(id)path auxDatabaseID:(int)d;
- (id)_pools;
- (id)createConnectionForPool:(id)pool;
- (int)databaseRestoreGeneration;
- (unint64_t)numberOfClients;
- (void)_checkGenerationAndAuxDatabaseSequence:(BOOL *)sequence;
- (void)addClient:(id)client;
- (void)addCreatedAuxDatabase:(CalDatabase *)database;
- (void)addDelegate:(id)delegate;
- (void)databaseChangedExternally:(id)externally auxDatabaseID:(int)d;
- (void)dealloc;
- (void)forEachDelegate:(id)delegate;
- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block;
- (void)prepareDatabase:(CalDatabase *)database forUseWithConfiguration:(id)configuration;
- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)to stats:(id *)stats;
- (void)removeClient:(id)client;
- (void)removeDelegate:(id)delegate;
- (void)reportIntegrityErrors:(id)errors;
- (void)setupDatabase:(CalDatabase *)database;
@end

@implementation CADDatabaseConnectionPool

- (id)_pools
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  pools = self->_pools;
  if (!pools)
  {
    _openDatabases = [(CADDatabaseConnectionPool *)self _openDatabases];
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(_openDatabases, "count")}];
    v6 = self->_pools;
    self->_pools = v5;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = _openDatabases;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
          v13 = CalDatabaseCopyInitializationConfiguration();
          v14 = [[CADSeparatedDatabasePool alloc] initWithConfig:v13 databaseID:AuxilliaryDatabaseID];
          v15 = [[CADPooledConnection alloc] initWithDatabase:v11];
          [(CADSeparatedDatabasePool *)v14 _returnConnectionToPool:v15];
          v16 = self->_pools;
          v17 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
          [(NSMutableDictionary *)v16 setObject:v14 forKeyedSubscript:v17];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    pools = self->_pools;
  }

  return pools;
}

- (int)databaseRestoreGeneration
{
  os_unfair_lock_lock(&self->_lock);
  _pools = [(CADDatabaseConnectionPool *)self _pools];
  databaseRestoreGeneration = self->_databaseRestoreGeneration;
  os_unfair_lock_unlock(&self->_lock);
  return databaseRestoreGeneration;
}

- (CADDatabaseConnectionPool)initWithOptions:(id)options manager:(id)manager
{
  optionsCopy = options;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = CADDatabaseConnectionPool;
  v9 = [(CADDatabaseConnectionPool *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = dispatch_workloop_create("com.apple.calendar.daemon.low_priority");
    lowPriorityTasks = v10->_lowPriorityTasks;
    v10->_lowPriorityTasks = v11;

    objc_storeStrong(&v10->_initOptions, options);
    objc_storeWeak(&v10->_manager, managerCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    clients = v10->_clients;
    v10->_clients = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v10->_delegates;
    v10->_delegates = weakObjectsHashTable2;
  }

  return v10;
}

- (void)dealloc
{
  [MEMORY[0x277CF7518] cleanupDeallocatedClients];
  v3.receiver = self;
  v3.super_class = CADDatabaseConnectionPool;
  [(CADDatabaseConnectionPool *)&v3 dealloc];
}

- (BOOL)performWithConfiguration:(id)configuration priority:(unint64_t)priority databaseID:(int)d block:(id)block
{
  v7 = *&d;
  configurationCopy = configuration;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (priority && !dispatch_workloop_is_current())
  {
    lowPriorityTasks = self->_lowPriorityTasks;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__CADDatabaseConnectionPool_performWithConfiguration_priority_databaseID_block___block_invoke;
    block[3] = &unk_27851AEE8;
    v18 = &v20;
    block[4] = self;
    v16 = configurationCopy;
    v19 = v7;
    v17 = blockCopy;
    dispatch_async_and_wait(lowPriorityTasks, block);

    v12 = *(v21 + 24);
  }

  else
  {
    v12 = [(CADDatabaseConnectionPool *)self performASAPWithConfiguration:configurationCopy databaseID:v7 block:blockCopy];
    *(v21 + 24) = v12;
  }

  _Block_object_dispose(&v20, 8);

  return v12 & 1;
}

void *__80__CADDatabaseConnectionPool_performWithConfiguration_priority_databaseID_block___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) performASAPWithConfiguration:*(a1 + 40) databaseID:*(a1 + 64) block:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  _pools = [(CADDatabaseConnectionPool *)self _pools];
  allKeys = [_pools allKeys];

  os_unfair_lock_unlock(&self->_lock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = allKeys;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = *v27;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v12);
      }

      intValue = [*(*(&v26 + 1) + 8 * v15) intValue];
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __85__CADDatabaseConnectionPool_performWithAllDatabasesWithConfiguration_priority_block___block_invoke;
      v18[3] = &unk_27851AF10;
      v17 = blockCopy;
      v21 = intValue;
      v19 = v17;
      v20 = &v22;
      [(CADDatabaseConnectionPool *)self performWithConfiguration:configurationCopy priority:priority databaseID:intValue block:v18];
      LOBYTE(intValue) = *(v23 + 24);

      _Block_object_dispose(&v22, 8);
      if (intValue)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addCreatedAuxDatabase:(CalDatabase *)database
{
  v32 = *MEMORY[0x277D85DE8];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  os_unfair_lock_lock(&self->_lock);
  if (self->_pools)
  {
    v6 = [[CADPooledConnection alloc] initWithDatabase:database];
    [(CADDatabaseConnectionPool *)self setupDatabase:database];
    pools = self->_pools;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
    v9 = [(NSMutableDictionary *)pools objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = CalDatabaseCopyInitializationConfiguration();
      v9 = [[CADSeparatedDatabasePool alloc] initWithConfig:v10 databaseID:AuxilliaryDatabaseID];
      v11 = self->_pools;
      v12 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
      [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
    }

    v24 = v6;
    [(CADSeparatedDatabasePool *)v9 _returnConnectionToPool:v6, v9];
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](self->_pools, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_pools;
    v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:v19];
          databasePath = [v20 databasePath];
          if (databasePath)
          {
            [v13 addObject:databasePath];
          }

          else
          {
            v22 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v19;
              _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Unexpectedly encountered nil path for database with id %{public}@", buf, 0xCu);
            }
          }
        }

        v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v16);
    }

    [MEMORY[0x277CF7518] setInterestedDatabasePaths:v13 forContext:self];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_poolForPath:(id)path auxDatabaseID:(int)d
{
  v4 = *&d;
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (v4 == -1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_pools;
    v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v17), v21];
        databasePath = [v12 databasePath];
        v19 = [pathCopy isEqualToString:databasePath];

        if (v19)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }
  }

  else
  {
    pools = self->_pools;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v9 = [(NSMutableDictionary *)pools objectForKeyedSubscript:v8];

    databasePath2 = [v9 databasePath];
    v11 = [pathCopy isEqualToString:databasePath2];

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)databaseChangedExternally:(id)externally auxDatabaseID:(int)d
{
  v4 = *&d;
  externallyCopy = externally;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(CADDatabaseConnectionPool *)self _poolForPath:externallyCopy auxDatabaseID:v4];

  if (v7)
  {
    [v7 setLastChangeTimestamp:CalMonotonicTime()];
    databaseID = [v7 databaseID];
    v9 = *MEMORY[0x277CF7570];
    connections = [v7 connections];
    v11 = [connections count];

    v12 = 0;
    if (databaseID == v9)
    {
      self->_needCheckAuxDatabaseSequenceAndRestoreGeneration = 1;
      if (v11)
      {
        [(CADDatabaseConnectionPool *)self _checkGenerationAndAuxDatabaseSequence:&v12];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v12 == 1)
  {
    [(CADDatabaseConnectionPool *)self notifyDelegatesGenerationChanged];
  }
}

- (void)_checkGenerationAndAuxDatabaseSequence:(BOOL *)sequence
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_needCheckAuxDatabaseSequenceAndRestoreGeneration)
  {
    pools = self->_pools;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
    v7 = [(NSMutableDictionary *)pools objectForKeyedSubscript:v6];

    connections = [v7 connections];
    lastObject = [connections lastObject];

    if (!lastObject)
    {
      v10 = [(CADDatabaseConnectionPool *)self createConnectionForPool:v7];
      if (!v10)
      {
        v16 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_ERROR, "Could not open a connection to the Calendar database. Unable to perform generation check.", v17, 2u);
        }

        goto LABEL_12;
      }

      lastObject = v10;
      [v7 _returnConnectionToPool:v10];
    }

    [lastObject database];
    if (sequence)
    {
      databaseRestoreGeneration = self->_databaseRestoreGeneration;
      RestoreGeneration = CalDatabaseGetRestoreGeneration();
      self->_databaseRestoreGeneration = RestoreGeneration;
      *sequence = databaseRestoreGeneration != RestoreGeneration;
    }

    if (CalDatabaseGetAuxDatabaseChangesSequence() != self->_auxDatabaseSequence)
    {
      v13 = self->_pools;
      self->_pools = 0;

      if (sequence)
      {
        if (!*sequence)
        {
          v14 = self->_databaseRestoreGeneration;
          _pools = [(CADDatabaseConnectionPool *)self _pools];
          *sequence = self->_databaseRestoreGeneration != v14;
        }
      }
    }

    self->_needCheckAuxDatabaseSequenceAndRestoreGeneration = 0;

LABEL_12:
  }
}

- (id)_openDatabases
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    initOptions = self->_initOptions;
    *buf = 138412290;
    *v47 = initOptions;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Creating database with options [%@]", buf, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x277CF7520]);
  databaseDirectory = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
  v7 = [v5 initWithDirectoryURL:databaseDirectory];

  [v7 setOptions:{-[CADDatabaseInitializationOptions databaseInitOptions](self->_initOptions, "databaseInitOptions")}];
  calendarDataContainerProvider = [(CADDatabaseInitializationOptions *)self->_initOptions calendarDataContainerProvider];
  if (calendarDataContainerProvider)
  {
    [v7 setDataContainerProvider:calendarDataContainerProvider];
  }

  v9 = CalDatabaseCreateWithConfiguration();
  if (v9)
  {
    v10 = v9;
    v35 = calendarDataContainerProvider;
    v36 = v7;
    self->_auxDatabaseSequence = CalDatabaseGetAuxDatabaseChangesSequence();
    self->_databaseRestoreGeneration = CalDatabaseGetRestoreGeneration();
    v11 = CalDatabaseCopyAllAuxDatabases();
    v12 = [v11 count];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v12 + 1];
    [v13 addObject:v10];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(CADDatabaseInitializationOptions *)self->_initOptions databaseInitOptions:v35];
          v19 = CalDatabaseCreateWithAuxDatabaseRef();
          if (v19)
          {
            v20 = v19;
            [v13 addObject:v19];
            CFRelease(v20);
          }

          else
          {
            v21 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              UID = CalAuxDatabaseGetUID();
              databaseDirectory2 = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
              *buf = 67109378;
              *v47 = UID;
              *&v47[4] = 2112;
              *&v47[6] = databaseDirectory2;
              _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Unable to create auxiliary database %i with main database path %@", buf, 0x12u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v16);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = v13;
    v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(CADDatabaseConnectionPool *)self setupDatabase:*(*(&v37 + 1) + 8 * j), v35, v36];
        }

        v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v27);
    }

    CFRelease(v10);
    [MEMORY[0x277CF7518] setInterestedDatabases:v25 forContext:self];

    calendarDataContainerProvider = v35;
    v7 = v36;
  }

  else
  {
    v30 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v31 = self->_initOptions;
      v32 = v30;
      databaseDirectory3 = [(CADDatabaseInitializationOptions *)v31 databaseDirectory];
      *buf = 138412290;
      *v47 = databaseDirectory3;
      _os_log_impl(&dword_22430B000, v32, OS_LOG_TYPE_ERROR, "Unable to create main database for path %@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (void)setupDatabase:(CalDatabase *)database
{
  [(CADDatabaseInitializationOptions *)self->_initOptions unitTesting];
  CalDatabaseSetIsUnitTesting();
  if ([(CADDatabaseInitializationOptions *)self->_initOptions unitTesting])
  {
    CalDatabaseSetIntegrityErrorReportingDelegate();
  }

  [(CADDatabaseInitializationOptions *)self->_initOptions enablePropertyModificationLogging];

  CalDatabaseSetPropertyModificationLoggingEnabled();
}

- (id)createConnectionForPool:(id)pool
{
  poolCopy = pool;
  config = [poolCopy config];
  v6 = CalDatabaseCreateWithConfiguration();

  if (v6)
  {
    [poolCopy databaseID];
    CalDatabaseSetAuxilliaryDatabaseID();
    [(CADDatabaseConnectionPool *)self setupDatabase:v6];
    v7 = [[CADPooledConnection alloc] initWithDatabase:v6];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareDatabase:(CalDatabase *)database forUseWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientName = [configurationCopy clientName];
  CalDatabaseSetClientName();

  clientIdentifier = [configurationCopy clientIdentifier];
  CalDatabaseSetClientIdentifier();

  [configurationCopy inMemoryChangeTrackingClientID];
  CalDatabaseSetInMemoryChangeTrackingID();
  [configurationCopy enablePropertyModificationLogging];

  CalDatabaseSetPropertyModificationLoggingEnabled();
}

- (BOOL)performASAPWithConfiguration:(id)configuration databaseID:(int)d block:(id)block
{
  v6 = *&d;
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v10 = *MEMORY[0x277CF7570];
  if (*MEMORY[0x277CF7570] == v6)
  {
    LOBYTE(v25[0]) = 0;
    [(CADDatabaseConnectionPool *)self _checkGenerationAndAuxDatabaseSequence:v25];
    if (LOBYTE(v25[0]) == 1)
    {
      os_unfair_lock_unlock(&self->_lock);
      [(CADDatabaseConnectionPool *)self notifyDelegatesGenerationChanged];
      os_unfair_lock_lock(&self->_lock);
    }
  }

  _pools = [(CADDatabaseConnectionPool *)self _pools];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v13 = [_pools objectForKeyedSubscript:v12];

  if (!v13)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_19;
  }

  connections = [v13 connections];
  lastObject = [connections lastObject];

  if (lastObject)
  {
    connections2 = [v13 connections];
    [connections2 removeLastObject];
  }

  lastChangeTimestamp = [v13 lastChangeTimestamp];
  os_unfair_lock_unlock(&self->_lock);
  if (!lastObject)
  {
    v23 = [(CADDatabaseConnectionPool *)self createConnectionForPool:v13];
    if (v23)
    {
      lastObject = v23;
      database = [v23 database];
      if (!configurationCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v24 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 67109120;
      v25[1] = v6;
      _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_ERROR, "Unable to create database connection for database ID %i", v25, 8u);
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  database = [lastObject database];
  if (lastChangeTimestamp > CalDatabaseGetLastCacheInvalidationTimestamp())
  {
    CalDatabaseReset();
  }

  if (!configurationCopy)
  {
    goto LABEL_12;
  }

LABEL_11:
  [(CADDatabaseConnectionPool *)self prepareDatabase:database forUseWithConfiguration:configurationCopy];
LABEL_12:
  blockCopy[2](blockCopy, database);
  v19 = CalDatabaseCountCachedRecords();
  LOBYTE(v25[0]) = 0;
  if (v19 <= 60000)
  {
    os_unfair_lock_lock(&self->_lock);
    [v13 _returnConnectionToPool:lastObject];
    if (v10 == v6)
    {
      [(CADDatabaseConnectionPool *)self _checkGenerationAndAuxDatabaseSequence:v25];
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v25[0])
    {
      [(CADDatabaseConnectionPool *)self notifyDelegatesGenerationChanged];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained schedulePurge];

  v21 = 1;
LABEL_20:

  return v21;
}

- (void)forEachDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        delegateCopy[2](delegateCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_clients addObject:clientCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_clients removeObject:clientCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)numberOfClients
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_clients;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      v7 = v4;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        --v7;
      }

      while (v7);
      v5 += v4;
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reportIntegrityErrors:(id)errors
{
  errorsCopy = errors;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CADDatabaseConnectionPool_reportIntegrityErrors___block_invoke;
  v6[3] = &unk_27851AF58;
  v7 = errorsCopy;
  v5 = errorsCopy;
  [(CADDatabaseConnectionPool *)self forEachDelegate:v6];
}

- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)to stats:(id *)stats
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_pools;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v11), v13];
        [v12 purgeConnectionsLastUsedPriorTo:to stats:stats];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasDatabaseAtPath:(id)path withDatabaseID:(int)d
{
  v4 = *&d;
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(CADDatabaseConnectionPool *)self _poolForPath:pathCopy auxDatabaseID:v4];

  if (v7)
  {
    v8 = [v7 databaseID] != -1;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

@end