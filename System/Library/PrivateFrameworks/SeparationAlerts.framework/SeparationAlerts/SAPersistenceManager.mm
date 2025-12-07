@interface SAPersistenceManager
- (BOOL)_createDirectoryIfNotPresent;
- (BOOL)load;
- (BOOL)reset;
- (BOOL)save;
- (SAPersistenceManager)initWithSettings:(id)settings;
- (void)_notifyObserversOnReadFromURL:(id)l bytes:(unint64_t)bytes;
- (void)_notifyObserversOnWriteToURL:(id)l bytes:(unint64_t)bytes;
- (void)onUpdatedMonitoringSessionRecord:(id)record;
@end

@implementation SAPersistenceManager

- (SAPersistenceManager)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = SAPersistenceManager;
  v6 = [(SAPersistenceManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    if (![(SAPersistenceManager *)v7 _createDirectoryIfNotPresent])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = objc_alloc_init(SAPersistenceStore);
    store = v7->_store;
    v7->_store = v8;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v10;
  }

  v12 = v7;
LABEL_6:

  return v12;
}

- (BOOL)_createDirectoryIfNotPresent
{
  v18 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  persistenceDirectoryURL = [(SAPersistenceManagerSettings *)self->_settings persistenceDirectoryURL];
  v11 = 0;
  [defaultManager createDirectoryAtURL:persistenceDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v11];
  v5 = v11;

  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      uTF8String = [v8 UTF8String];
      *buf = 68289283;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = uTF8String;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager encountered error in creating directory, error:%{private}s}", buf, 0x1Cu);
    }
  }

  return v5 == 0;
}

- (void)_notifyObserversOnWriteToURL:(id)l bytes:(unint64_t)bytes
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didWriteToURL:lCopy bytes:{bytes, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_notifyObserversOnReadFromURL:(id)l bytes:(unint64_t)bytes
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didReadFromURL:lCopy bytes:{bytes, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)load
{
  v36 = *MEMORY[0x277D85DE8];
  _getStoreURL = [(SAPersistenceManagerSettings *)self->_settings _getStoreURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [_getStoreURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v27 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:_getStoreURL options:2 error:&v27];
    v8 = v27;
    if (v8)
    {
      v9 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        absoluteString = [_getStoreURL absoluteString];
        uTF8String = [absoluteString UTF8String];
        v13 = [v8 description];
        uTF8String2 = [v13 UTF8String];
        *buf = 68289539;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = uTF8String;
        v34 = 2081;
        v35 = uTF8String2;
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager encountered error in loading file, url:%{private}s, error:%{private}s}", buf, 0x26u);
      }

      v15 = 0;
    }

    else
    {
      v26 = 0;
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v26];
      v18 = v26;
      v15 = v18 == 0;
      if (v18)
      {
        v19 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
        {
          log = v19;
          absoluteString2 = [_getStoreURL absoluteString];
          uTF8String3 = [absoluteString2 UTF8String];
          v22 = [v18 description];
          uTF8String4 = [v22 UTF8String];
          *buf = 68289539;
          v29 = 0;
          v30 = 2082;
          v31 = "";
          v32 = 2081;
          v33 = uTF8String3;
          v34 = 2081;
          v35 = uTF8String4;
          _os_log_impl(&dword_2656EA000, log, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager encountered error in unarchiving store, url:%{private}s, error:%{private}s}", buf, 0x26u);
        }
      }

      else
      {
        objc_storeStrong(&self->_store, v17);
        -[SAPersistenceManager _notifyObserversOnReadFromURL:bytes:](self, "_notifyObserversOnReadFromURL:bytes:", _getStoreURL, [v7 length]);
      }
    }
  }

  else
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAPersistenceManager file does not exist}", buf, 0x12u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)save
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_store)
  {
    _getStoreURL = [(SAPersistenceManagerSettings *)self->_settings _getStoreURL];
    v4 = objc_autoreleasePoolPush();
    store = self->_store;
    v25 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:store requiringSecureCoding:1 error:&v25];
    v7 = v25;
    v8 = TASALog;
    if (v7)
    {
      if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        objc_autoreleasePoolPop(v4);
        v13 = 0;
LABEL_15:

        return v13;
      }

      v9 = v8;
      v10 = [v7 description];
      uTF8String = [v10 UTF8String];
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2081;
      v31 = uTF8String;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager error archiving store, error:%{private}s}", buf, 0x1Cu);
    }

    else
    {
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v14 = v8;
        path = [_getStoreURL path];
        uTF8String2 = [path UTF8String];
        *buf = 68289283;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2081;
        v31 = uTF8String2;
        _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAPersistenceManager saving to location, path:%{private}s}", buf, 0x1Cu);
      }

      v24 = 0;
      [v6 writeToURL:_getStoreURL options:1073741825 error:&v24];
      v17 = v24;
      if (!v17)
      {
        v23 = [v6 length];

        objc_autoreleasePoolPop(v4);
        [(SAPersistenceManager *)self _notifyObserversOnWriteToURL:_getStoreURL bytes:v23];
        v13 = 1;
        goto LABEL_15;
      }

      v10 = v17;
      v18 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        v20 = [v10 description];
        uTF8String3 = [v20 UTF8String];
        *buf = 68289283;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2081;
        v31 = uTF8String3;
        _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager error archiving store, error:%{private}s}", buf, 0x1Cu);
      }
    }

    goto LABEL_14;
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager no store to save}", buf, 0x12u);
  }

  return 0;
}

- (BOOL)reset
{
  v21 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  persistenceDirectoryURL = [(SAPersistenceManagerSettings *)self->_settings persistenceDirectoryURL];
  v14 = 0;
  [defaultManager removeItemAtURL:persistenceDirectoryURL error:&v14];
  v5 = v14;

  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      uTF8String = [v8 UTF8String];
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2081;
      v20 = uTF8String;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAPersistenceManager error reseting directory, error:%{private}s}", buf, 0x1Cu);
    }

    goto LABEL_6;
  }

  if (![(SAPersistenceManager *)self _createDirectoryIfNotPresent])
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v10 = objc_alloc_init(SAPersistenceStore);
  store = self->_store;
  self->_store = v10;

  v12 = 1;
LABEL_7:

  return v12;
}

- (void)onUpdatedMonitoringSessionRecord:(id)record
{
  [(SAPersistenceStore *)self->_store setMonitoringSessionRecord:record];

  [(SAPersistenceManager *)self save];
}

@end