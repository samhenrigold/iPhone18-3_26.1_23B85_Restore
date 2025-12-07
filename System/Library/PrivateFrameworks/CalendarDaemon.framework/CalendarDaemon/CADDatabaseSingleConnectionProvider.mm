@interface CADDatabaseSingleConnectionProvider
- (BOOL)hasDatabaseAtPath:(id)path withDatabaseID:(int)d;
- (BOOL)performWithConfiguration:(id)configuration priority:(unint64_t)priority databaseID:(int)d block:(id)block;
- (CADDatabaseSingleConnectionProvider)initWithConfiguration:(id)configuration;
- (id)_databases;
- (int)databaseRestoreGeneration;
- (void)_closeDatabases;
- (void)_prepareDatabase:(CalDatabase *)database withConfiguration:(id)configuration;
- (void)addCreatedAuxDatabase:(CalDatabase *)database;
- (void)addDelegate:(id)delegate;
- (void)closeDatabases;
- (void)dealloc;
- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block;
- (void)removeDelegate:(id)delegate;
- (void)reportIntegrityErrors:(id)errors;
- (void)validateAuxDatabases;
@end

@implementation CADDatabaseSingleConnectionProvider

- (CADDatabaseSingleConnectionProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CADDatabaseSingleConnectionProvider;
  v6 = [(CADDatabaseSingleConnectionProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initOptions, configuration);
  }

  return v7;
}

- (void)dealloc
{
  [MEMORY[0x277CF7518] cleanupDeallocatedClients];
  v3.receiver = self;
  v3.super_class = CADDatabaseSingleConnectionProvider;
  [(CADDatabaseSingleConnectionProvider *)&v3 dealloc];
}

- (void)_prepareDatabase:(CalDatabase *)database withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientIdentifier = [configurationCopy clientIdentifier];
  CalDatabaseSetClientIdentifier();

  clientName = [configurationCopy clientName];
  CalDatabaseSetClientName();

  [configurationCopy inMemoryChangeTrackingClientID];

  CalDatabaseSetInMemoryChangeTrackingID();
}

- (BOOL)performWithConfiguration:(id)configuration priority:(unint64_t)priority databaseID:(int)d block:(id)block
{
  v7 = *&d;
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v13 = [_databases objectForKeyedSubscript:v12];

  if (v13)
  {
    CFRetain(v13);
    os_unfair_lock_unlock(&self->_lock);
    [(CADDatabaseSingleConnectionProvider *)self _prepareDatabase:v13 withConfiguration:configurationCopy];
    blockCopy[2](blockCopy, v13);
    CFRelease(v13);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v13 != 0;
}

- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  v10 = [_databases copy];

  os_unfair_lock_unlock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v20 + 1) + 8 * v15);
      intValue = [v16 intValue];
      v18 = [v11 objectForKeyedSubscript:v16];

      [(CADDatabaseSingleConnectionProvider *)self _prepareDatabase:v18 withConfiguration:configurationCopy];
      v19 = 0;
      blockCopy[2](blockCopy, intValue, v18, &v19);
      if (v19)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (int)databaseRestoreGeneration
{
  os_unfair_lock_lock(&self->_lock);
  _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
  v5 = [_databases objectForKeyedSubscript:v4];

  if (v5)
  {
    RestoreGeneration = CalDatabaseGetRestoreGeneration();
  }

  else
  {
    RestoreGeneration = -1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return RestoreGeneration;
}

- (void)addCreatedAuxDatabase:(CalDatabase *)database
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_databases)
  {
    AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
    databases = self->_databases;
    v7 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
    v8 = [(NSMutableDictionary *)databases objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        v15[0] = 67109120;
        v15[1] = AuxilliaryDatabaseID;
        _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_INFO, "Ignoring attempt to add a database already known to the connection (id = %d)", v15, 8u);
      }
    }

    else
    {
      v11 = self->_databases;
      v12 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
      [(NSMutableDictionary *)v11 setObject:database forKeyedSubscript:v12];

      v13 = MEMORY[0x277CF7518];
      allValues = [(NSMutableDictionary *)self->_databases allValues];
      [v13 setInterestedDatabases:allValues forContext:self];
    }
  }

  else
  {
    _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)validateAuxDatabases
{
  os_unfair_lock_lock(&self->_lock);
  databases = self->_databases;
  if (databases)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
    [(NSMutableDictionary *)databases objectForKeyedSubscript:v4];

    if (CalDatabaseGetAuxDatabaseChangesSequence() != self->_auxDatabaseSequence)
    {
      [(CADDatabaseSingleConnectionProvider *)self _closeDatabases];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_databases
{
  v58 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  databases = self->_databases;
  if (!databases)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      initOptions = self->_initOptions;
      *buf = 138412290;
      *v56 = initOptions;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Creating database with options [%@]", buf, 0xCu);
    }

    v6 = objc_alloc(MEMORY[0x277CF7520]);
    databaseDirectory = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
    v8 = [v6 initWithDirectoryURL:databaseDirectory];

    [v8 setOptions:{-[CADDatabaseInitializationOptions databaseInitOptions](self->_initOptions, "databaseInitOptions")}];
    calendarDataContainerProvider = [(CADDatabaseInitializationOptions *)self->_initOptions calendarDataContainerProvider];
    if (calendarDataContainerProvider)
    {
      [v8 setDataContainerProvider:calendarDataContainerProvider];
    }

    v10 = CalDatabaseCreateWithConfiguration();
    if (v10)
    {
      v11 = v10;
      v44 = calendarDataContainerProvider;
      v45 = v8;
      self->_auxDatabaseSequence = CalDatabaseGetAuxDatabaseChangesSequence();
      v12 = CalDatabaseCopyAllAuxDatabases();
      v13 = [v12 count];
      v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v13 + 1];
      v15 = self->_databases;
      self->_databases = v14;

      v16 = self->_databases;
      v17 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
      [(NSMutableDictionary *)v16 setObject:v11 forKeyedSubscript:v17];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v51;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v51 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(CADDatabaseInitializationOptions *)self->_initOptions databaseInitOptions:v44];
            v23 = CalDatabaseCreateWithAuxDatabaseRef();
            if (v23)
            {
              v24 = v23;
              v25 = self->_databases;
              v26 = [MEMORY[0x277CCABB0] numberWithInt:CalDatabaseGetAuxilliaryDatabaseID()];
              [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:v26];

              CFRelease(v24);
            }

            else
            {
              v27 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
              {
                v28 = v27;
                UID = CalAuxDatabaseGetUID();
                databaseDirectory2 = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
                *buf = 67109378;
                *v56 = UID;
                *&v56[4] = 2112;
                *&v56[6] = databaseDirectory2;
                _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_ERROR, "Unable to create auxiliary database %i with main database path %@", buf, 0x12u);
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v20);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v31 = self->_databases;
      v32 = [(NSMutableDictionary *)v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v47;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [(NSMutableDictionary *)self->_databases objectForKeyedSubscript:*(*(&v46 + 1) + 8 * j), v44, v45];

            [(CADDatabaseInitializationOptions *)self->_initOptions unitTesting];
            CalDatabaseSetIsUnitTesting();
            if ([(CADDatabaseInitializationOptions *)self->_initOptions unitTesting])
            {
              CalDatabaseSetIntegrityErrorReportingDelegate();
            }

            [(CADDatabaseInitializationOptions *)self->_initOptions enablePropertyModificationLogging];
            CalDatabaseSetPropertyModificationLoggingEnabled();
          }

          v33 = [(NSMutableDictionary *)v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v33);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_handleDatabaseChangedExternally name:*MEMORY[0x277CF7658] object:v11];

      CFRelease(v11);
      v37 = MEMORY[0x277CF7518];
      allValues = [(NSMutableDictionary *)self->_databases allValues];
      [v37 setInterestedDatabases:allValues forContext:self];

      calendarDataContainerProvider = v44;
      v8 = v45;
    }

    else
    {
      v39 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v40 = self->_initOptions;
        v41 = v39;
        databaseDirectory3 = [(CADDatabaseInitializationOptions *)v40 databaseDirectory];
        *buf = 138412290;
        *v56 = databaseDirectory3;
        _os_log_impl(&dword_22430B000, v41, OS_LOG_TYPE_ERROR, "Unable to create main database for path %@", buf, 0xCu);
      }
    }

    databases = self->_databases;
  }

  return databases;
}

- (void)closeDatabases
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_databases)
  {
    v3 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Closing the databases prematurely because we were explicitly asked to.", v4, 2u);
    }

    [(CADDatabaseSingleConnectionProvider *)self _closeDatabases];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_closeDatabases
{
  os_unfair_lock_assert_owner(&self->_lock);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CF7658] object:0];

  databases = self->_databases;
  self->_databases = 0;
}

- (void)reportIntegrityErrors:(id)errors
{
  errorsCopy = errors;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reportIntegrityErrors:errorsCopy];
}

- (void)addDelegate:(id)delegate
{
  v12 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained != delegateCopy)
    {
      v7 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412546;
        v9 = v6;
        v10 = 2112;
        v11 = delegateCopy;
        _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "Only a single delegate is supported by single connection pools. Current delegate = %@, new delegate = %@", &v8, 0x16u);
      }
    }
  }

  else
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained == delegateCopy)
  {

    objc_storeWeak(&self->_delegate, 0);
  }
}

- (BOOL)hasDatabaseAtPath:(id)path withDatabaseID:(int)d
{
  v4 = *&d;
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  databases = self->_databases;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)databases objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = CalDatabaseCopyDirectoryPathForDatabase();
    if (([v10 hasSuffix:@"/"] & 1) == 0)
    {
      v11 = [v10 stringByAppendingString:@"/"];

      v10 = v11;
    }

    v12 = [v10 isEqualToString:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

@end