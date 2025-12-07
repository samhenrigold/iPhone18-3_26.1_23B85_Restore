@interface NSXPCStoreServer
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSQueryGenerationToken)retainedXPCEncodableGenerationTokenForOriginal:(NSQueryGenerationToken *)original inContext:(void *)context;
- (NSQueryGenerationToken)unpackQueryGeneration:(uint64_t)generation withContext:(void *)context;
- (id)initForStoreWithURL:(id)l usingModel:(id)model options:(id)options policy:(id)policy;
- (id)initForStoreWithURL:(id)l usingModelAtURL:(id)rL options:(id)options policy:(id)policy;
- (id)replacementObjectForXPCConnection:(id)connection encoder:(id)encoder object:(id)object;
- (uint64_t)_populateObject:(void *)object withValuesFromClient:(void *)client;
- (uint64_t)setupRecoveryForConnectionContext:(uint64_t)context ifNecessary:;
- (void)dealloc;
- (void)errorIsPlausiblyAnSQLiteIssue:(uint64_t)issue;
- (void)handleRequest:(id)request reply:(id)reply;
- (void)removeCachesForConnection:(void *)result;
- (void)setErrorHandlingDelegate:(id)delegate;
- (void)startListening;
@end

@implementation NSXPCStoreServer

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == self)
  {
    _CoreData_XPCDebug = [_PFRoutines integerValueForOverride:?];
  }
}

- (id)initForStoreWithURL:(id)l usingModel:(id)model options:(id)options policy:(id)policy
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (!l || !model)
  {

    v14 = @"model";
    if (!l)
    {
      v14 = @"storeURL";
    }

    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14);
    goto LABEL_14;
  }

  v11 = objc_msgSend_valueForKey_(options, a2, @"NSXPCStoreEntitlementNames");
  if (!v11)
  {
    v56[0] = @"application-identifier";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    goto LABEL_10;
  }

  v12 = v11;
  if (([v11 containsObject:@"application-identifier"] & 1) == 0)
  {
    v13 = [objc_msgSend(MEMORY[0x1E695DF70] arrayWithArray:{v12), "arrayByAddingObject:", @"application-identifier"}];
LABEL_10:
    v12 = v13;
  }

  v16 = objc_msgSend_valueForKey_(options);
  bOOLValue = [objc_msgSend_valueForKey_(options) BOOLValue];
  v18 = bOOLValue;
  if (!v16 && bOOLValue)
  {

    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
LABEL_14:
    [_NSXPCStoreUtilities logMessage:v15 forComponent:?];
    return 0;
  }

  v21 = objc_msgSend_valueForKey_(options);
  if (v21 && v16)
  {
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
    [_NSXPCStoreUtilities logMessage:v22 forComponent:?];
    v21 = 0;
  }

  v44 = v21;
  v51.receiver = self;
  v51.super_class = NSXPCStoreServer;
  v19 = [(NSXPCStoreServer *)&v51 init];
  if (v19)
  {
    v45 = v18;
    v46 = v16;
    modelCopy = model;
    v19->_model = modelCopy;
    if (!modelCopy)
    {
      v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
      [_NSXPCStoreUtilities logMessage:v43 forComponent:?];
      abort();
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    model = v19->_model;
    v25 = [(NSManagedObjectModel *)model countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(model);
          }

          v29 = *(*(&v47 + 1) + 8 * i);
          if (v29)
          {

            *(v29 + 48) = 0;
          }
        }

        v26 = [(NSManagedObjectModel *)model countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v26);
    }

    v19->_storeURL = l;
    v19->_entitlementNames = [v12 copy];
    if (policy)
    {
      policyCopy = policy;
    }

    else
    {
      policyCopy = objc_alloc_init(NSXPCStoreServerRequestHandlingPolicy);
    }

    v19->_policy = policyCopy;
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:options];
    v54[0] = @"NSPersistentStoreDeferredLightweightMigrationOptionKey";
    v54[1] = @"NSMigratePersistentStoresAutomaticallyOption";
    v54[2] = @"NSInferMappingModelAutomaticallyOption";
    v54[3] = @"NSPersistentStoreForceLightweightMigrationOption";
    -[NSDictionary removeObjectsForKeys:](v31, "removeObjectsForKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4]);
    if ([(NSDictionary *)v31 isEqualToDictionary:options])
    {
      goto LABEL_44;
    }

    v32 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          optionsCopy2 = options;
          v34 = "CoreData: error: XPC Store Server - Migration keys have been removed from %@\n";
LABEL_63:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          optionsCopy2 = options;
          v34 = "CoreData: warning: XPC Store Server - Migration keys have been removed from %@\n";
          goto LABEL_63;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    _NSCoreDataLog_console(v35, "XPC Store Server - Migration keys have been removed from %@", options);
    objc_autoreleasePoolPop(v32);
LABEL_44:
    v19->_storeOptions = v31;
    if (v46)
    {
      if (v45)
      {
        serviceListener = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v46];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v38 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              optionsCopy2 = v46;
              _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to create non-mach listener with service name: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v39 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              optionsCopy2 = v46;
              _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to create non-mach listener with service name: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v40 = 1;
        }

        else
        {
          v40 = 8;
        }

        _NSCoreDataLog_console(v40, "Attempting to create non-mach listener with service name: %@", v46);
        objc_autoreleasePoolPop(v37);
        serviceListener = [objc_alloc(MEMORY[0x1E696B0D8]) initWithServiceName:v46];
      }
    }

    else if (v44)
    {
      serviceListener = v44;
    }

    else
    {
      serviceListener = [MEMORY[0x1E696B0D8] serviceListener];
    }

    v19->_listener = serviceListener;
    [(NSXPCListener *)serviceListener setDelegate:v19];
    v41 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:0];
    v42 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:0];
    v19->_connectionToCoordinatorMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v41 valuePointerFunctions:v42 capacity:10];

    v19->_cacheIDtoCoordinatorMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v19;
}

- (id)initForStoreWithURL:(id)l usingModelAtURL:(id)rL options:(id)options policy:(id)policy
{
  if (l && rL)
  {
    v11 = [[NSManagedObjectModel alloc] initWithContentsOfURL:rL];
    v12 = [(NSXPCStoreServer *)self initForStoreWithURL:l usingModel:v11 options:options policy:policy];
    if (v12)
    {
      v12[2] = rL;
    }
  }

  else
  {

    v13 = @"storeURL";
    if (!rL)
    {
      v13 = @"modelURL";
    }

    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13);
    [_NSXPCStoreUtilities logMessage:v14 forComponent:?];
    return 0;
  }

  return v12;
}

- (void)startListening
{
  v9 = *MEMORY[0x1E69E9840];
  if (+[NSXPCStoreServer debugDefault])
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@: Listening\n", buf, 0xCu);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: %@: Listening\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v6 = 1;
    }

    else
    {
      v6 = 8;
    }

    _NSCoreDataLog_console(v6, "%@: Listening", self);
    objc_autoreleasePoolPop(v3);
  }

  [(NSXPCListener *)self->_listener resume];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];

  self->_listener = 0;
  self->_policy = 0;

  self->_connectionToCoordinatorMap = 0;
  self->_cacheIDtoCoordinatorMap = 0;

  self->_modelURL = 0;
  self->_model = 0;

  self->_storeURL = 0;
  self->_storeOptions = 0;

  self->_entitlementNames = 0;
  self->_delegate = 0;
  v3.receiver = self;
  v3.super_class = NSXPCStoreServer;
  [(NSXPCStoreServer *)&v3 dealloc];
}

- (void)setErrorHandlingDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    delegateCopy = delegate;

    self->_delegate = delegate;
  }
}

- (void)errorIsPlausiblyAnSQLiteIssue:(uint64_t)issue
{
  result = 0;
  if (issue && a2)
  {
    result = [objc_msgSend(a2 "userInfo")];
    if (result)
    {
      goto LABEL_8;
    }

    v5 = [objc_msgSend(a2 "userInfo")];
    if (v5)
    {
      result = [v5 userInfo];
    }

    else
    {
      result = [objc_msgSend(a2 "userInfo")];
      if (!result)
      {
        return result;
      }
    }

    result = [result objectForKey:@"NSSQLiteErrorDomain"];
    if (result)
    {
LABEL_8:
      intValue = [result intValue];
      return (intValue == 11 || intValue == 26);
    }
  }

  return result;
}

- (uint64_t)setupRecoveryForConnectionContext:(uint64_t)context ifNecessary:
{
  if (result)
  {
    v3 = result;
    result = *(result + 8);
    if (result)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return 0;
      }

      result = [*(v3 + 8) willPerformRecoveryForError:context fromContext:a2];
      if (!result)
      {
        return result;
      }

      if (objc_opt_respondsToSelector())
      {
        [*(v3 + 8) performRecoveryForError:context fromContext:a2];
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)removeCachesForConnection:(void *)result
{
  if (result)
  {
    v3 = result;
    objc_sync_enter(result);
    v4 = objc_autoreleasePoolPush();
    v5 = NSMapGet(*(v3 + 9), a2);
    if (v5 && v5[6] && atomic_fetch_add_explicit(v5 + 5, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) <= 1)
    {
      [*(v3 + 10) removeObjectForKey:?];
    }

    NSMapRemove(*(v3 + 9), a2);
    [a2 setUserInfo:0];
    objc_autoreleasePoolPop(v4);

    return objc_sync_exit(v3);
  }

  return result;
}

void *__47__NSXPCStoreServer_retainedCacheForConnection___block_invoke(uint64_t a1)
{
  if (+[NSXPCStoreServer debugDefault])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Server Connection interrupted.\n", buf, 2u);
        }
      }

      else
      {
        v4 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_18565F000, v4, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Server Connection interrupted.\n", v7, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v5 = 1;
    }

    else
    {
      v5 = 8;
    }

    _NSCoreDataLog_console(v5, " Server Connection interrupted.");
    objc_autoreleasePoolPop(v2);
  }

  return [(NSXPCStoreServer *)*(a1 + 32) removeCachesForConnection:?];
}

void *__47__NSXPCStoreServer_retainedCacheForConnection___block_invoke_84(uint64_t a1)
{
  if (+[NSXPCStoreServer debugDefault])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Server Connection invalidated.\n", buf, 2u);
        }
      }

      else
      {
        v4 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_18565F000, v4, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Server Connection invalidated.\n", v7, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v5 = 1;
    }

    else
    {
      v5 = 8;
    }

    _NSCoreDataLog_console(v5, " Server Connection invalidated.");
    objc_autoreleasePoolPop(v2);
  }

  return [(NSXPCStoreServer *)*(a1 + 32) removeCachesForConnection:?];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (connection)
  {
    objc_msgSend_auditToken(connection);
  }

  if (+[NSXPCStoreServer debugDefault])
  {
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = connection;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ - Incoming connection: %@\n", buf, 0x16u);
        }
      }

      else
      {
        v9 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = connection;
          _os_log_impl(&dword_18565F000, v9, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: %@ - Incoming connection: %@\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    _NSCoreDataLog_console(v10, "%@ - Incoming connection: %@", self, connection);
    objc_autoreleasePoolPop(v7);
  }

  if (self)
  {
    v11 = objc_autoreleasePoolPush();
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = [self->_delegate identifierForConnection:connection];
      objc_sync_enter(self);
      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_cacheIDtoCoordinatorMap objectForKey:v12];
        if (v13)
        {
          if (!NSMapGet(self->_connectionToCoordinatorMap, connection))
          {
            NSMapInsert(self->_connectionToCoordinatorMap, connection, v13);
            atomic_fetch_add_explicit(&v13->_connections, 1uLL, memory_order_relaxed);
LABEL_32:
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __47__NSXPCStoreServer_retainedCacheForConnection___block_invoke;
            *&buf[24] = &unk_1E6EC1600;
            selfCopy = self;
            connectionCopy = connection;
            [connection setInterruptionHandler:buf];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __47__NSXPCStoreServer_retainedCacheForConnection___block_invoke_84;
            v35[3] = &unk_1E6EC1600;
            v35[4] = self;
            v35[5] = connection;
            [connection setInvalidationHandler:v35];
          }

LABEL_61:
          objc_sync_exit(self);
          v26 = v13;
          objc_autoreleasePoolPop(v11);
          goto LABEL_62;
        }

        v14 = 0;
LABEL_24:
        v13 = NSMapGet(self->_connectionToCoordinatorMap, connection);
        if (v13)
        {
          goto LABEL_61;
        }

        v15 = self->_model;
        v16 = objc_autoreleasePoolPush();
        if (v15)
        {
          v17 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v15];

          v35[0] = 0;
          if ([(NSPersistentStoreCoordinator *)v17 addPersistentStoreWithType:@"SQLite" configuration:0 URL:self->_storeURL options:self->_storeOptions error:v35])
          {
            objc_autoreleasePoolPop(v16);
            if (v17)
            {
              v13 = [[NSXPCStoreServerPerConnectionCache alloc] initWithCoordinator:v17];

              if ((v14 & 1) == 0)
              {
                [(NSMutableDictionary *)self->_cacheIDtoCoordinatorMap setObject:v13 forKey:v12];
                [(NSXPCStoreServerPerConnectionCache *)v13 setClientIdentifier:v12];
                if (v13)
                {
                  atomic_fetch_add_explicit(&v13->_connections, 1uLL, memory_order_relaxed);
                }
              }

              NSMapInsert(self->_connectionToCoordinatorMap, connection, v13);

              goto LABEL_32;
            }

LABEL_60:
            v13 = 0;
            goto LABEL_61;
          }

          if ([(NSXPCStoreServer *)self errorIsPlausiblyAnSQLiteIssue:?])
          {
            [(NSXPCStoreServer *)self setupRecoveryForConnectionContext:v35[0] ifNecessary:?];
            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
          }

          else
          {
            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35[0]);
          }

          [_NSXPCStoreUtilities logMessage:v19 forComponent:?];

          v20 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v21 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v35[0];
                _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to load store: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v24 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v35[0];
                _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to load store: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v25 = 1;
          }

          else
          {
            v25 = 8;
          }

          _NSCoreDataLog_console(v25, "Unable to load store: %@", v35[0]);
          objc_autoreleasePoolPop(v20);
        }

        else
        {
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v18 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = self;
                _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: %@: Unable to find model\n", buf, 0xCu);
              }
            }

            else
            {
              v22 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = self;
                _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: %@: Unable to find model\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v23 = 1;
          }

          else
          {
            v23 = 8;
          }

          _NSCoreDataLog_console(v23, "%@: Unable to find model", self);
        }

        objc_autoreleasePoolPop(v16);
        goto LABEL_60;
      }
    }

    else
    {
      objc_sync_enter(self);
      v12 = 0;
    }

    v14 = 1;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_62:
  if (![(NSXPCStoreServerPerConnectionCache *)v13 coordinator])
  {
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
    [_NSXPCStoreUtilities logMessage:v32 forComponent:?];

LABEL_67:
    v31 = 0;
    goto LABEL_68;
  }

  v27 = [NSXPCStoreConnectionInfo alloc];
  entitlementNames = self->_entitlementNames;
  memset(buf, 0, sizeof(buf));
  v29 = [(NSXPCStoreConnectionInfo *)v27 initForToken:buf entitlementNames:entitlementNames cache:v13];

  if (!v29)
  {
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
    [_NSXPCStoreUtilities logMessage:v33 forComponent:?];
    goto LABEL_67;
  }

  [connection setDelegate:self];
  [connection setExportedObject:self];
  [connection setExportedInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1EF440870)}];
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v30 setValue:v29 forKey:@"NSConnectionInfo"];

  [connection setUserInfo:v30];
  [connection resume];
  v31 = 1;
LABEL_68:
  objc_autoreleasePoolPop(v6);
  return v31;
}

- (void)handleRequest:(id)request reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = [objc_msgSend(currentConnection "userInfo")];
  v7 = [[NSXPCStoreServerConnectionContext alloc] initWithConnectionInfo:v6];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  if (+[NSXPCStoreServer debugDefault])
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Starting event handler\n", buf, 2u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Starting event handler\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 8;
    }

    _NSCoreDataLog_console(v11, "Starting event handler");
    objc_autoreleasePoolPop(v8);
  }

  if (+[NSXPCStoreServer debugDefault])
  {
    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v13 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          requestCopy2 = request;
          _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: XPCStore server handling request: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          requestCopy2 = request;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: XPCStore server handling request: %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = 1;
    }

    else
    {
      v15 = 8;
    }

    _NSCoreDataLog_console(v15, "XPCStore server handling request: %@", request);
    objc_autoreleasePoolPop(v12);
  }

  v16 = [(NSXPCStoreServerRequestHandlingPolicy *)self->_policy shouldAcceptConnectionsFromClientWithContext:v7];
  v17 = v39;
  *(v39 + 24) = v16;
  v33[5] = 0;
  if ((v17[3] & 1) == 0)
  {
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], currentConnection);
    v33[5] = v18;
    [_NSXPCStoreUtilities logMessage:v18 forComponent:?];
  }

  persistentStoreCoordinator = [(NSXPCStoreServerConnectionContext *)v7 persistentStoreCoordinator];
  managedObjectContext = [(NSXPCStoreServerConnectionContext *)v7 managedObjectContext];
  if (!managedObjectContext)
  {
    v21 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v21 setPersistentStoreCoordinator:persistentStoreCoordinator];
    [(NSManagedObjectContext *)v21 _setDelegate:self];
    if (v21)
    {
      *&v21->_flags |= 0x800000u;
    }

    v22 = [objc_msgSend(v6 "entitlements")];
    if (v22)
    {
      [(NSPersistentStoreCoordinator *)persistentStoreCoordinator _setXPCBundleIdentifier:v22];
    }

    if (request)
    {
      v23 = *(request + 7);
      if (v23)
      {
        [(NSPersistentStoreCoordinator *)persistentStoreCoordinator _setXPCProcessName:v23];
      }
    }

    [(NSManagedObjectContext *)v21 setMergePolicy:NSErrorMergePolicy];
    [(NSManagedObjectContext *)v21 setUndoManager:0];
    if (request && *(request + 5))
    {
      [(NSManagedObjectContext *)v21 setName:?];
    }

    [(NSXPCStoreServerConnectionContext *)v7 setManagedObjectContext:v21];
    managedObjectContext = v21;
  }

  if (request)
  {
    v24 = *(request + 5);
    if (v24 && ([v24 isEqual:{-[NSManagedObjectContext name](managedObjectContext, "name")}] & 1) == 0)
    {
      [(NSManagedObjectContext *)managedObjectContext setName:*(request + 5)];
    }

    v25 = *(request + 6);
    if (v25 && ([v25 isEqual:{-[NSManagedObjectContext transactionAuthor](managedObjectContext, "transactionAuthor")}] & 1) == 0)
    {
      [(NSManagedObjectContext *)managedObjectContext setTransactionAuthor:*(request + 6)];
    }

    if (*(request + 16) == 1)
    {
      [(NSManagedObjectContext *)managedObjectContext _setAllowAncillaryEntities:1];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NSXPCStoreServer_handleRequest_reply___block_invoke;
  block[3] = &unk_1E6EC15D8;
  block[4] = 0;
  block[5] = request;
  block[6] = managedObjectContext;
  block[7] = v7;
  block[12] = &v38;
  block[13] = &v32;
  block[8] = self;
  block[9] = currentConnection;
  block[10] = persistentStoreCoordinator;
  block[11] = reply;
  v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v27 = v26;
  if (managedObjectContext)
  {
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v26];
  }

  else
  {
    (*(v26 + 2))(v26);
  }

  _Block_release(v27);
  [v28 drain];
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
}

void __40__NSXPCStoreServer_handleRequest_reply___block_invoke(uint64_t a1)
{
  v657 = *MEMORY[0x1E69E9840];
  v593 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  self = objc_alloc_init(NSCoreDataXPCMessage);
  v607 = a1;
  v608 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_exception_throw(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_msgSend(objc_msgSend(*(v607 + 48) "persistentStoreCoordinator")];
  [(NSXPCStoreServerConnectionContext *)*(v607 + 56) setActiveStore:v5];
  if (v4 && ([v4 isEqual:{objc_msgSend(v5, "identifier")}] & 1) == 0)
  {
    *(*(*(v607 + 96) + 8) + 24) = 0;
    *(*(*(v607 + 104) + 8) + 40) = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
    [_NSXPCStoreUtilities logMessage:*(*(*(v607 + 104) + 8) + 40) forComponent:?];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (*(*(*(v607 + 96) + 8) + 24) != 1)
  {
    v12 = 0;
    goto LABEL_1047;
  }

  v7 = *(v607 + 40);
  v592 = v6;
  if (!v7)
  {
LABEL_1141:
    if (+[NSXPCStoreServer debugDefault])
    {
      v569 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(8))
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v571 = *(v607 + 40);
            if (v571)
            {
              LODWORD(v571) = *(v571 + 8);
            }

            v572 = *(v607 + 72);
            *buf = 67109376;
            *&buf[4] = v571;
            *&buf[8] = 2048;
            *&buf[10] = v572;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Illegal input: %u from connection %p\n", buf, 0x12u);
          }
        }

        else
        {
          v573 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v573, OS_LOG_TYPE_DEFAULT))
          {
            v574 = *(v607 + 40);
            if (v574)
            {
              LODWORD(v574) = *(v574 + 8);
            }

            v575 = *(v607 + 72);
            *buf = 67109376;
            *&buf[4] = v574;
            *&buf[8] = 2048;
            *&buf[10] = v575;
            _os_log_impl(&dword_18565F000, v573, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Illegal input: %u from connection %p\n", buf, 0x12u);
          }
        }
      }

      v576 = *(v607 + 40);
      if (_pflogging_catastrophic_mode)
      {
        v577 = 1;
      }

      else
      {
        v577 = 8;
      }

      if (v576)
      {
        LODWORD(v576) = *(v576 + 8);
      }

      _NSCoreDataLog_console(v577, "Illegal input: %u from connection %p", v576, *(v607 + 72));
      objc_autoreleasePoolPop(v569);
    }

    v12 = 0;
    v608 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:0];
    goto LABEL_1033;
  }

  v8 = v649;
  switch(*(v7 + 8))
  {
    case 1:
      p_superclass = v646;
      if (+[NSXPCStoreServer debugDefault])
      {
        v10 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v11 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: Metadata\n", buf, 2u);
            }
          }

          else
          {
            v125 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v125, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Metadata\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v126 = 1;
        }

        else
        {
          v126 = 8;
        }

        _NSCoreDataLog_console(v126, "Metadata");
        objc_autoreleasePoolPop(v10);
      }

      if (!*(v607 + 64))
      {
        goto LABEL_1134;
      }

      v127 = *(v607 + 56);
      v128 = objc_autoreleasePoolPush();
      v129 = [objc_msgSend(v127 "managedObjectContext")];
      v130 = [objc_msgSend(v129 "persistentStores")];
      if (!v130)
      {
        v131 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v132 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v132, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v372 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v372, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v372, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v373 = 1;
        }

        else
        {
          v373 = 8;
        }

        _NSCoreDataLog_console(v373, "no store");
        objc_autoreleasePoolPop(v131);
      }

      v374 = [v130 metadata];
      if (+[NSXPCStoreServer debugDefault])
      {
        v375 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v376 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v374;
              _os_log_error_impl(&dword_18565F000, v376, OS_LOG_TYPE_ERROR, "CoreData: error: Got metadata %@\n", buf, 0xCu);
            }
          }

          else
          {
            v377 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v377, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v374;
              _os_log_impl(&dword_18565F000, v377, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got metadata %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v378 = 1;
        }

        else
        {
          v378 = 8;
        }

        _NSCoreDataLog_console(v378, "Got metadata %@", v374);
        objc_autoreleasePoolPop(v375);
      }

      p_super = [v129 managedObjectModel];
      v654 = 0u;
      v655 = 0u;
      v652 = 0u;
      v653 = 0u;
      v379 = [p_super countByEnumeratingWithState:&v652 objects:buf count:16];
      if (!v379)
      {
        goto LABEL_691;
      }

      v8 = *v653;
LABEL_682:
      v380 = 0;
      while (1)
      {
        if (*v653 != v8)
        {
          objc_enumerationMutation(p_super);
        }

        if (([(NSEntityDescription *)*(*(&v652 + 1) + 8 * v380) _hasAttributesWithFileBackedFutures]& 1) != 0)
        {
          break;
        }

        if (v379 == ++v380)
        {
          v379 = [p_super countByEnumeratingWithState:&v652 objects:buf count:16];
          if (v379)
          {
            goto LABEL_682;
          }

          goto LABEL_691;
        }
      }

      v381 = [v130 fileBackedFuturesDirectory];
      if (v381)
      {
        *&v648[0] = @"NSMetadataKey";
        *(&v648[0] + 1) = @"NSFileBackedFuturePathKey";
        *v649 = v374;
        *&v649[8] = v381;
        v374 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v649 forKeys:v648 count:2];
LABEL_691:
        v382 = [MEMORY[0x1E696AE40] dataWithPropertyList:v374 format:200 options:0 error:0];
        if (+[NSXPCStoreServer debugDefault])
        {
          v383 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v384 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v384, OS_LOG_TYPE_ERROR))
              {
                *v646 = 138412290;
                v647 = v382;
                _os_log_error_impl(&dword_18565F000, v384, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", v646, 0xCu);
              }
            }

            else
            {
              v385 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
              {
                *v646 = 138412290;
                v647 = v382;
                _os_log_impl(&dword_18565F000, v385, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", v646, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v386 = 1;
          }

          else
          {
            v386 = 8;
          }

          _NSCoreDataLog_console(v386, "Which archives to %@", v382);
          objc_autoreleasePoolPop(v383);
        }

        v387 = v382;
        objc_autoreleasePoolPop(v128);
        v313 = v382;
        goto LABEL_1032;
      }

      v235 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(8))
      {
        if (_pflogging_catastrophic_mode)
        {
          p_super = _PFLogGetLogStream(1);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            *v649 = 0;
            _os_log_error_impl(&dword_18565F000, p_super, OS_LOG_TYPE_ERROR, "CoreData: error: what on earth happened?\n", v649, 2u);
          }
        }

        else
        {
          p_super = _PFLogGetLogStream(8);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            *v649 = 0;
            _os_log_impl(&dword_18565F000, p_super, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: what on earth happened?\n", v649, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v516 = 1;
      }

      else
      {
        v516 = 8;
      }

      _NSCoreDataLog_console(v516, "what on earth happened?");
      objc_autoreleasePoolPop(v235);
LABEL_1009:
      __break(1u);
LABEL_1010:
      v532 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v532, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = p_super;
        _os_log_impl(&dword_18565F000, v532, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Reopened generation %@\n", buf, 0xCu);
      }

      goto LABEL_1012;
    case 2:
      if (+[NSXPCStoreServer debugDefault])
      {
        v25 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v26 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch\n", buf, 2u);
            }
          }

          else
          {
            v133 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v133, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v134 = 1;
        }

        else
        {
          v134 = 8;
        }

        _NSCoreDataLog_console(v134, "Fetch");
        objc_autoreleasePoolPop(v25);
      }

      v135 = *(v607 + 40);
      if (v135)
      {
        v136 = *(v135 + 24);
      }

      else
      {
        v136 = 0;
      }

      v137 = *(v607 + 64);
      if (!v137)
      {
        goto LABEL_1134;
      }

      v138 = *(v607 + 56);
      *v649 = 0;
      contextb = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v139 = MEMORY[0x1E695DFD8];
      v140 = objc_opt_class();
      v141 = objc_opt_class();
      v142 = objc_opt_class();
      v143 = objc_opt_class();
      v144 = [v139 setWithObjects:{v140, v141, v142, v143, objc_opt_class(), 0}];
      v145 = [_NSXPCStoreUtilities decodeSecureArchivedData:v136 usingDelegate:v138 classes:v144];
      if ([v145 count] >= 2 && (v146 = objc_msgSend(v145, "objectAtIndex:", 1)) != 0)
      {
        v147 = [NSXPCStoreServer unpackQueryGeneration:v146 withContext:v138];
        v148 = 1;
      }

      else
      {
        v148 = 0;
        v147 = 0;
      }

      v149 = +[NSFetchRequest decodeFromXPCArchive:withContext:andPolicy:](NSFetchRequest, "decodeFromXPCArchive:withContext:andPolicy:", [v145 firstObject], v138, *(v137 + 64));
      if (+[NSXPCStoreServer debugDefault])
      {
        v150 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v151 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v149;
              _os_log_error_impl(&dword_18565F000, v151, OS_LOG_TYPE_ERROR, "CoreData: error: Got a fetch request %@\n", buf, 0xCu);
            }
          }

          else
          {
            v293 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v149;
              _os_log_impl(&dword_18565F000, v293, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got a fetch request %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v294 = 1;
        }

        else
        {
          v294 = 8;
        }

        _NSCoreDataLog_console(v294, "Got a fetch request %@", v149);
        objc_autoreleasePoolPop(v150);
      }

      if (v147)
      {
        v295 = 0;
      }

      else
      {
        v295 = v148;
      }

      if (v295 == 1 && +[NSXPCStoreServer debugDefault])
      {
        v296 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v297 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v297, OS_LOG_TYPE_ERROR, "CoreData: error: Can't fulfill fetch request: can't find query generation: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v427 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v427, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Can't fulfill fetch request: can't find query generation: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v428 = 1;
        }

        else
        {
          v428 = 8;
        }

        _NSCoreDataLog_console(v428, "Can't fulfill fetch request: can't find query generation: %@", 0);
        objc_autoreleasePoolPop(v296);
        v429 = MEMORY[0x1E696ABC0];
        *buf = @"unrecognized query generation";
        *&v652 = @"reason";
        *(&v652 + 1) = @"generation";
        *&buf[8] = [MEMORY[0x1E695DFB0] null];
        v430 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v652 count:2];
        v431 = 0;
        v432 = 0;
        *v649 = [v429 errorWithDomain:*MEMORY[0x1E696A250] code:134061 userInfo:v430];
LABEL_1130:
        v566 = *v649;
        [contextb drain];
        v567 = 0;
        v568 = *v649;
        if (*v649)
        {
          v608 = *v649;
        }

        if (v431)
        {
          v313 = v432;
          goto LABEL_1032;
        }

        goto LABEL_1134;
      }

      v298 = [*(v137 + 64) processRequest:v149 fromClientWithContext:v138 error:v649];
      if (+[NSXPCStoreServer debugDefault])
      {
        v299 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v300 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
            {
              if (v298)
              {
                v301 = [v298 count];
              }

              else
              {
                v301 = 0;
              }

              *buf = 67109376;
              *&buf[4] = v298 != 0;
              *&buf[8] = 1024;
              *&buf[10] = v301;
              _os_log_error_impl(&dword_18565F000, v300, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %d (%d)\n", buf, 0xEu);
            }
          }

          else
          {
            v315 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
            {
              if (v298)
              {
                v316 = [v298 count];
              }

              else
              {
                v316 = 0;
              }

              *buf = 67109376;
              *&buf[4] = v298 != 0;
              *&buf[8] = 1024;
              *&buf[10] = v316;
              _os_log_impl(&dword_18565F000, v315, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %d (%d)\n", buf, 0xEu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          if (v298)
          {
            v546 = [v298 count];
          }

          else
          {
            v546 = 0;
          }

          v547 = 1;
        }

        else
        {
          if (v298)
          {
            v546 = [v298 count];
          }

          else
          {
            v546 = 0;
          }

          v547 = 8;
        }

        _NSCoreDataLog_console(v547, "Which had result %d (%d)", v298 != 0, v546);
        objc_autoreleasePoolPop(v299);
      }

      if (v298)
      {
        v548 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v298];
        v432 = v548;
        if (+[NSXPCStoreServer debugDefault])
        {
          v549 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v550 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v550, OS_LOG_TYPE_ERROR))
              {
                if (v548)
                {
                  v551 = [v548 length];
                }

                else
                {
                  v551 = 0;
                }

                *buf = 67109376;
                *&buf[4] = v548 != 0;
                *&buf[8] = 1024;
                *&buf[10] = v551;
                _os_log_error_impl(&dword_18565F000, v550, OS_LOG_TYPE_ERROR, "CoreData: error: Which archived %d (%d)\n", buf, 0xEu);
              }
            }

            else
            {
              v555 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v555, OS_LOG_TYPE_DEFAULT))
              {
                if (v548)
                {
                  v556 = [v548 length];
                }

                else
                {
                  v556 = 0;
                }

                *buf = 67109376;
                *&buf[4] = v548 != 0;
                *&buf[8] = 1024;
                *&buf[10] = v556;
                _os_log_impl(&dword_18565F000, v555, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archived %d (%d)\n", buf, 0xEu);
              }
            }
          }

          v563 = v548 != 0;
          if (_pflogging_catastrophic_mode)
          {
            if (v432)
            {
              v564 = [v432 length];
            }

            else
            {
              v564 = 0;
            }

            v565 = 1;
          }

          else
          {
            if (v432)
            {
              v564 = [v432 length];
            }

            else
            {
              v564 = 0;
            }

            v565 = 8;
          }

          _NSCoreDataLog_console(v565, "Which archived %d (%d)", v563, v564);
          objc_autoreleasePoolPop(v549);
        }

        goto LABEL_1129;
      }

      if (*v649)
      {
        if (+[NSXPCStoreServer debugDefault])
        {
          v552 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v553 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v553, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = *v649;
                _os_log_error_impl(&dword_18565F000, v553, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch failed returning error %@\n", buf, 0xCu);
              }
            }

            else
            {
              v557 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v557, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = *v649;
                _os_log_impl(&dword_18565F000, v557, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch failed returning error %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v558 = 1;
          }

          else
          {
            v558 = 8;
          }

          _NSCoreDataLog_console(v558, "Fetch failed returning error %@", *v649);
LABEL_1110:
          v432 = 0;
          objc_autoreleasePoolPop(v552);
          v431 = 1;
          goto LABEL_1130;
        }
      }

      else if (+[NSXPCStoreServer debugDefault])
      {
        v552 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v554 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v554, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v554, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch failed with no error.\n", buf, 2u);
            }
          }

          else
          {
            v559 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v559, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v559, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch failed with no error.\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v560 = 1;
        }

        else
        {
          v560 = 8;
        }

        _NSCoreDataLog_console(v560, "Fetch failed with no error.");
        goto LABEL_1110;
      }

      v432 = 0;
LABEL_1129:
      v431 = 1;
      goto LABEL_1130;
    case 3:
      if (+[NSXPCStoreServer debugDefault])
      {
        v19 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v20 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: error: Save\n", buf, 2u);
            }
          }

          else
          {
            v80 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v80, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Save\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v81 = 1;
        }

        else
        {
          v81 = 8;
        }

        _NSCoreDataLog_console(v81, "Save");
        objc_autoreleasePoolPop(v19);
      }

      v82 = *(v607 + 40);
      if (v82)
      {
        v83 = *(v82 + 24);
      }

      else
      {
        v83 = 0;
      }

      v590 = *(v607 + 64);
      if (!v590)
      {
        goto LABEL_1134;
      }

      v591 = *(v607 + 56);
      v589 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v637 = 0;
      v84 = [+[_NSXPCStoreUtilities classesForSaveArchive](_NSXPCStoreUtilities) setByAddingObjectsFromSet:{objc_msgSend(*(v590 + 64), "allowableClassesForClientWithContext:", v591)}];
      v85 = [_NSXPCStoreUtilities decodeSecureArchivedData:v83 usingDelegate:v591 classes:v84];
      v86 = v85;
      if (!v85)
      {
        v91 = MEMORY[0x1E696ABC0];
        *&v652 = *MEMORY[0x1E696A588];
        *buf = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v84);
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v652 count:1];
        v93 = [v91 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v92];
LABEL_834:
        v12 = 0;
        v637 = v93;
        goto LABEL_992;
      }

      v87 = objc_msgSend_valueForKey_(v85);
      v88 = [v591 managedObjectContext];
      if (+[NSXPCStoreServer debugDefault])
      {
        v89 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v90 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v86;
              _os_log_error_impl(&dword_18565F000, v90, OS_LOG_TYPE_ERROR, "CoreData: error: Got save request: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v339 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v86;
              _os_log_impl(&dword_18565F000, v339, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got save request: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v340 = 1;
        }

        else
        {
          v340 = 8;
        }

        _NSCoreDataLog_console(v340, "Got save request: %@", v86);
        objc_autoreleasePoolPop(v89);
      }

      if (!v87)
      {
        goto LABEL_806;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v341 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v342 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v342, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v342, OS_LOG_TYPE_ERROR, "CoreData: error: Updating metadata\n", buf, 2u);
            }
          }

          else
          {
            v433 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v433, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v433, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Updating metadata\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v434 = 1;
        }

        else
        {
          v434 = 8;
        }

        _NSCoreDataLog_console(v434, "Updating metadata");
        objc_autoreleasePoolPop(v341);
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(v590 + 64) shouldAcceptMetadataChangesFromClientWithContext:v591] & 1) == 0)
      {
        v93 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
        goto LABEL_834;
      }

      v435 = [v87 mutableCopy];
      [v435 removeObjectForKey:@"NSStoreUUID"];
      [v435 removeObjectForKey:@"NSStoreType"];
      [v435 removeObjectForKey:@"NSStoreModelVersionHashes"];
      [v435 removeObjectForKey:@"NSStoreModelVersionIdentifiers"];
      [v435 removeObjectForKey:0x1EF3FD3E8];
      [v435 removeObjectForKey:0x1EF3FD408];
      if (v591)
      {
        v436 = v591[4];
      }

      else
      {
        v436 = 0;
      }

      [v436 setMetadata:v435];

LABEL_806:
      v437 = objc_msgSend_valueForKey_(v86);
      v594 = objc_msgSend_valueForKey_(v86);
      contextd = objc_msgSend_valueForKey_(v86);
      v438 = objc_msgSend_valueForKey_(v86);
      v439 = [MEMORY[0x1E695DF70] array];
      v635 = 0u;
      v636 = 0u;
      v633 = 0u;
      v634 = 0u;
      v440 = [v437 countByEnumeratingWithState:&v633 objects:buf count:16];
      if (v440)
      {
        v441 = *v634;
        do
        {
          for (i = 0; i != v440; ++i)
          {
            if (*v634 != v441)
            {
              objc_enumerationMutation(v437);
            }

            [v439 addObject:{objc_msgSend(*(*(&v633 + 1) + 8 * i), "objectAtIndex:", 0)}];
          }

          v440 = [v437 countByEnumeratingWithState:&v633 objects:buf count:16];
        }

        while (v440);
      }

      v631 = 0u;
      v632 = 0u;
      v629 = 0u;
      v630 = 0u;
      v443 = [contextd countByEnumeratingWithState:&v629 objects:&v652 count:16];
      if (v443)
      {
        v444 = *v630;
        do
        {
          for (j = 0; j != v443; ++j)
          {
            if (*v630 != v444)
            {
              objc_enumerationMutation(contextd);
            }

            [v439 addObject:{objc_msgSend(*(*(&v629 + 1) + 8 * j), "objectAtIndex:", 0)}];
          }

          v443 = [contextd countByEnumeratingWithState:&v629 objects:&v652 count:16];
        }

        while (v443);
      }

      v627 = 0u;
      v628 = 0u;
      v625 = 0u;
      v626 = 0u;
      v446 = [v438 countByEnumeratingWithState:&v625 objects:v649 count:16];
      obj = v437;
      if (v446)
      {
        v447 = *v626;
        do
        {
          for (k = 0; k != v446; ++k)
          {
            if (*v626 != v447)
            {
              objc_enumerationMutation(v438);
            }

            [v439 addObject:{objc_msgSend(*(*(&v625 + 1) + 8 * k), "objectAtIndex:", 0)}];
          }

          v446 = [v438 countByEnumeratingWithState:&v625 objects:v649 count:16];
        }

        while (v446);
      }

      [_PFRoutines fetchHeterogeneousCollectionByObjectIDs:v439 intoContext:v88];
      objc_opt_self();
      if (+[NSXPCStoreServer debugDefault])
      {
        v449 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v450 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v450, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v648[0]) = 138412290;
              *(v648 + 4) = v438;
              _os_log_error_impl(&dword_18565F000, v450, OS_LOG_TYPE_ERROR, "CoreData: error: Locking objects :%@\n", v648, 0xCu);
            }
          }

          else
          {
            v451 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v451, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v648[0]) = 138412290;
              *(v648 + 4) = v438;
              _os_log_impl(&dword_18565F000, v451, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Locking objects :%@\n", v648, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v452 = 1;
        }

        else
        {
          v452 = 8;
        }

        _NSCoreDataLog_console(v452, "Locking objects :%@", v438);
        objc_autoreleasePoolPop(v449);
      }

      v623 = 0u;
      v624 = 0u;
      v621 = 0u;
      v622 = 0u;
      v453 = [v438 countByEnumeratingWithState:&v621 objects:v648 count:16];
      if (v453)
      {
        v454 = *v622;
        do
        {
          v455 = 0;
          do
          {
            if (*v622 != v454)
            {
              objc_enumerationMutation(v438);
            }

            v456 = *(*(&v621 + 1) + 8 * v455);
            v457 = objc_autoreleasePoolPush();
            v458 = [v456 objectAtIndex:0];
            if (v88)
            {
              v459 = _PFRetainedObjectIDCore(v88, v458, 0, 1);
            }

            else
            {
              v459 = 0;
            }

            [v459 willAccessValueForKey:0];
            if ([v459 isDeleted])
            {
              if (+[NSXPCStoreServer debugDefault])
              {
                v460 = objc_autoreleasePoolPush();
                _pflogInitialize(8);
                if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v461 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v461, OS_LOG_TYPE_ERROR))
                    {
                      *v646 = 138412290;
                      v647 = v459;
                      _os_log_error_impl(&dword_18565F000, v461, OS_LOG_TYPE_ERROR, "CoreData: error: Not locking %@ because it's not in the db\n", v646, 0xCu);
                    }
                  }

                  else
                  {
                    v464 = _PFLogGetLogStream(8);
                    if (os_log_type_enabled(v464, OS_LOG_TYPE_DEFAULT))
                    {
                      *v646 = 138412290;
                      v647 = v459;
                      _os_log_impl(&dword_18565F000, v464, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Not locking %@ because it's not in the db\n", v646, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v465 = 1;
                }

                else
                {
                  v465 = 8;
                }

                _NSCoreDataLog_console(v465, "Not locking %@ because it's not in the db", v459);
                objc_autoreleasePoolPop(v460);
              }
            }

            else
            {
              if (+[NSXPCStoreServer debugDefault])
              {
                v462 = objc_autoreleasePoolPush();
                _pflogInitialize(8);
                if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v463 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v463, OS_LOG_TYPE_ERROR))
                    {
                      *v646 = 138412290;
                      v647 = v459;
                      _os_log_error_impl(&dword_18565F000, v463, OS_LOG_TYPE_ERROR, "CoreData: error: Locking %@\n", v646, 0xCu);
                    }
                  }

                  else
                  {
                    v466 = _PFLogGetLogStream(8);
                    if (os_log_type_enabled(v466, OS_LOG_TYPE_DEFAULT))
                    {
                      *v646 = 138412290;
                      v647 = v459;
                      _os_log_impl(&dword_18565F000, v466, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Locking %@\n", v646, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v467 = 1;
                }

                else
                {
                  v467 = 8;
                }

                _NSCoreDataLog_console(v467, "Locking %@", v459);
                objc_autoreleasePoolPop(v462);
              }

              [v459 _setVersionReference__:{objc_msgSend(objc_msgSend(v456, "objectAtIndex:", 1), "unsignedIntegerValue")}];
              [v88 detectConflictsForObject:v459];
            }

            objc_autoreleasePoolPop(v457);
            ++v455;
          }

          while (v453 != v455);
          v468 = [v438 countByEnumeratingWithState:&v621 objects:v648 count:16];
          v453 = v468;
        }

        while (v468);
      }

      v619 = 0u;
      v620 = 0u;
      v617 = 0u;
      v618 = 0u;
      v469 = [obj countByEnumeratingWithState:&v617 objects:v646 count:16];
      if (!v469)
      {
        goto LABEL_916;
      }

      v470 = 0;
      v471 = 0;
      v472 = *v618;
      v599 = *MEMORY[0x1E696A250];
      do
      {
        v473 = 0;
        do
        {
          if (*v618 != v472)
          {
            objc_enumerationMutation(obj);
          }

          v474 = *(*(&v617 + 1) + 8 * v473);
          v475 = objc_autoreleasePoolPush();
          v476 = [v474 objectAtIndex:0];
          v477 = [v476 entity];
          if (v471 != v477)
          {
            v470 = [*(v590 + 64) restrictingWritePredicateForEntity:v477 fromClientWithContext:v591];
            v471 = v477;
          }

          if (!v470)
          {
            v481 = [MEMORY[0x1E696ABC0] errorWithDomain:v599 code:134092 userInfo:0];
LABEL_901:
            v482 = 0;
            v637 = v481;
            goto LABEL_911;
          }

          if ([MEMORY[0x1E696AE18] predicateWithValue:0] == v470)
          {
            v481 = [MEMORY[0x1E696ABC0] errorWithDomain:v599 code:134030 userInfo:0];
            goto LABEL_901;
          }

          if (v88)
          {
            v478 = _PFRetainedObjectIDCore(v88, v476, 0, 1);
          }

          else
          {
            v478 = 0;
          }

          [v478 willAccessValueForKey:0];
          if (([v478 isDeleted] & 1) == 0)
          {
            [v478 _setVersionReference__:{objc_msgSend(objc_msgSend(v474, "objectAtIndex:", 1), "unsignedIntegerValue")}];
            [NSXPCStoreServer _populateObject:v478 withValuesFromClient:v474];
            if ([MEMORY[0x1E696AE18] predicateWithValue:1] != v470 && (objc_msgSend(v470, "evaluateWithObject:", v478) & 1) == 0)
            {
              v637 = [MEMORY[0x1E696ABC0] errorWithDomain:v599 code:134030 userInfo:0];

              v482 = 0;
              goto LABEL_911;
            }

            if (+[NSXPCStoreServer debugDefault])
            {
              v479 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v480 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v480, OS_LOG_TYPE_ERROR))
                  {
                    *v644 = 138412290;
                    v645 = v478;
                    _os_log_error_impl(&dword_18565F000, v480, OS_LOG_TYPE_ERROR, "CoreData: error: Deleting object :%@\n", v644, 0xCu);
                  }
                }

                else
                {
                  v483 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v483, OS_LOG_TYPE_DEFAULT))
                  {
                    *v644 = 138412290;
                    v645 = v478;
                    _os_log_impl(&dword_18565F000, v483, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Deleting object :%@\n", v644, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v484 = 1;
              }

              else
              {
                v484 = 8;
              }

              _NSCoreDataLog_console(v484, "Deleting object :%@", v478);
              objc_autoreleasePoolPop(v479);
            }

            [v88 deleteObject:v478];
          }

          v482 = 1;
LABEL_911:
          objc_autoreleasePoolPop(v475);
          if (!v482)
          {
            v12 = 0;
            goto LABEL_992;
          }

          ++v473;
        }

        while (v469 != v473);
        v485 = [obj countByEnumeratingWithState:&v617 objects:v646 count:16];
        v469 = v485;
      }

      while (v485);
LABEL_916:
      v600 = [MEMORY[0x1E695DF70] array];
      obja = [MEMORY[0x1E695DF70] array];
      v486 = [MEMORY[0x1E695DF70] array];
      v615 = 0u;
      v616 = 0u;
      v613 = 0u;
      v614 = 0u;
      v487 = [v594 countByEnumeratingWithState:&v613 objects:v644 count:16];
      if (v487)
      {
        v488 = *v614;
        do
        {
          for (m = 0; m != v487; ++m)
          {
            if (*v614 != v488)
            {
              objc_enumerationMutation(v594);
            }

            v490 = *(*(&v613 + 1) + 8 * m);
            v491 = objc_autoreleasePoolPush();
            v492 = [v490 objectAtIndex:0];
            [v486 addObject:v492];
            v493 = -[NSManagedObject initWithEntity:insertIntoManagedObjectContext:]([NSManagedObject alloc], "initWithEntity:insertIntoManagedObjectContext:", [v492 entity], v88);
            [obja addObject:v493];
            if (+[NSXPCStoreServer debugDefault])
            {
              v494 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v495 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v495, OS_LOG_TYPE_ERROR))
                  {
                    *v642 = 138412290;
                    v643 = v492;
                    _os_log_error_impl(&dword_18565F000, v495, OS_LOG_TYPE_ERROR, "CoreData: error: Inserting object with ID %@\n", v642, 0xCu);
                  }
                }

                else
                {
                  v496 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v496, OS_LOG_TYPE_DEFAULT))
                  {
                    *v642 = 138412290;
                    v643 = v492;
                    _os_log_impl(&dword_18565F000, v496, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Inserting object with ID %@\n", v642, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v497 = 1;
              }

              else
              {
                v497 = 8;
              }

              _NSCoreDataLog_console(v497, "Inserting object with ID %@", v492);
              objc_autoreleasePoolPop(v494);
            }

            [v600 addObject:v493];

            objc_autoreleasePoolPop(v491);
          }

          v487 = [v594 countByEnumeratingWithState:&v613 objects:v644 count:16];
        }

        while (v487);
      }

      v498 = [v600 count];
      if (v498)
      {
        for (n = 0; n != v498; ++n)
        {
          v500 = objc_autoreleasePoolPush();
          v501 = [v594 objectAtIndex:n];
          v502 = [v600 objectAtIndex:n];
          [v502 _setVersionReference__:{objc_msgSend(objc_msgSend(v501, "objectAtIndex:", 1), "unsignedIntegerValue")}];
          [NSXPCStoreServer _populateObject:v502 withValuesFromClient:v501];
          objc_autoreleasePoolPop(v500);
        }
      }

      v611 = 0u;
      v612 = 0u;
      v609 = 0u;
      v610 = 0u;
      v503 = [contextd countByEnumeratingWithState:&v609 objects:v642 count:16];
      if (v503)
      {
        v504 = *v610;
        do
        {
          v505 = 0;
          do
          {
            if (*v610 != v504)
            {
              objc_enumerationMutation(contextd);
            }

            v506 = *(*(&v609 + 1) + 8 * v505);
            v507 = objc_autoreleasePoolPush();
            v508 = [v506 objectAtIndex:0];
            if (v88)
            {
              v509 = _PFRetainedObjectIDCore(v88, v508, 0, 1);
            }

            else
            {
              v509 = 0;
            }

            [v509 willAccessValueForKey:0];
            [v509 _setVersionReference__:{objc_msgSend(objc_msgSend(v506, "objectAtIndex:", 1), "unsignedIntegerValue")}];
            [NSXPCStoreServer _populateObject:v509 withValuesFromClient:v506];

            objc_autoreleasePoolPop(v507);
            ++v505;
          }

          while (v503 != v505);
          v510 = [contextd countByEnumeratingWithState:&v609 objects:v642 count:16];
          v503 = v510;
        }

        while (v510);
      }

      [v88 processPendingChanges];
      v511 = [(NSManagedObjectContext *)v88 _newSaveRequestForCurrentState];
      if (+[NSXPCStoreServer debugDefault])
      {
        v512 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v513 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v513, OS_LOG_TYPE_ERROR))
            {
              *v638 = 138412290;
              v639 = v511;
              _os_log_error_impl(&dword_18565F000, v513, OS_LOG_TYPE_ERROR, "CoreData: error: Made save request: %@\n", v638, 0xCu);
            }
          }

          else
          {
            v522 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v522, OS_LOG_TYPE_DEFAULT))
            {
              *v638 = 138412290;
              v639 = v511;
              _os_log_impl(&dword_18565F000, v522, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Made save request: %@\n", v638, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v523 = 1;
        }

        else
        {
          v523 = 8;
        }

        _NSCoreDataLog_console(v523, "Made save request: %@", v511);
        objc_autoreleasePoolPop(v512);
      }

      v12 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [*(v590 + 64) processRequest:v511 fromClientWithContext:v591 error:&v637]);
LABEL_992:
      v524 = v637;
      [v589 drain];
      v525 = v12;
      v526 = 0;
      if (v637)
      {
        v608 = v637;
      }

      v527 = v637;
LABEL_1033:
      if (+[NSXPCStoreServer debugDefault])
      {
        v537 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v538 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v538, OS_LOG_TYPE_ERROR))
            {
              *v638 = 0;
              _os_log_error_impl(&dword_18565F000, v538, OS_LOG_TYPE_ERROR, "CoreData: error: Done event handler\n", v638, 2u);
            }
          }

          else
          {
            v539 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v539, OS_LOG_TYPE_DEFAULT))
            {
              *v638 = 0;
              _os_log_impl(&dword_18565F000, v539, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Done event handler\n", v638, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v540 = 1;
        }

        else
        {
          v540 = 8;
        }

        _NSCoreDataLog_console(v540, "Done event handler");
        objc_autoreleasePoolPop(v537);
      }

      if (*(*(*(v607 + 96) + 8) + 24))
      {
        v542 = v608;
        if (v608)
        {
          if ([(NSXPCStoreServer *)*(v607 + 64) errorIsPlausiblyAnSQLiteIssue:v608])
          {
            [(NSXPCStoreServer *)*(v607 + 64) setupRecoveryForConnectionContext:v608 ifNecessary:?];
            *(*(*(v607 + 104) + 8) + 40) = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v608);
            [_NSXPCStoreUtilities logMessage:*(*(*(v607 + 104) + 8) + 40) forComponent:?];
          }

LABEL_1049:
          v543 = 2;
        }

        else if (v12)
        {
          v543 = 0;
        }

        else
        {
          v544 = MEMORY[0x1E696ABC0];
          v545 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"request failed (no result forKey:{no error)", @"Problem"}];
          v12 = 0;
          v608 = [v544 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v545];
          v543 = 8;
        }
      }

      else
      {
        v6 = v592;
LABEL_1047:
        v541 = *MEMORY[0x1E696A250];
        if (v6)
        {
          v608 = [MEMORY[0x1E696ABC0] errorWithDomain:v541 code:134095 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"request failed, store identifier mismatch", @"Problem"}];
          goto LABEL_1049;
        }

        v608 = [MEMORY[0x1E696ABC0] errorWithDomain:v541 code:134070 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"request failed, insufficient permission", @"Problem"}];
        v543 = 1;
      }

      if (self)
      {
        self->_messageCode = v543;
        objc_setProperty_nonatomic(self, v542, v12, 24);
      }

      if (v608)
      {
        v608 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v608];
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v579 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v580 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v580, OS_LOG_TYPE_ERROR))
            {
              *v638 = 134218240;
              v639 = self;
              v640 = 2048;
              v641 = v608;
              _os_log_error_impl(&dword_18565F000, v580, OS_LOG_TYPE_ERROR, "CoreData: error: Sending reply %p, %p\n", v638, 0x16u);
            }
          }

          else
          {
            v581 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v581, OS_LOG_TYPE_DEFAULT))
            {
              *v638 = 134218240;
              v639 = self;
              v640 = 2048;
              v641 = v608;
              _os_log_impl(&dword_18565F000, v581, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Sending reply %p, %p\n", v638, 0x16u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v582 = 1;
        }

        else
        {
          v582 = 8;
        }

        _NSCoreDataLog_console(v582, "Sending reply %p, %p", self, v608);
        objc_autoreleasePoolPop(v579);
      }

      v583 = v608;
      [*(v607 + 48) reset];

      [v593 drain];
      v584 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      (*(*(v607 + 88) + 16))();
      if (+[NSXPCStoreServer debugDefault])
      {
        v585 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v586 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v586, OS_LOG_TYPE_ERROR))
            {
              *v638 = 0;
              _os_log_error_impl(&dword_18565F000, v586, OS_LOG_TYPE_ERROR, "CoreData: error: Sent reply\n", v638, 2u);
            }
          }

          else
          {
            v587 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v587, OS_LOG_TYPE_DEFAULT))
            {
              *v638 = 0;
              _os_log_impl(&dword_18565F000, v587, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Sent reply\n", v638, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v588 = 1;
        }

        else
        {
          v588 = 8;
        }

        _NSCoreDataLog_console(v588, "Sent reply");
        objc_autoreleasePoolPop(v585);
      }

      [v584 drain];
      return;
    case 4:
      if (+[NSXPCStoreServer debugDefault])
      {
        v35 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v36 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: OID\n", buf, 2u);
            }
          }

          else
          {
            v186 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v186, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: OID\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v187 = 1;
        }

        else
        {
          v187 = 8;
        }

        _NSCoreDataLog_console(v187, "OID");
        objc_autoreleasePoolPop(v35);
      }

      v188 = *(v607 + 40);
      if (v188)
      {
        v189 = *(v188 + 24);
      }

      else
      {
        v189 = 0;
      }

      v190 = *(v607 + 64);
      if (!v190)
      {
        goto LABEL_488;
      }

      v191 = *(v607 + 56);
      v192 = objc_autoreleasePoolPush();
      v193 = MEMORY[0x1E695DFD8];
      v194 = objc_opt_class();
      v195 = objc_opt_class();
      v196 = objc_opt_class();
      v197 = [v193 setWithObjects:{v194, v195, v196, objc_opt_class(), 0}];
      v198 = [_NSXPCStoreUtilities decodeSecureArchivedData:v189 usingDelegate:v191 classes:v197];
      v199 = v198;
      objc_autoreleasePoolPop(v192);
      if (+[NSXPCStoreServer debugDefault])
      {
        v200 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v201 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v198;
              _os_log_error_impl(&dword_18565F000, v201, OS_LOG_TYPE_ERROR, "CoreData: error: Got oid  request for %@\n", buf, 0xCu);
            }
          }

          else
          {
            v265 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v198;
              _os_log_impl(&dword_18565F000, v265, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got oid  request for %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v266 = 1;
        }

        else
        {
          v266 = 8;
        }

        _NSCoreDataLog_console(v266, "Got oid  request for %@", v198);
        objc_autoreleasePoolPop(v200);
      }

      v267 = [(NSXPCStoreServerRequestHandlingPolicy *)*(v190 + 64) processObtainRequest:v198 inContext:v191 error:&v608];
      if (+[NSXPCStoreServer debugDefault])
      {
        v268 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v269 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v267;
              _os_log_error_impl(&dword_18565F000, v269, OS_LOG_TYPE_ERROR, "CoreData: error: Returning result %@\n", buf, 0xCu);
            }
          }

          else
          {
            v302 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v267;
              _os_log_impl(&dword_18565F000, v302, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Returning result %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v303 = 1;
        }

        else
        {
          v303 = 8;
        }

        _NSCoreDataLog_console(v303, "Returning result %@", v267);
        objc_autoreleasePoolPop(v268);
      }

      if (!v267)
      {
        goto LABEL_488;
      }

      v304 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v267];
      goto LABEL_1031;
    case 5:
      if (+[NSXPCStoreServer debugDefault])
      {
        v37 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v38 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Fault\n", buf, 2u);
            }
          }

          else
          {
            v202 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v202, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fault\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v203 = 1;
        }

        else
        {
          v203 = 8;
        }

        _NSCoreDataLog_console(v203, "Fault");
        objc_autoreleasePoolPop(v37);
      }

      v204 = *(v607 + 40);
      if (v204)
      {
        v205 = *(v204 + 24);
      }

      else
      {
        v205 = 0;
      }

      v206 = *(v607 + 64);
      if (!v206)
      {
        goto LABEL_1134;
      }

      v207 = *(v607 + 56);
      *v649 = 0;
      contextc = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v208 = MEMORY[0x1E695DFD8];
      v209 = objc_opt_class();
      v210 = objc_opt_class();
      v211 = objc_opt_class();
      v212 = objc_opt_class();
      v213 = [v208 setWithObjects:{v209, v210, v211, v212, objc_opt_class(), 0}];
      v214 = [_NSXPCStoreUtilities decodeSecureArchivedData:v205 usingDelegate:v207 classes:v213];
      if ([v214 count] >= 2 && (v215 = objc_msgSend(v214, "objectAtIndex:", 1)) != 0)
      {
        v216 = [NSXPCStoreServer unpackQueryGeneration:v215 withContext:v207];
        v217 = 1;
      }

      else
      {
        v217 = 0;
        v216 = 0;
      }

      v218 = [v214 firstObject];
      if (+[NSXPCStoreServer debugDefault])
      {
        v219 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v220 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v218;
              _os_log_error_impl(&dword_18565F000, v220, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to fire fault for %@\n", buf, 0xCu);
            }
          }

          else
          {
            v270 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v218;
              _os_log_impl(&dword_18565F000, v270, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to fire fault for %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v271 = 1;
        }

        else
        {
          v271 = 8;
        }

        _NSCoreDataLog_console(v271, "Attempting to fire fault for %@", v218);
        objc_autoreleasePoolPop(v219);
      }

      if (v216)
      {
        v272 = 0;
      }

      else
      {
        v272 = v217;
      }

      if (v272 == 1 && +[NSXPCStoreServer debugDefault])
      {
        v273 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v274 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v274, OS_LOG_TYPE_ERROR, "CoreData: error: Can't fulfill fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v413 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v413, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v413, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Can't fulfill fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v414 = 1;
        }

        else
        {
          v414 = 8;
        }

        _NSCoreDataLog_console(v414, "Can't fulfill fault request: can't find query generation: %@", 0);
        objc_autoreleasePoolPop(v273);
        v415 = MEMORY[0x1E696ABC0];
        *buf = @"unrecognized query generation";
        *&v652 = @"reason";
        *(&v652 + 1) = @"generation";
        v416 = [MEMORY[0x1E695DFB0] null];
        *&v653 = @"target";
        *&buf[8] = v416;
        *&buf[16] = v218;
        v417 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v652 count:3];
        v281 = [v415 errorWithDomain:*MEMORY[0x1E696A250] code:134061 userInfo:v417];
      }

      else
      {
        v275 = [v207 managedObjectContext];
        [v275 setStalenessInterval:0.0];
        v276 = [objc_msgSend(v275 "persistentStoreCoordinator")];
        if (v276)
        {
          v277 = [*(v206 + 64) processFaultForObjectWithID:v276 fromClientWithContext:v207 error:v649];
          if (v277)
          {
            v278 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v277];
          }

          else
          {
            v278 = 0;
          }

          v282 = 1;
LABEL_778:
          v418 = *v649;
          [contextc drain];
          if (*v649)
          {
            v608 = *v649;
          }

          v419 = *v649;
          if (v282)
          {
            v313 = v278;
LABEL_1032:
            v12 = v313;
            goto LABEL_1033;
          }

LABEL_1134:
          v12 = 0;
          goto LABEL_1033;
        }

        v279 = MEMORY[0x1E696ABC0];
        v280 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"missing objectID" forKey:@"reason"];
        v281 = [v279 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v280];
      }

      v282 = 0;
      v278 = 0;
      *v649 = v281;
      goto LABEL_778;
    case 6:
      if (+[NSXPCStoreServer debugDefault])
      {
        v21 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v22 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Rel fault\n", buf, 2u);
            }
          }

          else
          {
            v94 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v94, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Rel fault\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v95 = 1;
        }

        else
        {
          v95 = 8;
        }

        _NSCoreDataLog_console(v95, "Rel fault");
        objc_autoreleasePoolPop(v21);
      }

      v96 = *(v607 + 40);
      if (v96)
      {
        v97 = *(v96 + 24);
      }

      else
      {
        v97 = 0;
      }

      v597 = *(v607 + 64);
      if (!v597)
      {
        goto LABEL_1134;
      }

      v98 = *(v607 + 56);
      *&v648[0] = 0;
      contexta = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v99 = MEMORY[0x1E695DFD8];
      v100 = objc_opt_class();
      v101 = objc_opt_class();
      v102 = objc_opt_class();
      v103 = objc_opt_class();
      v104 = objc_opt_class();
      v105 = [v99 setWithObjects:{v100, v101, v102, v103, v104, objc_opt_class(), 0}];
      v106 = [_NSXPCStoreUtilities decodeSecureArchivedData:v97 usingDelegate:v98 classes:v105];
      v107 = [v106 firstObject];
      if ([v106 count] >= 2 && (v108 = objc_msgSend(v106, "objectAtIndex:", 1)) != 0)
      {
        v109 = [NSXPCStoreServer unpackQueryGeneration:v108 withContext:v98];
        v110 = 1;
      }

      else
      {
        v110 = 0;
        v109 = 0;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v111 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v112 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v107;
              _os_log_error_impl(&dword_18565F000, v112, OS_LOG_TYPE_ERROR, "CoreData: error: Got relationship fault request: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v283 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v107;
              _os_log_impl(&dword_18565F000, v283, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got relationship fault request: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v284 = 1;
        }

        else
        {
          v284 = 8;
        }

        _NSCoreDataLog_console(v284, "Got relationship fault request: %@", v107);
        objc_autoreleasePoolPop(v111);
      }

      if (v109)
      {
        v285 = 0;
      }

      else
      {
        v285 = v110;
      }

      if (v285 == 1 && +[NSXPCStoreServer debugDefault])
      {
        v286 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v287 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v287, OS_LOG_TYPE_ERROR, "CoreData: error: Can't fulfill relationship fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v420 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v420, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Can't fulfill relationship fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v421 = 1;
        }

        else
        {
          v421 = 8;
        }

        _NSCoreDataLog_console(v421, "Can't fulfill relationship fault request: can't find query generation: %@", 0);
        objc_autoreleasePoolPop(v286);
        v422 = MEMORY[0x1E696ABC0];
        *buf = @"unrecognized query generation";
        *&v652 = @"reason";
        *(&v652 + 1) = @"generation";
        v423 = [MEMORY[0x1E695DFB0] null];
        *&v653 = @"request";
        *&buf[8] = v423;
        *&buf[16] = v107;
        v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v652 count:3];
        v322 = [v422 errorWithDomain:*MEMORY[0x1E696A250] code:134061 userInfo:v424];
      }

      else
      {
        v288 = [v98 managedObjectContext];
        [v288 setStalenessInterval:0.0];
        v289 = [objc_msgSend(v288 "persistentStoreCoordinator")];
        v290 = objc_msgSend_valueForKey_(v107);
        if (+[NSXPCStoreServer debugDefault])
        {
          v291 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v292 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v289;
                *&buf[12] = 2112;
                *&buf[14] = v290;
                _os_log_error_impl(&dword_18565F000, v292, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to fire fault for %@, %@\n", buf, 0x16u);
              }
            }

            else
            {
              v317 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v289;
                *&buf[12] = 2112;
                *&buf[14] = v290;
                _os_log_impl(&dword_18565F000, v317, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to fire fault for %@, %@\n", buf, 0x16u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v318 = 1;
          }

          else
          {
            v318 = 8;
          }

          _NSCoreDataLog_console(v318, "Attempting to fire fault for %@, %@", v289, v290);
          objc_autoreleasePoolPop(v291);
        }

        if (v289)
        {
          p_super = [*(v597 + 64) processFaultForRelationshipWithName:v290 onObjectWithID:v289 fromClientWithContext:v98 error:v648];
          if (p_super)
          {
            v598 = v290;
            v319 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if ([MEMORY[0x1E695DFB0] null] == p_super)
            {
              [v319 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [p_super URIRepresentation];
              }

              else
              {
                v654 = 0u;
                v655 = 0u;
                v652 = 0u;
                v653 = 0u;
                v325 = [p_super countByEnumeratingWithState:&v652 objects:buf count:16];
                if (v325)
                {
                  v326 = *v653;
                  do
                  {
                    for (ii = 0; ii != v325; ++ii)
                    {
                      if (*v653 != v326)
                      {
                        objc_enumerationMutation(p_super);
                      }

                      v328 = *(*(&v652 + 1) + 8 * ii);
                      p_superclass = objc_autoreleasePoolPush();
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v235 = objc_autoreleasePoolPush();
                        _pflogInitialize(8);
                        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            p_super = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                            {
                              v517 = objc_opt_class();
                              *v649 = 138412290;
                              *&v649[4] = v517;
                              _os_log_error_impl(&dword_18565F000, p_super, OS_LOG_TYPE_ERROR, "CoreData: error: Wrong in all kinds of ways. Less colloquially, that should be an object ID, but it's an instance of %@ instead\n", v649, 0xCu);
                            }
                          }

                          else
                          {
                            p_super = _PFLogGetLogStream(8);
                            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
                            {
                              v578 = objc_opt_class();
                              *v649 = 138412290;
                              *&v649[4] = v578;
                              _os_log_impl(&dword_18565F000, p_super, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Wrong in all kinds of ways. Less colloquially, that should be an object ID, but it's an instance of %@ instead\n", v649, 0xCu);
                            }
                          }
                        }

                        if (_pflogging_catastrophic_mode)
                        {
                          v518 = objc_opt_class();
                          v519 = 1;
                        }

                        else
                        {
                          v518 = objc_opt_class();
                          v519 = 8;
                        }

                        _NSCoreDataLog_console(v519, "Wrong in all kinds of ways. Less colloquially, that should be an object ID, but it's an instance of %@ instead", v518);
                        objc_autoreleasePoolPop(v235);
                        goto LABEL_1009;
                      }

                      [v319 addObject:{objc_msgSend(v328, "URIRepresentation")}];
                      objc_autoreleasePoolPop(p_superclass);
                    }

                    v325 = [p_super countByEnumeratingWithState:&v652 objects:buf count:16];
                  }

                  while (v325);
                }
              }
            }

            if (+[NSXPCStoreServer debugDefault])
            {
              v329 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v330 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v330, OS_LOG_TYPE_ERROR))
                  {
                    *v649 = 138412802;
                    *&v649[4] = v289;
                    *&v649[12] = 2112;
                    *&v649[14] = v598;
                    v650 = 2112;
                    v651 = v319;
                    _os_log_error_impl(&dword_18565F000, v330, OS_LOG_TYPE_ERROR, "CoreData: error: Fired relationship fault %@ - %@, returning values: %@\n", v649, 0x20u);
                  }
                }

                else
                {
                  v520 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v520, OS_LOG_TYPE_DEFAULT))
                  {
                    *v649 = 138412802;
                    *&v649[4] = v289;
                    *&v649[12] = 2112;
                    *&v649[14] = v598;
                    v650 = 2112;
                    v651 = v319;
                    _os_log_impl(&dword_18565F000, v520, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fired relationship fault %@ - %@, returning values: %@\n", v649, 0x20u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v521 = 1;
              }

              else
              {
                v521 = 8;
              }

              _NSCoreDataLog_console(v521, "Fired relationship fault %@ - %@, returning values: %@", v289, v598, v319);
              objc_autoreleasePoolPop(v329);
            }

            v426 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v319];
          }

          else
          {
            if (+[NSXPCStoreServer debugDefault])
            {
              v323 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v324 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v289;
                    *&buf[12] = 2112;
                    *&buf[14] = v290;
                    _os_log_error_impl(&dword_18565F000, v324, OS_LOG_TYPE_ERROR, "CoreData: error: Attempted to fire relationship fault %@ - %@, no such luck\n", buf, 0x16u);
                  }
                }

                else
                {
                  v528 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v289;
                    *&buf[12] = 2112;
                    *&buf[14] = v290;
                    _os_log_impl(&dword_18565F000, v528, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempted to fire relationship fault %@ - %@, no such luck\n", buf, 0x16u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v529 = 1;
              }

              else
              {
                v529 = 8;
              }

              _NSCoreDataLog_console(v529, "Attempted to fire relationship fault %@ - %@, no such luck", v289, v290);
              objc_autoreleasePoolPop(v323);
            }

            v426 = 0;
          }

          v425 = 1;
LABEL_1003:
          v530 = *&v648[0];
          [contexta drain];
          if (*&v648[0])
          {
            v608 = *&v648[0];
          }

          v531 = *&v648[0];
          if (v425)
          {
            v313 = v426;
            goto LABEL_1032;
          }

          goto LABEL_1134;
        }

        v320 = MEMORY[0x1E696ABC0];
        v321 = [MEMORY[0x1E695DF20] dictionaryWithObject:v107 forKey:@"originalRequest"];
        v322 = [v320 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v321];
      }

      v425 = 0;
      v426 = 0;
      *&v648[0] = v322;
      goto LABEL_1003;
    case 7:
      if (+[NSXPCStoreServer debugDefault])
      {
        v27 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v28 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: error: Request notification name\n", buf, 2u);
            }
          }

          else
          {
            v152 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v152, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Request notification name\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v153 = 1;
        }

        else
        {
          v153 = 8;
        }

        _NSCoreDataLog_console(v153, "Request notification name");
        objc_autoreleasePoolPop(v27);
      }

      if (!*(v607 + 64))
      {
        goto LABEL_1134;
      }

      v154 = *(v607 + 56);
      v155 = objc_autoreleasePoolPush();
      v156 = [objc_msgSend(objc_msgSend(objc_msgSend(v154 "managedObjectContext")];
      if (!v156)
      {
        v157 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v158 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v158, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v388 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v388, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v388, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v389 = 1;
        }

        else
        {
          v389 = 8;
        }

        _NSCoreDataLog_console(v389, "no store");
        objc_autoreleasePoolPop(v157);
      }

      v390 = [_PFRoutines _remoteChangeNotificationNameForStore:v156];
      *v649 = @"notificationName";
      *&v652 = v390;
      v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v652 forKeys:v649 count:1];
      if (+[NSXPCStoreServer debugDefault])
      {
        v392 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v393 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v393, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v391;
              _os_log_error_impl(&dword_18565F000, v393, OS_LOG_TYPE_ERROR, "CoreData: error: Got pull changes result %@\n", buf, 0xCu);
            }
          }

          else
          {
            v394 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v394, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v391;
              _os_log_impl(&dword_18565F000, v394, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got pull changes result %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v395 = 1;
        }

        else
        {
          v395 = 8;
        }

        _NSCoreDataLog_console(v395, "Got pull changes result %@", v391);
        objc_autoreleasePoolPop(v392);
      }

      v396 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v391];
      if (+[NSXPCStoreServer debugDefault])
      {
        v397 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v398 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v396;
              _os_log_error_impl(&dword_18565F000, v398, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
            }
          }

          else
          {
            v399 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v399, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v396;
              _os_log_impl(&dword_18565F000, v399, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v400 = 1;
        }

        else
        {
          v400 = 8;
        }

        _NSCoreDataLog_console(v400, "Which archives to %@", v396);
        objc_autoreleasePoolPop(v397);
      }

      objc_autoreleasePoolPop(v155);
      v313 = v396;
      goto LABEL_1032;
    case 9:
      if (+[NSXPCStoreServer debugDefault])
      {
        v29 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v30 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation\n", buf, 2u);
            }
          }

          else
          {
            v159 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v159, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v160 = 1;
        }

        else
        {
          v160 = 8;
        }

        _NSCoreDataLog_console(v160, "Query generation");
        objc_autoreleasePoolPop(v29);
      }

      if (!*(v607 + 64))
      {
        goto LABEL_488;
      }

      v161 = *(v607 + 56);
      v8 = objc_autoreleasePoolPush();
      v162 = [v161 persistentStoreCoordinator];
      v163 = [v162 _retainedCurrentQueryGeneration:0];
      v164 = [objc_msgSend(v162 "persistentStores")];
      if (!v164)
      {
        v165 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v166 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v166, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v401 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v401, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v401, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v402 = 1;
        }

        else
        {
          v402 = 8;
        }

        _NSCoreDataLog_console(v402, "no store");
        objc_autoreleasePoolPop(v165);
      }

      v403 = [(_NSQueryGenerationToken *)v163 _generationalComponentForStore:v164];
      v404 = [NSXPCStoreServer retainedXPCEncodableGenerationTokenForOriginal:v403 inContext:v161];
      if (+[NSXPCStoreServer debugDefault])
      {
        v405 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v406 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v163;
              _os_log_error_impl(&dword_18565F000, v406, OS_LOG_TYPE_ERROR, "CoreData: error: Got queryGeneration %@\n", buf, 0xCu);
            }
          }

          else
          {
            v407 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v163;
              _os_log_impl(&dword_18565F000, v407, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got queryGeneration %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v408 = 1;
        }

        else
        {
          v408 = 8;
        }

        _NSCoreDataLog_console(v408, "Got queryGeneration %@", v163);
        objc_autoreleasePoolPop(v405);
      }

      v304 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v404];
      if (!+[NSXPCStoreServer debugDefault])
      {
        goto LABEL_1030;
      }

      v368 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v409 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v409, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v304;
            _os_log_error_impl(&dword_18565F000, v409, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
          }
        }

        else
        {
          v410 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v304;
            _os_log_impl(&dword_18565F000, v410, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v371 = 1;
      }

      else
      {
        v371 = 8;
      }

      goto LABEL_661;
    case 0xALL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v41 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v42 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation release\n", buf, 2u);
            }
          }

          else
          {
            v242 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v242, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation release\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v243 = 1;
        }

        else
        {
          v243 = 8;
        }

        _NSCoreDataLog_console(v243, "Query generation release");
        objc_autoreleasePoolPop(v41);
      }

      v244 = *(v607 + 40);
      if (v244)
      {
        v245 = *(v244 + 24);
      }

      else
      {
        v245 = 0;
      }

      if (!*(v607 + 64))
      {
        goto LABEL_488;
      }

      v246 = *(v607 + 56);
      v8 = objc_autoreleasePoolPush();
      v247 = MEMORY[0x1E695DFD8];
      v248 = objc_opt_class();
      v249 = objc_opt_class();
      v250 = [v247 setWithObjects:{v248, v249, objc_opt_class(), 0}];
      v251 = [_NSXPCStoreUtilities decodeSecureArchivedData:v245 usingDelegate:v246 classes:v250];
      if (v251)
      {
        -[NSXPCStoreServerPerConnectionCache releaseQueryGenerationForRemoteGeneration:]([v246 cache], *(v251 + 24));
      }

      else
      {
        v252 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v253 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v253, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to free nothing (or too many things) %@\n", buf, 0xCu);
            }
          }

          else
          {
            v411 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v411, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v411, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to free nothing (or too many things) %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v412 = 1;
        }

        else
        {
          v412 = 8;
        }

        _NSCoreDataLog_console(v412, "Attempting to free nothing (or too many things) %@", 0);
        objc_autoreleasePoolPop(v252);
      }

      v304 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:?];
      goto LABEL_1030;
    case 0xBLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v39 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v40 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation reopen\n", buf, 2u);
            }
          }

          else
          {
            v221 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v221, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation reopen\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v222 = 1;
        }

        else
        {
          v222 = 8;
        }

        _NSCoreDataLog_console(v222, "Query generation reopen");
        objc_autoreleasePoolPop(v39);
      }

      v223 = *(v607 + 40);
      if (v223)
      {
        v224 = *(v223 + 24);
      }

      else
      {
        v224 = 0;
      }

      if (!*(v607 + 64))
      {
        goto LABEL_488;
      }

      v225 = *(v607 + 56);
      v8 = objc_autoreleasePoolPush();
      p_superclass = NSCloudKitMirroringRequestManager.superclass;
      v226 = MEMORY[0x1E695DFD8];
      v227 = objc_opt_class();
      v228 = objc_opt_class();
      v229 = [v226 setWithObjects:{v227, v228, objc_opt_class(), 0}];
      v230 = [_NSXPCStoreUtilities decodeSecureArchivedData:v224 usingDelegate:v225 classes:v229];
      v231 = v230;
      if (v230)
      {
        v232 = *(v230 + 24);
        v233 = -[NSXPCStoreServerPerConnectionCache localGenerationForRemoteGeneration:]([v225 cache], v232);
        if (v233)
        {
          p_super = [NSXPCStoreServer retainedXPCEncodableGenerationTokenForOriginal:v233 inContext:v225];
          goto LABEL_1017;
        }

        v237 = -[NSPersistentStoreCoordinator _reopenQueryGenerationWithIdentifier:inStoreWithIdentifier:error:]([v225 persistentStoreCoordinator], v232, objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v225, "persistentStoreCoordinator"), "persistentStores"), "firstObject"), "identifier"), 0);
        v238 = v237;
        if (v237)
        {
          v239 = [NSXPCStoreServer retainedXPCEncodableGenerationTokenForOriginal:v237 inContext:v225];
          p_super = &v239->super;
          if (v239)
          {
            isa = v239[3].super.isa;
          }

          else
          {
            isa = 0;
          }

          -[NSXPCStoreServerPerConnectionCache registerQueryGeneration:forRemoteGeneration:]([v225 cache], v238, isa);
          if (!+[NSXPCStoreServer debugDefault])
          {
            goto LABEL_1017;
          }

          v235 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (!_pflogging_catastrophic_mode)
            {
              goto LABEL_1010;
            }

            v241 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = p_super;
              _os_log_error_impl(&dword_18565F000, v241, OS_LOG_TYPE_ERROR, "CoreData: error: Reopened generation %@\n", buf, 0xCu);
            }
          }

LABEL_1012:
          if (_pflogging_catastrophic_mode)
          {
            v533 = 1;
          }

          else
          {
            v533 = 8;
          }

          _NSCoreDataLog_console(v533, "Reopened generation %@", p_super);
LABEL_1016:
          objc_autoreleasePoolPop(v235);
LABEL_1017:
          v304 = [(_NSXPCStoreUtilities *)p_superclass + 2872 newSecureArchivedDataWithRootObject:?];

          if (+[NSXPCStoreServer debugDefault])
          {
            v368 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v534 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v534, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v304;
                  _os_log_error_impl(&dword_18565F000, v534, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
                }
              }

              else
              {
                v535 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v535, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v304;
                  _os_log_impl(&dword_18565F000, v535, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v536 = 1;
            }

            else
            {
              v536 = 8;
            }

            _NSCoreDataLog_console(v536, "Which archives to %@", v304);
LABEL_1029:
            objc_autoreleasePoolPop(v368);
          }

LABEL_1030:
          objc_autoreleasePoolPop(v8);
LABEL_1031:
          v313 = v304;
          goto LABEL_1032;
        }

        if (+[NSXPCStoreServer debugDefault])
        {
          v235 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v314 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v231;
                _os_log_error_impl(&dword_18565F000, v314, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to reopen generation %@\n", buf, 0xCu);
              }
            }

            else
            {
              v561 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v561, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v231;
                _os_log_impl(&dword_18565F000, v561, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to reopen generation %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v562 = 1;
          }

          else
          {
            v562 = 8;
          }

          _NSCoreDataLog_console(v562, "Unable to reopen generation %@", v231);
LABEL_962:
          p_super = 0;
          goto LABEL_1016;
        }
      }

      else if (+[NSXPCStoreServer debugDefault])
      {
        v235 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v236 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v236, OS_LOG_TYPE_ERROR, "CoreData: error: Bad parameter to reopen generation %@\n", buf, 0xCu);
            }
          }

          else
          {
            v514 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v514, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v514, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Bad parameter to reopen generation %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v515 = 1;
        }

        else
        {
          v515 = 8;
        }

        _NSCoreDataLog_console(v515, "Bad parameter to reopen generation %@", 0);
        goto LABEL_962;
      }

      p_super = 0;
      goto LABEL_1017;
    case 0xCLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v15 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v16 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: Batch delete\n", buf, 2u);
            }
          }

          else
          {
            v56 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v56, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Batch delete\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v57 = 1;
        }

        else
        {
          v57 = 8;
        }

        _NSCoreDataLog_console(v57, "Batch delete");
        objc_autoreleasePoolPop(v15);
      }

      v58 = *(v607 + 40);
      if (v58)
      {
        v59 = *(v58 + 24);
      }

      else
      {
        v59 = 0;
      }

      v60 = *(v607 + 64);
      if (!v60)
      {
        goto LABEL_488;
      }

      v61 = *(v607 + 56);
      *&v652 = 0;
      v62 = objc_autoreleasePoolPush();
      v63 = [NSBatchDeleteRequest decodeFromXPCArchive:v59 withContext:v61 withPolicy:*(v60 + 64)];
      if (v63)
      {
        v51 = [*(v60 + 64) processRequest:v63 fromClientWithContext:v61 error:&v652];
        if (+[NSXPCStoreServer debugDefault])
        {
          v64 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v65 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v333 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_impl(&dword_18565F000, v333, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v334 = 1;
          }

          else
          {
            v334 = 8;
          }

          _NSCoreDataLog_console(v334, "Which had result %@", v51);
          objc_autoreleasePoolPop(v64);
        }

        if (v51)
        {
          v51 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v51 result]);
        }
      }

      else
      {
        v66 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v67 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: Nil batch delete request\n", buf, 2u);
            }
          }

          else
          {
            v349 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v349, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil batch delete request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v350 = 1;
        }

        else
        {
          v350 = 8;
        }

        _NSCoreDataLog_console(v350, "Nil batch delete request");
        objc_autoreleasePoolPop(v66);
        v51 = 0;
      }

      v351 = v652;
      objc_autoreleasePoolPop(v62);
      if (v652)
      {
        v608 = v652;
      }

      goto LABEL_631;
    case 0xDLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v23 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v24 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: Persistent history\n", buf, 2u);
            }
          }

          else
          {
            v113 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v113, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Persistent history\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v114 = 1;
        }

        else
        {
          v114 = 8;
        }

        _NSCoreDataLog_console(v114, "Persistent history");
        objc_autoreleasePoolPop(v23);
      }

      v115 = *(v607 + 40);
      if (v115)
      {
        v116 = *(v115 + 24);
      }

      else
      {
        v116 = 0;
      }

      v117 = *(v607 + 64);
      if (!v117)
      {
        goto LABEL_488;
      }

      v118 = *(v607 + 56);
      *&v652 = 0;
      v119 = objc_autoreleasePoolPush();
      v120 = [NSPersistentHistoryChangeRequest decodeFromXPCArchive:v116 withContext:v118 withPolicy:*(v117 + 64)];
      if (v120)
      {
        v51 = [*(v117 + 64) processRequest:v120 fromClientWithContext:v118 error:&v652];
        if (+[NSXPCStoreServer debugDefault])
        {
          v121 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v122 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_error_impl(&dword_18565F000, v122, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v335 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_impl(&dword_18565F000, v335, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v336 = 1;
          }

          else
          {
            v336 = 8;
          }

          _NSCoreDataLog_console(v336, "Which had result %@", v51);
          objc_autoreleasePoolPop(v121);
        }

        if (v51)
        {
          v51 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v51 result]);
        }
      }

      else
      {
        v123 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v124 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v124, OS_LOG_TYPE_ERROR, "CoreData: error: Nil persistent history request\n", buf, 2u);
            }
          }

          else
          {
            v352 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v352, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v352, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil persistent history request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v353 = 1;
        }

        else
        {
          v353 = 8;
        }

        _NSCoreDataLog_console(v353, "Nil persistent history request");
        objc_autoreleasePoolPop(v123);
        v51 = 0;
      }

      v354 = v652;
      objc_autoreleasePoolPop(v119);
      if (v652)
      {
        v608 = v652;
      }

      goto LABEL_631;
    case 0xELL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v17 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v18 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: Persistent history token\n", buf, 2u);
            }
          }

          else
          {
            v68 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v68, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Persistent history token\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v69 = 1;
        }

        else
        {
          v69 = 8;
        }

        _NSCoreDataLog_console(v69, "Persistent history token");
        objc_autoreleasePoolPop(v17);
      }

      v70 = *(v607 + 40);
      if (v70)
      {
        v71 = *(v70 + 24);
      }

      else
      {
        v71 = 0;
      }

      if (!*(v607 + 64))
      {
        goto LABEL_1134;
      }

      v72 = *(v607 + 56);
      context = objc_autoreleasePoolPush();
      v73 = [v72 persistentStoreCoordinator];
      v74 = MEMORY[0x1E695DFD8];
      v75 = objc_opt_class();
      v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
      v77 = [_NSXPCStoreUtilities decodeSecureArchivedData:v71 usingDelegate:v72 classes:v76];
      if (+[NSXPCStoreServer debugDefault])
      {
        v78 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v79 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v77;
              _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: error: Server received history token payload - %@\n", buf, 0xCu);
            }
          }

          else
          {
            v254 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v77;
              _os_log_impl(&dword_18565F000, v254, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Server received history token payload - %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v255 = 1;
        }

        else
        {
          v255 = 8;
        }

        _NSCoreDataLog_console(v255, "Server received history token payload - %@", v77);
        objc_autoreleasePoolPop(v78);
      }

      if (![v77 count])
      {
        goto LABEL_394;
      }

      v256 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v77, "count")}];
      v654 = 0u;
      v655 = 0u;
      v652 = 0u;
      v653 = 0u;
      v257 = [v73 persistentStores];
      v258 = [v257 countByEnumeratingWithState:&v652 objects:buf count:16];
      if (v258)
      {
        v259 = *v653;
        do
        {
          for (jj = 0; jj != v258; ++jj)
          {
            if (*v653 != v259)
            {
              objc_enumerationMutation(v257);
            }

            v261 = *(*(&v652 + 1) + 8 * jj);
            if ([v77 containsObject:{objc_msgSend(v261, "identifier")}])
            {
              [v256 addObject:v261];
            }
          }

          v258 = [v257 countByEnumeratingWithState:&v652 objects:buf count:16];
        }

        while (v258);
      }

      if ([v256 count])
      {
        v262 = [v73 currentPersistentHistoryTokenFromStores:v256];
      }

      else
      {
LABEL_394:
        v262 = 0;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v263 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v264 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
            {
              *v649 = 138412290;
              *&v649[4] = v262;
              _os_log_error_impl(&dword_18565F000, v264, OS_LOG_TYPE_ERROR, "CoreData: error: Server sending back historyToken %@\n", v649, 0xCu);
            }
          }

          else
          {
            v305 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
            {
              *v649 = 138412290;
              *&v649[4] = v262;
              _os_log_impl(&dword_18565F000, v305, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Server sending back historyToken %@\n", v649, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v306 = 1;
        }

        else
        {
          v306 = 8;
        }

        _NSCoreDataLog_console(v306, "Server sending back historyToken %@", v262);
        objc_autoreleasePoolPop(v263);
      }

      v307 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v262 storeTokens]);
      if (+[NSXPCStoreServer debugDefault])
      {
        v308 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v309 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
            {
              *v649 = 138412290;
              *&v649[4] = v307;
              _os_log_error_impl(&dword_18565F000, v309, OS_LOG_TYPE_ERROR, "CoreData: error: Server historyToken archived to %@\n", v649, 0xCu);
            }
          }

          else
          {
            v310 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v310, OS_LOG_TYPE_DEFAULT))
            {
              *v649 = 138412290;
              *&v649[4] = v307;
              _os_log_impl(&dword_18565F000, v310, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Server historyToken archived to %@\n", v649, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v311 = 1;
        }

        else
        {
          v311 = 8;
        }

        _NSCoreDataLog_console(v311, "Server historyToken archived to %@", v307);
        objc_autoreleasePoolPop(v308);
      }

      objc_autoreleasePoolPop(context);
      v312 = 0;
      v313 = v307;
      goto LABEL_1032;
    case 0xFLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v13 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v14 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: error: Batch update\n", buf, 2u);
            }
          }

          else
          {
            v43 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v43, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Batch update\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v44 = 1;
        }

        else
        {
          v44 = 8;
        }

        _NSCoreDataLog_console(v44, "Batch update");
        objc_autoreleasePoolPop(v13);
      }

      v45 = *(v607 + 40);
      if (v45)
      {
        v46 = *(v45 + 24);
      }

      else
      {
        v46 = 0;
      }

      v47 = *(v607 + 64);
      if (!v47)
      {
        goto LABEL_1134;
      }

      v48 = *(v607 + 56);
      *&v652 = 0;
      v49 = objc_autoreleasePoolPush();
      v50 = [NSBatchUpdateRequest decodeFromXPCArchive:v46 withContext:v48 withPolicy:*(v47 + 64)];
      if (v50)
      {
        v51 = [*(v47 + 64) processRequest:v50 fromClientWithContext:v48 error:&v652];
        if (+[NSXPCStoreServer debugDefault])
        {
          v52 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v53 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v331 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_impl(&dword_18565F000, v331, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v332 = 1;
          }

          else
          {
            v332 = 8;
          }

          _NSCoreDataLog_console(v332, "Which had result %@", v51);
          objc_autoreleasePoolPop(v52);
        }

        if (v51)
        {
          v51 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v51 result]);
        }
      }

      else
      {
        v54 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v55 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, "CoreData: error: Nil batch update request\n", buf, 2u);
            }
          }

          else
          {
            v343 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v343, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil batch update request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v344 = 1;
        }

        else
        {
          v344 = 8;
        }

        _NSCoreDataLog_console(v344, "Nil batch update request");
        objc_autoreleasePoolPop(v54);
        v345 = MEMORY[0x1E696ABC0];
        *v649 = *MEMORY[0x1E696A588];
        *buf = @"Unable to decode request, ensure policy allows for updated class values";
        v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v649 count:1];
        v347 = [v345 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v346];
        v51 = 0;
        *&v652 = v347;
      }

      v348 = v652;
      objc_autoreleasePoolPop(v49);
      if (v652)
      {
        v608 = v652;
      }

      goto LABEL_631;
    case 0x10:
      if (+[NSXPCStoreServer debugDefault])
      {
        v31 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v32 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: Batch insert\n", buf, 2u);
            }
          }

          else
          {
            v167 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v167, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Batch insert\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v168 = 1;
        }

        else
        {
          v168 = 8;
        }

        _NSCoreDataLog_console(v168, "Batch insert");
        objc_autoreleasePoolPop(v31);
      }

      v169 = *(v607 + 40);
      if (v169)
      {
        v170 = *(v169 + 24);
      }

      else
      {
        v170 = 0;
      }

      v171 = *(v607 + 64);
      if (!v171)
      {
        goto LABEL_1134;
      }

      v172 = *(v607 + 56);
      *&v652 = 0;
      v173 = objc_autoreleasePoolPush();
      v174 = [NSBatchInsertRequest decodeFromXPCArchive:v170 withContext:v172 withPolicy:*(v171 + 64)];
      if (v174)
      {
        v51 = [*(v171 + 64) processRequest:v174 fromClientWithContext:v172 error:&v652];
        if (+[NSXPCStoreServer debugDefault])
        {
          v175 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v176 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_error_impl(&dword_18565F000, v176, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v337 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_impl(&dword_18565F000, v337, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v338 = 1;
          }

          else
          {
            v338 = 8;
          }

          _NSCoreDataLog_console(v338, "Which had result %@", v51);
          objc_autoreleasePoolPop(v175);
        }

        if (v51)
        {
          v51 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v51 result]);
        }
      }

      else
      {
        v177 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v178 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v178, OS_LOG_TYPE_ERROR, "CoreData: error: Nil batch insert request\n", buf, 2u);
            }
          }

          else
          {
            v355 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v355, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v355, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil batch insert request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v356 = 1;
        }

        else
        {
          v356 = 8;
        }

        _NSCoreDataLog_console(v356, "Nil batch insert request");
        objc_autoreleasePoolPop(v177);
        v357 = MEMORY[0x1E696ABC0];
        *v649 = *MEMORY[0x1E696A588];
        *buf = @"Unable to decode request, ensure policy allows for inserted class values";
        v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v649 count:1];
        v359 = [v357 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v358];
        v51 = 0;
        *&v652 = v359;
      }

      v360 = v652;
      objc_autoreleasePoolPop(v173);
      if (v652)
      {
        v608 = v652;
      }

LABEL_631:
      v361 = v652;
      v313 = v51;
      goto LABEL_1032;
    case 0x11:
      if (+[NSXPCStoreServer debugDefault])
      {
        v33 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v34 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation active connections\n", buf, 2u);
            }
          }

          else
          {
            v179 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v179, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation active connections\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v180 = 1;
        }

        else
        {
          v180 = 8;
        }

        _NSCoreDataLog_console(v180, "Query generation active connections");
        objc_autoreleasePoolPop(v33);
      }

      if (!*(v607 + 64))
      {
LABEL_488:
        v12 = 0;
        goto LABEL_1033;
      }

      v181 = *(v607 + 56);
      v8 = objc_autoreleasePoolPush();
      v182 = [objc_msgSend(objc_msgSend(v181 "persistentStoreCoordinator")];
      if (v182)
      {
        v183 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v182, "_hasActiveGenerations")}];
      }

      else
      {
        v184 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v185 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v185, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v362 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v362, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v363 = 1;
        }

        else
        {
          v363 = 8;
        }

        _NSCoreDataLog_console(v363, "no store");
        objc_autoreleasePoolPop(v184);
        v183 = &unk_1EF435A58;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v364 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v365 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v365, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v183;
              _os_log_error_impl(&dword_18565F000, v365, OS_LOG_TYPE_ERROR, "CoreData: error: Got active connections %@\n", buf, 0xCu);
            }
          }

          else
          {
            v366 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v183;
              _os_log_impl(&dword_18565F000, v366, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got active connections %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v367 = 1;
        }

        else
        {
          v367 = 8;
        }

        _NSCoreDataLog_console(v367, "Got active connections %@", v183);
        objc_autoreleasePoolPop(v364);
      }

      v304 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v183];
      if (!+[NSXPCStoreServer debugDefault])
      {
        goto LABEL_1030;
      }

      v368 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v369 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v304;
            _os_log_error_impl(&dword_18565F000, v369, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
          }
        }

        else
        {
          v370 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v304;
            _os_log_impl(&dword_18565F000, v370, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v371 = 1;
      }

      else
      {
        v371 = 8;
      }

LABEL_661:
      _NSCoreDataLog_console(v371, "Which archives to %@", v304);
      goto LABEL_1029;
    default:
      goto LABEL_1141;
  }
}

- (id)replacementObjectForXPCConnection:(id)connection encoder:(id)encoder object:(id)object
{
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSXPCStoreManagedObjectArchivingToken alloc];
    object = [object objectID];
LABEL_5:
    v8 = -[NSXPCStoreManagedObjectArchivingToken initWithURI:](v7, "initWithURI:", [object URIRepresentation]);
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSXPCStoreManagedObjectArchivingToken alloc];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[NSQueryGenerationToken currentQueryGenerationToken]== object)
    {
      object = @"current";
    }

    else if (+[NSQueryGenerationToken unpinnedQueryGenerationToken]== object)
    {
      object = @"unpinned";
    }

    else
    {
      +[NSQueryGenerationToken nostoresQueryGenerationToken];
    }
  }

  objc_autoreleasePoolPop(v6);
  return object;
}

- (NSQueryGenerationToken)retainedXPCEncodableGenerationTokenForOriginal:(NSQueryGenerationToken *)original inContext:(void *)context
{
  v4 = objc_autoreleasePoolPush();
  if (+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken, "currentQueryGenerationToken") == original || +[NSQueryGenerationToken unpinnedQueryGenerationToken]== original)
  {
    originalCopy = original;
    goto LABEL_13;
  }

  if (+[NSQueryGenerationToken nostoresQueryGenerationToken]== original)
  {
    originalCopy = 0;
    goto LABEL_13;
  }

  if (original)
  {
    isa = original[2].super.isa;
    if (isa)
    {
      WeakRetained = objc_loadWeakRetained(isa + 1);
    }

    else
    {
      WeakRetained = 0;
    }

    v7 = [_NSXPCQueryGenerationToken alloc];
    v8 = original[3].super.isa;
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_16:
    originalCopy = 0;
    goto LABEL_9;
  }

  v7 = [_NSXPCQueryGenerationToken alloc];
  WeakRetained = 0;
  v8 = 0;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_8:
  originalCopy = [(_NSQueryGenerationToken *)v7 initWithValue:v8 store:WeakRetained freeValueOnDealloc:0];
LABEL_9:

  cache = [context cache];
  if (original)
  {
    v11 = original[3].super.isa;
  }

  else
  {
    v11 = 0;
  }

  [(NSXPCStoreServerPerConnectionCache *)cache registerQueryGeneration:original forRemoteGeneration:v11];
LABEL_13:
  objc_autoreleasePoolPop(v4);
  return originalCopy;
}

- (NSQueryGenerationToken)unpackQueryGeneration:(uint64_t)generation withContext:(void *)context
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if ([@"current" isEqual:generation])
  {
    v5 = +[NSQueryGenerationToken currentQueryGenerationToken];
  }

  else if ([@"unpinned" isEqual:generation])
  {
    v5 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (generation)
    {
      v7 = *(generation + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = -[NSXPCStoreServerPerConnectionCache localGenerationForRemoteGeneration:]([context cache], v7);
    if (!v8)
    {
      persistentStoreCoordinator = [context persistentStoreCoordinator];
      v10 = generation ? *(generation + 8) : 0;
      v8 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator _reopenQueryGenerationWithIdentifier:v7 inStoreWithIdentifier:v10 error:0];
      if (v8)
      {
        -[NSXPCStoreServerPerConnectionCache registerQueryGeneration:forRemoteGeneration:]([context cache], v8, v7);
        v8 = -[NSXPCStoreServerPerConnectionCache localGenerationForRemoteGeneration:]([context cache], v7);
      }
    }

    v11 = v8;
    objc_autoreleasePoolPop(v6);
    v5 = v8;
  }

  v12 = v5;
  if (v5)
  {
    v19 = 0;
    if (([objc_msgSend(context "managedObjectContext")] & 1) == 0 && +[NSXPCStoreServer debugDefault](NSXPCStoreServer, "debugDefault"))
    {
      v13 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            generationCopy2 = generation;
            v22 = 2112;
            v23 = v12;
            v24 = 2112;
            v25 = v19;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to set query generation on context: %@ -> %@ (%@)\n", buf, 0x20u);
          }
        }

        else
        {
          v16 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            generationCopy2 = generation;
            v22 = 2112;
            v23 = v12;
            v24 = 2112;
            v25 = v19;
            _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed to set query generation on context: %@ -> %@ (%@)\n", buf, 0x20u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v17 = 1;
      }

      else
      {
        v17 = 8;
      }

      _NSCoreDataLog_console(v17, "Failed to set query generation on context: %@ -> %@ (%@)", generation, v12, v19);
      objc_autoreleasePoolPop(v13);
      v12 = 0;
    }

    v18 = v12;
    objc_autoreleasePoolPop(v4);
    return v12;
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    return 0;
  }
}

- (uint64_t)_populateObject:(void *)object withValuesFromClient:(void *)client
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  managedObjectContext = [object managedObjectContext];
  entity = [object entity];
  [object _setVersionReference__:{objc_msgSend(objc_msgSend(client, "objectAtIndex:", 1), "longLongValue")}];
  clientCopy = client;
  v59 = [client objectAtIndex:2];
  v51 = v4;
  if (entity)
  {
    v7 = entity[14];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_msgSend(entity "propertiesByName")];
  v9 = v7[6];
  v10 = v7[7];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = v9 < v10 + v9;
  v53 = v8;
  if (v9 < v10 + v9)
  {
    v54 = v7;
    v12 = v8;
    v13 = 0;
    v14 = v10 + 3;
    v15 = 3;
    v16 = (v12 + 8 * v9);
    while (1)
    {
      name = [*v16 name];
      v18 = [clientCopy objectAtIndex:v15];
      if (v18 != v59)
      {
        v19 = v18;
        v20 = objc_msgSend_valueForKey_(object);
        if (v20 != v19 && ([v20 isEqual:v19] & 1) == 0)
        {
          break;
        }
      }

      if ((v13 & 1) == 0)
      {
        v21 = objc_msgSend_valueForKey_(object);
LABEL_14:
        [object setValue:v21 forKey:name];
      }

      ++v15;
      ++v16;
      v13 = 1;
      if (!--v10)
      {
        v8 = v53;
        v7 = v54;
        goto LABEL_18;
      }
    }

    if (null == v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    goto LABEL_14;
  }

  v14 = 3;
LABEL_18:
  v22 = v7[12];
  v23 = v7[13];
  objectCopy = object;
  if (v22 >= v23 + v22)
  {
    goto LABEL_32;
  }

  v55 = v23 + v14;
  v24 = (v8 + 8 * v22);
  do
  {
    name2 = [*v24 name];
    v26 = [clientCopy objectAtIndex:v14];
    if (v26 == v59 || (v27 = v26, v28 = objc_msgSend_valueForKey_(object), v28 == v27) || ([v28 isEqual:v27] & 1) != 0)
    {
      if (v11)
      {
        goto LABEL_29;
      }

      v29 = objc_msgSend_valueForKey_(object);
    }

    else
    {
      if (null == v27)
      {
        v30 = 0;
        goto LABEL_28;
      }

      v29 = [managedObjectContext existingObjectWithID:v27 error:0];
    }

    v30 = v29;
LABEL_28:
    [object setValue:v30 forKey:name2];
LABEL_29:
    ++v14;
    ++v24;
    v11 = 1;
    --v23;
  }

  while (v23);
  v14 = v55;
LABEL_32:
  v32 = v7[14];
  v31 = v7[15];
  if (v32 < v31 + v32)
  {
    v56 = v31 + v14;
    do
    {
      v33 = objc_autoreleasePoolPush();
      name3 = [*(v8 + 8 * v32) name];
      v35 = [clientCopy objectAtIndex:v14];
      if (v59 == [v35 objectAtIndex:0])
      {
        if (!v11)
        {
          [objectCopy setValue:objc_msgSend_valueForKey_(objectCopy) forKey:name3];
        }

        v11 = 1;
      }

      else
      {
        v36 = [v35 objectAtIndex:0];
        v37 = [v35 objectAtIndex:1];
        v58 = [objectCopy mutableSetValueForKey:name3];
        if ([v36 count])
        {
          v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v39 = [v36 countByEnumeratingWithState:&v65 objects:v70 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v66;
            do
            {
              v42 = 0;
              do
              {
                if (*v66 != v41)
                {
                  objc_enumerationMutation(v36);
                }

                v43 = [managedObjectContext existingObjectWithID:*(*(&v65 + 1) + 8 * v42) error:0];
                if (v43)
                {
                  [v38 addObject:v43];
                }

                ++v42;
              }

              while (v40 != v42);
              v40 = [v36 countByEnumeratingWithState:&v65 objects:v70 count:16];
            }

            while (v40);
          }

          [v58 unionSet:v38];

          v11 = 1;
          v8 = v53;
        }

        if ([v37 count])
        {
          v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v45 = [v37 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v62;
            do
            {
              v48 = 0;
              do
              {
                if (*v62 != v47)
                {
                  objc_enumerationMutation(v37);
                }

                v49 = [managedObjectContext existingObjectWithID:*(*(&v61 + 1) + 8 * v48) error:0];
                if (v49)
                {
                  [v44 addObject:v49];
                }

                ++v48;
              }

              while (v46 != v48);
              v46 = [v37 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v46);
          }

          [v58 minusSet:v44];

          v11 = 1;
          v8 = v53;
        }
      }

      ++v14;
      objc_autoreleasePoolPop(v33);
      ++v32;
    }

    while (v14 != v56);
  }

  return [v51 drain];
}

@end