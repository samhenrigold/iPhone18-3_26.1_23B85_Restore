@interface NSCloudKitMirroringDelegate
+ (BOOL)checkAndCreateDirectoryAtURL:(id)l wipeIfExists:(BOOL)exists error:(id *)error;
+ (BOOL)checkIfContentsOfStore:(id)store matchContentsOfStore:(id)ofStore onlyCompareSharedZones:(BOOL)zones error:(id *)error;
+ (BOOL)printEventsInStores:(id)stores startingAt:(id)at endingAt:(id)endingAt error:(id *)error;
+ (BOOL)printSharedZoneWithName:(id)name inStoreAtURL:(id)l error:(id *)error;
+ (BOOL)traceObjectMatchingRecordName:(id)name inStores:(id)stores startingAt:(id)at endingAt:(id)endingAt error:(id *)error;
+ (BOOL)traceObjectMatchingValue:(id)value atKeyPath:(id)path inStores:(id)stores startingAt:(id)at endingAt:(id)endingAt error:(id *)error;
+ (id)createCloudKitServerWithMachServiceName:(id)name andStorageDirectoryPath:(id)path;
+ (id)stringForResetReason:(unint64_t)reason;
+ (void)initialize;
+ (void)printMetadataForStoreAtURL:(id)l withConfiguration:(id)configuration operateOnACopy:(BOOL)copy;
+ (void)printRepresentativeSchemaForModelAtURL:(id)l orStoreAtURL:(id)rL withConfiguration:(id)configuration;
- (BOOL)_dateExceedsSchedulingThreshold:(_BOOL8)result;
- (BOOL)validateManagedObjectModel:(id)model forUseWithStoreWithDescription:(id)description error:(id *)error;
- (NSCloudKitMirroringDelegate)initWithCloudKitContainerOptions:(id)options;
- (NSCloudKitMirroringDelegate)initWithOptions:(id)options;
- (NSPersistentStoreResult)executeMirroringRequest:(uint64_t *)request error:;
- (id)_importFinishedWithResult:(uint64_t)result importer:;
- (uint64_t)_markZonesNeedingRecoveryFromManateeIdentityLoss:(uint64_t)loss databaseScope:(uint64_t)scope inStore:(void *)store error:;
- (uint64_t)_recoverFromError:(void *)error withZoneIDs:(uint64_t)ds forStore:(uint64_t)store inMonitor:;
- (uint64_t)recoverFromError:(uint64_t)error;
- (uint64_t)shouldAttemptSetupRecoveryFromError:(char)error viaPush:;
- (unsigned)qosClassForAccountMonitor:(id)monitor;
- (void)_acceptShareMetadatasInRequest:(uint64_t)request workBlockContext:;
- (void)_disableAutomaticExports;
- (void)_enableAutomaticExports;
- (void)_exportFinishedWithResult:(uint64_t)result exporter:;
- (void)_finishedRequest:(void *)request withResult:;
- (void)_openTransactionWithLabel:(uint64_t)label assertionLabel:(uint64_t)assertionLabel andExecuteWorkBlock:;
- (void)_performAcceptShareInvitationsRequest:(uint64_t)request;
- (void)_performDelegateResetRequest:(uint64_t)request;
- (void)_performExportProgressRequest:(uint64_t)request;
- (void)_performSchemaInitializationRequest:(uint64_t)request;
- (void)_performSerializationRequest:(uint64_t)request;
- (void)_performSetupRequest:(uint64_t)request;
- (void)_postResetSyncNotificationWithName:(void *)name forError:;
- (void)_requestAbortedNotInitialized:(uint64_t)initialized;
- (void)_requestEncounteredRecoverableError:(void *)error withResult:;
- (void)_requestEncounteredUnrecoverableError:(void *)error withResult:;
- (void)_scheduleAutomatedExportWithLabel:(uint64_t)label activity:(uint64_t)activity voucher:(uint64_t)voucher completionHandler:;
- (void)_scheduleAutomatedImportWithLabel:(uint64_t)label activity:(uint64_t)activity voucher:(uint64_t)voucher completionHandler:;
- (void)_setUpCloudKitIntegration:(uint64_t)integration;
- (void)accountMonitorAccountChanged:(id)changed;
- (void)addActivityVoucher:(id)voucher;
- (void)applicationStateMonitorEnteredBackground:(id)background;
- (void)applicationStateMonitorEnteredForeground:(id)foreground;
- (void)applicationStateMonitorExpiredBackgroundActivityTimeout:(id)timeout;
- (void)beginActivitiesForRequest:(uint64_t)request;
- (void)checkAndExecuteNextRequest;
- (void)checkAndScheduleImportIfNecessaryFromPush:(char)push fromErrorRecovery:fromShareAccept:andStartAfterDate:;
- (void)coordinatorWillRemoveStore:(id)store;
- (void)dealloc;
- (void)eventUpdated:(id)updated;
- (void)expireActivityVoucher:(id)voucher;
- (void)exporter:(id)exporter willScheduleOperations:(id)operations;
- (void)finishedAutomatedRequestWithResult:(uint64_t)result;
- (void)logResetSyncNotification:(id)notification;
- (void)managedObjectContextSaved:(id)saved;
- (void)newActivityWithIdentifier:(void *)identifier andVoucher:;
- (void)persistentStoreCoordinator:(id)coordinator didSuccessfullyAddPersistentStore:(id)store withDescription:(id)description;
- (void)publishActivity:(id)activity;
- (void)registerForAccountAndIdentityNotificationsIfNeeded;
- (void)remoteStoreDidChange:(id)change;
- (void)removeNotificationRegistrations;
- (void)resetAfterError:(uint64_t)error andKeepContainer:(void *)container;
- (void)retryAfterInSecondsFromError:(void *)error;
- (void)scheduleExportAndStartAfterDate:(uint64_t)date;
- (void)storesDidChange:(id)change;
- (void)tearDown:(uint64_t)down;
@end

@implementation NSCloudKitMirroringDelegate

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == self)
  {

    objc_opt_class();
  }
}

- (void)dealloc
{
  [(NSCloudKitMirroringDelegate *)self removeNotificationRegistrations];

  self->_coredatadClient = 0;
  self->_cloudKitQueue = 0;

  self->_options = 0;
  self->_databaseSubscription = 0;

  self->_container = 0;
  self->_database = 0;

  self->_scheduler = 0;
  self->_notificationListener = 0;

  self->_lastInitializationError = 0;
  self->_exporterOptions = 0;

  objc_storeWeak(&self->_observedStore, 0);
  objc_storeWeak(&self->_observedCoordinator, 0);

  self->_sharingUIObserver = 0;
  self->_applicationMonitor = 0;

  self->_setupActivityIdentifier = 0;
  self->_activityGroupName = 0;

  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegate;
  [(NSCloudKitMirroringDelegate *)&v3 dealloc];
}

- (void)removeNotificationRegistrations
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    Weak = objc_loadWeak((self + 120));
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"NSPersistentStoreCoordinatorWillRemoveStoreNotification" object:objc_loadWeak((self + 112))];
    [defaultCenter removeObserver:self name:@"NSPersistentStoreCoordinatorStoresDidChangeNotification" object:Weak];
    [defaultCenter removeObserver:self name:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:Weak];
    [defaultCenter removeObserver:self name:@"NSPersistentStoreRemoteChangeNotification" object:Weak];
    [defaultCenter removeObserver:self name:@"PFCKAccountMonitorAccountChangedNotificationName" object:*(self + 136)];
    [*(self + 136) stopMonitoringNotifications];
    *(self + 133) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

- (void)checkAndExecuteNextRequest
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v4 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v5 = 17;
    }

    else
    {
      v5 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v5 = 16;
    }

    if (__ckLoggingOverride)
    {
      v6 = v5;
    }

    else
    {
      v6 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v6))
    {
      *buf = 136315650;
      v10 = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]";
      v11 = 1024;
      v12 = 3570;
      v13 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@: Checking for pending requests.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v2);
    objc_initWeak(buf, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__NSCloudKitMirroringDelegate_checkAndExecuteNextRequest__block_invoke;
    v7[3] = &unk_1E6EC4DB8;
    objc_copyWeak(&v8, buf);
    [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v7 andExecuteWorkBlock:?];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __57__NSCloudKitMirroringDelegate_checkAndExecuteNextRequest__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[18];
    v4 = v3;
    if (v3 && v3[12])
    {
      v5 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v7 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v8 = 17;
      }

      else
      {
        v8 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v8 = 16;
      }

      if (__ckLoggingOverride)
      {
        v9 = v8;
      }

      else
      {
        v9 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v9))
      {
        v10 = v4[12];
        *v32 = 136315906;
        *&v32[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
        *&v32[12] = 1024;
        *&v32[14] = 3579;
        *&v32[18] = 2112;
        *&v32[20] = v2;
        *&v32[28] = 2112;
        *&v32[30] = v10;
        _os_log_impl(&dword_18565F000, v7, v9, "CoreData+CloudKit: %s(%d): %@: Deferring additional work. There is still an active request: %@", v32, 0x26u);
      }

      objc_autoreleasePoolPop(v5);
      goto LABEL_64;
    }

    v17 = [(NSCloudKitMirroringRequestManager *)v3 dequeueNextRequest];
    v18 = objc_autoreleasePoolPush();
    v19 = __PFCloudKitLoggingGetStream();
    v20 = v19;
    if (__ckLoggingOverride == 17)
    {
      v21 = 17;
    }

    else
    {
      v21 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v21 = 16;
    }

    if (__ckLoggingOverride)
    {
      v22 = v21;
    }

    else
    {
      v22 = OS_LOG_TYPE_DEFAULT;
    }

    v23 = os_log_type_enabled(v19, v22);
    if (!v17)
    {
      if (v23)
      {
        *v32 = 136315650;
        *&v32[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
        *&v32[12] = 1024;
        *&v32[14] = 3586;
        *&v32[18] = 2112;
        *&v32[20] = v2;
        _os_log_impl(&dword_18565F000, v20, v22, "CoreData+CloudKit: %s(%d): %@: No more requests to execute.", v32, 0x1Cu);
      }

      objc_autoreleasePoolPop(v18);
      goto LABEL_63;
    }

    if (v23)
    {
      *v32 = 136315906;
      *&v32[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
      *&v32[12] = 1024;
      *&v32[14] = 3583;
      *&v32[18] = 2112;
      *&v32[20] = v2;
      *&v32[28] = 2112;
      *&v32[30] = v17;
      _os_log_impl(&dword_18565F000, v20, v22, "CoreData+CloudKit: %s(%d): %@: Executing: %@", v32, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = v17[9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 endActivityForPhase:0 withError:0];
      [objc_msgSend(v2[1] "progressProvider")];
    }

    else if (v24)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v32 = 138412290;
        *&v32[4] = v24;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this type of activity yet: %@\n", v32, 0xCu);
      }

      v27 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *v32 = 138412290;
        *&v32[4] = v24;
        _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle this type of activity yet: %@", v32, 0xCu);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *v32 = MEMORY[0x1E69E9820];
      *&v32[8] = 3221225472;
      *&v32[16] = __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke;
      *&v32[24] = &unk_1E6EC4B10;
      *&v32[32] = v2;
      v33 = v17;
      v28 = @"com.apple.coredata.cloudkit.fetch.records";
      v29 = @"CoreData: CloudKit Fetch Records";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *v32 = MEMORY[0x1E69E9820];
        *&v32[8] = 3221225472;
        *&v32[16] = __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke;
        *&v32[24] = &unk_1E6EC4B10;
        *&v32[32] = v2;
        v33 = v17;
        v28 = @"com.apple.coredata.cloudkit.import";
        v29 = @"CoreData: CloudKit Import";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *v32 = MEMORY[0x1E69E9820];
          *&v32[8] = 3221225472;
          *&v32[16] = __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke;
          *&v32[24] = &unk_1E6EC4B10;
          *&v32[32] = v2;
          v33 = v17;
          v28 = @"com.apple.coredata.cloudkit.export";
          v29 = @"CoreData: CloudKit Export";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v32 = MEMORY[0x1E69E9820];
            *&v32[8] = 3221225472;
            *&v32[16] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke;
            *&v32[24] = &unk_1E6EC4B10;
            *&v32[32] = v2;
            v33 = v17;
            v28 = @"com.apple.coredata.cloudkit.zone.reset";
            v29 = @"CoreData: CloudKit Zone Reset";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(NSCloudKitMirroringDelegate *)v2 _performSetupRequest:v17];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(NSCloudKitMirroringDelegate *)v2 _performDelegateResetRequest:v17];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSCloudKitMirroringDelegate *)v2 _performSchemaInitializationRequest:v17];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [(NSCloudKitMirroringDelegate *)v2 _performSerializationRequest:v17];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(NSCloudKitMirroringDelegate *)v2 _performExportProgressRequest:v17];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(NSCloudKitMirroringDelegate *)v2 _performAcceptShareInvitationsRequest:v17];
                        }

                        else
                        {
                          v30 = _PFLogGetLogStream(17);
                          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                          {
                            *v32 = 138412546;
                            *&v32[4] = v2;
                            *&v32[12] = 2112;
                            *&v32[14] = v17;
                            _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Asked to execute a request that isn't understood yet: %@\n", v32, 0x16u);
                          }

                          v31 = _PFLogGetLogStream(17);
                          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                          {
                            *v32 = 138412546;
                            *&v32[4] = v2;
                            *&v32[12] = 2112;
                            *&v32[14] = v17;
                            _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: %@: Asked to execute a request that isn't understood yet: %@", v32, 0x16u);
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_63;
            }

            *v32 = MEMORY[0x1E69E9820];
            *&v32[8] = 3221225472;
            *&v32[16] = __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke;
            *&v32[24] = &unk_1E6EC4B10;
            *&v32[32] = v2;
            v33 = v17;
            v28 = @"com.apple.coredata.cloudkit.metadata.reset";
            v29 = @"CoreData: CloudKit Metadata Reset";
          }
        }
      }
    }

    [(NSCloudKitMirroringDelegate *)v2 _openTransactionWithLabel:v28 assertionLabel:v29 andExecuteWorkBlock:v32];
LABEL_63:

LABEL_64:
    goto LABEL_65;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = __PFCloudKitLoggingGetStream();
  v13 = v12;
  if (__ckLoggingOverride == 17)
  {
    v14 = 17;
  }

  else
  {
    v14 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v14 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v15 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (os_log_type_enabled(v12, v16))
  {
    *v32 = 136315394;
    *&v32[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
    *&v32[12] = 1024;
    *&v32[14] = 3592;
    _os_log_impl(&dword_18565F000, v13, v16, "CoreData+CloudKit: %s(%d): Unable to schedule work because the mirroring delegate was deallocated.", v32, 0x12u);
  }

  objc_autoreleasePoolPop(v11);
LABEL_65:
}

- (void)registerForAccountAndIdentityNotificationsIfNeeded
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    if ((*(self + 133) & 1) == 0)
    {
      [*(self + 136) beginMonitoringNotifications];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      *(self + 133) = 1;
    }

    objc_autoreleasePoolPop(v2);
  }
}

+ (id)createCloudKitServerWithMachServiceName:(id)name andStorageDirectoryPath:(id)path
{
  v6 = objc_alloc_init(CDDCloudKitServerConfiguration);
  if ([name length])
  {
    if (!v6)
    {
      [path length];
      goto LABEL_7;
    }

    objc_setProperty_nonatomic(v6, v7, name, 16);
  }

  if ([path length] && v6)
  {
    objc_setProperty_nonatomic(v6, v8, path, 8);
  }

LABEL_7:
  v9 = [[CDDCloudKitServer alloc] initWithListener:0 configuration:v6];

  return v9;
}

- (NSCloudKitMirroringDelegate)initWithOptions:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(NSCloudKitMirroringDelegate *)self init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [options copy];
    v4->_options = v6;
    if (![(NSCloudKitMirroringDelegateOptions *)v6 progressProvider])
    {
      [(NSCloudKitMirroringDelegateOptions *)v4->_options setProgressProvider:v4];
    }

    objc_autoreleasePoolPop(v5);
    if (_MergedGlobals_87 != -1)
    {
      dispatch_once(&_MergedGlobals_87, &__block_literal_global_29);
    }

    v4->_cloudKitQueueSemaphore = dispatch_semaphore_create(0);
    v4->_cloudKitQueue = qword_1ED4BEB40;
    v4->_databaseSubscription = 0;
    *&v4->_hadObservedStore = 0;
    v4->_setupFinishedMetadataInitialization = 0;
    v4->_registeredForAccountChangeNotifications = 0;
    v4->_requestManager = objc_alloc_init(NSCloudKitMirroringRequestManager);
    v4->_voucherManager = objc_alloc_init(NSCloudKitMirroringActivityVoucherManager);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    activityVouchers = [options activityVouchers];
    v8 = [activityVouchers countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(activityVouchers);
          }

          [(NSCloudKitMirroringActivityVoucherManager *)v4->_voucherManager addVoucher:*(*(&v20 + 1) + 8 * i)];
        }

        v9 = [activityVouchers countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    if ([(NSCloudKitMirroringDelegateOptions *)v4->_options automaticallyScheduleImportAndExportOperations])
    {
      options = v4->_options;
      if (!options || (scheduler = options->_scheduler) == 0)
      {
        scheduler = [getCloudKitCKSchedulerClass[0]() sharedScheduler];
      }

      v4->_scheduler = scheduler;
      if ([(NSCloudKitMirroringDelegateOptions *)v4->_options databaseScope]== 2 || [(NSCloudKitMirroringDelegateOptions *)v4->_options databaseScope]== 3)
      {
        v14 = v4->_options;
        if (v14 && (notificationListener = v14->_notificationListener) != 0)
        {
          v16 = notificationListener;
        }

        else
        {
          v17 = [(NSString *)[(NSCloudKitMirroringDelegateOptions *)v14 apsConnectionMachServiceName] length];
          v18 = getCloudKitCKNotificationListenerClass[0]();
          if (v17)
          {
            v16 = [[v18 alloc] initWithMachServiceName:{-[NSCloudKitMirroringDelegateOptions apsConnectionMachServiceName](v4->_options, "apsConnectionMachServiceName")}];
          }

          else
          {
            v16 = objc_alloc_init(v18);
          }
        }
      }

      else
      {
        v16 = 0;
      }

      v4->_notificationListener = v16;
    }
  }

  return v4;
}

dispatch_queue_t __47__NSCloudKitMirroringDelegate_initWithOptions___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.coredata.cloudkit.queue", v0);
  qword_1ED4BEB40 = result;
  return result;
}

- (NSCloudKitMirroringDelegate)initWithCloudKitContainerOptions:(id)options
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = [[NSCloudKitMirroringDelegateOptions alloc] initWithCloudKitContainerOptions:options];
  }

  v6 = optionsCopy;
  v7 = [(NSCloudKitMirroringDelegate *)self initWithOptions:optionsCopy];

  return v7;
}

- (BOOL)validateManagedObjectModel:(id)model forUseWithStoreWithDescription:(id)description error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (self->_hadObservedStore)
  {
    v6 = *MEMORY[0x1E696A250];
    v35 = *MEMORY[0x1E696A588];
    v36 = @"Instances of NSCloudKitMirroringDelegate are not reusable and should have a lifecycle tied to a given instance of NSPersistentStore.";
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v36, &v35, 1)}];
    v30 = v7;
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  if ([objc_msgSend(objc_msgSend(description "options")])
  {
LABEL_6:
    LOBYTE(v8) = 1;
    return v8;
  }

  v12 = -[PFCloudKitModelValidator initWithManagedObjectModel:configuration:mirroringDelegateOptions:]([PFCloudKitModelValidator alloc], "initWithManagedObjectModel:configuration:mirroringDelegateOptions:", model, [description configuration], self->_options);
  v13 = v12;
  options = self->_options;
  if (options)
  {
    LOBYTE(options) = options->_skipCloudKitSetup;
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  v12->_skipValueTransformerValidation = options & 1;
  if (![(PFCloudKitModelValidator *)v12 _validateManagedObjectModel:&v30 error:?])
  {
    goto LABEL_18;
  }

  if (!description)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_msgSend_stringWithFormat_(v17, v19);
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A250];
    v37 = *MEMORY[0x1E696A588];
    v38 = v20;
    v23 = MEMORY[0x1E695DF20];
    v24 = &v38;
    v25 = &v37;
LABEL_17:
    v30 = [v21 errorWithDomain:v22 code:134060 userInfo:{objc_msgSend(v23, "dictionaryWithObjects:forKeys:count:", v24, v25, 1)}];
LABEL_18:

    goto LABEL_19;
  }

  if (([objc_msgSend(description "type")] & 1) == 0)
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"SQLite");
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A250];
    v39 = *MEMORY[0x1E696A588];
    v40[0] = v26;
    v23 = MEMORY[0x1E695DF20];
    v24 = v40;
    v25 = &v39;
    goto LABEL_17;
  }

  v15 = objc_alloc_init(PFCloudKitOptionsValidator);
  v16 = -[PFCloudKitOptionsValidator validateOptions:andStoreOptions:error:](v15, self->_options, [description options], &v30);

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_19:
  v7 = v30;
  if (v30)
  {
LABEL_3:
    if (error)
    {
      LOBYTE(v8) = 0;
      *error = v7;
      return v8;
    }

LABEL_24:
    LOBYTE(v8) = 0;
    return v8;
  }

LABEL_20:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
    v33 = 1024;
    v34 = 371;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  v8 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (v8)
  {
    *buf = 136315394;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
    v33 = 1024;
    v34 = 371;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_24;
  }

  return v8;
}

- (void)persistentStoreCoordinator:(id)coordinator didSuccessfullyAddPersistentStore:(id)store withDescription:(id)description
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__NSCloudKitMirroringDelegate_persistentStoreCoordinator_didSuccessfullyAddPersistentStore_withDescription___block_invoke;
  v5[3] = &unk_1E6EC4A48;
  v5[4] = self;
  v5[5] = store;
  v5[6] = coordinator;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Add Persistent Store" assertionLabel:v5 andExecuteWorkBlock:?];
}

void __108__NSCloudKitMirroringDelegate_persistentStoreCoordinator_didSuccessfullyAddPersistentStore_withDescription___block_invoke(void *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (v1)
  {
    v2 = a1[5];
    v3 = a1[6];
    Weak = objc_loadWeak((v1 + 112));
    v5 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v7 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v8 = 17;
    }

    else
    {
      v8 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v8 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v9 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]";
      *&buf[12] = 1024;
      *&buf[14] = 403;
      *&buf[18] = 2112;
      *&buf[20] = v1;
      *&buf[28] = 2112;
      *&buf[30] = v2;
      _os_log_impl(&dword_18565F000, v7, v10, "CoreData+CloudKit: %s(%d): %@: Observing store: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v5);
    if (!Weak)
    {
      v11 = objc_autoreleasePoolPush();
      objc_storeWeak((v1 + 112), v2);
      objc_storeWeak((v1 + 120), v3);
      *(v1 + 88) = 1;
      v12 = -[PFCKAccountMonitor initWithOptions:forStoreWithIdentifier:]([PFCKAccountMonitor alloc], "initWithOptions:forStoreWithIdentifier:", *(v1 + 8), [v2 identifier]);
      *(v1 + 136) = v12;
      [(PFCKAccountMonitor *)v12 setDelegate:v1];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      v13 = [v2 identifier];
      *(v1 + 152) = v13;
      *(v1 + 160) = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"com.apple.coredata.cloudkit.activity.import", v13);
      *(v1 + 168) = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"com.apple.coredata.cloudkit.activity.export", *(v1 + 152));
      *(v1 + 176) = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"com.apple.coredata.cloudkit.activity.setup", *(v1 + 152));
      *(v1 + 184) = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")], *(v1 + 152));
      if ([*(v1 + 8) automaticallyScheduleImportAndExportOperations])
      {
        objc_initWeak(location, v1);
        v14 = *(v1 + 64);
        v15 = *(v1 + 168);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke;
        v20[3] = &unk_1E6EC4A70;
        objc_copyWeak(&v21, location);
        [v14 registerActivityIdentifier:v15 handler:v20];
        *(v1 + 130) = 1;
        objc_destroyWeak(&v21);
        v16 = *(v1 + 64);
        v17 = *(v1 + 160);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_179;
        v25[3] = &unk_1E6EC4A70;
        objc_copyWeak(v26, location);
        [v16 registerActivityIdentifier:v17 handler:v25];
        *(v1 + 131) = 1;
        objc_destroyWeak(v26);
        v18 = *(v1 + 64);
        v19 = *(v1 + 176);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_186;
        *&buf[24] = &unk_1E6EC3568;
        objc_copyWeak(v24, location);
        *&buf[32] = v1;
        [v18 registerActivityIdentifier:v19 handler:buf];
        *(v1 + 132) = 1;
        objc_destroyWeak(v24);
        objc_destroyWeak(location);
      }

      [(NSCloudKitMirroringDelegate *)v1 _setUpCloudKitIntegration:?];
      objc_autoreleasePoolPop(v11);
    }
  }
}

- (void)_openTransactionWithLabel:(uint64_t)label assertionLabel:(uint64_t)assertionLabel andExecuteWorkBlock:
{
  if (self)
  {
    v6 = [[NSCloudKitMirroringDelegateWorkBlockContext alloc] initWithTransactionLabel:a2 powerAssertionLabel:label];
    v7 = *(self + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92__NSCloudKitMirroringDelegate__openTransactionWithLabel_assertionLabel_andExecuteWorkBlock___block_invoke;
    v8[3] = &unk_1E6EC1D30;
    v8[4] = v6;
    v8[5] = assertionLabel;
    dispatch_async(v7, v8);
  }
}

void __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedExportWithLabel:a2 activity:0 voucher:a3 completionHandler:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v11 = 136315394;
      v12 = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]_block_invoke";
      v13 = 1024;
      v14 = 447;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Got called back for an export activity but the mirroring delegate is gone.", &v11, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_scheduleAutomatedExportWithLabel:(uint64_t)label activity:(uint64_t)activity voucher:(uint64_t)voucher completionHandler:
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = 17;
    }

    else
    {
      v13 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v13 = 16;
    }

    if (__ckLoggingOverride)
    {
      v14 = v13;
    }

    else
    {
      v14 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      *buf = 136316162;
      v24 = "[NSCloudKitMirroringDelegate _scheduleAutomatedExportWithLabel:activity:voucher:completionHandler:]";
      v25 = 1024;
      v26 = 3702;
      v27 = 2112;
      selfCopy = self;
      v29 = 2112;
      v30 = a2;
      v31 = 2112;
      labelCopy = label;
      _os_log_impl(&dword_18565F000, v12, v14, "CoreData+CloudKit: %s(%d): %@ - Beginning automated export - %@:\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
    if ([(objc_class *)self[1].super.isa defaultOperationConfiguration])
    {
      [(NSCloudKitMirroringRequestOptions *)v15 setOperationConfiguration:[(objc_class *)self[1].super.isa defaultOperationConfiguration]];
    }

    if (activity || (activity = [(objc_class *)self[26].super.isa usableVoucherForEventType:2]) != 0)
    {
      activityCopy = activity;
      -[NSCloudKitMirroringRequestOptions setVouchers:](v15, "setVouchers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&activityCopy count:1]);
    }

    v16 = [NSCloudKitMirroringExportRequest alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__NSCloudKitMirroringDelegate__scheduleAutomatedExportWithLabel_activity_voucher_completionHandler___block_invoke;
    v21[3] = &unk_1E6EC4DE0;
    v21[4] = self;
    v21[5] = a2;
    v21[6] = voucher;
    v17 = [(NSCloudKitMirroringRequest *)v16 initWithActivity:label options:v15 completionBlock:v21];
    v20 = 0;
    if (![(NSCloudKitMirroringDelegate *)self executeMirroringRequest:v17 error:&v20])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v20;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to execute mirroring request for automated export: %@\n", buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v24 = v20;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Failed to execute mirroring request for automated export: %@", buf, 0xCu);
      }
    }
  }
}

void __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_179(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedImportWithLabel:a2 activity:0 voucher:a3 completionHandler:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v11 = 136315650;
      v12 = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]_block_invoke";
      v13 = 1024;
      v14 = 478;
      v15 = 2112;
      v16 = a2;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Got called back for activity: %@, but the mirroring delegate is gone.", &v11, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_scheduleAutomatedImportWithLabel:(uint64_t)label activity:(uint64_t)activity voucher:(uint64_t)voucher completionHandler:
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = 17;
    }

    else
    {
      v13 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v13 = 16;
    }

    if (__ckLoggingOverride)
    {
      v14 = v13;
    }

    else
    {
      v14 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      *buf = 136316162;
      v24 = "[NSCloudKitMirroringDelegate _scheduleAutomatedImportWithLabel:activity:voucher:completionHandler:]";
      v25 = 1024;
      v26 = 3663;
      v27 = 2112;
      selfCopy = self;
      v29 = 2112;
      v30 = a2;
      v31 = 2112;
      labelCopy = label;
      _os_log_impl(&dword_18565F000, v12, v14, "CoreData+CloudKit: %s(%d): %@ - Beginning automated import - %@ - in response to activity:\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
    if ([(objc_class *)self[1].super.isa defaultOperationConfiguration])
    {
      [(NSCloudKitMirroringRequestOptions *)v15 setOperationConfiguration:[(objc_class *)self[1].super.isa defaultOperationConfiguration]];
    }

    if (activity || (activity = [(objc_class *)self[26].super.isa usableVoucherForEventType:1]) != 0)
    {
      activityCopy = activity;
      -[NSCloudKitMirroringRequestOptions setVouchers:](v15, "setVouchers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&activityCopy count:1]);
    }

    v16 = [NSCloudKitMirroringImportRequest alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__NSCloudKitMirroringDelegate__scheduleAutomatedImportWithLabel_activity_voucher_completionHandler___block_invoke;
    v21[3] = &unk_1E6EC4DE0;
    v21[4] = self;
    v21[5] = a2;
    v21[6] = voucher;
    v17 = [(NSCloudKitMirroringRequest *)v16 initWithActivity:label options:v15 completionBlock:v21];
    v20 = 0;
    if (![(NSCloudKitMirroringDelegate *)self executeMirroringRequest:v17 error:&v20])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v20;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to execute mirroring request for automated import: %@\n", buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v24 = v20;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Failed to execute mirroring request for automated import: %@", buf, 0xCu);
      }
    }
  }
}

void __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_186(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_2;
    block[3] = &unk_1E6EC34A0;
    block[4] = *(a1 + 32);
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v15 = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]_block_invoke";
      v16 = 1024;
      v17 = 510;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Got called back for activity: %@, but the mirroring delegate is gone.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_2(void *a1)
{
  [(NSCloudKitMirroringDelegate *)a1[4] _setUpCloudKitIntegration:?];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)_setUpCloudKitIntegration:(uint64_t)integration
{
  v22 = *MEMORY[0x1E69E9840];
  if (integration)
  {
    v4 = objc_alloc_init(NSCloudKitMirroringDelegateSetupRequestOptions);
    if ([*(integration + 8) defaultOperationConfiguration])
    {
      -[NSCloudKitMirroringRequestOptions setOperationConfiguration:](v4, "setOperationConfiguration:", [*(integration + 8) defaultOperationConfiguration]);
    }

    v5 = [(NSCloudKitMirroringRequest *)[NSCloudKitMirroringDelegateSetupRequest alloc] initWithActivity:a2 options:v4 completionBlock:0];
    [(NSCloudKitMirroringDelegate *)integration beginActivitiesForRequest:v5];
    v13 = 0;
    v6 = [(NSCloudKitMirroringRequestManager *)*(integration + 144) enqueueRequest:v5 error:&v13];
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (v6)
    {
      if (__ckLoggingOverride == 17)
      {
        v10 = 17;
      }

      else
      {
        v10 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v10 = 16;
      }

      if (__ckLoggingOverride)
      {
        v11 = v10;
      }

      else
      {
        v11 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        *buf = 136315906;
        v15 = "[NSCloudKitMirroringDelegate _setUpCloudKitIntegration:]";
        v16 = 1024;
        v17 = 568;
        v18 = 2112;
        integrationCopy2 = integration;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Successfully enqueued setup request: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v7);
      [(NSCloudKitMirroringDelegate *)integration checkAndExecuteNextRequest];
    }

    else
    {
      if (__ckLoggingOverride == 17)
      {
        v12 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v12 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v12))
      {
        *buf = 136315906;
        v15 = "[NSCloudKitMirroringDelegate _setUpCloudKitIntegration:]";
        v16 = 1024;
        v17 = 571;
        v18 = 2112;
        integrationCopy2 = integration;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_18565F000, v9, v12, "CoreData+CloudKit: %s(%d): %@: Failed to enqueue setup request, this likely means one is already scheduled and this has collided: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)tearDown:(uint64_t)down
{
  if (down)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __40__NSCloudKitMirroringDelegate_tearDown___block_invoke;
    v2[3] = &unk_1E6EC4B10;
    v2[4] = down;
    v2[5] = a2;
    [(NSCloudKitMirroringDelegate *)down _openTransactionWithLabel:@"CoreData: CloudKit Teardown" assertionLabel:v2 andExecuteWorkBlock:?];
  }
}

- (void)beginActivitiesForRequest:(uint64_t)request
{
  if (request)
  {
    progressProvider = [*(request + 8) progressProvider];
    if (progressProvider)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = -[NSPersistentCloudKitContainerEventActivity initWithRequestIdentifier:storeIdentifier:eventType:]([NSPersistentCloudKitContainerEventActivity alloc], [a2 requestIdentifier], *(request + 152));
        if (a2)
        {
          objc_setProperty_nonatomic(a2, v4, v5, 72);
        }

        v6 = [v5 beginActivityForPhase:0];
        [progressProvider publishActivity:v5];
        [progressProvider publishActivity:v6];
      }
    }
  }
}

- (void)resetAfterError:(uint64_t)error andKeepContainer:(void *)container
{
  v18 = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (!container)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: resetAfterError illegally passed nil instead of an error on a failure condition\n", &v10, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v10) = 0;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: resetAfterError illegally passed nil instead of an error on a failure condition", &v10, 2u);
      }
    }

    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v10 = 136315906;
      v11 = "[NSCloudKitMirroringDelegate resetAfterError:andKeepContainer:]";
      v12 = 1024;
      v13 = 589;
      v14 = 2112;
      errorCopy = error;
      v16 = 2112;
      containerCopy = container;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@ - resetting internal state after error: %@", &v10, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    [(NSCloudKitMirroringDelegate *)error removeNotificationRegistrations];

    *(error + 80) = container;
    *(error + 89) = 0;

    *(error + 96) = 0;
    if ([objc_msgSend(*(error + 136) "currentAccountInfo")] != 3)
    {
      [*(error + 136) clearEstablishedAccountInfoAndUserRecordID];
    }

    [(NSCloudKitMirroringDelegate *)error registerForAccountAndIdentityNotificationsIfNeeded];
  }
}

- (uint64_t)shouldAttemptSetupRecoveryFromError:(char)error viaPush:
{
  if (!self)
  {
    v11 = 0;
    return v11 & 1;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  domain = [a2 domain];
  if (![domain isEqualToString:getCloudKitCKErrorDomain()])
  {
    domain2 = [a2 domain];
    if (![domain2 isEqualToString:*MEMORY[0x1E696A978]] || objc_msgSend(a2, "code") != -1 && objc_msgSend(a2, "code") != -999 && objc_msgSend(a2, "code") != -1001 && objc_msgSend(a2, "code") != -1003 && objc_msgSend(a2, "code") != -1004 && objc_msgSend(a2, "code") != -1005 && objc_msgSend(a2, "code") != -1006 && objc_msgSend(a2, "code") != -1007 && objc_msgSend(a2, "code") != -1008 && objc_msgSend(a2, "code") != -1009 && objc_msgSend(a2, "code") != -1010 && objc_msgSend(a2, "code") != -1012 && objc_msgSend(a2, "code") != -1013 && objc_msgSend(a2, "code") != -1014 && objc_msgSend(a2, "code") != -1100 && objc_msgSend(a2, "code") != -1101 && objc_msgSend(a2, "code") != -1102 && objc_msgSend(a2, "code") != -1103 && objc_msgSend(a2, "code") != -1104 && objc_msgSend(a2, "code") != -1200 && objc_msgSend(a2, "code") != -2000 && objc_msgSend(a2, "code") != -3000 && objc_msgSend(a2, "code") != -3001 && objc_msgSend(a2, "code") != -3002 && objc_msgSend(a2, "code") != -3003 && objc_msgSend(a2, "code") != -3004 && objc_msgSend(a2, "code") != -3005 && objc_msgSend(a2, "code") != -3006 && objc_msgSend(a2, "code") != -3007 && objc_msgSend(a2, "code") != -1018 && objc_msgSend(a2, "code") != -1019 && objc_msgSend(a2, "code") != -1020 && objc_msgSend(a2, "code") != -995 && objc_msgSend(a2, "code") != -996 && objc_msgSend(a2, "code") != -997)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if ([a2 code] == 3 || objc_msgSend(a2, "code") == 4 || objc_msgSend(a2, "code") == 22 || objc_msgSend(a2, "code") == 7 || objc_msgSend(a2, "code") == 23 || objc_msgSend(a2, "code") == 6 || objc_msgSend(a2, "code") == 15 && (v7 = objc_msgSend(a2, "userInfo"), objc_msgSend(v7, "objectForKeyedSubscript:", getCloudKitCKErrorRetryAfterKey())))
  {
LABEL_49:
    error = 1;
LABEL_50:
    *(v16 + 24) = error;
    goto LABEL_51;
  }

  if ([a2 code] != 2)
  {
    if ([a2 code] != 25)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *(v16 + 24) = 1;
  userInfo = [a2 userInfo];
  v9 = [userInfo objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__NSCloudKitMirroringDelegate_shouldAttemptSetupRecoveryFromError_viaPush___block_invoke;
  v13[3] = &unk_1E6EC4A98;
  errorCopy = error;
  v13[4] = self;
  v13[5] = &v15;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
LABEL_51:
  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11 & 1;
}

uint64_t __75__NSCloudKitMirroringDelegate_shouldAttemptSetupRecoveryFromError_viaPush___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  getCloudKitCKRecordIDClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (getCloudKitCKRecordZoneIDClass[0](), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), result = objc_opt_isKindOfClass(), (result))
  {
    result = [(NSCloudKitMirroringDelegate *)*(a1 + 32) shouldAttemptSetupRecoveryFromError:a3 viaPush:*(a1 + 48)];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return result;
}

void __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *v11 = MEMORY[0x1E69E9820];
    *&v11[8] = 3221225472;
    *&v11[16] = __74__NSCloudKitMirroringDelegate__respondToPushNotification_forSubscription___block_invoke;
    *&v11[24] = &unk_1E6EC4A48;
    *&v11[32] = WeakRetained;
    v12 = a3;
    v13 = a2;
    [(NSCloudKitMirroringDelegate *)WeakRetained _openTransactionWithLabel:@"CoreData: CloudKit Responding to Push" assertionLabel:v11 andExecuteWorkBlock:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *v11 = 136315906;
      *&v11[4] = "[NSCloudKitMirroringDelegate _beginWatchingForChanges:]_block_invoke";
      *&v11[12] = 1024;
      *&v11[14] = 744;
      *&v11[18] = 2112;
      *&v11[20] = a3;
      *&v11[28] = 2112;
      *&v11[30] = a2;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Got called back for subscription: %@, but the mirroring delegate is gone. Notification:\n%@", v11, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)scheduleExportAndStartAfterDate:(uint64_t)date
{
  v21 = *MEMORY[0x1E69E9840];
  if (date && [*(date + 8) automaticallyScheduleImportAndExportOperations])
  {
    if (*(date + 89) == 1)
    {
      v4 = [*(date + 208) usableVoucherForEventType:2];
      v5 = v4;
      if (a2)
      {
        v6 = [(NSCloudKitMirroringDelegate *)date newActivityWithIdentifier:v4 andVoucher:?];
        [v6 setEarliestStartDate:a2];
LABEL_22:
        [*(date + 64) submitActivity:v6];

        return;
      }

      if ([objc_msgSend(v4 "operationConfiguration")] <= 24)
      {
        v6 = [(NSCloudKitMirroringDelegate *)date newActivityWithIdentifier:v5 andVoucher:?];
        goto LABEL_22;
      }

      [(NSCloudKitMirroringDelegate *)date _scheduleAutomatedExportWithLabel:0 activity:v5 voucher:0 completionHandler:?];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v9 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v10 = 17;
      }

      else
      {
        v10 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v10 = 16;
      }

      if (__ckLoggingOverride)
      {
        v11 = v10;
      }

      else
      {
        v11 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        v12 = *(date + 80);
        *buf = 136315906;
        v14 = "[NSCloudKitMirroringDelegate scheduleExportAndStartAfterDate:]";
        v15 = 1024;
        v16 = 3292;
        v17 = 2112;
        dateCopy = date;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Deferring export because the mirroring delegate is not initialized:\n%@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

void __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke_208(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([objc_msgSend(*(a1 + 32) "accountMonitor")])
    {
      [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedExportWithLabel:0 activity:0 voucher:0 completionHandler:?];
    }

    [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedImportWithLabel:0 activity:0 voucher:0 completionHandler:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = 17;
    }

    else
    {
      v6 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v6 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v7 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      v9 = 136315394;
      v10 = "[NSCloudKitMirroringDelegate _beginWatchingForChanges:]_block_invoke";
      v11 = 1024;
      v12 = 778;
      _os_log_impl(&dword_18565F000, v5, v8, "CoreData+CloudKit: %s(%d): Tried to schedule sandbox operations but the mirroring delegate was gone.", &v9, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)checkAndScheduleImportIfNecessaryFromPush:(char)push fromErrorRecovery:fromShareAccept:andStartAfterDate:
{
  if (self)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
    v3[3] = &unk_1E6EC4D90;
    v4 = a2;
    v5 = 0;
    pushCopy = push;
    v3[4] = self;
    v3[5] = 0;
    [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v3 andExecuteWorkBlock:?];
  }
}

void __40__NSCloudKitMirroringDelegate_tearDown___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v5))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136315906;
    v35 = "[NSCloudKitMirroringDelegate tearDown:]_block_invoke";
    v36 = 1024;
    v37 = 797;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Told to tear down with reason: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  if (*(v8 + 130) == 1)
  {
    [*(v8 + 64) unregisterActivityIdentifier:*(v8 + 168)];
    *(*(a1 + 32) + 130) = 0;
    v8 = *(a1 + 32);
  }

  if (*(v8 + 131) == 1)
  {
    [*(v8 + 64) unregisterActivityIdentifier:*(v8 + 160)];
    *(*(a1 + 32) + 131) = 0;
    v8 = *(a1 + 32);
  }

  if (*(v8 + 132) == 1)
  {
    [*(v8 + 64) unregisterActivityIdentifier:*(v8 + 176)];
    *(*(a1 + 32) + 132) = 0;
    v8 = *(a1 + 32);
  }

  if (*(v8 + 129) == 1)
  {
    [*(v8 + 72) unregisterForSubscriptionWithID:objc_msgSend(*(v8 + 40) inDatabase:{"subscriptionID"), *(*(a1 + 32) + 56)}];
    *(*(a1 + 32) + 129) = 0;
    v8 = *(a1 + 32);
  }

  [(NSCloudKitMirroringDelegate *)v8 removeNotificationRegistrations];
  v9 = *(a1 + 32);
  if (*(v9 + 89) == 1)
  {
    v10 = [(NSCloudKitMirroringRequestManager *)*(v9 + 144) dequeueAllPendingRequests];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      v14 = *MEMORY[0x1E696A250];
      v15 = *MEMORY[0x1E696A588];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = __PFCloudKitLoggingGetStream();
          v20 = v19;
          if (__ckLoggingOverride == 17)
          {
            v21 = 17;
          }

          else
          {
            v21 = 1;
          }

          if (__ckLoggingOverride == 16)
          {
            v21 = 16;
          }

          if (__ckLoggingOverride)
          {
            v22 = v21;
          }

          else
          {
            v22 = OS_LOG_TYPE_DEFAULT;
          }

          if (os_log_type_enabled(v19, v22))
          {
            v23 = *(a1 + 32);
            *buf = 136315906;
            v35 = "[NSCloudKitMirroringDelegate tearDown:]_block_invoke";
            v36 = 1024;
            v37 = 827;
            v38 = 2112;
            v39 = v23;
            v40 = 2112;
            v41 = v17;
            _os_log_impl(&dword_18565F000, v20, v22, "CoreData+CloudKit: %s(%d): %@: Cancelling pending request: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v18);
          v24 = MEMORY[0x1E696ABC0];
          v31 = v15;
          v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v17 requestIdentifier]);
          v25 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", v17, *(*(a1 + 32) + 152), 0, 0, [v24 errorWithDomain:v14 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v32, &v31, 1)}]);
          [(NSCloudKitMirroringRequest *)v17 invokeCompletionBlockWithResult:v25];
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v12);
    }

    objc_storeWeak((*(a1 + 32) + 112), 0);
    objc_storeWeak((*(a1 + 32) + 120), 0);
    *(*(a1 + 32) + 89) = 0;

    *(*(a1 + 32) + 56) = 0;
    *(*(a1 + 32) + 48) = 0;

    *(*(a1 + 32) + 96) = 0;
  }
}

- (void)coordinatorWillRemoveStore:(id)store
{
  object = [store object];
  if (object == objc_loadWeak(&self->_observedStore))
  {

    [(NSCloudKitMirroringDelegate *)self tearDown:?];
  }
}

- (void)storesDidChange:(id)change
{
  Weak = objc_loadWeak(&self->_observedCoordinator);
  if (Weak == [change object] && objc_msgSend(objc_msgSend(objc_msgSend(change, "userInfo"), "objectForKey:", @"removed"), "containsObject:", objc_loadWeak(&self->_observedStore)))
  {

    [(NSCloudKitMirroringDelegate *)self tearDown:?];
  }
}

- (void)accountMonitorAccountChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(changed "userInfo")];
  if (v5)
  {
    goto LABEL_5;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = changed;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal account change notification (missing the name of the notification that triggered it): %@\n", &v11, 0xCu);
  }

  v7 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = changed;
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Illegal account change notification (missing the name of the notification that triggered it): %@", &v11, 0xCu);
    if (!self)
    {
      return;
    }
  }

  else
  {
LABEL_5:
    if (!self)
    {
      return;
    }
  }

  v8 = 134415;
  if ([v5 isEqualToString:getCloudKitCKIdentityUpdateNotification[0]()])
  {
    v8 = 134416;
  }

  else if (![v5 isEqualToString:getCloudKitCKAccountChangedNotification()])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v8 userInfo:0];
LABEL_11:
  v10 = [[NSCloudKitMirroringDelegateResetRequest alloc] initWithError:v9 completionBlock:0];
  *&v11 = MEMORY[0x1E69E9820];
  *(&v11 + 1) = 3221225472;
  v12 = __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke;
  v13 = &unk_1E6EC4B10;
  selfCopy = self;
  v15 = v10;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:&v11 andExecuteWorkBlock:?];
}

void __74__NSCloudKitMirroringDelegate__respondToPushNotification_forSubscription___block_invoke(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    *v34 = 136316162;
    *&v34[4] = "[NSCloudKitMirroringDelegate _respondToPushNotification:forSubscription:]_block_invoke";
    *&v34[12] = 1024;
    *&v34[14] = 904;
    *&v34[18] = 2112;
    *&v34[20] = v7;
    *&v34[28] = 2112;
    *&v34[30] = v8;
    *&v34[38] = 2112;
    v35 = v9;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@ - Got notification for subscription: %@\n%@", v34, 0x30u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = a1[4];
  if (*(v10 + 89) == 1)
  {
    *v34 = MEMORY[0x1E69E9820];
    *&v34[8] = 3221225472;
    *&v34[16] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
    *&v34[24] = &unk_1E6EC4D90;
    v36 = 1;
    LOBYTE(v37) = 0;
    *&v34[32] = v10;
    v35 = 0;
    v11 = @"com.apple.coredata.cloudkit.schedule";
    v12 = @"CoreData: CloudKit Scheduling";
    v13 = v10;
LABEL_44:
    [(NSCloudKitMirroringDelegate *)v13 _openTransactionWithLabel:v11 assertionLabel:v12 andExecuteWorkBlock:v34];
    return;
  }

  v14 = *(v10 + 80);
  v15 = [v14 domain];
  if ([v15 isEqualToString:getCloudKitCKErrorDomain()])
  {
    if ([v14 code] != 111 && objc_msgSend(v14, "code") != 20 && objc_msgSend(v14, "code") != 6)
    {
      if ([v14 code] == 2)
      {
        v16 = [(NSCloudKitMirroringDelegate *)v10 shouldAttemptSetupRecoveryFromError:v14 viaPush:1];
        goto LABEL_36;
      }

      goto LABEL_53;
    }

LABEL_35:
    v16 = 1;
    goto LABEL_36;
  }

  if ([objc_msgSend(v14 "domain")])
  {
    if ([v14 code] == 2 || objc_msgSend(v14, "code") == 303 || objc_msgSend(v14, "code") == 310 || objc_msgSend(v14, "code") == 311)
    {
      goto LABEL_35;
    }
  }

  else if ([objc_msgSend(v14 "domain")])
  {
    if ([v14 code] == 266 || objc_msgSend(v14, "code") == 3 || objc_msgSend(v14, "code") == 1034 || objc_msgSend(v14, "code") == 23 || objc_msgSend(v14, "code") == 769)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = [v14 domain];
    if ([v17 isEqualToString:*MEMORY[0x1E696A250]] && (objc_msgSend(v14, "code") == 4099 || objc_msgSend(v14, "code") == 4097))
    {
      goto LABEL_35;
    }
  }

LABEL_53:
  v16 = 0;
LABEL_36:
  v18 = objc_autoreleasePoolPush();
  v19 = __PFCloudKitLoggingGetStream();
  v20 = v19;
  if (__ckLoggingOverride == 17)
  {
    v21 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v21 = OS_LOG_TYPE_ERROR;
  }

  v22 = os_log_type_enabled(v19, v21);
  if (v16)
  {
    if (v22)
    {
      v23 = a1[4];
      v24 = a1[5];
      v25 = a1[6];
      *v34 = 136316162;
      *&v34[4] = "[NSCloudKitMirroringDelegate _respondToPushNotification:forSubscription:]_block_invoke";
      *&v34[12] = 1024;
      *&v34[14] = 912;
      *&v34[18] = 2112;
      *&v34[20] = v23;
      *&v34[28] = 2112;
      *&v34[30] = v24;
      *&v34[38] = 2112;
      v35 = v25;
      _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): %@ - Reviving the mirroring delegate after notification for subscription: %@\n%@", v34, 0x30u);
    }

    objc_autoreleasePoolPop(v18);
    v13 = a1[4];
    if (v13)
    {
      *v34 = MEMORY[0x1E69E9820];
      *&v34[8] = 3221225472;
      *&v34[16] = __73__NSCloudKitMirroringDelegate_setupMirroringDelegateFromPushNotification__block_invoke;
      *&v34[24] = &unk_1E6EC4D18;
      *&v34[32] = v13;
      v11 = @"com.apple.coredata.cloudkit.setup.push";
      v12 = @"CoreData: CloudKit Setup From Push";
      goto LABEL_44;
    }
  }

  else
  {
    if (v22)
    {
      v26 = a1[4];
      if (v26)
      {
        v27 = *(v26 + 80);
      }

      else
      {
        v27 = 0;
      }

      v28 = [v27 domain];
      v29 = a1[4];
      if (v29)
      {
        v30 = *(v29 + 80);
      }

      else
      {
        v30 = 0;
      }

      v31 = [v30 code];
      v32 = a1[5];
      v33 = a1[6];
      *v34 = 136316674;
      *&v34[4] = "[NSCloudKitMirroringDelegate _respondToPushNotification:forSubscription:]_block_invoke";
      *&v34[12] = 1024;
      *&v34[14] = 915;
      *&v34[18] = 2112;
      *&v34[20] = v26;
      *&v34[28] = 2112;
      *&v34[30] = v28;
      *&v34[38] = 2048;
      v35 = v31;
      v36 = 2112;
      v37 = v32;
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): %@ - Not reviving the mirroring delegate (%@:%ld) after notification for subscription: %@\n%@", v34, 0x44u);
    }

    objc_autoreleasePoolPop(v18);
  }
}

id __92__NSCloudKitMirroringDelegate__openTransactionWithLabel_assertionLabel_andExecuteWorkBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  [v2 drain];

  return 0;
}

- (NSPersistentStoreResult)executeMirroringRequest:(uint64_t *)request error:
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = objc_alloc_init(NSPersistentStoreResult);
    v23 = 0;
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate executeMirroringRequest:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 968;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      *&buf[28] = 2112;
      *&buf[30] = a2;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Asked to execute request: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    if ([a2 validateForUseWithStore:objc_loadWeak(&v5[14].super.isa) error:&v23])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {

                        v14 = MEMORY[0x1E696ABC0];
                        v15 = *MEMORY[0x1E696A250];
                        v24 = *MEMORY[0x1E696A588];
                        v16 = MEMORY[0x1E696AEC0];
                        v17 = objc_opt_class();
                        v18 = NSStringFromClass(v17);
                        v19 = objc_opt_class();
                        v20 = NSStringFromClass(v19);
                        v25 = objc_msgSend_stringWithFormat_(v16, v18, v20);
                        v13 = [v14 errorWithDomain:v15 code:134091 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v25, &v24, 1)}];
                        v23 = v13;
                        if (v13)
                        {
LABEL_26:
                          if (request)
                          {
                            v6 = 0;
                            *request = v13;
                            return v6;
                          }

LABEL_33:
                          v6 = 0;
                          return v6;
                        }

LABEL_29:
                        LogStream = _PFLogGetLogStream(17);
                        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
                          *&buf[12] = 1024;
                          *&buf[14] = 995;
                          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                        }

                        v22 = _PFLogGetLogStream(17);
                        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
                          *&buf[12] = 1024;
                          *&buf[14] = 995;
                          _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
                        }

                        goto LABEL_33;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v12 = [a2 copy];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke;
      *&buf[24] = &unk_1E6EC4B10;
      *&buf[32] = v5;
      v27 = v12;
      [(NSCloudKitMirroringDelegate *)v5 _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:buf andExecuteWorkBlock:?];

      if (v6)
      {
        return v6;
      }
    }

    else
    {
    }

    v13 = v23;
    if (v23)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  return result;
}

void __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 136315906;
    v17 = "[NSCloudKitMirroringDelegate _enqueueRequest:]_block_invoke";
    v18 = 1024;
    v19 = 1005;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@: enqueuing request: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *(a1 + 32);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    v11 = *(v10 + 88);
  }

  else
  {
    v11 = 0;
  }

  Weak = objc_loadWeak((v9 + 112));
  v13 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v11 inTransactionWithLabel:Weak];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke_259;
  v14[3] = &unk_1E6EC19D8;
  v14[4] = v13;
  v15 = *(a1 + 32);
  [(PFCloudKitStoreMonitor *)v13 performBlock:v14];
}

void __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke_259(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (!v2)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v23 = *MEMORY[0x1E696A588];
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 48) requestIdentifier]);
    v14 = [v12 errorWithDomain:v13 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v24, &v23, 1)}];
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 40) + 152);
    v18 = v14;
LABEL_23:
    v21 = [(NSCloudKitMirroringResult *)v15 initWithRequest:v16 storeIdentifier:v17 success:0 madeChanges:0 error:v18];
    [(NSCloudKitMirroringRequest *)*(a1 + 48) invokeCompletionBlockWithResult:v21];

    goto LABEL_24;
  }

  v22 = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 144);
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSCloudKitMirroringRequestManager *)v4 enqueueRequest:&v22 error:?];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (!v5)
  {
    if (__ckLoggingOverride == 17)
    {
      v19 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v19 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v19))
    {
      v20 = *(a1 + 48);
      *buf = 136315906;
      v26 = "[NSCloudKitMirroringDelegate _enqueueRequest:]_block_invoke";
      v27 = 1024;
      v28 = 1018;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_18565F000, v8, v19, "CoreData+CloudKit: %s(%d): Failed to enqueue request: %@\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 40) + 152);
    v18 = v22;
    goto LABEL_23;
  }

  if (__ckLoggingOverride == 17)
  {
    v9 = 17;
  }

  else
  {
    v9 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v9 = 16;
  }

  if (__ckLoggingOverride)
  {
    v10 = v9;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v10))
  {
    v11 = *(a1 + 48);
    *buf = 136315650;
    v26 = "[NSCloudKitMirroringDelegate _enqueueRequest:]_block_invoke";
    v27 = 1024;
    v28 = 1014;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): Enqueued request: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v6);
  [(NSCloudKitMirroringDelegate *)*(a1 + 40) beginActivitiesForRequest:?];
  [(NSCloudKitMirroringDelegate *)*(a1 + 40) checkAndExecuteNextRequest];
LABEL_24:
}

- (void)_performSetupRequest:(uint64_t)request
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a2 requestCompletionBlock])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Setup request executed with a completion block that will never be called: %@\n", buf, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Setup request executed with a completion block that will never be called: %@", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke;
  v6[3] = &unk_1E6EC4B10;
  v6[4] = request;
  v6[5] = a2;
  [(NSCloudKitMirroringDelegate *)request _openTransactionWithLabel:@"CoreData: CloudKit Setup" assertionLabel:v6 andExecuteWorkBlock:?];
}

- (void)_performDelegateResetRequest:(uint64_t)request
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a2 || !*(a2 + 80))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Reset request was scheduled without a root cause error: %@\n", buf, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Reset request was scheduled without a root cause error: %@", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__NSCloudKitMirroringDelegate__performDelegateResetRequest___block_invoke;
  v6[3] = &unk_1E6EC4B10;
  v6[4] = request;
  v6[5] = a2;
  [(NSCloudKitMirroringDelegate *)request _openTransactionWithLabel:@"CoreData: CloudKit Setup Reset" assertionLabel:v6 andExecuteWorkBlock:?];
}

- (void)_performSchemaInitializationRequest:(uint64_t)request
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = a2;
  v2[5] = request;
  [(NSCloudKitMirroringDelegate *)request _openTransactionWithLabel:@"CoreData: CloudKit Initialize Schema" assertionLabel:v2 andExecuteWorkBlock:?];
}

- (void)_performSerializationRequest:(uint64_t)request
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = request;
  v2[5] = a2;
  [(NSCloudKitMirroringDelegate *)request _openTransactionWithLabel:@"CoreData: CloudKit Record Serialization" assertionLabel:v2 andExecuteWorkBlock:?];
}

- (void)_performExportProgressRequest:(uint64_t)request
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = request;
  v2[5] = a2;
  [(NSCloudKitMirroringDelegate *)request _openTransactionWithLabel:@"CoreData: CloudKit Export Progress" assertionLabel:v2 andExecuteWorkBlock:?];
}

- (void)_performAcceptShareInvitationsRequest:(uint64_t)request
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = request;
  v2[5] = a2;
  [(NSCloudKitMirroringDelegate *)request _openTransactionWithLabel:@"CoreData: CloudKit Share Accept Invitation" assertionLabel:v2 andExecuteWorkBlock:?];
}

void __60__NSCloudKitMirroringDelegate__performDelegateResetRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 80);
    }

    else
    {
      v4 = 0;
    }

    [NSCloudKitMirroringDelegate resetAfterError:v2 andKeepContainer:v4];
    v2 = *(a1 + 32);
  }

  [(NSCloudKitMirroringDelegate *)v2 _setUpCloudKitIntegration:?];
  v5 = [[NSCloudKitMirroringResult alloc] initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:1 madeChanges:0 error:0];
  [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v5 withResult:?];
}

- (void)_finishedRequest:(void *)request withResult:
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = 17;
    }

    else
    {
      v9 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v9 = 16;
    }

    if (__ckLoggingOverride)
    {
      v10 = v9;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *v28 = 136315906;
      *&v28[4] = "[NSCloudKitMirroringDelegate _finishedRequest:withResult:]";
      *&v28[12] = 1024;
      *&v28[14] = 3601;
      *&v28[18] = 2112;
      *&v28[20] = a2;
      v29 = 2112;
      requestCopy = request;
      _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): Finished request: %@ with result: %@", v28, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    [(NSCloudKitMirroringRequestManager *)*(self + 144) requestFinished:a2];
    error = [request error];
    if (a2)
    {
      v12 = a2[9];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = v13;
    if (v13)
    {
      [v13 finishWithError:error];
      [objc_msgSend(*(self + 8) "progressProvider")];
    }

    if ([request success] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = a2;
LABEL_20:
      [(NSCloudKitMirroringRequest *)v15 invokeCompletionBlockWithResult:request];
LABEL_21:
      [(NSCloudKitMirroringDelegate *)self checkAndExecuteNextRequest];
      return;
    }

    error2 = [request error];
    if (request)
    {
      if ([request success] && error2)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v28 = 138412546;
          *&v28[4] = request;
          *&v28[12] = 2112;
          *&v28[14] = error2;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: handleErrorInResult passed a sucessful result (%@) with an illegal error object (%@)\n", v28, 0x16u);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *v28 = 138412546;
          *&v28[4] = request;
          *&v28[12] = 2112;
          *&v28[14] = error2;
          v19 = "CoreData: handleErrorInResult passed a sucessful result (%@) with an illegal error object (%@)";
          v20 = v18;
          v21 = 22;
LABEL_40:
          _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, v19, v28, v21);
        }
      }

      else if (([request success] & 1) == 0 && !error2)
      {
        v24 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v28 = 138412290;
          *&v28[4] = request;
          _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: fault: handleErrorInResult illegally passed a failed result (%@) with nil instead of an error on a failure condition\n", v28, 0xCu);
        }

        v25 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *v28 = 138412290;
          *&v28[4] = request;
          v19 = "CoreData: handleErrorInResult illegally passed a failed result (%@) with nil instead of an error on a failure condition";
          v20 = v25;
          v21 = 12;
          goto LABEL_40;
        }
      }
    }

    else
    {
      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: fault: handleErrorInResult illegally passed nil instead of a result\n", v28, 2u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v28 = 0;
        v19 = "CoreData: handleErrorInResult illegally passed nil instead of a result";
        v20 = v23;
        v21 = 2;
        goto LABEL_40;
      }
    }

    request = [request request];
    domain = [error2 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      if ([error2 code] == 134407)
      {
        [NSCloudKitMirroringDelegate resetAfterError:self andKeepContainer:error2];
LABEL_47:
        v15 = request;
        goto LABEL_20;
      }

      if ([error2 code] == 134406 || objc_msgSend(error2, "code") == 134418 || objc_msgSend(error2, "code") == 134419)
      {
        goto LABEL_47;
      }
    }

    if ([(NSCloudKitMirroringDelegate *)self recoverFromError:error2])
    {
      [(NSCloudKitMirroringDelegate *)self _requestEncounteredRecoverableError:request withResult:request];
    }

    else
    {
      [(NSCloudKitMirroringDelegate *)self _requestEncounteredUnrecoverableError:request withResult:request];
    }

    goto LABEL_21;
  }
}

void __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke(uint64_t a1)
{
  location[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 progressProvider];
  v6 = *(a1 + 32);
  if ((*(v6 + 89) & 1) == 0)
  {
    v18 = [*(v6 + 208) usableVoucherForEventType:0];
    if (v18)
    {
      v109 = v18;
      [objc_msgSend(*(a1 + 40) "options")];
    }

    v19 = [[PFCloudKitSetupAssistant alloc] initWithSetupRequest:*(a1 + 40) mirroringOptions:*(*(a1 + 32) + 8) accountMonitor:*(*(a1 + 32) + 136) observedStore:WeakRetained];
    v106 = 0;
    v20 = [(PFCloudKitSetupAssistant *)v19 _initializeCloudKitForObservedStore:(*(a1 + 32) + 128) andNoteMetadataInitialization:?];
    if (v19)
    {
      setupEvent = v19->_setupEvent;
    }

    else
    {
      setupEvent = 0;
    }

    v17 = setupEvent;
    if (v20)
    {
      v22 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v24 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v25 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v25 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(Stream, v25))
      {
        v26 = *(a1 + 32);
        v27 = [WeakRetained identifier];
        *buf = 136316162;
        *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 1137;
        *&buf[18] = 2112;
        *&buf[20] = v26;
        *&buf[28] = 2112;
        *&buf[30] = v27;
        *&buf[38] = 2112;
        v111 = WeakRetained;
        _os_log_impl(&dword_18565F000, v24, v25, "CoreData+CloudKit: %s(%d): %@: Successfully set up CloudKit integration for store (%@): %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v22);
      v28 = *(*(a1 + 32) + 56);
      if (v28)
      {

        *(*(a1 + 32) + 56) = 0;
      }

      if (v19)
      {
        database = v19->_database;
      }

      else
      {
        database = 0;
      }

      *(*(a1 + 32) + 56) = database;
      v30 = *(*(a1 + 32) + 40);
      if (v30)
      {

        *(*(a1 + 32) + 40) = 0;
      }

      if (v19)
      {
        databaseSubscription = v19->_databaseSubscription;
      }

      else
      {
        databaseSubscription = 0;
      }

      *(*(a1 + 32) + 40) = databaseSubscription;
      v32 = *(*(a1 + 32) + 48);
      if (v32)
      {

        *(*(a1 + 32) + 48) = 0;
      }

      if (v19)
      {
        container = v19->_container;
      }

      else
      {
        container = 0;
      }

      *(*(a1 + 32) + 48) = container;
      v34 = *(a1 + 32);
      v35 = *(v34 + 200);
      if (v35)
      {

        *(*(a1 + 32) + 200) = 0;
        v34 = *(a1 + 32);
      }

      if (*(v34 + 48) && ([*(v34 + 8) databaseScope] == 2 || objc_msgSend(*(*(a1 + 32) + 8), "databaseScope") == 3))
      {
        inited = objc_initWeak(buf, *(a1 + 32));
        *(*(a1 + 32) + 200) = [objc_alloc(getCloudKitCKSystemSharingUIObserverClass(inited)) initWithContainer:*(*(a1 + 32) + 48)];
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_274;
        v104[3] = &unk_1E6EC4B38;
        objc_copyWeak(&v105, buf);
        [*(*(a1 + 32) + 200) setSystemSharingUIDidSaveShareBlock:v104];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_276;
        v102[3] = &unk_1E6EC4B60;
        objc_copyWeak(&v103, buf);
        [*(*(a1 + 32) + 200) setSystemSharingUIDidStopSharingBlock:v102];
        objc_destroyWeak(&v103);
        objc_destroyWeak(&v105);
        objc_destroyWeak(buf);
      }

      *(*(a1 + 32) + 96) = [[PFCloudKitExporterOptions alloc] initWithDatabase:*(*(a1 + 32) + 56) options:*(*(a1 + 32) + 8)];
      v37 = [*(*(a1 + 32) + 136) currentUserRecordID];
      v38 = *(a1 + 32);
      if (v37 || (v39 = [*(v38 + 8) databaseScope], v38 = *(a1 + 32), v39 == 1))
      {
        *(v38 + 89) = 1;
        goto LABEL_45;
      }

      v82 = *(v38 + 8);
      if (v82)
      {
        v83 = (v38 + 89);
        if (*(v82 + 12) == 1)
        {
          *v83 = 1;
          goto LABEL_45;
        }
      }

      else
      {
        v83 = (v38 + 89);
      }

      *v83 = 0;
      v94 = *(*(a1 + 32) + 80);
      if (v94)
      {

        *(*(a1 + 32) + 80) = 0;
      }

      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
      v107 = *MEMORY[0x1E696A580];
      v108 = @"Failed to initialize because there is no user signed in to this device.";
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      *(*(a1 + 32) + 80) = [v95 initWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v96];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) registerForAccountAndIdentityNotificationsIfNeeded];
      if (*(*(a1 + 32) + 129) == 1)
      {
        [*(*(a1 + 32) + 72) unregisterForSubscriptionWithID:objc_msgSend(*(*(a1 + 32) + 40) inDatabase:{"subscriptionID"), *(*(a1 + 32) + 56)}];
        *(*(a1 + 32) + 129) = 0;
      }

LABEL_45:
      v40 = *(a1 + 32);
      if (*(v40 + 89) == 1)
      {
        v41 = *(v40 + 80);
        if (v41)
        {

          *(*(a1 + 32) + 80) = 0;
          v40 = *(a1 + 32);
        }

        v42 = [*(a1 + 40) options];
        if (v42)
        {
          v43 = *(v42 + 24);
          if (v40)
          {
LABEL_50:
            context = v43;
            v100 = objc_autoreleasePoolPush();
            Weak = objc_loadWeak((v40 + 120));
            [(NSCloudKitMirroringDelegate *)v40 registerForAccountAndIdentityNotificationsIfNeeded];
            objc_initWeak(location, v40);
            if ([*(v40 + 8) automaticallyScheduleImportAndExportOperations])
            {
              if ([objc_msgSend(v40 "accountMonitor")])
              {
                [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
                [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
              }

              v45 = *(v40 + 40);
              if (v45 && (*(v40 + 129) & 1) == 0)
              {
                v97 = *(v40 + 72);
                v46 = [v45 subscriptionID];
                v47 = *(v40 + 56);
                v112[0] = MEMORY[0x1E69E9820];
                v112[1] = 3221225472;
                v112[2] = __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke;
                v112[3] = &unk_1E6EC4AC0;
                objc_copyWeak(&v113, location);
                [v97 registerForSubscriptionWithID:v46 inDatabase:v47 handler:v112];
                *(v40 + 129) = 1;
                objc_destroyWeak(&v113);
              }

              if (!*(v40 + 192))
              {
                v48 = objc_alloc_init(PFApplicationStateMonitor);
                *(v40 + 192) = v48;
                if (v48)
                {
                  objc_storeWeak(&v48->_delegate, v40);
                }
              }

              if ([objc_msgSend(v40 "accountMonitor")])
              {
                v49 = objc_autoreleasePoolPush();
                v50 = __PFCloudKitLoggingGetStream();
                v51 = v50;
                v52 = __ckLoggingOverride;
                if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                {
                  v52 = OS_LOG_TYPE_INFO;
                }

                if (os_log_type_enabled(v50, v52))
                {
                  *buf = 136315650;
                  *&buf[4] = "[NSCloudKitMirroringDelegate _beginWatchingForChanges:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 757;
                  *&buf[18] = 2112;
                  *&buf[20] = v40;
                  _os_log_impl(&dword_18565F000, v51, v52, "CoreData+CloudKit: %s(%d): %@: Scheduling post-setup export", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v49);
                [(NSCloudKitMirroringDelegate *)v40 scheduleExportAndStartAfterDate:?];
              }

              if ([objc_msgSend(*(v40 + 48) "containerID")] == 2)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke_208;
                *&buf[24] = &unk_1E6EC4AE8;
                objc_copyWeak(&v111, location);
                *&buf[32] = v40;
                [(NSCloudKitMirroringDelegate *)v40 _openTransactionWithLabel:@"CoreData: CloudKit Sandbox Operations" assertionLabel:buf andExecuteWorkBlock:?];
                objc_destroyWeak(&v111);
              }

              else
              {
                [NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:v40 fromErrorRecovery:context & 1 fromShareAccept:0 andStartAfterDate:?];
              }
            }

            objc_destroyWeak(location);
            objc_autoreleasePoolPop(v100);
          }
        }

        else
        {
          v43 = 0;
          if (v40)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_121:

      goto LABEL_122;
    }

    v58 = *(*(a1 + 32) + 80);
    if (v58)
    {

      *(*(a1 + 32) + 80) = 0;
    }

    *(*(a1 + 32) + 80) = v106;
    *(*(a1 + 32) + 89) = 0;
    v59 = objc_autoreleasePoolPush();
    v60 = __PFCloudKitLoggingGetStream();
    v61 = v60;
    if (__ckLoggingOverride == 17)
    {
      v62 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v62 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v60, v62))
    {
      v63 = *(a1 + 32);
      *buf = 136316162;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1230;
      *&buf[18] = 2112;
      *&buf[20] = v63;
      *&buf[28] = 2112;
      *&buf[30] = WeakRetained;
      *&buf[38] = 2112;
      v111 = v106;
      _os_log_impl(&dword_18565F000, v61, v62, "CoreData+CloudKit: %s(%d): %@: Failed to set up CloudKit integration for store: %@\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v59);
    if (!v106)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _initializeCloudKitForObservedStore failed but did not return an error.\n", buf, 2u);
      }

      v78 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v78, OS_LOG_TYPE_FAULT, "CoreData: _initializeCloudKitForObservedStore failed but did not return an error.", buf, 2u);
      }

      goto LABEL_121;
    }

    if (([(NSCloudKitMirroringDelegate *)*(a1 + 32) recoverFromError:v106]& 1) == 0)
    {
      if (v19)
      {
        v79 = v19->_container;
        if (v79)
        {
          v80 = *(a1 + 32);
          v81 = *(v80 + 48);
          if (v81 != v79)
          {

            *(*(a1 + 32) + 48) = v19->_container;
            v80 = *(a1 + 32);
          }

          [(NSCloudKitMirroringDelegate *)v80 registerForAccountAndIdentityNotificationsIfNeeded];
        }
      }

      if ([objc_msgSend(*(*(a1 + 32) + 136) "currentAccountInfo")] != 3)
      {
        [*(*(a1 + 32) + 136) clearEstablishedAccountInfoAndUserRecordID];
      }

      goto LABEL_121;
    }

    if (![(NSCloudKitMirroringDelegate *)*(a1 + 32) shouldAttemptSetupRecoveryFromError:v106 viaPush:0])
    {
      goto LABEL_121;
    }

    v64 = *(a1 + 32);
    v65 = *(v64 + 48);
    if (v19)
    {
      if (v65 == v19->_container)
      {
        goto LABEL_90;
      }

      v66 = v19->_container;
    }

    else
    {
      if (!v65)
      {
        goto LABEL_90;
      }

      v66 = 0;
    }

    *(*(a1 + 32) + 48) = v66;
    v64 = *(a1 + 32);
    if (!v64)
    {
      goto LABEL_121;
    }

LABEL_90:
    v101 = v106;
    if (!v106)
    {
      v67 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: fault: Expected a non-nil error to schedule a setup activity from.\n", buf, 2u);
      }

      v68 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v68, OS_LOG_TYPE_FAULT, "CoreData: Expected a non-nil error to schedule a setup activity from.", buf, 2u);
      }
    }

    [*(v64 + 208) expireVouchersForEventType:0];
    if ([*(v64 + 8) automaticallyScheduleImportAndExportOperations])
    {
      v69 = objc_loadWeak((v64 + 112));
      contexta = objc_autoreleasePoolPush();
      v70 = __PFCloudKitLoggingGetStream();
      v71 = v70;
      v72 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v72 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(v70, v72))
      {
        *buf = 136315906;
        *&buf[4] = "[NSCloudKitMirroringDelegate _scheduleSetupActivityFromError:]";
        *&buf[12] = 1024;
        *&buf[14] = 3747;
        *&buf[18] = 2112;
        *&buf[20] = v64;
        *&buf[28] = 2112;
        *&buf[30] = v69;
        _os_log_impl(&dword_18565F000, v71, v72, "CoreData+CloudKit: %s(%d): %@: Submitting setup activity as recovery for %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(contexta);

      v73 = [(NSCloudKitMirroringDelegate *)v64 newActivityWithIdentifier:0 andVoucher:?];
      v74 = [NSCloudKitMirroringDelegate retryAfterInSecondsFromError:v101];
      [v74 doubleValue];
      if (v75 > 0.0)
      {
        v76 = MEMORY[0x1E695DF00];
        [v74 doubleValue];
        [v73 setEarliestStartDate:{objc_msgSend(v76, "dateWithTimeIntervalSinceNow:")}];
      }

      [*(v64 + 64) submitActivity:v73];
      [NSCloudKitMirroringDelegate resetAfterError:v64 andKeepContainer:v101];
    }

    goto LABEL_121;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = __PFCloudKitLoggingGetStream();
  v9 = v8;
  if (__ckLoggingOverride == 17)
  {
    v10 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v10 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 136315906;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 1261;
    *&buf[18] = 2112;
    *&buf[20] = v11;
    *&buf[28] = 2112;
    *&buf[30] = v12;
    _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): %@: Asked to set up but already successfully initialized: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  v112[0] = 0;
  v13 = *(a1 + 32);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v15 = *(v14 + 88);
  }

  else
  {
    v15 = 0;
  }

  v16 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v15 inTransactionWithLabel:WeakRetained];
  v17 = [NSCKEvent beginEventForRequest:v16 withMonitor:v112 error:?];
  if (v17)
  {
    [v5 eventUpdated:v17];
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    v54 = __PFCloudKitLoggingGetStream();
    v55 = v54;
    if (__ckLoggingOverride == 17)
    {
      v56 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v56 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v54, v56))
    {
      v57 = *(a1 + 32);
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1271;
      *&buf[18] = 2112;
      *&buf[20] = v57;
      *&buf[28] = 2112;
      *&buf[30] = v112[0];
      _os_log_impl(&dword_18565F000, v55, v56, "CoreData+CloudKit: %s(%d): %@: Failed to create setup event: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v53);
  }

LABEL_122:
  v84 = [NSCloudKitMirroringResult initWithRequest:"initWithRequest:storeIdentifier:success:madeChanges:error:" storeIdentifier:*(a1 + 40) success:*(*(a1 + 32) + 152) madeChanges:? error:?];
  [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v84 withResult:?];
  if (v17)
  {
    v112[0] = 0;
    v85 = *(a1 + 32);
    if (v85 && (v86 = *(v85 + 8)) != 0)
    {
      v87 = *(v86 + 88);
    }

    else
    {
      v87 = 0;
    }

    v88 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v87 inTransactionWithLabel:WeakRetained];
    v89 = [NSCKEvent finishEventForResult:v84 withMonitor:v88 error:v112];
    if (v89)
    {
      [v5 eventUpdated:v89];
    }

    else
    {
      v90 = objc_autoreleasePoolPush();
      v91 = __PFCloudKitLoggingGetStream();
      v92 = v91;
      if (__ckLoggingOverride == 17)
      {
        v93 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v93 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v91, v93))
      {
        *buf = 136315650;
        *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 1296;
        *&buf[18] = 2112;
        *&buf[20] = v112[0];
        _os_log_impl(&dword_18565F000, v92, v93, "CoreData+CloudKit: %s(%d): Failed to finish setup event: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v90);
    }
  }
}

void __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
      if (v6)
      {
        v7 = *(v6 + 88);
      }

      else
      {
        v7 = 0;
      }

      v16 = WeakRetained;
      Weak = objc_loadWeak(WeakRetained + 14);
      v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v7 inTransactionWithLabel:Weak];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke;
      *&buf[24] = &unk_1E6EC19D8;
      *&buf[32] = v9;
      v18 = v16;
      v19 = a3;
      [(PFCloudKitStoreMonitor *)v9 performBlock:buf];

      WeakRetained = v16;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v14 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v15 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v15))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1167;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      *&buf[28] = 2112;
      *&buf[30] = a4;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Called about a failure to save a share: %@ - %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v7 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v8 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1176;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      *&buf[28] = 2112;
      *&buf[30] = a3;
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Called about a failure to delete a share: %@ - %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    val = objc_loadWeakRetained((a1 + 32));
    if (val)
    {
      objc_initWeak(&location, val);
      v9 = val[1];
      if (v9)
      {
        v10 = v9[11];
      }

      else
      {
        v10 = 0;
      }

      Weak = objc_loadWeak(val + 14);
      v12 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v10 inTransactionWithLabel:Weak];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke;
      *&buf[24] = &unk_1E6EC4E80;
      *&buf[32] = v12;
      v16 = val;
      v17 = a2;
      objc_copyWeak(v18, &location);
      [(PFCloudKitStoreMonitor *)v12 performBlock:buf];

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)recoverFromError:(uint64_t)error
{
  errorCopy = error;
  v28 = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (!a2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: recoverFromError illegally passed nil instead of an error on a failure condition\n", buf, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: recoverFromError illegally passed nil instead of an error on a failure condition", buf, 2u);
      }
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      *buf = 136315906;
      v21 = "[NSCloudKitMirroringDelegate recoverFromError:]";
      v22 = 1024;
      v23 = 2304;
      v24 = 2112;
      v25 = errorCopy;
      v26 = 2112;
      v27 = a2;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@ - Attempting recovery from error: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(errorCopy + 8);
    if (v10)
    {
      v11 = *(v10 + 88);
    }

    else
    {
      v11 = 0;
    }

    Weak = objc_loadWeak((errorCopy + 112));
    v13 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v11 inTransactionWithLabel:Weak];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__NSCloudKitMirroringDelegate_recoverFromError___block_invoke;
    v15[3] = &unk_1E6EC2748;
    v15[4] = v13;
    v15[5] = a2;
    v15[6] = errorCopy;
    v15[7] = &v16;
    [(PFCloudKitStoreMonitor *)v13 performBlock:v15];

    LOBYTE(errorCopy) = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  return errorCopy & 1;
}

void __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v8 inTransactionWithLabel:WeakRetained];
    v20 = 0;
    v10 = [NSCKEvent beginEventForRequest:v9 withMonitor:&v20 error:?];
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 8);
      }

      else
      {
        v12 = 0;
      }

      [objc_msgSend(v12 "progressProvider")];
      v13 = [[PFCloudKitImporterOptions alloc] initWithOptions:*(*(a1 + 32) + 8) monitor:v9 assetStorageURL:[PFCloudKitSerializer assetStorageDirectoryURLForStore:?]andDatabase:*(*(a1 + 32) + 32), *(*(a1 + 32) + 56)];
      v14 = [[PFCloudKitImporter alloc] initWithOptions:v13 request:*(a1 + 40)];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke_2;
      v19[3] = &unk_1E6EC35E0;
      v19[4] = v14;
      v19[5] = a2;
      v15 = *(a1 + 32);
      v19[6] = v9;
      v19[7] = v15;
      [(PFCloudKitImporter *)v14 importIfNecessaryWithCompletion:v19];
    }

    else
    {
      v17 = [NSCloudKitMirroringResult alloc];
      v18 = [(NSCloudKitMirroringResult *)v17 initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:0 madeChanges:0 error:v20];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _importFinishedWithResult:v18 importer:0];

      v14 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v16];
  }
}

void __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = 0;
  v6 = [NSCKEvent finishEventForResult:a2 withMonitor:*(a1 + 48) error:&v13];
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(v8 "progressProvider")];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v15 = "[NSCloudKitMirroringDelegate _performImportWithRequest:]_block_invoke_2";
      v16 = 1024;
      v17 = 1353;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to finish import event: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  [(NSCloudKitMirroringDelegate *)*(a1 + 56) _importFinishedWithResult:a2 importer:v4];
}

- (id)_importFinishedWithResult:(uint64_t)result importer:
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    resultCopy = result;
    v6 = MEMORY[0x1E695DF90];
    v14[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "success", @"success"}];
    v13[1] = @"madeChanges";
    v13[2] = @"result";
    v14[1] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "madeChanges")}];
    v14[2] = a2;
    v7 = [v6 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 3)}];
    if ([a2 success])
    {
      if ([resultCopy[1] automaticallyScheduleImportAndExportOperations])
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
        *&buf[24] = &unk_1E6EC4D90;
        *&buf[32] = resultCopy;
        v16[0] = 0;
        *(v16 + 7) = 0;
        [(NSCloudKitMirroringDelegate *)resultCopy _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:buf andExecuteWorkBlock:?];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v10 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v11 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v11 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        error = [a2 error];
        *buf = 136315906;
        *&buf[4] = "[NSCloudKitMirroringDelegate _importFinishedWithResult:importer:]";
        *&buf[12] = 1024;
        *&buf[14] = 1392;
        *&buf[18] = 2112;
        *&buf[20] = result;
        *&buf[28] = 2112;
        *&buf[30] = error;
        _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: Import failed with error:\n%@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v8);
    }

    if ([a2 error])
    {
      [v7 setObject:objc_msgSend(a2 forKey:{"error"), @"error"}];
    }

    -[NSCloudKitMirroringDelegate _finishedRequest:withResult:](resultCopy, [a2 request], a2);
    return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return result;
}

- (void)_requestAbortedNotInitialized:(uint64_t)initialized
{
  v26 = *MEMORY[0x1E69E9840];
  if (initialized)
  {
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(initialized + 80);
      *buf = 136316162;
      v17 = "[NSCloudKitMirroringDelegate _requestAbortedNotInitialized:]";
      v18 = 1024;
      v19 = 2192;
      v20 = 2112;
      initializedCopy = initialized;
      v22 = 2112;
      v23 = a2;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): %@ - Never successfully initialized and cannot execute request '%@' due to error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [a2 requestIdentifier], *(initialized + 80));
    v10 = [NSCloudKitMirroringResult alloc];
    v11 = *(initialized + 152);
    v12 = *MEMORY[0x1E696A250];
    v14 = *MEMORY[0x1E696A588];
    v15 = v9;
    v13 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v10, "initWithRequest:storeIdentifier:success:madeChanges:error:", a2, v11, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:134406 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
    [(NSCloudKitMirroringDelegate *)initialized _finishedRequest:a2 withResult:v13];
  }
}

void __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke(uint64_t a1, void (*a2)(void, void))
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    if (![objc_msgSend(*(a1 + 32) "accountMonitor")])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = [WeakRetained URL];
        v23 = *(a1 + 32);
        if (v23)
        {
          v23 = *(v23 + 8);
        }

        *buf = 138412802;
        *&buf[4] = v21;
        v29 = 2112;
        v30 = v22;
        v31 = 2112;
        v32 = v23;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Illegal attempt to export without an account: %@ - %@\n", buf, 0x20u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v24 = *(a1 + 32);
        v25 = [WeakRetained URL];
        v26 = *(a1 + 32);
        if (v26)
        {
          v26 = *(v26 + 8);
        }

        *buf = 138412802;
        *&buf[4] = v24;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: %@: Illegal attempt to export without an account: %@ - %@", buf, 0x20u);
      }
    }

    v8 = *(a1 + 32);
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      v10 = *(v9 + 88);
    }

    else
    {
      v10 = 0;
    }

    v11 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v10 inTransactionWithLabel:WeakRetained];

    *buf = 0;
    v12 = [NSCKEvent beginEventForRequest:v11 withMonitor:buf error:?];
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 8);
      }

      else
      {
        v14 = 0;
      }

      [objc_msgSend(v14 "progressProvider")];
      v15 = [[PFCloudKitExporter alloc] initWithOptions:*(*(a1 + 32) + 96) request:*(a1 + 40) monitor:v11 workQueue:*(*(a1 + 32) + 32)];
      v16 = v15;
      if (v15)
      {
        objc_storeWeak(&v15->_delegate, *(a1 + 32));
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke_314;
      v27[3] = &unk_1E6EC35E0;
      v27[4] = a2;
      v27[5] = v16;
      v17 = *(a1 + 32);
      v27[6] = v11;
      v27[7] = v17;
      [(PFCloudKitExporter *)v16 exportIfNecessaryWithCompletion:v27];

      v11 = 0;
    }

    else
    {
      v19 = [NSCloudKitMirroringResult alloc];
      v20 = [(NSCloudKitMirroringResult *)v19 initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:0 madeChanges:0 error:*buf];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _exportFinishedWithResult:v20 exporter:0];
    }
  }

  else
  {
    v18 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v18];
  }
}

void __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke_314(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = 0;
  v6 = [NSCKEvent finishEventForResult:a2 withMonitor:*(a1 + 48) error:&v13];
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(v8 "progressProvider")];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v15 = "[NSCloudKitMirroringDelegate _performExportWithRequest:]_block_invoke";
      v16 = 1024;
      v17 = 1449;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to finish export event: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  [(NSCloudKitMirroringDelegate *)*(a1 + 56) _exportFinishedWithResult:a2 exporter:*(a1 + 40)];
}

- (void)_exportFinishedWithResult:(uint64_t)result exporter:
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    resultCopy = result;
    success = [a2 success];
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (success)
    {
      if (__ckLoggingOverride == 17)
      {
        v10 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v10 = 16 * (__ckLoggingOverride == 16);
      }

      if (!os_log_type_enabled(Stream, v10))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v20 = "[NSCloudKitMirroringDelegate _exportFinishedWithResult:exporter:]";
      v21 = 1024;
      v22 = 1484;
      v23 = 2112;
      resultCopy3 = result;
      v11 = "CoreData+CloudKit: %s(%d): Finished export: %@";
      v12 = v9;
      v13 = v10;
      v14 = 28;
    }

    else
    {
      if (__ckLoggingOverride == 17)
      {
        v15 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v15 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(Stream, v15))
      {
        goto LABEL_14;
      }

      *buf = 136315906;
      v20 = "[NSCloudKitMirroringDelegate _exportFinishedWithResult:exporter:]";
      v21 = 1024;
      v22 = 1486;
      v23 = 2112;
      resultCopy3 = result;
      v25 = 2112;
      error = [a2 error];
      v11 = "CoreData+CloudKit: %s(%d): %@: Export failed with error:\n%@";
      v13 = v15;
      v12 = v9;
      v14 = 38;
    }

    _os_log_impl(&dword_18565F000, v12, v13, v11, buf, v14);
LABEL_14:
    objc_autoreleasePoolPop(v7);
    -[NSCloudKitMirroringDelegate _finishedRequest:withResult:](resultCopy, [a2 request], a2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17[1] = @"result";
    v18[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "madeChanges", @"madeChanges"}];
    v18[1] = a2;
    return [defaultCenter postNotificationName:@"PFCloudKitDidExportNotificationName" object:resultCopy userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, v17, 2)}];
  }

  return result;
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 89) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 88);
    }

    else
    {
      v4 = 0;
    }

    Weak = objc_loadWeak((v2 + 112));
    v6 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v4 inTransactionWithLabel:Weak];
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 80);
    }

    else
    {
      v8 = 0;
    }

    if ([v8 count])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2;
      v18[3] = &unk_1E6EC19D8;
      v18[4] = v6;
      v19 = *(a1 + 32);
      [(PFCloudKitStoreMonitor *)v6 performBlock:v18];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v12 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v13 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v13 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v13))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *buf = 136315906;
        v23 = "[NSCloudKitMirroringDelegate _performResetZoneRequest:]_block_invoke_3";
        v24 = 1024;
        v25 = 1638;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_18565F000, v12, v13, "CoreData+CloudKit: %s(%d): %@: Asked to schedule a zone reset operation without a zoneID: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A588];
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 40) requestIdentifier]);
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      -[NSCloudKitMirroringDelegate resetAfterError:andKeepContainer:](*(a1 + 32), [v16 errorWithDomain:*MEMORY[0x1E696A250] code:134406 userInfo:v17]);
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _requestAbortedNotInitialized:?];
    }
  }

  else
  {
    v9 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v2 _requestAbortedNotInitialized:v9];
  }
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v44 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v44)
  {
    v53 = 0;
    v2 = *(a1 + 40);
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 96);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 80);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 32);
    v8 = [*(v2 + 56) databaseScope];
    if (v4 && ([(PFCloudKitMetadataPurger *)v4 purgeMetadataFromStore:v44 inMonitor:v7 withOptions:9 forRecordZones:v6 inDatabaseWithScope:v8 andTransactionAuthor:0 error:&v53]& 1) != 0)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = *(v9 + 80);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v11)
      {
        v12 = *v50;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v50 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v49 + 1) + 8 * i);
            v15 = [v14 ownerName];
            if ([v15 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
            {
              [v45 addObject:v14];
            }

            else
            {
              v16 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v18 = Stream;
              if (__ckLoggingOverride == 17)
              {
                v19 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v19 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(Stream, v19))
              {
                v20 = *(a1 + 40);
                *buf = 136315906;
                v58 = "[NSCloudKitMirroringDelegate _performResetZoneRequest:]_block_invoke";
                v59 = 1024;
                v60 = 1530;
                v61 = 2112;
                v62 = v20;
                v63 = 2112;
                v64 = v14;
                _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): %@: Skipping delete of zone because it's not owned by the current user: %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v16);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v11);
      }

      if ([v45 count])
      {
        v21 = [objc_alloc(getCloudKitCKModifyRecordZonesOperationClass()) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v45];
        if ([*(a1 + 48) options])
        {
          -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(a1 + 48) options], v21);
        }

        [v21 setMarkZonesAsUserPurged:1];
        objc_initWeak(buf, *(a1 + 40));
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_323;
        v46[3] = &unk_1E6EC4B88;
        objc_copyWeak(&v48, buf);
        v47 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
        [v21 setModifyRecordZonesCompletionBlock:v46];
        [*(*(a1 + 40) + 56) addOperation:v21];

        objc_destroyWeak(&v48);
        objc_destroyWeak(buf);
      }

      else
      {
        v43 = [[NSCloudKitMirroringResult alloc] initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 40) + 152) success:1 madeChanges:1 error:0];
        [(NSCloudKitMirroringDelegate *)*(a1 + 40) _finishedRequest:v43 withResult:?];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = __PFCloudKitLoggingGetStream();
      v30 = v29;
      if (__ckLoggingOverride == 17)
      {
        v31 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v31 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v29, v31))
      {
        v32 = *(a1 + 48);
        *buf = 136316162;
        v58 = "[NSCloudKitMirroringDelegate _performResetZoneRequest:]_block_invoke_2";
        v59 = 1024;
        v60 = 1521;
        v61 = 2112;
        v62 = v32;
        v63 = 2112;
        v64 = v44;
        v65 = 2112;
        v66 = v53;
        _os_log_impl(&dword_18565F000, v30, v31, "CoreData+CloudKit: %s(%d): Zone reset request failed: %@\nFailed to clear metadata from store: %@\n%@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = MEMORY[0x1E696AEC0];
      v34 = [*(a1 + 48) requestIdentifier];
      v35 = objc_msgSend_stringWithFormat_(v33, v34, v53);
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v36 setObject:v35 forKey:*MEMORY[0x1E696A588]];
      if (v53)
      {
        [v36 setObject:v53 forKey:*MEMORY[0x1E696AA08]];
      }

      v37 = [NSCloudKitMirroringResult alloc];
      v38 = *(a1 + 48);
      v39 = *(*(a1 + 40) + 152);
      v40 = MEMORY[0x1E696ABC0];
      v41 = [v36 copy];
      v42 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v37, "initWithRequest:storeIdentifier:success:madeChanges:error:", v38, v39, 0, 0, [v40 errorWithDomain:*MEMORY[0x1E696A250] code:134406 userInfo:v41]);
      [(NSCloudKitMirroringDelegate *)*(a1 + 40) _finishedRequest:v42 withResult:?];
    }
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A588];
    v23 = a1;
    v25 = *(a1 + 48);
    v24 = (a1 + 48);
    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v25 requestIdentifier]);
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v27 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", *v24, *(*(v23 + 40) + 152), 0, 0, [v22 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v26]);
    [(NSCloudKitMirroringDelegate *)*(v23 + 40) _finishedRequest:v27 withResult:?];
  }
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_323(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2_324;
    v10[3] = &unk_1E6EC2920;
    v10[4] = a4;
    v11 = *(a1 + 32);
    v12 = a3;
    dispatch_async(v9, v10);
  }
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2_324(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [[NSCloudKitMirroringResult alloc] initWithRequest:a1[5] storeIdentifier:*(a1[6] + 152) success:0 madeChanges:0 error:a1[4]];
    [(NSCloudKitMirroringDelegate *)a1[6] _finishedRequest:v2 withResult:?];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = a1[7];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = a1[5];
          if (v7)
          {
            v8 = *(v7 + 80);
          }

          else
          {
            v8 = 0;
          }

          if ([v8 containsObject:*(*(&v11 + 1) + 8 * v6)])
          {
            v10 = 1;
            goto LABEL_17;
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = v9;
      }

      while (v9);
    }

    v10 = 0;
LABEL_17:
    v2 = [[NSCloudKitMirroringResult alloc] initWithRequest:a1[5] storeIdentifier:*(a1[6] + 152) success:1 madeChanges:v10 error:0];
    [(NSCloudKitMirroringDelegate *)a1[6] _finishedRequest:v2 withResult:?];
  }
}

void __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v8 inTransactionWithLabel:WeakRetained];
    v21 = 0;
    v10 = [NSCKEvent beginEventForRequest:v9 withMonitor:&v21 error:?];
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 8);
      }

      else
      {
        v13 = 0;
      }

      [objc_msgSend(v13 "progressProvider")];
      v14 = [[PFCloudKitImporterOptions alloc] initWithOptions:*(*(a1 + 32) + 8) monitor:v9 assetStorageURL:[PFCloudKitSerializer assetStorageDirectoryURLForStore:?]andDatabase:*(*(a1 + 32) + 32), *(*(a1 + 32) + 56)];
      v15 = [[PFCloudKitImporter alloc] initWithOptions:v14 request:*(a1 + 40)];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke_2;
      v20[3] = &unk_1E6EC35E0;
      v20[4] = v15;
      v20[5] = a2;
      v16 = *(a1 + 32);
      v20[6] = v9;
      v20[7] = v16;
      [(PFCloudKitImporter *)v15 importIfNecessaryWithCompletion:v20];
    }

    else
    {
      v18 = [NSCloudKitMirroringResult alloc];
      v19 = [(NSCloudKitMirroringResult *)v18 initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:0 madeChanges:0 error:v21];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _importFinishedWithResult:v19 importer:0];

      v15 = 0;
      v11 = 0;
    }
  }

  else
  {
    v17 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v17];
  }
}

void __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = 0;
  v6 = [NSCKEvent finishEventForResult:a2 withMonitor:*(a1 + 48) error:&v13];
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(v8 "progressProvider")];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v15 = "[NSCloudKitMirroringDelegate _performFetchRecordsRequest:]_block_invoke_2";
      v16 = 1024;
      v17 = 1691;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to finish import event: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  [(NSCloudKitMirroringDelegate *)*(a1 + 56) _importFinishedWithResult:a2 importer:v4];
}

void __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 89) == 1)
  {
    v3 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [*(v2 + 8) databaseScope]);
    v4 = *(a1 + 32);
    if (v4 && (v5 = *(v4 + 8)) != 0)
    {
      v6 = *(v5 + 88);
    }

    else
    {
      v6 = 0;
    }

    Weak = objc_loadWeak((v4 + 112));
    v8 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v6 inTransactionWithLabel:Weak];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__41;
    v19 = __Block_byref_object_dispose__41;
    v20 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke_344;
    v10[3] = &unk_1E6EC2660;
    v10[4] = v8;
    v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v12 = v3;
    v13 = v21;
    v14 = &v15;
    [(PFCloudKitStoreMonitor *)v8 performBlock:v10];
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v16[5] withResult:?];

    v16[5] = 0;
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    v9 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v2 _requestAbortedNotInitialized:v9];
  }
}

void __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke_344(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (!v2)
  {
    v7 = [NSCloudKitMirroringResult alloc];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 152);
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A250];
    v43 = *MEMORY[0x1E696A588];
    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v8 requestIdentifier]);
    v12 = [v10 errorWithDomain:v11 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v44, &v43, 1)}];
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  *buf = 0;
  v3 = [objc_msgSend(*(a1 + 40) "objectIDsToReset")];
  v4 = *(*(a1 + 48) + 8);
  if (!v4)
  {
    v5 = 0;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = *(a1 + 32);
    v45[0] = *(a1 + 56);
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = *(v20 + 56);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v21 databaseScope];
    if (v5)
    {
      v6 = [(PFCloudKitMetadataPurger *)v5 purgeMetadataFromStore:v2 inMonitor:v18 withOptions:238 forRecordZones:v19 inDatabaseWithScope:v22 andTransactionAuthor:0 error:buf];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_11;
  }

  v5 = *(v4 + 96);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = -[PFCloudKitMetadataPurger purgeMetadataMatchingObjectIDs:inRequest:inStore:withMonitor:error:](v5, [*(a1 + 40) objectIDsToReset], *(a1 + 40), v2, *(a1 + 32), buf);
LABEL_11:
  *(*(*(a1 + 64) + 8) + 24) = v6;
  v13 = [NSCloudKitMirroringResult alloc];
  v14 = *(a1 + 40);
  v15 = *(*(a1 + 48) + 152);
  v16 = *(*(*(a1 + 64) + 8) + 24);
  v12 = *buf;
  v17 = v16;
LABEL_12:
  *(*(*(a1 + 72) + 8) + 40) = [(NSCloudKitMirroringResult *)v13 initWithRequest:v14 storeIdentifier:v15 success:v16 madeChanges:v17 error:v12];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v23 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v25 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v26 = 17;
    }

    else
    {
      v26 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v26 = 16;
    }

    if (__ckLoggingOverride)
    {
      v27 = v26;
    }

    else
    {
      v27 = OS_LOG_TYPE_DEFAULT;
    }

    if (!os_log_type_enabled(Stream, v27))
    {
      goto LABEL_30;
    }

    v28 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315906;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performMetadataResetRequest:]_block_invoke";
    v37 = 1024;
    v38 = 1769;
    v39 = 2112;
    v40 = v2;
    v41 = 2112;
    v42 = v28;
    v29 = "CoreData+CloudKit: %s(%d): Purged cloudkit metadata from store: %@\nResult: %@";
    v30 = v25;
    v31 = v27;
    goto LABEL_29;
  }

  if ([objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "error")] != 134407)
  {
    v23 = objc_autoreleasePoolPush();
    v32 = __PFCloudKitLoggingGetStream();
    v33 = v32;
    if (__ckLoggingOverride == 17)
    {
      v34 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v34 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v32, v34))
    {
      goto LABEL_30;
    }

    v35 = [*(*(*(a1 + 72) + 8) + 40) error];
    *buf = 136315906;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performMetadataResetRequest:]_block_invoke";
    v37 = 1024;
    v38 = 1771;
    v39 = 2112;
    v40 = v2;
    v41 = 2112;
    v42 = v35;
    v29 = "CoreData+CloudKit: %s(%d): Failed to purge cloudkit metadata from store: %@\n%@";
    v31 = v34;
    v30 = v33;
LABEL_29:
    _os_log_impl(&dword_18565F000, v30, v31, v29, buf, 0x26u);
LABEL_30:
    objc_autoreleasePoolPop(v23);
  }
}

void __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 89) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 88);
    }

    else
    {
      v4 = 0;
    }

    Weak = objc_loadWeak((v2 + 112));
    v6 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v4 inTransactionWithLabel:Weak];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__41;
    v15 = __Block_byref_object_dispose__41;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_2;
    v8[3] = &unk_1E6EC28A8;
    v8[4] = v6;
    v9 = *(a1 + 32);
    v10 = &v11;
    [(PFCloudKitStoreMonitor *)v6 performBlock:v8];
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v12[5] withResult:?];

    v12[5] = 0;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v2 _requestAbortedNotInitialized:v7];
  }
}

void __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_2(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = __Block_byref_object_copy__41;
    v23 = __Block_byref_object_dispose__41;
    v24 = 0;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_3;
    v12[3] = &unk_1E6EC3428;
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = v4;
    v16 = v3;
    v17 = &v19;
    v18 = &v25;
    [(NSManagedObjectContext *)v4 performBlockAndWait:v12];

    v5 = [NSCloudKitMirroringDelegateSerializationRequestResult alloc];
    if (*(v26 + 24))
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    *(*(*(a1 + 56) + 8) + 40) = [(NSCloudKitMirroringDelegateSerializationRequestResult *)v5 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 40) + 152) serializedObjects:v6 error:v20[5]];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v7 = [NSCloudKitMirroringResult alloc];
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 152);
    v10 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A588];
    v30[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v8 requestIdentifier]);
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *(*(*(a1 + 56) + 8) + 40) = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v7, "initWithRequest:storeIdentifier:success:madeChanges:error:", v8, v9, 0, 0, [v10 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v11]);
  }
}

void __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_3(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PFCloudKitMetadataCache);
  v3 = [PFCloudKitSerializer alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v49 = v2;
  v6 = [(PFCloudKitSerializer *)v3 initWithMirroringOptions:v5 metadataCache:v2 recordNamePrefix:0];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [*(a1 + 40) objectIDsToSerialize];
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v52;
    *&v9 = 134218242;
    v48 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v51 + 1) + 8 * v12);
        v14 = [objc_msgSend(v13 persistentStore];
        v15 = *(a1 + 48);
        if (v15)
        {
          v16 = *(v15 + 48);
        }

        else
        {
          v16 = 0;
        }

        if ([v14 isEqualToString:v16])
        {
          v50 = 0;
          v17 = [*(a1 + 56) existingObjectWithID:v13 error:&v50];
          if (v17)
          {
            v18 = v17;
            v19 = [(PFCloudKitSerializer *)v6 newCKRecordsFromObject:v17 fullyMaterializeRecords:0 includeRelationships:0 error:&v50];
            if (!v19)
            {
              *(*(*(a1 + 72) + 8) + 40) = v50;
              *(*(*(a1 + 80) + 8) + 24) = 0;
              goto LABEL_46;
            }

            v20 = v19;
            if ([v19 count])
            {
              if ([v20 count] >= 2)
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v56 = v18;
                  v57 = 2112;
                  *v58 = v20;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Multiple records returned for object even though we didn't ask for relationships: %@\n%@\n", buf, 0x16u);
                }

                v22 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v56 = v18;
                  v57 = 2112;
                  *v58 = v20;
                  _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Multiple records returned for object even though we didn't ask for relationships: %@\n%@", buf, 0x16u);
                }
              }

              v23 = [*(a1 + 40) resultType];
              if (!v23)
              {
                v24 = *(a1 + 64);
                v25 = [objc_msgSend(v20 objectAtIndexedSubscript:{0), "recordID"}];
LABEL_33:
                [v24 setObject:v25 forKey:v13];
                goto LABEL_37;
              }

              if (v23 == 1)
              {
                v24 = *(a1 + 64);
                v25 = [v20 objectAtIndexedSubscript:0];
                goto LABEL_33;
              }

              v36 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v38 = [*(a1 + 40) resultType];
                v39 = *(a1 + 40);
                *buf = v48;
                v56 = v38;
                v57 = 2112;
                *v58 = v39;
                _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported resultType: %lu, %@\n", buf, 0x16u);
              }

              v37 = _PFLogGetLogStream(17);
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
LABEL_37:

                goto LABEL_38;
              }

              v40 = [*(a1 + 40) resultType];
              v41 = *(a1 + 40);
              *buf = v48;
              v56 = v40;
              v57 = 2112;
              *v58 = v41;
              v33 = v37;
              v34 = "CoreData: Unsupported resultType: %lu, %@";
              v35 = 22;
            }

            else
            {
              v31 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v56 = v18;
                _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: No records returned from the serializer for object: %@\n", buf, 0xCu);
              }

              v32 = _PFLogGetLogStream(17);
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_37;
              }

              *buf = 138412290;
              v56 = v18;
              v33 = v32;
              v34 = "CoreData: No records returned from the serializer for object: %@";
              v35 = 12;
            }

            _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, v34, buf, v35);
            goto LABEL_37;
          }

          v26 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v28 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v29 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v29 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v29))
          {
            v30 = *(a1 + 32);
            *buf = 136315906;
            v56 = "[NSCloudKitMirroringDelegate _performSerializationRequest:]_block_invoke";
            v57 = 1024;
            *v58 = 1850;
            *&v58[4] = 2112;
            *&v58[6] = v30;
            v59 = 2112;
            v60 = v13;
            _os_log_impl(&dword_18565F000, v28, v29, "CoreData+CloudKit: %s(%d): %@ - Unable to serialize object '%@' because it appears to be missing from the store.", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v26);
        }

LABEL_38:
        ++v12;
      }

      while (v10 != v12);
      v42 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
      v10 = v42;
    }

    while (v42);
  }

LABEL_46:
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if ([*(a1 + 56) hasChanges])
    {
      v50 = 0;
      if (([*(a1 + 56) save:&v50] & 1) == 0)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = __PFCloudKitLoggingGetStream();
        v45 = v44;
        if (__ckLoggingOverride == 17)
        {
          v46 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v46 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v44, v46))
        {
          v47 = *(a1 + 40);
          *buf = 136315906;
          v56 = "[NSCloudKitMirroringDelegate _performSerializationRequest:]_block_invoke";
          v57 = 1024;
          *v58 = 1859;
          *&v58[4] = 2112;
          *&v58[6] = v50;
          v59 = 2112;
          v60 = v47;
          _os_log_impl(&dword_18565F000, v45, v46, "CoreData+CloudKit: %s(%d): Failed to save metadata changes from serialization of records: %@\n%@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v43);
      }
    }
  }
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 89) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 88);
    }

    else
    {
      v4 = 0;
    }

    Weak = objc_loadWeak((v2 + 112));
    v6 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v4 inTransactionWithLabel:Weak];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__41;
    v15 = __Block_byref_object_dispose__41;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_2;
    v8[3] = &unk_1E6EC2748;
    v8[4] = v6;
    v10 = &v11;
    v9 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    [(PFCloudKitStoreMonitor *)v6 performBlock:v8];
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v12[5] withResult:?];

    v12[5] = 0;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v2 _requestAbortedNotInitialized:v7];
  }
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_2(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_3;
    v10[3] = &unk_1E6EC4BD8;
    v10[4] = v2;
    v10[5] = v3;
    v4 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v13 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v10];
  }

  else
  {
    v5 = [NSCloudKitMirroringResult alloc];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 152);
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v14 = *MEMORY[0x1E696A588];
    v15[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v6 requestIdentifier]);
    *(*(*(a1 + 56) + 8) + 40) = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v5, "initWithRequest:storeIdentifier:success:madeChanges:error:", v6, v7, 0, 0, [v8 errorWithDomain:v9 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}]);
  }
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v2 = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:&v38 error:?];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [v2 transformedValue];
    if ([objc_msgSend(objc_msgSend(v4 "storeTokens")] < 1)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [*(a1 + 48) objectIDsToFetch];
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v39 count:16];
      if (v14)
      {
        v15 = *v24;
        do
        {
          v16 = 0;
          do
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v23 + 1) + 8 * v16);
            v18 = [objc_msgSend(v17 "persistentStore")];
            v19 = *(a1 + 64);
            if (v19)
            {
              v20 = *(v19 + 48);
            }

            else
            {
              v20 = 0;
            }

            if ([v18 isEqualToString:v20])
            {
              [v3 setObject:v4 forKey:v17];
            }

            ++v16;
          }

          while (v14 != v16);
          v21 = [v13 countByEnumeratingWithState:&v23 objects:v39 count:16];
          v14 = v21;
        }

        while (v21);
      }

      *(*(*(a1 + 72) + 8) + 40) = [[NSCloudKitMirroringExportProgressResult alloc] initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) objectIDToLastExportedToken:v3 error:0];
    }

    else
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3052000000;
      v35 = __Block_byref_object_copy__41;
      v36 = __Block_byref_object_dispose__41;
      v37 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 1;
      v5 = [*(a1 + 48) objectIDsToFetch];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_4;
      v27[3] = &unk_1E6EC4BB0;
      v27[4] = v6;
      v27[5] = v3;
      v27[6] = &v28;
      v27[7] = &v32;
      [NSCKRecordMetadata enumerateRecordMetadataDictionariesMatchingObjectIDs:v5 withProperties:&unk_1EF43D648 inStore:v6 withManagedObjectContext:v7 block:v27];
      if (*(v29 + 24) == 1)
      {
        v8 = [NSCloudKitMirroringExportProgressResult alloc];
        v9 = 0;
        v10 = v3;
      }

      else
      {
        v8 = [NSCloudKitMirroringExportProgressResult alloc];
        v10 = 0;
        v9 = v33[5];
      }

      *(*(*(a1 + 72) + 8) + 40) = [(NSCloudKitMirroringExportProgressResult *)v8 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) objectIDToLastExportedToken:v10 error:v9];

      v33[5] = 0;
      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v32, 8);
    }
  }

  else
  {
    if (v38)
    {
      v11 = [NSCloudKitMirroringResult alloc];
      v12 = [(NSCloudKitMirroringResult *)v11 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) success:0 madeChanges:0 error:v38];
    }

    else
    {
      v22 = [NSCloudKitMirroringExportProgressResult alloc];
      v12 = [(NSCloudKitMirroringExportProgressResult *)v22 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) objectIDToLastExportedToken:MEMORY[0x1E695E0F8] error:0];
    }

    *(*(*(a1 + 72) + 8) + 40) = v12;
  }
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [NSCKRecordMetadata createObjectIDFromMetadataDictionary:a2 inSQLCore:*(a1 + 32)];
    v7 = [a2 objectForKeyedSubscript:@"lastExportedTransactionNumber"];
    v8 = [NSPersistentHistoryToken alloc];
    if (!v7)
    {
      v7 = &unk_1EF435E60;
    }

    v9 = -[NSPersistentHistoryToken initWithTransactionNumber:andStoreID:](v8, "initWithTransactionNumber:andStoreID:", v7, [*(a1 + 32) identifier]);
    [*(a1 + 40) setObject:v9 forKey:v6];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = a3;
  }
}

void __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    if ([*(v3 + 8) databaseScope] == 3)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 80);
      }

      else
      {
        v6 = 0;
      }

      if ([v6 count])
      {
        v7 = objc_alloc(getCloudKitCKFetchShareMetadataOperationClass());
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 80);
        }

        else
        {
          v9 = 0;
        }

        v10 = [v7 initWithShareURLs:v9];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_2;
        v31[3] = &unk_1E6EC4C00;
        v31[4] = v11;
        v31[5] = 0;
        [v10 setPerShareMetadataBlock:v31];
        objc_initWeak(&location, *(a1 + 32));
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_381;
        v28[3] = &unk_1E6EC4C28;
        objc_copyWeak(&v29, &location);
        v12 = *(a1 + 40);
        v28[4] = 0;
        v28[5] = v12;
        v28[6] = v11;
        v28[7] = a2;
        [v10 setFetchShareMetadataCompletionBlock:v28];
        [*(*(a1 + 32) + 48) addOperation:v10];

        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }

      else
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);

        [(NSCloudKitMirroringDelegate *)v24 _acceptShareMetadatasInRequest:v25 workBlockContext:a2];
      }
    }

    else
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        Weak = objc_loadWeak((v14 + 112));
      }

      else
      {
        Weak = 0;
      }

      v16 = Weak;
      v17 = [NSCloudKitMirroringResult alloc];
      v18 = *(a1 + 40);
      v19 = *(*(a1 + 32) + 152);
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A588];
      v33[0] = @"Provided persistent store is not set to the shared database scope and cannot accept share invitation.";
      v22 = *MEMORY[0x1E696A998];
      v32[0] = v21;
      v32[1] = v22;
      if ([v16 URL])
      {
        v23 = [v16 URL];
      }

      else
      {
        v23 = @"nil";
      }

      v33[1] = v23;
      v32[2] = @"databaseScope";
      v33[2] = softLinkCKDatabaseScopeString([*(*(a1 + 32) + 8) databaseScope]);
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
      v27 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v17, "initWithRequest:storeIdentifier:success:madeChanges:error:", v18, v19, 0, 0, [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:v26]);
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v27 withResult:?];
    }
  }

  else
  {
    v13 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v13];
  }
}

void __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 addObject:?];
  }

  else if (a4)
  {
    v6 = *(a1 + 40);

    [v6 setObject:a4 forKey:a2];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: No metadata or error for share URL: %@\n", &v9, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: No metadata or error for share URL: %@", &v9, 0xCu);
    }
  }
}

void __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_381(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (![*(a1 + 32) count])
  {
    goto LABEL_5;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14[0]) = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Some shareURLs failed to return metadata...\n", v14, 2u);
  }

  v6 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Some shareURLs failed to return metadata...", v14, 2u);
    if (a2)
    {
LABEL_6:
      if (WeakRetained)
      {
        v7 = *(a1 + 40);
        v8 = WeakRetained[4];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62__NSCloudKitMirroringDelegate__handleError_duringShareAccept___block_invoke;
        v14[3] = &unk_1E6EC19D8;
        v14[4] = v7;
        v14[5] = WeakRetained;
        v14[6] = a2;
        dispatch_async(v8, v14);
      }

      goto LABEL_14;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 88);
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 48) addObjectsFromArray:v10];
  v12 = *(a1 + 40);
  if (v12)
  {
    objc_setProperty_nonatomic_copy(v12, v11, *(a1 + 48), 88);
    v13 = *(a1 + 40);
  }

  else
  {
    v13 = 0;
  }

  [(NSCloudKitMirroringDelegate *)WeakRetained _acceptShareMetadatasInRequest:v13 workBlockContext:*(a1 + 56)];
LABEL_14:
}

- (void)_acceptShareMetadatasInRequest:(uint64_t)request workBlockContext:
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v9))
    {
      *buf = 136315906;
      v18 = "[NSCloudKitMirroringDelegate _acceptShareMetadatasInRequest:workBlockContext:]";
      v19 = 1024;
      v20 = 2076;
      v21 = 2112;
      selfCopy = self;
      v23 = 2112;
      v24 = a2;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@: Accepting shares defined by request: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = objc_alloc(getCloudKitCKAcceptSharesOperationClass());
    if (a2)
    {
      v11 = *(a2 + 88);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v10 initWithShareMetadatas:v11];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke;
    v16[3] = &unk_1E6EC4C50;
    v16[4] = v13;
    v16[5] = v14;
    [v12 setPerShareCompletionBlock:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_393;
    v15[3] = &unk_1E6EC4CA0;
    v15[4] = self;
    v15[5] = a2;
    v15[6] = request;
    v15[7] = v13;
    v15[8] = v14;
    [v12 setAcceptSharesCompletionBlock:v15];
    [*(self + 48) addOperation:v12];
  }
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [*(a1 + 32) addObject:{a3, a4}];
    v6 = *(a1 + 40);

    [v6 addObject:a2];
  }

  else if (a4)
  {
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      v14 = 136315906;
      v15 = "[NSCloudKitMirroringDelegate _acceptShareMetadatasInRequest:workBlockContext:]_block_invoke";
      v16 = 1024;
      v17 = 2085;
      v18 = 2112;
      v19 = a2;
      v20 = 2112;
      v21 = a4;
      _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): Failed to accept share: %@\n%@", &v14, 0x26u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: No error or share for accepted share metadata: %@\n", &v14, 0xCu);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = 138412290;
      v15 = a2;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: No error or share for accepted share metadata: %@", &v14, 0xCu);
    }
  }
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_393(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 32);
  v5 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v4[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_2;
  v4[3] = &unk_1E6EC44E8;
  v4[4] = a2;
  v6 = v2;
  v7 = *(a1 + 64);
  dispatch_async(v3, v4);
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v9 = [[NSCloudKitMirroringResult alloc] initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 48) + 152) success:0 madeChanges:0 error:*(a1 + 32)];
    [(NSCloudKitMirroringDelegate *)*(a1 + 48) _finishedRequest:v9 withResult:?];
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 && (v3 = *(v2 + 8)) != 0)
    {
      v4 = *(v3 + 88);
    }

    else
    {
      v4 = 0;
    }

    Weak = objc_loadWeak((v2 + 112));
    v6 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v4 inTransactionWithLabel:Weak];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__41;
    v18 = __Block_byref_object_dispose__41;
    v19 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_3;
    v10[3] = &unk_1E6EC4BD8;
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v10[4] = v6;
    v10[5] = v7;
    v11 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v12 = v8;
    v13 = &v14;
    [(PFCloudKitStoreMonitor *)v6 performBlock:v10];
    [(NSCloudKitMirroringDelegate *)*(a1 + 48) _finishedRequest:v15[5] withResult:?];

    v15[5] = 0;
    _Block_object_dispose(&v14, 8);
  }
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_3(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_4;
    v9[3] = &unk_1E6EC4C78;
    v10 = *(a1 + 40);
    v11 = v2;
    v12 = v3;
    v14 = *(a1 + 72);
    v13 = *(a1 + 56);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v9];
  }

  else
  {
    v4 = [NSCloudKitMirroringAcceptShareInvitationsResult alloc];
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 48) + 152);
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v5 requestIdentifier]);
    *(*(*(a1 + 72) + 8) + 40) = -[NSCloudKitMirroringAcceptShareInvitationsResult initWithRequest:storeIdentifier:acceptedShares:acceptedShareMetadatas:error:](v4, "initWithRequest:storeIdentifier:acceptedShares:acceptedShareMetadatas:error:", v5, v6, 0, 0, [v7 errorWithDomain:v8 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, &v15, 1)}]);
  }
}

NSCloudKitMirroringAcceptShareInvitationsResult *__79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_4(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v6 = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v32 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v31 + 1) + 8 * v7);
      v9 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(v8 "recordID")], objc_msgSend(*(a1[5] + 56), "databaseScope"), a1[6], a1[7], &v35);
      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = *(a1[5] + 8);
      if (v10 && (v11 = v9, (v12 = *(v10 + 136)) != 0))
      {
        v13 = [(PFCloudKitArchivingUtilities *)v12 encodeRecord:v8 error:&v35];
        if (v13)
        {
          [(NSManagedObject *)v11 setNeedsImport:1];
          [(NSManagedObject *)v11 setNeedsShareUpdate:0];
          [(NSManagedObject *)v11 updateEncodedShareWithData:v13];
          if ([objc_msgSend(v8 "currentUserParticipant")] != 1 || objc_msgSend(objc_msgSend(v8, "currentUserParticipant"), "acceptanceStatus") != 2)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v28 = [objc_msgSend(v8 "recordID")];
              v30 = v6;
              v18 = [objc_msgSend(v8 "currentUserParticipant")];
              v19 = [objc_msgSend(v8 "currentUserParticipant")];
              *buf = 138412802;
              v37 = v28;
              v38 = 2048;
              v39 = v18;
              v6 = v30;
              v40 = 2048;
              v41 = v19;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Accepted share %@ but the invitation status %lu or acceptance status %lu is incorrect.\n", buf, 0x20u);
            }

            v15 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v27 = [objc_msgSend(v8 "recordID")];
              v29 = v6;
              v16 = [objc_msgSend(v8 "currentUserParticipant")];
              v17 = [objc_msgSend(v8 "currentUserParticipant")];
              *buf = 138412802;
              v37 = v27;
              v38 = 2048;
              v39 = v16;
              v6 = v29;
              v40 = 2048;
              v41 = v17;
              _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Accepted share %@ but the invitation status %lu or acceptance status %lu is incorrect.", buf, 0x20u);
            }
          }

          goto LABEL_18;
        }
      }

      else
      {
        v13 = 0;
      }

      v6 = 0;
LABEL_18:

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  if ([a1[7] hasChanges] && !objc_msgSend(a1[7], "save:", &v35))
  {
LABEL_24:
    v20 = [NSCloudKitMirroringAcceptShareInvitationsResult alloc];
    v23 = a1[8];
    v22 = *(a1[5] + 152);
    v25 = v35;
    v21 = 0;
    v24 = 0;
  }

  else
  {
    [NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:0 fromErrorRecovery:1 fromShareAccept:? andStartAfterDate:?];
    v20 = [NSCloudKitMirroringAcceptShareInvitationsResult alloc];
    v21 = a1[4];
    v22 = *(a1[5] + 152);
    v23 = a1[8];
    v24 = a1[9];
    v25 = 0;
  }

  result = [(NSCloudKitMirroringAcceptShareInvitationsResult *)v20 initWithRequest:v23 storeIdentifier:v22 acceptedShares:v21 acceptedShareMetadatas:v24 error:v25];
  *(*(a1[10] + 8) + 40) = result;
  return result;
}

- (void)_requestEncounteredUnrecoverableError:(void *)error withResult:
{
  -[NSCloudKitMirroringDelegate resetAfterError:andKeepContainer:](self, [error error]);
  v6 = -[PFCloudKitFatalErrorMetric initWithContainerIdentifier:result:]([PFCloudKitFatalErrorMetric alloc], "initWithContainerIdentifier:result:", [*(self + 8) containerIdentifier], error);
  v7 = *(self + 8);
  if (v7)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  [(PFMetricsClient *)v8 logMetric:v6];

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([error error])
  {
    error = [error error];
    [v11 setObject:error forKey:*MEMORY[0x1E696AA08]];
  }

  v10 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", a2, *(self + 152), [error success], objc_msgSend(error, "madeChanges"), objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134410, v11));
  [(NSCloudKitMirroringRequest *)a2 invokeCompletionBlockWithResult:v10];
}

- (void)_requestEncounteredRecoverableError:(void *)error withResult:
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([error error])
  {
    error = [error error];
    [v8 setObject:error forKey:*MEMORY[0x1E696AA08]];
  }

  v7 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", a2, *(self + 152), [error success], objc_msgSend(error, "madeChanges"), objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134409, v8));
  [(NSCloudKitMirroringRequest *)a2 invokeCompletionBlockWithResult:v7];
}

void __48__NSCloudKitMirroringDelegate_recoverFromError___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [(PFCloudKitStoreMonitor *)v4 retainedMonitoredStore];
  if (v5)
  {
    v6 = [*(a1 + 40) domain];
    if ([v6 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(*(a1 + 40), "code") == 2)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = [v8 domain];
        if ([v10 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(v8, "code") == 2)
        {
          v11 = [v8 userInfo];
          v12 = [v11 objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
          v49 = 0;
          v50 = &v49;
          v51 = 0x2020000000;
          v52 = 0;
          v43 = 0;
          v44 = &v43;
          v45 = 0x3052000000;
          v46 = __Block_byref_object_copy__41;
          v47 = __Block_byref_object_dispose__41;
          v48 = 0;
          v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *v57 = MEMORY[0x1E69E9820];
          *&v57[8] = 3221225472;
          *&v57[16] = __75__NSCloudKitMirroringDelegate__recoverFromPartialError_forStore_inMonitor___block_invoke;
          *&v57[24] = &unk_1E6EC4CC8;
          v65 = &v49;
          v66 = &v43;
          v58 = v8;
          v59 = v40;
          v60 = v41;
          v61 = v42;
          v62 = v13;
          v63 = v14;
          v64 = v7;
          [v12 enumerateKeysAndObjectsUsingBlock:v57];
          if ([v13 count])
          {
            v15 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v17 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v18 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v18 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v18))
            {
              *buf = 136315906;
              *&buf[4] = "[NSCloudKitMirroringDelegate _recoverFromPartialError:forStore:inMonitor:]";
              *&buf[12] = 1024;
              *&buf[14] = 2822;
              *&buf[18] = 2112;
              *&buf[20] = v7;
              *&buf[28] = 2112;
              *&buf[30] = v13;
              _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): %@: Error recovery failed because the following fatal errors were found: %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v15);
          }

          else
          {
            if (*(v50 + 24) == 1)
            {
              v39 = [(NSCloudKitMirroringDelegate *)v7 _recoverFromError:v40 withZoneIDs:v5 forStore:v9 inMonitor:?];
            }

            else
            {
              v39 = 1;
            }

            if ([v42 count])
            {
              v53 = 0;
              v54 = &v53;
              v55 = 0x2020000000;
              v56 = 0;
              v29 = [(PFCloudKitStoreMonitor *)v9 newBackgroundContextForMonitoredCoordinator];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __79__NSCloudKitMirroringDelegate__recoverUnknownItemRecordIDs_forStore_inMonitor___block_invoke;
              *&buf[24] = &unk_1E6EC3450;
              *&buf[32] = v42;
              v71 = v5;
              v72 = v29;
              v73 = v7;
              v74 = &v53;
              [(NSManagedObjectContext *)v29 performBlockAndWait:buf];

              if (*(v54 + 24) == 1)
              {
                context = objc_autoreleasePoolPush();
                v30 = __PFCloudKitLoggingGetStream();
                v31 = v30;
                v32 = __ckLoggingOverride;
                if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                {
                  v32 = OS_LOG_TYPE_INFO;
                }

                if (os_log_type_enabled(v30, v32))
                {
                  *v67 = 136315906;
                  *&v67[4] = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]";
                  *&v67[12] = 1024;
                  *&v67[14] = 2958;
                  *&v67[18] = 2112;
                  *&v67[20] = v7;
                  v68 = 2112;
                  v69 = v42;
                  _os_log_impl(&dword_18565F000, v31, v32, "CoreData+CloudKit: %s(%d): %@: Recovered from unknown item error for recordIDs: %@", v67, 0x26u);
                }

                objc_autoreleasePoolPop(context);
                contexta = *(v54 + 24);
              }

              else
              {
                contexta = 0;
              }

              _Block_object_dispose(&v53, 8);
            }

            else
            {
              contexta = 1;
            }

            v33 = 1;
            if ([v14 count])
            {
              *v67 = 0;
              *&v67[8] = v67;
              *&v67[16] = 0x2020000000;
              v67[24] = 1;
              v34 = [(PFCloudKitStoreMonitor *)v9 newBackgroundContextForMonitoredCoordinator];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __79__NSCloudKitMirroringDelegate__recoverConflictedZoneShares_forStore_inMonitor___block_invoke;
              *&buf[24] = &unk_1E6EC3450;
              *&buf[32] = v14;
              v71 = v7;
              v72 = v5;
              v73 = v34;
              v74 = v67;
              [(NSManagedObjectContext *)v34 performBlockAndWait:buf];

              v33 = *(*&v67[8] + 24);
              _Block_object_dispose(v67, 8);
            }

            if ([v41 count])
            {
              *v67 = 0;
              *&v67[8] = v67;
              *&v67[16] = 0x2020000000;
              v67[24] = 0;
              v35 = [(PFCloudKitStoreMonitor *)v9 newBackgroundContextForMonitoredCoordinator];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __84__NSCloudKitMirroringDelegate__recoverFromUnknownShareRecordIDs_forStore_inMonitor___block_invoke;
              *&buf[24] = &unk_1E6EC3450;
              *&buf[32] = v41;
              v71 = v7;
              v72 = v5;
              v73 = v35;
              v74 = v67;
              [(NSManagedObjectContext *)v35 performBlockAndWait:buf];

              v36 = *(*&v67[8] + 24);
              _Block_object_dispose(v67, 8);
            }

            else
            {
              v36 = 1;
            }

            if ((v39 & contexta) == 1)
            {
              v28 = v33 & v36;
LABEL_53:

              v44[5] = 0;
              _Block_object_dispose(&v43, 8);
              _Block_object_dispose(&v49, 8);
              goto LABEL_54;
            }
          }

          v28 = 0;
          goto LABEL_53;
        }

        v24 = objc_autoreleasePoolPush();
        v25 = __PFCloudKitLoggingGetStream();
        v26 = v25;
        if (__ckLoggingOverride == 17)
        {
          v27 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v27 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v25, v27))
        {
          *v57 = 136315650;
          *&v57[4] = "[NSCloudKitMirroringDelegate _recoverFromPartialError:forStore:inMonitor:]";
          *&v57[12] = 1024;
          *&v57[14] = 2831;
          *&v57[18] = 2112;
          *&v57[20] = v8;
          _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): Unknown error passed to partial error handler: %@", v57, 0x1Cu);
        }

        objc_autoreleasePoolPop(v24);
      }

      v28 = 0;
LABEL_54:
      *(*(*(a1 + 56) + 8) + 24) = v28 & 1;
      goto LABEL_55;
    }

    *(*(*(a1 + 56) + 8) + 24) = [(NSCloudKitMirroringDelegate *)*(a1 + 48) _recoverFromError:0 withZoneIDs:v5 forStore:*(a1 + 32) inMonitor:?];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = __PFCloudKitLoggingGetStream();
    v21 = v20;
    if (__ckLoggingOverride == 17)
    {
      v22 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v22 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v20, v22))
    {
      v23 = *(a1 + 40);
      *v57 = 136315650;
      *&v57[4] = "[NSCloudKitMirroringDelegate recoverFromError:]_block_invoke";
      *&v57[12] = 1024;
      *&v57[14] = 2323;
      *&v57[18] = 2112;
      *&v57[20] = v23;
      _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): The store was removed before the mirroring delegate could recover from an error:\n%@", v57, 0x1Cu);
    }

    objc_autoreleasePoolPop(v19);
  }

LABEL_55:
}

- (uint64_t)_recoverFromError:(void *)error withZoneIDs:(uint64_t)ds forStore:(uint64_t)store inMonitor:
{
  v122 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = a2;
    selfCopy = self;
    v104 = 0;
    domain = [a2 domain];
    if ([domain isEqualToString:getCloudKitCKErrorDomain()])
    {
      if ([v8 code] == 112 || objc_msgSend(v8, "code") == 21 || objc_msgSend(v8, "code") == 26)
      {
        [(NSCloudKitMirroringDelegate *)selfCopy _postResetSyncNotificationWithName:v8 forError:?];
        if (![error count])
        {
          v36 = *(selfCopy + 8);
          if (v36)
          {
            v37 = *(v36 + 96);
            databaseScope = [*(selfCopy + 56) databaseScope];
            if (v37 && [(PFCloudKitMetadataPurger *)v37 purgeMetadataFromStore:ds inMonitor:store withOptions:294 forRecordZones:error inDatabaseWithScope:databaseScope andTransactionAuthor:0 error:&v104])
            {
              if ([v8 code] != 112)
              {
                userInfo = [v8 userInfo];
                if (![objc_msgSend(userInfo objectForKey:{getCloudKitCKErrorUserDidResetEncryptedDataKey()), "BOOLValue"}])
                {
                  goto LABEL_107;
                }
              }

              if (-[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:](selfCopy, error, [*(selfCopy + 56) databaseScope], ds, &v104))
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            [*(selfCopy + 56) databaseScope];
          }

          goto LABEL_194;
        }

        storeCopy = store;
        v99 = v8;
        v11 = selfCopy;
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v14 = [error countByEnumeratingWithState:&v100 objects:v121 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v101;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v101 != v16)
              {
                objc_enumerationMutation(error);
              }

              v18 = *(*(&v100 + 1) + 8 * i);
              ownerName = [v18 ownerName];
              if ([ownerName isEqualToString:getCloudKitCKCurrentUserDefaultName()])
              {
                v20 = v12;
              }

              else
              {
                v20 = v13;
              }

              [v20 addObject:v18];
            }

            v15 = [error countByEnumeratingWithState:&v100 objects:v121 count:16];
          }

          while (v15);
        }

        selfCopy = v11;
        v8 = v99;
        if ([v12 count])
        {
          v21 = *(selfCopy + 8);
          if (!v21)
          {
LABEL_192:
            [*(selfCopy + 56) databaseScope];
LABEL_193:

LABEL_194:
            [(NSCloudKitMirroringDelegate *)selfCopy _postResetSyncNotificationWithName:v8 forError:?];
            goto LABEL_195;
          }

          v22 = *(v21 + 96);
          databaseScope2 = [*(selfCopy + 56) databaseScope];
          if (!v22 || ![(PFCloudKitMetadataPurger *)v22 purgeMetadataFromStore:ds inMonitor:storeCopy withOptions:298 forRecordZones:v12 inDatabaseWithScope:databaseScope2 andTransactionAuthor:0 error:&v104])
          {
            goto LABEL_193;
          }

          if ([v99 code] == 112 || (v24 = objc_msgSend(v99, "userInfo"), objc_msgSend(objc_msgSend(v24, "objectForKey:", getCloudKitCKErrorUserDidResetEncryptedDataKey()), "BOOLValue")))
          {
            if (!-[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:](selfCopy, v12, [*(selfCopy + 56) databaseScope], ds, &v104))
            {
              goto LABEL_193;
            }
          }
        }

        if (![v13 count])
        {

LABEL_107:
          [NSCloudKitMirroringDelegate resetAfterError:selfCopy andKeepContainer:v8];
LABEL_108:
          [(NSCloudKitMirroringDelegate *)selfCopy _setUpCloudKitIntegration:?];
LABEL_109:
          [(NSCloudKitMirroringDelegate *)selfCopy _postResetSyncNotificationWithName:v8 forError:?];
          goto LABEL_110;
        }

        if ([v99 code] == 26 || objc_msgSend(v99, "code") == 112 || (v25 = objc_msgSend(v99, "userInfo"), objc_msgSend(objc_msgSend(v25, "objectForKey:", getCloudKitCKErrorUserDidResetEncryptedDataKey()), "BOOLValue")))
        {
          if ([v99 code] == 112)
          {
            v26 = -[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:](selfCopy, v13, [*(selfCopy + 56) databaseScope], ds, &v104);
            goto LABEL_106;
          }

          v45 = *(selfCopy + 8);
          if (v45)
          {
            v46 = *(v45 + 96);
            databaseScope3 = [*(selfCopy + 56) databaseScope];
            if (v46)
            {
              v48 = databaseScope3;
              v49 = v46;
              dsCopy2 = ds;
              v51 = storeCopy;
              v52 = 9;
LABEL_105:
              v26 = [(PFCloudKitMetadataPurger *)v49 purgeMetadataFromStore:dsCopy2 inMonitor:v51 withOptions:v52 forRecordZones:v13 inDatabaseWithScope:v48 andTransactionAuthor:0 error:&v104];
LABEL_106:
              v63 = v26;

              if (v63)
              {
                goto LABEL_107;
              }

              goto LABEL_194;
            }

            goto LABEL_193;
          }
        }

        else
        {
          v60 = *(selfCopy + 8);
          if (v60)
          {
            v61 = *(v60 + 96);
            databaseScope4 = [*(selfCopy + 56) databaseScope];
            if (v61)
            {
              v48 = databaseScope4;
              v49 = v61;
              dsCopy2 = ds;
              v51 = storeCopy;
              v52 = 298;
              goto LABEL_105;
            }

            goto LABEL_193;
          }
        }

        goto LABEL_192;
      }

      if ([v8 code] == 28)
      {
        [(NSCloudKitMirroringDelegate *)selfCopy _postResetSyncNotificationWithName:v8 forError:?];
        v42 = *(selfCopy + 8);
        if (v42)
        {
          v43 = *(v42 + 96);
          databaseScope5 = [*(selfCopy + 56) databaseScope];
          if (v43 && [(PFCloudKitMetadataPurger *)v43 purgeMetadataFromStore:ds inMonitor:store withOptions:9 forRecordZones:error inDatabaseWithScope:databaseScope5 andTransactionAuthor:0 error:&v104])
          {
            goto LABEL_107;
          }

LABEL_195:
          v64 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v91 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v92 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v92 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v92))
          {
            domain2 = [v8 domain];
            code = [v8 code];
            domain3 = [v104 domain];
            code2 = [v104 code];
            *buf = 136316674;
            v106 = "[NSCloudKitMirroringDelegate _recoverFromError:withZoneIDs:forStore:inMonitor:]";
            v107 = 1024;
            v108 = 2617;
            v109 = 2112;
            v110 = selfCopy;
            v111 = 2112;
            v112 = domain2;
            v113 = 2048;
            v114 = code;
            v115 = 2112;
            v116 = domain3;
            v117 = 2048;
            v118 = code2;
            _os_log_impl(&dword_18565F000, v91, v92, "CoreData+CloudKit: %s(%d): %@ - Failed to recover from error: %@:%ld\nRecovery encountered the following error: %@:%ld", buf, 0x44u);
          }

          v70 = 0;
          goto LABEL_201;
        }

        v28 = *(selfCopy + 56);
LABEL_206:
        [v28 databaseScope];
        goto LABEL_195;
      }

      if ([v8 code] == 9)
      {
        [NSCloudKitMirroringDelegate resetAfterError:selfCopy andKeepContainer:v8];
        [(NSCloudKitMirroringDelegate *)selfCopy _setUpCloudKitIntegration:?];
        goto LABEL_110;
      }

      if ([v8 code] == 2)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v106 = v8;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid recursion detected, this method should never have been passed a partial error: %@\n", buf, 0xCu);
        }

        v55 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_195;
        }

        *buf = 138412290;
        v106 = v8;
        v35 = "CoreData: Invalid recursion detected, this method should never have been passed a partial error: %@";
        goto LABEL_101;
      }

      if ([v8 code] == 27)
      {
        v71 = *(selfCopy + 96);
        if (v71)
        {
          v72 = *(v71 + 24);
          if (v72 == 512000)
          {
            *(v71 + 24) = 256000;
            v73 = *(selfCopy + 96);
            if (!v73)
            {
              goto LABEL_110;
            }

            v74 = 100;
            goto LABEL_188;
          }

          if (v72 == 1572864)
          {
            *(v71 + 24) = 512000;
            v73 = *(selfCopy + 96);
            if (!v73)
            {
              goto LABEL_110;
            }

            v74 = 200;
LABEL_188:
            *(v73 + 32) = v74;
            goto LABEL_110;
          }
        }

        v88 = *MEMORY[0x1E696A250];
        v119 = *MEMORY[0x1E696A588];
        v120 = @"The mirroring delegate can no longer export because it cannot stay under the CloudKit operation limits.";
        v104 = [MEMORY[0x1E696ABC0] errorWithDomain:v88 code:134411 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v120, &v119, 1)}];
        goto LABEL_195;
      }

      if ([v8 code] != 6 && objc_msgSend(v8, "code") != 4 && objc_msgSend(v8, "code") != 3 && objc_msgSend(v8, "code") != 22 && objc_msgSend(v8, "code") != 7 && objc_msgSend(v8, "code") != 23)
      {
        if ([v8 code] == 15)
        {
          if ([*(selfCopy + 8) databaseScope] == 1 && objc_msgSend(error, "count"))
          {
            v76 = *(selfCopy + 8);
            if (v76)
            {
              v77 = v76[12];
            }

            else
            {
              v77 = 0;
            }

            if (-[PFCloudKitMetadataPurger deleteZoneMetadataFromStore:inMonitor:forRecordZones:inDatabaseWithScope:error:](v77, ds, store, error, [v76 databaseScope], &v104))
            {
              goto LABEL_110;
            }
          }

          else
          {
            userInfo2 = [v8 userInfo];
            if ([userInfo2 objectForKey:getCloudKitCKErrorRetryAfterKey()])
            {
              goto LABEL_110;
            }
          }
        }

        goto LABEL_195;
      }

LABEL_110:
      v64 = objc_autoreleasePoolPush();
      v65 = __PFCloudKitLoggingGetStream();
      v66 = v65;
      if (__ckLoggingOverride == 17)
      {
        v67 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v67 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v65, v67))
      {
        domain4 = [v8 domain];
        code3 = [v8 code];
        *buf = 136316162;
        v106 = "[NSCloudKitMirroringDelegate _recoverFromError:withZoneIDs:forStore:inMonitor:]";
        v107 = 1024;
        v108 = 2619;
        v109 = 2112;
        v110 = selfCopy;
        v111 = 2112;
        v112 = domain4;
        v113 = 2048;
        v114 = code3;
        _os_log_impl(&dword_18565F000, v66, v67, "CoreData+CloudKit: %s(%d): %@ - Recovered from error: %@:%ld", buf, 0x30u);
      }

      v70 = 1;
LABEL_201:
      objc_autoreleasePoolPop(v64);
      return v70;
    }

    domain5 = [v8 domain];
    if ([domain5 isEqualToString:*MEMORY[0x1E696A250]])
    {
      if ([v8 code] == 134301)
      {
        [(NSCloudKitMirroringDelegate *)selfCopy _postResetSyncNotificationWithName:v8 forError:?];
        v28 = *(selfCopy + 8);
        if (v28)
        {
          v29 = v28[12];
          databaseScope6 = [v28 databaseScope];
          if (v29 && [(PFCloudKitMetadataPurger *)v29 purgeMetadataFromStore:ds inMonitor:store withOptions:37 forRecordZones:MEMORY[0x1E695E0F0] inDatabaseWithScope:databaseScope6 andTransactionAuthor:0 error:&v104])
          {
            goto LABEL_109;
          }

          goto LABEL_195;
        }

        goto LABEL_206;
      }

      if ([v8 code] == 134405)
      {
        if ([objc_msgSend(objc_msgSend(v8 "userInfo")] == 2 && *(selfCopy + 129) == 1)
        {
          [*(selfCopy + 72) unregisterForSubscriptionWithID:objc_msgSend(*(selfCopy + 40) inDatabase:{"subscriptionID"), *(selfCopy + 56)}];
          *(selfCopy + 129) = 0;
        }

        [(NSCloudKitMirroringDelegate *)selfCopy _postResetSyncNotificationWithName:v8 forError:?];
        v40 = *(selfCopy + 8);
        if (v40)
        {
          v41 = v40[12];
        }

        else
        {
          v41 = 0;
        }

        if (-[PFCloudKitMetadataPurger purgeMetadataAfterAccountChangeFromStore:inMonitor:inDatabaseWithScope:error:](v41, ds, store, [v40 databaseScope], &v104))
        {
          goto LABEL_108;
        }

        goto LABEL_195;
      }

      if ([v8 code] == 134407)
      {
        [NSCloudKitMirroringDelegate resetAfterError:selfCopy andKeepContainer:v8];
        goto LABEL_195;
      }

      if ([v8 code] != 133000)
      {
        goto LABEL_195;
      }

      goto LABEL_110;
    }

    domain6 = [v8 domain];
    if (![domain6 isEqualToString:*MEMORY[0x1E696A978]])
    {
      goto LABEL_195;
    }

    code4 = [v8 code];
    if (code4 > -1105)
    {
      switch(code4)
      {
        case -1022:
          v33 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorAppTransportSecurityRequiresSecureConnection and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorAppTransportSecurityRequiresSecureConnection and probably shouldn't have.";
          break;
        case -1021:
          v82 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorRequestBodyStreamExhausted and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorRequestBodyStreamExhausted and probably shouldn't have.";
          break;
        case -1020:
        case -1019:
        case -1018:
        case -1014:
        case -1013:
        case -1012:
        case -1010:
        case -1009:
        case -1008:
        case -1007:
        case -1006:
        case -1005:
        case -1004:
        case -1003:
        case -1001:
        case -999:
        case -997:
        case -996:
        case -995:
          goto LABEL_110;
        case -1017:
          v81 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v81, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotParseResponse and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotParseResponse and probably shouldn't have.";
          break;
        case -1016:
          v86 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeContentData and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeContentData and probably shouldn't have.";
          break;
        case -1015:
          v85 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeRawData and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeRawData and probably shouldn't have.";
          break;
        case -1011:
          v83 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadServerResponse and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadServerResponse and probably shouldn't have.";
          break;
        case -1002:
          v87 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorUnsupportedURL and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorUnsupportedURL and probably shouldn't have.";
          break;
        case -1000:
          v84 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadURL and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadURL and probably shouldn't have.";
          break;
        case -998:
          goto LABEL_97;
        default:
          if ((code4 + 1104) >= 5 && code4 != -1)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
      }

LABEL_183:
      v58 = v34;
      v59 = 2;
      goto LABEL_184;
    }

    if (code4 > -2001)
    {
      if (code4 > -1204)
      {
        if (code4 <= -1202)
        {
          if (code4 == -1203)
          {
            v78 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v78, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasUnknownRoot and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasUnknownRoot and probably shouldn't have.";
          }

          else
          {
            v56 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateUntrusted and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateUntrusted and probably shouldn't have.";
          }

          goto LABEL_183;
        }

        if (code4 == -1201)
        {
          v80 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasBadDate and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasBadDate and probably shouldn't have.";
          goto LABEL_183;
        }

        if (code4 == -1200)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (code4 > -1206)
        {
          if (code4 == -1205)
          {
            v79 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRejected and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRejected and probably shouldn't have.";
          }

          else
          {
            v75 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateNotYetValid and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateNotYetValid and probably shouldn't have.";
          }

          goto LABEL_183;
        }

        if (code4 == -2000)
        {
          goto LABEL_110;
        }

        if (code4 == -1206)
        {
          v53 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRequired and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRequired and probably shouldn't have.";
          goto LABEL_183;
        }
      }
    }

    else if ((code4 + 3007) < 8)
    {
      goto LABEL_110;
    }

LABEL_97:
    v57 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v106 = v8;
      _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate was handed a scary NRULErrorDomain error (of some code that's not already in the switch) that it probably shouldn't have been: %@\n", buf, 0xCu);
    }

    v55 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_195;
    }

    *buf = 138412290;
    v106 = v8;
    v35 = "CoreData: NSCloudKitMirroringDelegate was handed a scary NRULErrorDomain error (of some code that's not already in the switch) that it probably shouldn't have been: %@";
LABEL_101:
    v58 = v55;
    v59 = 12;
LABEL_184:
    _os_log_fault_impl(&dword_18565F000, v58, OS_LOG_TYPE_FAULT, v35, buf, v59);
    goto LABEL_195;
  }

  return 0;
}

- (uint64_t)_markZonesNeedingRecoveryFromManateeIdentityLoss:(uint64_t)loss databaseScope:(uint64_t)scope inStore:(void *)store error:
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__41;
  v24 = __Block_byref_object_dispose__41;
  v25 = 0;
  v10 = [[PFCloudKitStoreMonitor alloc] initForStore:scope];
  v11 = v10;
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(v10 + 4);
  }

  else
  {
    WeakRetained = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke;
  v19[3] = &unk_1E6EC2E40;
  v19[4] = self;
  v19[5] = a2;
  v19[6] = v11;
  v19[7] = scope;
  v19[8] = &v20;
  v19[9] = &v26;
  v19[10] = loss;
  [(PFCloudKitStoreMonitor *)v11 performBlock:v19];

  v13 = v21[5];
  if (v13)
  {
    v14 = v13;
    if (v14)
    {
      if (store)
      {
        *store = v14;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
        v32 = 1024;
        v33 = 3836;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
        v32 = 1024;
        v33 = 3836;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v21[5] = 0;
  }

  v17 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v17;
}

void __75__NSCloudKitMirroringDelegate__recoverFromPartialError_forStore_inMonitor___block_invoke(uint64_t a1, char *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  getCloudKitCKRecordIDClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (getCloudKitCKRecordZoneIDClass[0](), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([a2 isEqualToString:@"com.apple.coredata.cloudkit.private.subscription"] & 1) == 0 && (objc_msgSend(a2, "isEqualToString:", @"com.apple.coredata.cloudkit.shared.subscription") & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v35 = 138412546;
        v36 = a2;
        v37 = 2112;
        *v38 = v27;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected string item for partial failure: %@ - %@\n", &v35, 0x16u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v28 = *(a1 + 32);
        v35 = 138412546;
        v36 = a2;
        v37 = 2112;
        *v38 = v28;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unexpected string item for partial failure: %@ - %@", &v35, 0x16u);
      }
    }

    v8 = [a3 domain];
    if ([v8 isEqualToString:getCloudKitCKErrorDomain()])
    {
      if ([a3 code] == 26 || objc_msgSend(a3, "code") == 28 || objc_msgSend(a3, "code") == 21 || objc_msgSend(a3, "code") == 112 || objc_msgSend(a3, "code") == 15 || objc_msgSend(a3, "code") == 9 || objc_msgSend(a3, "code") == 6)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          *(*(*(a1 + 96) + 8) + 40) = a3;
        }

        getCloudKitCKRecordIDClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([a3 code] == 15)
          {
            v9 = [a3 userInfo];
            if ([v9 objectForKeyedSubscript:getCloudKitCKErrorRetryAfterKey()])
            {
              *(*(*(a1 + 88) + 8) + 24) = 0;
              return;
            }

            v16 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v35 = 138412546;
              v36 = a2;
              v37 = 2112;
              *v38 = a3;
              _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Got server rejected request as part of a partial error for a CKRecord: %@ - %@\n", &v35, 0x16u);
            }

            v17 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              v35 = 138412546;
              v36 = a2;
              v37 = 2112;
              *v38 = a3;
              _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Got server rejected request as part of a partial error for a CKRecord: %@ - %@", &v35, 0x16u);
            }

            *(*(*(a1 + 88) + 8) + 24) = 0;
            goto LABEL_73;
          }

          v15 = *(a1 + 40);
          goto LABEL_90;
        }

        v11 = *(a1 + 40);
        goto LABEL_92;
      }

      if ([a3 code] == 3 || objc_msgSend(a3, "code") == 4 || objc_msgSend(a3, "code") == 22 || objc_msgSend(a3, "code") == 7 || objc_msgSend(a3, "code") == 23)
      {
LABEL_87:
        *(*(*(a1 + 88) + 8) + 24) = 1;
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          *(*(*(a1 + 96) + 8) + 40) = a3;
        }

        getCloudKitCKRecordIDClass();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = *(a1 + 40);
        if (isKindOfClass)
        {
LABEL_90:
          v30 = [a2 zoneID];
          v11 = v15;
LABEL_93:
          [v11 addObject:v30];
          return;
        }

        v11 = v15;
LABEL_92:
        v30 = a2;
        goto LABEL_93;
      }

      if ([a3 code] == 11)
      {
        getCloudKitCKRecordIDClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [a2 recordName];
          if ([v31 isEqualToString:getCloudKitCKRecordNameZoneWideShare()])
          {
            v11 = *(a1 + 48);
          }

          else
          {
            v11 = *(a1 + 56);
          }

          goto LABEL_92;
        }

        v33 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v35 = 138412546;
          v36 = a2;
          v37 = 2112;
          *v38 = a3;
          _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: fault: Got an unknown item error back for a zone: %@ - %@\n", &v35, 0x16u);
        }

        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          v35 = 138412546;
          v36 = a2;
          v37 = 2112;
          *v38 = a3;
          _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Got an unknown item error back for a zone: %@ - %@", &v35, 0x16u);
        }
      }

      else
      {
        if ([a3 code] == 12 || objc_msgSend(a3, "code") == 25)
        {
LABEL_81:
          [*(a1 + 64) setObject:a3 forKey:a2];
          return;
        }

        if ([a3 code] == 14)
        {
          getCloudKitCKRecordIDClass();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [a2 recordName];
            if ([v32 isEqualToString:getCloudKitCKRecordNameZoneWideShare()])
            {
              v11 = *(a1 + 72);
              v30 = a3;
              goto LABEL_93;
            }
          }
        }
      }
    }

    else
    {
      v10 = [a3 domain];
      if ([v10 isEqualToString:*MEMORY[0x1E696A978]] && (objc_msgSend(a3, "code") == -1 || objc_msgSend(a3, "code") == -999 || objc_msgSend(a3, "code") == -1001 || objc_msgSend(a3, "code") == -1003 || objc_msgSend(a3, "code") == -1004 || objc_msgSend(a3, "code") == -1005 || objc_msgSend(a3, "code") == -1006 || objc_msgSend(a3, "code") == -1007 || objc_msgSend(a3, "code") == -1008 || objc_msgSend(a3, "code") == -1009 || objc_msgSend(a3, "code") == -1010 || objc_msgSend(a3, "code") == -1012 || objc_msgSend(a3, "code") == -1013 || objc_msgSend(a3, "code") == -1014 || objc_msgSend(a3, "code") == -1100 || objc_msgSend(a3, "code") == -1101 || objc_msgSend(a3, "code") == -1102 || objc_msgSend(a3, "code") == -1103 || objc_msgSend(a3, "code") == -1104 || objc_msgSend(a3, "code") == -1200 || objc_msgSend(a3, "code") == -2000 || objc_msgSend(a3, "code") == -3000 || objc_msgSend(a3, "code") == -3001 || objc_msgSend(a3, "code") == -3002 || objc_msgSend(a3, "code") == -3003 || objc_msgSend(a3, "code") == -3004 || objc_msgSend(a3, "code") == -3005 || objc_msgSend(a3, "code") == -3006 || objc_msgSend(a3, "code") == -3007 || objc_msgSend(a3, "code") == -1018 || objc_msgSend(a3, "code") == -1019 || objc_msgSend(a3, "code") == -1020 || objc_msgSend(a3, "code") == -995 || objc_msgSend(a3, "code") == -996 || objc_msgSend(a3, "code") == -997))
      {
        goto LABEL_87;
      }
    }

LABEL_73:
    v18 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v20 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v21 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v21 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v21))
    {
      v22 = *(a1 + 80);
      v35 = 136315906;
      v36 = "[NSCloudKitMirroringDelegate _recoverFromPartialError:forStore:inMonitor:]_block_invoke";
      v37 = 1024;
      *v38 = 2775;
      *&v38[4] = 2112;
      *&v38[6] = v22;
      *&v38[14] = 2112;
      *&v38[16] = a3;
      _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): %@: Found unknown error as part of a partial failure: %@", &v35, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = -[PFCloudKitUnhandledPartialErrorMetric initWithContainerIdentifier:error:]([PFCloudKitUnhandledPartialErrorMetric alloc], "initWithContainerIdentifier:error:", [*(*(a1 + 80) + 8) containerIdentifier], a3);
    v24 = *(*(a1 + 80) + 8);
    if (v24)
    {
      v25 = *(v24 + 72);
    }

    else
    {
      v25 = 0;
    }

    [(PFMetricsClient *)v25 logMetric:v23];

    goto LABEL_81;
  }

  v12 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 80);
    v35 = 138412802;
    v36 = v26;
    v37 = 2112;
    *v38 = a2;
    *&v38[8] = 2112;
    *&v38[10] = a3;
    _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Found unknown itemID (%@) as part of a partial failure: %@\n", &v35, 0x20u);
  }

  v13 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v14 = *(a1 + 80);
    v35 = 138412802;
    v36 = v14;
    v37 = 2112;
    *v38 = a2;
    *&v38[8] = 2112;
    *&v38[10] = a3;
    _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: %@: Found unknown itemID (%@) as part of a partial failure: %@", &v35, 0x20u);
  }
}

void __79__NSCloudKitMirroringDelegate__recoverConflictedZoneShares_forStore_inMonitor___block_invoke(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v31;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v29 = 0;
        v8 = [v6 userInfo];
        v9 = [v8 objectForKey:getCloudKitCKRecordChangedErrorServerRecordKey()];
        v10 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(v9 "recordID")], objc_msgSend(*(a1[5] + 8), "databaseScope"), a1[6], a1[7], &v29);
        if (v10)
        {
          v11 = *(a1[5] + 8);
          if (v11 && (v12 = v10, (v13 = *(v11 + 136)) != 0) && (v14 = [(PFCloudKitArchivingUtilities *)v13 encodeRecord:v9 error:&v29]) != 0)
          {
            v15 = v14;
            [(NSManagedObject *)v12 updateEncodedShareWithData:v14];
            [(NSManagedObject *)v12 setNeedsShareUpdate:0];
            if (([a1[7] save:&v29] & 1) == 0)
            {
              *(*(a1[8] + 8) + 24) = 0;
              v16 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v18 = Stream;
              if (__ckLoggingOverride == 17)
              {
                v19 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v19 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(Stream, v19))
              {
                *buf = 136315906;
                v35 = "[NSCloudKitMirroringDelegate _recoverConflictedZoneShares:forStore:inMonitor:]_block_invoke";
                v36 = 1024;
                v37 = 2861;
                v38 = 2112;
                v39 = v9;
                v40 = 2112;
                v41 = v29;
                _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): Failed to recover conflict for record: %@ due to save failure: %@", buf, 0x26u);
              }

              goto LABEL_28;
            }
          }

          else
          {
            *(*(a1[8] + 8) + 24) = 0;
            v16 = objc_autoreleasePoolPush();
            v24 = __PFCloudKitLoggingGetStream();
            v25 = v24;
            if (__ckLoggingOverride == 17)
            {
              v26 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v26 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v24, v26))
            {
              *buf = 136315906;
              v35 = "[NSCloudKitMirroringDelegate _recoverConflictedZoneShares:forStore:inMonitor:]_block_invoke";
              v36 = 1024;
              v37 = 2865;
              v38 = 2112;
              v39 = v9;
              v40 = 2112;
              v41 = v29;
              _os_log_impl(&dword_18565F000, v25, v26, "CoreData+CloudKit: %s(%d): Failed to recover conflict for record: %@ due to error: %@", buf, 0x26u);
            }

            v15 = 0;
LABEL_28:
            objc_autoreleasePoolPop(v16);
          }

          goto LABEL_30;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = __PFCloudKitLoggingGetStream();
        v22 = v21;
        if (__ckLoggingOverride == 17)
        {
          v23 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v23 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v21, v23))
        {
          *buf = 136315906;
          v35 = "[NSCloudKitMirroringDelegate _recoverConflictedZoneShares:forStore:inMonitor:]_block_invoke";
          v36 = 1024;
          v37 = 2869;
          v38 = 2112;
          v39 = v9;
          v40 = 2112;
          v41 = v29;
          _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Failed to recover conflict for record: %@ due to error: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v20);
LABEL_30:
        v27 = *(*(a1[8] + 8) + 24);
        objc_autoreleasePoolPop(v7);
        if (!v27)
        {
          return;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v3);
  }
}

void __79__NSCloudKitMirroringDelegate__recoverUnknownItemRecordIDs_forStore_inMonitor___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v2 = [NSCKRecordMetadata metadataForRecordIDs:*(a1 + 40) fromStore:*(a1 + 48) inManagedObjectContext:&v74 error:?];
  v3 = v2;
  if (!v2)
  {
    v35 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v37 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v38 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v38 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v38))
    {
      goto LABEL_58;
    }

    v39 = *(a1 + 56);
    *buf = 136315906;
    v76 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v77 = 1024;
    *v78 = 2949;
    *&v78[4] = 2112;
    *&v78[6] = v39;
    v79 = 2112;
    v80 = v74;
    v40 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to record metadata fetch error: %@";
    goto LABEL_57;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v4)
  {
    v6 = *v71;
    *&v5 = 138412546;
    v59 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v71 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v70 + 1) + 8 * i);
        if ([v8 needsCloudDelete])
        {
          [*(a1 + 48) deleteObject:v8];
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 56);
            *buf = v59;
            v76 = v11;
            v77 = 2112;
            *v78 = v8;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Unexpected state for record metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@\n", buf, 0x16u);
          }

          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            v12 = *(a1 + 56);
            *buf = v59;
            v76 = v12;
            v77 = 2112;
            *v78 = v8;
            _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: %@: Unexpected state for record metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@", buf, 0x16u);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v70 objects:v83 count:16];
    }

    while (v4);
  }

  if (![*(a1 + 48) save:&v74])
  {
    v35 = objc_autoreleasePoolPush();
    v41 = __PFCloudKitLoggingGetStream();
    v37 = v41;
    if (__ckLoggingOverride == 17)
    {
      v38 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v38 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v41, v38))
    {
      goto LABEL_58;
    }

    v42 = *(a1 + 56);
    *buf = 136315906;
    v76 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v77 = 1024;
    *v78 = 2946;
    *&v78[4] = 2112;
    *&v78[6] = v42;
    v79 = 2112;
    v80 = v74;
    v40 = "CoreData+CloudKit: %s(%d): %@: Failed to save record metadata changes from recovering unknown item errors: %@";
LABEL_57:
    _os_log_impl(&dword_18565F000, v37, v38, v40, buf, 0x26u);
LABEL_58:
    objc_autoreleasePoolPop(v35);
    return;
  }

  v13 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:*(a1 + 32) andRelatingRecordIDs:*(a1 + 40) fromStore:*(a1 + 48) inManagedObjectContext:&v74 error:?];
  v14 = v13;
  if (!v13)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = __PFCloudKitLoggingGetStream();
    v45 = v44;
    if (__ckLoggingOverride == 17)
    {
      v46 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v46 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v44, v46))
    {
      goto LABEL_70;
    }

    v47 = *(a1 + 56);
    *buf = 136315906;
    v76 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v77 = 1024;
    *v78 = 2943;
    *&v78[4] = 2112;
    *&v78[6] = v47;
    v79 = 2112;
    v80 = v74;
    v48 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to mirrored relationship fetch error: %@";
    goto LABEL_69;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v15)
  {
    v17 = *v67;
    *&v16 = 138412546;
    v60 = v16;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v67 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v66 + 1) + 8 * j);
        if ([v19 needsDeleteBool])
        {
          [*(a1 + 48) deleteObject:v19];
        }

        else
        {
          v20 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 56);
            *buf = v60;
            v76 = v22;
            v77 = 2112;
            *v78 = v19;
            _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Unexpected state for mirrored relationship metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@\n", buf, 0x16u);
          }

          v21 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            v23 = *(a1 + 56);
            *buf = v60;
            v76 = v23;
            v77 = 2112;
            *v78 = v19;
            _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: %@: Unexpected state for mirrored relationship metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@", buf, 0x16u);
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v66 objects:v82 count:16];
    }

    while (v15);
  }

  if (![*(a1 + 48) save:&v74])
  {
    v43 = objc_autoreleasePoolPush();
    v49 = __PFCloudKitLoggingGetStream();
    v45 = v49;
    if (__ckLoggingOverride == 17)
    {
      v46 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v46 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v49, v46))
    {
      goto LABEL_70;
    }

    v50 = *(a1 + 56);
    *buf = 136315906;
    v76 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v77 = 1024;
    *v78 = 2940;
    *&v78[4] = 2112;
    *&v78[6] = v50;
    v79 = 2112;
    v80 = v74;
    v48 = "CoreData+CloudKit: %s(%d): %@: Failed to save mirrored relationship changes from recovering unknown item errors: %@";
LABEL_69:
    _os_log_impl(&dword_18565F000, v45, v46, v48, buf, 0x26u);
LABEL_70:
    objc_autoreleasePoolPop(v43);
    return;
  }

  v24 = [NSCKRecordZoneMoveReceipt moveReceiptsMatchingRecordIDs:*(a1 + 32) inManagedObjectContext:*(a1 + 48) persistentStore:*(a1 + 40) error:&v74];
  v25 = v24;
  if (v24)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v26 = [v24 countByEnumeratingWithState:&v62 objects:v81 count:16];
    if (v26)
    {
      v28 = *v63;
      *&v27 = 138412546;
      v61 = v27;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v63 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v62 + 1) + 8 * k);
          if ([v30 needsCloudDelete])
          {
            [*(a1 + 48) deleteObject:v30];
          }

          else
          {
            v31 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v33 = *(a1 + 56);
              *buf = v61;
              v76 = v33;
              v77 = 2112;
              *v78 = v30;
              _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Unexpected move receipt state. It was not found on the server but the local row was not marked for cloud deletion. Why were we trying to access it? %@\n", buf, 0x16u);
            }

            v32 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v34 = *(a1 + 56);
              *buf = v61;
              v76 = v34;
              v77 = 2112;
              *v78 = v30;
              _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: %@: Unexpected move receipt state. It was not found on the server but the local row was not marked for cloud deletion. Why were we trying to access it? %@", buf, 0x16u);
            }
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v62 objects:v81 count:16];
      }

      while (v26);
    }

    if ([*(a1 + 48) save:&v74])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      return;
    }

    v51 = objc_autoreleasePoolPush();
    v57 = __PFCloudKitLoggingGetStream();
    v53 = v57;
    if (__ckLoggingOverride == 17)
    {
      v54 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v54 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v57, v54))
    {
      goto LABEL_82;
    }

    v58 = *(a1 + 56);
    *buf = 136315906;
    v76 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v77 = 1024;
    *v78 = 2934;
    *&v78[4] = 2112;
    *&v78[6] = v58;
    v79 = 2112;
    v80 = v74;
    v56 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to a save failure after deleting move receipts: %@";
  }

  else
  {
    v51 = objc_autoreleasePoolPush();
    v52 = __PFCloudKitLoggingGetStream();
    v53 = v52;
    if (__ckLoggingOverride == 17)
    {
      v54 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v54 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v52, v54))
    {
      goto LABEL_82;
    }

    v55 = *(a1 + 56);
    *buf = 136315906;
    v76 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v77 = 1024;
    *v78 = 2937;
    *&v78[4] = 2112;
    *&v78[6] = v55;
    v79 = 2112;
    v80 = v74;
    v56 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to move receipt fetch error: %@";
  }

  _os_log_impl(&dword_18565F000, v53, v54, v56, buf, 0x26u);
LABEL_82:
  objc_autoreleasePoolPop(v51);
}

void *__84__NSCloudKitMirroringDelegate__recoverFromUnknownShareRecordIDs_forStore_inMonitor___block_invoke(void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v57 = result;
  if (result)
  {
    p_superclass = NSCloudKitMirroringRequestManager.superclass;
    v56 = *v64;
    *&v4 = 138412546;
    v51 = v4;
    v52 = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v63 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v62 = 0;
        v9 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:]((p_superclass + 19), [v7 zoneID], objc_msgSend(*(a1[5] + 8), "databaseScope"), a1[6], a1[7], &v62);
        if (v9)
        {
          v10 = v9;
          if ([(NSManagedObject *)v9 encodedShareAsset])
          {
            v55 = v8;
            v11 = [(NSCKRecordZoneMetadata *)v10 createRecordZoneID];
            v12 = *(a1[5] + 8);
            if (v12)
            {
              v13 = *(v12 + 136);
            }

            else
            {
              v13 = 0;
            }

            v14 = [(NSManagedObject *)v10 encodedShareAsset];
            if (v14)
            {
              v15 = v14;
              if ([objc_msgSend(v14 "binaryData")])
              {
                v16 = [v15 binaryData];
              }

              else
              {
                v16 = [v15 externalBinaryData];
              }

              v24 = v16;
            }

            else
            {
              v24 = 0;
            }

            v54 = v11;
            v25 = [(PFCloudKitArchivingUtilities *)v13 shareFromEncodedData:v24 inZoneWithID:v11 error:&v62];
            if (v25)
            {
              v26 = [objc_alloc(getCloudKitCKShareClass()) initWithRecordZoneID:{objc_msgSend(v7, "zoneID")}];
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v53 = v25;
              v27 = [v25 participants];
              v28 = [v27 countByEnumeratingWithState:&v58 objects:v73 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v59;
                do
                {
                  for (i = 0; i != v29; ++i)
                  {
                    if (*v59 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v58 + 1) + 8 * i);
                    if ([v32 role] != 1)
                    {
                      [v26 addParticipant:v32];
                    }
                  }

                  v29 = [v27 countByEnumeratingWithState:&v58 objects:v73 count:16];
                }

                while (v29);
              }

              v33 = *(a1[5] + 8);
              if (v33 && (v34 = *(v33 + 136)) != 0 && (v35 = [(PFCloudKitArchivingUtilities *)v34 encodeRecord:v26 error:&v62]) != 0)
              {
                v36 = v35;
                [(NSManagedObject *)v10 updateEncodedShareWithData:v35];
                p_superclass = (NSCloudKitMirroringRequestManager + 8);
                if ([a1[7] save:&v62])
                {
                  *(*(a1[8] + 8) + 24) = 1;
                }

                else
                {
                  v47 = objc_autoreleasePoolPush();
                  Stream = __PFCloudKitLoggingGetStream();
                  v49 = Stream;
                  if (__ckLoggingOverride == 17)
                  {
                    v50 = OS_LOG_TYPE_FAULT;
                  }

                  else
                  {
                    v50 = OS_LOG_TYPE_ERROR;
                  }

                  if (os_log_type_enabled(Stream, v50))
                  {
                    *buf = 136315906;
                    v68 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
                    v69 = 1024;
                    *v70 = 2998;
                    *&v70[4] = 2112;
                    *&v70[6] = v7;
                    v71 = 2112;
                    v72 = v62;
                    _os_log_impl(&dword_18565F000, v49, v50, "CoreData+CloudKit: %s(%d): Failed to recover from an unknown item error because the share recovery save failed: %@\n%@", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v47);
                }
              }

              else
              {
                v43 = objc_autoreleasePoolPush();
                v44 = __PFCloudKitLoggingGetStream();
                v45 = v44;
                if (__ckLoggingOverride == 17)
                {
                  v46 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v46 = OS_LOG_TYPE_ERROR;
                }

                p_superclass = (NSCloudKitMirroringRequestManager + 8);
                if (os_log_type_enabled(v44, v46))
                {
                  *buf = 136315906;
                  v68 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
                  v69 = 1024;
                  *v70 = 3001;
                  *&v70[4] = 2112;
                  *&v70[6] = v7;
                  v71 = 2112;
                  v72 = v62;
                  _os_log_impl(&dword_18565F000, v45, v46, "CoreData+CloudKit: %s(%d): Failed to recover from an unknown item error because the replacement share record couldn't be encoded: %@\n%@", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v43);
                v36 = 0;
              }

              v2 = v52;
              v37 = v53;
              v42 = v54;
            }

            else
            {
              v37 = 0;
              v38 = objc_autoreleasePoolPush();
              v39 = __PFCloudKitLoggingGetStream();
              v40 = v39;
              if (__ckLoggingOverride == 17)
              {
                v41 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v41 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v39, v41))
              {
                *buf = 136315906;
                v68 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
                v69 = 1024;
                *v70 = 3006;
                *&v70[4] = 2112;
                *&v70[6] = v7;
                v71 = 2112;
                v72 = v62;
                _os_log_impl(&dword_18565F000, v40, v41, "CoreData+CloudKit: %s(%d): Failed to recover from unknown item error because the current share couldn't be decoded: %@ - %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v38);
              v42 = v54;
            }

            v8 = v55;
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = v51;
              v68 = v7;
              v69 = 2112;
              *v70 = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Got an unknown item error for a zone metadata without a share: %@ - %@\n", buf, 0x16u);
            }

            v23 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              *buf = v51;
              v68 = v7;
              v69 = 2112;
              *v70 = v10;
              _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Got an unknown item error for a zone metadata without a share: %@ - %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v17 = v8;
          v18 = objc_autoreleasePoolPush();
          v19 = __PFCloudKitLoggingGetStream();
          v20 = v19;
          if (__ckLoggingOverride == 17)
          {
            v21 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v21 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v19, v21))
          {
            *buf = 136315906;
            v68 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
            v69 = 1024;
            *v70 = 3014;
            *&v70[4] = 2112;
            *&v70[6] = v7;
            v71 = 2112;
            v72 = v62;
            _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): Failed to recover from an unknown item error for '%@' because the zone metadata couldn't be fetched: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v18);
          v8 = v17;
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v6 != v57);
      result = [v2 countByEnumeratingWithState:&v63 objects:v74 count:16];
      v57 = result;
    }

    while (result);
  }

  return result;
}

void __62__NSCloudKitMirroringDelegate__handleError_duringShareAccept___block_invoke(void *a1)
{
  v2 = [[NSCloudKitMirroringResult alloc] initWithRequest:a1[4] storeIdentifier:*(a1[5] + 152) success:0 madeChanges:0 error:a1[6]];
  [(NSCloudKitMirroringDelegate *)a1[5] _finishedRequest:v2 withResult:?];
}

- (void)retryAfterInSecondsFromError:(void *)error
{
  v18 = *MEMORY[0x1E69E9840];
  code = [error code];
  userInfo = [error userInfo];
  if (code == 2)
  {
    v4 = [userInfo objectForKeyedSubscript:getCloudKitCKPartialErrorsByItemIDKey()];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v4 objectForKey:*(*(&v13 + 1) + 8 * v8)];
          userInfo2 = [v9 userInfo];
          if ([userInfo2 objectForKeyedSubscript:getCloudKitCKErrorRetryAfterKey()])
          {
            userInfo3 = [v9 userInfo];
            return [userInfo3 objectForKeyedSubscript:getCloudKitCKErrorRetryAfterKey()];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v6 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    CloudKitCKErrorRetryAfterKey = getCloudKitCKErrorRetryAfterKey();

    return [userInfo objectForKey:CloudKitCKErrorRetryAfterKey];
  }

  return result;
}

- (void)_postResetSyncNotificationWithName:(void *)name forError:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:name forKey:*MEMORY[0x1E696AA08]];
  domain = [name domain];
  code = [name code];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    if (code == 134301)
    {
      v10 = &unk_1EF435E78;
    }

    else
    {
      if (code != 134405)
      {
        goto LABEL_15;
      }

      v10 = [objc_msgSend(name "userInfo")];
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_20;
  }

  if ([domain isEqualToString:getCloudKitCKErrorDomain()])
  {
    v10 = &unk_1EF435E90;
    if (code > 27)
    {
      if (code == 112)
      {
        goto LABEL_20;
      }

      if (code == 28)
      {
        v10 = &unk_1EF435EA8;
        goto LABEL_20;
      }
    }

    else
    {
      if (code == 21)
      {
        v10 = &unk_1EF435EC0;
        goto LABEL_20;
      }

      if (code == 26)
      {
LABEL_20:
        [v7 setObject:v10 forKey:@"NSCloudKitMirroringDelegateResetSyncReasonKey"];
        goto LABEL_21;
      }
    }
  }

LABEL_15:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    nameCopy2 = name;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to get a reset sync reason for error even though we're posting a notification for it: %@\n", &v15, 0xCu);
  }

  v12 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v15 = 138412290;
    nameCopy2 = name;
    _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to get a reset sync reason for error even though we're posting a notification for it: %@", &v15, 0xCu);
  }

LABEL_21:
  v13 = [v7 copy];

  v14 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:a2 object:self userInfo:v13];
  [self logResetSyncNotification:v14];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v6);
}

- (void)logResetSyncNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@: Sending '%@'", self, objc_msgSend(notification, "name")];
  if ([objc_msgSend(notification "userInfo")])
  {
    [v4 appendFormat:@" with reason: '%@'", +[NSCloudKitMirroringDelegate stringForResetReason:](NSCloudKitMirroringDelegate, "stringForResetReason:", objc_msgSend(objc_msgSend(objc_msgSend(notification, "userInfo"), "objectForKey:", @"NSCloudKitMirroringDelegateResetSyncReasonKey", "unsignedIntegerValue"))];
  }

  v5 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v7 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v8 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    *buf = 136315650;
    v10 = "[NSCloudKitMirroringDelegate logResetSyncNotification:]";
    v11 = 1024;
    v12 = 3086;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)exporter:(id)exporter willScheduleOperations:(id)operations
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (operations)
  {
    if ([operations count])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = @"operations";
      v8[0] = operations;
      [defaultCenter postNotificationName:@"PFCloudKitWillExportNotificationName" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
    }
  }
}

- (void)managedObjectContextSaved:(id)saved
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(saved "userInfo")];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v9 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v10 = 17;
  }

  else
  {
    v10 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v10 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v11 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (os_log_type_enabled(Stream, v12))
  {
    *buf = 136316162;
    v15 = "[NSCloudKitMirroringDelegate managedObjectContextSaved:]";
    v16 = 1024;
    v17 = 3140;
    v18 = 2112;
    selfCopy = self;
    v20 = 2112;
    object = [saved object];
    v22 = 2112;
    v23 = WeakRetained;
    _os_log_impl(&dword_18565F000, v9, v12, "CoreData+CloudKit: %s(%d): %@: Observed context save: %@ - %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v7);
  if (!+[PFCloudKitHistoryAnalyzer isPrivateTransactionAuthor:](PFCloudKitHistoryAnalyzer, "isPrivateTransactionAuthor:", [WeakRetained transactionAuthor]) && !+[PFCloudKitHistoryAnalyzer isPrivateContextName:](PFCloudKitHistoryAnalyzer, "isPrivateContextName:", objc_msgSend(WeakRetained, "name")))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke;
    v13[3] = &unk_1E6EC4B10;
    v13[4] = self;
    v13[5] = saved;
    [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v13 andExecuteWorkBlock:?];
  }
}

void __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke(int8x16_t *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[2].i64[0] + 120));
  v3 = a1[2].i64[0];
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  Weak = objc_loadWeak((v3 + 112));
  v7 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v5 inTransactionWithLabel:Weak];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke_2;
  v8[3] = &unk_1E6EC19D8;
  v8[4] = v7;
  v9 = vextq_s8(a1[2], a1[2], 8uLL);
  [(PFCloudKitStoreMonitor *)v7 performBlock:v8];
}

void __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v28[0] = @"inserted_objectIDs";
    v28[1] = @"updated_objectIDs";
    v28[2] = @"deleted_objectIDs";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v18 = v2;
      v6 = 0;
      v7 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [objc_msgSend(*(a1 + 40) "userInfo")];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v20;
            do
            {
              v13 = 0;
              do
              {
                if (*v20 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v19 + 1) + 8 * v13) _storeIdentifier];
                v15 = *(a1 + 32);
                if (v15)
                {
                  v16 = *(v15 + 48);
                }

                else
                {
                  v16 = 0;
                }

                if ([v14 isEqualToString:v16])
                {
                  v6 = 1;
                  goto LABEL_21;
                }

                ++v13;
              }

              while (v11 != v13);
              v17 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
              v11 = v17;
            }

            while (v17);
          }

LABEL_21:
          ;
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);
      v2 = v18;
      if (v6)
      {
        [(NSCloudKitMirroringDelegate *)*(a1 + 48) scheduleExportAndStartAfterDate:?];
      }
    }
  }
}

- (void)remoteStoreDidChange:(id)change
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(change "userInfo")];
  v6 = [objc_msgSend(change "userInfo")];
  v7 = [objc_msgSend(change "userInfo")];
  v8 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v10 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v11 = 17;
  }

  else
  {
    v11 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v11 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v12 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (os_log_type_enabled(Stream, v13))
  {
    *buf = 136316674;
    v16 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]";
    v17 = 1024;
    v18 = 3183;
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    object = [change object];
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_18565F000, v10, v13, "CoreData+CloudKit: %s(%d): %@: Observed remote store notification: %@ - %@ - %@ - %@", buf, 0x44u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke;
  v14[3] = &unk_1E6EC4CF0;
  v14[4] = self;
  v14[5] = v7;
  v14[6] = v6;
  v14[7] = v5;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v14 andExecuteWorkBlock:?];
}

void __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
  }

  Weak = objc_loadWeak((v2 + 112));
  v6 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v4 inTransactionWithLabel:Weak];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 4);
  }

  else
  {
    WeakRetained = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_2;
  v10[3] = &unk_1E6EC4470;
  v10[4] = v7;
  v11 = *(a1 + 40);
  v9 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = v9;
  [(PFCloudKitStoreMonitor *)v7 performBlock:v10];
}

void __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_2(uint64_t *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = *(v3 + 48);
    }

    else
    {
      v4 = 0;
    }

    if ([v4 isEqualToString:a1[5]])
    {
      v5 = a1[6];
      if (v5)
      {
        v6 = [v5 storeTokens];
        v7 = a1[4];
        if (v7)
        {
          v8 = *(v7 + 48);
        }

        else
        {
          v8 = 0;
        }

        v9 = [v6 objectForKey:v8];
        if (v9)
        {
          v10 = v9;
          v66 = 0;
          v67 = &v66;
          v68 = 0x2020000000;
          v69 = 1;
          v60 = 0;
          v61 = &v60;
          v62 = 0x3052000000;
          v63 = __Block_byref_object_copy__41;
          v64 = __Block_byref_object_dispose__41;
          v65 = 0;
          v54 = 0;
          v55 = &v54;
          v56 = 0x3052000000;
          v57 = __Block_byref_object_copy__41;
          v58 = __Block_byref_object_dispose__41;
          v59 = 0;
          v11 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_3;
          v53[3] = &unk_1E6EC3A80;
          v53[4] = v2;
          v53[5] = v11;
          v53[6] = &v54;
          v53[7] = &v66;
          v53[8] = &v60;
          [(NSManagedObjectContext *)v11 performBlockAndWait:v53];
          if (*(v67 + 24) != 1)
          {
            v46 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v48 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v49 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v49 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v49))
            {
              v50 = a1[7];
              v51 = v55[5];
              *buf = 136316162;
              v71 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
              v72 = 1024;
              v73 = 3224;
              v74 = 2112;
              v75 = v50;
              v76 = 2112;
              v77 = v51;
              v78 = 2112;
              v79 = v2;
              _os_log_impl(&dword_18565F000, v48, v49, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because the current history token couldn't be read: %@ - %@", buf, 0x30u);
            }

            objc_autoreleasePoolPop(v46);
            goto LABEL_94;
          }

          v12 = [objc_msgSend(v61[5] "storeTokens")];
          v13 = v12;
          if (!v12 || [v12 compare:v10] == -1)
          {
            [(NSCloudKitMirroringDelegate *)a1[7] scheduleExportAndStartAfterDate:?];
LABEL_94:

            v61[5] = 0;
            v55[5] = 0;
            _Block_object_dispose(&v54, 8);
            _Block_object_dispose(&v60, 8);
            _Block_object_dispose(&v66, 8);
            goto LABEL_95;
          }

          v14 = objc_autoreleasePoolPush();
          v15 = __PFCloudKitLoggingGetStream();
          v16 = v15;
          v17 = OS_LOG_TYPE_DEBUG;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
            {
              goto LABEL_91;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            goto LABEL_91;
          }

          v17 = __ckLoggingOverride;
LABEL_91:
          if (os_log_type_enabled(v15, v17))
          {
            v52 = a1[7];
            *buf = 136316418;
            v71 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
            v72 = 1024;
            v73 = 3221;
            v74 = 2112;
            v75 = v52;
            v76 = 2112;
            v77 = v13;
            v78 = 2112;
            v79 = v10;
            v80 = 2112;
            v81 = v2;
            _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because the exporter has already caught up to this transaction: %@ / %@ - %@", buf, 0x3Au);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_94;
        }

        v18 = objc_autoreleasePoolPush();
        v40 = __PFCloudKitLoggingGetStream();
        v41 = v40;
        if (__ckLoggingOverride == 17)
        {
          v42 = 17;
        }

        else
        {
          v42 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v42 = 16;
        }

        if (__ckLoggingOverride == 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (!__ckLoggingOverride)
        {
          v43 = 0;
        }

        if (__ckLoggingOverride <= 0xFu)
        {
          v44 = v43;
        }

        else
        {
          v44 = v42;
        }

        if (os_log_type_enabled(v40, v44))
        {
          v45 = a1[7];
          *buf = 136315906;
          v71 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
          v72 = 1024;
          v73 = 3230;
          v74 = 2112;
          v75 = v45;
          v76 = 2112;
          v77 = v2;
          _os_log_impl(&dword_18565F000, v41, v44, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because it didn't change any entities in the monitored store: %@", buf, 0x26u);
        }
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v34 = __PFCloudKitLoggingGetStream();
        v35 = v34;
        if (__ckLoggingOverride == 17)
        {
          v36 = 17;
        }

        else
        {
          v36 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v36 = 16;
        }

        if (__ckLoggingOverride == 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (!__ckLoggingOverride)
        {
          v37 = 0;
        }

        if (__ckLoggingOverride <= 0xFu)
        {
          v38 = v37;
        }

        else
        {
          v38 = v36;
        }

        if (os_log_type_enabled(v34, v38))
        {
          v39 = a1[7];
          *buf = 136315906;
          v71 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
          v72 = 1024;
          v73 = 3233;
          v74 = 2112;
          v75 = v39;
          v76 = 2112;
          v77 = v2;
          _os_log_impl(&dword_18565F000, v35, v38, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because it didn't change any entities tracked by persistent history: %@", buf, 0x26u);
        }
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v26 = __PFCloudKitLoggingGetStream();
      v27 = v26;
      if (__ckLoggingOverride == 17)
      {
        v28 = 17;
      }

      else
      {
        v28 = 2;
      }

      if (__ckLoggingOverride == 16)
      {
        v28 = 16;
      }

      if (__ckLoggingOverride == 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (!__ckLoggingOverride)
      {
        v29 = 0;
      }

      if (__ckLoggingOverride <= 0xFu)
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      if (os_log_type_enabled(v26, v30))
      {
        v31 = a1[7];
        v32 = a1[4];
        if (v32)
        {
          v32 = *(v32 + 48);
        }

        v33 = a1[5];
        *buf = 136316162;
        v71 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
        v72 = 1024;
        v73 = 3236;
        v74 = 2112;
        v75 = v31;
        v76 = 2112;
        v77 = v32;
        v78 = 2112;
        v79 = v33;
        _os_log_impl(&dword_18565F000, v27, v30, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because it's for a different store: %@ / %@", buf, 0x30u);
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = __PFCloudKitLoggingGetStream();
    v20 = v19;
    if (__ckLoggingOverride == 17)
    {
      v21 = 17;
    }

    else
    {
      v21 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v21 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v22 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    if (os_log_type_enabled(v19, v23))
    {
      v24 = a1[7];
      v25 = a1[8];
      *buf = 136315906;
      v71 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
      v72 = 1024;
      v73 = 3240;
      v74 = 2112;
      v75 = v24;
      v76 = 2112;
      v77 = v25;
      _os_log_impl(&dword_18565F000, v20, v23, "CoreData+CloudKit: %s(%d): %@: Ignoring remote change notification because the store has been removed from the coordinator: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v18);
LABEL_95:
}

void __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_3(uint64_t *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [NSCKMetadataEntry entryForKey:a1[4] fromStore:a1[5] inManagedObjectContext:*(a1[6] + 8) + 40 error:?];
  if (*(*(a1[6] + 8) + 40))
  {
    *(*(a1[7] + 8) + 24) = 0;
    v3 = *(*(a1[6] + 8) + 40);
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(*(a1[6] + 8) + 40);
      v9 = 136315650;
      v10 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke_3";
      v11 = 1024;
      v12 = 3209;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): Unable to read the last history token: %@", &v9, 0x1Cu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    *(*(a1[8] + 8) + 40) = [v2 transformedValue];
  }
}

- (void)newActivityWithIdentifier:(void *)identifier andVoucher:
{
  if (!self)
  {
    return 0;
  }

  v5 = [objc_alloc(getCloudKitCKSchedulerActivityClass()) initWithIdentifier:a2 container:*(self + 48) priority:2];
  v6 = v5;
  v7 = *(self + 8);
  if (v7)
  {
    LOBYTE(v7) = *(v7 + 17);
  }

  [v5 setOverrideRateLimiting:v7 & 1];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([objc_msgSend(identifier "operationConfiguration")] == 9)
  {
    v9 = xpc_string_create(*MEMORY[0x1E69E9D70]);
    v10 = MEMORY[0x1E69E9D68];
  }

  else
  {
    v11 = xpc_string_create(*MEMORY[0x1E69E9D78]);
    [v8 setObject:v11 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9D68])}];
    xpc_release(v11);
    v9 = xpc_int64_create(10);
    v10 = MEMORY[0x1E69E9C98];
  }

  [v8 setObject:v9 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *v10)}];
  xpc_release(v9);
  v12 = xpc_int64_create(0);
  [v8 setObject:v12 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9C68])}];
  xpc_release(v12);
  v13 = xpc_string_create([*(self + 184) cStringUsingEncoding:4]);
  [v8 setObject:v13 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9CA8])}];
  xpc_release(v13);
  [v6 setAdditionalXPCActivityCriteria:v8];

  return v6;
}

void __73__NSCloudKitMirroringDelegate_setupMirroringDelegateFromPushNotification__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NSCloudKitMirroringDelegateSetupRequestOptions);
  if ([*(*(a1 + 32) + 8) defaultOperationConfiguration])
  {
    -[NSCloudKitMirroringRequestOptions setOperationConfiguration:](v2, "setOperationConfiguration:", [*(*(a1 + 32) + 8) defaultOperationConfiguration]);
  }

  if (v2)
  {
    v2->_fromNotification = 1;
  }

  v3 = [(NSCloudKitMirroringRequest *)[NSCloudKitMirroringDelegateSetupRequest alloc] initWithOptions:v2 completionBlock:0];
  [(NSCloudKitMirroringDelegate *)*(a1 + 32) beginActivitiesForRequest:v3];
  v15 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSCloudKitMirroringRequestManager *)v5 enqueueRequest:v3 error:&v15];
  v7 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v9 = Stream;
  if (v6)
  {
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      v12 = *(a1 + 32);
      *buf = 136315906;
      v17 = "[NSCloudKitMirroringDelegate setupMirroringDelegateFromPushNotification]_block_invoke";
      v18 = 1024;
      v19 = 3315;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Successfully enqueued setup request from push notification: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) checkAndExecuteNextRequest];
  }

  else
  {
    if (__ckLoggingOverride == 17)
    {
      v13 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v13))
    {
      v14 = *(a1 + 32);
      *buf = 136315906;
      v17 = "[NSCloudKitMirroringDelegate setupMirroringDelegateFromPushNotification]_block_invoke";
      v18 = 1024;
      v19 = 3318;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_18565F000, v9, v13, "CoreData+CloudKit: %s(%d): %@: Failed to enqueue setup request, this likely means one is already scheduled and this has collided: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke(uint64_t a1)
{
  v2 = [[PFCloudKitStoreMonitor alloc] initForStore:objc_loadWeak((*(a1 + 32) + 112))];
  v3 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(v2 + 4);
  }

  else
  {
    WeakRetained = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_2;
  v6[3] = &unk_1E6EC4D68;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v6[6] = v5;
  [(PFCloudKitStoreMonitor *)v3 performBlock:v6];
}

void __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v6 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (os_log_type_enabled(Stream, v7))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke_2";
    *&buf[12] = 1024;
    *&buf[14] = 3342;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&dword_18565F000, v4, v7, "CoreData+CloudKit: %s(%d): %@: Checking to see if an automated import should be scheduled.", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [(PFCloudKitStoreMonitor *)*(a1 + 40) retainedMonitoredStore];
  if (v9)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&buf[24] = __Block_byref_object_copy__41;
    v28 = __Block_byref_object_dispose__41;
    v29 = 0;
    v10 = [(PFCloudKitStoreMonitor *)*(a1 + 40) newBackgroundContextForMonitoredCoordinator];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_444;
    v20[3] = &unk_1E6EC4D40;
    v11 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = *(a1 + 57);
    v20[4] = v11;
    v20[5] = v9;
    v12 = *(a1 + 48);
    v20[6] = v10;
    v20[7] = v12;
    v20[8] = &v23;
    v20[9] = buf;
    [(NSManagedObjectContext *)v10 performBlockAndWait:v20];
    if ((v24[3] & 1) == 0)
    {
      [NSCloudKitMirroringDelegate resetAfterError:*(*&buf[8] + 40) andKeepContainer:?];
    }

    *(*&buf[8] + 40) = 0;
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = __PFCloudKitLoggingGetStream();
    v15 = v14;
    if (__ckLoggingOverride == 17)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v16 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v17 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (os_log_type_enabled(v14, v18))
    {
      v19 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 3477;
      *&buf[18] = 2112;
      *&buf[20] = v19;
      _os_log_impl(&dword_18565F000, v15, v18, "CoreData+CloudKit: %s(%d): %@: Cancelling import check because the store is dead.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_444(uint64_t a1)
{
  v1 = a1;
  v89 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 208) usableVoucherForEventType:1];
  v76[0] = 0;
  v62 = v2;
  if (v2)
  {
    v3 = [objc_msgSend(v2 "operationConfiguration")] > 24;
    if (*(v1 + 80) == 1)
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v62 label]);
LABEL_16:
      v10 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if (*(v1 + 80))
    {
      v4 = @"Push";
      goto LABEL_16;
    }
  }

  if (*(v1 + 81))
  {
    v4 = @"RecoverableImportError";
    goto LABEL_16;
  }

  if (*(v1 + 82))
  {
    v4 = @"AcceptShare";
    goto LABEL_16;
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = +[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v6 databaseScope], *(v1 + 40), *(v1 + 48), v76);
  v8 = v7;
  if (v7)
  {
    if ([(NSCloudKitMirroringDelegate *)*(v1 + 32) _dateExceedsSchedulingThreshold:?])
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSManagedObject *)v8 lastFetchDate]);
      v9 = *(*(v1 + 32) + 8);
      if (v9)
      {
        v3 |= *(v9 + 16);
      }

      goto LABEL_16;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v40 = [(NSManagedObject *)v8 recordZones];
    v41 = [v40 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (!v41)
    {
      v10 = 0;
      v4 = 0;
      goto LABEL_17;
    }

    v67 = v1;
    v10 = 0;
    v4 = 0;
    obj = v40;
    v64 = *v73;
LABEL_58:
    v65 = v41;
    v42 = 0;
    while (1)
    {
      if (*v73 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v72 + 1) + 8 * v42);
      v66 = v42;
      if ([v43 needsImport])
      {
        v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v43 ckRecordZoneName]);
LABEL_65:
        v4 = v44;
        v10 = 1;
        goto LABEL_66;
      }

      if (-[NSCloudKitMirroringDelegate _dateExceedsSchedulingThreshold:](*(v67 + 32), [v43 lastFetchDate]))
      {
        [v43 setNeedsImport:1];
        v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v43 ckRecordZoneName], objc_msgSend(v43, "lastFetchDate"));
        goto LABEL_65;
      }

      if ([*(*(v67 + 32) + 8) databaseScope] == 1)
      {
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v45 = [v43 queries];
        v46 = [v45 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (v46)
        {
          break;
        }
      }

LABEL_66:
      ++v42;
      if (v66 + 1 == v65)
      {
        v41 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (!v41)
        {
          v1 = v67;
          goto LABEL_17;
        }

        goto LABEL_58;
      }
    }

    v47 = *v69;
LABEL_71:
    v48 = 0;
    while (1)
    {
      if (*v69 != v47)
      {
        objc_enumerationMutation(v45);
      }

      v49 = *(*(&v68 + 1) + 8 * v48);
      if ([v49 queryCursor])
      {
        break;
      }

      if (-[NSCloudKitMirroringDelegate _dateExceedsSchedulingThreshold:](*(v67 + 32), [v49 lastFetchDate]))
      {
        [v43 setNeedsImport:1];
        v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v43 ckRecordZoneName], objc_msgSend(v49, "recordType"), objc_msgSend(v49, "lastFetchDate"));
        goto LABEL_78;
      }

LABEL_79:
      if (v46 == ++v48)
      {
        v46 = [v45 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (!v46)
        {
          goto LABEL_66;
        }

        goto LABEL_71;
      }
    }

    [v43 setNeedsImport:1];
    v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v43 ckRecordZoneName], objc_msgSend(v49, "recordType"));
LABEL_78:
    v4 = v50;
    v10 = 1;
    goto LABEL_79;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v78 = v76[0];
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch database metadata during automatic import check: %@\n", buf, 0xCu);
  }

  v33 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v78 = v76[0];
    _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch database metadata during automatic import check: %@", buf, 0xCu);
  }

  v10 = 0;
  v4 = 0;
LABEL_17:
  if ([*(v1 + 48) hasChanges] && (objc_msgSend(*(v1 + 48), "save:", v76) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v13 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v14 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      v15 = *(v1 + 32);
      *buf = 136315906;
      v78 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
      v79 = 1024;
      v80 = 3417;
      v81 = 2112;
      v82 = v15;
      v83 = 2112;
      v84 = v76[0];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata changes during import check: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
  }

  if (v10)
  {
    if (*(*(v1 + 32) + 89) == 1)
    {
      if (v4)
      {
        goto LABEL_31;
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v51 = *(v1 + 32);
        *buf = 138412290;
        v78 = v51;
        _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Mirroring delegate is scheduling an import but didn't log why: %@\n", buf, 0xCu);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v52 = *(v1 + 32);
        *buf = 138412290;
        v78 = v52;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Mirroring delegate is scheduling an import but didn't log why: %@", buf, 0xCu);
        if (v3)
        {
LABEL_32:
          v18 = objc_autoreleasePoolPush();
          if (v62)
          {
            v19 = __PFCloudKitLoggingGetStream();
            v20 = v19;
            if (__ckLoggingOverride == 17)
            {
              v21 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v21 = 16 * (__ckLoggingOverride == 16);
            }

            if (!os_log_type_enabled(v19, v21))
            {
              goto LABEL_55;
            }

            v22 = *(v1 + 32);
            *buf = 136316162;
            v78 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
            v79 = 1024;
            v80 = 3446;
            v81 = 2112;
            v82 = v22;
            v83 = 2112;
            v84 = v4;
            v85 = 2112;
            v86 = v62;
            v23 = "CoreData+CloudKit: %s(%d): %@: Bypassing dasd for scheduling for voucher: %@\n%@";
            v24 = v20;
            v25 = v21;
            v26 = 48;
          }

          else
          {
            v34 = __PFCloudKitLoggingGetStream();
            v35 = v34;
            if (__ckLoggingOverride == 17)
            {
              v36 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v36 = 16 * (__ckLoggingOverride == 16);
            }

            if (!os_log_type_enabled(v34, v36))
            {
              goto LABEL_55;
            }

            v37 = *(v1 + 32);
            *buf = 136315906;
            v78 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
            v79 = 1024;
            v80 = 3448;
            v81 = 2112;
            v82 = v37;
            v83 = 2112;
            v84 = v4;
            v23 = "CoreData+CloudKit: %s(%d): %@: Bypassing dasd for scheduling for HomeKit: %@";
            v24 = v35;
            v25 = v36;
            v26 = 38;
          }

          _os_log_impl(&dword_18565F000, v24, v25, v23, buf, v26);
LABEL_55:
          objc_autoreleasePoolPop(v18);
          v38 = *(v1 + 32);
          v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4);
          [(NSCloudKitMirroringDelegate *)v38 _scheduleAutomatedImportWithLabel:v39 activity:0 voucher:v62 completionHandler:0];
          goto LABEL_96;
        }
      }

      else
      {
LABEL_31:
        if (v3)
        {
          goto LABEL_32;
        }
      }

      v53 = [(NSCloudKitMirroringDelegate *)*(v1 + 32) newActivityWithIdentifier:v62 andVoucher:?];
      v54 = v53;
      if (*(v1 + 56))
      {
        [v53 setEarliestStartDate:?];
      }

      v55 = objc_autoreleasePoolPush();
      v56 = __PFCloudKitLoggingGetStream();
      v57 = v56;
      if (__ckLoggingOverride == 17)
      {
        v58 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v58 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v56, v58))
      {
        v59 = *(v1 + 32);
        *buf = 136316162;
        v78 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
        v79 = 1024;
        v80 = 3433;
        v81 = 2112;
        v82 = v59;
        v83 = 2112;
        v84 = v4;
        v85 = 2112;
        v86 = v54;
        _os_log_impl(&dword_18565F000, v57, v58, "CoreData+CloudKit: %s(%d): %@: Scheduling automated import with activity (%@): %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v55);
      v60 = *(v1 + 32);
      if (v60)
      {
        v61 = *(v60 + 64);
      }

      else
      {
        v61 = 0;
      }

      [v61 submitActivity:v54];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = __PFCloudKitLoggingGetStream();
      v29 = v28;
      if (__ckLoggingOverride == 17)
      {
        v30 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v30 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v28, v30))
      {
        v31 = *(v1 + 32);
        *buf = 136315906;
        v78 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
        v79 = 1024;
        v80 = 3456;
        v81 = 2112;
        v82 = v31;
        v83 = 2112;
        v84 = v4;
        _os_log_impl(&dword_18565F000, v29, v30, "CoreData+CloudKit: %s(%d): %@: Deferring scheduling an import because not initialized yet: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v27);
    }
  }

LABEL_96:
}

- (BOOL)_dateExceedsSchedulingThreshold:(_BOOL8)result
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!a2)
    {
      return 1;
    }

    v3 = result;
    v4 = +[NSCloudKitMirroringDelegate isFirstPartyContainerIdentifier:](NSCloudKitMirroringDelegate, "isFirstPartyContainerIdentifier:", [*(result + 8) containerIdentifier]);
    databaseScope = [*(v3 + 8) databaseScope];
    if ((databaseScope - 2) >= 2)
    {
      if (databaseScope != 1)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          databaseScope2 = [*(v3 + 8) databaseScope];
          v15 = 134217984;
          v16 = databaseScope2;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported database scope in date threshold calculation: %ld\n", &v15, 0xCu);
        }

        v11 = _PFLogGetLogStream(17);
        v9 = -86400.0;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          databaseScope3 = [*(v3 + 8) databaseScope];
          v15 = 134217984;
          v16 = databaseScope3;
          _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Unsupported database scope in date threshold calculation: %ld", &v15, 0xCu);
        }

        goto LABEL_17;
      }

      v6 = [objc_msgSend(*(v3 + 48) "containerID")];
      v7 = !v4;
      v8 = -1800.0;
    }

    else
    {
      v6 = [objc_msgSend(*(v3 + 48) "containerID")];
      v7 = !v4;
      v8 = -300.0;
    }

    if (!v7)
    {
      v8 = -86400.0;
    }

    if (v6 == 2)
    {
      v9 = -60.0;
    }

    else
    {
      v9 = v8;
    }

LABEL_17:
    [a2 timeIntervalSinceNow];
    return v9 > v12;
  }

  return result;
}

- (void)finishedAutomatedRequestWithResult:(uint64_t)result
{
  v30 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v7))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate finishedAutomatedRequestWithResult:]";
      *&buf[12] = 1024;
      *&buf[14] = 3616;
      *&buf[18] = 2112;
      *&buf[20] = [a2 request];
      *&buf[28] = 2112;
      *&buf[30] = a2;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): Finished request '%@' with result: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v4);
    if (([a2 success] & 1) == 0)
    {
      v8 = [objc_msgSend(a2 "error")];
      if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
      {
        if ([objc_msgSend(a2 "error")] == 134409)
        {
          v9 = [objc_msgSend(a2 "error")];
          v10 = -[NSCloudKitMirroringDelegate retryAfterInSecondsFromError:]([v9 objectForKey:*MEMORY[0x1E696AA08]]);
          [v10 doubleValue];
          if (v11 <= 0.0)
          {
            v13 = 0;
          }

          else
          {
            v12 = MEMORY[0x1E695DF00];
            [v10 doubleValue];
            v13 = [v12 dateWithTimeIntervalSinceNow:?];
          }

          [a2 request];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = 2;
          }

          else
          {
            [a2 request];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v14 = 1;
          }

          [*(result + 208) expireVouchersForEventType:v14];
LABEL_18:
          [a2 request];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = *(result + 8);
            if (v15)
            {
              v16 = *(v15 + 88);
            }

            else
            {
              v16 = 0;
            }

            Weak = objc_loadWeak((result + 112));
            v18 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v16 inTransactionWithLabel:Weak];
            v19 = v18;
            if (v18)
            {
              WeakRetained = objc_loadWeakRetained(v18 + 4);
            }

            else
            {
              WeakRetained = 0;
            }

            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __66__NSCloudKitMirroringDelegate_finishedAutomatedRequestWithResult___block_invoke;
            v25[3] = &unk_1E6EC19D8;
            v25[4] = v19;
            v25[5] = result;
            v25[6] = v13;
            [(PFCloudKitStoreMonitor *)v19 performBlock:v25];
          }

          else
          {
            [a2 request];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
              *&buf[24] = &unk_1E6EC4D90;
              v28 = 256;
              v29 = 0;
              *&buf[32] = result;
              v27 = v13;
              [(NSCloudKitMirroringDelegate *)result _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:buf andExecuteWorkBlock:?];
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                [a2 request];
                v23 = objc_opt_class();
                *buf = 138412290;
                *&buf[4] = v23;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Can't handle automated requests of type '%@' yet.\n", buf, 0xCu);
              }

              v22 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
              {
                [a2 request];
                v24 = objc_opt_class();
                *buf = 138412290;
                *&buf[4] = v24;
                _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Can't handle automated requests of type '%@' yet.", buf, 0xCu);
              }
            }
          }
        }
      }
    }
  }
}

void __66__NSCloudKitMirroringDelegate_finishedAutomatedRequestWithResult___block_invoke(uint64_t *a1)
{
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    [(NSCloudKitMirroringDelegate *)a1[5] scheduleExportAndStartAfterDate:?];
    v2 = v3;
  }
}

void __100__NSCloudKitMirroringDelegate__scheduleAutomatedImportWithLabel_activity_voucher_completionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride)
  {
    v8 = v7;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = a1[4];
    v10 = a1[5];
    v12 = 136316162;
    v13 = "[NSCloudKitMirroringDelegate _scheduleAutomatedImportWithLabel:activity:voucher:completionHandler:]_block_invoke";
    v14 = 1024;
    v15 = 3676;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = a2;
    _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@ - Finished automatic import - %@ - with result: %@", &v12, 0x30u);
  }

  objc_autoreleasePoolPop(v4);
  if (a1[6])
  {
    if (([a2 success] & 1) == 0)
    {
      v11 = [objc_msgSend(a2 "error")];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
      {
        [objc_msgSend(a2 "error")];
      }
    }

    (*(a1[6] + 16))();
  }

  [(NSCloudKitMirroringDelegate *)a1[4] finishedAutomatedRequestWithResult:a2];
}

void __100__NSCloudKitMirroringDelegate__scheduleAutomatedExportWithLabel_activity_voucher_completionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride)
  {
    v8 = v7;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = a1[4];
    v10 = a1[5];
    v12 = 136316162;
    v13 = "[NSCloudKitMirroringDelegate _scheduleAutomatedExportWithLabel:activity:voucher:completionHandler:]_block_invoke";
    v14 = 1024;
    v15 = 3716;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = a2;
    _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@ - Finished automatic export - %@ - with result: %@", &v12, 0x30u);
  }

  objc_autoreleasePoolPop(v4);
  if (a1[6])
  {
    if (([a2 success] & 1) == 0)
    {
      v11 = [objc_msgSend(a2 "error")];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
      {
        [objc_msgSend(a2 "error")];
      }
    }

    (*(a1[6] + 16))();
  }

  [(NSCloudKitMirroringDelegate *)a1[4] finishedAutomatedRequestWithResult:a2];
}

void __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 136315906;
    v24 = "[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:]_block_invoke";
    v25 = 1024;
    v26 = 3781;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@: Marking zones %@ needing recovery from Manatee identity loss", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [(PFCloudKitStoreMonitor *)*(a1 + 48) retainedMonitoredStore];
  if (v9)
  {
    v10 = [(PFCloudKitStoreMonitor *)*(a1 + 48) newBackgroundContextForMonitoredCoordinator];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke_487;
    v20[3] = &unk_1E6EC2E40;
    v22 = *(a1 + 80);
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v20[4] = *(a1 + 40);
    v20[5] = v11;
    v20[6] = v10;
    v20[7] = v12;
    v21 = *(a1 + 64);
    [(NSManagedObjectContext *)v10 performBlockAndWait:v20];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = __PFCloudKitLoggingGetStream();
    v15 = v14;
    if (__ckLoggingOverride == 17)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v16 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v17 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (os_log_type_enabled(v14, v18))
    {
      v19 = *(a1 + 32);
      *buf = 136315650;
      v24 = "[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:]_block_invoke";
      v25 = 1024;
      v26 = 3827;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_18565F000, v15, v18, "CoreData+CloudKit: %s(%d): %@: Cancelling marking zones needing recovery from Manatee identity loss because the store is dead.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

id __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke_487(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:*(a1 + 80) inDatabaseWithScope:*(a1 + 40) forStore:*(a1 + 48) inContext:v20 error:?];
        v7 = v6;
        if (!v6)
        {
          if (v20[0])
          {
            *(*(*(a1 + 64) + 8) + 40) = v20[0];
          }

          *(*(*(a1 + 72) + 8) + 24) = 0;
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v20[0];
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch zone metadata during marking zones needing recovery from Manatee identity loss: %@\n", buf, 0xCu);
          }

          v9 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v22 = v20[0];
            _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch zone metadata during marking zones needing recovery from Manatee identity loss: %@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        [(NSManagedObject *)v6 setNeedsRecoveryFromIdentityLoss:1];
        if (([-[NSManagedObject ckOwnerName](v7 "ckOwnerName")] & 1) == 0)
        {
          [(NSManagedObject *)v7 setNeedsNewShareInvitation:1];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v29 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  result = [*(a1 + 48) hasChanges];
  if (result)
  {
    result = [*(a1 + 48) save:v20];
    if ((result & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v13 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v14 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v14 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v14))
      {
        v15 = *(a1 + 56);
        *buf = 136315906;
        v22 = "[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:]_block_invoke";
        v23 = 1024;
        v24 = 3812;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v20[0];
        _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata while marking zones needing recovery from Manatee identity loss: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v11);
      result = v20[0];
      *(*(*(a1 + 64) + 8) + 40) = result;
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  return result;
}

void __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performSchemaInitializationRequest:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 3848;
    *&buf[18] = 2112;
    *&buf[20] = v7;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): Executing schema initialization request: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 40);
  if (*(v8 + 89) == 1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&buf[24] = __Block_byref_object_copy__41;
    v27 = __Block_byref_object_dispose__41;
    v28 = 0;
    v9 = *(v8 + 8);
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 11);
    }

    else
    {
      v11 = 0;
    }

    Weak = objc_loadWeak((*(a1 + 40) + 112));
    v13 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v11 inTransactionWithLabel:Weak];
    v14 = v13;
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(v13 + 4);
    }

    else
    {
      WeakRetained = 0;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke_497;
    v18[3] = &unk_1E6EC4E08;
    v18[4] = v14;
    v18[5] = v10;
    v20 = &v22;
    v21 = buf;
    v19 = *(a1 + 32);
    [(PFCloudKitStoreMonitor *)v14 performBlock:v18];
    v16 = [NSCloudKitMirroringResult alloc];
    v17 = [(NSCloudKitMirroringResult *)v16 initWithRequest:*(a1 + 32) storeIdentifier:*(*(a1 + 40) + 152) success:*(v23 + 24) madeChanges:*(v23 + 24) error:*(*&buf[8] + 40)];
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _finishedRequest:v17 withResult:?];

    *(*&buf[8] + 40) = 0;
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    [(NSCloudKitMirroringDelegate *)v8 _requestAbortedNotInitialized:?];
  }
}

void __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke_497(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    if ([*(a1 + 40) databaseScope] != 3)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 56);
      v10 = [*(a1 + 48) schemaInitializationOptions];
      v11 = *(a1 + 72);
      if (v9)
      {
        v12 = v10;
        v42 = *(v11 + 8);
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v56 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x3052000000;
        v50 = __Block_byref_object_copy__41;
        v51 = __Block_byref_object_dispose__41;
        v52 = 0;
        v43 = [[PFCloudKitSchemaGenerator alloc] initWithMirroringOptions:v9[1].super.isa forStoreInMonitor:v8];
        v13 = [(PFCloudKitSchemaGenerator *)v43 newRepresentativeRecords:?];
        if (v13)
        {
          if ((v12 & 4) != 0)
          {
            v14 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v16 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v17 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v17 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v17))
            {
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              *buf = 136316162;
              v62 = "[NSCloudKitMirroringDelegate _createSchemaForStore:withMonitor:options:error:]";
              v63 = 1024;
              v64 = 3917;
              v65 = 2112;
              v66 = v19;
              v67 = 2112;
              v68 = v2;
              v69 = 2112;
              v70 = v13;
              _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): %@ generated the following records for the model associated with the store: %@\n%@", buf, 0x30u);
            }

            objc_autoreleasePoolPop(v14);
          }

          if ((v12 & 2) != 0)
          {
            *(v54 + 24) = 1;
          }

          else
          {
            v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v13, "count")}];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke;
            v46[3] = &unk_1E6EC4E30;
            v46[4] = v20;
            [v13 enumerateObjectsUsingBlock:v46];
            v21 = dispatch_semaphore_create(0);
            v22 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:v13 recordIDsToDelete:0];
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_2;
            v45[3] = &unk_1E6EC3BE8;
            v45[6] = &v53;
            v45[7] = &v47;
            v45[4] = v20;
            v45[5] = v21;
            [v22 setModifyRecordsCompletionBlock:v45];
            [(objc_class *)v9[7].super.isa addOperation:v22];
            v23 = objc_autoreleasePoolPush();
            v24 = __PFCloudKitLoggingGetStream();
            v25 = v24;
            if (__ckLoggingOverride == 17)
            {
              v26 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v26 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v24, v26))
            {
              v27 = [v2 identifier];
              *buf = 136315906;
              v62 = "[NSCloudKitMirroringDelegate _createSchemaForStore:withMonitor:options:error:]";
              v63 = 1024;
              v64 = 3946;
              v65 = 2048;
              v66 = v9;
              v67 = 2112;
              v68 = v27;
              _os_log_impl(&dword_18565F000, v25, v26, "CoreData+CloudKit: %s(%d): Mirroring delegate %p waiting on schema creation records to save for store %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v23);
            dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

            if (*(v54 + 24) == 1)
            {
              v28 = [v20 allObjects];
              *(v54 + 24) = 0;
              v29 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:0 recordIDsToDelete:v28];
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_505;
              v44[3] = &unk_1E6EC3BE8;
              v44[6] = &v53;
              v44[7] = &v47;
              v44[4] = v20;
              v44[5] = v21;
              [v29 setModifyRecordsCompletionBlock:v44];

              [(objc_class *)v9[7].super.isa addOperation:v29];
              v30 = objc_autoreleasePoolPush();
              v31 = __PFCloudKitLoggingGetStream();
              v32 = v31;
              if (__ckLoggingOverride == 17)
              {
                v33 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v33 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v31, v33))
              {
                v34 = [v2 identifier];
                *buf = 136315906;
                v62 = "[NSCloudKitMirroringDelegate _createSchemaForStore:withMonitor:options:error:]";
                v63 = 1024;
                v64 = 3971;
                v65 = 2048;
                v66 = v9;
                v67 = 2112;
                v68 = v34;
                _os_log_impl(&dword_18565F000, v32, v33, "CoreData+CloudKit: %s(%d): Mirroring delegate %p waiting on schema creation records to delete for store %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v30);
              dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
            }

            if (v21)
            {
              dispatch_release(v21);
            }
          }
        }

        else
        {
          v35 = v48[5];
        }

        v36 = v48[5];
        if ((v54[3] & 1) == 0)
        {
          v37 = v48[5];
          if (v37)
          {
            *(v42 + 40) = v37;
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v62 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
              v63 = 1024;
              v64 = 3987;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v39 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v62 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
              v63 = 1024;
              v64 = 3987;
              _os_log_fault_impl(&dword_18565F000, v39, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }
          }
        }

        v40 = *(v54 + 24);
        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v53, 8);
        if (v40)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          goto LABEL_6;
        }

        v11 = *(a1 + 72);
      }

      v41 = *(*(v11 + 8) + 40);
      goto LABEL_6;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v3 = objc_alloc(MEMORY[0x1E696ABC0]);
    v59[0] = *MEMORY[0x1E696A588];
    v60[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 48) requestIdentifier]);
    v59[1] = *MEMORY[0x1E696A368];
    v60[1] = [objc_msgSend(v2 "URL")];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v5 = [v3 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v4];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E696A588];
    v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 48) requestIdentifier]);
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v5 = [v6 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v7];
  }

  *(*(*(a1 + 72) + 8) + 40) = v5;
LABEL_6:
}

uint64_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];

  return [v2 addObject:v3];
}

intptr_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_3;
  v9[3] = &unk_1E6EC4E30;
  v9[4] = v7;
  [a2 enumerateObjectsUsingBlock:v9];
  if ([*(a1 + 32) isEqualToSet:v7])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = a4;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];

  return [v2 addObject:v3];
}

intptr_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_505(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  v7 = [*(a1 + 32) isEqualToSet:v6];
  v8 = *(*(a1 + 48) + 8);
  if (v7)
  {
    *(v8 + 24) = 1;
  }

  else
  {
    *(v8 + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = a4;
  }

  v9 = *(a1 + 40);

  return dispatch_semaphore_signal(v9);
}

- (void)eventUpdated:(id)updated
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"event";
  v8[0] = updated;
  [defaultCenter postNotificationName:@"NSPersistentCloudKitContainerEventChangedNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  objc_autoreleasePoolPop(v5);
}

- (void)publishActivity:(id)activity
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  createDictionaryRepresentation = [activity createDictionaryRepresentation];
  [v6 setObject:createDictionaryRepresentation forKey:@"activityDictionary"];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v5);
}

void __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v6 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 136316162;
    v15 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
    v16 = 1024;
    v17 = 4072;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v2;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_18565F000, v5, v6, "CoreData+CloudKit: %s(%d): %@: Persisting share by the system UI: %@ / %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v3);
  if (v2)
  {
    v9 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke_513;
    v10[3] = &unk_1E6EC2920;
    v11 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v12 = v2;
    v13 = v9;
    [(NSManagedObjectContext *)v9 performBlockAndWait:v10];
  }
}

void __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke_513(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:createIfMissing:error:](NSCKRecordZoneMetadata, [objc_msgSend(*(a1 + 32) "recordID")], objc_msgSend(*(*(a1 + 40) + 8), "databaseScope"), *(a1 + 48), *(a1 + 56), 0, &v20);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 8);
    if (v3 && (v4 = v2, (v5 = *(v3 + 136)) != 0) && (v6 = [(PFCloudKitArchivingUtilities *)v5 encodeRecord:&v20 error:?]) != 0)
    {
      v7 = v6;
      [(NSManagedObject *)v4 updateEncodedShareWithData:v6];
      if ([*(a1 + 56) save:&v20])
      {
LABEL_25:

        return;
      }

      v8 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v10 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v11 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v11 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        *buf = 136315650;
        v22 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
        v23 = 1024;
        v24 = 4089;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): Failed to save changes after share update: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v17 = __PFCloudKitLoggingGetStream();
      v18 = v17;
      if (__ckLoggingOverride == 17)
      {
        v19 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v19 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v17, v19))
      {
        *buf = 136315650;
        v22 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
        v23 = 1024;
        v24 = 4092;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): Failed to encode share data: %@", buf, 0x1Cu);
      }

      v7 = 0;
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_25;
  }

  if (v20)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = __PFCloudKitLoggingGetStream();
    v14 = v13;
    if (__ckLoggingOverride == 17)
    {
      v15 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v13, v15))
    {
      v16 = [*(a1 + 32) recordID];
      *buf = 136315906;
      v22 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
      v23 = 1024;
      v24 = 4096;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to fetch zone metadata for %@: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v6 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 136316162;
    v31 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke";
    v32 = 1024;
    v33 = 4112;
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = v2;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_18565F000, v5, v6, "CoreData+CloudKit: %s(%d): %@: Deleting metadata for share deleted by the system UI: %@ / %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v3);
  if (v2)
  {
    if ([*(*(a1 + 40) + 8) databaseScope] == 3)
    {
      v9 = [NSCloudKitMirroringResetZoneRequest alloc];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_514;
      v27[3] = &unk_1E6EC4E58;
      objc_copyWeak(&v28, (a1 + 56));
      v10 = [(NSCloudKitMirroringResetZoneRequest *)v9 initWithOptions:0 completionBlock:v27];
      v29 = [*(a1 + 48) zoneID];
      -[NSCloudKitMirroringResetZoneRequest setRecordZoneIDsToReset:](v10, [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1]);
      v26 = 0;
      if (![(NSCloudKitMirroringDelegate *)*(a1 + 40) executeMirroringRequest:v10 error:&v26])
      {
        v11 = objc_autoreleasePoolPush();
        v12 = __PFCloudKitLoggingGetStream();
        v13 = v12;
        if (__ckLoggingOverride == 17)
        {
          v14 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v14 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v12, v14))
        {
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);
          *buf = 136316162;
          v31 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke_2";
          v32 = 1024;
          v33 = 4132;
          v34 = 2112;
          v35 = v15;
          v36 = 2112;
          v37 = v16;
          v38 = 2112;
          v39 = v26;
          _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Failed to execute mirroring request for deleted share: %@\n%@", buf, 0x30u);
        }

        objc_autoreleasePoolPop(v11);
      }

      objc_destroyWeak(&v28);
    }

    else if ([*(*(a1 + 40) + 8) databaseScope] == 2)
    {
      v17 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_516;
      v22[3] = &unk_1E6EC2920;
      v23 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v24 = v2;
      v25 = v17;
      [(NSManagedObjectContext *)v17 performBlockAndWait:v22];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        *buf = 138412290;
        v31 = v20;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Called about a share delete for the public database? %@\n", buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v21 = *(a1 + 40);
        *buf = 138412290;
        v31 = v21;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Called about a share delete for the public database? %@", buf, 0xCu);
      }
    }
  }
}

void __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

void __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_516(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:createIfMissing:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], objc_msgSend(*(*(a1 + 40) + 8), "databaseScope"), *(a1 + 48), *(a1 + 56), 0, &v15);
  if (v2)
  {
    [(NSManagedObject *)v2 destroyEncodedShareData];
    if ([*(a1 + 56) save:&v15])
    {
      return;
    }

    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v6 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v6))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v17 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke";
    v18 = 1024;
    v19 = 4149;
    v20 = 2112;
    v21 = v15;
    v7 = "CoreData+CloudKit: %s(%d): Failed to save changes after share delete: %@";
    v8 = v6;
    v9 = v5;
    v10 = 28;
    goto LABEL_14;
  }

  if (!v15)
  {
    return;
  }

  v3 = objc_autoreleasePoolPush();
  v11 = __PFCloudKitLoggingGetStream();
  v12 = v11;
  if (__ckLoggingOverride == 17)
  {
    v13 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v13 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v11, v13))
  {
    v14 = *(a1 + 40);
    *buf = 136315906;
    v17 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke";
    v18 = 1024;
    v19 = 4152;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v7 = "CoreData+CloudKit: %s(%d): %@: Failed to respond to share record delete due to error: %@";
    v8 = v13;
    v9 = v12;
    v10 = 38;
LABEL_14:
    _os_log_impl(&dword_18565F000, v9, v8, v7, buf, v10);
  }

LABEL_15:
  objc_autoreleasePoolPop(v3);
}

- (void)addActivityVoucher:(id)voucher
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_msgSend_stringWithFormat_(v5, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__NSCloudKitMirroringDelegate_addActivityVoucher___block_invoke;
  v9[3] = &unk_1E6EC4B10;
  v9[4] = self;
  v9[5] = voucher;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:v8 assertionLabel:v9 andExecuteWorkBlock:?];
}

void __50__NSCloudKitMirroringDelegate_addActivityVoucher___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) addVoucher:*(a1 + 40)];
  if ([objc_msgSend(*(a1 + 40) "operationConfiguration")] >= 25)
  {
    v2 = [*(a1 + 40) eventType];
    if (v2 == 2)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      [(NSCloudKitMirroringDelegate *)v5 _scheduleAutomatedExportWithLabel:0 activity:v6 voucher:0 completionHandler:?];
    }

    else if (v2 == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      [(NSCloudKitMirroringDelegate *)v3 _scheduleAutomatedImportWithLabel:0 activity:v4 voucher:0 completionHandler:?];
    }
  }
}

- (void)expireActivityVoucher:(id)voucher
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_msgSend_stringWithFormat_(v5, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__NSCloudKitMirroringDelegate_expireActivityVoucher___block_invoke;
  v9[3] = &unk_1E6EC4B10;
  v9[4] = self;
  v9[5] = voucher;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:v8 assertionLabel:v9 andExecuteWorkBlock:?];
}

+ (id)stringForResetReason:(unint64_t)reason
{
  v9 = *MEMORY[0x1E69E9840];
  if (reason - 1 < 7)
  {
    return off_1E6EC4F20[reason - 1];
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    reasonCopy2 = reason;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Can't generate string for unknown reset sync reason: %lu\n", &v7, 0xCu);
  }

  v6 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = 134217984;
    reasonCopy2 = reason;
    _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Can't generate string for unknown reset sync reason: %lu", &v7, 0xCu);
  }

  return 0;
}

- (void)_disableAutomaticExports
{
  if ([(PFCKAccountMonitor *)[(NSCloudKitMirroringDelegate *)self accountMonitor] currentUserRecordID])
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter removeObserver:self name:@"com.apple.coredata.NSPersistentStoreRemoteChangeNotification.remotenotification" object:0];
  }
}

- (void)_enableAutomaticExports
{
  if ([(PFCKAccountMonitor *)[(NSCloudKitMirroringDelegate *)self accountMonitor] currentUserRecordID])
  {
    WeakRetained = objc_loadWeakRetained(&self->_observedCoordinator);
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(NSCloudKitMirroringDelegate *)self scheduleExportAndStartAfterDate:?];
  }
}

- (void)applicationStateMonitorEnteredBackground:(id)background
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke;
  v3[3] = &unk_1E6EC4D18;
  v3[4] = self;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v3 andExecuteWorkBlock:?];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v3 = *(a1 + 32);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  Weak = objc_loadWeak((v3 + 112));
  v7 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v5 inTransactionWithLabel:Weak];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke_2;
  v9[3] = &unk_1E6EC1600;
  v8 = *(a1 + 32);
  v9[4] = v7;
  v9[5] = v8;
  [(PFCloudKitStoreMonitor *)v7 performBlock:v9];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _scheduleAutomatedExportWithLabel:0 activity:0 voucher:0 completionHandler:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = 17;
    }

    else
    {
      v6 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v6 = 16;
    }

    if (__ckLoggingOverride)
    {
      v7 = v6;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = 136315394;
      v9 = "[NSCloudKitMirroringDelegate applicationStateMonitorEnteredBackground:]_block_invoke_2";
      v10 = 1024;
      v11 = 4322;
      _os_log_impl(&dword_18565F000, v5, v7, "CoreData+CloudKit: %s(%d): Ignoring application deactivation notification because the store is dead.", &v8, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)applicationStateMonitorEnteredForeground:(id)foreground
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke;
  v3[3] = &unk_1E6EC4D18;
  v3[4] = self;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v3 andExecuteWorkBlock:?];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v3 = *(a1 + 32);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  Weak = objc_loadWeak((v3 + 112));
  v7 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v5 inTransactionWithLabel:Weak];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke_2;
  v9[3] = &unk_1E6EC1600;
  v8 = *(a1 + 32);
  v9[4] = v7;
  v9[5] = v8;
  [(PFCloudKitStoreMonitor *)v7 performBlock:v9];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _scheduleAutomatedExportWithLabel:0 activity:0 voucher:0 completionHandler:?];
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _scheduleAutomatedImportWithLabel:0 activity:0 voucher:0 completionHandler:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = 17;
    }

    else
    {
      v6 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v6 = 16;
    }

    if (__ckLoggingOverride)
    {
      v7 = v6;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = 136315394;
      v9 = "[NSCloudKitMirroringDelegate applicationStateMonitorEnteredForeground:]_block_invoke_2";
      v10 = 1024;
      v11 = 4350;
      _os_log_impl(&dword_18565F000, v5, v7, "CoreData+CloudKit: %s(%d): Ignoring application activation notification because the store is dead.", &v8, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)applicationStateMonitorExpiredBackgroundActivityTimeout:(id)timeout
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v7 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v7))
  {
    requestManager = self->_requestManager;
    if (requestManager)
    {
      requestManager = requestManager->_activeRequest;
    }

    v11 = 136315906;
    v12 = "[NSCloudKitMirroringDelegate applicationStateMonitorExpiredBackgroundActivityTimeout:]";
    v13 = 1024;
    v14 = 4360;
    v15 = 2112;
    selfCopy = self;
    v17 = 2112;
    v18 = requestManager;
    _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): %@: Deferring active request due to background timeout: %@", &v11, 0x26u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = self->_requestManager;
  if (v9)
  {
    activeRequest = v9->_activeRequest;
    if (activeRequest)
    {
      activeRequest->_deferredByBackgroundTimeout = 1;
    }
  }
}

- (unsigned)qosClassForAccountMonitor:(id)monitor
{
  v3 = [(NSCloudKitMirroringActivityVoucherManager *)self->_voucherManager usableVoucherForEventType:0];
  if (v3)
  {
    v4 = [objc_msgSend(v3 "operationConfiguration")];

    LODWORD(v3) = [NSPersistentCloudKitContainerActivityVoucher qosClassForQualityOfService:v4];
  }

  return v3;
}

+ (void)printMetadataForStoreAtURL:(id)l withConfiguration:(id)configuration operateOnACopy:(BOOL)copy
{
  copyCopy = copy;
  v57[1] = *MEMORY[0x1E69E9840];
  v44 = 0;
  v49 = @"NSReadOnlyPersistentStoreOption";
  v50 = MEMORY[0x1E695E118];
  v8 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", l, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1], &v44);
  if (!v8)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] l];
    fputs(v15, v14);
    return;
  }

  v9 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v8];
  objc_opt_self();
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v57[0] = 0;
  v55 = @"NSReadOnlyPersistentStoreOption";
  v56 = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v10 = [NSPersistentStoreCoordinator addPersistentStoreWithType:v9 configuration:"addPersistentStoreWithType:configuration:URL:options:error:" URL:? options:? error:?];
  if (!v10)
  {
    v16 = *MEMORY[0x1E69E9848];
    v17 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] l];
LABEL_12:
    fputs(v17, v16);
    goto LABEL_13;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __122__NSCloudKitMirroringDelegate___CLI__checkForCloudKitTablesInStoreAtURL_withPersistentStoreCoordinator_withConfiguration___block_invoke;
  v52 = &unk_1E6EC3778;
  v53 = &v45;
  v11 = [[NSSQLBlockRequestContext alloc] initWithBlock:buf context:0 sqlCore:v10];
  [(NSSQLCore *)v10 dispatchRequest:v11 withRetries:0];
  v12 = MEMORY[0x1E69E9848];
  if (v11)
  {
    exception = v11->super._exception;
    if (exception || (exception = v11->super._error) != 0)
    {
      v18 = *MEMORY[0x1E69E9848];
      v19 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] l];
      fputs(v19, v18);
    }
  }

  if (![(NSPersistentStoreCoordinator *)v9 removePersistentStore:v10 error:v57])
  {
    v16 = *v12;
    v17 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] l];
    goto LABEL_12;
  }

LABEL_13:
  v20 = *(v46 + 24);
  _Block_object_dispose(&v45, 8);
  if (v20 == 1)
  {
    lCopy = l;
    if (!copyCopy)
    {
      goto LABEL_22;
    }

    objc_opt_self();
    lCopy = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"cdutil", "stringByAppendingPathComponent:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")), "stringByAppendingPathComponent:", objc_msgSend(l, "lastPathComponent"))}];
    v45 = 0;
    if (+[NSCloudKitMirroringDelegate checkAndCreateDirectoryAtURL:wipeIfExists:error:](NSCloudKitMirroringDelegate, "checkAndCreateDirectoryAtURL:wipeIfExists:error:", [lCopy URLByDeletingLastPathComponent], 1, &v45))
    {
      v56 = @"NSReadOnlyPersistentStoreOption";
      v57[0] = MEMORY[0x1E695E118];
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v54 = @"NSReadOnlyPersistentStoreOption";
      v55 = MEMORY[0x1E695E118];
      if (-[NSPersistentStoreCoordinator replacePersistentStoreAtURL:destinationOptions:withPersistentStoreFromURL:sourceOptions:storeType:error:](v9, "replacePersistentStoreAtURL:destinationOptions:withPersistentStoreFromURL:sourceOptions:storeType:error:", lCopy, v22, l, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1], @"SQLite", &v45))
      {
        goto LABEL_22;
      }

      v23 = *MEMORY[0x1E69E9848];
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], lCopy, v45);
    }

    else
    {
      v23 = *MEMORY[0x1E69E9848];
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45);
    }

    fputs([v24 UTF8String], v23);
    if (!v45)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        *&buf[12] = 1024;
        *&buf[14] = 306;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v40 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        *&buf[12] = 1024;
        *&buf[14] = 306;
        _os_log_fault_impl(&dword_18565F000, v40, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

LABEL_35:
      v25 = *MEMORY[0x1E69E9848];
      v26 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] l];
      goto LABEL_36;
    }

    lCopy = 0;
    v44 = v45;
LABEL_22:
    if (lCopy)
    {
      v27 = [[NSCloudKitMirroringDelegateOptions alloc] initWithContainerIdentifier:@"cdutil-stub-container"];
      v28 = v27;
      if (v27)
      {
        v27->_skipCloudKitSetup = 1;
      }

      v29 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:v27];

      v30 = [[NSPersistentStoreDescription alloc] initWithURL:lCopy];
      [(NSPersistentStoreDescription *)v30 setType:@"SQLite"];
      [(NSPersistentStoreDescription *)v30 setConfiguration:configuration];
      [(NSPersistentStoreDescription *)v30 setShouldMigrateStoreAutomatically:1];
      [(NSPersistentStoreDescription *)v30 setShouldInferMappingModelAutomatically:1];
      [(NSPersistentStoreDescription *)v30 setMirroringDelegate:v29];
      [(NSPersistentStoreDescription *)v30 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
      [(NSPersistentStoreDescription *)v30 setOption:MEMORY[0x1E695E118] forKey:@"NSCloudKitMirroringDelegateReadOnlyOptionKey"];
      v31 = dispatch_semaphore_create(0);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke;
      v43[3] = &unk_1E6EC3590;
      v43[4] = v31;
      v33 = [defaultCenter addObserverForName:@"NSPersistentCloudKitContainerEventChangedNotification" object:v29 queue:0 usingBlock:v43];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v52) = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_8;
      v42[3] = &unk_1E6EC5028;
      v42[5] = v31;
      v42[6] = buf;
      v42[4] = lCopy;
      [(NSPersistentStoreCoordinator *)v9 addPersistentStoreWithDescription:v30 completionHandler:v42];
      v34 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v31, v34))
      {
        v35 = *MEMORY[0x1E69E9848];
        uTF8String = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]) UTF8String];
        fputs(uTF8String, v35);
        v37 = 0;
      }

      else
      {
        v37 = *(*&buf[8] + 24);
      }

      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      dispatch_release(v31);
      if (v37)
      {
        v38 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        [(NSManagedObjectContext *)v38 setPersistentStoreCoordinator:v9];
        [(NSManagedObjectContext *)v38 _setAllowAncillaryEntities:1];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_2;
        v41[3] = &unk_1E6EC16F0;
        v41[4] = v38;
        [(NSManagedObjectContext *)v38 performBlockAndWait:v41];
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v25 = *MEMORY[0x1E69E9858];
  v26 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] l)];
LABEL_36:
  fputs(v26, v25);
LABEL_37:
}

void __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a2 "userInfo")];
  if (v4)
  {
    v5 = v4;
    if (![v4 type] && objc_msgSend(v5, "endDate"))
    {
      if ([v5 succeeded])
      {
        if (![v5 error])
        {
          goto LABEL_17;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v12) = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Error was non-nil, but expected nil\n", &v12, 2u);
        }

        v7 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_17;
        }

        LOWORD(v12) = 0;
        v8 = "CoreData: Error was non-nil, but expected nil";
      }

      else
      {
        v11 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v12) = 0;
          _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: Success was NO but expected YES\n", &v12, 2u);
        }

        v7 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_17;
        }

        LOWORD(v12) = 0;
        v8 = "CoreData: Success was NO but expected YES";
      }

      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, v8, &v12, 2u);
LABEL_17:
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a2;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Missing event %@\n", &v12, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = 138412290;
      v13 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Missing event %@", &v12, 0xCu);
    }
  }
}

intptr_t __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_8(intptr_t result, const char *a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    v4 = *MEMORY[0x1E69E9848];
    v5 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] a2];
    fputs(v5, v4);
    *(*(*(v3 + 48) + 8) + 24) = 0;
    v6 = *(v3 + 40);

    return dispatch_semaphore_signal(v6);
  }

  else
  {
    *(*(*(result + 48) + 8) + 24) = 1;
  }

  return result;
}

void *__98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_2(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v1 = [*(a1 + 32) executeFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest error:{"fetchRequestWithEntityName:", +[NSCKMetadataEntry entityPath](NSCKMetadataEntry, "entityPath")), &v58}];
  if (v1)
  {
    v2 = v1;
    if ([v1 count])
    {
      v3 = *MEMORY[0x1E69E9858];
      v4 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]) UTF8String];
      fputs(v4, v3);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = [v2 sortedArrayUsingComparator:&__block_literal_global_30];
      v5 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v55;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v55 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v54 + 1) + 8 * i);
            v10 = [(NSCKMetadataEntry *)v9 describeValue];
            if ([(__CFString *)v10 containsString:@"\n"])
            {
              v10 = [@"\n\t\t" stringByAppendingString:{-[__CFString stringByReplacingOccurrencesOfString:withString:](v10, "stringByReplacingOccurrencesOfString:withString:", @"\n", @"\n\t\t"}];
            }

            v11 = *MEMORY[0x1E69E9858];
            v12 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] -[:"key") :{v10), "UTF8String"}CFString key](v9];
            fputs(v12, v11);
          }

          v6 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
        }

        while (v6);
      }
    }
  }

  else
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v58)];
    fputs(v14, v13);
  }

  v15 = [*(a1 + 32) executeFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest error:{"fetchRequestWithEntityName:", +[NSCKDatabaseMetadata entityPath](NSCKDatabaseMetadata, "entityPath")), &v58}];
  if (v15)
  {
    v38 = v15;
    result = [v15 count];
    if (result)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      result = [v38 countByEnumeratingWithState:&v50 objects:v60 count:16];
      v40 = result;
      if (result)
      {
        v39 = *v51;
        do
        {
          v17 = 0;
          do
          {
            if (*v51 != v39)
            {
              objc_enumerationMutation(v38);
            }

            v41 = v17;
            v18 = *(*(&v50 + 1) + 8 * v17);
            v19 = *MEMORY[0x1E69E9858];
            v20 = MEMORY[0x1E696AEC0];
            v21 = [v18 databaseName];
            v22 = [v18 databaseScope];
            if ([v18 hasSubscription])
            {
              v23 = @"YES";
            }

            else
            {
              v23 = @"NO";
            }

            v24 = [objc_msgSend_stringWithFormat_(v20 v21];
            fputs(v24, v19);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v43 = [v18 recordZones];
            v25 = [v43 countByEnumeratingWithState:&v46 objects:v59 count:16];
            if (v25)
            {
              v26 = v25;
              obja = *v47;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v47 != obja)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v28 = *(*(&v46 + 1) + 8 * j);
                  v29 = *MEMORY[0x1E69E9858];
                  v30 = MEMORY[0x1E696AEC0];
                  v31 = [v28 ckRecordZoneName];
                  v32 = [v28 ckOwnerName];
                  v33 = @"NO";
                  if ([v28 hasRecordZone])
                  {
                    v34 = @"YES";
                  }

                  else
                  {
                    v34 = @"NO";
                  }

                  if ([v28 hasSubscription])
                  {
                    v33 = @"YES";
                  }

                  v35 = [objc_msgSend_stringWithFormat_(v30 v31];
                  fputs(v35, v29);
                }

                v26 = [v43 countByEnumeratingWithState:&v46 objects:v59 count:16];
              }

              while (v26);
            }

            v17 = v41 + 1;
          }

          while ((v41 + 1) != v40);
          result = [v38 countByEnumeratingWithState:&v50 objects:v60 count:16];
          v40 = result;
        }

        while (result);
      }
    }
  }

  else
  {
    v36 = *MEMORY[0x1E69E9848];
    v37 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v58)];
    return fputs(v37, v36);
  }

  return result;
}

uint64_t __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 key];
  v5 = [a3 key];

  return [v4 localizedCaseInsensitiveCompare:v5];
}

+ (void)printRepresentativeSchemaForModelAtURL:(id)l orStoreAtURL:(id)rL withConfiguration:(id)configuration
{
  rLCopy = rL;
  v41[1] = *MEMORY[0x1E69E9840];
  v39 = 0;
  if (l)
  {
    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:l];
  }

  else
  {
    if (!rL)
    {
      v21 = 0;
      goto LABEL_20;
    }

    v40 = @"NSReadOnlyPersistentStoreOption";
    v41[0] = MEMORY[0x1E695E118];
    v8 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", rL, [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1], &v39);
  }

  v9 = v8;
  if (!v8)
  {
    v21 = v39;
LABEL_20:
    v27 = *MEMORY[0x1E69E9848];
    rLCopy = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] rLCopy];
    fputs(rLCopy, v27);
    v9 = 0;
    goto LABEL_25;
  }

  if (!rLCopy)
  {
    rLCopy = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"cdutil", "stringByAppendingPathComponent:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString"))}];
    if (!+[NSCloudKitMirroringDelegate checkAndCreateDirectoryAtURL:wipeIfExists:error:](NSCloudKitMirroringDelegate, "checkAndCreateDirectoryAtURL:wipeIfExists:error:", [rLCopy URLByDeletingLastPathComponent], 0, &v39))
    {
      v29 = *MEMORY[0x1E69E9848];
      v30 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v39)];
      fputs(v30, v29);
      goto LABEL_25;
    }

    if (!rLCopy)
    {
      goto LABEL_25;
    }
  }

  v10 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v9];
  v11 = [[NSCloudKitMirroringDelegateOptions alloc] initWithContainerIdentifier:@"cdutil-stub-container"];
  v12 = v11;
  if (v11)
  {
    v11->_skipCloudKitSetup = 1;
  }

  v13 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:v11];
  v14 = [[NSPersistentStoreDescription alloc] initWithURL:rLCopy];
  [(NSPersistentStoreDescription *)v14 setType:@"SQLite"];
  [(NSPersistentStoreDescription *)v14 setConfiguration:configuration];
  [(NSPersistentStoreDescription *)v14 setShouldMigrateStoreAutomatically:1];
  [(NSPersistentStoreDescription *)v14 setShouldInferMappingModelAutomatically:1];
  [(NSPersistentStoreDescription *)v14 setMirroringDelegate:v13];
  [(NSPersistentStoreDescription *)v14 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
  v15 = dispatch_semaphore_create(0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke;
  v38[3] = &unk_1E6EC3590;
  v38[4] = v15;
  v17 = [defaultCenter addObserverForName:@"PFCloudKitDidSetupNotificationName" object:v13 queue:0 usingBlock:v38];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke_78;
  v33[3] = &unk_1E6EC5070;
  v33[4] = rLCopy;
  v33[5] = &v34;
  [(NSPersistentStoreCoordinator *)v10 addPersistentStoreWithDescription:v14 completionHandler:v33];
  v18 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v15, v18))
  {
    *(v35 + 24) = 0;
    v19 = *MEMORY[0x1E69E9848];
    uTF8String = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]) UTF8String];
    fputs(uTF8String, v19);
  }

  else
  {
    *(v35 + 24) = 1;
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (*(v35 + 24) == 1)
  {
    v22 = [[PFCloudKitStoreMonitor alloc] initForStore:[(NSArray *)[(NSPersistentStoreCoordinator *)v10 persistentStores] lastObject]];
    v23 = [[PFCloudKitSchemaGenerator alloc] initWithMirroringOptions:v12 forStoreInMonitor:v22];
    v24 = [(PFCloudKitSchemaGenerator *)v23 newRepresentativeRecords:?];
    if (v24)
    {
      v25 = *MEMORY[0x1E69E9858];
      uTF8String2 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]) UTF8String];
      fputs(uTF8String2, v25);
      [v24 enumerateObjectsUsingBlock:&__block_literal_global_86];
    }

    else
    {
      *(v35 + 24) = 0;
      v31 = *MEMORY[0x1E69E9848];
      v32 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v39)];
      fputs(v32, v31);
    }
  }

  _Block_object_dispose(&v34, 8);
LABEL_25:
}

intptr_t __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "userInfo")];
  if ([v3 success])
  {
    if ([v3 error])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Error was non-nil, but expected nil\n", v11, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v10 = 0;
        v6 = "CoreData: Error was non-nil, but expected nil";
        v7 = &v10;
LABEL_12:
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, v6, v7, 2u);
      }
    }
  }

  else
  {
    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Success was NO but expected YES\n", buf, 2u);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      v6 = "CoreData: Success was NO but expected YES";
      v7 = v12;
      goto LABEL_12;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke_78(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    v4 = *MEMORY[0x1E69E9848];
    v5 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] a2];
    result = fputs(v5, v4);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(v3 + 40) + 8) + 24) = v6;
  return result;
}

uint64_t __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E69E9858];
  v3 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] objc_msgSend(a2];

  return fputs(v3, v2);
}

+ (BOOL)checkAndCreateDirectoryAtURL:(id)l wipeIfExists:(BOOL)exists error:(id *)error
{
  existsCopy = exists;
  v12 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  if (![defaultManager fileExistsAtPath:objc_msgSend(l isDirectory:{"path"), &v11}])
  {
    goto LABEL_6;
  }

  if (v11 && !existsCopy)
  {
    return 1;
  }

  if ([defaultManager removeItemAtURL:l error:&v12])
  {
LABEL_6:
    v9 = 1;
    if ([defaultManager createDirectoryAtURL:l withIntermediateDirectories:1 attributes:0 error:&v12])
    {
      return v9;
    }
  }

  v9 = 0;
  if (error && v12)
  {
    v9 = 0;
    *error = v12;
  }

  return v9;
}

uint64_t __122__NSCloudKitMirroringDelegate___CLI__checkForCloudKitTablesInStoreAtURL_withPersistentStoreCoordinator_withConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a2 + 24);
    if (result)
    {
      result = [(NSSQLiteConnection *)result _hasTableWithName:0 isTemp:?];
    }
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)checkIfContentsOfStore:(id)store matchContentsOfStore:(id)ofStore onlyCompareSharedZones:(BOOL)zones error:(id *)error
{
  zonesCopy = zones;
  v8 = [[PFCloudKitStoreComparer alloc] initWithStore:store otherStore:ofStore];
  [(PFCloudKitStoreComparer *)v8 setOnlyCompareSharedZones:zonesCopy];
  LOBYTE(error) = [(PFCloudKitStoreComparer *)v8 ensureContentsMatch:error];

  return error;
}

+ (BOOL)traceObjectMatchingValue:(id)value atKeyPath:(id)path inStores:(id)stores startingAt:(id)at endingAt:(id)endingAt error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy__44;
  v55 = __Block_byref_object_dispose__44;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [stores countByEnumeratingWithState:&v43 objects:v71 count:16];
  if (v8)
  {
    v41 = *v44;
    v37 = *MEMORY[0x1E696A250];
    v38 = *MEMORY[0x1E696A588];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(stores);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v69 = @"NSReadOnlyPersistentStoreOption";
        v70 = MEMORY[0x1E695E118];
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v13 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v10 options:v12 error:v52 + 5];
        if (!v13)
        {
          *(v48 + 24) = 0;
          v23 = v52[5];
          goto LABEL_19;
        }

        v14 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v13];
        v67[0] = @"NSReadOnlyPersistentStoreOption";
        v67[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
        v68[0] = MEMORY[0x1E695E118];
        v68[1] = MEMORY[0x1E695E118];
        v67[2] = @"NSPersistentHistoryTrackingKey";
        v68[2] = MEMORY[0x1E695E118];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];
        v16 = [(NSPersistentStoreCoordinator *)v14 addPersistentStoreWithType:@"SQLite" configuration:0 URL:v10 options:v15 error:v52 + 5];
        if (!v16)
        {
          goto LABEL_17;
        }

        v17 = [path componentsSeparatedByString:@"."];
        if ([v17 count] != 2)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = v38;
          v62 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], path);
          v25 = [v24 initWithDomain:v37 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v62, &v61, 1)}];
LABEL_16:
          v52[5] = v25;
LABEL_17:
          *(v48 + 24) = 0;
          goto LABEL_18;
        }

        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v17 objectAtIndexedSubscript:1];
        v20 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)v14 managedObjectModel] entitiesByName] objectForKeyedSubscript:v18];
        if (!v20)
        {
          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = v38;
          v64 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, v10);
          v25 = [v26 initWithDomain:v37 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v63, 1)}];
          goto LABEL_16;
        }

        v21 = [objc_msgSend(v20 "attributesByName")];
        if (!v21)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = v38;
          v66 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, v18, v10);
          v25 = [v27 initWithDomain:v37 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v66, &v65, 1)}];
          goto LABEL_16;
        }

        v22 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        [(NSManagedObjectContext *)v22 setPersistentStoreCoordinator:v14];
        [(NSManagedObjectContext *)v22 _setAllowAncillaryEntities:1];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __108__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingValue_atKeyPath_inStores_startingAt_endingAt_error___block_invoke;
        v42[3] = &unk_1E6EC50B8;
        v42[4] = v18;
        v42[5] = v21;
        v42[6] = value;
        v42[7] = v19;
        v42[8] = v10;
        v42[9] = v22;
        v42[14] = &v47;
        v42[10] = at;
        v42[11] = endingAt;
        v42[12] = v16;
        v42[13] = &v51;
        [(NSManagedObjectContext *)v22 performBlockAndWait:v42];

LABEL_18:
        LODWORD(v13) = *(v48 + 24);
LABEL_19:
        objc_autoreleasePoolPop(v11);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v8 = [stores countByEnumeratingWithState:&v43 objects:v71 count:16];
    }

    while (v8);
  }

LABEL_22:
  if ((v48[3] & 1) == 0)
  {
    v30 = v52[5];
    if (v30)
    {
      if (error)
      {
        *error = v30;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v59 = 1024;
        v60 = 592;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v32 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v59 = 1024;
        v60 = 592;
        _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v52[5] = 0;
  v28 = *(v48 + 24);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  return v28;
}

void __108__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingValue_atKeyPath_inStores_startingAt_endingAt_error___block_invoke(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = [NSFetchRequest fetchRequestWithEntityName:*(a1 + 32)];
  v3 = [*(a1 + 40) attributeType];
  if (v3 == 700)
  {
    v4 = *(a1 + 48);
    goto LABEL_5;
  }

  if (v3 == 1100)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 48)];
LABEL_5:
    v5 = v4;
    goto LABEL_11;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v80 = *(a1 + 40);
    v79 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v79;
    v127 = 2112;
    v128 = v80;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Sorry, I don't know how to translate this value in to a predicate yet: %@ / %@\n", buf, 0x16u);
  }

  v7 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v82 = *(a1 + 40);
    v81 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v81;
    v127 = 2112;
    v128 = v82;
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Sorry, I don't know how to translate this value in to a predicate yet: %@ / %@", buf, 0x16u);
  }

  v5 = 0;
LABEL_11:
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", *(a1 + 56), v5]);
  [(NSFetchRequest *)v2 setReturnsObjectsAsFaults:0];
  v9 = MEMORY[0x1E69E9858];
  v10 = *MEMORY[0x1E69E9858];
  v11 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] *(a1 + 32)];
  fputs(v11, v10);
  *buf = 0;
  v12 = [*(a1 + 72) executeFetchRequest:v2 error:buf];
  v97 = v8;
  v98 = v5;
  if (v12)
  {
    v13 = v12;
    v14 = *v9;
    v15 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v12)];
    fputs(v15, v14);
    [v8 addObjectsFromArray:objc_msgSend_valueForKey_(v13)];
  }

  else
  {
    *(*(*(a1 + 104) + 8) + 40) = *buf;
    *(*(*(a1 + 112) + 8) + 24) = 0;
  }

  v99 = a1;
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v16 = +[NSPersistentHistoryChange fetchRequest];
    -[NSFetchRequest setPredicate:](v16, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"changeType == %ld", 2]);
    v17 = [NSPersistentHistoryChangeRequest fetchHistoryWithFetchRequest:v16];
    [(NSPersistentHistoryChangeRequest *)v17 setResultType:5];
    v18 = [objc_msgSend(*(a1 + 72) executeRequest:v17 error:{buf), "result"}];
    if (v18)
    {
      v19 = v18;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v20 = [v18 countByEnumeratingWithState:&v117 objects:v125 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v118;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v118 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v117 + 1) + 8 * i);
            v25 = objc_autoreleasePoolPush();
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v26 = [v24 changes];
            v27 = [v26 countByEnumeratingWithState:&v113 objects:v124 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v114;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v114 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v113 + 1) + 8 * j);
                  v32 = [objc_msgSend(v31 "tombstone")];
                  if (v32 && [v98 isEqual:v32])
                  {
                    [v97 addObject:{objc_msgSend(v31, "changedObjectID")}];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v113 objects:v124 count:16];
              }

              while (v28);
            }

            objc_autoreleasePoolPop(v25);
          }

          v21 = [v19 countByEnumeratingWithState:&v117 objects:v125 count:16];
        }

        while (v21);
      }
    }

    else
    {
      *(*(*(a1 + 112) + 8) + 24) = 0;
      *(*(*(a1 + 104) + 8) + 40) = *buf;
    }
  }

  v33 = v99;
  v34 = 0x1E696A000uLL;
  if (*(*(*(v99 + 112) + 8) + 24) == 1)
  {
    v35 = *MEMORY[0x1E69E9858];
    v36 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v97)];
    fputs(v36, v35);
    if ([v97 count])
    {
      v37 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:0];
      [(NSPersistentHistoryChangeRequest *)v37 setResultType:5];
      v38 = [objc_msgSend(*(v99 + 72) executeRequest:v37 error:{buf), "result"}];
      if (v38)
      {
        v39 = v38;
        v91 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v91 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        obj = v39;
        v40 = v97;
        v88 = [v39 countByEnumeratingWithState:&v109 objects:v123 count:16];
        if (v88)
        {
          v87 = *v110;
          do
          {
            v41 = 0;
            do
            {
              if (*v110 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v90 = v41;
              v93 = *(*(&v109 + 1) + 8 * v41);
              context = objc_autoreleasePoolPush();
              v42 = *(v33 + 80);
              if (!v42 || [v42 compare:{objc_msgSend(v93, "timestamp")}] != 1)
              {
                v43 = *(v99 + 88);
                if (!v43 || [v43 compare:{objc_msgSend(v93, "timestamp")}] != -1)
                {
                  v107 = 0u;
                  v108 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v95 = [v93 changes];
                  v44 = [v95 countByEnumeratingWithState:&v105 objects:v122 count:16];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = *v106;
                    v92 = *v106;
                    do
                    {
                      v47 = 0;
                      v94 = v45;
                      do
                      {
                        if (*v106 != v46)
                        {
                          objc_enumerationMutation(v95);
                        }

                        v48 = *(*(&v105 + 1) + 8 * v47);
                        v49 = objc_autoreleasePoolPush();
                        if ([v40 containsObject:{objc_msgSend(v48, "changedObjectID")}])
                        {
                          v50 = *MEMORY[0x1E69E9858];
                          v51 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] objc_msgSend(v93];
                          fputs(v51, v50);
                          v52 = *MEMORY[0x1E69E9858];
                          v53 = MEMORY[0x1E696AEC0];
                          v54 = [v48 changeID];
                          v55 = [v48 changedObjectID];
                          v56 = +[NSPersistentHistoryChange stringForChangeType:](NSPersistentHistoryChange, "stringForChangeType:", [v48 changeType]);
                          v85 = [objc_msgSend(objc_msgSend_valueForKey_(objc_msgSend(v48 "updatedProperties"))];
                          v83 = v54;
                          v84 = v55;
                          v40 = v97;
                          v45 = v94;
                          v57 = v53;
                          v46 = v92;
                          v58 = [objc_msgSend_stringWithFormat_(v57 v83];
                          fputs(v58, v52);
                        }

                        objc_autoreleasePoolPop(v49);
                        ++v47;
                      }

                      while (v45 != v47);
                      v45 = [v95 countByEnumeratingWithState:&v105 objects:v122 count:16];
                    }

                    while (v45);
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              v41 = v90 + 1;
              v33 = v99;
            }

            while (v90 + 1 != v88);
            v88 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
          }

          while (v88);
        }

        v34 = 0x1E696A000;
      }

      else
      {
        *(*(*(v99 + 112) + 8) + 24) = 0;
        *(*(*(v99 + 104) + 8) + 40) = *buf;
      }

      if (*(*(*(v33 + 112) + 8) + 24) == 1)
      {
        v59 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [v97 allObjects], *(v33 + 96), *(v33 + 72), buf);
        if (v59)
        {
          v60 = v59;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v61 = [v59 countByEnumeratingWithState:&v101 objects:v121 count:16];
          if (v61)
          {
            v62 = v61;
            v100 = *v102;
            v96 = v60;
            do
            {
              for (k = 0; k != v62; ++k)
              {
                if (*v102 != v100)
                {
                  objc_enumerationMutation(v96);
                }

                v64 = *(*(&v101 + 1) + 8 * k);
                v65 = objc_autoreleasePoolPush();
                v66 = [(NSCKRecordMetadata *)v64 createObjectIDForLinkedRow];
                v67 = *MEMORY[0x1E69E9858];
                v68 = [objc_msgSend_stringWithFormat_(*(v34 + 3776) v66];
                fputs(v68, v67);
                v69 = [v64 encodedRecordAsset];
                if (v69)
                {
                  v70 = v69;
                  if ([objc_msgSend(v69 "binaryData")])
                  {
                    v69 = [v70 binaryData];
                  }

                  else
                  {
                    v69 = [v70 externalBinaryData];
                  }
                }

                v71 = v69;
                if (v71)
                {
                  v72 = [NSCKRecordMetadata recordFromEncodedData:v71 error:buf];
                  v73 = v72;
                  v74 = *(v34 + 3776);
                  if (v72)
                  {
                    v75 = *MEMORY[0x1E69E9858];
                    v76 = objc_msgSend_stringWithFormat_(v74, [v72 debugDescription]);
                  }

                  else
                  {
                    v75 = *MEMORY[0x1E69E9848];
                    v76 = objc_msgSend_stringWithFormat_(v74, *buf);
                  }

                  fputs([v76 UTF8String], v75);

                  v34 = 0x1E696A000;
                }

                objc_autoreleasePoolPop(v65);
              }

              v62 = [v96 countByEnumeratingWithState:&v101 objects:v121 count:16];
            }

            while (v62);
          }
        }

        else
        {
          v77 = *MEMORY[0x1E69E9848];
          v78 = [objc_msgSend_stringWithFormat_(*(v34 + 3776) v97];
          fputs(v78, v77);
          *(*(*(v33 + 112) + 8) + 24) = 0;
          *(*(*(v33 + 104) + 8) + 40) = *buf;
        }
      }
    }
  }
}

+ (BOOL)traceObjectMatchingRecordName:(id)name inStores:(id)stores startingAt:(id)at endingAt:(id)endingAt error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__44;
  v41 = __Block_byref_object_dispose__44;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [stores countByEnumeratingWithState:&v29 objects:v51 count:16];
  if (v7)
  {
    v8 = *v30;
    v9 = MEMORY[0x1E695E118];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(stores);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v49 = @"NSReadOnlyPersistentStoreOption";
      v50 = v9;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v14 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v11 options:v13 error:v38 + 5];
      if (v14)
      {
        v15 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v14];
        v47[0] = @"NSReadOnlyPersistentStoreOption";
        v47[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
        v48[0] = v9;
        v48[1] = v9;
        v47[2] = @"NSPersistentHistoryTrackingKey";
        v48[2] = v9;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
        if ([(NSPersistentStoreCoordinator *)v15 addPersistentStoreWithType:@"SQLite" configuration:0 URL:v11 options:v16 error:v38 + 5])
        {
          v17 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
          [(NSManagedObjectContext *)v17 setPersistentStoreCoordinator:v15];
          [(NSManagedObjectContext *)v17 _setAllowAncillaryEntities:1];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __103__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingRecordName_inStores_startingAt_endingAt_error___block_invoke;
          v28[3] = &unk_1E6EC50E0;
          v28[4] = name;
          v28[5] = v11;
          v28[10] = &v33;
          v28[6] = v17;
          v28[7] = at;
          v28[9] = &v37;
          v28[8] = endingAt;
          [(NSManagedObjectContext *)v17 performBlockAndWait:v28];
        }

        else
        {
          *(v34 + 24) = 0;
        }

        LODWORD(v14) = *(v34 + 24);
      }

      else
      {
        *(v34 + 24) = 0;
      }

      objc_autoreleasePoolPop(v12);
      if (!v14)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [stores countByEnumeratingWithState:&v29 objects:v51 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v34[3] & 1) == 0)
  {
    v20 = v38[5];
    if (v20)
    {
      if (error)
      {
        *error = v20;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v45 = 1024;
        v46 = 709;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v45 = 1024;
        v46 = 709;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v38[5] = 0;
  v18 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v18;
}

void __103__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingRecordName_inStores_startingAt_endingAt_error___block_invoke(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  v79 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordName == %@", *(a1 + 32)]);
  v3 = MEMORY[0x1E69E9858];
  v4 = *MEMORY[0x1E69E9858];
  v5 = 0x1E696A000uLL;
  v6 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] *(a1 + 32)];
  fputs(v6, v4);
  v96 = 0;
  v7 = [*(a1 + 48) executeFetchRequest:v2 error:&v96];
  v65 = a1;
  if (v7)
  {
    v8 = v7;
    v9 = *v3;
    v10 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v7)];
    fputs(v10, v9);
    obj = v8;
    v69 = objc_alloc_init(PFCloudKitArchivingUtilities);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v73 = [v8 countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v73)
    {
      v71 = *v93;
      do
      {
        v11 = 0;
        do
        {
          if (*v93 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v92 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [(NSCKRecordMetadata *)v12 createObjectIDForLinkedRow];
          v15 = *v3;
          v16 = [objc_msgSend_stringWithFormat_(*(v5 + 3776) v14];
          fputs(v16, v15);
          if ([v12 encodedRecordAsset])
          {
            v17 = [v12 encodedRecordAsset];
            v77 = v13;
            if (v17)
            {
              v18 = v17;
              if ([objc_msgSend(v17 "binaryData")])
              {
                v19 = [v18 binaryData];
              }

              else
              {
                v19 = [v18 externalBinaryData];
              }

              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            v21 = [(PFCloudKitArchivingUtilities *)v69 recordFromEncodedData:v20 error:&v96];
            v22 = *v3;
            v75 = v14;
            v23 = [objc_msgSend_stringWithFormat_(*(v5 + 3776) v14];
            fputs(v23, v22);
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v24 = [objc_msgSend(v21 "encryptedValues")];
            v25 = [v24 countByEnumeratingWithState:&v88 objects:v99 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v89;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v89 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v88 + 1) + 8 * i);
                  v30 = *v3;
                  v31 = MEMORY[0x1E696AEC0];
                  v60 = [objc_msgSend(v21 "encryptedValues")];
                  v32 = v31;
                  v3 = MEMORY[0x1E69E9858];
                  v33 = [objc_msgSend_stringWithFormat_(v32 v29];
                  fputs(v33, v30);
                }

                v26 = [v24 countByEnumeratingWithState:&v88 objects:v99 count:16];
              }

              while (v26);
            }

            v5 = 0x1E696A000;
            v14 = v75;
            v13 = v77;
          }

          [v79 addObject:v14];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v11 != v73);
        v34 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
        v73 = v34;
      }

      while (v34);
    }

    a1 = v65;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 40) = v96;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v35 = *v3;
    v36 = [objc_msgSend_stringWithFormat_(*(v5 + 3776) v79)];
    fputs(v36, v35);
    if ([v79 count])
    {
      v37 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:0];
      [(NSPersistentHistoryChangeRequest *)v37 setResultType:5];
      v38 = [objc_msgSend(*(v65 + 48) executeRequest:v37 error:{&v96), "result"}];
      if (v38)
      {
        v39 = v38;
        v70 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v70 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v64 = [v39 countByEnumeratingWithState:&v84 objects:v98 count:16];
        if (v64)
        {
          v62 = v39;
          v63 = *v85;
          do
          {
            v40 = 0;
            do
            {
              if (*v85 != v63)
              {
                objc_enumerationMutation(v62);
              }

              obja = v40;
              v74 = *(*(&v84 + 1) + 8 * v40);
              context = objc_autoreleasePoolPush();
              v41 = *(v65 + 56);
              if (!v41 || [v41 compare:{objc_msgSend(v74, "timestamp")}] != 1)
              {
                v42 = *(v65 + 64);
                if (!v42 || [v42 compare:{objc_msgSend(v74, "timestamp")}] != -1)
                {
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v78 = [v74 changes];
                  v43 = [v78 countByEnumeratingWithState:&v80 objects:v97 count:16];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = *v81;
                    v72 = *v81;
                    do
                    {
                      v46 = 0;
                      v76 = v44;
                      do
                      {
                        if (*v81 != v45)
                        {
                          objc_enumerationMutation(v78);
                        }

                        v47 = *(*(&v80 + 1) + 8 * v46);
                        v48 = objc_autoreleasePoolPush();
                        if ([v79 containsObject:{objc_msgSend(v47, "changedObjectID")}])
                        {
                          v49 = *MEMORY[0x1E69E9858];
                          v50 = *(v5 + 3776);
                          v5 = 0x1E696A000uLL;
                          v51 = [objc_msgSend_stringWithFormat_(v50 objc_msgSend(v74];
                          fputs(v51, v49);
                          v52 = *MEMORY[0x1E69E9858];
                          v53 = MEMORY[0x1E696AEC0];
                          v54 = [v47 changeID];
                          v55 = [v47 changedObjectID];
                          v56 = +[NSPersistentHistoryChange stringForChangeType:](NSPersistentHistoryChange, "stringForChangeType:", [v47 changeType]);
                          v61 = [objc_msgSend(objc_msgSend_valueForKey_(objc_msgSend(v47 "updatedProperties"))];
                          v59 = v54;
                          v44 = v76;
                          v57 = v53;
                          v45 = v72;
                          v58 = [objc_msgSend_stringWithFormat_(v57 v59];
                          fputs(v58, v52);
                        }

                        objc_autoreleasePoolPop(v48);
                        ++v46;
                      }

                      while (v44 != v46);
                      v44 = [v78 countByEnumeratingWithState:&v80 objects:v97 count:16];
                    }

                    while (v44);
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              v40 = obja + 1;
            }

            while (obja + 1 != v64);
            v64 = [v62 countByEnumeratingWithState:&v84 objects:v98 count:16];
          }

          while (v64);
        }
      }

      else
      {
        *(*(*(v65 + 80) + 8) + 24) = 0;
        *(*(*(v65 + 72) + 8) + 40) = v96;
      }
    }
  }
}

+ (BOOL)printEventsInStores:(id)stores startingAt:(id)at endingAt:(id)endingAt error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__44;
  v36 = __Block_byref_object_dispose__44;
  v37 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [stores countByEnumeratingWithState:&v28 objects:v50 count:16];
  if (v6)
  {
    v7 = *v29;
    v8 = MEMORY[0x1E695E118];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(stores);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v48 = @"NSReadOnlyPersistentStoreOption";
      v49 = v8;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v13 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v10 options:v12 error:v33 + 5];
      if (v13)
      {
        v14 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v13];
        v46[0] = @"NSReadOnlyPersistentStoreOption";
        v46[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
        v47[0] = v8;
        v47[1] = v8;
        v46[2] = @"NSPersistentHistoryTrackingKey";
        v47[2] = v8;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
        if ([(NSPersistentStoreCoordinator *)v14 addPersistentStoreWithType:@"SQLite" configuration:0 URL:v10 options:v15 error:v33 + 5])
        {
          v16 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
          [(NSManagedObjectContext *)v16 setPersistentStoreCoordinator:v14];
          [(NSManagedObjectContext *)v16 _setAllowAncillaryEntities:1];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __84__NSCloudKitMirroringDelegate___CLI__printEventsInStores_startingAt_endingAt_error___block_invoke;
          v27[3] = &unk_1E6EC3180;
          v27[4] = at;
          v27[5] = endingAt;
          v27[6] = v10;
          v27[7] = v16;
          v27[8] = &v38;
          v27[9] = &v32;
          [(NSManagedObjectContext *)v16 performBlockAndWait:v27];
        }

        else
        {
          *(v39 + 24) = 0;
        }

        v17 = *(v39 + 24);
      }

      else
      {
        v17 = 0;
        *(v39 + 24) = 0;
      }

      objc_autoreleasePoolPop(v11);
      if (!v17)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [stores countByEnumeratingWithState:&v28 objects:v50 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v39[3] & 1) == 0)
  {
    v20 = v33[5];
    if (v20)
    {
      if (error)
      {
        *error = v20;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v44 = 1024;
        v45 = 802;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v44 = 1024;
        v45 = 802;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v33[5] = 0;
  v18 = *(v39 + 24);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
  return v18;
}

void __84__NSCloudKitMirroringDelegate___CLI__printEventsInStores_startingAt_endingAt_error___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKEvent entityPath]);
  [(NSFetchRequest *)v2 setFetchBatchSize:1000];
  v25[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startedAt" ascending:1];
  -[NSFetchRequest setSortDescriptors:](v2, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 32))
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"startedAt >= %@", *(a1 + 32))}];
  }

  if (*(a1 + 40))
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"startedAt <= %@", *(a1 + 40))}];
  }

  if ([v3 count])
  {
    -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3]);
  }

  v4 = *MEMORY[0x1E69E9858];
  v5 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] *(a1 + 48)];
  fputs(v5, v4);
  v23 = 0;
  v6 = [*(a1 + 56) executeFetchRequest:v2 error:&v23];
  if (v6)
  {
    v7 = v6;
    v17 = v3;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v7;
    v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ - %@: %@ - ", objc_msgSend(v8, "stringFromDate:", objc_msgSend(v13, "startedAt")), objc_msgSend(v8, "stringFromDate:", objc_msgSend(v13, "endedAt")), +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", objc_msgSend(v13, "cloudKitEventType"))];
          if ([v13 succeeded])
          {
            [v14 appendString:@"succeeded"];
          }

          else
          {
            [v14 appendFormat:@"failed - %@:%lld", objc_msgSend(v13, "errorDomain"), objc_msgSend(v13, "errorCode")];
          }

          v15 = *MEMORY[0x1E69E9858];
          v16 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v14)];
          fputs(v16, v15);

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v3 = v17;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 40) = v23;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

+ (BOOL)printSharedZoneWithName:(id)name inStoreAtURL:(id)l error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__44;
  v26 = __Block_byref_object_dispose__44;
  v27 = 0;
  v38 = @"NSReadOnlyPersistentStoreOption";
  v8 = MEMORY[0x1E695E118];
  v39[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v10 = [NSPersistentStore cachedModelForPersistentStoreWithURL:l options:v9 error:v23 + 5];
  if (v10)
  {
    v11 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v10];
    v36[0] = @"NSReadOnlyPersistentStoreOption";
    v36[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
    v37[0] = v8;
    v37[1] = v8;
    v36[2] = @"NSPersistentHistoryTrackingKey";
    v37[2] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    if ([(NSPersistentStoreCoordinator *)v11 addPersistentStoreWithType:@"SQLite" configuration:0 URL:l options:v12 error:v23 + 5])
    {
      v13 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      [(NSManagedObjectContext *)v13 setPersistentStoreCoordinator:v11];
      [(NSManagedObjectContext *)v13 _setAllowAncillaryEntities:1];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __81__NSCloudKitMirroringDelegate___CLI__printSharedZoneWithName_inStoreAtURL_error___block_invoke;
      v21[3] = &unk_1E6EC3540;
      v21[4] = name;
      v21[5] = v13;
      v21[6] = l;
      v21[7] = &v28;
      v21[8] = &v22;
      [(NSManagedObjectContext *)v13 performBlockAndWait:v21];
    }

    else
    {
      *(v29 + 24) = 0;
      v15 = v23[5];
    }
  }

  else
  {
    *(v29 + 24) = 0;
    v14 = v23[5];
  }

  if ((v29[3] & 1) == 0)
  {
    v18 = v23[5];
    if (v18)
    {
      if (error)
      {
        *error = v18;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v34 = 1024;
        v35 = 883;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v34 = 1024;
        v35 = 883;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v23[5] = 0;
  v16 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v16;
}

void __81__NSCloudKitMirroringDelegate___CLI__printSharedZoneWithName_inStoreAtURL_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordZoneName == %@", *(a1 + 32)]);
  [(NSFetchRequest *)v2 setReturnsObjectsAsFaults:0];
  v36 = 0;
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:&v36];
  v4 = *(*(a1 + 56) + 8);
  if (v3)
  {
    v5 = v3;
    *(v4 + 24) = 1;
    if ([v3 count])
    {
      v30 = a1;
      v31 = objc_alloc_init(PFCloudKitArchivingUtilities);
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x1E69E9858];
        v9 = *v33;
        do
        {
          v10 = 0;
          do
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v32 + 1) + 8 * v10);
            v12 = objc_autoreleasePoolPush();
            v13 = *v8;
            v14 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v11)];
            fputs(v14, v13);
            if ([v11 encodedShareAsset])
            {
              v15 = [(NSCKRecordZoneMetadata *)v11 createRecordZoneID];
              v16 = [v11 encodedShareAsset];
              if (v16)
              {
                v17 = v16;
                if ([objc_msgSend(v16 "binaryData")])
                {
                  v18 = [v17 binaryData];
                }

                else
                {
                  v18 = [v17 externalBinaryData];
                }

                v21 = v18;
              }

              else
              {
                v21 = 0;
              }

              v22 = [(PFCloudKitArchivingUtilities *)v31 shareFromEncodedData:v21 inZoneWithID:v15 error:&v36];
              if (v22)
              {
                v23 = *v8;
                v24 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v22)];
                fputs(v24, v23);
              }

              else
              {
                v25 = *MEMORY[0x1E69E9848];
                v26 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v15];
                fputs(v26, v25);
                v36 = 0;
              }
            }

            else
            {
              v19 = *v8;
              v20 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] *(v30 + 32))];
              fputs(v20, v19);
            }

            objc_autoreleasePoolPop(v12);
            ++v10;
          }

          while (v7 != v10);
          v27 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
          v7 = v27;
        }

        while (v27);
      }
    }

    else
    {
      v28 = *MEMORY[0x1E69E9858];
      v29 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] objc_msgSend(*(a1 + 48)];
      fputs(v29, v28);
    }
  }

  else
  {
    *(v4 + 24) = 0;
    *(*(*(a1 + 64) + 8) + 40) = v36;
  }
}

@end