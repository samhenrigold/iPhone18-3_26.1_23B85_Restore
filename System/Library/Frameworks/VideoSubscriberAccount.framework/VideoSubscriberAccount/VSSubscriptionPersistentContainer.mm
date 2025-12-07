@interface VSSubscriptionPersistentContainer
- (BOOL)_setupPersistenceIfNeeded:(id *)needed;
- (NSString)persistentStoreType;
- (NSURL)persistentStoreURL;
- (NSURL)subscriptionsPropertyListURL;
- (VSSubscriptionPersistentContainer)init;
- (void)_performBlock:(id)block andWait:(BOOL)wait;
- (void)_removePersistentStore;
@end

@implementation VSSubscriptionPersistentContainer

- (VSSubscriptionPersistentContainer)init
{
  v8.receiver = self;
  v8.super_class = VSSubscriptionPersistentContainer;
  v2 = [(VSSubscriptionPersistentContainer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    migrationQueue = v2->_migrationQueue;
    v2->_migrationQueue = v3;

    [(NSOperationQueue *)v2->_migrationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_migrationQueue setName:@"com.apple.VideoSubscriberAccount.SubscriptionMigration"];
    v5 = objc_alloc_init(VSOptional);
    viewContext = v2->_viewContext;
    v2->_viewContext = v5;
  }

  return v2;
}

- (NSString)persistentStoreType
{
  v2 = self->_persistentStoreType;
  if (!v2)
  {
    v2 = *MEMORY[0x277CBE2E8];
  }

  return v2;
}

- (NSURL)persistentStoreURL
{
  v2 = self->_persistentStoreURL;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v5 = [v4 URLsForDirectory:14 inDomains:1];
    firstObject = [v5 firstObject];

    v7 = [firstObject URLByAppendingPathComponent:@"videosubscriptionsd" isDirectory:1];
    v3 = [v7 URLByAppendingPathComponent:@"VSSubscriptions.sqlite" isDirectory:0];

    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine persistent store URL."];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The persistentStoreURL parameter must not be nil."];
      v3 = 0;
    }
  }

  return v3;
}

- (NSURL)subscriptionsPropertyListURL
{
  v2 = self->_subscriptionsPropertyListURL;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v5 = [v4 URLsForDirectory:14 inDomains:1];
    firstObject = [v5 firstObject];

    v7 = [firstObject URLByAppendingPathComponent:@"com.apple.spotlight" isDirectory:1];
    v3 = [v7 URLByAppendingPathComponent:@"subscriptions.plist" isDirectory:0];

    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine subscription plist URL."];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The subscriptionsPropertyListURL parameter must not be nil."];
      v3 = 0;
    }
  }

  return v3;
}

- (void)_removePersistentStore
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke;
  v2[3] = &unk_278B73308;
  v2[4] = self;
  [(VSSubscriptionPersistentContainer *)self performBlockAndWait:v2];
}

void __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) didSetupPersistence])
  {
    [v3 unwrapObject:&__block_literal_global_41 error:&__block_literal_global_35];
  }
}

void __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke_3_cold_1();
  }
}

- (BOOL)_setupPersistenceIfNeeded:(id *)needed
{
  v73[1] = *MEMORY[0x277D85DE8];
  didSetupPersistence = [(VSSubscriptionPersistentContainer *)self didSetupPersistence];
  if ((didSetupPersistence & 1) == 0)
  {
    neededCopy = needed;
    v7 = VSDefaultLogObject(didSetupPersistence);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Will setup persistence.", buf, 2u);
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
    subscriptionsPropertyListURL = [(VSSubscriptionPersistentContainer *)self subscriptionsPropertyListURL];
    persistentStoreURL = [(VSSubscriptionPersistentContainer *)self persistentStoreURL];
    v11 = [MEMORY[0x277CBE450] vs_subscriptionModelForVersion:3];
    persistentStoreType = [(VSSubscriptionPersistentContainer *)self persistentStoreType];
    path = [persistentStoreURL path];
    v63 = subscriptionsPropertyListURL;
    path2 = [subscriptionsPropertyListURL path];
    v14 = path2;
    if (path && path2)
    {
      v15 = path;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to obtain path for sqlite or plist stores."];
      if (!path)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The sqlitePathOrNil parameter must not be nil."];
      }

      v16 = path;
      if (!v14)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The plistPathOrNil parameter must not be nil."];
      }
    }

    v65 = v14;
    uRLByDeletingLastPathComponent = [persistentStoreURL URLByDeletingLastPathComponent];
    if (!uRLByDeletingLastPathComponent)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine container for SQL store."];
    }

    v18 = 0x278B72000uLL;
    v61 = uRLByDeletingLastPathComponent;
    path3 = [uRLByDeletingLastPathComponent path];
    v20 = [VSOptional optionalWithObject:path3];
    forceUnwrapObject = [v20 forceUnwrapObject];

    v70 = 0;
    v22 = [v8 fileExistsAtPath:forceUnwrapObject isDirectory:&v70];
    v60 = forceUnwrapObject;
    if (v22)
    {
      if (v70)
      {
        v23 = 0;
        goto LABEL_26;
      }

      v27 = VSErrorLogObject(v22);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:v27];
      }

      v23 = 0;
    }

    else
    {
      v24 = VSDefaultLogObject(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v24, OS_LOG_TYPE_DEFAULT, "Will create container directory.", buf, 2u);
      }

      v69 = 0;
      v25 = [v8 createDirectoryAtPath:forceUnwrapObject withIntermediateDirectories:1 attributes:0 error:&v69];
      v26 = v69;
      v23 = v26;
      if (v25)
      {
LABEL_26:
        v28 = [v8 fileExistsAtPath:v65];
        v62 = v11;
        if (!v28 || (v28 = [v8 fileExistsAtPath:path], (v28 & 1) != 0) || (v28 = -[VSSubscriptionPersistentContainer skipMigration](self, "skipMigration"), (v28 & 1) != 0))
        {
          v29 = VSDefaultLogObject(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v29, OS_LOG_TYPE_DEFAULT, "Did NOT migrate plist data.", buf, 2u);
          }
        }

        else
        {
          v43 = VSDefaultLogObject(v28);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v43, OS_LOG_TYPE_DEFAULT, "Will migrate plist data.", buf, 2u);
          }

          v29 = [MEMORY[0x277CBE450] vs_subscriptionModelForVersion:0];
          v68 = v23;
          v35 = [MEMORY[0x277CBE458] inferredMappingModelForSourceModel:v29 destinationModel:v11 error:&v68];
          v44 = v68;

          if (!v35)
          {
            v53 = VSErrorLogObject(v45);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
            }

            if (neededCopy)
            {
              v54 = v44;
              v6 = 0;
              *neededCopy = v44;
            }

            else
            {
              v6 = 0;
            }

            v23 = v44;
            goto LABEL_39;
          }

          v46 = v44;
          v57 = v44;
          v47 = [objc_alloc(MEMORY[0x277CBE468]) initWithSourceModel:v29 destinationModel:v11];
          v48 = VSSubscriptionPropertyListStoreType(v47);
          v72 = *MEMORY[0x277CBE2B0];
          v73[0] = MEMORY[0x277CBEC38];
          v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
          v67 = v46;
          v58 = v47;
          v50 = v48;
          LODWORD(v47) = [v47 migrateStoreFromURL:v63 type:v48 options:v49 withMappingModel:v35 toDestinationURL:persistentStoreURL destinationType:persistentStoreType destinationOptions:0 error:&v67];
          v23 = v67;

          if (!v47)
          {
            v55 = VSErrorLogObject(v51);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
            }

            if (neededCopy)
            {
              v56 = v23;
              *neededCopy = v23;
            }

            v6 = 0;
            goto LABEL_39;
          }

          v52 = VSDefaultLogObject(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v52, OS_LOG_TYPE_DEFAULT, "Migration of plist data completed successfully.", buf, 2u);
          }

          v11 = v62;
          v18 = 0x278B72000;
        }

        v30 = v23;

        v31 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v11];
        persistentStoreCoordinator = self->_persistentStoreCoordinator;
        self->_persistentStoreCoordinator = v31;

        v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v33 = MEMORY[0x277CBEC38];
        [v29 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE178]];
        [v29 setObject:v33 forKey:*MEMORY[0x277CBE1D8]];
        v34 = self->_persistentStoreCoordinator;
        v66 = v23;
        v35 = [(NSPersistentStoreCoordinator *)v34 addPersistentStoreWithType:persistentStoreType configuration:0 URL:persistentStoreURL options:v29 error:&v66];
        v23 = v66;

        v6 = v35 != 0;
        if (v35)
        {
          v37 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
          [v37 setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
          v38 = [*(v18 + 2272) optionalWithObject:v37];
          [(VSSubscriptionPersistentContainer *)self setViewContext:v38];

          v39 = VSDefaultLogObject([(VSSubscriptionPersistentContainer *)self setDidSetupPersistence:1]);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v39, OS_LOG_TYPE_DEFAULT, "Did setup persistence.", buf, 2u);
          }
        }

        else
        {
          v40 = VSErrorLogObject(v36);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
          }

          if (neededCopy)
          {
            v41 = v23;
            *neededCopy = v23;
          }
        }

LABEL_39:

        return v6;
      }

      v27 = VSErrorLogObject(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
      }
    }

    goto LABEL_26;
  }

  return 1;
}

- (void)_performBlock:(id)block andWait:(BOOL)wait
{
  waitCopy = wait;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  migrationQueue = [(VSSubscriptionPersistentContainer *)self migrationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke;
  v10[3] = &unk_278B74EF8;
  v10[4] = self;
  v12 = waitCopy;
  v9 = blockCopy;
  v11 = v9;
  [migrationQueue addOperationWithBlock:v10];
  if (waitCopy)
  {
    [migrationQueue waitUntilAllOperationsAreFinished];
  }

  objc_autoreleasePoolPop(v7);
}

void __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = [v3 _setupPersistenceIfNeeded:&v21];
  v5 = v21;
  v6 = v5;
  if (v4)
  {
    v7 = [*(a1 + 32) viewContext];
    v8 = [v7 forceUnwrapObject];

    if (*(a1 + 48) == 1)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_2;
      v18[3] = &unk_278B737F8;
      v9 = &v20;
      v10 = *(a1 + 40);
      v11 = &v19;
      v19 = v8;
      v20 = v10;
      [v8 performBlockAndWait:v18];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_3;
      v15[3] = &unk_278B737F8;
      v9 = &v17;
      v14 = *(a1 + 40);
      v11 = &v16;
      v16 = v8;
      v17 = v14;
      [v8 performBlock:v15];
    }

    v13 = *v9;
  }

  else
  {
    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v12 = *(a1 + 40);
    v13 = v6;
    v8 = [VSFailable failableWithError:v13];
    (*(v12 + 16))(v12, v8);
  }

  objc_autoreleasePoolPop(v2);
}

void __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSFailable failableWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSFailable failableWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

@end