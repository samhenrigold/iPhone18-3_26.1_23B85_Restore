@interface EDPersistenceDatabaseConnectionPool
- (BOOL)_lockForConnectionType:(unint64_t)type resource:(id *)resource;
- (BOOL)_shouldAddReaderConnectionBackToCache;
- (EDPersistenceDatabaseConnectionPool)initWithDelegate:(id)delegate minimumCachedReaderConnections:(unint64_t)connections;
- (EDPersistenceDatabaseConnectionPoolDelegate)delegate;
- (id)_connectionWithType:(unint64_t)type;
- (unint64_t)cacheSize;
- (void)_unlockForConnectionType:(unint64_t)type resource:(id)resource;
- (void)checkInConnection:(id)connection;
- (void)dealloc;
- (void)flush;
- (void)setCacheSize:(unint64_t)size;
@end

@implementation EDPersistenceDatabaseConnectionPool

- (BOOL)_shouldAddReaderConnectionBackToCache
{
  if ([(NSMutableSet *)self->_cache count]< self->_minimumCachedReaderConnections)
  {
    return 1;
  }

  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceDate:self->_lastConnectionCreationTime];
  if (v5 >= 60.0)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:self->_lastConnectionDisposalTime];
    v3 = v7 < 10.0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void ___ef_log_EDPersistenceDatabaseConnectionPool_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDPersistenceDatabaseConnectionPool");
  v1 = _ef_log_EDPersistenceDatabaseConnectionPool_log;
  _ef_log_EDPersistenceDatabaseConnectionPool_log = v0;
}

- (EDPersistenceDatabaseConnectionPool)initWithDelegate:(id)delegate minimumCachedReaderConnections:(unint64_t)connections
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = EDPersistenceDatabaseConnectionPool;
  v8 = [(EDPersistenceDatabaseConnectionPool *)&v21 init];
  if (v8)
  {
    if (!connections)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"EDPersistenceDatabaseConnectionPool.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"minimumCachedReaderConnections > 0"}];
    }

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cacheLock = v8->_cacheLock;
    v8->_cacheLock = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    checkoutLock = v8->_checkoutLock;
    v8->_checkoutLock = v11;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    checkoutMap = v8->_checkoutMap;
    v8->_checkoutMap = weakToStrongObjectsMapTable;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cache = v8->_cache;
    v8->_cache = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696AD10]);
    writerLock = v8->_writerLock;
    v8->_writerLock = v17;

    [(EDPersistenceDatabaseConnectionPool *)v8 setCacheSize:connections];
  }

  return v8;
}

- (void)dealloc
{
  [(EDPersistenceDatabaseConnectionPool *)self setCacheSize:0];
  connection = [(_EDPersistenceDatabaseConnectionWrapper *)self->_writerConnection connection];
  [connection close];

  v4.receiver = self;
  v4.super_class = EDPersistenceDatabaseConnectionPool;
  [(EDPersistenceDatabaseConnectionPool *)&v4 dealloc];
}

- (id)_connectionWithType:(unint64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v5 = [(EDPersistenceDatabaseConnectionPool *)self _lockForConnectionType:type resource:&v19];
  v6 = v19;
  [(NSLock *)self->_cacheLock lock];
  cacheGeneration = self->_cacheGeneration;
  if (v5)
  {
    v8 = self->_writerConnection;
    writerConnection = self->_writerConnection;
    self->_writerConnection = 0;
  }

  else
  {
    anyObject = [(NSMutableSet *)self->_cache anyObject];
    if (anyObject)
    {
      v8 = anyObject;
      [(NSMutableSet *)self->_cache removeObject:?];
    }

    else
    {
      v8 = 0;
    }
  }

  [(NSLock *)self->_cacheLock unlock];
  if (v8)
  {
    connection = [(_EDPersistenceDatabaseConnectionWrapper *)v8 connection];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    connection = [WeakRetained openConnectionIsWriter:v5];

    if (![connection isValid])
    {

      v8 = 0;
      goto LABEL_17;
    }

    v8 = [[_EDPersistenceDatabaseConnectionWrapper alloc] initWithConnection:connection generation:cacheGeneration];
    [(NSLock *)self->_cacheLock lock];
    v13 = [MEMORY[0x1E695DF00] now];
    lastConnectionCreationTime = self->_lastConnectionCreationTime;
    self->_lastConnectionCreationTime = v13;

    if (!v5)
    {
      ++self->_totalCurrentReaderConnections;
      v16 = _ef_log_EDPersistenceDatabaseConnectionPool(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        totalCurrentReaderConnections = self->_totalCurrentReaderConnections;
        *buf = 134217984;
        v21 = totalCurrentReaderConnections;
        _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Creating a new read connection, now %lu connections", buf, 0xCu);
      }
    }

    [(NSLock *)self->_cacheLock unlock];
  }

  if (connection)
  {
    [(_EDPersistenceDatabaseConnectionWrapper *)v8 setType:type];
    [(_EDPersistenceDatabaseConnectionWrapper *)v8 setResource:v6];
    [(NSLock *)self->_checkoutLock lock];
    [(NSMapTable *)self->_checkoutMap setObject:v8 forKey:connection];
    [(NSLock *)self->_checkoutLock unlock];
    goto LABEL_18;
  }

LABEL_17:
  connection = 0;
  [(EDPersistenceDatabaseConnectionPool *)self _unlockForConnectionType:type resource:v6];
LABEL_18:

  return connection;
}

- (BOOL)_lockForConnectionType:(unint64_t)type resource:(id *)resource
{
  v16 = *MEMORY[0x1E69E9840];
  if (!type)
  {
    p_writersWaiting = &self->_writersWaiting;
    add = atomic_fetch_add(&self->_writersWaiting, 1u);
    if (add >= 1)
    {
      v8 = _ef_log_EDPersistenceDatabaseConnectionPool(self);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109120;
        v15 = add + 1;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "waiting for write connection (%d waiters)", &v14, 8u);
      }
    }

    lock = [(NSLock *)self->_writerLock lock];
    v10 = atomic_fetch_add(p_writersWaiting, 0xFFFFFFFF);
    v11 = v10 - 1;
    if (v10 > 1)
    {
      v12 = _ef_log_EDPersistenceDatabaseConnectionPool(lock);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109120;
        v15 = v11;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "acquired write connection (%d waiters)", &v14, 8u);
      }
    }
  }

  return type == 0;
}

- (void)checkInConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  [(NSLock *)self->_checkoutLock lock];
  v6 = [(NSMapTable *)self->_checkoutMap objectForKey:connectionCopy];
  if (v6)
  {
    [(NSMapTable *)self->_checkoutMap removeObjectForKey:connectionCopy];
  }

  [(NSLock *)self->_checkoutLock unlock];
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseConnectionPool.m" lineNumber:198 description:@"No connection wrapper found"];
  }

  type = [v6 type];
  resource = [v6 resource];
  [(NSLock *)self->_cacheLock lock];
  if ([v6 generation] == self->_cacheGeneration)
  {
    if ([connectionCopy isWriter])
    {
      objc_storeStrong(&self->_writerConnection, v6);
    }

    else
    {
      _shouldAddReaderConnectionBackToCache = [(EDPersistenceDatabaseConnectionPool *)self _shouldAddReaderConnectionBackToCache];
      if (_shouldAddReaderConnectionBackToCache)
      {
        [(NSMutableSet *)self->_cache addObject:v6];
        v10 = [(NSMutableSet *)self->_cache count];
        if (v10 > self->_minimumCachedReaderConnections)
        {
          v11 = _ef_log_EDPersistenceDatabaseConnectionPool(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [(NSMutableSet *)self->_cache count];
            v19 = 134217984;
            v20 = v12;
            _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "Adding reader connection back to cache, now %lu in cache", &v19, 0xCu);
          }
        }
      }

      else
      {
        --self->_totalCurrentReaderConnections;
        v13 = _ef_log_EDPersistenceDatabaseConnectionPool(_shouldAddReaderConnectionBackToCache);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          totalCurrentReaderConnections = self->_totalCurrentReaderConnections;
          v15 = [(NSMutableSet *)self->_cache count];
          v19 = 134218240;
          v20 = totalCurrentReaderConnections;
          v21 = 2048;
          v22 = v15;
          _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Reducing number of read connections, now %lu (%lu in cache)", &v19, 0x16u);
        }

        v16 = [MEMORY[0x1E695DF00] now];
        lastConnectionDisposalTime = self->_lastConnectionDisposalTime;
        self->_lastConnectionDisposalTime = v16;

        [connectionCopy close];
      }
    }
  }

  else
  {
    [connectionCopy close];
    if (([connectionCopy isWriter] & 1) == 0)
    {
      --self->_totalCurrentReaderConnections;
    }
  }

  [(NSLock *)self->_cacheLock unlock];
  [(EDPersistenceDatabaseConnectionPool *)self _unlockForConnectionType:type resource:resource];
}

- (void)_unlockForConnectionType:(unint64_t)type resource:(id)resource
{
  if (!type)
  {
    [(NSLock *)self->_writerLock unlock:0];
  }
}

- (void)flush
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(NSLock *)self->_cacheLock lock];
  if ([(NSMutableSet *)self->_cache count])
  {
    [v3 unionSet:self->_cache];
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cache = self->_cache;
    self->_cache = v4;
  }

  if (self->_writerConnection)
  {
    [v3 addObject:?];
    writerConnection = self->_writerConnection;
    self->_writerConnection = 0;
  }

  ++self->_cacheGeneration;
  [(NSLock *)self->_cacheLock unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        connection = [*(*(&v12 + 1) + 8 * v10) connection];
        [connection close];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setCacheSize:(unint64_t)size
{
  [(NSLock *)self->_cacheLock lock];
  self->_minimumCachedReaderConnections = size;
  cacheLock = self->_cacheLock;

  [(NSLock *)cacheLock unlock];
}

- (unint64_t)cacheSize
{
  [(NSLock *)self->_cacheLock lock];
  minimumCachedReaderConnections = self->_minimumCachedReaderConnections;
  [(NSLock *)self->_cacheLock unlock];
  return minimumCachedReaderConnections;
}

- (EDPersistenceDatabaseConnectionPoolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end