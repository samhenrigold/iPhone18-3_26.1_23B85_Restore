@interface NSXPCStore
+ (BOOL)_isOnExtendedTimeout;
+ (id)archiver:(id)archiver willEncodeObject:(id)object;
+ (void)initialize;
- (BOOL)_hasActiveGenerations;
- (BOOL)load:(id *)load;
- (BOOL)loadMetadata:(id *)metadata;
- (BOOL)supportsConcurrentRequestHandling;
- (Class)objectIDFactoryForSQLEntity:(id)entity;
- (NSPersistentStore)executeFetchRequest:(NSManagedObjectContext *)request withContext:(NSFetchRequest *)context error:;
- (NSXPCStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options;
- (char)_cachedRowForRelationship:(const void *)relationship onObjectWithID:(void *)d generation:;
- (double)_cachedRowForObjectWithID:(void *)d generation:;
- (id)_newObjectIDForEntityDescription:(id)description pk:(int64_t)pk;
- (id)currentChangeToken;
- (id)currentQueryGeneration;
- (id)entityForEntityDescription:(id)description;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)metadata;
- (id)newForeignKeyID:(int64_t)d entity:(id)entity;
- (id)newObjectIDForEntity:(id)entity pk:(int64_t)pk;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)objectIDFactoryForEntity:(id)entity;
- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error;
- (id)reopenQueryGenerationWithIdentifier:(id)identifier error:(id *)error;
- (id)replacementObjectForXPCConnection:(id)connection encoder:(id)encoder object:(id)object;
- (id)sendMessage:(void *)message fromContext:(void *)context interrupts:(uint64_t *)interrupts error:;
- (uint64_t)_executeSaveRequestForContext:(uint64_t *)context error:;
- (void)_clearCachedRowForObjectWithID:(void *)d generation:;
- (void)_commitChangesForRequestContext:(uint64_t)context;
- (void)_prepareStoreForRemovalFromCoordinator:(id)coordinator;
- (void)_setMetadata:(id)metadata includeVersioning:(BOOL)versioning;
- (void)cacheContents:(void *)contents ofRelationship:(void *)relationship onObjectWithID:(void *)d withTimestamp:(double)timestamp generation:;
- (void)cacheFetchedRows:(void *)rows forManagedObjects:(void *)objects generation:;
- (void)dealloc;
- (void)decodePrefetchArray:(void *)array forSources:(NSManagedObjectContext *)sources context:;
- (void)decodePrefetchResult:(void *)result forSources:(NSManagedObjectContext *)sources context:;
- (void)freeQueryGenerationWithIdentifier:(id)identifier;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)willRemoveFromPersistentStoreCoordinator:(id)coordinator;
@end

@implementation NSXPCStore

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == self)
  {
    dword_1ED4BE7A4 = [_PFRoutines integerValueForOverride:?];
    v3 = getprogname();
    if (v3)
    {
      if (*v3)
      {
        if (!strncmp("PhotosReliveWidget", v3, 0x12uLL))
        {
          atomic_store(1u, _MergedGlobals_122);
        }
      }
    }
  }
}

- (BOOL)supportsConcurrentRequestHandling
{
  v2 = objc_msgSend_valueForKey_([(NSPersistentStore *)self options]);
  integerValue = [v2 integerValue];
  if (v2)
  {
    v4 = integerValue <= 0;
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

- (id)currentChangeToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  _persistentStoreCoordinator = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__NSXPCStore_Internal__currentChangeToken__block_invoke;
  v6[3] = &unk_1E6EC1330;
  v6[4] = self;
  v6[5] = &v7;
  [_persistentStoreCoordinator performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__NSXPCStore_Internal__currentChangeToken__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 14;
  }

  v25[0] = [*(a1 + 32) identifier];
  v5 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1]);
  if (v3)
  {
    objc_setProperty_nonatomic(v3, v4, v5, 24);
  }

  v22 = 0;
  v6 = [(NSXPCStore *)*(a1 + 32) sendMessage:v3 fromContext:0 interrupts:&v21 error:&v22];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [_NSXPCStoreUtilities decodeSecureArchivedData:v7 usingDelegate:*(a1 + 32) classes:v11];
    if (+[NSXPCStore debugDefault])
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
            *buf = 138412290;
            v24 = v12;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoded history token - %@\n", buf, 0xCu);
          }
        }

        else
        {
          v17 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoded history token - %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v18 = 1;
      }

      else
      {
        v18 = 8;
      }

      _NSCoreDataLog_console(v18, "Decoded history token - %@", v12);
      objc_autoreleasePoolPop(v13);
    }

    if (v12)
    {
      if ([v12 count])
      {
        *(*(*(a1 + 40) + 8) + 40) = [[_NSPersistentHistoryToken alloc] initWithDictionary:v12];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v16 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v22;
          _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: Nil result for history token request - %@\n", buf, 0xCu);
        }
      }

      else
      {
        v19 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v22;
          _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil result for history token request - %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v20 = 1;
    }

    else
    {
      v20 = 8;
    }

    _NSCoreDataLog_console(v20, "Nil result for history token request - %@", v22);
    objc_autoreleasePoolPop(v15);
  }
}

- (id)metadata
{
  os_unfair_lock_lock_with_options();
  metadata = self->_metadata;
  if (metadata)
  {
    v4 = metadata;
    os_unfair_lock_unlock(&self->_stateLock);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  v4 = 0;
  if ([(NSXPCStore *)self loadMetadata:0])
  {
    os_unfair_lock_lock_with_options();
    v4 = self->_metadata;
    os_unfair_lock_unlock(&self->_stateLock);
  }

LABEL_7:

  return v4;
}

+ (id)archiver:(id)archiver willEncodeObject:(id)object
{
  v5 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSXPCStoreManagedObjectArchivingToken alloc];
    objectCopy = [object objectID];
LABEL_5:
    v8 = -[NSXPCStoreManagedObjectArchivingToken initWithURI:](v6, "initWithURI:", [objectCopy URIRepresentation]);
LABEL_6:
    v9 = v8;
    objc_autoreleasePoolPop(v5);

    return v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSXPCStoreManagedObjectArchivingToken alloc];
    objectCopy = object;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [_NSXPCStoreUtilities newUserInfoFromException:object];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    [object timeIntervalSinceReferenceDate];
    v8 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_6;
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

  objc_autoreleasePoolPop(v5);
  return object;
}

- (id)replacementObjectForXPCConnection:(id)connection encoder:(id)encoder object:(id)object
{
  v8 = objc_opt_class();

  return [v8 replacementObjectForXPCConnection:connection encoder:encoder object:object];
}

- (NSXPCStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options
{
  optionsCopy = options;
  v49 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_valueForKey_(options, a2, @"serviceName") && !objc_msgSend_valueForKey_(optionsCopy) && !objc_msgSend_valueForKey_(optionsCopy))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No service name or endpoint factory supplied" userInfo:0]);
  }

  nameCopy = name;
  if ([objc_msgSend(optionsCopy objectForKey:{@"skipModelCheck", "BOOLValue"}])
  {
    if (objc_msgSend_valueForKey_(optionsCopy) && !objc_msgSend_valueForKey_(optionsCopy))
    {
      optionsCopy = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
      [optionsCopy setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
    }
  }

  else
  {
    managedObjectModel = [coordinator managedObjectModel];
    selfCopy = self;
    lCopy = l;
    if ([name length] && !objc_msgSend(name, "isEqualToString:", @"PF_DEFAULT_CONFIGURATION_NAME"))
    {
      entities = [managedObjectModel entitiesForConfiguration:name];
    }

    else
    {
      entities = [managedObjectModel entities];
    }

    v12 = entities;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = [entities countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v13)
    {
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v17)
          {
            v18 = *v40;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v39 + 1) + 8 * j);
                if ([v20 _propertyType] == 4 && objc_msgSend(v20, "isToMany") && objc_msgSend(v20, "isOrdered"))
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"XPC store does not currently allow models containing ordered relationships" userInfo:0]);
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v17);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v13);
    }

    l = lCopy;
    name = nameCopy;
    self = selfCopy;
  }

  v38.receiver = self;
  v38.super_class = NSXPCStore;
  v21 = [(NSPersistentStore *)&v38 initWithPersistentStoreCoordinator:coordinator configurationName:name URL:l options:optionsCopy];
  if (v21)
  {
    v21->_requestTerminationSem = dispatch_semaphore_create(0);
    v21->_cache = [[NSGenerationalRowCache alloc] initWithStore:v21];
    v22 = -[NSSQLModel initWithManagedObjectModel:]([NSSQLModel alloc], "initWithManagedObjectModel:", [coordinator managedObjectModel]);
    v21->_model = v22;
    if (!v22)
    {
      [_NSXPCStoreUtilities logMessage:@"Unable to load model" forComponent:?];
    }

    v21->_sanityCheckToken = 0;
    v21->_stateLock._os_unfair_lock_opaque = 0;
    v21->_outstandingRequests = 0;
    v21->_connectionManager = [[NSXPCStoreConnectionManager alloc] initForStore:v21];
    if (coordinator)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
      [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSXPCStoreDelegate"];
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
      v27 = [NSSQLCore alloc];
      v28 = -[NSSQLCore initWithPersistentStoreCoordinator:configurationName:URL:options:](v27, "initWithPersistentStoreCoordinator:configurationName:URL:options:", 0, nameCopy, [MEMORY[0x1E695DFF8] fileURLWithPath:v26], v25);
      v21->_core = v28;
      [(NSSQLCore *)v28 _useModel:?];
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v29 = [optionsCopy objectForKey:@"NSPersistentHistoryTrackingKey"];
    if (coordinator && v29)
    {
      v30 = [optionsCopy objectForKey:@"NSPersistentHistoryTrackingKey"];
      if (([v30 isNSDictionary] & 1) == 0 && (objc_msgSend(v30, "isNSNumber") & 1) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersistentHistoryTrackingKey must be a NSNumber" userInfo:0]);
      }

      if (([v30 isNSDictionary] & 1) != 0 || objc_msgSend(v30, "isNSNumber") && objc_msgSend(v30, "BOOLValue"))
      {
        v31 = [(NSDictionary *)[(NSSQLCore *)v21->_core ancillaryModels] objectForKey:@"NSPersistentHistoryTrackingKey"];
        [(_PFModelMap *)*(coordinator + 12) addManagedObjectModel:v31];
        [v23 setObject:v31 forKey:@"NSPersistentHistoryTrackingKey"];
        [v24 setObject:objc_msgSend(-[NSSQLCore ancillarySQLModels](v21->_core forKey:{"ancillarySQLModels"), "objectForKey:", @"NSPersistentHistoryTrackingKey", @"NSPersistentHistoryTrackingKey"}];
        v32 = [_PFPersistentHistoryFetchModel newFetchHistoryModelForCoordinator:? andOptions:?];
        [(_PFModelMap *)*(coordinator + 12) addManagedObjectModel:v32];
      }
    }

    v21->_ancillaryModels = [v23 copy];
    v21->_ancillarySQLModels = [v24 copy];
  }

  else
  {
    [_NSXPCStoreUtilities logMessage:@"Unable to initialize client" forComponent:?];
  }

  return v21;
}

- (void)dealloc
{
  [(NSXPCStoreConnectionManager *)self->_connectionManager disconnectAllConnections:?];

  self->_ancillaryModels = 0;
  self->_ancillarySQLModels = 0;

  self->_connectionManager = 0;
  [(NSXPCStoreNotificationObserver *)&self->_observer->super.isa setStore:?];

  self->_observer = 0;
  requestTerminationSem = self->_requestTerminationSem;
  if (requestTerminationSem)
  {
    dispatch_release(requestTerminationSem);
  }

  self->_remoteStoreChangedNotificationName = 0;
  self->_cache = 0;

  self->_model = 0;
  self->_metadata = 0;

  self->_core = 0;
  self->_sanityCheckToken = 0;

  self->_fileBackedFuturesDirectory = 0;
  v4.receiver = self;
  v4.super_class = NSXPCStore;
  [(NSIncrementalStore *)&v4 dealloc];
}

- (void)willRemoveFromPersistentStoreCoordinator:(id)coordinator
{
  if (self)
  {
    [(NSXPCStoreConnectionManager *)self->_connectionManager disconnectAllConnections:?];
  }

  [(NSXPCStoreNotificationObserver *)&self->_observer->super.isa setStore:?];
  v5.receiver = self;
  v5.super_class = NSXPCStore;
  [(NSPersistentStore *)&v5 willRemoveFromPersistentStoreCoordinator:coordinator];
}

- (id)sendMessage:(void *)message fromContext:(void *)context interrupts:(uint64_t *)interrupts error:
{
  v95 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (self)
  {
    v10 = self[23];
    if (v10)
    {
      objc_setProperty_nonatomic(self, self, v10, 32);
    }
  }

  interruptsCopy = interrupts;
  if (!message)
  {
    goto LABEL_12;
  }

  v11 = [*(message[21] + 168) copy];
  if (self)
  {
    v13 = v11;
    if (v11)
    {
      objc_setProperty_nonatomic(self, v12, v11, 40);
    }
  }

  v14 = [*(message[21] + 128) copy];
  if (!v14)
  {
LABEL_12:
    _allowAncillaryEntities = [message _allowAncillaryEntities];
    if (self)
    {
      goto LABEL_13;
    }

LABEL_114:
    v17 = 1;
    goto LABEL_14;
  }

  if (!self)
  {
    [message _allowAncillaryEntities];
    goto LABEL_114;
  }

  objc_setProperty_nonatomic(self, v15, v14, 48);
  _allowAncillaryEntities = [message _allowAncillaryEntities];
LABEL_13:
  v17 = 0;
  *(self + 16) = _allowAncillaryEntities;
LABEL_14:
  v18 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ((v17 & 1) == 0)
  {
    objc_setProperty_nonatomic(self, v19, v18, 56);
  }

  v20 = 0;
  p_superclass = NSCloudKitMirroringRequestManager.superclass;
  v22 = 0x1E696A000uLL;
  while (1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (self[20])
    {
      v24 = p_superclass;
      v25 = v22;
      v26 = [[NSXPCStoreMessageContext alloc] initForMessage:self store:self];
      [(NSXPCStoreConnectionManager *)self[20] sendMessageWithContext:v26];
      if (v26)
      {
        v27 = v26[3];
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      if (interruptsCopy)
      {
        if (v26)
        {
          v29 = v26[4];
        }

        else
        {
          v29 = 0;
        }

        *interruptsCopy = v29;
      }

      v22 = v25;
      p_superclass = v24;
      if (v28)
      {
        break;
      }
    }

    v31 = objc_msgSend_stringWithFormat_(*(v22 + 3776), v20);
    [_NSXPCStoreUtilities logMessage:v31 forComponent:?];
    v32 = v20 + 1;
    *context = v20 + 1;
    if (v20 == 2)
    {
      [_NSXPCStoreUtilities logMessage:@"Unable to sendMessage: to server" forComponent:?];
LABEL_28:
      if (([objc_msgSend_valueForKey_(objc_msgSend(self "options"))] & 1) == 0)
      {
        v33 = CFAbsoluteTimeGetCurrent();
        if (v20 < 4)
        {
          v34 = 3;
        }

        else
        {
          v34 = +[NSXPCStore _isOnExtendedTimeout]? 60 : 3;
        }

        v30 = v33 - Current;
        if (v33 - Current < v34)
        {
          sleep(v34 - v30);
        }
      }

      goto LABEL_36;
    }

    if (v20)
    {
      goto LABEL_28;
    }

LABEL_36:
    ++v20;
    if (v32 == 8)
    {
      v28 = 0;
      v35 = 1;
      goto LABEL_41;
    }
  }

  v35 = 0;
LABEL_41:
  if (+[NSXPCStore debugDefault]>= 1)
  {
    NSLog(@"Got reply pointer: %p", v28);
    NSLog(@"Got reply: %@", v28);
  }

  if (v35)
  {
    v36 = objc_msgSend_stringWithFormat_(*(v22 + 3776), [self options]);
    [_NSXPCStoreUtilities logMessage:v36 forComponent:?];
    v37 = interruptsCopy;
    if (interruptsCopy)
    {
      v38 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A250];
      v40 = MEMORY[0x1E695DF20];
      v41 = objc_msgSend_stringWithFormat_(*(v22 + 3776), 8);
      v42 = v40;
      goto LABEL_46;
    }

    return 0;
  }

  else
  {
    v44 = [v28 objectForKey:@"reply"];
    v45 = [v28 objectForKey:@"error"];
    if (NSKeyValueCoding_NullValue == v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v45;
    }

    if (v44)
    {
      v47 = *(v44 + 24);
      v48 = *(v44 + 8) == 0;
    }

    else
    {
      v47 = 0;
      v48 = 1;
    }

    v49 = v47;
    v43 = v49;
    if (v48)
    {
      if (v46)
      {
        if (+[NSXPCStore debugDefault]>= 1)
        {
          v50 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v94 = v46;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Got success, but also an error. Ignoring the error (%@).\n", buf, 0xCu);
              }
            }

            else
            {
              v76 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v94 = v46;
                _os_log_impl(&dword_18565F000, v76, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Got success, but also an error. Ignoring the error (%@).\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v77 = 1;
          }

          else
          {
            v77 = 8;
          }

          _NSCoreDataLog_console(v77, " Got success, but also an error. Ignoring the error (%@).", v46);
          objc_autoreleasePoolPop(v50);
        }
      }

      else if (!v49)
      {
        [(_NSXPCStoreUtilities *)(p_superclass + 359) logMessage:but no response or error"") forComponent:?];
        v37 = interruptsCopy;
        if (!interruptsCopy)
        {
          return 0;
        }

        v38 = MEMORY[0x1E696ABC0];
        v39 = *MEMORY[0x1E696A250];
        v42 = MEMORY[0x1E695DF20];
        v41 = @"No data, cause unknown";
LABEL_46:
        v43 = 0;
        *v37 = [v38 errorWithDomain:v39 code:134060 userInfo:{objc_msgSend(v42, "dictionaryWithObject:forKey:", v41, @"Problem"}];
      }
    }

    else
    {
      if (+[NSXPCStore debugDefault]>= 1)
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
              v94 = v46;
              _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error:  Request failed: (%@).\n", buf, 0xCu);
            }
          }

          else
          {
            v54 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v94 = v46;
              _os_log_impl(&dword_18565F000, v54, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Request failed: (%@).\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v55 = 1;
        }

        else
        {
          v55 = 8;
        }

        _NSCoreDataLog_console(v55, " Request failed: (%@).", v46);
        objc_autoreleasePoolPop(v52);
      }

      if (v46)
      {
        userInfo = [v46 userInfo];
        v81 = v46;
        code = [v46 code];
        v58 = [userInfo objectForKey:@"NSAffectedObjectsErrorKey"];
        v80 = userInfo;
        if (v58)
        {
          v79 = code;
          v59 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v60 = [v58 countByEnumeratingWithState:&v87 objects:v92 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v88;
            do
            {
              v63 = 0;
              do
              {
                if (*v88 != v62)
                {
                  objc_enumerationMutation(v58);
                }

                if (message)
                {
                  v64 = _PFRetainedObjectIDCore(message, *(*(&v87 + 1) + 8 * v63), 0, 1);
                }

                else
                {
                  v64 = 0;
                }

                [v59 addObject:v64];

                ++v63;
              }

              while (v61 != v63);
              v65 = [v58 countByEnumeratingWithState:&v87 objects:v92 count:16];
              v61 = v65;
            }

            while (v65);
          }

          userInfo = v80;
          v58 = [v80 mutableCopy];
          [v58 setObject:v59 forKey:@"NSAffectedObjectsErrorKey"];

          code = v79;
        }

        v66 = [userInfo objectForKey:@"conflictList"];
        if (v66)
        {
          v67 = v66;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v68 = [v66 countByEnumeratingWithState:&v83 objects:v91 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v84;
            do
            {
              for (i = 0; i != v69; ++i)
              {
                if (*v84 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = *(*(&v83 + 1) + 8 * i);
                v73 = objc_autoreleasePoolPush();
                [v72 _doCleanupForXPCStore:self context:message];
                objc_autoreleasePoolPop(v73);
              }

              v69 = [v67 countByEnumeratingWithState:&v83 objects:v91 count:16];
            }

            while (v69);
          }

          if (!v58)
          {
            v58 = [v80 mutableCopy];
          }

          [v58 setObject:v67 forKey:@"conflictList"];
          code = 134050;
        }

        v74 = v81;
        if (v58)
        {
          v74 = [MEMORY[0x1E696ABC0] errorWithDomain:objc_msgSend(v81 code:"domain") userInfo:{code, v58}];
        }

        if (interruptsCopy)
        {
          *interruptsCopy = v74;
        }
      }

      else
      {
        v75 = objc_msgSend_stringWithFormat_(*(v22 + 3776));
        [_NSXPCStoreUtilities logMessage:v75 forComponent:?];
      }
    }
  }

  return v43;
}

- (BOOL)load:(id *)load
{
  v29 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = NSXPCStore;
  v4 = [(NSIncrementalStore *)&v24 load:load];
  v5 = v4;
  if (self)
  {
    if (v4)
    {
      v6 = [-[NSDictionary objectForKey:](-[NSPersistentStore options](self "options")];
      v7 = [objc_msgSend_valueForKey_(-[NSPersistentStore options](self "options"))];
      if (!self->_observer && ((v7 | v6) & 1) != 0)
      {
        v8 = objc_alloc_init(NSCoreDataXPCMessage);
        v9 = v8;
        if (v8)
        {
          v8->_messageCode = 7;
        }

        v26 = 0;
        v10 = [(NSXPCStore *)self sendMessage:v8 fromContext:0 interrupts:&v25 error:&v26];

        if (v10)
        {
          v11 = MEMORY[0x1E695DFD8];
          v12 = objc_opt_class();
          v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
          v14 = [_NSXPCStoreUtilities decodeSecureArchivedData:v10 usingDelegate:self classes:v13];
          if (v14)
          {
            self->_remoteStoreChangedNotificationName = [objc_msgSend(v14 objectForKey:{@"notificationName", "copy"}];
          }

          else
          {
            v15 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v28 = v26;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to enable remote store notifications: Can't get notification name. %@\n", buf, 0xCu);
                }
              }

              else
              {
                v17 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v28 = v26;
                  _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed to enable remote store notifications: Can't get notification name. %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v18 = 1;
            }

            else
            {
              v18 = 8;
            }

            _NSCoreDataLog_console(v18, "Failed to enable remote store notifications: Can't get notification name. %@", v26);
            objc_autoreleasePoolPop(v15);
          }
        }

        if (self->_remoteStoreChangedNotificationName)
        {
          self->_observer = [[NSXPCStoreNotificationObserver alloc] initForObservationWithName:[(NSXPCStore *)self remoteStoreChangedNotificationName] store:self];
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v20 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v28 = v26;
                _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to enable remote store notifications: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v21 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v28 = v26;
                _os_log_impl(&dword_18565F000, v21, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed to enable remote store notifications: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v22 = 1;
          }

          else
          {
            v22 = 8;
          }

          _NSCoreDataLog_console(v22, "Failed to enable remote store notifications: %@", v26);
          objc_autoreleasePoolPop(v19);
        }
      }
    }
  }

  return v5;
}

- (void)_setMetadata:(id)metadata includeVersioning:(BOOL)versioning
{
  v7.receiver = self;
  v7.super_class = NSXPCStore;
  v5 = [(NSPersistentStore *)&v7 _updatedMetadataWithSeed:metadata includeVersioning:versioning];
  os_unfair_lock_lock_with_options();
  if (([v5 isEqual:self->_metadata] & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = NSXPCStore;
    [(NSPersistentStore *)&v6 _setMetadataDirty:1];

    self->_metadata = v5;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)loadMetadata:(id *)metadata
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [-[NSPersistentStore _persistentStoreCoordinator](self "_persistentStoreCoordinator")];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (([(NSEntityDescription *)*(*(&v34 + 1) + 8 * i) _hasAttributesWithFileBackedFutures]& 1) != 0)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  v10 = objc_alloc_init(NSCoreDataXPCMessage);
  v11 = v10;
  if (v10)
  {
    v10->_messageCode = 1;
  }

  v33 = 0;
  v12 = [(NSXPCStore *)self sendMessage:v10 fromContext:0 interrupts:&v32 error:&v33];
  if (!v12)
  {
    if (metadata)
    {
      *metadata = v33;
    }

    goto LABEL_23;
  }

  v31 = 0;
  v13 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:&v31 error:metadata];
  v14 = v13;
  if (v13)
  {
    if (v9)
    {
      v15 = [v13 objectForKey:@"NSFileBackedFuturePathKey"];
      self->_fileBackedFuturesDirectory = v15;
      if (!v15)
      {
        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433988];
        result = 0;
        *metadata = v22;
        return result;
      }

      v14 = [v14 objectForKey:@"NSMetadataKey"];
    }

    v16 = [v14 objectForKey:@"NSStoreModelVersionIdentifiers"];
    if (!v16)
    {
      if (metadata)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Server did not return model version info. (Unsupported configuration.)" forKey:@"Reason"];
        v19 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:134080 userInfo:v18];
        v12 = 0;
        *metadata = v19;
      }

      else
      {
        v12 = 0;
      }
    }

    if (![-[NSDictionary objectForKey:](-[NSPersistentStore options](self "options")] || (objc_msgSend(v16, "isEqual:", objc_msgSend(v5, "entityVersionHashesByName")) & 1) != 0)
    {
      if (self)
      {
        os_unfair_lock_lock_with_options();
        v23 = self->_sanityCheckToken;
        os_unfair_lock_unlock(&self->_stateLock);
        v24 = v23;
        v25 = [v14 objectForKey:@"NSStoreUUID"];
        if (v24)
        {
          if (([(NSString *)v24 isEqual:v25]& 1) == 0)
          {
            if (metadata)
            {
              v26 = MEMORY[0x1E696ABC0];
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Server side store changed forKey:{remove and re-add this client store", @"Reason"}];
              v12 = 0;
              *metadata = [v26 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v27];
            }

            else
            {
              v12 = 0;
            }
          }
        }

        else
        {
          os_unfair_lock_lock_with_options();
          if (self->_sanityCheckToken != v25)
          {
            v28 = v25;

            self->_sanityCheckToken = v25;
          }

          os_unfair_lock_unlock(&self->_stateLock);
        }
      }

      else
      {
        [v14 objectForKey:@"NSStoreUUID"];
      }

      [(NSXPCStore *)self _setMetadata:v14 includeVersioning:0];

      if (v12)
      {
        return 1;
      }

LABEL_24:
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33);
      [_NSXPCStoreUtilities logMessage:v20 forComponent:?];
      return 0;
    }

    if (metadata)
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Server schema is incompatible and ignore version enabled. (Unsupported configuration.)" forKey:@"Reason"];
      *metadata = [v29 errorWithDomain:*MEMORY[0x1E696A250] code:134020 userInfo:v30];
    }

LABEL_23:

    goto LABEL_24;
  }

  return 1;
}

- (id)currentQueryGeneration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  _persistentStoreCoordinator = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSXPCStore_currentQueryGeneration__block_invoke;
  v6[3] = &unk_1E6EC1330;
  v6[4] = self;
  v6[5] = &v7;
  [_persistentStoreCoordinator performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __36__NSXPCStore_currentQueryGeneration__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 9;
  }

  v21 = 0;
  v4 = [(NSXPCStore *)*(a1 + 32) sendMessage:v2 fromContext:0 interrupts:&v20 error:&v21];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v7 = [_NSXPCStoreUtilities decodeSecureArchivedData:v4 usingDelegate:v5 classes:v6];
    if (v7)
    {
      goto LABEL_25;
    }

    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    IsLogEnabled = _NSCoreDataIsLogEnabled(8);
    v10 = "Unable to decode query generation";
    if (IsLogEnabled && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode query generation\n", buf, 2u);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to decode query generation\n", buf, 2u);
        }
      }

      v10 = "Unable to decode query generation";
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    v12 = _NSCoreDataIsLogEnabled(8);
    v10 = "Nil result for query generation request";
    if (v12 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v13 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Nil result for query generation request\n", buf, 2u);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil result for query generation request\n", buf, 2u);
        }
      }

      v10 = "Nil result for query generation request";
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v16 = 1;
  }

  else
  {
    v16 = 8;
  }

  _NSCoreDataLog_console(v16, v10);
  objc_autoreleasePoolPop(v8);
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
  [_NSXPCStoreUtilities logMessage:v17 forComponent:?];
  v7 = 0;
LABEL_25:
  result = v7;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_hasActiveGenerations
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _persistentStoreCoordinator = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NSXPCStore__hasActiveGenerations__block_invoke;
  v5[3] = &unk_1E6EC1330;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [_persistentStoreCoordinator performBlockAndWait:v5];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__35__NSXPCStore__hasActiveGenerations__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 17;
  }

  v21 = 0;
  v4 = [(NSXPCStore *)*(a1 + 32) sendMessage:v2 fromContext:0 interrupts:&v20 error:&v21];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v7 = [_NSXPCStoreUtilities decodeSecureArchivedData:v4 usingDelegate:v5 classes:v6];
    if (v7)
    {
      goto LABEL_25;
    }

    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    IsLogEnabled = _NSCoreDataIsLogEnabled(8);
    v10 = "Unable to decode active generations result";
    if (IsLogEnabled && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode active generations result\n", buf, 2u);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to decode active generations result\n", buf, 2u);
        }
      }

      v10 = "Unable to decode active generations result";
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    v12 = _NSCoreDataIsLogEnabled(8);
    v10 = "Nil result for active generations request";
    if (v12 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v13 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Nil result for active generations request\n", buf, 2u);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil result for active generations request\n", buf, 2u);
        }
      }

      v10 = "Nil result for active generations request";
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v16 = 1;
  }

  else
  {
    v16 = 8;
  }

  _NSCoreDataLog_console(v16, v10);
  objc_autoreleasePoolPop(v8);
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
  [_NSXPCStoreUtilities logMessage:v17 forComponent:?];
  v7 = 0;
LABEL_25:
  result = [v7 BOOLValue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)freeQueryGenerationWithIdentifier:(id)identifier
{
  objc_initWeak(&location, self);
  _persistentStoreCoordinator = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__NSXPCStore_freeQueryGenerationWithIdentifier___block_invoke;
  v6[3] = &unk_1E6EC1308;
  objc_copyWeak(&v7, &location);
  v6[4] = identifier;
  [_persistentStoreCoordinator performBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__NSXPCStore_freeQueryGenerationWithIdentifier___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v3 = Weak;
    v4 = *(a1 + 32);
    [(NSGenerationalRowCache *)Weak[18] removeRowCacheForGenerationWithIdentifier:v4];
    v5 = objc_alloc_init(NSCoreDataXPCMessage);
    v6 = v5;
    if (v5)
    {
      v5->_messageCode = 10;
    }

    v7 = [_NSQueryGenerationToken alloc];
    if (v7)
    {
      v8 = [(_NSQueryGenerationToken *)v7 initWithValue:v4 store:v3 freeValueOnDealloc:0];
    }

    else
    {
      v8 = 0;
    }

    v9 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v8];

    if (v6)
    {
      objc_setProperty_nonatomic(v6, v10, v9, 24);
    }

    v17 = 0;
    v11 = [(NSXPCStore *)v3 sendMessage:v6 fromContext:0 interrupts:&v16 error:&v17];
    if (!v11 || (v12 = v11, v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], (v14 = +[_NSXPCStoreUtilities decodeSecureArchivedData:usingDelegate:classes:](_NSXPCStoreUtilities, v12, v3, v13)) == 0) || (objc_msgSend(v14, "BOOLValue") & 1) == 0)
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17);
      [_NSXPCStoreUtilities logMessage:v15 forComponent:?];
    }
  }
}

- (id)reopenQueryGenerationWithIdentifier:(id)identifier error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v6 = [(NSPersistentStore *)self _persistentStoreCoordinator:identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NSXPCStore_reopenQueryGenerationWithIdentifier_error___block_invoke;
  v9[3] = &unk_1E6EC1388;
  v9[4] = identifier;
  v9[5] = self;
  v9[6] = &v10;
  [v6 performBlockAndWait:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

id __56__NSXPCStore_reopenQueryGenerationWithIdentifier_error___block_invoke(void *a1)
{
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 11;
  }

  v4 = [_NSQueryGenerationToken alloc];
  if (v4)
  {
    v5 = [(_NSQueryGenerationToken *)v4 initWithValue:a1[5] store:0 freeValueOnDealloc:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v5];

  if (v3)
  {
    objc_setProperty_nonatomic(v3, v7, v6, 24);
  }

  v16 = 0;
  v8 = [(NSXPCStore *)a1[5] sendMessage:v3 fromContext:0 interrupts:&v15 error:&v16];
  if (!v8 || (v9 = v8, v10 = a1[5], v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], (v12 = +[_NSXPCStoreUtilities decodeSecureArchivedData:usingDelegate:classes:](_NSXPCStoreUtilities, v9, v10, v11)) == 0))
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16);
    [_NSXPCStoreUtilities logMessage:v13 forComponent:?];
    v12 = 0;
  }

  result = v12;
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)cacheFetchedRows:(void *)rows forManagedObjects:(void *)objects generation:
{
  if (self)
  {
    v6 = [(NSGenerationalRowCache *)*(self + 144) rowCacheForGeneration:objects];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    v8 = v7;
    v9 = [a2 count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      while (1)
      {
        v12 = [a2 objectAtIndex:v11];
        objectID = [v12 objectID];
        v14 = [[NSIncrementalStoreNode alloc] initWithObjectID:objectID fromSQLRow:v12];
        v15 = [[NSXPCRow alloc] initWithNode:v14];
        v16 = v15;
        if (v15)
        {
          v15->super._birth = v8;
        }

        v17 = [rows objectAtIndex:v11];
        if (!v17)
        {
          goto LABEL_9;
        }

        v18 = *(v17 + 16);
        if ((v18 & 0x200) == 0)
        {
          break;
        }

        if (!v16 || atomic_fetch_add(v16 + 3, 0) >= 1)
        {
          goto LABEL_14;
        }

LABEL_13:
        atomic_fetch_add_explicit(v16 + 3, 1u, memory_order_relaxed);
LABEL_14:
        [(NSPersistentStoreCache *)v6 registerRow:v16 forObjectID:objectID options:0];

        if (v10 == ++v11)
        {
          return;
        }
      }

      *(v17 + 16) = v18 | 0x200;
LABEL_9:
      if (!v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }
}

- (void)decodePrefetchArray:(void *)array forSources:(NSManagedObjectContext *)sources context:
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [(NSXPCStore *)self decodePrefetchResult:v12 forSources:array context:sources];
        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

- (NSPersistentStore)executeFetchRequest:(NSManagedObjectContext *)request withContext:(NSFetchRequest *)context error:
{
  contextCopy = context;
  requestCopy = request;
  v116 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v103 = 0;
  v96 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (+[NSXPCStore debugDefault])
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v115 = a2;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Executing fetch %@\n", buf, 0xCu);
        }
      }

      else
      {
        v8 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v115 = a2;
          _os_log_impl(&dword_18565F000, v8, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Executing fetch %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = 1;
    }

    else
    {
      v9 = 8;
    }

    _NSCoreDataLog_console(v9, "Executing fetch %@", a2);
    objc_autoreleasePoolPop(v6);
  }

  if ([(NSFetchRequest *)a2 fetchBatchSize]&& ![(NSFetchRequest *)a2 resultType])
  {
    v10 = [(NSFetchRequest *)a2 copy];
    [(NSFetchRequest *)v10 setResultType:1];
    [(NSFetchRequest *)v10 setFetchBatchSize:0];
    v95 = 1;
    v94 = a2;
    a2 = v10;
  }

  else
  {
    v95 = 0;
    v94 = 0;
  }

  v11 = atomic_load(_MergedGlobals_122);
  if ((v11 & 1) == 0 && [(NSFetchRequest *)a2 resultType]== 2 && ![(NSFetchRequest *)a2 allocationType]&& ![(NSFetchRequest *)a2 fetchBatchSize]&& [(NSFetchRequest *)a2 _isEditable])
  {
    _allowAncillaryEntities = [(NSManagedObjectContext *)requestCopy _allowAncillaryEntities];
    v13 = a2 ? _allowAncillaryEntities : 1;
    if ((v13 & 1) == 0)
    {
      a2->_flags = (*&a2->_flags & 0xFFFE3FFF | 0x4000);
    }
  }

  v14 = +[NSSQLCore bufferedAllocationsOverride];
  if (v14 >= 1 && [(NSFetchRequest *)a2 resultType]== 2 && [(NSFetchRequest *)a2 _isEditable])
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [(NSFetchRequest *)a2 setAllocationType:v15];
  }

  encodeForXPC = [(NSFetchRequest *)a2 encodeForXPC];
  v17 = objc_alloc_init(NSCoreDataXPCMessage);
  v18 = v17;
  if (v17)
  {
    v17->_messageCode = 2;
  }

  v19 = [(_NSQueryGenerationToken *)[(NSManagedObjectContext *)requestCopy _queryGenerationToken] _generationalComponentForStore:v5];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:{encodeForXPC, v19, 0}];
  }

  else
  {
    v20 = [MEMORY[0x1E695DEC8] arrayWithObject:encodeForXPC];
  }

  v22 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v20];
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v21, v22, 24);
  }

  v100 = v5;
  v23 = [(NSXPCStore *)v5 sendMessage:v18 fromContext:requestCopy interrupts:&v102 error:&v103];

  if (!v23)
  {
    if (v103)
    {
      userInfo = [(NSFetchRequest *)v103 userInfo];
      v41 = [userInfo objectForKey:@"exception info"];
      v42 = [v41 objectForKey:@"controlled exception"];
      if (v41)
      {
        if (([v42 BOOLValue] & 1) == 0)
        {
          v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{userInfo), userInfo}];
          if (v43)
          {
            objc_exception_throw(v43);
          }
        }
      }
    }

    v34 = 0;
    goto LABEL_66;
  }

  if ([(NSManagedObjectContext *)requestCopy _allowAncillaryEntities]&& [(NSFetchRequest *)a2 _isEditable])
  {
    [(NSFetchRequest *)a2 _resolveEntityWithContext:requestCopy];
  }

  v24 = NSSet_EmptySet;
  v25 = -[NSManagedObjectModel _allowedClassesFromTransformableAttributes]([-[NSPersistentStore model](v100 "model")]);
  if ([v24 count])
  {
    v25 = [v24 setByAddingObjectsFromSet:v25];
  }

  v26 = [+[_NSXPCStoreUtilities classesForFetchArchive](_NSXPCStoreUtilities) setByAddingObjectsFromSet:v25];
  v99 = [_NSXPCStoreUtilities decodeSecureArchivedData:v23 usingDelegate:v100 classes:v26];
  if ([v99 count])
  {
    v27 = [(_NSQueryGenerationToken *)[(NSManagedObjectContext *)requestCopy _queryGenerationToken] _generationalComponentForStore:v100];
    v28 = [v99 objectAtIndex:0];
    resultType = [(NSFetchRequest *)a2 resultType];
    v30 = resultType;
    if (resultType != 4)
    {
      if (resultType)
      {
        v44 = 0;
        v45 = 0;
      }

      else
      {
        v44 = ![(NSFetchRequest *)a2 _disablePersistentStoreResultCaching];
        v45 = [(NSArray *)[(NSFetchRequest *)a2 propertiesToFetch] count]!= 0;
      }

      v112 = 0;
      if ([(NSFetchRequest *)a2 allocationType]== 1 || [(NSFetchRequest *)a2 allocationType]== 2)
      {
        if (v44)
        {
          v54 = &v112;
        }

        else
        {
          v54 = 0;
        }

        v97 = [_NSXPCStoreUtilities _decodeBufferResultSetData:v28 forFetchRequest:a2 options:0 store:v100 context:requestCopy rowCacheRows:v54 error:&v103];
      }

      else
      {
        if (v44)
        {
          v59 = &v112;
        }

        else
        {
          v59 = 0;
        }

        v97 = [_NSXPCStoreUtilities _decodeResultSetData:v28 forFetchRequest:a2 options:0 store:v100 context:requestCopy rowCacheRows:v59 error:&v103];
      }

      if (v112 != 0 && !v45 && ((v44 ^ 1) & 1) == 0)
      {
        [(NSXPCStore *)v100 cacheFetchedRows:v112 forManagedObjects:v97 generation:v27];
      }

      if (!v30)
      {
        if (v45)
        {
          v93 = [(_PFBatchFaultingArray *)v97 count];
          if (v93)
          {
            defaultFaultHandler = v100->_defaultFaultHandler;
            _objectsPointer = [(_PFBatchFaultingArray *)v97 _objectsPointer];
            v60 = *_objectsPointer;
            array = [MEMORY[0x1E695DF70] array];
            v62 = [MEMORY[0x1E695DFA8] set];
            array2 = [MEMORY[0x1E695DF70] array];
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            mapping = [v60 mapping];
            v65 = [mapping countByEnumeratingWithState:&v108 objects:buf count:16];
            if (v65)
            {
              v66 = *v109;
              do
              {
                for (i = 0; i != v65; ++i)
                {
                  if (*v109 != v66)
                  {
                    objc_enumerationMutation(mapping);
                  }

                  v68 = [(NSDictionary *)[(NSEntityDescription *)[(NSFetchRequest *)a2 entity] propertiesByName] objectForKey:*(*(&v108 + 1) + 8 * i)];
                  v69 = v68;
                  if (v68 && ([v68 _entitysReferenceID] & 0x8000000000000000) == 0)
                  {
                    [array addObject:v69];
                    [v62 addObject:v69];
                  }
                }

                v65 = [mapping countByEnumeratingWithState:&v108 objects:buf count:16];
              }

              while (v65);
            }

            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            propertiesToFetch = [(NSFetchRequest *)a2 propertiesToFetch];
            v71 = [(NSArray *)propertiesToFetch countByEnumeratingWithState:&v104 objects:v113 count:16];
            v72 = _objectsPointer;
            if (v71)
            {
              v73 = *v105;
              do
              {
                for (j = 0; j != v71; ++j)
                {
                  if (*v105 != v73)
                  {
                    objc_enumerationMutation(propertiesToFetch);
                  }

                  v75 = *(*(&v104 + 1) + 8 * j);
                  if ([v75 isTransient])
                  {
                    [array2 addObject:v75];
                    if (([v75 _entitysReferenceID] & 0x8000000000000000) == 0)
                    {
                      [v62 addObject:{objc_msgSend(v75, "name")}];
                    }
                  }
                }

                v71 = [(NSArray *)propertiesToFetch countByEnumeratingWithState:&v104 objects:v113 count:16];
              }

              while (v71);
            }

            v76 = v93;
            v77 = defaultFaultHandler;
            do
            {
              v78 = *v72;
              values = [*v72 values];
              v80 = [NSManagedObjectContext _retainedObjectWithID:requestCopy optionalHandler:*values withInlineStorage:v77];
              _PFFaultHandlerFulfillPartialFault(v77, v80, requestCopy, values, array, v62, array2);
              *v72 = v80;

              ++v72;
              --v76;
            }

            while (v76);
          }
        }

        else
        {
          v86 = v100->_defaultFaultHandler;
          v87 = [v112 count];
          if (v87)
          {
            for (k = 0; k != v87; ++k)
            {
              v89 = [(_PFBatchFaultingArray *)v97 objectAtIndex:k];
              _PFFaultHandlerFulfillFault(v86, v89, requestCopy, [v112 objectAtIndex:k], 0);
            }
          }
        }
      }

      if ([v99 count] >= 2)
      {
        -[NSXPCStore decodePrefetchArray:forSources:context:](v100, [v99 objectAtIndex:1], v97, requestCopy);
      }

      goto LABEL_52;
    }

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v99 = [_NSXPCStoreUtilities decodeSecureArchivedData:v28 usingDelegate:v100 classes:v33];
  }

  v97 = v99;
LABEL_52:
  v34 = v97;
  if (v95)
  {
    v35 = [(_PFBatchFaultingArray *)v97 count];
    v36 = MEMORY[0x1EEE9AC00](v35);
    v39 = &v90 - v38;
    if (v36 >= 0x201)
    {
      v39 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v90 - v38, 8 * v37);
    }

    [(_PFBatchFaultingArray *)v34 getObjects:v39 range:0, v35];
    v46 = [[_PFArray alloc] initWithObjects:v39 count:v35 andFlags:27];
    if (v35 >= 0x201)
    {
      NSZoneFree(0, v39);
    }

    v47 = [_PFBatchFaultingArray alloc];
    v34 = [(_PFBatchFaultingArray *)v47 initWithPFArray:v46 andRequest:v94 andContext:requestCopy];
  }

LABEL_66:
  if (+[NSXPCStore debugDefault])
  {
    v48 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    IsLogEnabled = _NSCoreDataIsLogEnabled(8);
    v50 = _pflogging_enable_oslog > 0 && IsLogEnabled;
    if (v34)
    {
      if (v50)
      {
        if (_pflogging_catastrophic_mode)
        {
          v51 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = [(_PFBatchFaultingArray *)v34 count];
            *buf = 134217984;
            v115 = v52;
            _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch retrieved %lu results from server\n", buf, 0xCu);
          }
        }

        else
        {
          v55 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [(_PFBatchFaultingArray *)v34 count];
            *buf = 134217984;
            v115 = v56;
            _os_log_impl(&dword_18565F000, v55, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch retrieved %lu results from server\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v57 = [(_PFBatchFaultingArray *)v34 count];
        v58 = 1;
      }

      else
      {
        v57 = [(_PFBatchFaultingArray *)v34 count];
        v58 = 8;
      }

      _NSCoreDataLog_console(v58, "Fetch retrieved %lu results from server", v57);
      objc_autoreleasePoolPop(v48);
    }

    else
    {
      if (v50)
      {
        if (_pflogging_catastrophic_mode)
        {
          v53 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v115 = v103;
            _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch retrieved null, error %@\n", buf, 0xCu);
          }
        }

        else
        {
          v81 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v115 = v103;
            _os_log_impl(&dword_18565F000, v81, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch retrieved null, error %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v82 = 1;
      }

      else
      {
        v82 = 8;
      }

      _NSCoreDataLog_console(v82, "Fetch retrieved null, error %@", v103);
      objc_autoreleasePoolPop(v48);
    }
  }

  v83 = v103;
  [v96 drain];
  v84 = v103;
  v85 = 0;

  if (contextCopy)
  {
    if (v103)
    {
      *contextCopy = v103;
    }
  }

  return v34;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:generation];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [ds countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(ds);
        }

        [(NSPersistentStoreCache *)v5 incrementRefCountForObjectID:?];
      }

      while (v7 != v9);
      v7 = [ds countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:generation];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [ds countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(ds);
        }

        [(NSPersistentStoreCache *)v5 decrementRefCountForObjectID:?];
      }

      while (v7 != v9);
      v7 = [ds countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_commitChangesForRequestContext:(uint64_t)context
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSGenerationalRowCache *)*(context + 144) rowCacheForGeneration:?];
  v29 = a2;
  v6 = -[NSGenerationalRowCache rowCacheForGeneration:](*(context + 144), [objc_msgSend(a2 "managedObjectContext")]);
  if ([v4 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      v11 = v5 == v6 || v6 == 0;
      v12 = 0x1EA8C5000uLL;
      v30 = *v37;
      do
      {
        v13 = 0;
        v31 = v8;
        do
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v14 = *(*(&v36 + 1) + 8 * v13);
          if (v11)
          {
            v15 = [(NSPersistentStoreCache *)v5 rowForObjectID:*&NSSQLDistantPastTimeInterval afterTimestamp:?];
            v16 = [v4 objectForKey:v14];
            v17 = v16;
            if (v15)
            {
              v18 = v11;
              v19 = v4;
              if (v16)
              {
                v20 = *(v16 + *(v12 + 784));
              }

              else
              {
                v20 = 0;
              }

              v21 = v12;
              version = [v20 version];
              if (version == [*(v15 + *(v21 + 784)) version])
              {
                [(NSPersistentCacheRow *)v17 updateMissingRelationshipCachesFromOriginal:v15];
              }

              [(NSPersistentStoreCache *)v5 registerRow:v17 forObjectID:v14 options:0];
              v12 = v21;
              v4 = v19;
              v11 = v18;
              v9 = v30;
              v8 = v31;
            }

            else
            {
              [(NSPersistentStoreCache *)v5 registerRow:v16 forObjectID:v14 options:0];
            }
          }

          else
          {
            [(NSPersistentStoreCache *)v5 forgetRowForObjectID:?];
          }

          ++v13;
        }

        while (v8 != v13);
        v23 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
        v8 = v23;
      }

      while (v23);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (v29)
  {
    deletedObjects = [v29[2] deletedObjects];
  }

  else
  {
    deletedObjects = 0;
  }

  result = [deletedObjects countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (result)
  {
    v26 = result;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(deletedObjects);
        }

        -[NSPersistentStoreCache forgetRowForObjectID:](v5, [*(*(&v32 + 1) + 8 * v28) objectID]);
        v28 = v28 + 1;
      }

      while (v26 != v28);
      result = [deletedObjects countByEnumeratingWithState:&v32 objects:v40 count:16];
      v26 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)_executeSaveRequestForContext:(uint64_t *)context error:
{
  managedObjectContext = [a2 managedObjectContext];
  v7 = objc_alloc_init(NSCoreDataXPCMessage);
  v8 = v7;
  if (v7)
  {
    v7->_messageCode = 3;
    newEncodedSaveRequest = [(NSXPCSaveRequestContext *)a2 newEncodedSaveRequest];
    objc_setProperty_nonatomic(v8, v10, newEncodedSaveRequest, 24);
  }

  else
  {
    newEncodedSaveRequest = [(NSXPCSaveRequestContext *)a2 newEncodedSaveRequest];
  }

  v15 = 0;
  v11 = [(NSXPCStore *)self sendMessage:v8 fromContext:managedObjectContext interrupts:&v15 error:context];
  v12 = v11;
  if (a2)
  {
    a2[6] = v15;
  }

  if (v11)
  {
    v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v12 = [_NSXPCStoreUtilities decodeSecureArchivedData:v12 usingDelegate:self classes:v13];
    if ([objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{1), "isEqual:", v12}])
    {
      [(NSXPCStore *)self _commitChangesForRequestContext:a2];
    }
  }

  return v12;
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v172 = *MEMORY[0x1E69E9840];
  requestType = [request requestType];
  if (atomic_fetch_add_explicit(&self->_outstandingRequests, 1u, memory_order_relaxed) > -2)
  {
    if (requestType > 5)
    {
      if (requestType <= 7)
      {
        if (requestType != 6)
        {
          if (self)
          {
            [objc_msgSend(request "fetchRequest")];
            encodeForXPC = [request encodeForXPC];
            v12 = objc_alloc_init(NSCoreDataXPCMessage);
            v14 = v12;
            if (v12)
            {
              v12->_messageCode = 12;
              objc_setProperty_nonatomic(v12, v13, encodeForXPC, 24);
            }

            *buf = 0;
            v15 = [(NSXPCStore *)self sendMessage:v14 fromContext:context interrupts:&v162 error:buf];

            if (v15)
            {
              v16 = MEMORY[0x1E695DFD8];
              v17 = objc_opt_class();
              v18 = objc_opt_class();
              v19 = objc_opt_class();
              v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
              v21 = [_NSXPCStoreUtilities decodeSecureArchivedData:v15 usingDelegate:self classes:v20];
              v22 = v21;
              if (error && !v21)
              {
                *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433A28];
              }

              v23 = -[NSBatchDeleteResult initWithResultType:andObject:]([NSBatchDeleteResult alloc], "initWithResultType:andObject:", [request resultType], v22);
            }

            else
            {
              v23 = 0;
              if (error)
              {
                *error = *buf;
              }
            }

            goto LABEL_158;
          }

LABEL_76:
          v10 = 0;
          goto LABEL_160;
        }

        if (!self)
        {
          goto LABEL_76;
        }

        *&v162 = 0;
        [request _resolveEntityWithContext:context];
        encodeForXPC2 = [request encodeForXPC];
        if (!encodeForXPC2)
        {
          v82 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4339D8];
          if (v82)
          {
            goto LABEL_124;
          }

          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
            v160 = 1024;
            LODWORD(v161) = 1486;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v84 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_129;
          }

          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v160 = 1024;
          LODWORD(v161) = 1486;
          goto LABEL_226;
        }

        v56 = objc_alloc_init(NSCoreDataXPCMessage);
        v58 = v56;
        if (v56)
        {
          v56->_messageCode = 15;
          objc_setProperty_nonatomic(v56, v57, encodeForXPC2, 24);
        }

        v59 = [(NSXPCStore *)self sendMessage:v58 fromContext:context interrupts:v169 error:&v162];
        if (v59)
        {
          v60 = MEMORY[0x1E695DFD8];
          v61 = objc_opt_class();
          v62 = objc_opt_class();
          v63 = objc_opt_class();
          v64 = [v60 setWithObjects:{v61, v62, v63, objc_opt_class(), 0}];
          v65 = [_NSXPCStoreUtilities decodeSecureArchivedData:v59 usingDelegate:self classes:v64];
          if (v65)
          {
            v23 = -[NSBatchUpdateResult initWithResultType:andObject:]([NSBatchUpdateResult alloc], "initWithResultType:andObject:", [request resultType], v65);
            goto LABEL_158;
          }

          v93 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433A00];
          *&v162 = v93;
          if (v93)
          {
            goto LABEL_141;
          }

          v106 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
            v160 = 1024;
            LODWORD(v161) = 1505;
            _os_log_error_impl(&dword_18565F000, v106, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v95 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_157;
          }

          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v160 = 1024;
          LODWORD(v161) = 1505;
        }

        else
        {
          v93 = v162;
          if (v162)
          {
LABEL_141:
            if (error)
            {
              v23 = 0;
              *error = v93;
              goto LABEL_158;
            }

LABEL_157:
            v23 = 0;
            goto LABEL_158;
          }

          v94 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
            v160 = 1024;
            LODWORD(v161) = 1510;
            _os_log_error_impl(&dword_18565F000, v94, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v95 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_157;
          }

          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v160 = 1024;
          LODWORD(v161) = 1510;
        }

        _os_log_fault_impl(&dword_18565F000, v95, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        goto LABEL_157;
      }

      if (requestType == 8)
      {
        goto LABEL_34;
      }

      if (requestType == 10)
      {
        if (!error)
        {
          goto LABEL_76;
        }

        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:&unk_1EF433AA0];
LABEL_49:
        v10 = 0;
        *error = v35;
        goto LABEL_160;
      }

LABEL_47:
      if (!error)
      {
        goto LABEL_76;
      }

      v53 = MEMORY[0x1E696ABC0];
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid request type" forKey:@"Reason"];
      v35 = [v53 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v54];
      goto LABEL_49;
    }

    if (requestType == 1)
    {
      v52 = [(NSXPCStore *)&self->super.super executeFetchRequest:request withContext:context error:error];
LABEL_159:
      v10 = v52;
      goto LABEL_160;
    }

    if (requestType != 2)
    {
      if (requestType != 5)
      {
        goto LABEL_47;
      }

      if (!self)
      {
        goto LABEL_76;
      }

      *&v162 = 0;
      [(NSBatchInsertRequest *)request _resolveEntityWithSQLCore:?];
      encodeForXPC3 = [request encodeForXPC];
      v25 = objc_alloc_init(NSCoreDataXPCMessage);
      v27 = v25;
      if (v25)
      {
        v25->_messageCode = 16;
        objc_setProperty_nonatomic(v25, v26, encodeForXPC3, 24);
      }

      v28 = [(NSXPCStore *)self sendMessage:v27 fromContext:context interrupts:v169 error:&v162];
      if (v28)
      {
        v29 = MEMORY[0x1E695DFD8];
        v30 = objc_opt_class();
        v31 = objc_opt_class();
        v32 = objc_opt_class();
        v33 = [v29 setWithObjects:{v30, v31, v32, objc_opt_class(), 0}];
        v34 = [_NSXPCStoreUtilities decodeSecureArchivedData:v28 usingDelegate:self classes:v33];
        if (v34)
        {
          v23 = -[NSBatchInsertResult initWithResultType:andObject:]([NSBatchInsertResult alloc], "initWithResultType:andObject:", [request resultType], v34);
LABEL_158:
          v52 = v23;
          goto LABEL_159;
        }

        v85 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4339B0];
        *&v162 = v85;
        if (v85)
        {
          goto LABEL_113;
        }

        v105 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v160 = 1024;
          LODWORD(v161) = 1468;
          _os_log_error_impl(&dword_18565F000, v105, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v87 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_153;
        }

        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
        v160 = 1024;
        LODWORD(v161) = 1468;
      }

      else
      {
        v85 = v162;
        if (v162)
        {
LABEL_113:
          if (error)
          {
            v23 = 0;
            *error = v85;
            goto LABEL_158;
          }

LABEL_153:
          v23 = 0;
          goto LABEL_158;
        }

        v86 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v160 = 1024;
          LODWORD(v161) = 1473;
          _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v87 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_153;
        }

        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
        v160 = 1024;
        LODWORD(v161) = 1473;
      }

      _os_log_fault_impl(&dword_18565F000, v87, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      goto LABEL_153;
    }

    if (!self)
    {
      goto LABEL_129;
    }

    metadata = 0;
    *v169 = 0;
    v67 = atomic_load(&self->super.super._isMetadataDirty);
    if (v67)
    {
      metadata = [(NSXPCStore *)self metadata];
    }

    v68 = [[NSXPCSaveRequestContext alloc] initForStore:self request:request metadata:metadata forceInsertsToUpdates:0 context:context];
    v69 = [(NSXPCStore *)self _executeSaveRequestForContext:v68 error:v169];
    v10 = v69;
    if (!v69)
    {
      goto LABEL_147;
    }

    if (([(NSPersistentStore *)v69 BOOLValue]& 1) != 0)
    {
LABEL_149:

      goto LABEL_160;
    }

    if (v68)
    {
      v70 = v68[6];
      if (!v70)
      {
        v104 = 0;
        goto LABEL_144;
      }

      if ([objc_msgSend(request "insertedObjects")])
      {
        domain = [*v169 domain];
        v154 = *MEMORY[0x1E696A250];
        if ([*MEMORY[0x1E696A250] isEqual:domain])
        {
          if ([*v169 code] == 1555)
          {
            if (+[NSXPCStore debugDefault])
            {
              v72 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(8))
              {
                if (_pflogging_catastrophic_mode)
                {
                  log = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to resend what looks like it may be a reinsert\n", buf, 2u);
                  }
                }

                else
                {
                  logb = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_18565F000, logb, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to resend what looks like it may be a reinsert\n", buf, 2u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v139 = 1;
              }

              else
              {
                v139 = 8;
              }

              _NSCoreDataLog_console(v139, "Attempting to resend what looks like it may be a reinsert");
              objc_autoreleasePoolPop(v72);
            }

            *buf = 0;
            v140 = [[NSXPCSaveRequestContext alloc] initForStore:self request:request metadata:metadata forceInsertsToUpdates:1 context:context];
            v141 = [(NSXPCStore *)self _executeSaveRequestForContext:v140 error:buf];
            v10 = v141;
            if (!v141)
            {
              v104 = 0;
              LOBYTE(v70) = 0;
              goto LABEL_145;
            }

            if (([(NSPersistentStore *)v141 BOOLValue]& 1) != 0)
            {
              v104 = 0;
LABEL_243:
              LOBYTE(v70) = 1;
              goto LABEL_145;
            }

            if (+[NSXPCStore debugDefault])
            {
              v142 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(8))
              {
                if (_pflogging_catastrophic_mode)
                {
                  v143 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(v162) = 0;
                    _os_log_error_impl(&dword_18565F000, v143, OS_LOG_TYPE_ERROR, "CoreData: error: Reinsert hit optimistic locking error, will discard and let the next save resolve it.\n", &v162, 2u);
                  }
                }

                else
                {
                  v144 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v162) = 0;
                    _os_log_impl(&dword_18565F000, v144, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Reinsert hit optimistic locking error, will discard and let the next save resolve it.\n", &v162, 2u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v145 = 1;
              }

              else
              {
                v145 = 8;
              }

              _NSCoreDataLog_console(v145, "Reinsert hit optimistic locking error, will discard and let the next save resolve it.");
              objc_autoreleasePoolPop(v142);
            }

            if ([v154 isEqual:{objc_msgSend(*buf, "domain")}] && objc_msgSend(*buf, "code") == 134050)
            {
              [(NSXPCStore *)self _commitChangesForRequestContext:v140];
              v104 = 1;
              v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
              goto LABEL_243;
            }

            LOBYTE(v70) = 0;
            v10 = 0;
            if (error)
            {
              *error = *v169;
            }

            v104 = 1;
LABEL_145:
            if ((v104 & 1) == 0 && (v70 & 1) == 0)
            {
LABEL_147:
              v10 = 0;
              if (error)
              {
                *error = *v169;
              }

              goto LABEL_149;
            }

            goto LABEL_149;
          }
        }
      }

      if ([*v169 code] == 134050)
      {
        domain2 = [*v169 domain];
        if ([domain2 isEqualToString:*MEMORY[0x1E696A250]])
        {
          v99 = objc_msgSend_valueForKey_([*v169 userInfo]);
          v100 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:?];
          v164 = 0u;
          v165 = 0u;
          v162 = 0u;
          v163 = 0u;
          v101 = [v99 countByEnumeratingWithState:&v162 objects:buf count:16];
          if (v101)
          {
            v102 = *v163;
            do
            {
              for (i = 0; i != v101; ++i)
              {
                if (*v163 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                -[NSPersistentStoreCache forgetRowForObjectID:](v100, [objc_msgSend(*(*(&v162 + 1) + 8 * i) "sourceObject")]);
              }

              v101 = [v99 countByEnumeratingWithState:&v162 objects:buf count:16];
            }

            while (v101);
          }
        }
      }
    }

    v104 = 0;
    LOBYTE(v70) = 0;
LABEL_144:
    v10 = 0;
    goto LABEL_145;
  }

  atomic_fetch_add_explicit(&self->_outstandingRequests, 0xFFFFFFFF, memory_order_relaxed);
  if (requestType != 8)
  {
    if (requestType == 1)
    {
      return NSArray_EmptyArray;
    }

    goto LABEL_26;
  }

  if ([request isDelete])
  {
LABEL_26:
    v10 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134098 userInfo:0];
    }

    return v10;
  }

  v36 = [NSPersistentHistoryResult alloc];
  resultType = [request resultType];
  [(NSPersistentHistoryResult *)v36 initWithResultType:resultType andResult:MEMORY[0x1E695E0F0]];
LABEL_34:
  if (!self)
  {
LABEL_129:
    v10 = 0;
    goto LABEL_160;
  }

  v156 = 0;
  if (!objc_msgSend_valueForKey_([(NSPersistentStore *)self options]))
  {
    v73 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v74 = _pflogging_catastrophic_mode;
      v75 = _PFLogGetLogStream(1);
      v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
      if (v74)
      {
        if (v76)
        {
          goto LABEL_227;
        }
      }

      else if (v76)
      {
LABEL_227:
        *buf = 138412546;
        *&buf[4] = [(NSPersistentStore *)self identifier];
        v160 = 2112;
        v161 = [(NSPersistentStore *)self URL];
        _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, "CoreData: error: History Change Request failed as no history tracking option detected on store %@ at %@\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "History Change Request failed as no history tracking option detected on store %@ at %@", [(NSPersistentStore *)self identifier], [(NSPersistentStore *)self URL]);
    objc_autoreleasePoolPop(v73);
    v82 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:&unk_1EF433A50];
    v156 = v82;
    if (v82)
    {
      goto LABEL_124;
    }

    v97 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
      v160 = 1024;
      LODWORD(v161) = 1557;
      _os_log_error_impl(&dword_18565F000, v97, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v84 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
    v160 = 1024;
    LODWORD(v161) = 1557;
LABEL_226:
    _os_log_fault_impl(&dword_18565F000, v84, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_129;
  }

  if ([request token] && !objc_msgSend(objc_msgSend(objc_msgSend(request, "token"), "storeTokens"), "objectForKey:", -[NSPersistentStore identifier](self, "identifier")))
  {
    v88 = MEMORY[0x1E696ABC0];
    *v169 = @"Reason";
    v89 = MEMORY[0x1E696AEC0];
    token = [request token];
    identifier = [(NSPersistentStore *)self identifier];
    *&v162 = objc_msgSend_stringWithFormat_(v89, token, [MEMORY[0x1E695DEC8] arrayWithObjects:&identifier count:1]);
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:v169 count:1];
    v82 = [v88 errorWithDomain:*MEMORY[0x1E696A250] code:134501 userInfo:v91];
    v156 = v82;
    if (!v82)
    {
      v92 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
        v160 = 1024;
        LODWORD(v161) = 1564;
        _os_log_error_impl(&dword_18565F000, v92, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v84 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_129;
      }

      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
      v160 = 1024;
      LODWORD(v161) = 1564;
      goto LABEL_226;
    }

LABEL_124:
    if (error)
    {
      v10 = 0;
      *error = v82;
      goto LABEL_160;
    }

    goto LABEL_129;
  }

  if ([request isDelete])
  {
    encodeForXPC4 = [request encodeForXPC];
    v39 = objc_alloc_init(NSCoreDataXPCMessage);
    v41 = v39;
    if (v39)
    {
      v39->_messageCode = 13;
      objc_setProperty_nonatomic(v39, v40, encodeForXPC4, 24);
    }

    v42 = [(NSXPCStore *)self sendMessage:v41 fromContext:context interrupts:buf error:&v156];
    if (v42)
    {
      v153 = MEMORY[0x1E695DFD8];
      logc = objc_opt_class();
      v148 = objc_opt_class();
      v147 = objc_opt_class();
      v146 = objc_opt_class();
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = objc_opt_class();
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = [v153 setWithObjects:{logc, v148, v147, v146, v43, v44, v45, v46, v47, objc_opt_class(), 0}];
      v49 = [_NSXPCStoreUtilities decodeSecureArchivedData:v42 usingDelegate:self classes:v48];
      v50 = v49;
      if (error && !v49)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433A78];
      }

      v51 = -[NSPersistentHistoryResult initWithResultType:andResult:]([NSPersistentHistoryResult alloc], "initWithResultType:andResult:", [request resultType], v50);
    }

    else
    {
      v51 = 0;
      if (error)
      {
        *error = v156;
      }
    }

    v52 = v51;
    goto LABEL_159;
  }

  contextCopy = context;
  if (!context)
  {
    contextCopy = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)contextCopy setPersistentStoreCoordinator:[(NSPersistentStore *)self persistentStoreCoordinator]];
  }

  [(NSManagedObjectContext *)contextCopy _setAllowAncillaryEntities:1];
  if ([request token])
  {
    v77 = [(NSPersistentHistoryChangeRequest *)request fetchRequestDescribingTokenCheckForStore:?];
    if (v77)
    {
      v78 = [(NSXPCStore *)&self->super.super executeFetchRequest:v77 withContext:contextCopy error:&v156];
      if (-[NSPersistentStore count](v78, "count") && ([-[NSPersistentStore firstObject](v78 "firstObject")] & 1) == 0)
      {
        v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSURL *)[(NSPersistentStore *)self URL] path]);
        v80 = MEMORY[0x1E696ABC0];
        *v169 = v79;
        identifier = @"message";
        v167 = @"NSStoreUUID";
        identifier2 = [(NSPersistentStore *)self identifier];
        v168 = *MEMORY[0x1E696A368];
        path = [(NSURL *)[(NSPersistentStore *)self URL] path];
        v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&identifier count:3];
        v156 = [v80 errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:v81];
      }

      if (v156)
      {
        if (error)
        {
          *error = v156;
        }

        if (context)
        {
LABEL_88:
          [(NSManagedObjectContext *)contextCopy _setAllowAncillaryEntities:0];
          goto LABEL_129;
        }

LABEL_163:

        goto LABEL_129;
      }
    }
  }

  else if ([objc_msgSend(request "fetchRequest")])
  {
    v96 = -[_NSPersistentHistoryTransactionPredicateParser initWithPredicate:]([_NSPersistentHistoryTransactionPredicateParser alloc], "initWithPredicate:", [objc_msgSend(request "fetchRequest")]);
    *buf = 0;
    [(_NSPersistentHistoryTransactionPredicateParser *)v96 parse:buf];
    if (*buf)
    {
      if (error)
      {
        *error = *buf;
      }

      goto LABEL_129;
    }

    v108 = [-[_NSPersistentHistoryTransactionPredicateParser storeTokens](v96 "storeTokens")];
    if (v108)
    {
      v109 = [[NSFetchRequest alloc] initWithEntityName:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], +[_PFPersistentHistoryModel ancillaryModelNamespace], @"TRANSACTION")];
      [(NSFetchRequest *)v109 setIncludesSubentities:0];
      -[NSFetchRequest setPredicate:](v109, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"_pk = %@", v108]);
      [(NSFetchRequest *)v109 setResultType:4];
      v110 = [(NSXPCStore *)&self->super.super executeFetchRequest:v109 withContext:contextCopy error:&v156];

      if ([(NSPersistentStore *)v110 count])
      {
        if (([-[NSPersistentStore firstObject](v110 "firstObject")] & 1) == 0)
        {
          v111 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSURL *)[(NSPersistentStore *)self URL] path]);
          v112 = MEMORY[0x1E696ABC0];
          *v169 = v111;
          identifier = @"message";
          v167 = @"NSStoreUUID";
          identifier2 = [(NSPersistentStore *)self identifier];
          v168 = *MEMORY[0x1E696A368];
          path = [(NSURL *)[(NSPersistentStore *)self URL] path];
          v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&identifier count:3];
          v114 = [v112 errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:v113];
          v156 = v114;
          if (v114)
          {
            if (error)
            {
              *error = v114;
            }

            if (context)
            {
              goto LABEL_88;
            }

            goto LABEL_163;
          }
        }
      }
    }
  }

  v115 = [request resultType] == 2 || objc_msgSend(request, "resultType") == 6 || objc_msgSend(request, "resultType") == 0;
  loga = [(NSPersistentHistoryChangeRequest *)request fetchRequestDescribingChangeRequestForStore:?];
  if (v115)
  {
    v116 = 4;
  }

  else
  {
    v116 = 2 * ([request fetchBatchSize] == 0);
  }

  [(NSFetchRequest *)loga setResultType:v116];
  v117 = [(NSXPCStore *)&self->super.super executeFetchRequest:contextCopy withContext:&v156 error:?];
  if ([request resultType] == 5 && (objc_msgSend(objc_msgSend(request, "entityNameToFetch"), "isEqualToString:", @"CHANGE") & 1) == 0 && !objc_msgSend(request, "fetchBatchSize"))
  {
    v134 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPersistentStore count](v117, "count")}];
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v135 = [(NSPersistentStore *)v117 countByEnumeratingWithState:&v162 objects:buf count:16];
    if (v135)
    {
      v136 = *v163;
      do
      {
        for (j = 0; j != v135; ++j)
        {
          if (*v163 != v136)
          {
            objc_enumerationMutation(v117);
          }

          [v134 addObject:{objc_msgSend(*(*(&v162 + 1) + 8 * j), "objectForKey:", @"self"}];
        }

        v135 = [(NSPersistentStore *)v117 countByEnumeratingWithState:&v162 objects:buf count:16];
      }

      while (v135);
    }

    if ([v134 count])
    {
      v130 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:v134];
      v131 = [(NSPersistentHistoryChangeRequest *)v130 fetchRequestDescribingChangeRequestForStore:?];
      [(NSFetchRequest *)v131 setResultType:2];
      v138 = [(NSXPCStore *)&self->super.super executeFetchRequest:v131 withContext:contextCopy error:&v156];
      v124 = 0;
      if (!v156 && v138)
      {
        v157 = v117;
        v158 = v138;
        v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v157 count:2];
      }

      goto LABEL_229;
    }

LABEL_224:
    v124 = v117;
    goto LABEL_230;
  }

  if (([request resultType] == 1 || objc_msgSend(request, "resultType") == 4) && objc_msgSend(objc_msgSend(request, "entityNameToFetch"), "isEqualToString:", @"TRANSACTION"))
  {
    v118 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPersistentStore count](v117, "count")}];
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v119 = [(NSPersistentStore *)v117 countByEnumeratingWithState:&v162 objects:buf count:16];
    if (v119)
    {
      v120 = *v163;
      do
      {
        for (k = 0; k != v119; ++k)
        {
          if (*v163 != v120)
          {
            objc_enumerationMutation(v117);
          }

          [v118 addObject:{objc_msgSend(*(*(&v162 + 1) + 8 * k), "objectForKey:", @"self"}];
        }

        v119 = [(NSPersistentStore *)v117 countByEnumeratingWithState:&v162 objects:buf count:16];
      }

      while (v119);
    }

    if ([v118 count])
    {
      v122 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:v118];
      v123 = [(NSPersistentHistoryChangeRequest *)v122 fetchRequestDescribingChangeRequestForStore:?];
      [(NSFetchRequest *)v123 setResultType:2];
      v124 = [(NSXPCStore *)&self->super.super executeFetchRequest:v123 withContext:contextCopy error:&v156];
      v125 = v156;

      if (v125)
      {
        v124 = 0;
      }

      goto LABEL_230;
    }

    goto LABEL_211;
  }

  if ([request resultType] != 3 && objc_msgSend(request, "resultType") != 5 || !objc_msgSend(objc_msgSend(request, "entityNameToFetch"), "isEqualToString:", @"CHANGE"))
  {
    goto LABEL_224;
  }

  v126 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPersistentStore count](v117, "count")}];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v127 = [(NSPersistentStore *)v117 countByEnumeratingWithState:&v162 objects:buf count:16];
  if (v127)
  {
    v128 = *v163;
    do
    {
      for (m = 0; m != v127; ++m)
      {
        if (*v163 != v128)
        {
          objc_enumerationMutation(v117);
        }

        [v126 addObject:{objc_msgSend(*(*(&v162 + 1) + 8 * m), "objectForKey:", @"TRANSACTIONID"}];
      }

      v127 = [(NSPersistentStore *)v117 countByEnumeratingWithState:&v162 objects:buf count:16];
    }

    while (v127);
  }

  if ([v126 count])
  {
    v130 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:v126];
    [(NSPersistentHistoryChangeRequest *)v130 setResultType:3];
    v131 = [(NSPersistentHistoryChangeRequest *)v130 fetchRequestDescribingChangeRequestForStore:?];
    [(NSFetchRequest *)v131 setResultType:2];
    v132 = [(NSXPCStore *)&self->super.super executeFetchRequest:v131 withContext:contextCopy error:&v156];
    v124 = 0;
    if (!v156)
    {
      v133 = v132;
      if (v132)
      {
        if ([request resultType] == 5)
        {
          v157 = v133;
          v158 = v117;
          v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v157 count:2];
        }

        else
        {
          v124 = v133;
        }
      }
    }

LABEL_229:

    goto LABEL_230;
  }

LABEL_211:
  v124 = MEMORY[0x1E695E0F0];
LABEL_230:
  v10 = [NSPersistentHistoryResult _processResult:v124 forRequest:request withProvider:self];
  if (context)
  {
    [(NSManagedObjectContext *)contextCopy _setAllowAncillaryEntities:0];
  }

  else
  {
  }

LABEL_160:
  if (atomic_fetch_add_explicit(&self->_outstandingRequests, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    dispatch_semaphore_signal(self->_requestTerminationSem);
  }

  return v10;
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = &_pflogging_enable_oslog;
  v9 = &unk_1EA8C8000;
  if (+[NSXPCStore debugDefault])
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = d;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Firing fault %@\n", buf, 0xCu);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = d;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Firing fault %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 8;
    }

    _NSCoreDataLog_console(v13, "Firing fault %@", d);
    objc_autoreleasePoolPop(v10);
  }

  _queryGenerationToken = [context _queryGenerationToken];
  if ([_queryGenerationToken _isEnabled])
  {
    v15 = [(_NSQueryGenerationToken *)_queryGenerationToken _generationalComponentForStore:?];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v15];
  [context stalenessInterval];
  if (v17 != 0.0)
  {
    v18 = v17 <= 0.0 ? *&NSSQLDistantPastTimeInterval : CFAbsoluteTimeGetCurrent() - v17;
    v19 = [(NSPersistentStoreCache *)v16 rowForObjectID:d afterTimestamp:v18];
    if (v19)
    {
      v20 = *(v19 + 5);
      if (v20)
      {
        if (+[NSXPCStore debugDefault])
        {
          v21 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v22 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Returning cached value %@\n", buf, 0xCu);
              }
            }

            else
            {
              v62 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&dword_18565F000, v62, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Returning cached value %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v63 = 1;
          }

          else
          {
            v63 = 8;
          }

          _NSCoreDataLog_console(v63, "Returning cached value %@", v20);
          objc_autoreleasePoolPop(v21);
        }

        return v20;
      }
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  [array addObject:{objc_msgSend(d, "URIRepresentation")}];
  if (v15)
  {
    [array addObject:v15];
  }

  v24 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:array];
  v25 = objc_alloc_init(NSCoreDataXPCMessage);
  v27 = v25;
  if (v25)
  {
    v25->_messageCode = 5;
    objc_setProperty_nonatomic(v25, v26, v24, 24);
  }

  v79 = 0;
  v80 = 0;
  v28 = [(NSXPCStore *)self sendMessage:v27 fromContext:context interrupts:&v79 error:&v80];
  if (v28)
  {
    v29 = v28;
    v30 = +[_NSXPCStoreUtilities classesForSaveArchive];
    v31 = [v30 setByAddingObjectsFromSet:{-[NSManagedObjectModel _allowedClassesFromTransformableAttributes](objc_msgSend(-[NSXPCStore model](self, "model"), "managedObjectModel"))}];
    v32 = [_NSXPCStoreUtilities decodeSecureArchivedData:v29 usingDelegate:self classes:v31];
    if ([objc_msgSend(v32 objectAtIndex:{0), "integerValue"}] != 1)
    {
      if ([objc_msgSend(v32 objectAtIndex:{0), "integerValue"}] != 2)
      {
        v8 = &_pflogging_enable_oslog;
        errorCopy3 = error;
        if (error)
        {
          v38 = MEMORY[0x1E696ABC0];
          v39 = *MEMORY[0x1E696A250];
          v37 = 134060;
          v36 = 0;
          goto LABEL_57;
        }

LABEL_59:
        v57 = 0;
        goto LABEL_89;
      }

      v41 = [objc_msgSend(v32 objectAtIndex:{1), "firstObject"}];
      v42 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v42, "setEntity:", [d entity]);
      *buf = 0;
      v43 = [_NSXPCStoreUtilities _decodeResultSetData:v41 forFetchRequest:v42 options:1 store:&self->super.super context:context rowCacheRows:buf error:&v80];

      if ([(_PFArray *)v43 count])
      {
        lastObject = [*buf lastObject];
        v45 = lastObject;
      }

      else
      {
        lastObject = 0;
        v80 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134093 userInfo:0];
      }

      v9 = &unk_1EA8C8000;
      if (lastObject)
      {
        v64 = [context objectRegisteredForID:d];
        v65 = [MEMORY[0x1E695DEC8] arrayWithObject:lastObject];
        -[NSXPCStore cacheFetchedRows:forManagedObjects:generation:](self, v65, [MEMORY[0x1E695DEC8] arrayWithObject:v64], v15);
        v66 = [(NSPersistentStoreCache *)v16 rowForObjectID:d afterTimestamp:*&NSSQLDistantPastTimeInterval];
        v8 = &_pflogging_enable_oslog;
        if (v66)
        {
          v67 = *(v66 + 5);
        }

        else
        {
          v67 = 0;
        }

        v60 = 0x1E6EC0000;
        v57 = v67;
      }

      else
      {
        v57 = 0;
        v8 = &_pflogging_enable_oslog;
        if (error)
        {
          v60 = 0x1E6EC0000;
          if (v80)
          {
            v57 = 0;
            *error = v80;
          }
        }

        else
        {
          v60 = 0x1E6EC0000;
        }
      }

LABEL_87:

      goto LABEL_90;
    }

    if ([v32 count] == 1)
    {
      v8 = &_pflogging_enable_oslog;
      errorCopy3 = error;
      if (error)
      {
        v34 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A250];
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", d), @"NSAffectedObjectsErrorKey", 0}];
        v37 = 133000;
        v38 = v34;
        v39 = v35;
LABEL_57:
        v40 = [v38 errorWithDomain:v39 code:v37 userInfo:v36];
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    lastObject2 = [v32 lastObject];
    entity = [d entity];
    _propertyRangesByType = [entity _propertyRangesByType];
    v49 = _propertyRangesByType[7] + _propertyRangesByType[13] + 1;
    if ([lastObject2 count] != v49)
    {
      v57 = 0;
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Unexpected number of property values returned from server", @"Reason"}];
      }

      v8 = &_pflogging_enable_oslog;
      goto LABEL_89;
    }

    v50 = _propertyRangesByType[6];
    v51 = _propertyRangesByType[7];
    v76 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSEntityDescription *)entity knownKeysMappingStrategy]];
    knownKeyValuesPointer = [(NSKnownKeysDictionary *)v76 knownKeyValuesPointer];
    if (v51)
    {
      v52 = 0;
      v53 = knownKeyValuesPointer + 8 * v50;
      do
      {
        v54 = [lastObject2 objectAtIndex:v52];
        if (NSKeyValueCoding_NullValue != v54)
        {
          *(v53 + 8 * v52) = v54;
        }

        ++v52;
      }

      while (v51 != v52);
    }

    v55 = _propertyRangesByType[13];
    if (v55)
    {
      v56 = (knownKeyValuesPointer + 8 * _propertyRangesByType[12]);
      do
      {
        *v56++ = [lastObject2 objectAtIndex:v51++];
        --v55;
      }

      while (v55);
    }

    v57 = -[NSIncrementalStoreNode initWithObjectID:withValues:version:]([NSIncrementalStoreNode alloc], "initWithObjectID:withValues:version:", d, v76, [objc_msgSend(lastObject2 "lastObject")]);

    lastObject = [[NSXPCRow alloc] initWithNode:v57];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = &_pflogging_enable_oslog;
    if (lastObject)
    {
      lastObject->super._birth = v58;
    }

    _queryGenerationToken2 = [context _queryGenerationToken];
    v9 = &unk_1EA8C8000;
    v60 = 0x1E6EC0000;
    if ([_queryGenerationToken2 _isEnabled])
    {
      v61 = [(_NSQueryGenerationToken *)_queryGenerationToken2 _generationalComponentForStore:?];
    }

    else
    {
      v61 = 0;
    }

    v68 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v61];
    v69 = [context objectWithID:d];
    if (v69)
    {
      v70 = *(v69 + 16);
      if ((v70 & 0x200) != 0)
      {
        if (!lastObject || atomic_fetch_add(&lastObject->super._externalReferenceCount, 0) >= 1)
        {
          goto LABEL_86;
        }

LABEL_85:
        atomic_fetch_add_explicit(&lastObject->super._externalReferenceCount, 1u, memory_order_relaxed);
LABEL_86:
        [(NSPersistentStoreCache *)v68 registerRow:lastObject forObjectID:d options:0];
        goto LABEL_87;
      }

      *(v69 + 16) = v70 | 0x200;
    }

    if (!lastObject)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  errorCopy3 = error;
  if (!error)
  {
    goto LABEL_59;
  }

  v40 = v80;
LABEL_58:
  v57 = 0;
  *errorCopy3 = v40;
LABEL_89:
  v60 = 0x1E6EC0000uLL;
LABEL_90:

  if ([*(v60 + 3048) debugDefault])
  {
    v71 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && *v8 >= 1)
    {
      if (v9[530])
      {
        v72 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: error: Retrieved node from server %@\n", buf, 0xCu);
        }
      }

      else
      {
        v73 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_impl(&dword_18565F000, v73, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Retrieved node from server %@\n", buf, 0xCu);
        }
      }
    }

    if (v9[530])
    {
      v74 = 1;
    }

    else
    {
      v74 = 8;
    }

    _NSCoreDataLog_console(v74, "Retrieved node from server %@", v57);
    objc_autoreleasePoolPop(v71);
  }

  return v57;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  [context stalenessInterval];
  v12 = v11;
  _queryGenerationToken = [context _queryGenerationToken];
  if ([_queryGenerationToken _isEnabled])
  {
    v14 = [(_NSQueryGenerationToken *)_queryGenerationToken _generationalComponentForStore:?];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v14];
  if (v12 != 0.0)
  {
    v16 = v15;
    if (v12 <= 0.0)
    {
      v17 = *&NSSQLDistantPastTimeInterval;
    }

    else
    {
      v17 = CFAbsoluteTimeGetCurrent() - v12;
    }

    v18 = [(NSPersistentStoreCache *)v16 rowForObjectID:d afterTimestamp:v17];
    if (v18)
    {
      v19 = *(v18 + 5);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (!v20)
    {
      *buf = 0;
      v21 = [(NSXPCStore *)self newValuesForObjectWithID:d withContext:context error:buf];
      if (!v21)
      {
        if (error)
        {
          *error = *buf;
        }

        return 0;
      }

      v20 = v21;
    }

    v22 = [v20 valueForPropertyDescription:relationship];
    if (([relationship isToMany] & 1) == 0)
    {
      v24 = NSKeyValueCoding_NullValue;
      if (v22)
      {
        v24 = v22;
      }

      v23 = v24;
      goto LABEL_19;
    }

    if (v22)
    {
      v23 = v22;
LABEL_19:
      v25 = v23;

      return v25;
    }

    v25 = [(NSPersistentStoreCache *)v16 toManyForSourceObjectID:d forProperty:relationship afterTimestamp:v17];
    if (v25)
    {
      return v25;
    }
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v27 setValue:objc_msgSend(d forKey:{"URIRepresentation"), @"source"}];
  relationshipCopy = relationship;
  [v27 setValue:objc_msgSend(relationship forKey:{"name"), @"relationship"}];
  [v26 addObject:v27];

  if (v14)
  {
    [v26 addObject:v14];
  }

  v28 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v26];

  v29 = objc_alloc_init(NSCoreDataXPCMessage);
  v31 = v29;
  if (v29)
  {
    v29->_messageCode = 6;
    objc_setProperty_nonatomic(v29, v30, v28, 24);
  }

  v85 = 0;
  v32 = [(NSXPCStore *)self sendMessage:v31 fromContext:context interrupts:&v84 error:&v85];

  if (v32)
  {
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [_NSXPCStoreUtilities decodeSecureArchivedData:v32 usingDelegate:self classes:v36];
    relationshipCopy3 = relationship;
    v82 = v14;
    if (+[NSXPCStore debugDefault])
    {
      v39 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            name = [relationship name];
            *buf = 138412802;
            *&buf[4] = d;
            v97 = 2112;
            dCopy4 = name;
            v99 = 2112;
            v100 = v37;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoded value for %@ - %@ : %@\n", buf, 0x20u);
          }
        }

        else
        {
          v42 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [relationship name];
            *buf = 138412802;
            *&buf[4] = d;
            v97 = 2112;
            dCopy4 = name2;
            v99 = 2112;
            v100 = v37;
            _os_log_impl(&dword_18565F000, v42, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoded value for %@ - %@ : %@\n", buf, 0x20u);
          }
        }
      }

      dCopy = d;
      v45 = _pflogging_catastrophic_mode;
      name3 = [relationship name];
      v47 = v45 == 0;
      d = dCopy;
      v48 = 8;
      if (!v47)
      {
        v48 = 1;
      }

      _NSCoreDataLog_console(v48, "Decoded value for %@ - %@ : %@", dCopy, name3, v37);
      objc_autoreleasePoolPop(v39);
    }

    persistentStoreCoordinator = [context persistentStoreCoordinator];
    if ([relationship isToMany])
    {
      isOrdered = [relationship isOrdered];
      v51 = 0x1E695DFA0;
      if (!isOrdered)
      {
        v51 = 0x1E695DFA8;
      }

      v25 = objc_alloc_init(*v51);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v52 = [v37 countByEnumeratingWithState:&v86 objects:buf count:16];
      if (v52)
      {
        v53 = v52;
        dCopy2 = d;
        v54 = *v87;
        while (1)
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v87 != v54)
            {
              objc_enumerationMutation(v37);
            }

            v56 = *(*(&v86 + 1) + 8 * i);
            v57 = objc_autoreleasePoolPush();
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v66 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(8))
              {
                if (_pflogging_catastrophic_mode)
                {
                  v67 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    name4 = [relationship name];
                    *v90 = 138412802;
                    v91 = name4;
                    v92 = 2112;
                    v93 = dCopy2;
                    v94 = 2112;
                    v95 = v56;
                    _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: Got a bad relationship value for %@, %@ (%@)\n", v90, 0x20u);
                  }
                }

                else
                {
                  v77 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    name5 = [relationship name];
                    *v90 = 138412802;
                    v91 = name5;
                    v92 = 2112;
                    v93 = dCopy2;
                    v94 = 2112;
                    v95 = v56;
                    _os_log_impl(&dword_18565F000, v77, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got a bad relationship value for %@, %@ (%@)\n", v90, 0x20u);
                  }
                }
              }

              v69 = _pflogging_catastrophic_mode;
              name6 = [relationshipCopy name];
              v71 = 8;
              if (v69)
              {
                v71 = 1;
              }

              _NSCoreDataLog_console(v71, "Got a bad relationship value for %@, %@ (%@)", name6, dCopy2, v56);
              goto LABEL_73;
            }

            v58 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v56];
            if (v58)
            {
              [v25 addObject:v58];
            }

            objc_autoreleasePoolPop(v57);
          }

          v53 = [v37 countByEnumeratingWithState:&v86 objects:buf count:16];
          if (!v53)
          {
            d = dCopy2;
            relationshipCopy3 = relationship;
            break;
          }
        }
      }
    }

    else
    {
      v59 = NSKeyValueCoding_NullValue;
      if (v59 != [v37 lastObject])
      {
        lastObject = [v37 lastObject];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v66 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(8))
          {
            if (_pflogging_catastrophic_mode)
            {
              v72 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                name7 = [relationship name];
                *buf = 138412802;
                *&buf[4] = name7;
                v97 = 2112;
                dCopy4 = d;
                v99 = 2112;
                v100 = lastObject;
                _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: error: Got a bad relationship value for %@, %@ (%@)\n", buf, 0x20u);
              }
            }

            else
            {
              v79 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                name8 = [relationship name];
                *buf = 138412802;
                *&buf[4] = name8;
                v97 = 2112;
                dCopy4 = d;
                v99 = 2112;
                v100 = lastObject;
                _os_log_impl(&dword_18565F000, v79, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got a bad relationship value for %@, %@ (%@)\n", buf, 0x20u);
              }
            }
          }

          v74 = _pflogging_catastrophic_mode;
          name9 = [relationshipCopy name];
          v76 = 8;
          if (v74)
          {
            v76 = 1;
          }

          _NSCoreDataLog_console(v76, "Got a bad relationship value for %@, %@ (%@)", name9, d, lastObject);
LABEL_73:
          objc_autoreleasePoolPop(v66);
          __break(1u);
        }

        v61 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:lastObject];
        v62 = v82;
        if (v61)
        {
          v25 = v61;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_62;
      }

      v25 = NSKeyValueCoding_NullValue;
    }

    v62 = v82;
LABEL_62:
    if ([relationshipCopy3 isToMany])
    {
      v63 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v62];
      [objc_msgSend(MEMORY[0x1E695DF00] "date")];
      [NSPersistentStoreCache registerToMany:v63 withOrderKeys:v25 forSourceObjectID:0 forProperty:d options:relationshipCopy3 andTimestamp:v64];
    }

    return v25;
  }

  v25 = 0;
  if (error)
  {
    *error = v85;
  }

  return v25;
}

- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  if (![objects count])
  {
    return NSArray_EmptyArray;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v8 = [objects countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v69;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(objects);
        }

        v12 = [objc_msgSend(*(*(&v68 + 1) + 8 * i) "entity")];
        v13 = [dictionary objectForKey:v12];
        if (v13)
        {
          v14 = [v13 integerValue] + 1;
          v15 = MEMORY[0x1E696AD98];
        }

        else
        {
          v15 = MEMORY[0x1E696AD98];
          v14 = 1;
        }

        [dictionary setObject:objc_msgSend(v15 forKey:{"numberWithInteger:", v14), v12}];
      }

      v9 = [objects countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v9);
  }

  v16 = [dictionary count];
  v17 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:dictionary];
  v18 = objc_alloc_init(NSCoreDataXPCMessage);
  v20 = v18;
  if (v18)
  {
    v18->_messageCode = 4;
    objc_setProperty_nonatomic(v18, v19, v17, 24);
  }

  v67 = 0;
  v21 = -[NSXPCStore sendMessage:fromContext:interrupts:error:](self, v20, [objc_msgSend(objects "lastObject")], &v66, &v67);
  if (v21)
  {
    v22 = v21;
    v56 = v20;
    count = v16;
    errorCopy = error;
    v23 = MEMORY[0x1E695DFD8];
    selfCopy = self;
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v23 setWithObjects:{v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
    v31 = [_NSXPCStoreUtilities decodeSecureArchivedData:v22 usingDelegate:selfCopy classes:v30];
    if ([v31 count])
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      array = 0;
    }

    if ([v31 count] != count)
    {

      v48 = errorCopy;
      if (!errorCopy)
      {
        return 0;
      }

      v49 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A250];
      v51 = MEMORY[0x1E695DF20];
      v52 = @"Wrong number of object IDs returned from server";
      goto LABEL_43;
    }

    v33 = -[NSKnownKeysMappingStrategy initForKeys:]([NSKnownKeysMappingStrategy alloc], "initForKeys:", [v31 allKeys]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v63;
LABEL_24:
      v37 = 0;
      while (1)
      {
        if (*v63 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v62 + 1) + 8 * v37);
        v39 = [objc_msgSend(v31 objectForKey:{v38), "count"}];
        if (v39 != [objc_msgSend(dictionary objectForKey:{v38), "unsignedIntegerValue"}])
        {
          break;
        }

        if (v35 == ++v37)
        {
          v35 = [v33 countByEnumeratingWithState:&v62 objects:v73 count:16];
          if (v35)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }
      }

      v48 = errorCopy;
      if (!errorCopy)
      {
        return 0;
      }

      v49 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A250];
      v51 = MEMORY[0x1E695DF20];
      v52 = @"Wrong number of object IDs returned from server (2)";
LABEL_43:
      array = 0;
      *v48 = [v49 errorWithDomain:v50 code:134060 userInfo:{objc_msgSend(v51, "dictionaryWithObject:forKey:", v52, @"Reason"}];
      return array;
    }

LABEL_30:
    v40 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = [objects countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v59;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v59 != v43)
          {
            objc_enumerationMutation(objects);
          }

          v45 = [objc_msgSend(*(*(&v58 + 1) + 8 * j) "entity")];
          v46 = [v31 objectForKey:v45];
          v47 = [v33 indexForKey:v45];
          ++v40[v47];
          [array addObject:{objc_msgSend(v46, "objectAtIndex:")}];
        }

        v42 = [objects countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v42);
    }

    free(v40);
    v20 = v56;
  }

  else
  {
    array = 0;
    if (error)
    {
      *error = v67;
    }
  }

  return array;
}

- (id)newForeignKeyID:(int64_t)d entity:(id)entity
{
  if (!d)
  {
    return 0;
  }

  v5 = objc_alloc([(NSXPCStore *)self objectIDFactoryForSQLEntity:entity]);

  return [v5 initWithPK64:d];
}

+ (BOOL)_isOnExtendedTimeout
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NSXPCStore_Internal___isOnExtendedTimeout__block_invoke;
  block[3] = &unk_1E6EC1358;
  block[4] = &v5;
  if (_isOnExtendedTimeout_onceToken != -1)
  {
    dispatch_once(&_isOnExtendedTimeout_onceToken, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__44__NSXPCStore_Internal___isOnExtendedTimeout__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  result = [@"com.apple.internetaccounts" isEqual:v2];
  if ((result & 1) != 0 || (result = [@"com.apple.preferences.internetaccounts.remoteservices" isEqual:v2], result))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)_prepareStoreForRemovalFromCoordinator:(id)coordinator
{
  if ([(NSPersistentStore *)self _persistentStoreCoordinator]== coordinator)
  {
    os_unfair_lock_lock_with_options();
    if (coordinator && (v5 = self->_requestTerminationSem) != 0)
    {
      dispatch_retain(v5);
      requestTerminationSem = self->_requestTerminationSem;
      os_unfair_lock_unlock(&self->_stateLock);
      if (requestTerminationSem)
      {
        v7 = 0;
        atomic_compare_exchange_strong_explicit(&self->_outstandingRequests, &v7, 0xFFF0BDC1, memory_order_relaxed, memory_order_relaxed);
        if (v7)
        {
          do
          {
            v8 = dispatch_time(0, 10000000000);
            dispatch_semaphore_wait(requestTerminationSem, v8);
            v9 = 0;
            atomic_compare_exchange_strong_explicit(&self->_outstandingRequests, &v9, 0xFFF0BDC1, memory_order_relaxed, memory_order_relaxed);
          }

          while (v9);
        }

        os_unfair_lock_lock_with_options();
        v10 = self->_requestTerminationSem;
        if (v10)
        {
          dispatch_release(v10);
          self->_requestTerminationSem = 0;
        }

        os_unfair_lock_unlock(&self->_stateLock);

        dispatch_release(requestTerminationSem);
      }
    }

    else
    {

      os_unfair_lock_unlock(&self->_stateLock);
    }
  }
}

- (id)newObjectIDForEntity:(id)entity pk:(int64_t)pk
{
  v5 = objc_alloc([(NSXPCStore *)self objectIDFactoryForSQLEntity:entity]);

  return [v5 initWithPK64:pk];
}

- (char)_cachedRowForRelationship:(const void *)relationship onObjectWithID:(void *)d generation:
{
  if (result)
  {
    v6 = [(NSGenerationalRowCache *)*(result + 18) rowCacheForGeneration:d];
    v7 = *&NSSQLDistantPastTimeInterval;

    return [(NSPersistentStoreCache *)v6 toManyForSourceObjectID:relationship forProperty:a2 afterTimestamp:v7];
  }

  return result;
}

- (double)_cachedRowForObjectWithID:(void *)d generation:
{
  if (result)
  {
    v4 = [(NSGenerationalRowCache *)*(result + 18) rowCacheForGeneration:d];
    result = [(NSPersistentStoreCache *)v4 rowForObjectID:a2 afterTimestamp:*&NSSQLDistantPastTimeInterval];
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

- (void)_clearCachedRowForObjectWithID:(void *)d generation:
{
  if (result)
  {
    v4 = [(NSGenerationalRowCache *)*(result + 144) rowCacheForGeneration:d];

    [(NSPersistentStoreCache *)v4 forgetRowForObjectID:a2];
  }
}

- (void)decodePrefetchResult:(void *)result forSources:(NSManagedObjectContext *)sources context:
{
  resultCopy = result;
  v143 = *MEMORY[0x1E69E9840];
  v7 = [a2 objectAtIndex:0];
  v8 = [a2 objectAtIndex:1];
  v9 = [-[NSPersistentStore _persistentStoreCoordinator](self "_persistentStoreCoordinator")];
  if (v9 && (v10 = [*(v9 + 32) objectForKey:v8]) != 0)
  {
    v11 = [objc_msgSend(v10 "propertiesByName")];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 _propertyType] != 4)
  {
    return;
  }

  isToMany = [v11 isToMany];
  if (!v11)
  {
    return;
  }

  v13 = isToMany;
  v112 = [a2 objectAtIndex:2];
  v14 = [a2 count];
  if (v14 < 4)
  {
    return;
  }

  v15 = v14;
  v16 = [a2 objectAtIndex:3];
  if (!v16)
  {
    return;
  }

  v111 = v16;
  v109 = v15;
  v106 = a2;
  v115 = v11;
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v18 = v17;
  selfCopy = self;
  v114 = [(_NSQueryGenerationToken *)[(NSManagedObjectContext *)sources _queryGenerationToken] _generationalComponentForStore:self];
  LODWORD(v107) = v13;
  if (v13)
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v19 = [resultCopy countByEnumeratingWithState:&v134 objects:v142 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v135;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v135 != v21)
          {
            objc_enumerationMutation(resultCopy);
          }

          v23 = *(*(&v134 + 1) + 8 * i);
          if (-[NSEntityDescription _relationshipNamed:]([v23 entity], v7))
          {
            objectID = [v23 objectID];
            v25 = NSArray_EmptyArray;
            v26 = [(NSGenerationalRowCache *)*(selfCopy + 18) rowCacheForGeneration:v114];
            [NSPersistentStoreCache registerToMany:v26 withOrderKeys:v25 forSourceObjectID:0 forProperty:objectID options:v115 andTimestamp:v18];
          }
        }

        v20 = [resultCopy countByEnumeratingWithState:&v134 objects:v142 count:16];
      }

      while (v20);
    }
  }

  v27 = objc_alloc_init(NSFetchRequest);
  -[NSFetchRequest setEntity:](v27, "setEntity:", [v115 destinationEntity]);
  [(NSFetchRequest *)v27 setResultType:0];
  v133 = 0;
  v28 = selfCopy;
  v29 = [_NSXPCStoreUtilities _decodeResultSetData:v111 forFetchRequest:v27 options:0 store:selfCopy context:sources rowCacheRows:&v133 error:0];
  [(NSXPCStore *)selfCopy cacheFetchedRows:v133 forManagedObjects:v29 generation:v114];

  v30 = [(_PFArray *)v29 count];
  if (!v30)
  {

    return;
  }

  v31 = v30;
  v110 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v29];
  if (v109 == 4)
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [v106 lastObject];
  }

  v106 = lastObject;
  if (selfCopy)
  {
    v109 = *(selfCopy + 6);
  }

  else
  {
    v109 = 0;
  }

  v108 = v29;
  v104 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v105 = v31;
  if (!v107)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v46 = v115;
    v112 = [resultCopy countByEnumeratingWithState:&v121 objects:v139 count:16];
    if (!v112)
    {
      goto LABEL_110;
    }

    v111 = *v122;
    while (1)
    {
      v47 = 0;
      v48 = v114;
      do
      {
        if (*v122 != v111)
        {
          objc_enumerationMutation(resultCopy);
        }

        v49 = *(*(&v121 + 1) + 8 * v47);
        v50 = objc_autoreleasePoolPush();
        objectID2 = [v49 objectID];
        v52 = [v49 primitiveValueForKey:v7];
        if (!v52)
        {
          objectID3 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](selfCopy objectID2];
          goto LABEL_55;
        }

        v53 = v52;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](selfCopy objectID2];
          if ([v53 isEqual:v54])
          {
            objectID3 = v54;
          }

          else
          {
            objectID3 = 0;
          }

          goto LABEL_55;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v53 isFault])
        {
          goto LABEL_71;
        }

        v58 = [(NSXPCStore *)selfCopy _cachedRowForObjectWithID:objectID2 generation:v48];
        if (!v58)
        {
          objectID3 = [v53 objectID];
          v62 = [(NSXPCStore *)selfCopy _cachedRowForObjectWithID:objectID3 generation:v48];
          if (v62)
          {
            v63 = v62;
            v46 = v115;
            if (sources)
            {
              v64 = _PFRetainedObjectIDCore(sources, objectID3, 0, 1);
              v57 = v64;
              if (v64)
              {
                v65 = *(v64 + 4);
                if ((v65 & 0x200) == 0)
                {
                  *(v64 + 4) = v65 | 0x200;
                }
              }
            }

            else
            {
              v57 = 0;
            }

            if ([v57 isFault])
            {
              _PFFaultHandlerFulfillFault(v109, v57, sources, v63, 0);
            }

            goto LABEL_62;
          }

          v46 = v115;
LABEL_55:
          if (objectID3)
          {
            v56 = NSKeyValueCoding_NullValue == objectID3;
          }

          else
          {
            v56 = 1;
          }

          if (!v56)
          {
            if (sources)
            {
              v57 = _PFRetainedObjectIDCore(sources, objectID3, 0, 1);
            }

            else
            {
              v57 = 0;
            }

            _PFFaultHandlerPreconnectRelationship(v109, v49, v46, v57);
LABEL_62:
            [v110 removeObject:v57];

            goto LABEL_71;
          }

          goto LABEL_71;
        }

        v59 = [v58 valueForPropertyDescription:v115];
        v46 = v115;
        if ([objc_msgSend(v53 "objectID")])
        {
          if (sources)
          {
            v60 = _PFRetainedObjectIDCore(sources, v59, 0, 1);
            v57 = v60;
            if (v60)
            {
              v61 = *(v60 + 4);
              if ((v61 & 0x200) == 0)
              {
                *(v60 + 4) = v61 | 0x200;
              }
            }
          }

          else
          {
            v57 = 0;
          }

          goto LABEL_62;
        }

LABEL_71:
        objc_autoreleasePoolPop(v50);
        v47 = v47 + 1;
      }

      while (v112 != v47);
      v66 = [resultCopy countByEnumeratingWithState:&v121 objects:v139 count:16];
      v112 = v66;
      if (!v66)
      {
        goto LABEL_110;
      }
    }
  }

  if (![objc_msgSend(v115 "inverseRelationship")])
  {
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v112 = [(_PFArray *)v29 countByEnumeratingWithState:&v125 objects:v140 count:16];
    if (v112)
    {
      v67 = 0;
      v68 = 0;
      v111 = *v126;
      do
      {
        for (j = 0; j != v112; j = j + 1)
        {
          v70 = v68;
          if (*v126 != v111)
          {
            objc_enumerationMutation(v108);
          }

          v71 = *(*(&v125 + 1) + 8 * j);
          resultCopy = objc_autoreleasePoolPush();
          v68 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v28 objc_msgSend(v71];
          if ([v115 inverseRelationship] && (objc_msgSend(v70, "isEqual:", v68) & 1) == 0)
          {
            if (v67)
            {
              v107 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v28 objc:"lastObject") msgSend(objc:{"objectID"), v114), "valueForPropertyDescription:", objc_msgSend(v115, "inverseRelationship")}msgSend(v67];
              v72 = [(NSManagedObjectContext *)sources objectWithID:?];
              v73 = [[_NSFaultingMutableSet alloc] initWithSource:v72 destinations:v67 forRelationship:v115 inContext:sources];
              if ([v115 isOrdered])
              {
                v74 = objc_msgSend_valueForKey_(v67);
              }

              else
              {
                v75 = v67;
                v76 = MEMORY[0x1E695DFD8];
                v77 = objc_msgSend_valueForKey_(v75);
                v78 = v76;
                v67 = v75;
                v74 = [v78 setWithArray:v77];
              }

              v79 = v74;
              v28 = selfCopy;
              v80 = [(NSGenerationalRowCache *)*(selfCopy + 18) rowCacheForGeneration:v114];
              [NSPersistentStoreCache registerToMany:v80 withOrderKeys:v79 forSourceObjectID:0 forProperty:v107 options:v115 andTimestamp:v18];
              _PFFaultHandlerPreconnectRelationship(v109, v72, v115, v73);
              [v110 minusSet:v73];
            }

            v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v67 addObject:v71];
          objc_autoreleasePoolPop(resultCopy);
        }

        v112 = [(_PFArray *)v108 countByEnumeratingWithState:&v125 objects:v140 count:16];
      }

      while (v112);
      if (!v67 || ![v67 count])
      {
        goto LABEL_109;
      }

      v81 = v114;
      v82 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v28 objc:"lastObject") msgSend(objc:{"objectID"), v114), "valueForPropertyDescription:", objc_msgSend(v115, "inverseRelationship")}msgSend(v67];
      v83 = [(NSManagedObjectContext *)sources objectWithID:v82];
      v84 = [[_NSFaultingMutableSet alloc] initWithSource:v83 destinations:v67 forRelationship:v115 inContext:sources];
      if ([v115 isOrdered])
      {
        v85 = objc_msgSend_valueForKey_(v67);
      }

      else
      {
        v86 = v67;
        v87 = MEMORY[0x1E695DFD8];
        v88 = objc_msgSend_valueForKey_(v86);
        v89 = v87;
        v67 = v86;
        v81 = v114;
        v85 = [v89 setWithArray:v88];
      }

      [(NSXPCStore *)v28 cacheContents:v85 ofRelationship:v115 onObjectWithID:v82 withTimestamp:v81 generation:v18];
      _PFFaultHandlerPreconnectRelationship(v109, v83, v115, v84);
      [v110 minusSet:v84];
    }

    v67 = 0;
LABEL_109:

    goto LABEL_110;
  }

  v33 = [v112 count];
  if (v33 >= 2)
  {
    v34 = 0;
    v107 = (v33 >> 1);
    do
    {
      resultCopy = objc_autoreleasePoolPush();
      v35 = [v112 objectAtIndex:2 * v34];
      v111 = [(NSManagedObjectContext *)sources objectWithID:v35];
      v36 = [v112 objectAtIndex:(2 * v34) | 1];
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v38 = [v36 countByEnumeratingWithState:&v129 objects:v141 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v130;
        do
        {
          v41 = 0;
          do
          {
            if (*v130 != v40)
            {
              objc_enumerationMutation(v36);
            }

            if (sources)
            {
              v42 = _PFRetainedObjectIDCore(sources, *(*(&v129 + 1) + 8 * v41), 0, 1);
            }

            else
            {
              v42 = 0;
            }

            [v37 addObject:v42];

            ++v41;
          }

          while (v39 != v41);
          v43 = [v36 countByEnumeratingWithState:&v129 objects:v141 count:16];
          v39 = v43;
        }

        while (v43);
      }

      if (([v115 isOrdered] & 1) == 0)
      {
        v36 = [MEMORY[0x1E695DFD8] setWithArray:v36];
      }

      v44 = [(NSGenerationalRowCache *)*(selfCopy + 18) rowCacheForGeneration:v114];
      [NSPersistentStoreCache registerToMany:v44 withOrderKeys:v36 forSourceObjectID:0 forProperty:v35 options:v115 andTimestamp:v18];
      v45 = [[_NSFaultingMutableSet alloc] initWithSource:v111 destinations:v37 forRelationship:v115 inContext:sources];
      _PFFaultHandlerPreconnectRelationship(v109, v111, v115, v45);
      [v110 minusSet:v45];

      objc_autoreleasePoolPop(resultCopy);
      v34 = v34 + 1;
    }

    while (v34 != v107);
  }

LABEL_110:
  [v104 drain];
  v90 = selfCopy;
  v91 = v108;
  if (v106)
  {
    [(NSXPCStore *)selfCopy decodePrefetchArray:v106 forSources:v108 context:sources];
  }

  v92 = v105;
  if (v105 >= 0x201)
  {
    v93 = 1;
  }

  else
  {
    v93 = v105;
  }

  v94 = (8 * v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = &v103 - v94;
  if (v105 > 0x200)
  {
    v95 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v103 - v94, 8 * v105);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v96 = [(_PFArray *)v91 countByEnumeratingWithState:&v117 objects:v138 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = 0;
    v99 = *v118;
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v118 != v99)
        {
          objc_enumerationMutation(v91);
        }

        *&v95[8 * v98++] = [*(*(&v117 + 1) + 8 * k) objectID];
      }

      v97 = [(_PFArray *)v91 countByEnumeratingWithState:&v117 objects:v138 count:16];
    }

    while (v97);
  }

  v101 = v110;
  v102 = [_PFRoutines newArrayOfObjectIDsFromCollection:v110];
  [v90 managedObjectContextDidUnregisterObjectsWithIDs:v102 generation:v114];

  if (v92 >= 0x201)
  {
    NSZoneFree(0, v95);
  }
}

- (void)cacheContents:(void *)contents ofRelationship:(void *)relationship onObjectWithID:(void *)d withTimestamp:(double)timestamp generation:
{
  v10 = [(NSGenerationalRowCache *)*(self + 144) rowCacheForGeneration:d];

  [NSPersistentStoreCache registerToMany:v10 withOrderKeys:a2 forSourceObjectID:0 forProperty:relationship options:contents andTimestamp:timestamp];
}

- (id)objectIDFactoryForEntity:(id)entity
{
  v7.receiver = self;
  v7.super_class = NSXPCStore;
  v5 = [(NSPersistentStore *)&v7 objectIDFactoryForEntity:?];
  if (![v5 _storeInfo1])
  {
    [v5 _setStoreInfo1:{-[NSXPCStore entityForEntityDescription:](self, "entityForEntityDescription:", entity)}];
  }

  return v5;
}

- (id)entityForEntityDescription:(id)description
{
  if (description)
  {
    return _sqlEntityForEntityDescription(self->_model, description);
  }

  else
  {
    return 0;
  }
}

- (Class)objectIDFactoryForSQLEntity:(id)entity
{
  if (entity && *(entity + 3))
  {
    return [(NSXPCStore *)self objectIDFactoryForEntity:?];
  }

  else
  {
    return 0;
  }
}

- (id)_newObjectIDForEntityDescription:(id)description pk:(int64_t)pk
{
  v6 = _sqlEntityForEntityDescription(self->_model, description);

  return [(NSXPCStore *)self newObjectIDForEntity:v6 pk:pk];
}

@end