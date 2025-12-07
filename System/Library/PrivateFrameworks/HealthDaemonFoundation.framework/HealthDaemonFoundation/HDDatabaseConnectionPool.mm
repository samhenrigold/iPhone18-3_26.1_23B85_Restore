@interface HDDatabaseConnectionPool
- (HDDatabaseConnectionPool)initWithConcurrentReaderLimit:(int64_t)limit behavior:(id)behavior debugIdentifier:(id)identifier delegate:(id)delegate;
- (HDDatabaseConnectionPoolDelegate)delegate;
- (char)_semaphoreForCheckOutOptions:(char *)options;
- (id)_removeDatabaseFromCheckoutMap:(uint64_t)map;
- (id)checkOutConnectionWithOptions:(unint64_t)options error:(id *)error;
- (id)currentFlushGroup;
- (id)diagnosticDescription;
- (id)flush;
- (int64_t)checkedOutDatabaseCount;
- (void)_addDatabaseWrapperToCheckoutMap:(uint64_t)map;
- (void)_didFlushDatabases:(uint64_t)databases;
- (void)checkInConnection:(id)connection flushImmediately:(BOOL)immediately;
- (void)dealloc;
@end

@implementation HDDatabaseConnectionPool

- (int64_t)checkedOutDatabaseCount
{
  os_unfair_lock_lock(&self->_checkoutLock);
  v3 = [(NSMapTable *)self->_checkoutMap count];
  os_unfair_lock_unlock(&self->_checkoutLock);
  return v3;
}

- (HDDatabaseConnectionPool)initWithConcurrentReaderLimit:(int64_t)limit behavior:(id)behavior debugIdentifier:(id)identifier delegate:(id)delegate
{
  behaviorCopy = behavior;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v40.receiver = self;
  v40.super_class = HDDatabaseConnectionPool;
  v15 = [(HDDatabaseConnectionPool *)&v40 init];
  if (v15)
  {
    if (limit <= 0)
    {
      [HDDatabaseConnectionPool initWithConcurrentReaderLimit:a2 behavior:v15 debugIdentifier:? delegate:?];
    }

    objc_storeStrong(&v15->_behavior, behavior);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16 = objc_alloc_init(MEMORY[0x277CCA928]);
    cacheCondition = v15->_cacheCondition;
    v15->_cacheCondition = v16;

    v15->_cacheSize = limit + 1;
    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    cache = v15->_cache;
    v15->_cache = v18;

    v20 = dispatch_group_create();
    flushGroup = v15->_flushGroup;
    v15->_flushGroup = v20;

    v15->_checkoutLock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    checkoutMap = v15->_checkoutMap;
    v15->_checkoutMap = weakToStrongObjectsMapTable;

    v15->_concurrentReaderLimit = limit;
    features = [(_HKBehavior *)v15->_behavior features];
    databaseSemaphoreLogging = [features databaseSemaphoreLogging];

    features2 = [(_HKBehavior *)v15->_behavior features];
    databasePrioritySemaphore = [features2 databasePrioritySemaphore];

    if (databasePrioritySemaphore)
    {
      v28 = off_2796BD380;
    }

    else
    {
      v28 = off_2796BD360;
    }

    v29 = objc_alloc(*v28);
    concurrentReaderLimit = v15->_concurrentReaderLimit;
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:read", identifierCopy];
    v32 = [v29 initWithCount:concurrentReaderLimit options:databaseSemaphoreLogging debugIdentifier:identifierCopy];
    readerSemaphore = v15->_readerSemaphore;
    v15->_readerSemaphore = v32;

    v34 = objc_alloc(*v28);
    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:write", identifierCopy];
    v36 = [v34 initWithCount:1 options:databaseSemaphoreLogging debugIdentifier:identifierCopy2];
    writerSemaphore = v15->_writerSemaphore;
    v15->_writerSemaphore = v36;

    v38 = +[HDDiagnosticManager sharedDiagnosticManager];
    [v38 addObject:v15];
  }

  return v15;
}

- (void)dealloc
{
  flush = [(HDDatabaseConnectionPool *)self flush];
  v4 = +[HDDiagnosticManager sharedDiagnosticManager];
  [v4 removeObject:self];

  v5.receiver = self;
  v5.super_class = HDDatabaseConnectionPool;
  [(HDDatabaseConnectionPool *)&v5 dealloc];
}

- (id)checkOutConnectionWithOptions:(unint64_t)options error:(id *)error
{
  if ((~options & 0xC) == 0)
  {
    [HDDatabaseConnectionPool checkOutConnectionWithOptions:a2 error:self];
  }

  v7 = [(HDDatabaseConnectionPool *)self _semaphoreForCheckOutOptions:options];
  features = [(_HKBehavior *)self->_behavior features];
  databaseSemaphoreLogging = [features databaseSemaphoreLogging];

  v10 = MEMORY[0x277CCC2A0];
  if (databaseSemaphoreLogging)
  {
    _HKInitializeLogging();
    v11 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      [HDDatabaseConnectionPool checkOutConnectionWithOptions:v11 error:?];
    }
  }

  [v7 waitWithPriority:0];
  features2 = [(_HKBehavior *)self->_behavior features];
  databaseSemaphoreLogging2 = [features2 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging2)
  {
    _HKInitializeLogging();
    v14 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      [HDDatabaseConnectionPool checkOutConnectionWithOptions:v14 error:?];
    }
  }

  [(NSCondition *)self->_cacheCondition lock];
  cacheGeneration = self->_cacheGeneration;
  v16 = self->_flushGroup;
  if ((options & 4) != 0)
  {
    while (![(NSMutableSet *)self->_cache count]&& self->_cacheGeneration == cacheGeneration && [(HDDatabaseConnectionPool *)self count]>= 1)
    {
      [(NSCondition *)self->_cacheCondition wait];
    }
  }

  if ((options & 8) != 0)
  {
    anyObject = 0;
  }

  else
  {
    anyObject = [(NSMutableSet *)self->_cache anyObject];
    if (anyObject)
    {
      [(NSMutableSet *)self->_cache removeObject:anyObject];
    }
  }

  dispatch_group_enter(v16);
  [(NSCondition *)self->_cacheCondition unlock];
  if (anyObject)
  {
    goto LABEL_25;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [WeakRetained newConnectionForPool:self error:error];

  if (!v19)
  {
    dispatch_group_leave(v16);
    [v7 signal];
    v20 = 0;
    goto LABEL_21;
  }

  atomic_fetch_add(&self->_count, 1u);
  anyObject = [[_HDDatabaseConnectionWrapper alloc] initWithConnection:v19 flushGroup:v16 generation:cacheGeneration];

  if (anyObject)
  {
LABEL_25:
    v22 = pthread_self();
    pthread_threadid_np(v22, anyObject + 4);
    anyObject[5] = options;
    [(HDDatabaseConnectionPool *)self _addDatabaseWrapperToCheckoutMap:anyObject];
    v23 = anyObject[1];
  }

  else
  {
    [(HDDatabaseConnectionPool *)self _addDatabaseWrapperToCheckoutMap:?];
    v23 = 0;
  }

  v20 = v23;

LABEL_21:

  return v20;
}

- (id)currentFlushGroup
{
  [(NSCondition *)self->_cacheCondition lock];
  v3 = self->_flushGroup;
  [(NSCondition *)self->_cacheCondition unlock];

  return v3;
}

- (id)diagnosticDescription
{
  v40 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  os_unfair_lock_lock(&self->_checkoutLock);
  if ([(NSMapTable *)self->_checkoutMap count])
  {
    [string appendFormat:@"\n\t%lu connections in use:", -[NSMapTable count](self->_checkoutMap, "count")];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    selfCopy = self;
    obj = [(NSMapTable *)self->_checkoutMap objectEnumerator];
    v4 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v35;
      do
      {
        v7 = 0;
        do
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v34 + 1) + 8 * v7);
          if (v8)
          {
            v9 = v8[4];
            v10 = objc_opt_class();
            v11 = v8[5];
            v12 = @"reader (high prio)";
            if ((v11 & 2) == 0)
            {
              v12 = @"reader";
            }

            if (v11)
            {
              v13 = @"writer";
            }

            else
            {
              v13 = v12;
            }

            v14 = v13;
            v15 = v8[1];
          }

          else
          {
            v10 = objc_opt_class();
            v14 = 0;
            v9 = 0;
            v15 = 0;
          }

          [string appendFormat:@"\n\t\t<%@:%p>: %@ %p on thread 0x%X (%llu)", v10, v8, v14, v15, v9, v9];

          ++v7;
        }

        while (v5 != v7);
        v16 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        v5 = v16;
      }

      while (v16);
    }

    [string appendString:@"\n"];
    self = selfCopy;
  }

  os_unfair_lock_unlock(&self->_checkoutLock);
  [(NSCondition *)self->_cacheCondition lock];
  v17 = [(NSMutableSet *)self->_cache count];
  if (v17)
  {
    v18 = "s";
    if (v17 == 1)
    {
      v18 = "";
    }

    [string appendFormat:@"\n\t%lu cached connection%s:", v17, v18];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = self->_cache;
    v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (v24)
          {
            v24 = v24[1];
          }

          v25 = v24;
          [string appendFormat:@"\n\t\t<%@:%p>", objc_opt_class(), v25];
        }

        v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    v26 = @"\n";
  }

  else
  {
    v26 = @"\n\tNo cached connections\n";
  }

  [string appendString:v26];
  [(NSCondition *)self->_cacheCondition unlock];

  return string;
}

- (HDDatabaseConnectionPoolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (char)_semaphoreForCheckOutOptions:(char *)options
{
  if (!options)
  {
LABEL_7:

    return options;
  }

  if (a2)
  {
    v3 = 88;
    goto LABEL_6;
  }

  if ((a2 & 2) == 0)
  {
    v3 = 80;
LABEL_6:
    options = *&options[v3];
    goto LABEL_7;
  }

  options = 0;

  return options;
}

- (void)_addDatabaseWrapperToCheckoutMap:(uint64_t)map
{
  if (map)
  {
    v3 = a2;
    os_unfair_lock_lock((map + 68));
    if (v3)
    {
      v4 = v3[1];
    }

    else
    {
      v4 = 0;
    }

    [*(map + 72) setObject:v3 forKey:v4];

    os_unfair_lock_unlock((map + 68));
  }
}

- (void)checkInConnection:(id)connection flushImmediately:(BOOL)immediately
{
  v15[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v8 = [(HDDatabaseConnectionPool *)self _removeDatabaseFromCheckoutMap:connectionCopy];
  v9 = v8;
  if (v8)
  {
    a2 = *(v8 + 40);
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseConnectionPool.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"databaseWrapper != nil"}];

    LOBYTE(a2) = 0;
  }

  [(NSCondition *)self->_cacheCondition lock];
  if (immediately || [(NSMutableSet *)self->_cache count]>= self->_cacheSize || (!v9 ? (v10 = 0) : (v10 = v9[3]), v10 != self->_cacheGeneration))
  {
    atomic_fetch_add(&self->_count, 0xFFFFFFFF);
    [(NSCondition *)self->_cacheCondition signal];
    [(NSCondition *)self->_cacheCondition unlock];
    v15[0] = connectionCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(HDDatabaseConnectionPool *)self _didFlushDatabases:v11];
  }

  else
  {
    [(NSMutableSet *)self->_cache addObject:v9];
    [(NSCondition *)self->_cacheCondition signal];
    [(NSCondition *)self->_cacheCondition unlock];
  }

  if (v9)
  {
    v12 = v9[2];
  }

  else
  {
    v12 = 0;
  }

  dispatch_group_leave(v12);
  v13 = [(HDDatabaseConnectionPool *)self _semaphoreForCheckOutOptions:a2];
  [v13 signal];
}

- (id)_removeDatabaseFromCheckoutMap:(uint64_t)map
{
  v3 = a2;
  if (map)
  {
    os_unfair_lock_lock((map + 68));
    v4 = [*(map + 72) objectForKey:v3];
    if (v4)
    {
      [*(map + 72) removeObjectForKey:v3];
    }

    os_unfair_lock_unlock((map + 68));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_didFlushDatabases:(uint64_t)databases
{
  v4 = a2;
  if (databases && [v4 count])
  {
    WeakRetained = objc_loadWeakRetained((databases + 96));
    [WeakRetained databasePool:databases didFlushConnections:v4];
  }
}

- (id)flush
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSCondition *)self->_cacheCondition lock];
  if ([(NSMutableSet *)self->_cache count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_cache;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * v8);
          if (v9)
          {
            v10 = *(v9 + 8);
          }

          else
          {
            v10 = 0;
          }

          [v3 addObject:{v10, v18}];
          ++v8;
        }

        while (v6 != v8);
        v11 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v6 = v11;
      }

      while (v11);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    cache = self->_cache;
    self->_cache = v12;
  }

  v14 = self->_flushGroup;
  v15 = dispatch_group_create();
  flushGroup = self->_flushGroup;
  self->_flushGroup = v15;

  ++self->_cacheGeneration;
  atomic_fetch_add(&self->_count, -[v3 count]);
  [(NSCondition *)self->_cacheCondition broadcast];
  [(NSCondition *)self->_cacheCondition unlock];
  [(HDDatabaseConnectionPool *)self _didFlushDatabases:v3];

  return v14;
}

- (void)initWithConcurrentReaderLimit:(uint64_t)a1 behavior:(uint64_t)a2 debugIdentifier:delegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDDatabaseConnectionPool.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"concurrentReaderLimit > 0"}];
}

- (void)checkOutConnectionWithOptions:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDDatabaseConnectionPool.m" lineNumber:149 description:@"Cannot both prefer a cached connection and require a new one."];
}

- (void)checkOutConnectionWithOptions:(void *)a1 error:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACC8];
  v2 = a1;
  v3 = [v1 currentThread];
  [MEMORY[0x277CCACC8] threadPriority];
  v5 = 138412546;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_25156C000, v2, OS_LOG_TYPE_DEBUG, "Semaphore wait %@ priority=%f", &v5, 0x16u);
}

- (void)checkOutConnectionWithOptions:(void *)a1 error:.cold.3(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACC8];
  v2 = a1;
  v3 = [v1 currentThread];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_25156C000, v2, OS_LOG_TYPE_DEBUG, "Semaphore awake %@", &v4, 0xCu);
}

@end