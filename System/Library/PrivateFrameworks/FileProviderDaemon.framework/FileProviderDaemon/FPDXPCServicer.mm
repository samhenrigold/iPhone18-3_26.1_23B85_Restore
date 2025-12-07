@interface FPDXPCServicer
- (BOOL)_canBundleIDTriggerTTRForFailure:(id)failure;
- (BOOL)_isNonSandboxedConnection;
- (BOOL)clientHasSandboxAccessToFile:(id)file;
- (FPDServer)server;
- (FPDXPCServicer)init;
- (NSString)description;
- (NSXPCConnection)connection;
- (id)_providerForIdentifier:(id)identifier enumerateEntitlementRequired:(BOOL)required error:(id *)error;
- (id)createDomainServicerForProviderDomainID:(id)d provider:(id)provider enumerateEntitlementRequired:(BOOL)required error:(id *)error;
- (id)defaultProviderForCurrentConnection:(id *)connection;
- (id)evictItemAtURL:(id)l evenIfEnumeratingFP:(BOOL)p andClearACLForConsumer:(id)consumer evictionReason:(unsigned int)reason completionHandler:(id)handler;
- (id)getSyncPausedXattrForURL:(id)l;
- (id)providerForIdentifier:(id)identifier enumerateEntitlementRequired:(BOOL)required error:(id *)error;
- (id)providersForCurrentConnection;
- (id)tryTransformItemIDAfterMigration:(id)migration;
- (int)pid;
- (void)_forceIngestionForItemID:(id)d completionHandler:(id)handler;
- (void)_performWithCheckedEnumerationAttributes:(id)attributes completionHandler:(id)handler;
- (void)_selectNewProviderDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt completionHandler:(id)handler;
- (void)_test_callFileProviderManagerAPIs:(id)is;
- (void)_test_callRemoveTrashedItemsOlderThanDate:(id)date completionHandler:(id)handler;
- (void)_test_disableDBQueryStatistics:(id)statistics completionHandler:(id)handler;
- (void)_test_getCountersArray:(id)array completionHandler:(id)handler;
- (void)_test_getDBOptions:(id)options completionHandler:(id)handler;
- (void)_test_getDBQueryStatistics:(id)statistics queryPlan:(BOOL)plan completionHandler:(id)handler;
- (void)_test_getNeedsIndexingStateForRootURL:(id)l completionHandler:(id)handler;
- (void)_test_getRootSupportDirURLForDomainURL:(id)l completionHandler:(id)handler;
- (void)_test_importItemsPendingReconciliationProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)_test_importItemsPendingScanningDiskProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)_test_importItemsPendingScanningProviderProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)_test_isDiskSpaceMonitorRunningForDomain:(id)domain completionHandler:(id)handler;
- (void)_test_purgerBarrierWithCompletionHandler:(id)handler;
- (void)_test_queryDiskImportSchedulerLabel:(id)label completionHandler:(id)handler;
- (void)_test_resetCounters:(id)counters completionHandler:(id)handler;
- (void)_test_resetDBQueryStatistics:(id)statistics completionHandler:(id)handler;
- (void)_test_retrieveItemWithName:(id)name completionHandler:(id)handler;
- (void)_test_setDocIDResolutionPolicy:(BOOL)policy completionHandler:(id)handler;
- (void)_test_simulateInstallOfBundleID:(id)d completionHandler:(id)handler;
- (void)_test_simulateUninstallOfBundleID:(id)d completionHandler:(id)handler;
- (void)_test_triggerDatabaseError:(id)error domain:(id)domain completionHandler:(id)handler;
- (void)accumulatedSizeOfItemsInDomain:(id)domain completion:(id)completion;
- (void)accumulatedSizeOfPinnedItemsInDomain:(id)domain completion:(id)completion;
- (void)addDomain:(id)domain forProviderIdentifier:(id)identifier byImportingDirectoryAtURL:(id)l nonWrappedURL:(id)rL userAllowedDBDrop:(BOOL)drop knownFolders:(id)folders completionHandler:(id)handler;
- (void)appHasNonUploadedFiles:(id)files completionHandler:(id)handler;
- (void)attachKnownFolders:(id)folders options:(unint64_t)options completionHandler:(id)handler;
- (void)backUpUserURL:(id)l outputUserURL:(id)rL completionHandler:(id)handler;
- (void)bookmarkableStringFromDocumentURL:(id)l options:(int64_t)options completionHandler:(id)handler;
- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)domain completionHandler:(id)handler;
- (void)checkErrorAgainstDiagnosticsJson:(id)json inputError:(id)error errorDirection:(id)direction jobCode:(id)code underlying:(id)underlying completionHandler:(id)handler;
- (void)checkLocationEligibilityForDomain:(id)domain completionHandler:(id)handler;
- (void)clearDiagnosticsState:(id)state completionHandler:(id)handler;
- (void)copyDatabaseForFPCKStartingAtPath:(id)path completionHandler:(id)handler;
- (void)createDatabaseCopyOutputPathForDomain:(id)domain completionHandler:(id)handler;
- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision completionHandler:(id)handler;
- (void)detachKnownFolders:(id)folders completionHandler:(id)handler;
- (void)didUpdateAlternateContentsDocumentForDocumentAtURL:(id)l completionHandler:(id)handler;
- (void)documentURLFromBookmarkableString:(id)string creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l completionHandler:(id)handler;
- (void)documentURLFromItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l completionHandler:(id)handler;
- (void)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to completionHandler:(id)handler;
- (void)dumpIndexerInfoFor:(id)for withName:(id)name to:(id)to completionHandler:(id)handler;
- (void)dumpPlistTelemetryForProviders:(id)providers result:(id)result providerFilter:(id)filter completionHandler:(id)handler;
- (void)dumpProviders:(id)providers dumper:(id)dumper auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpStateTo:(id)to providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpTelemetryTo:(id)to providerFilter:(id)filter completionHandler:(id)handler;
- (void)enumerateSearchResultForRequest:(id)request providerDomainID:(id)d completionHandler:(id)handler;
- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason completionHandler:(id)handler;
- (void)extendBookmarkForFileURL:(id)l toConsumerID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)extendBookmarkForItemID:(id)d consumerID:(id)iD completionHandler:(id)handler;
- (void)extendSandboxForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler;
- (void)fetchAccessServicer:(id)servicer;
- (void)fetchAlternateContentsURLForDocumentURL:(id)l completionHandler:(id)handler;
- (void)fetchAndStartEnumeratingWithSettings:(id)settings observer:(id)observer completionHandler:(id)handler;
- (void)fetchDaemonOperationIDsWithCompletionHandler:(id)handler;
- (void)fetchDaemonOperationWithID:(id)d completionHandler:(id)handler;
- (void)fetchDomainServicerForProviderDomainID:(id)d handler:(id)handler;
- (void)fetchFSItemsForItemIdentifiers:(id)identifiers providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier materializingIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)fetchLatestVersionForItemAtURL:(id)l bundleID:(id)d completionHandler:(id)handler;
- (void)fetchListOfMonitoredApps:(id)apps;
- (void)fetchPathComponentsForURL:(id)l completionHandler:(id)handler;
- (void)fetchProviderForShareURL:(id)l fallbackIdentifier:(id)identifier completionHandler:(id)handler;
- (void)forceIndexingInForeground:(BOOL)foreground completionHandler:(id)handler;
- (void)forceIngestionForItemID:(id)d completionHandler:(id)handler;
- (void)forceIngestionForItemIDs:(id)ds completionHandler:(id)handler;
- (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler;
- (void)getDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getNumberOfNonMaterializedFilesInDomain:(id)domain withCompletionHandler:(id)handler;
- (void)getPersonaForProvider:(id)provider completionHandler:(id)handler;
- (void)getSavedDiagnosticsFor:(id)for completionHandler:(id)handler;
- (void)getURLForContainerWithItemID:(id)d inDataScopeDomainWithIdentifier:(id)identifier documentsScopeDomainIdentifier:(id)domainIdentifier documentsFolderItemIdentifier:(id)itemIdentifier completionHandler:(id)handler;
- (void)importProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)invalidate;
- (void)itemForURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)listPausedURLsWithBundleID:(id)d completionHandler:(id)handler;
- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions completionHandler:(id)handler;
- (void)materializeURL:(id)l completionHandler:(id)handler;
- (void)pauseIndexingFor:(id)for completionHandler:(id)handler;
- (void)pauseSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler;
- (void)pinItemWithID:(id)d completionHandler:(id)handler;
- (void)preventDiskImportSchedulerFromRunning:(BOOL)running completionHandler:(id)handler;
- (void)providerDomainForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)providerDomainForURL:(id)l completionHandler:(id)handler;
- (void)providerDomainsCompletionHandler:(id)handler;
- (void)providerItemIDForURL:(id)l completionHandler:(id)handler;
- (void)putBackURLForTrashedItemAtURL:(id)l completionHandler:(id)handler;
- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler;
- (void)removeAllDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeDomain:(id)domain completionHandler:(id)handler;
- (void)removeDomain:(id)domain mode:(unint64_t)mode completionHandler:(id)handler;
- (void)removeDomainAndPreserveDataWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)removeDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)resolveConflictAtURL:(id)l completionHandler:(id)handler;
- (void)restoreUserURL:(id)l fromBuild:(id)build restoreType:(id)type cleanupOnSuccess:(BOOL)success completionHandler:(id)handler;
- (void)resumeIndexingFor:(id)for completionHandler:(id)handler;
- (void)resumeSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler;
- (void)runFPCKForDomainWithID:(id)d domainRootURL:(id)l databaseBackupPath:(id)path options:(unint64_t)options reason:(unint64_t)reason launchType:(unint64_t)type contentBarrier:(int64_t)barrier completionHandler:(id)self0;
- (void)scheduleActionOperationWithInfo:(id)info completionHandler:(id)handler;
- (void)selectNewProviderDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt completionHandler:(id)handler;
- (void)setAlternateContentsURL:(id)l onDocumentURL:(id)rL completionHandler:(id)handler;
- (void)setEnabled:(BOOL)enabled forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler;
- (void)setHiddenByUser:(BOOL)user forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler;
- (void)setIndexingEnabled:(BOOL)enabled forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler;
- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler;
- (void)signalReindexCSIdentifiersByProviderDomainID:(id)d indexReason:(int64_t)reason completionHandler:(id)handler;
- (void)spotlightReindexAllItemsForBundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)spotlightReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)startAccessingExtensionForProviderDomainID:(id)d handler:(id)handler;
- (void)startAccessingOperationServiceForProviderDomainID:(id)d handler:(id)handler;
- (void)startAccessingServiceForItemID:(id)d completionHandler:(id)handler;
- (void)startAccessingServiceWithName:(id)name itemID:(id)d domain:(id)domain connection:(id)connection enumerateEntitlementRequired:(BOOL)required completionHandler:(id)handler;
- (void)startAccessingServiceWithName:(id)name itemURL:(id)l completionHandler:(id)handler;
- (void)startDownloadingItemAtURL:(id)l completionHandler:(id)handler;
- (void)startOperation:(id)operation toFetchIconsForAppBundleIDs:(id)ds requestedSize:(CGSize)size scale:(double)scale completionHandler:(id)handler;
- (void)startProvidingItemAtURL:(id)l fromProviderID:(id)d forConsumerID:(id)iD completionHandler:(id)handler;
- (void)stateForDomainWithID:(id)d completionHandler:(id)handler;
- (void)trashItemAtURL:(id)l completionHandler:(id)handler;
- (void)triggerDiagnosticsFor:(id)for triggeringError:(id)error uiOnly:(BOOL)only useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler;
- (void)unpinItemWithID:(id)d completionHandler:(id)handler;
- (void)updateBlockedProcessNamesForProvider:(id)provider processNames:(id)names completionHandler:(id)handler;
- (void)updateLastUsedDate:(id)date completionHandler:(id)handler;
- (void)uploadLocalVersionOfItemAtURL:(id)l bundleID:(id)d conflictResolutionPolicy:(int64_t)policy completionHandler:(id)handler;
- (void)validateDiagnosticsJson:(id)json completionHandler:(id)handler;
- (void)valuesForAttributes:(id)attributes forItemAtURL:(id)l completionHandler:(id)handler;
- (void)waitForChangesOnItemsBelowItemWithID:(id)d completionHandler:(id)handler;
- (void)waitForStabilizationOfDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)wakeUpForURL:(id)l completionHandler:(id)handler;
- (void)wakeUpForURLFixed:(id)fixed completionHandler:(id)handler;
@end

@implementation FPDXPCServicer

- (FPDXPCServicer)init
{
  v9.receiver = self;
  v9.super_class = FPDXPCServicer;
  v2 = [(FPDXPCServicer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("servicer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = fp_default_log();
    log = v2->_log;
    v2->_log = v6;
  }

  return v2;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (FPDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (id)providersForCurrentConnection
{
  v21[1] = *MEMORY[0x1E69E9840];
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  if (fp_bundleIdentifier)
  {
    v7 = [extensionManager defaultProviderWithTopLevelBundleIdentifier:fp_bundleIdentifier];
    if (!v7)
    {
      v7 = [extensionManager providerWithIdentifier:fp_bundleIdentifier reason:0];
      if (!v7)
      {
        v14 = objc_loadWeakRetained(&self->_connection);
        fp_bundleRecord = [v14 fp_bundleRecord];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([fp_bundleRecord containingBundleRecord], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "bundleIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
        {
          firstObject = [extensionManager defaultProviderWithTopLevelBundleIdentifier:v17];

          if (firstObject)
          {
            goto LABEL_6;
          }
        }

        else
        {
        }

        v18 = objc_loadWeakRetained(&self->_connection);
        fp_applicationGroups = [v18 fp_applicationGroups];
        v20 = [extensionManager providersWithGroupContainers:fp_applicationGroups bundleIdentifier:fp_bundleIdentifier];
        firstObject = [v20 firstObject];

        goto LABEL_6;
      }
    }

    firstObject = v7;
  }

  else
  {
    firstObject = 0;
  }

LABEL_6:
  descriptor = [firstObject descriptor];
  topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];

  if (topLevelBundleIdentifier || ![firstObject isAppExtensionReachable])
  {
    v12 = [extensionManager providersWithTopLevelBundleIdentifier:topLevelBundleIdentifier];
  }

  else
  {
    asAppExtensionBackedProvider = [firstObject asAppExtensionBackedProvider];
    v21[0] = asAppExtensionBackedProvider;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  return v12;
}

- (int)pid
{
  connection = [(FPDXPCServicer *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained processIdentifier];
  v6 = FPExecutableNameForProcessIdentifier();
  v7 = objc_loadWeakRetained(&self->_connection);
  v8 = [v3 stringWithFormat:@"<%@:%p %@[%d]>", v4, self, v6, objc_msgSend(v7, "processIdentifier")];

  return v8;
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = selfCopy->_providerServicers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_isNonSandboxedConnection
{
  connection = [(FPDXPCServicer *)self connection];
  fp_isNonSandboxedConnection = [connection fp_isNonSandboxedConnection];

  return fp_isNonSandboxedConnection;
}

- (BOOL)clientHasSandboxAccessToFile:(id)file
{
  fileCopy = file;
  connection = [(FPDXPCServicer *)self connection];
  v6 = [connection fp_hasSandboxAccessToFile:fileCopy logLevel:2];

  return v6;
}

- (id)defaultProviderForCurrentConnection:(id *)connection
{
  v38 = *MEMORY[0x1E69E9840];
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleRecord = [WeakRetained fp_bundleRecord];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [fp_bundleRecord containingBundleRecord];

    fp_bundleRecord = containingBundleRecord;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = fp_bundleRecord;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [v11 fp_bundleIdentifier];

  if (fp_bundleIdentifier)
  {
    v13 = [extensionManager defaultProviderWithTopLevelBundleIdentifier:fp_bundleIdentifier];
    if (v13 || ([extensionManager providerWithIdentifier:fp_bundleIdentifier reason:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      firstObject = v13;
    }

    else
    {
      bundleIdentifier = [v10 bundleIdentifier];
      if (!bundleIdentifier || (v26 = bundleIdentifier, [extensionManager defaultProviderWithTopLevelBundleIdentifier:bundleIdentifier], firstObject = objc_claimAutoreleasedReturnValue(), v26, !firstObject))
      {
        v27 = objc_loadWeakRetained(&self->_connection);
        fp_applicationGroups = [v27 fp_applicationGroups];
        v29 = [extensionManager providersWithGroupContainers:fp_applicationGroups bundleIdentifier:fp_bundleIdentifier];

        if ([v29 count] >= 2)
        {
          v30 = fp_current_or_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 138543618;
            v35 = fp_bundleIdentifier;
            v36 = 2114;
            v37 = v29;
            _os_log_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] Caller %{public}@ has multiple candidates for associated provider (%{public}@)", &v34, 0x16u);
          }
        }

        firstObject = [v29 firstObject];
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  if (![firstObject isAppExtensionReachable])
  {
    if (connection)
    {
      FPProviderNotRegistered();
      *connection = asAppExtensionBackedProvider = 0;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!firstObject || !v10)
  {
LABEL_25:
    asAppExtensionBackedProvider = [firstObject asAppExtensionBackedProvider];
    goto LABEL_40;
  }

  asAppExtensionBackedProvider2 = [firstObject asAppExtensionBackedProvider];
  extensionRecord = [asAppExtensionBackedProvider2 extensionRecord];

  containingBundleRecord2 = [extensionRecord containingBundleRecord];
  v18 = FPGetRelation(v10, containingBundleRecord2);

  if (!v18)
  {

    goto LABEL_25;
  }

  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Called from a process with a different version than the provider currently in use", &v34, 2u);
  }

  if (v18 == 1)
  {
    if (connection)
    {
      containingBundleRecord3 = [extensionRecord containingBundleRecord];
      v21 = [containingBundleRecord3 URL];
      *connection = FPProviderOlderVersionRunningError();
    }

    v22 = fp_current_or_default_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    LOWORD(v34) = 0;
    v23 = "[INFO] Calling application is newer";
  }

  else
  {
    if (connection)
    {
      containingBundleRecord4 = [extensionRecord containingBundleRecord];
      v32 = [containingBundleRecord4 URL];
      *connection = FPProviderNewerVersionFoundError();
    }

    v22 = fp_current_or_default_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    LOWORD(v34) = 0;
    v23 = "[INFO] Calling application is older";
  }

  _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, v23, &v34, 2u);
LABEL_38:

LABEL_39:
  asAppExtensionBackedProvider = 0;
LABEL_40:

  return asAppExtensionBackedProvider;
}

- (id)providerForIdentifier:(id)identifier enumerateEntitlementRequired:(BOOL)required error:(id *)error
{
  requiredCopy = required;
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  [extensionManager updateProvidersIfNecessary];
  v11 = [(FPDXPCServicer *)self _providerForIdentifier:identifierCopy enumerateEntitlementRequired:requiredCopy error:error];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_connection);
      fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];
      v18 = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = fp_bundleIdentifier;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] No provider found with identifier %@ for calling bundle %@", &v18, 0x16u);
    }
  }

  return v12;
}

- (id)_providerForIdentifier:(id)identifier enumerateEntitlementRequired:(BOOL)required error:(id *)error
{
  requiredCopy = required;
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = [(FPDXPCServicer *)self defaultProviderForCurrentConnection:error];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  if (!identifierCopy)
  {
    if (v9)
    {
      v17 = v9;
LABEL_24:
      v16 = v17;
      goto LABEL_25;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _providerForIdentifier:enumerateEntitlementRequired:error:];
    }

    if (!error || *error)
    {
LABEL_42:
      v16 = 0;
      goto LABEL_43;
    }

    v30 = FPProviderNotFoundError();
LABEL_41:
    v16 = 0;
    *error = v30;
    goto LABEL_43;
  }

  identifier = [v9 identifier];
  v15 = [identifier isEqualToString:identifierCopy];

  if (v15)
  {
    v16 = v9;
    if (!error)
    {
      goto LABEL_20;
    }

LABEL_19:
    *error = 0;
    goto LABEL_20;
  }

  [(FPDXPCServicer *)self providersForCurrentConnection];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v44 = 0u;
  v16 = [v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v16)
  {
    v37 = requiredCopy;
    v38 = extensionManager;
    v39 = fp_bundleIdentifier;
    v40 = v9;
    v19 = *v42;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        identifier2 = [v21 identifier];
        v23 = [identifier2 isEqualToString:identifierCopy];

        if (v23)
        {
          v16 = v21;
          goto LABEL_17;
        }
      }

      v16 = [v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_17:
    fp_bundleIdentifier = v39;
    v9 = v40;
    extensionManager = v38;
    requiredCopy = v37;
  }

  if (error)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (!v16)
  {
    if (!requiredCopy || (-[FPDXPCServicer connection](self, "connection"), v24 = objc_claimAutoreleasedReturnValue(), v50 = *MEMORY[0x1E6967560], [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1], v25 = extensionManager, v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v24, "fp_hasOneOfEntitlements:", v26), v26, extensionManager = v25, v24, (v27 & 1) != 0))
    {
      *buf = 0;
      v17 = [extensionManager providerWithIdentifier:identifierCopy reason:buf];
      if (v17)
      {
        goto LABEL_24;
      }

      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _providerForIdentifier:enumerateEntitlementRequired:error:];
      }

      if (error)
      {
        *error = FPProviderNotFoundError();
      }

      goto LABEL_42;
    }

    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer _providerForIdentifier:enumerateEntitlementRequired:error:];
    }

    if (!error)
    {
      goto LABEL_42;
    }

    v30 = FPNotPermittedError();
    goto LABEL_41;
  }

LABEL_25:
  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v34 = objc_loadWeakRetained(&self->_connection);
    [v16 identifier];
    v36 = v35 = extensionManager;
    *buf = 138412802;
    *&buf[4] = v34;
    v46 = 2112;
    v47 = identifierCopy;
    v48 = 2112;
    v49 = v36;
    _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is allowed to access %@, resolved to %@", buf, 0x20u);

    extensionManager = v35;
  }

LABEL_43:

  return v16;
}

- (id)createDomainServicerForProviderDomainID:(id)d provider:(id)provider enumerateEntitlementRequired:(BOOL)required error:(id *)error
{
  requiredCopy = required;
  dCopy = d;
  providerCopy = provider;
  if (providerCopy)
  {
    v12 = providerCopy;
  }

  else
  {
    fp_toProviderID = [dCopy fp_toProviderID];
    v12 = [(FPDXPCServicer *)self providerForIdentifier:fp_toProviderID enumerateEntitlementRequired:requiredCopy error:error];

    if (!v12)
    {
      v17 = 0;
      goto LABEL_7;
    }
  }

  v14 = [FPDXPCDomainServicer alloc];
  server = [(FPDXPCServicer *)self server];
  connection = [(FPDXPCServicer *)self connection];
  v17 = [(FPDXPCDomainServicer *)v14 initWithServer:server providerDomainID:dCopy domain:0 connection:connection];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  providerServicers = selfCopy->_providerServicers;
  if (!providerServicers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v21 = selfCopy->_providerServicers;
    selfCopy->_providerServicers = weakObjectsHashTable;

    providerServicers = selfCopy->_providerServicers;
  }

  [(NSHashTable *)providerServicers addObject:v17];
  objc_sync_exit(selfCopy);

LABEL_7:

  return v17;
}

- (void)startAccessingServiceWithName:(id)name itemID:(id)d domain:(id)domain connection:(id)connection enumerateEntitlementRequired:(BOOL)required completionHandler:(id)handler
{
  requiredCopy = required;
  nameCopy = name;
  dCopy = d;
  domainCopy = domain;
  connectionCopy = connection;
  handlerCopy = handler;
  providerDomainID = [dCopy providerDomainID];
  if (domainCopy)
  {
    provider = [domainCopy provider];
  }

  else
  {
    provider = 0;
  }

  v37 = 0;
  v21 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:providerDomainID provider:provider enumerateEntitlementRequired:requiredCopy error:&v37];
  v22 = v37;
  if (domainCopy)
  {

    if (!v21)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!v21)
    {
LABEL_10:
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v22);
      goto LABEL_11;
    }

    v36 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    domainCopy = [extensionManager domainFromItemID:dCopy reason:&v36];

    if (!domainCopy)
    {
      domainCopy = [dCopy providerID];
      v27 = FPProviderNotFoundError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v27);

      goto LABEL_11;
    }
  }

  defaultBackend = [domainCopy defaultBackend];
  v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke;
  v29[3] = &unk_1E83C00C0;
  v34 = handlerCopy;
  v35 = a2;
  v30 = connectionCopy;
  selfCopy = self;
  v32 = nameCopy;
  v33 = v21;
  [defaultBackend fetchServicesForItemID:dCopy allowRestrictedSources:0 request:v26 completionHandler:v29];

LABEL_11:
}

void __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = [*(a1 + 32) fp_isNonSandboxedConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_106;
    v21[3] = &unk_1E83C0098;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v24 = *(a1 + 72);
    v21[4] = v12;
    v22 = v13;
    v25 = v11;
    v23 = *(a1 + 32);
    v14 = [v8 fp_map:v21];
    v15 = v14;
    if (*(a1 + 48) && ![v14 count])
    {
      v20 = *(a1 + 64);
      v18 = FPNotSupportedError();
      (*(v20 + 16))(v20, 0, 0, 0, 0, v18);
    }

    else
    {
      [*(a1 + 56) startExtendingLifetime];
      v17 = *(a1 + 56);
      v16 = *(a1 + 64);
      v18 = [v17 providerDomainID];
      (*(v16 + 16))(v16, v7, v17, v18, v15, v10);
    }
  }

  else
  {
    if (!v9)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_cold_1();
      }

      v10 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"error"];
    }

    (*(*(a1 + 64) + 16))();
  }
}

id __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_106(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 serviceName];
  if (!v4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ nil message interface name"];
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDXPCServicer startAccessingServiceWithName:itemID:domain:connection:enumerateEntitlementRequired:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDXPCServicer.m", 765, [v16 UTF8String]);
  }

  v5 = v4;
  if (*(a1 + 40) && ![v4 isEqualToString:?])
  {
    goto LABEL_11;
  }

  v6 = [v3 requiredEntitlement];

  if (v6)
  {
    if (*(a1 + 64))
    {
LABEL_11:
      v12 = 0;
      goto LABEL_16;
    }

    v7 = *(a1 + 48);
    v8 = [v3 requiredEntitlement];
    v20[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v10 = [v7 fp_hasOneOfEntitlements:v9 logLevel:0];
  }

  else
  {
    if (![v5 hasPrefix:@"com.apple.iWork"])
    {
      if ([v5 hasPrefix:@"com.apple.CloudDocs.AccountManagement"])
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          v13 = *(a1 + 48);
          v18 = *MEMORY[0x1E6967550];
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          LODWORD(v13) = [v13 fp_hasOneOfEntitlements:v14 logLevel:0];

          if (!v13)
          {
            goto LABEL_11;
          }
        }
      }

      goto LABEL_15;
    }

    if (*(a1 + 64))
    {
      goto LABEL_15;
    }

    v11 = *(a1 + 48);
    v19 = *MEMORY[0x1E69675E0];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v10 = [v11 fp_hasOneOfEntitlements:v8 logLevel:0];
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v12 = [v3 serviceName];
LABEL_16:

  return v12;
}

- (void)wakeUpForURL:(id)l completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer wakeUpForURL:completionHandler:];
  }

  v13 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = objc_opt_new();
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    selfCopy = self;
    v18 = 2080;
    v19 = "[FPDXPCServicer wakeUpForURL:completionHandler:]";
    v20 = 2112;
    v21 = 0;
    v22 = 2112;
    v23 = v12;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error:%@, transaction:%@", buf, 0x34u);
  }

  v10 = objc_opt_new();
  handlerCopy[2](handlerCopy, 0, v10);

  __fp_pop_log();
}

- (void)wakeUpForURLFixed:(id)fixed completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  fixedCopy = fixed;
  handlerCopy = handler;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer wakeUpForURLFixed:completionHandler:];
  }

  v13 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = objc_opt_new();
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    selfCopy = self;
    v18 = 2080;
    v19 = "[FPDXPCServicer wakeUpForURLFixed:completionHandler:]";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error:%@, transaction:%@", buf, 0x34u);
  }

  v10 = objc_opt_new();
  handlerCopy[2](handlerCopy, v10, 0);

  __fp_pop_log();
}

- (void)extendBookmarkForItemID:(id)d consumerID:(id)iD completionHandler:(id)handler
{
  v49[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v49[0] = *MEMORY[0x1E6967540];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke;
  v35 = &unk_1E83BFA20;
  selfCopy = self;
  v12 = dCopy;
  v37 = v12;
  v13 = handlerCopy;
  v38 = v13;
  v14 = v11;
  v15 = v33;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    WeakRetained = objc_loadWeakRetained(&self->_connection);
    fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v40 = v12;
      v41 = 2112;
      selfCopy3 = fp_bundleIdentifier;
      v43 = 2112;
      v44 = iDCopy;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Extending bookmark privileges for: “%@” from bundle %@ to %@.", buf, 0x20u);
    }

    if (iDCopy)
    {
      v21 = +[FPDAccessControlStore sharedStore];
      v22 = [v21 bookmarkForItemID:v12 consumerIdentifier:iDCopy];

      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:];
      }

      v31 = fpfs_adopt_log();
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v40 = v28;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:]";
        v45 = 2112;
        v46 = v22;
        v47 = 2112;
        v48 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(v13 + 2))(v13, v22, 0);
      __fp_pop_log();
    }

    else
    {
      v32 = fpfs_adopt_log();
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPNotPermittedWriteError();
        *buf = 134219010;
        v40 = v29;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:]";
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v27 = FPNotPermittedWriteError();
      (*(v13 + 2))(v13, 0, v27);

      __fp_pop_log();
    }
  }

  else
  {
    v25 = FPNotPermittedError();
    v34(v15, v25);
  }
}

void __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134219010;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

- (void)extendSandboxForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler
{
  v49[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer extendSandboxForFileURL:a2 fromProviderID:? toConsumerID:? completionHandler:?];
  }

  connection = [(FPDXPCServicer *)self connection];
  v49[0] = *MEMORY[0x1E6967540];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  v18 = [connection fp_hasOneOfEntitlements:v17 logLevel:2];

  if (v18)
  {
    if (!lCopy || !dCopy || !iDCopy)
    {
      v21 = FPInvalidParameterError();
      if (v21)
      {
        v22 = 0;
LABEL_18:
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          fp_shortDescription = [lCopy fp_shortDescription];
          *buf = 138413058;
          *&buf[4] = fp_shortDescription;
          v41 = 2112;
          selfCopy2 = dCopy;
          v43 = 2112;
          v44 = iDCopy;
          v45 = 2112;
          v46 = v21;
          _os_log_error_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Could not extend sandbox for %@ from provider ID %@ to consumer ID %@, error: %@", buf, 0x2Au);
        }

        v39 = fpfs_adopt_log();
        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v33 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v33;
          v41 = 2112;
          selfCopy2 = self;
          v43 = 2080;
          v44 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v21;
          _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
        }

        handlerCopy[2](handlerCopy, 0, v21);
        __fp_pop_log();

        goto LABEL_24;
      }
    }

    *buf = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v22 = [extensionManager providerWithIdentifier:dCopy reason:buf];

    if (v22)
    {
      v21 = [v22 domainForURL:lCopy];
      if (v21)
      {
        goto LABEL_23;
      }

      v25 = FPProviderNotFoundErrorForURL();
    }

    else
    {
      v25 = FPProviderNotFoundError();
    }

    v21 = v25;
    if (v25)
    {
      goto LABEL_18;
    }

LABEL_23:
    defaultBackend = [v21 defaultBackend];
    v29 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __88__FPDXPCServicer_extendSandboxForFileURL_fromProviderID_toConsumerID_completionHandler___block_invoke;
    v34[3] = &unk_1E83BE8F0;
    v34[4] = self;
    v38 = handlerCopy;
    v35 = lCopy;
    v36 = dCopy;
    v37 = iDCopy;
    [defaultBackend itemIDForURL:v35 requireProviderItemID:0 request:v29 completionHandler:v34];

LABEL_24:
    goto LABEL_25;
  }

  v39 = fpfs_adopt_log();
  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v30 = FPPopLogSectionForBlock();
    v31 = FPClientLacksEntitlement();
    *buf = 134219010;
    *&buf[4] = v30;
    v41 = 2112;
    selfCopy2 = self;
    v43 = 2080;
    v44 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]";
    v45 = 2112;
    v46 = 0;
    v47 = 2112;
    v48 = v31;
    _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
  }

  v20 = FPClientLacksEntitlement();
  handlerCopy[2](handlerCopy, 0, v20);

  __fp_pop_log();
LABEL_25:
}

void __88__FPDXPCServicer_extendSandboxForFileURL_fromProviderID_toConsumerID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v24 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 32);
      v20 = FPPluginOperationFailedError();
      *buf = 134219010;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      v29 = 2080;
      v30 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = v20;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
    }

    v9 = *(a1 + 64);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, 0, v10);

    __fp_pop_log();
  }

  else
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 40) fp_shortDescription];
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 138412802;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_INFO, "[INFO] Successfully extended sandbox for %@ from provider ID %@ to consumer ID %@.", buf, 0x20u);
    }

    v15 = *(a1 + 40);
    v23 = 0;
    v16 = [MEMORY[0x1E6967408] wrapperWithURL:v15 readonly:0 error:&v23];
    v7 = v23;
    v24 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock();
      v22 = *(a1 + 32);
      *buf = 134219010;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2080;
      v30 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }
}

- (void)startProvidingItemAtURL:(id)l fromProviderID:(id)d forConsumerID:(id)iD completionHandler:(id)handler
{
  v68[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v57 = __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke;
  v58 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v60 = v13;
  selfCopy2 = self;
  v15 = lCopy;
  v16 = v56;
  if (!v15)
  {
    v26 = FPInvalidParameterError();
LABEL_13:
    v29 = v26;
    v57(v16, v26);

    goto LABEL_26;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v18 = [connection fp_hasSandboxAccessToFile:v15 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v18 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v21 = [connection2 fp_hasOneOfEntitlements:v20 nonSandboxedAccess:0 logLevel:0];

    if ((v21 & 1) == 0)
    {
      v26 = FPNotPermittedError();
      goto LABEL_13;
    }
  }

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v23 = *MEMORY[0x1E6967540];
  v68[0] = *MEMORY[0x1E6967538];
  v68[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v25 = [connection3 fp_hasOneOfEntitlements:v24 logLevel:2];

  if (v25)
  {
    if (dCopy && iDCopy || (FPInvalidParameterError(), (v30 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      *buf = 0;
      server = [(FPDXPCServicer *)selfCopy2 server];
      extensionManager = [server extensionManager];
      v33 = [extensionManager domainForURL:v15 reason:buf];

      if (v33)
      {
        provider = [v33 provider];
        identifier = [provider identifier];
        v36 = [identifier isEqualToString:dCopy];

        if (v36)
        {
          defaultBackend = [v33 defaultBackend];
          v38 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_124;
          v49[3] = &unk_1E83C0110;
          v50 = v33;
          v51 = selfCopy2;
          v54 = v13;
          v52 = v15;
          v53 = iDCopy;
          v39 = v33;
          [defaultBackend itemIDForURL:v52 requireProviderItemID:0 request:v38 completionHandler:v49];

          goto LABEL_26;
        }

        v30 = FPInvalidParameterError();
      }

      else
      {
        v30 = FPProviderNotFoundError();
      }

      if (!v30)
      {
        goto LABEL_26;
      }
    }

    v40 = fp_current_or_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      fp_shortDescription = [v15 fp_shortDescription];
      *buf = 138413058;
      *&buf[4] = fp_shortDescription;
      v62 = 2112;
      v63 = dCopy;
      v64 = 2112;
      v65 = iDCopy;
      v66 = 2112;
      v67 = v30;
      _os_log_error_impl(&dword_1CEFC7000, v40, OS_LOG_TYPE_ERROR, "[ERROR] Cannot provide item at %@ from provider ID %@ to consumer ID %@. Error: %@", buf, 0x2Au);
    }

    v55 = fpfs_adopt_log();
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v46 = FPPopLogSectionForBlock();
      v47 = FPProviderNotFoundError();
      *buf = 134218754;
      *&buf[4] = v46;
      v62 = 2112;
      v63 = selfCopy2;
      v64 = 2080;
      v65 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]";
      v66 = 2112;
      v67 = v47;
      _os_log_debug_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error: %@", buf, 0x2Au);
    }

    v42 = FPProviderNotFoundError();
    (*(v13 + 2))(v13, v42);

    __fp_pop_log();
  }

  else
  {
    v55 = fpfs_adopt_log();
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v43 = FPPopLogSectionForBlock();
      v44 = FPClientLacksEntitlement();
      *buf = 134218754;
      *&buf[4] = v43;
      v62 = 2112;
      v63 = selfCopy2;
      v64 = 2080;
      v65 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]";
      v66 = 2112;
      v67 = v44;
      _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error: %@", buf, 0x2Au);
    }

    v28 = FPClientLacksEntitlement();
    (*(v13 + 2))(v13, v28);

    __fp_pop_log();
  }

LABEL_26:
}

void __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_124(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_2;
  block[3] = &unk_1E83C00E8;
  v14 = v4;
  v12 = *(a1 + 40);
  v17 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v12;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v11 = v4;
  dispatch_async(v5, block);
}

void __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v13 = fpfs_adopt_log();
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock();
      v10 = *(a1 + 40);
      v11 = FPPluginOperationFailedError();
      *buf = 134218754;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2080;
      v19 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]_block_invoke_2";
      v20 = 2112;
      v21 = v11;
      _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v3 = *(a1 + 72);
    v4 = FPPluginOperationFailedError();
    (*(v3 + 16))(v3, v4);

    __fp_pop_log();
  }

  else
  {
    v12 = [*(a1 + 48) defaultBackend];
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"consumer %@", *(a1 + 64)];
    v7 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 40) pid]);
    v8 = [v12 startProvidingItemAtURL:v5 readerID:v6 readingOptions:0 request:v7 completionHandler:*(a1 + 72)];
  }
}

- (void)startDownloadingItemAtURL:(id)l completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v40 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v36;
  if (!v10)
  {
    v23 = FPInvalidParameterError();
LABEL_12:
    v26 = v23;
    v37(v11, v23);

    goto LABEL_13;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v23 = FPNotPermittedError();
      goto LABEL_12;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_128;
    v29[3] = &unk_1E83C0110;
    v30 = v19;
    v31 = selfCopy2;
    v34 = v8;
    v32 = v10;
    v33 = v20;
    v22 = v20;
    [defaultBackend itemIDForURL:v32 requireProviderItemID:0 request:v22 completionHandler:v29];
  }

  else
  {
    v35 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = FPPopLogSectionForBlock();
      v28 = FPProviderNotFoundErrorForURL();
      *buf = 134218754;
      *&buf[4] = v27;
      v42 = 2112;
      v43 = selfCopy2;
      v44 = 2080;
      v45 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]";
      v46 = 2112;
      v47 = v28;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v25 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, v25);

    __fp_pop_log();
  }

LABEL_13:
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2;
  block[3] = &unk_1E83C0138;
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v8;
  v18 = *(a1 + 64);
  v14 = v5;
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v17 = fpfs_adopt_log();
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock();
      v12 = *(a1 + 40);
      v13 = FPPluginOperationFailedError();
      *buf = 134218754;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2080;
      v25 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]_block_invoke_2";
      v26 = 2112;
      v27 = v13;
      _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v3 = *(a1 + 80);
    v4 = FPPluginOperationFailedError();
    (*(v3 + 16))(v3, v4);

    __fp_pop_log();
  }

  else if (*(a1 + 48))
  {
    v5 = [*(a1 + 64) defaultBackend];
    v6 = [v5 startProvidingItemAtURL:*(a1 + 56) readerID:@"startDownloadingItemAtURL" readingOptions:0 request:*(a1 + 72) completionHandler:&__block_literal_global_134];

    v18 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 80) + 16))();
    __fp_pop_log();
  }

  else
  {
    v19 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 40);
      v16 = FPItemNotFoundErrorAtURL();
      *buf = 134218754;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2080;
      v25 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v9 = *(a1 + 80);
    v10 = FPItemNotFoundErrorAtURL();
    (*(v9 + 16))(v9, v10);

    __fp_pop_log();
  }
}

- (id)evictItemAtURL:(id)l evenIfEnumeratingFP:(BOOL)p andClearACLForConsumer:(id)consumer evictionReason:(unsigned int)reason completionHandler:(id)handler
{
  pCopy = p;
  v51[6] = *MEMORY[0x1E69E9840];
  lCopy = l;
  consumerCopy = consumer;
  handlerCopy = handler;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v47 = __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke;
  v48 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v50 = v14;
  selfCopy2 = self;
  v16 = lCopy;
  v17 = v46;
  if (!v16)
  {
    v31 = FPInvalidParameterError();
LABEL_20:
    v34 = v31;
    v47(v17, v31);

    v33 = 0;
    goto LABEL_23;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v19 = [connection fp_hasSandboxAccessToFile:v16 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v19 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v51[0] = *MEMORY[0x1E6967560];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v22 = [connection2 fp_hasOneOfEntitlements:v21 nonSandboxedAccess:0 logLevel:0];

    if ((v22 & 1) == 0)
    {
      v31 = FPNotPermittedError();
      goto LABEL_20;
    }
  }

  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer evictItemAtURL:a2 evenIfEnumeratingFP:? andClearACLForConsumer:? evictionReason:? completionHandler:?];
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v26 = [extensionManager domainForURL:v16 reason:0];

  if (v26)
  {
    provider = [v26 provider];
    supportsEnumeration = [provider supportsEnumeration];

    if ((supportsEnumeration & !pCopy) == 0)
    {
      defaultBackend = [v26 defaultBackend];
      v36 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135;
      v40[3] = &unk_1E83C0160;
      v41 = v26;
      v42 = v16;
      v43 = selfCopy2;
      v44 = v14;
      v33 = [defaultBackend evictItemAtURL:v42 evictionReason:reason request:v36 completionHandler:v40];

      goto LABEL_22;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:];
    }

    v45 = fpfs_adopt_log();
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:];
    }
  }

  else
  {
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer evictItemAtURL:v16 evenIfEnumeratingFP:? andClearACLForConsumer:? evictionReason:? completionHandler:?];
    }

    v45 = fpfs_adopt_log();
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:];
    }
  }

  (*(v14 + 2))(v14, 0);
  __fp_pop_log();

  v33 = 0;
LABEL_22:

LABEL_23:

  return v33;
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_1();
    }

    v15 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 48);
      v14 = FPPluginOperationFailedError();
      *buf = 134218754;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2080;
      v22 = "[FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v14;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error: %@", buf, 0x2Au);
    }

    v9 = *(a1 + 56);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, v10);

    __fp_pop_log();
  }

  else
  {
    v16 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_2();
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }
}

- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v40 = v10;
  selfCopy2 = self;
  v12 = v36;
  v41 = 0;
  v13 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v41];
  v14 = v41;
  if (!v13)
  {
    v37(v12, v14);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  if ([v13 invalidated])
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v13;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696AEC0];
    identifier = [v13 identifier];
    v18 = [v16 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v19 = FPProviderNotRegistered();
    v37(v12, v19);

    goto LABEL_7;
  }

  v20 = v13;
LABEL_9:

  if (v20)
  {
    v41 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager domainFromItemID:dCopy reason:&v41];

    if (v23)
    {
      defaultBackend = [v23 defaultBackend];
      v25 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke_136;
      v33[3] = &unk_1E83BE1A8;
      v33[4] = selfCopy2;
      v34 = v10;
      [defaultBackend evictItemWithID:dCopy evictionReason:reason request:v25 completionHandler:v33];
    }

    else
    {
      v35 = fpfs_adopt_log();
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v31 = FPProviderNotFoundError();
        *buf = 134218754;
        v43 = v29;
        v44 = 2112;
        v45 = selfCopy2;
        v46 = 2080;
        v47 = "[FPDXPCServicer evictItemWithID:evictionReason:completionHandler:]";
        v48 = 2112;
        v49 = v31;
        _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      providerID3 = [dCopy providerID];
      v28 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v28);

      __fp_pop_log();
    }
  }
}

void __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer evictItemWithID:evictionReason:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke_136(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer evictItemWithID:evictionReason:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)pinItemWithID:(id)d completionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke;
  v42 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v44 = v9;
  selfCopy2 = self;
  v11 = v40;
  v45 = 0;
  v12 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v45];
  v13 = v45;
  if (!v12)
  {
    v41(v11, v13);
LABEL_7:
    v19 = 0;
    goto LABEL_9;
  }

  if ([v12 invalidated])
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v12;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696AEC0];
    identifier = [v12 identifier];
    v17 = [v15 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v18 = FPProviderNotRegistered();
    v41(v11, v18);

    goto LABEL_7;
  }

  v19 = v12;
LABEL_9:

  if (v19)
  {
    v45 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v22 = [extensionManager domainFromItemID:dCopy reason:&v45];

    if (v22)
    {
      defaultBackend = [v22 defaultBackend];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        defaultBackend2 = [v22 defaultBackend];
        v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke_139;
        v37[3] = &unk_1E83C0188;
        v37[4] = selfCopy2;
        v38 = v9;
        [defaultBackend2 pinItemWithID:dCopy request:v26 completionHandler:v37];
      }

      else
      {
        v39 = fpfs_adopt_log();
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v35 = FPPopLogSectionForBlock();
          v36 = FPNotSupportedError();
          *buf = 134219010;
          v47 = v35;
          v48 = 2112;
          v49 = selfCopy2;
          v50 = 2080;
          v51 = "[FPDXPCServicer pinItemWithID:completionHandler:]";
          v52 = 2112;
          v53 = 0;
          v54 = 2112;
          v55 = v36;
          _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v31 = FPNotSupportedError();
        (*(v9 + 2))(v9, 0, v31);

        __fp_pop_log();
      }
    }

    else
    {
      v39 = fpfs_adopt_log();
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v34 = FPProviderNotFoundError();
        *buf = 134219010;
        v47 = v32;
        v48 = 2112;
        v49 = selfCopy2;
        v50 = 2080;
        v51 = "[FPDXPCServicer pinItemWithID:completionHandler:]";
        v52 = 2112;
        v53 = 0;
        v54 = 2112;
        v55 = v34;
        _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      providerID3 = [dCopy providerID];
      v29 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, 0, v29);

      __fp_pop_log();
    }
  }
}

void __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer pinItemWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer pinItemWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)unpinItemWithID:(id)d completionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke;
  v42 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v44 = v9;
  selfCopy2 = self;
  v11 = v40;
  v45 = 0;
  v12 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v45];
  v13 = v45;
  if (!v12)
  {
    v41(v11, v13);
LABEL_7:
    v19 = 0;
    goto LABEL_9;
  }

  if ([v12 invalidated])
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v12;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696AEC0];
    identifier = [v12 identifier];
    v17 = [v15 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v18 = FPProviderNotRegistered();
    v41(v11, v18);

    goto LABEL_7;
  }

  v19 = v12;
LABEL_9:

  if (v19)
  {
    v45 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v22 = [extensionManager domainFromItemID:dCopy reason:&v45];

    if (v22)
    {
      defaultBackend = [v22 defaultBackend];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        defaultBackend2 = [v22 defaultBackend];
        v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke_143;
        v37[3] = &unk_1E83C0188;
        v37[4] = selfCopy2;
        v38 = v9;
        [defaultBackend2 unpinItemWithID:dCopy request:v26 completionHandler:v37];
      }

      else
      {
        v39 = fpfs_adopt_log();
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v35 = FPPopLogSectionForBlock();
          v36 = FPNotSupportedError();
          *buf = 134219010;
          v47 = v35;
          v48 = 2112;
          v49 = selfCopy2;
          v50 = 2080;
          v51 = "[FPDXPCServicer unpinItemWithID:completionHandler:]";
          v52 = 2112;
          v53 = 0;
          v54 = 2112;
          v55 = v36;
          _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v31 = FPNotSupportedError();
        (*(v9 + 2))(v9, 0, v31);

        __fp_pop_log();
      }
    }

    else
    {
      v39 = fpfs_adopt_log();
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v34 = FPProviderNotFoundError();
        *buf = 134219010;
        v47 = v32;
        v48 = 2112;
        v49 = selfCopy2;
        v50 = 2080;
        v51 = "[FPDXPCServicer unpinItemWithID:completionHandler:]";
        v52 = 2112;
        v53 = 0;
        v54 = 2112;
        v55 = v34;
        _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      providerID3 = [dCopy providerID];
      v29 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, 0, v29);

      __fp_pop_log();
    }
  }
}

void __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer unpinItemWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer unpinItemWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)detachKnownFolders:(id)folders completionHandler:(id)handler
{
  v34[2] = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D0];
  v34[0] = *MEMORY[0x1E6967558];
  v34[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __55__FPDXPCServicer_detachKnownFolders_completionHandler___block_invoke;
  v23 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v25 = v10;
  v11 = v9;
  v12 = v21;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v20 = fpfs_adopt_log();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = FPNotSupportedError();
      *buf = 134218754;
      v27 = v18;
      v28 = 2112;
      selfCopy2 = self;
      v30 = 2080;
      v31 = "[FPDXPCServicer detachKnownFolders:completionHandler:]";
      v32 = 2112;
      v33 = v19;
      _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v16 = FPNotSupportedError();
    (*(v10 + 2))(v10, v16);

    __fp_pop_log();
  }

  else
  {
    v17 = FPNotPermittedError();
    v22(v12, v17);
  }
}

void __55__FPDXPCServicer_detachKnownFolders_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer detachKnownFolders:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)attachKnownFolders:(id)folders options:(unint64_t)options completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  handlerCopy = handler;
  v9 = *MEMORY[0x1E69675D0];
  v35[0] = *MEMORY[0x1E6967558];
  v35[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = __63__FPDXPCServicer_attachKnownFolders_options_completionHandler___block_invoke;
  v24 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v26 = v11;
  v12 = v10;
  v13 = v22;
  connection = [(FPDXPCServicer *)self connection];
  v15 = [connection fp_hasOneOfEntitlements:v12];

  if (v15)
  {

    v21 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = FPPopLogSectionForBlock();
      v20 = FPNotSupportedError();
      *buf = 134218754;
      v28 = v19;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2080;
      v32 = "[FPDXPCServicer attachKnownFolders:options:completionHandler:]";
      v33 = 2112;
      v34 = v20;
      _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v17 = FPNotSupportedError();
    (*(v11 + 2))(v11, v17);

    __fp_pop_log();
  }

  else
  {
    v18 = FPNotPermittedError();
    v23(v13, v18);
  }
}

void __63__FPDXPCServicer_attachKnownFolders_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer attachKnownFolders:options:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_selectNewProviderDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v8);
}

- (void)selectNewProviderDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt completionHandler:(id)handler
{
  promptCopy = prompt;
  v30[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v12 = *MEMORY[0x1E69675D0];
  v30[0] = *MEMORY[0x1E6967558];
  v30[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __91__FPDXPCServicer_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v29 = v14;
  v15 = v13;
  v16 = v25;
  connection = [(FPDXPCServicer *)self connection];
  v18 = [connection fp_hasOneOfEntitlements:v15];

  if (v18)
  {

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__FPDXPCServicer_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke_144;
    v21[3] = &unk_1E83BFA20;
    v22 = domainCopy;
    selfCopy2 = self;
    v24 = v14;
    [(FPDXPCServicer *)self _selectNewProviderDomain:v22 knownFolders:folders skipReleasePrompt:promptCopy completionHandler:v21];

    v19 = v22;
  }

  else
  {
    v20 = FPNotPermittedError();
    v26(v16, v20);

    v19 = v29;
  }
}

void __91__FPDXPCServicer_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer selectNewProviderDomain:knownFolders:skipReleasePrompt:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __91__FPDXPCServicer_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke_144(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) fp_toProviderID];
  v5 = v4;
  v6 = @"no provider";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [MEMORY[0x1E699C730] defaultManager];
  v9 = [v8 sessionForProviderID:v7 version:0];

  [v9 postReportWithCategory:1 type:1 payload:&unk_1F4C62AF8 error:v3];
  v13 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 40);
    *buf = 134218754;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer selectNewProviderDomain:knownFolders:skipReleasePrompt:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

- (void)providerDomainsCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __51__FPDXPCServicer_providerDomainsCompletionHandler___block_invoke;
  v22 = &unk_1E83BE1A8;
  selfCopy = self;
  v5 = handlerCopy;
  v24 = v5;
  v6 = v20;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v9 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v9;
  *&buf[16] = *MEMORY[0x1E6967560];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v11 = [connection fp_hasOneOfEntitlements:v10];
  if (v11)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    providerDomainsByID = [extensionManager providerDomainsByID];

    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer providerDomainsCompletionHandler:];
    }

    v19 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v26 = "[FPDXPCServicer providerDomainsCompletionHandler:]";
      v27 = 2112;
      v28 = providerDomainsByID;
      v29 = 2112;
      v30 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domains: %@, error: %@", buf, 0x34u);
    }

    (*(v5 + 2))(v5, providerDomainsByID, 0);
    __fp_pop_log();
  }

  else
  {
    v17 = FPNotPermittedError();
    v21(v6, v17);
  }
}

void __51__FPDXPCServicer_providerDomainsCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer providerDomainsCompletionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domains: %@, error: %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)providerDomainForIdentifier:(id)identifier completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __64__FPDXPCServicer_providerDomainForIdentifier_completionHandler___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v27 = v8;
  v9 = v23;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v12;
  *&buf[16] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];

    [extensionManager updateProvidersIfNecessary];
    providerDomainsByID = [extensionManager providerDomainsByID];
    v18 = [providerDomainsByID objectForKeyedSubscript:identifierCopy];
    v22 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v29 = "[FPDXPCServicer providerDomainForIdentifier:completionHandler:]";
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domain: %@, error: %@", buf, 0x34u);
    }

    (*(v8 + 2))(v8, v18, 0);
    __fp_pop_log();
  }

  else
  {
    v20 = FPNotPermittedError();
    v24(v9, v20);
  }
}

void __64__FPDXPCServicer_providerDomainForIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer providerDomainForIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domain: %@, error: %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)providerDomainForURL:(id)l completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __57__FPDXPCServicer_providerDomainForURL_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v35 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v31;
  if (!v10)
  {
    v24 = FPInvalidParameterError();
LABEL_17:
    v27 = v24;
    v32(v11, v24);

    goto LABEL_18;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v24 = FPNotPermittedError();
      goto LABEL_17;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];

  [extensionManager updateProvidersIfNecessary];
  v19 = [extensionManager domainForURL:v10 reason:0];
  provider = [v19 provider];
  v21 = provider;
  if (v19 && provider)
  {
    v22 = [provider providerDomainForDomain:v19];
    [v22 setShouldHideDomainDisplayName:{objc_msgSend(v21, "shouldHideDomainDisplayName")}];
    v29 = fpfs_adopt_log();
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v28;
      v37 = 2112;
      v38 = selfCopy2;
      v39 = 2080;
      v40 = "[FPDXPCServicer providerDomainForURL:completionHandler:]";
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v8 + 2))(v8, v22, 0);
    __fp_pop_log();
  }

  else
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer providerDomainForURL:v10 completionHandler:?];
    }

    v30 = fpfs_adopt_log();
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer providerDomainForURL:completionHandler:];
    }

    (*(v8 + 2))(v8, 0, 0);
    __fp_pop_log();
  }

LABEL_18:
}

void __57__FPDXPCServicer_providerDomainForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer providerDomainForURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (id)tryTransformItemIDAfterMigration:(id)migration
{
  migrationCopy = migration;
  providerID = [migrationCopy providerID];
  if ([providerID isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProvider"])
  {
  }

  else
  {
    providerID2 = [migrationCopy providerID];
    v7 = [providerID2 isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  providerID3 = [migrationCopy providerID];
  v9 = [providerID3 isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];

  if (v9)
  {
    v10 = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  }

  else
  {
    providerID4 = [migrationCopy providerID];
    v12 = [providerID4 isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];

    if (v12)
    {
      v10 = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
    }

    else
    {
      v10 = 0;
    }
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v15 = [extensionManager domainsForAppBundleIdentifier:v10];
  v16 = [v15 fp_filter:&__block_literal_global_170_0];
  firstObject = [v16 firstObject];

  if (firstObject)
  {
    providerDomainID = [firstObject providerDomainID];
    v19 = [migrationCopy transformForMigratedCloudDocsProviderDomainIdentifier:providerDomainID];

    goto LABEL_12;
  }

LABEL_11:
  v19 = migrationCopy;
LABEL_12:

  return v19;
}

uint64_t __51__FPDXPCServicer_tryTransformItemIDAfterMigration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqual:*MEMORY[0x1E6967178]];

  return v3 ^ 1u;
}

- (void)documentURLFromBookmarkableString:(id)string creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l completionHandler:(id)handler
{
  lCopy = l;
  missingCopy = missing;
  v63[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  handlerCopy = handler;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:];
  }

  connection = [(FPDXPCServicer *)self connection];
  fp_bundleIdentifier = [connection fp_bundleIdentifier];

  connection2 = [(FPDXPCServicer *)self connection];
  v63[0] = *MEMORY[0x1E6967580];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
  v17 = [connection2 fp_hasOneOfEntitlements:v16 logLevel:0];

  if ((fp_bundleIdentifier != 0) | v17 & 1)
  {
    v18 = +[FPDAccessControlStore sharedStore];
    v19 = v18;
    if (v17)
    {
      v20 = [v18 parseUnverifiedBookmark:stringCopy];
    }

    else
    {
      connection3 = [(FPDXPCServicer *)self connection];
      v24 = connection3;
      if (connection3)
      {
        objc_msgSend_auditToken(connection3);
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v20 = [v19 verifyBookmark:stringCopy auditToken:buf consumerIdentifier:fp_bundleIdentifier];
    }

    if (v20)
    {
      if (FPFeatureFlagResolverIsEnabled())
      {
        providerID = [v20 providerID];
        v26 = [providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"];

        if (v26)
        {
          v27 = objc_opt_new();
          identifier = [v20 identifier];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __126__FPDXPCServicer_documentURLFromBookmarkableString_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke;
          v51[3] = &unk_1E83C01D0;
          v52 = v20;
          selfCopy = self;
          v54 = handlerCopy;
          v29 = v20;
          [v27 URLForItemID:identifier reply:v51];

          goto LABEL_26;
        }
      }

      v55 = 0;
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v32 = [extensionManager domainFromItemID:v20 reason:&v55];

      if (v32)
      {
        [v32 defaultBackend];
      }

      else
      {
        v47 = [(FPDXPCServicer *)self tryTransformItemIDAfterMigration:v20];

        server2 = [(FPDXPCServicer *)self server];
        extensionManager2 = [server2 extensionManager];
        v32 = [extensionManager2 domainFromItemID:v47 reason:&v55];

        if (!v32)
        {
          v48 = fpfs_adopt_log();
          v37 = fp_current_or_default_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v44 = FPPopLogSectionForBlock();
            providerID2 = [v47 providerID];
            v46 = FPProviderNotFoundError();
            *buf = 134219266;
            *&buf[4] = v44;
            *&buf[12] = 2112;
            *&buf[14] = self;
            *&buf[22] = 2080;
            *&buf[24] = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
            v57 = 2112;
            v58 = 0;
            v59 = 2112;
            v60 = 0;
            v61 = 2112;
            v62 = v46;
            _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
          }

          providerID3 = [v47 providerID];
          v39 = FPProviderNotFoundError();
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v39);

          __fp_pop_log();
          goto LABEL_25;
        }

        [v32 defaultBackend];
      }
      v35 = ;
      v36 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __126__FPDXPCServicer_documentURLFromBookmarkableString_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_176;
      v49[3] = &unk_1E83BE220;
      v49[4] = self;
      v50 = handlerCopy;
      [v35 URLForItemID:v47 creatingPlaceholderIfMissing:missingCopy ignoreAlternateContentsURL:lCopy forBookmarkResolution:1 request:v36 completionHandler:v49];

LABEL_25:
      goto LABEL_26;
    }

    v55 = fpfs_adopt_log();
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v42 = FPPopLogSectionForBlock();
      v43 = FPNotPermittedError();
      *buf = 134219266;
      *&buf[4] = v42;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2080;
      *&buf[24] = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v57 = 2112;
      v58 = 0;
      v59 = 2112;
      v60 = 0;
      v61 = 2112;
      v62 = v43;
      _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  else
  {
    v55 = fpfs_adopt_log();
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v40 = FPPopLogSectionForBlock();
      v41 = FPNotPermittedError();
      *buf = 134219266;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2080;
      *&buf[24] = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v57 = 2112;
      v58 = 0;
      v59 = 2112;
      v60 = 0;
      v61 = 2112;
      v62 = v41;
      _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  v22 = FPNotPermittedError();
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v22);

  __fp_pop_log();
LABEL_26:
}

void __126__FPDXPCServicer_documentURLFromBookmarkableString_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_resolver_log(v6);
  v14 = fpfs_adopt_log();

  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] [%@] Did resolve URL:%@ error:%@.", buf, 0x20u);
  }

  v13 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = a1[5];
    *buf = 134219266;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2080;
    v20 = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = 0;
    v25 = 2112;
    v26 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(a1[6] + 16))();
  __fp_pop_log();

  __fp_pop_log();
}

void __126__FPDXPCServicer_documentURLFromBookmarkableString_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_176(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v15 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock();
      v12 = *(a1 + 32);
      *buf = 134219266;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2080;
      v21 = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = 0;
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  else
  {
    v15 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = FPPopLogSectionForBlock();
      v14 = *(a1 + 32);
      *buf = 134219266;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2080;
      v21 = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)documentURLFromItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l completionHandler:(id)handler
{
  missingCopy = missing;
  lCopy = l;
  v85[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:];
  }

  connection = [(FPDXPCServicer *)self connection];
  v85[0] = *MEMORY[0x1E6967580];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
  v13 = [connection fp_hasOneOfEntitlements:v12 logLevel:0];

  if (v13)
  {
    goto LABEL_19;
  }

  connection2 = [(FPDXPCServicer *)self connection];
  fp_bundleIdentifier = [connection2 fp_bundleIdentifier];
  providerID = [dCopy providerID];
  v17 = [fp_bundleIdentifier isEqual:providerID];

  if (v17)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer documentURLFromItemID:? creatingPlaceholderIfMissing:? ignoreAlternateContentsURL:? completionHandler:?];
    }

    v72 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v49 = FPPopLogSectionForBlock();
      v50 = FPNotPermittedError();
      *buf = 134219266;
      v74 = v49;
      v75 = 2112;
      selfCopy6 = self;
      v77 = 2080;
      v78 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v79 = 2112;
      v80 = 0;
      v81 = 2112;
      v82 = 0;
      v83 = 2112;
      v84 = v50;
      _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v20 = FPNotPermittedError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);

    __fp_pop_log();
    goto LABEL_33;
  }

  providerID2 = [dCopy providerID];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v67 = __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke;
  v68 = &unk_1E83BFA20;
  selfCopy2 = self;
  v59 = dCopy;
  v70 = v59;
  v71 = handlerCopy;
  selfCopy3 = self;
  v22 = v66;
  v72 = 0;
  v23 = [(FPDXPCServicer *)selfCopy3 providerForIdentifier:providerID2 enumerateEntitlementRequired:1 error:&v72];
  v24 = v72;
  if (!v23)
  {
    v67(v22, v24);
LABEL_16:
    v30 = 0;
    goto LABEL_18;
  }

  if ([v23 invalidated])
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v23;
      _os_log_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v26 = MEMORY[0x1E696AEC0];
    identifier = [v23 identifier];
    v28 = [v26 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v29 = FPProviderNotRegistered();
    v67(v22, v29);

    goto LABEL_16;
  }

  v30 = v23;
LABEL_18:

  if (!v30)
  {
    dCopy = v59;
    goto LABEL_33;
  }

LABEL_19:
  if (dCopy)
  {
    identifier2 = [dCopy identifier];
    v32 = [identifier2 length] == 0;

    if (!v32)
    {
      v72 = 0;
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v35 = [extensionManager domainFromItemID:dCopy checkInvalidation:1 reason:&v72];

      if (v35)
      {
        v36 = dCopy;
      }

      else
      {
        v36 = [(FPDXPCServicer *)self tryTransformItemIDAfterMigration:dCopy];

        server2 = [(FPDXPCServicer *)self server];
        extensionManager2 = [server2 extensionManager];
        v35 = [extensionManager2 domainFromItemID:v36 checkInvalidation:1 reason:&v72];

        if (!v35)
        {
          v63 = fpfs_adopt_log();
          v46 = fp_current_or_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v56 = FPPopLogSectionForBlock();
            providerDomainID = [v36 providerDomainID];
            v58 = FPProviderNotFoundError();
            *buf = 134219266;
            v74 = v56;
            v75 = 2112;
            selfCopy6 = self;
            v77 = 2080;
            v78 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
            v79 = 2112;
            v80 = 0;
            v81 = 2112;
            v82 = 0;
            v83 = 2112;
            v84 = v58;
            _os_log_debug_impl(&dword_1CEFC7000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
          }

          providerDomainID2 = [v36 providerDomainID];
          v48 = FPProviderNotFoundError();
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v48);

          __fp_pop_log();
          goto LABEL_31;
        }
      }

      defaultBackend = [v35 defaultBackend];
      v45 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_184;
      v64[3] = &unk_1E83BE220;
      v64[4] = self;
      v65 = handlerCopy;
      [defaultBackend URLForItemID:v36 creatingPlaceholderIfMissing:missingCopy ignoreAlternateContentsURL:lCopy forBookmarkResolution:0 request:v45 completionHandler:v64];

LABEL_31:
      dCopy = v36;
      goto LABEL_33;
    }

    v72 = fpfs_adopt_log();
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v53 = FPPopLogSectionForBlock();
      identifier3 = [dCopy identifier];
      v55 = FPItemNotFoundError();
      *buf = 134219266;
      v74 = v53;
      v75 = 2112;
      selfCopy6 = self;
      v77 = 2080;
      v78 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v79 = 2112;
      v80 = 0;
      v81 = 2112;
      v82 = 0;
      v83 = 2112;
      v84 = v55;
      _os_log_debug_impl(&dword_1CEFC7000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    identifier4 = [dCopy identifier];
    v41 = FPItemNotFoundError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v41);

    __fp_pop_log();
  }

  else
  {
    v72 = fpfs_adopt_log();
    v37 = fp_current_or_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v51 = FPPopLogSectionForBlock();
      v52 = FPInvalidParameterError();
      *buf = 134219266;
      v74 = v51;
      v75 = 2112;
      selfCopy6 = self;
      v77 = 2080;
      v78 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v79 = 2112;
      v80 = 0;
      v81 = 2112;
      v82 = 0;
      v83 = 2112;
      v84 = v52;
      _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v38 = FPInvalidParameterError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v38);

    __fp_pop_log();
    dCopy = 0;
  }

LABEL_33:
}

void __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v5 = [v4 fp_bundleIdentifier];

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_cold_1();
  }

  v13 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 32);
    v12 = FPNotPermittedError();
    *buf = 134219266;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2080;
    v19 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = 0;
    v22 = 2112;
    v23 = 0;
    v24 = 2112;
    v25 = v12;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  v8 = *(a1 + 48);
  v9 = FPNotPermittedError();
  (*(v8 + 16))(v8, 0, 0, v9);

  __fp_pop_log();
}

void __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_184(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v15 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock();
      v12 = *(a1 + 32);
      *buf = 134219266;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2080;
      v21 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = 0;
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  else
  {
    v15 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = FPPopLogSectionForBlock();
      v14 = *(a1 + 32);
      *buf = 134219266;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2080;
      v21 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainFromItemID:dCopy reason:0];

  if (v10)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _forceIngestionForItemID:completionHandler:];
    }

    v12 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__FPDXPCServicer__forceIngestionForItemID_completionHandler___block_invoke;
    v14[3] = &unk_1E83C01F8;
    v15 = handlerCopy;
    [v10 forceIngestionForItemID:dCopy request:v12 completionHandler:v14];
  }

  else
  {
    v13 = FPNotSupportedError();
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

- (void)forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  v22[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__FPDXPCServicer_forceIngestionForItemID_completionHandler___block_invoke;
  v19 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v21 = v8;
  v9 = &v16;
  selfCopy2 = self;
  v11 = [(FPDXPCServicer *)selfCopy2 connection:v16];
  v12 = *MEMORY[0x1E6967540];
  v22[0] = *MEMORY[0x1E6967538];
  v22[1] = v12;
  v22[2] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

  v14 = [v11 fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    [(FPDXPCServicer *)selfCopy2 _forceIngestionForItemID:dCopy completionHandler:v8];
  }

  else
  {
    v15 = FPNotPermittedError();
    v18(v9, v15);
  }
}

void __60__FPDXPCServicer_forceIngestionForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer forceIngestionForItemID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)forceIngestionForItemIDs:(id)ds completionHandler:(id)handler
{
  v45[3] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v40 = __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke;
  v41 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v43 = v8;
  v9 = v39;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  v45[0] = *MEMORY[0x1E6967538];
  v45[1] = v12;
  v45[2] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    if ([dsCopy count])
    {
      v25 = v8;
      v15 = dispatch_group_create();
      v16 = objc_opt_new();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v26 = dsCopy;
      obj = dsCopy;
      v17 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          v20 = 0;
          do
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v35 + 1) + 8 * v20);
            dispatch_group_enter(v15);
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_186;
            v31[3] = &unk_1E83BDF78;
            v32 = v16;
            v33 = v21;
            v34 = v15;
            [(FPDXPCServicer *)selfCopy2 _forceIngestionForItemID:v21 completionHandler:v31];

            ++v20;
          }

          while (v18 != v20);
          v18 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v18);
      }

      queue = selfCopy2->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_2;
      block[3] = &unk_1E83BF450;
      v8 = v25;
      v29 = v16;
      v30 = v25;
      v23 = v16;
      dispatch_group_notify(v15, queue, block);

      dsCopy = v26;
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v24 = FPNotPermittedError();
    v40(v9, v24);
  }
}

void __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer forceIngestionForItemIDs:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_186(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) setObject:v4 forKey:*(a1 + 40)];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v40 = v8;
  v9 = v36;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v12;
  *&buf[16] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainFromItemID:dCopy reason:0];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v21 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke_189;
        v33[3] = &unk_1E83C0188;
        v33[4] = selfCopy2;
        v34 = v8;
        [defaultBackend2 forceIngestionForItemID:dCopy request:v21 openFD:1 completionHandler:v33];
      }

      else
      {
        v35 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          v32 = FPNotSupportedError();
          *buf = 134219010;
          *&buf[4] = v31;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          v42 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]";
          v43 = 2112;
          v44 = 0;
          v45 = 2112;
          v46 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v8 + 2))(v8, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v35 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        providerID = [dCopy providerID];
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        v42 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]";
        v43 = 2112;
        v44 = 0;
        v45 = 2112;
        v46 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      providerID2 = [dCopy providerID];
      v25 = FPProviderNotFoundError();
      (*(v8 + 2))(v8, 0, v25);

      __fp_pop_log();
    }
  }

  else
  {
    v22 = FPNotPermittedError();
    v37(v9, v22);
  }
}

void __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke_189(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 itemVersion];
  v11 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision completionHandler:(id)handler
{
  collisionCopy = collision;
  v50 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  wrapperCopy = wrapper;
  handlerCopy = handler;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v40 = __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke;
  v41 = &unk_1E83BE1A8;
  selfCopy = self;
  v15 = handlerCopy;
  v43 = v15;
  v16 = v39;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v19 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v19;
  *&buf[16] = *MEMORY[0x1E6967560];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  LOBYTE(handler) = [connection fp_hasOneOfEntitlements:v20];
  if (handler)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    itemID = [templateCopy itemID];
    v24 = [extensionManager domainFromItemID:itemID reason:0];

    if (v24)
    {
      defaultBackend = [v24 defaultBackend];
      v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190;
      v34[3] = &unk_1E83BE530;
      v35 = templateCopy;
      v36 = selfCopy2;
      v37 = v15;
      [defaultBackend createItemBasedOnTemplate:v35 fields:fields urlWrapper:wrapperCopy options:options bounceOnCollision:collisionCopy request:v26 completionHandler:v34];
    }

    else
    {
      v38 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v30 = FPPopLogSectionForBlock();
        v31 = FPNotSupportedError();
        *buf = 134219010;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        v45 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]";
        v46 = 2112;
        v47 = 0;
        v48 = 2112;
        v49 = v31;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v29 = FPNotSupportedError();
      (*(v15 + 2))(v15, 0, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v27 = FPNotPermittedError();
    v40(v16, v27);
  }
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_1();
    }

    v14 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock();
      v11 = *(a1 + 40);
      *buf = 134219010;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2080;
      v20 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]_block_invoke";
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_2();
    }

    v14 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 40);
      *buf = 134219010;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2080;
      v20 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]_block_invoke";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

- (void)bookmarkableStringFromDocumentURL:(id)l options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  connection = [(FPDXPCServicer *)self connection];
  fp_bundleIdentifier = [connection fp_bundleIdentifier];
  [(FPDXPCServicer *)self extendBookmarkForFileURL:lCopy toConsumerID:fp_bundleIdentifier options:options completionHandler:handlerCopy];
}

- (void)extendBookmarkForFileURL:(id)l toConsumerID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  v58[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [FPDAccessRight alloc];
  v14 = *MEMORY[0x1E6967580];
  v15 = *MEMORY[0x1E6967540];
  v58[0] = *MEMORY[0x1E6967580];
  v58[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v19 = [(FPDAccessRight *)v13 initWithURL:lCopy entitlements:v16 connection:connection manager:extensionManager];

  LODWORD(server) = [(FPDAccessRight *)v19 level]== 0;
  v20 = fp_current_or_default_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (server)
  {
    if (v21)
    {
      processIdentifier = [connection processIdentifier];
      [connection processIdentifier];
      v37 = FPExecutableNameForProcessIdentifier();
      fp_shortDescription = [lCopy fp_shortDescription];
      *buf = 67109890;
      *v55 = processIdentifier;
      *&v55[4] = 2112;
      *&v55[6] = v37;
      *&v55[14] = 2112;
      *&v55[16] = v14;
      *&v55[24] = 2112;
      *&v55[26] = fp_shortDescription;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) has neither sandbox access nor %@ entitlement to get a bookmark for %@", buf, 0x26u);
    }

    v53 = fpfs_adopt_log();
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v39 = FPPopLogSectionForBlock();
      v40 = FPNotPermittedError();
      *buf = 134219010;
      *v55 = v39;
      *&v55[8] = 2112;
      *&v55[10] = self;
      *&v55[18] = 2080;
      *&v55[20] = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]";
      *&v55[28] = 2112;
      *&v55[30] = 0;
      v56 = 2112;
      v57 = v40;
      _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v28 = FPNotPermittedError();
    handlerCopy[2](handlerCopy, 0, v28);

    __fp_pop_log();
  }

  else
  {
    if (v21)
    {
      [FPDXPCServicer extendBookmarkForFileURL:lCopy toConsumerID:? options:? completionHandler:?];
    }

    domain = [(FPDAccessRight *)v19 domain];
    v23 = domain;
    if (domain)
    {
      provider = [domain provider];
      identifier = [provider identifier];
      v26 = [identifier isEqualToString:@"com.apple.FileProvider.LocalStorage"];
    }

    else
    {
      v26 = 1;
    }

    if ((FPFeatureFlagResolverIsEnabled() & v26) == 1 && [MEMORY[0x1E699C718] canResolveURL:lCopy])
    {
      v29 = objc_opt_new();
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke;
      v48[3] = &unk_1E83C0220;
      v49 = dCopy;
      v50 = lCopy;
      selfCopy = self;
      v52 = handlerCopy;
      [v29 itemIDForURL:v50 allowReadOnlyLocations:(optionsCopy & 2) == 0 reply:v48];
    }

    else if (v23)
    {
      defaultBackend = [v23 defaultBackend];
      v31 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194;
      v44[3] = &unk_1E83C0248;
      v44[4] = self;
      v47 = handlerCopy;
      v45 = lCopy;
      v46 = dCopy;
      [defaultBackend itemIDForURL:v45 requireProviderItemID:0 request:v31 completionHandler:v44];
    }

    else
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        fp_shortDescription2 = [lCopy fp_shortDescription];
        *buf = 138412290;
        *v55 = fp_shortDescription2;
        _os_log_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_INFO, "[INFO] Could not find the domain for %@", buf, 0xCu);
      }

      v53 = fpfs_adopt_log();
      v34 = fp_current_or_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v41 = FPPopLogSectionForBlock();
        v42 = FPProviderNotFoundErrorForURL();
        *buf = 134219010;
        *v55 = v41;
        *&v55[8] = 2112;
        *&v55[10] = self;
        *&v55[18] = 2080;
        *&v55[20] = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]";
        *&v55[28] = 2112;
        *&v55[30] = 0;
        v56 = 2112;
        v57 = v42;
        _os_log_debug_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v35 = FPProviderNotFoundErrorForURL();
      handlerCopy[2](handlerCopy, 0, v35);

      __fp_pop_log();
    }
  }
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E69673A0]);
  v8 = [v7 initWithProviderID:@"com.apple.FileProvider.LocalStorage" domainIdentifier:*MEMORY[0x1E6967178] itemIdentifier:v5];
  v9 = +[FPDAccessControlStore sharedStore];
  v10 = [v9 bookmarkForItemID:v8 consumerIdentifier:*(a1 + 32)];

  v12 = fp_resolver_log(v11);
  v20 = fpfs_adopt_log();

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [*(a1 + 40) fp_shortDescription];
    v16 = [v6 fp_prettyDescription];
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Generated bookmarkable string “%@” from %@. Error: %@", buf, 0x20u);
  }

  v19 = fpfs_adopt_log();
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = FPPopLogSectionForBlock();
    v18 = *(a1 + 48);
    *buf = 134219010;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2080;
    v26 = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log();

  __fp_pop_log();
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v22 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v17 = FPPopLogSectionForBlock();
      v18 = *(a1 + 32);
      v19 = FPPluginOperationFailedError();
      *buf = 134219010;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2080;
      v30 = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = v19;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v8 = *(a1 + 56);
    v9 = FPPluginOperationFailedError();
    (*(v8 + 16))(v8, 0, v9);

    __fp_pop_log();
  }

  else if (v5)
  {
    v10 = +[FPDAccessControlStore sharedStore];
    v11 = [v10 bookmarkForItemID:v5 consumerIdentifier:*(a1 + 48)];

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_1();
    }

    v23 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock();
      v21 = *(a1 + 32);
      *buf = 134219010;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2080;
      v30 = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) fp_shortDescription];
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Could not get Item ID for %@.", buf, 0xCu);
    }

    v24 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_2();
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }
}

- (void)fetchDomainServicerForProviderDomainID:(id)d handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v15 = 0;
  v8 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:dCopy provider:0 enumerateEntitlementRequired:1 error:&v15];
  v9 = v15;
  v14 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = FPPopLogSectionForBlock();
    providerDomainID = [v8 providerDomainID];
    *buf = 134219266;
    v17 = v12;
    v18 = 2112;
    selfCopy = self;
    v20 = 2080;
    v21 = "[FPDXPCServicer fetchDomainServicerForProviderDomainID:handler:]";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = providerDomainID;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  providerDomainID2 = [v8 providerDomainID];
  handlerCopy[2](handlerCopy, v8, providerDomainID2, v9);

  __fp_pop_log();
}

- (void)fetchAccessServicer:(id)servicer
{
  v36[1] = *MEMORY[0x1E69E9840];
  servicerCopy = servicer;
  v36[0] = *MEMORY[0x1E6967540];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __38__FPDXPCServicer_fetchAccessServicer___block_invoke;
  v23 = &unk_1E83BE1A8;
  selfCopy = self;
  v6 = servicerCopy;
  v25 = v6;
  v7 = v5;
  v8 = v21;
  connection = [(FPDXPCServicer *)self connection];
  v10 = [connection fp_hasOneOfEntitlements:v7];

  if (v10)
  {

    v20 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = FPPopLogSectionForBlock();
      v17 = [FPDAccessControlServicer alloc];
      v18 = +[FPDAccessControlStore sharedStore];
      v19 = [(FPDAccessControlServicer *)v17 initWithAccessStore:v18];
      *buf = 134219010;
      v27 = v16;
      v28 = 2112;
      selfCopy2 = self;
      v30 = 2080;
      v31 = "[FPDXPCServicer fetchAccessServicer:]";
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v12 = [FPDAccessControlServicer alloc];
    v13 = +[FPDAccessControlStore sharedStore];
    v14 = [(FPDAccessControlServicer *)v12 initWithAccessStore:v13];
    (*(v6 + 2))(v6, v14, 0);

    __fp_pop_log();
  }

  else
  {
    v15 = FPNotPermittedError();
    v22(v8, v15);
  }
}

void __38__FPDXPCServicer_fetchAccessServicer___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchAccessServicer:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)itemForURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  v36[7] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v35 = v10;
  selfCopy2 = self;
  v12 = lCopy;
  v13 = v31;
  if (!v12)
  {
    v24 = FPInvalidParameterError();
LABEL_14:
    v27 = v24;
    v32(v13, v24);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v15 = [connection fp_hasSandboxAccessToFile:v12 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v15 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v36[0] = *MEMORY[0x1E6967560];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v18 = [connection2 fp_hasOneOfEntitlements:v17 nonSandboxedAccess:0 logLevel:0];

    if ((v18 & 1) == 0)
    {
      v24 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v21 = [extensionManager domainForURL:v12 reason:0];

  if (v21)
  {
    defaultBackend = [v21 defaultBackend];
    v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke_197;
    v28[3] = &unk_1E83C0188;
    v28[4] = selfCopy2;
    v29 = v10;
    [defaultBackend itemForURL:v12 options:options request:v23 completionHandler:v28];
  }

  else
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer itemForURL:v12 options:? completionHandler:?];
    }

    v30 = fpfs_adopt_log();
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer itemForURL:options:completionHandler:];
    }

    (*(v10 + 2))(v10, 0, 0);
    __fp_pop_log();
  }

LABEL_15:
}

void __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer itemForURL:options:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke_197(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer itemForURL:options:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)providerItemIDForURL:(id)l completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainForURL:lCopy reason:0];

  if (v10)
  {
    provider = [v10 provider];
    identifier = [provider identifier];
    v24 = 0;
    v13 = [(FPDXPCServicer *)self providerForIdentifier:identifier enumerateEntitlementRequired:1 error:&v24];
    v14 = v24;

    if (v13)
    {
      defaultBackend = [v10 defaultBackend];
      v16 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __57__FPDXPCServicer_providerItemIDForURL_completionHandler___block_invoke;
      v22[3] = &unk_1E83BE6C0;
      v22[4] = self;
      v23 = handlerCopy;
      [defaultBackend itemIDForURL:lCopy requireProviderItemID:1 request:v16 completionHandler:v22];
    }

    else
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer providerItemIDForURL:v10 completionHandler:v19];
      }

      v25 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v27 = v21;
        v28 = 2112;
        selfCopy = self;
        v30 = 2080;
        v31 = "[FPDXPCServicer providerItemIDForURL:completionHandler:]";
        v32 = 2112;
        v33 = 0;
        v34 = 2112;
        v35 = v14;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v14);
      __fp_pop_log();
    }
  }

  else
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer providerItemIDForURL:lCopy completionHandler:?];
    }

    v25 = fpfs_adopt_log();
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer providerItemIDForURL:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    __fp_pop_log();
  }
}

void __57__FPDXPCServicer_providerItemIDForURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer providerItemIDForURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)fetchFSItemsForItemIdentifiers:(id)identifiers providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier materializingIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  neededCopy = needed;
  v42 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  handlerCopy = handler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v38 = v14;
  selfCopy2 = self;
  v16 = v34;
  v39 = 0;
  v17 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:identifierCopy enumerateEntitlementRequired:1 error:&v39];
  v18 = v39;
  if (!v17)
  {
    v35(v16, v18);
LABEL_7:
    v24 = 0;
    goto LABEL_9;
  }

  if ([v17 invalidated])
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v17;
      _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v20 = MEMORY[0x1E696AEC0];
    identifier = [v17 identifier];
    v22 = [v20 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v23 = FPProviderNotRegistered();
    v35(v16, v23);

    goto LABEL_7;
  }

  v24 = v17;
LABEL_9:

  if (v24)
  {
    v25 = [v24 domainForIdentifier:domainIdentifierCopy reason:0];
    if (!v25)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:];
      }

      v39 = fpfs_adopt_log();
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock();
        [FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:];
      }

      (*(v14 + 2))(v14, 0, 0);
      __fp_pop_log();
    }

    defaultBackend = [v25 defaultBackend];
    v29 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke_199;
    v32[3] = &unk_1E83BE400;
    v32[4] = selfCopy2;
    v33 = v14;
    [defaultBackend fetchFSItemsForItemIdentifiers:identifiersCopy materializingIfNeeded:neededCopy request:v29 completionHandler:v32];
  }
}

void __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)trashItemAtURL:(id)l completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke;
  v32 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v34 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v30;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v25 = v22;
    v31(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedWriteError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke_201;
    v27[3] = &unk_1E83C0270;
    v27[4] = selfCopy2;
    v28 = v8;
    [defaultBackend trashItemAtURL:v10 request:v20 completionHandler:v27];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer trashItemAtURL:v10 completionHandler:?];
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    v29 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v26;
      v36 = 2112;
      v37 = selfCopy2;
      v38 = 2080;
      v39 = "[FPDXPCServicer trashItemAtURL:completionHandler:]";
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = v20;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v8 + 2))(v8, 0, v20);
    __fp_pop_log();
  }

LABEL_15:
}

void __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer trashItemAtURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer trashItemAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)putBackURLForTrashedItemAtURL:(id)l completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke;
  v34 = &unk_1E83BFA20;
  selfCopy = self;
  v36 = lCopy;
  v8 = handlerCopy;
  v37 = v8;
  selfCopy2 = self;
  v10 = v36;
  v11 = v32;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v26 = v22;
    v33(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_203;
    v29[3] = &unk_1E83C0270;
    v29[4] = selfCopy2;
    v30 = v8;
    [defaultBackend putBackURLForTrashedItemAtURL:v10 request:v20 completionHandler:v29];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer putBackURLForTrashedItemAtURL:v10 completionHandler:?];
    }

    v31 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = FPPopLogSectionForBlock();
      v28 = FPProviderNotFoundErrorForURL();
      *buf = 134219010;
      *&buf[4] = v27;
      v39 = 2112;
      v40 = selfCopy2;
      v41 = 2080;
      v42 = "[FPDXPCServicer putBackURLForTrashedItemAtURL:completionHandler:]";
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = v28;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v25 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, 0, v25);

    __fp_pop_log();
  }

LABEL_15:
}

void __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_cold_1(a1);
  }

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134219010;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer putBackURLForTrashedItemAtURL:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

void __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_203(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer putBackURLForTrashedItemAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke;
  v34 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v36 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v32;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v26 = v22;
    v33(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedWriteError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke_204;
    v29[3] = &unk_1E83BE1A8;
    v29[4] = selfCopy2;
    v30 = v8;
    [defaultBackend setPutBackInfoOnItemAtURL:v10 completionHandler:v29];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer setPutBackInfoOnItemAtURL:v10 completionHandler:?];
    }

    v31 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = FPPopLogSectionForBlock();
      v28 = FPProviderNotFoundErrorForURL();
      *buf = 134218754;
      *&buf[4] = v27;
      v38 = 2112;
      v39 = selfCopy2;
      v40 = 2080;
      v41 = "[FPDXPCServicer setPutBackInfoOnItemAtURL:completionHandler:]";
      v42 = 2112;
      v43 = v28;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v25 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, v25);

    __fp_pop_log();
  }

LABEL_15:
}

void __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer setPutBackInfoOnItemAtURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke_204(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer setPutBackInfoOnItemAtURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)fetchProviderForShareURL:(id)l fallbackIdentifier:(id)identifier completionHandler:(id)handler
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E6967558];
  v29[0] = *MEMORY[0x1E69675C8];
  v29[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v28 = v13;
  v14 = v12;
  v15 = v24;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    v18 = MEMORY[0x1E69635C0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206;
    v21[3] = &unk_1E83C0298;
    v21[4] = self;
    v19 = &v23;
    v23 = v13;
    v22 = identifierCopy;
    [v18 getAppLinksWithURL:lCopy completionHandler:v21];
    v14 = v22;
  }

  else
  {
    v19 = &v28;
    v20 = FPNotPermittedError();
    v25(v15, v20);
  }
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v46 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v6)
  {
    v7 = *v52;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        v10 = fp_current_or_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_1(v65, v9, &v66, v10);
        }

        v11 = [*(a1 + 32) server];
        v12 = [v11 extensionManager];
        v13 = [v9 targetApplicationRecord];
        v14 = [v13 bundleIdentifier];
        v15 = [v12 defaultProviderWithTopLevelBundleIdentifier:v14];

        if (v15)
        {
          v21 = fp_current_or_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_2();
          }

          v49 = fpfs_adopt_log();
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v34 = FPPopLogSectionForBlock();
            v35 = *(a1 + 32);
            v36 = [v15 identifier];
            *buf = 134219010;
            v56 = v34;
            v57 = 2112;
            v58 = v35;
            v59 = 2080;
            v60 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
            v61 = 2112;
            v62 = v36;
            v63 = 2112;
            v64 = 0;
            _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
          }

          v23 = *(a1 + 48);
          v24 = [v15 identifier];
          (*(v23 + 16))(v23, v24, 0);

          __fp_pop_log();
          goto LABEL_34;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 40))
  {
    v16 = [*(a1 + 32) server];
    v17 = [v16 extensionManager];
    v18 = [v17 providerWithIdentifier:*(a1 + 40) reason:0];

    if (v18)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_3();
      }

      v48 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v40 = FPPopLogSectionForBlock();
        v41 = *(a1 + 32);
        v42 = [v18 identifier];
        *buf = 134219010;
        v56 = v40;
        v57 = 2112;
        v58 = v41;
        v59 = 2080;
        v60 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
        v61 = 2112;
        v62 = v42;
        v63 = 2112;
        v64 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

LABEL_28:

      v28 = *(a1 + 48);
      v29 = [v18 identifier];
      (*(v28 + 16))(v28, v29, 0);

      __fp_pop_log();
      goto LABEL_34;
    }

    v25 = [*(a1 + 32) server];
    v26 = [v25 extensionManager];
    v18 = [v26 defaultProviderWithTopLevelBundleIdentifier:*(a1 + 40)];

    if (v18)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_4();
      }

      v48 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v43 = FPPopLogSectionForBlock();
        v44 = *(a1 + 32);
        v45 = [v18 identifier];
        *buf = 134219010;
        v56 = v43;
        v57 = 2112;
        v58 = v44;
        v59 = 2080;
        v60 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
        v61 = 2112;
        v62 = v45;
        v63 = 2112;
        v64 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      goto LABEL_28;
    }
  }

  v30 = fp_current_or_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_5();
  }

  v50 = fpfs_adopt_log();
  v31 = fp_current_or_default_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v37 = FPPopLogSectionForBlock();
    v38 = *(a1 + 32);
    v39 = FPProviderNotFoundError();
    *buf = 134219010;
    v56 = v37;
    v57 = 2112;
    v58 = v38;
    v59 = 2080;
    v60 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
    v61 = 2112;
    v62 = 0;
    v63 = 2112;
    v64 = v39;
    _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v32 = *(a1 + 48);
  v33 = FPProviderNotFoundError();
  (*(v32 + 16))(v32, 0, v33);

  __fp_pop_log();
LABEL_34:
}

- (void)updateLastUsedDate:(id)date completionHandler:(id)handler
{
  v38[7] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke;
  v34 = &unk_1E83BFA20;
  selfCopy = self;
  v36 = dateCopy;
  v8 = handlerCopy;
  v37 = v8;
  selfCopy2 = self;
  v10 = v36;
  v11 = v32;
  if (!v10)
  {
    v23 = FPInvalidParameterError();
LABEL_14:
    v26 = v23;
    v33(v11, v23);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v38[0] = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v23 = FPNotPermittedWriteError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_208;
    v28[3] = &unk_1E83C02C0;
    v28[4] = selfCopy2;
    v31 = v8;
    v29 = v19;
    v30 = v20;
    v22 = v20;
    [defaultBackend itemForURL:v10 options:0 request:v22 completionHandler:v28];
  }

  else
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer updateLastUsedDate:v10 completionHandler:?];
    }

    v27 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer updateLastUsedDate:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();
  }

LABEL_15:
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_cold_1(a1);
  }

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer updateLastUsedDate:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v5 setLastUsedDate:v7];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_210;
    v13[3] = &unk_1E83C0188;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    [v8 daemonSideItemChange:v5 changedFields:8 request:v9 completionHandler:v13];
  }

  else
  {
    v15 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock();
      v12 = *(a1 + 32);
      *buf = 134218754;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2080;
      v21 = "[FPDXPCServicer updateLastUsedDate:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_210(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer updateLastUsedDate:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)valuesForAttributes:(id)attributes forItemAtURL:(id)l completionHandler:(id)handler
{
  v38[7] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  lCopy = l;
  handlerCopy = handler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke;
  v34 = &unk_1E83BFA20;
  selfCopy = self;
  v36 = lCopy;
  v11 = handlerCopy;
  v37 = v11;
  selfCopy2 = self;
  v13 = v36;
  v14 = v32;
  if (!v13)
  {
    v25 = FPInvalidParameterError();
LABEL_14:
    v28 = v25;
    v33(v14, v25);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 accessType:*MEMORY[0x1E6966DB0] logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v38[0] = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v25 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v22 = [extensionManager domainForURL:v13 reason:0];

  if (v22)
  {
    defaultBackend = [v22 defaultBackend];
    v24 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_211;
    v29[3] = &unk_1E83BE400;
    v29[4] = selfCopy2;
    v30 = v11;
    [defaultBackend valuesForAttributes:attributesCopy forURL:v13 request:v24 completionHandler:v29];
  }

  else
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer valuesForAttributes:v13 forItemAtURL:? completionHandler:?];
    }

    v31 = fpfs_adopt_log();
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer valuesForAttributes:forItemAtURL:completionHandler:];
    }

    (*(v11 + 2))(v11, 0, 0);
    __fp_pop_log();
  }

LABEL_15:
}

void __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_cold_1(a1);
  }

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134219010;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer valuesForAttributes:forItemAtURL:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

void __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219011;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer valuesForAttributes:forItemAtURL:completionHandler:]_block_invoke";
    v17 = 2117;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{sensitive}@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)fetchListOfMonitoredApps:(id)apps
{
  v33 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = __43__FPDXPCServicer_fetchListOfMonitoredApps___block_invoke;
  v24 = &unk_1E83BE1A8;
  selfCopy = self;
  v5 = appsCopy;
  v26 = v5;
  v6 = v22;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v9 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v9;
  *&buf[16] = *MEMORY[0x1E6967560];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v11 = [connection fp_hasOneOfEntitlements:v10];
  if (v11)
  {

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    appMonitor = [WeakRetained appMonitor];

    [appMonitor startMonitoring];
    v21 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      appRegistry = [appMonitor appRegistry];
      listOfMonitoredApps = [appRegistry listOfMonitoredApps];
      *buf = 134219010;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v28 = "[FPDXPCServicer fetchListOfMonitoredApps:]";
      v29 = 2112;
      v30 = listOfMonitoredApps;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    appRegistry2 = [appMonitor appRegistry];
    listOfMonitoredApps2 = [appRegistry2 listOfMonitoredApps];
    (*(v5 + 2))(v5, listOfMonitoredApps2, 0);

    __fp_pop_log();
  }

  else
  {
    v17 = FPNotPermittedError();
    v23(v6, v17);
  }
}

void __43__FPDXPCServicer_fetchListOfMonitoredApps___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchListOfMonitoredApps:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)startOperation:(id)operation toFetchIconsForAppBundleIDs:(id)ds requestedSize:(CGSize)size scale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v63 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dsCopy = ds;
  handlerCopy = handler;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v55 = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke;
  v56 = &unk_1E83BE1A8;
  selfCopy = self;
  v17 = handlerCopy;
  v58 = v17;
  v18 = v54;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v21 = *MEMORY[0x1E6967540];
  *location = *MEMORY[0x1E6967538];
  *&location[8] = v21;
  *&location[16] = *MEMORY[0x1E6967560];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:location count:3];

  v23 = [connection fp_hasOneOfEntitlements:v22];
  if (v23)
  {

    scale = [[FPDFetchAppLibraryIconOperation alloc] initWithAppBundleIDs:dsCopy desiredSize:width screenScale:height, scale];
    if (scale)
    {
      v25 = dispatch_group_create();
      callbackQueue = [(FPOperation *)scale callbackQueue];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_216;
      v47[3] = &unk_1E83C02E8;
      v27 = callbackQueue;
      v52 = a2;
      v48 = v27;
      v49 = selfCopy2;
      v28 = v25;
      v50 = v28;
      v29 = operationCopy;
      v51 = v29;
      [(FPDFetchAppLibraryIconOperation *)scale setPerAppBundleCompletion:v47];
      objc_initWeak(location, selfCopy2);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_3;
      v41[3] = &unk_1E83C0310;
      v30 = v27;
      v42 = v30;
      objc_copyWeak(&v46, location);
      v31 = v28;
      v43 = v31;
      v44 = selfCopy2;
      v45 = v17;
      [(FPOperation *)scale setFinishedBlock:v41];
      progress = [(FPDFetchAppLibraryIconOperation *)scale progress];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231;
      v39[3] = &unk_1E83BDFC8;
      v33 = progress;
      v40 = v33;
      v34 = [v29 remoteObjectProxyWithErrorHandler:v39];
      [v34 setCancellationHandler:v33];
      v35 = +[FPDFetchAppLibraryIconOperation sharedOperationQueue];
      [v35 addOperation:scale];

      objc_destroyWeak(&v46);
      objc_destroyWeak(location);
    }

    else
    {
      v31 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{@"can't fetch icons for %@", dsCopy}];
      v53 = fpfs_adopt_log();
      v37 = fp_current_or_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = FPPopLogSectionForBlock();
        *location = 134218754;
        *&location[4] = v38;
        *&location[12] = 2112;
        *&location[14] = selfCopy2;
        *&location[22] = 2080;
        v60 = "[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]";
        v61 = 2112;
        v62 = v31;
        _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", location, 0x2Au);
      }

      (*(v17 + 2))(v17, v31);
      __fp_pop_log();
    }
  }

  else
  {
    v36 = FPNotPermittedError();
    v55(v18, v36);
  }
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_216(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: per app bundle block call without appBundleID"];
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDXPCServicer.m", 1900, [v15 UTF8String]);
  }

  dispatch_group_enter(*(a1 + 48));
  v13 = [MEMORY[0x1E695DF90] dictionary];
  [v13 setObject:v9 forKeyedSubscript:@"appBundleID"];
  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:@"thumbnailData"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:@"contentType"];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_2;
  v17[3] = &unk_1E83BE068;
  v14 = *(a1 + 56);
  v18 = *(a1 + 48);
  [v14 operationDidProgressWithInfo:v13 error:v12 completionHandler:v17];
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_4;
    block[3] = &unk_1E83BE1F8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    block[4] = *(a1 + 48);
    v12 = v9;
    v11 = v4;
    dispatch_group_notify(v8, v7, block);
  }
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_4(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = FPPopLogSectionForBlock();
    v4 = a1[4];
    v5 = a1[5];
    *buf = 134218754;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2080;
    v12 = "[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]_block_invoke_4";
    v13 = 2112;
    v14 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(a1[6] + 16))();
  __fp_pop_log();
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231_cold_1(v3);
  }

  [*(a1 + 32) cancel];
}

- (void)materializeURL:(id)l completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __51__FPDXPCServicer_materializeURL_completionHandler___block_invoke;
  v22 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v24 = v8;
  selfCopy2 = self;
  v10 = &v19;
  if (!lCopy)
  {
    v17 = FPInvalidParameterError();
LABEL_7:
    v18 = v17;
    v21(v10, v17);

    goto LABEL_8;
  }

  v11 = *MEMORY[0x1E6966DA8];
  v12 = [(FPDXPCServicer *)selfCopy2 connection:v19];
  LOBYTE(v11) = [v12 fp_hasSandboxAccessToFile:lCopy accessType:v11 logLevel:0];

  if ((v11 & 1) == 0)
  {
    connection = [(FPDXPCServicer *)selfCopy2 connection];
    v25[0] = *MEMORY[0x1E6967560];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v15 = [connection fp_hasOneOfEntitlements:v14 nonSandboxedAccess:0 logLevel:0];

    if ((v15 & 1) == 0)
    {
      v17 = FPNotPermittedError();
      goto LABEL_7;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  [server materializeURL:lCopy completion:v8];

LABEL_8:
}

void __51__FPDXPCServicer_materializeURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer materializeURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)getURLForContainerWithItemID:(id)d inDataScopeDomainWithIdentifier:(id)identifier documentsScopeDomainIdentifier:(id)domainIdentifier documentsFolderItemIdentifier:(id)itemIdentifier completionHandler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  itemIdentifierCopy = itemIdentifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  extensionManager = [WeakRetained extensionManager];
  clouddocsExtensionIdentifier = [extensionManager clouddocsExtensionIdentifier];

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v63 = __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke;
  v64 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v66 = v16;
  selfCopy2 = self;
  v18 = v62;
  v67 = 0;
  v19 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:clouddocsExtensionIdentifier enumerateEntitlementRequired:1 error:&v67];
  v20 = v67;
  if (!v19)
  {
    v63(v18, v20);
LABEL_7:
    v26 = 0;
    goto LABEL_9;
  }

  if ([v19 invalidated])
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v19;
      _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v22 = MEMORY[0x1E696AEC0];
    identifier = [v19 identifier];
    v24 = [v22 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v25 = FPProviderNotRegistered();
    v63(v18, v25);

    goto LABEL_7;
  }

  v26 = v19;
LABEL_9:

  if (v26)
  {
    v27 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderID:clouddocsExtensionIdentifier domainIdentifier:identifierCopy itemIdentifier:dCopy];
    v67 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager2 = [server extensionManager];
    v52 = [extensionManager2 domainFromItemID:v27 reason:&v67];

    if (v52)
    {
      v30 = objc_alloc(MEMORY[0x1E69673A0]);
      v31 = objc_loadWeakRetained(&self->_server);
      extensionManager3 = [v31 extensionManager];
      clouddocsExtensionIdentifier2 = [extensionManager3 clouddocsExtensionIdentifier];
      v34 = [v30 initWithProviderID:clouddocsExtensionIdentifier2 domainIdentifier:domainIdentifierCopy itemIdentifier:itemIdentifierCopy];

      server2 = [(FPDXPCServicer *)selfCopy2 server];
      extensionManager4 = [server2 extensionManager];
      v37 = [extensionManager4 domainFromItemID:v34 reason:&v67];

      if (v37)
      {
        defaultBackend = [v37 defaultBackend];
        v39 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_232;
        v57[3] = &unk_1E83C0360;
        v57[4] = selfCopy2;
        v60 = v16;
        v58 = v52;
        v59 = v27;
        [defaultBackend URLForItemID:v34 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v39 completionHandler:v57];
      }

      else
      {
        v61 = fpfs_adopt_log();
        v43 = fp_current_or_default_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v51 = FPPopLogSectionForBlock();
          providerDomainID = [v34 providerDomainID];
          v50 = FPProviderNotFoundError();
          *buf = 134219266;
          v69 = v51;
          v70 = 2112;
          v71 = selfCopy2;
          v72 = 2080;
          v73 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]";
          v74 = 2112;
          v75 = 0;
          v76 = 2112;
          v77 = 0;
          v78 = 2112;
          v79 = v50;
          _os_log_debug_impl(&dword_1CEFC7000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
        }

        providerDomainID2 = [v34 providerDomainID];
        v45 = FPProviderNotFoundError();
        (*(v16 + 2))(v16, 0, 0, v45);

        __fp_pop_log();
      }
    }

    else
    {
      v61 = fpfs_adopt_log();
      v40 = fp_current_or_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v46 = FPPopLogSectionForBlock();
        providerDomainID3 = [v27 providerDomainID];
        v48 = FPProviderNotFoundError();
        *buf = 134219266;
        v69 = v46;
        v70 = 2112;
        v71 = selfCopy2;
        v72 = 2080;
        v73 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]";
        v74 = 2112;
        v75 = 0;
        v76 = 2112;
        v77 = 0;
        v78 = 2112;
        v79 = v48;
        _os_log_debug_impl(&dword_1CEFC7000, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
      }

      providerDomainID4 = [v27 providerDomainID];
      v42 = FPProviderNotFoundError();
      (*(v16 + 2))(v16, 0, 0, v42);

      __fp_pop_log();
    }
  }
}

void __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219266;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_232(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v19 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 32);
      *buf = 134219266;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2080;
      v25 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = 0;
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v11 = [*(a1 + 40) defaultBackend];
    v12 = *(a1 + 48);
    v13 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_233;
    v16[3] = &unk_1E83C0338;
    v16[4] = *(a1 + 32);
    v18 = *(a1 + 56);
    v17 = v8;
    [v11 URLForItemID:v12 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v13 completionHandler:v16];
  }
}

void __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_233(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v16 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock();
      v12 = a1[4];
      *buf = 134219266;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2080;
      v22 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  else
  {
    v16 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = FPPopLogSectionForBlock();
      v14 = a1[4];
      v15 = a1[5];
      *buf = 134219266;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2080;
      v22 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  (*(a1[6] + 16))();
  __fp_pop_log();
}

- (void)updateBlockedProcessNamesForProvider:(id)provider processNames:(id)names completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  namesCopy = names;
  handlerCopy = handler;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __86__FPDXPCServicer_updateBlockedProcessNamesForProvider_processNames_completionHandler___block_invoke;
  v28 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v30 = v11;
  selfCopy2 = self;
  v13 = &v25;
  v31 = 0;
  v14 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerCopy enumerateEntitlementRequired:1 error:&v31];
  v15 = v31;
  if (!v14)
  {
    v27(v13, v15);
LABEL_7:
    v21 = 0;
    goto LABEL_9;
  }

  if ([v14 invalidated])
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696AEC0];
    identifier = [v14 identifier];
    v19 = [v17 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier, v25, v26];

    v20 = FPProviderNotRegistered();
    v27(v13, v20);

    goto LABEL_7;
  }

  v21 = v14;
LABEL_9:

  if (v21)
  {
    v22 = v21;
    objc_sync_enter(v22);
    if (namesCopy)
    {
      v23 = [MEMORY[0x1E695DFD8] setWithArray:namesCopy];
      [v22 setBlockedProcessNames:v23];
    }

    else
    {
      [v22 setBlockedProcessNames:0];
    }

    objc_sync_exit(v22);

    v31 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer updateBlockedProcessNamesForProvider:processNames:completionHandler:];
    }

    (*(v11 + 2))(v11, 0);
    __fp_pop_log();
  }
}

void __86__FPDXPCServicer_updateBlockedProcessNamesForProvider_processNames_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer updateBlockedProcessNamesForProvider:processNames:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)fetchPathComponentsForURL:(id)l completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v37 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v33;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v26 = v22;
    v34(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DB0] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke_235;
    v29[3] = &unk_1E83C0298;
    v29[4] = selfCopy2;
    v31 = v8;
    v30 = v19;
    [defaultBackend hierarchyForURL:v10 request:v20 completionHandler:v29];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer fetchPathComponentsForURL:v10 completionHandler:?];
    }

    v32 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = FPPopLogSectionForBlock();
      v28 = FPProviderNotFoundErrorForURL();
      *buf = 134219010;
      *&buf[4] = v27;
      v39 = 2112;
      v40 = selfCopy2;
      v41 = 2080;
      v42 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]";
      v43 = 2112;
      v44 = MEMORY[0x1E695E0F0];
      v45 = 2112;
      v46 = v28;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v25 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], v25);

    __fp_pop_log();
  }

LABEL_15:
}

void __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = MEMORY[0x1E695E0F0];
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke_235(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v21 = fpfs_adopt_log();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = FPPopLogSectionForBlock();
      v17 = *(a1 + 32);
      *buf = 134219010;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2080;
      v27 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = MEMORY[0x1E695E0F0];
      v30 = 2112;
      v31 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  else
  {
    v8 = [*(a1 + 32) server];
    v9 = [v8 extensionManager];
    v10 = [v9 providerDomainsByID];
    v11 = [*(a1 + 40) providerDomainID];
    v12 = [v10 objectForKeyedSubscript:v11];

    v13 = FPPathComponentsForFPItems();
    v20 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 32);
      *buf = 134219010;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2080;
      v27 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }
}

- (void)triggerDiagnosticsFor:(id)for triggeringError:(id)error uiOnly:(BOOL)only useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler
{
  v66[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  errorCopy = error;
  handlerCopy = handler;
  v66[0] = *MEMORY[0x1E6967558];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v55 = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke;
  v56 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v58 = v14;
  selfCopy2 = self;
  v16 = forCopy;
  v17 = v13;
  v18 = v54;
  if (!v16)
  {
    v33 = FPInvalidParameterError();
LABEL_11:
    v34 = v33;
    v55(v18, v33);

    goto LABEL_12;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v20 = [connection fp_hasSandboxAccessToFile:v16 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v20 & 1) == 0 || (-[FPDXPCServicer connection](selfCopy2, "connection"), v21 = objc_claimAutoreleasedReturnValue(), *buf = *MEMORY[0x1E6967560], [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "fp_hasOneOfEntitlements:logLevel:", v22, 0), v22, v21, (v23 & 1) == 0) || (-[FPDXPCServicer connection](selfCopy2, "connection"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "fp_hasOneOfEntitlements:logLevel:", v17, 0), v24, (v25 & 1) == 0) || (-[FPDXPCServicer connection](selfCopy2, "connection"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "fp_isNonSandboxedConnection"), v26, (v27 & 1) == 0))
  {
    v33 = FPNotPermittedError();
    goto LABEL_11;
  }

  if (fpfs_supports_tap_to_feedback())
  {
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v30 = [extensionManager domainForURL:v16 reason:0];

    if (v30)
    {
      v31 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      defaultBackend = [v30 defaultBackend];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_236;
      v46[3] = &unk_1E83C03B0;
      v46[4] = selfCopy2;
      v50 = v14;
      v47 = v16;
      v48 = v30;
      onlyCopy = only;
      v49 = errorCopy;
      diagnosticCopy = diagnostic;
      [defaultBackend itemIDForURL:v47 requireProviderItemID:0 request:v31 completionHandler:v46];
    }

    else
    {
      v37 = fp_current_or_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer triggerDiagnosticsFor:v16 triggeringError:? uiOnly:? useDiagnostic:? completionHandler:?];
      }

      v53 = fpfs_adopt_log();
      v38 = fp_current_or_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v42 = FPPopLogSectionForBlock();
        v43 = FPItemNotFoundErrorAtURL();
        *buf = 134218754;
        *&buf[4] = v42;
        v60 = 2112;
        v61 = selfCopy2;
        v62 = 2080;
        v63 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]";
        v64 = 2112;
        v65 = v43;
        _os_log_debug_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v39 = FPItemNotFoundErrorAtURL();
      (*(v14 + 2))(v14, v39);

      __fp_pop_log();
    }
  }

  else
  {
    v53 = fpfs_adopt_log();
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v40 = FPPopLogSectionForBlock();
      v41 = FPNotSupportedError();
      *buf = 134218754;
      *&buf[4] = v40;
      v60 = 2112;
      v61 = selfCopy2;
      v62 = 2080;
      v63 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]";
      v64 = 2112;
      v65 = v41;
      _os_log_debug_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v36 = FPNotSupportedError();
    (*(v14 + 2))(v14, v36);

    __fp_pop_log();
  }

LABEL_12:
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_236(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v29 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v17 = FPPopLogSectionForBlock();
      v18 = *(a1 + 32);
      v19 = FPPluginOperationFailedError();
      *buf = 134218754;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      v34 = 2080;
      v35 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]_block_invoke";
      v36 = 2112;
      v37 = v19;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v8 = *(a1 + 64);
    v9 = FPPluginOperationFailedError();
    (*(v8 + 16))(v8, v9);

    __fp_pop_log();
  }

  else if (v5)
  {
    v10 = [*(a1 + 48) defaultBackend];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237;
    v23[3] = &unk_1E83C0388;
    v27 = *(a1 + 64);
    v24 = *(a1 + 48);
    v25 = v5;
    v26 = *(a1 + 56);
    v28 = *(a1 + 73);
    [v10 triggerFeedbackApprovalRequestForItemURL:v11 domain:v12 uiOnly:v13 completionHandler:v23];
  }

  else
  {
    v29 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock();
      v21 = *(a1 + 32);
      v22 = FPItemNotFoundErrorAtURL();
      *buf = 134218754;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2080;
      v35 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]_block_invoke";
      v36 = 2112;
      v37 = v22;
      _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v15 = *(a1 + 64);
    v16 = FPItemNotFoundErrorAtURL();
    (*(v15 + 16))(v15, v16);

    __fp_pop_log();
  }
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) defaultBackend];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E695DF00] now];
    v8 = *(a1 + 64);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_238;
    v10[3] = &unk_1E83BE040;
    v11 = *(a1 + 56);
    [v3 launchFeedbackForDomain:v4 itemIdentifier:v5 triggeringError:v6 when:v7 useDiagnostic:v8 completionHandler:v10];
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)getSavedDiagnosticsFor:(id)for completionHandler:(id)handler
{
  v50[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  handlerCopy = handler;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __59__FPDXPCServicer_getSavedDiagnosticsFor_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v39 = v8;
  v9 = v35;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:&unk_1F4C628F8];

  if ((v11 & 1) == 0)
  {
    v20 = FPNotPermittedError();
    v36(v9, v20);

    goto LABEL_15;
  }

  connection2 = [(FPDXPCServicer *)self connection];
  v50[0] = *MEMORY[0x1E69675D8];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  if ([connection2 fp_hasOneOfEntitlements:v13])
  {
    v14 = [forCopy isEqualToString:@"test_provider"];

    if (v14)
    {
      fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
      v16 = [fp_supportDirectory URLByAppendingPathComponent:@"__test__diagnostic__" isDirectory:1];

      v34 = 0;
      v17 = [MEMORY[0x1E6967408] wrapperWithURL:v16 readonly:0 error:&v34];
      v18 = v34;
      v33 = fpfs_adopt_log();
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v41 = v29;
        v42 = 2112;
        selfCopy3 = self;
        v44 = 2080;
        v45 = "[FPDXPCServicer getSavedDiagnosticsFor:completionHandler:]";
        v46 = 2112;
        v47 = v17;
        v48 = 2112;
        v49 = v18;
        _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(v8 + 2))(v8, v17, v18);
      __fp_pop_log();

      goto LABEL_15;
    }
  }

  else
  {
  }

  v33 = 0;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v23 = [extensionManager domainWithID:forCopy reason:&v33];

  if (v23)
  {
    defaultBackend = [v23 defaultBackend];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __59__FPDXPCServicer_getSavedDiagnosticsFor_completionHandler___block_invoke_251;
    v30[3] = &unk_1E83BE9E0;
    v31 = v8;
    [defaultBackend getSavedDiagnostics:v30];
  }

  else
  {
    v32 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v27 = FPPopLogSectionForBlock();
      v28 = FPProviderNotFoundError();
      *buf = 134219010;
      v41 = v27;
      v42 = 2112;
      selfCopy3 = self;
      v44 = 2080;
      v45 = "[FPDXPCServicer getSavedDiagnosticsFor:completionHandler:]";
      v46 = 2112;
      v47 = 0;
      v48 = 2112;
      v49 = v28;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v26 = FPProviderNotFoundError();
    (*(v8 + 2))(v8, 0, v26);

    __fp_pop_log();
  }

LABEL_15:
}

void __59__FPDXPCServicer_getSavedDiagnosticsFor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer getSavedDiagnosticsFor:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)clearDiagnosticsState:(id)state completionHandler:(id)handler
{
  v66[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  handlerCopy = handler;
  v66[0] = *MEMORY[0x1E6967558];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v61 = __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke;
  v62 = &unk_1E83BE1A8;
  selfCopy = self;
  v34 = handlerCopy;
  v64 = v34;
  v8 = v7;
  v9 = v60;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:v8];

  if ((v11 & 1) == 0)
  {
    v32 = FPNotPermittedError();
    v61(v9, v32);

    goto LABEL_22;
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  providerDomainsByID = [extensionManager providerDomainsByID];

  v14 = dispatch_group_create();
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__10;
  v58 = __Block_byref_object_dispose__10;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  allValues = [providerDomainsByID allValues];
  v16 = [allValues countByEnumeratingWithState:&v46 objects:v65 count:16];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = *v47;
  do
  {
    v18 = 0;
    do
    {
      if (*v47 != v17)
      {
        objc_enumerationMutation(allValues);
      }

      v19 = *(*(&v46 + 1) + 8 * v18);
      if (!stateCopy || ([*(*(&v46 + 1) + 8 * v18) identifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(stateCopy, "isEqualToString:", v20), v20, (v21 & 1) != 0))
      {
        if ([v19 isUsingFPFS])
        {
          v45 = 0;
          server2 = [(FPDXPCServicer *)self server];
          extensionManager2 = [server2 extensionManager];
          identifier = [v19 identifier];
          v25 = [extensionManager2 domainWithID:identifier reason:&v45];

          if (v25)
          {
            *(v51 + 24) = 1;
            dispatch_group_enter(v14);
            defaultBackend = [v25 defaultBackend];
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_252;
            v41[3] = &unk_1E83C03D8;
            v42 = stateCopy;
            v44 = &v54;
            v43 = v14;
            [defaultBackend clearDiagnosticState:v41];

            v27 = v42;
          }

          else
          {
            if (!stateCopy)
            {
LABEL_17:

              goto LABEL_18;
            }

            v30 = FPProviderNotFoundError();
            v27 = v55[5];
            v55[5] = v30;
          }

          goto LABEL_17;
        }

        if (stateCopy)
        {
          v28 = FPNotSupportedError();
          v29 = v55[5];
          v55[5] = v28;
        }
      }

LABEL_18:
      ++v18;
    }

    while (v16 != v18);
    v16 = [allValues countByEnumeratingWithState:&v46 objects:v65 count:16];
  }

  while (v16);
LABEL_20:

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_2;
  block[3] = &unk_1E83C0400;
  v39 = &v54;
  block[4] = self;
  v38 = v34;
  v37 = stateCopy;
  v40 = &v50;
  dispatch_group_notify(v14, queue, block);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

LABEL_22:
}

void __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_252(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4 && (*(a1 + 32) || ([v4 fp_isCocoaErrorCode:3328] & 1) == 0))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_2(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(*(a1[7] + 8) + 40))
  {
    v21 = fpfs_adopt_log();
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v13 = a1[4];
      v14 = *(*(a1[7] + 8) + 40);
      *buf = 134218754;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2080;
      v27 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke_2";
      v28 = 2112;
      v29 = v14;
      _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
    __fp_pop_log();
  }

  else if (a1[5] && (*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v21 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = FPPopLogSectionForBlock();
      v18 = a1[4];
      v19 = FPProviderNotFoundError();
      *buf = 134218754;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2080;
      v27 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v19;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v10 = a1[6];
    v11 = FPProviderNotFoundError();
    (*(v10 + 16))(v10, v11);

    __fp_pop_log();
  }

  else
  {
    v3 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
    v4 = [v3 URLByAppendingPathComponent:@"resources/FPFeedbackManagerState"];

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0;
    v6 = [v5 removeItemAtURL:v4 error:&v20];
    v7 = v20;

    if ((v6 & 1) == 0 && (([v7 fp_isCocoaErrorCode:4] & 1) != 0 || objc_msgSend(v7, "fp_isCocoaErrorCode:", 260)))
    {

      v7 = 0;
    }

    v21 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = FPPopLogSectionForBlock();
      v16 = a1[4];
      *buf = 134218754;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2080;
      v27 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
    __fp_pop_log();
  }
}

- (void)validateDiagnosticsJson:(id)json completionHandler:(id)handler
{
  v40[2] = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v40[0] = *MEMORY[0x1E6967558];
  v40[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __60__FPDXPCServicer_validateDiagnosticsJson_completionHandler___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v29 = v10;
  v11 = v9;
  v12 = v25;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    if (fpfs_is_internal_build())
    {
      v15 = [_TtC18FileProviderDaemon22FPDiagnosticSignatures validateJSONSignaturesWithJsonString:jsonCopy];
      v23 = fpfs_adopt_log();
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v22 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v31 = v22;
        v32 = 2112;
        selfCopy3 = self;
        v34 = 2080;
        v35 = "[FPDXPCServicer validateDiagnosticsJson:completionHandler:]";
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(v10 + 2))(v10, v15, 0);
      __fp_pop_log();
    }

    else
    {
      v24 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = FPPopLogSectionForBlock();
        v21 = FPNotSupportedError();
        *buf = 134219010;
        v31 = v20;
        v32 = 2112;
        selfCopy3 = self;
        v34 = 2080;
        v35 = "[FPDXPCServicer validateDiagnosticsJson:completionHandler:]";
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = v21;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v19 = FPNotSupportedError();
      (*(v10 + 2))(v10, 0, v19);

      __fp_pop_log();
    }
  }

  else
  {
    v17 = FPNotPermittedError();
    v26(v12, v17);
  }
}

void __60__FPDXPCServicer_validateDiagnosticsJson_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer validateDiagnosticsJson:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)checkErrorAgainstDiagnosticsJson:(id)json inputError:(id)error errorDirection:(id)direction jobCode:(id)code underlying:(id)underlying completionHandler:(id)handler
{
  v56[2] = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  errorCopy = error;
  directionCopy = direction;
  codeCopy = code;
  underlyingCopy = underlying;
  handlerCopy = handler;
  v18 = *MEMORY[0x1E69675D8];
  v56[0] = *MEMORY[0x1E6967558];
  v56[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __114__FPDXPCServicer_checkErrorAgainstDiagnosticsJson_inputError_errorDirection_jobCode_underlying_completionHandler___block_invoke;
  v43 = &unk_1E83BE1A8;
  selfCopy = self;
  v20 = handlerCopy;
  v45 = v20;
  v21 = v19;
  v22 = v41;
  connection = [(FPDXPCServicer *)self connection];
  v24 = [connection fp_hasOneOfEntitlements:v21];

  if (v24)
  {

    if (fpfs_is_internal_build())
    {
      v25 = [_TtC18FileProviderDaemon22FPDiagnosticSignatures validateJSONSignaturesWithJsonString:jsonCopy];
      v26 = [v25 count] == 0;

      if (v26)
      {
        v39 = fpfs_adopt_log();
        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:];
        }

        (*(v20 + 2))(v20, @"Invalid or empty JSON", 0);
        __fp_pop_log();
      }

      else if ([_TtC18FileProviderDaemon22FPDiagnosticSignatures isErrorMatchingSignaturesWithJsonString:jsonCopy error:errorCopy direction:directionCopy jobCode:codeCopy underlying:underlyingCopy])
      {
        v37 = fpfs_adopt_log();
        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:];
        }

        (*(v20 + 2))(v20, @"Error matching", 0);
        __fp_pop_log();
      }

      else
      {
        v40 = fpfs_adopt_log();
        v32 = fp_current_or_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:];
        }

        (*(v20 + 2))(v20, @"Error not matching", 0);
        __fp_pop_log();
      }
    }

    else
    {
      v38 = fpfs_adopt_log();
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v33 = FPPopLogSectionForBlock();
        v34 = FPNotSupportedError();
        *buf = 134219010;
        v47 = v33;
        v48 = 2112;
        selfCopy2 = self;
        v50 = 2080;
        v51 = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
        v52 = 2112;
        v53 = 0;
        v54 = 2112;
        v55 = v34;
        _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v30 = FPNotSupportedError();
      (*(v20 + 2))(v20, 0, v30);

      __fp_pop_log();
    }
  }

  else
  {
    v28 = FPNotPermittedError();
    v42(v22, v28);
  }
}

void __114__FPDXPCServicer_checkErrorAgainstDiagnosticsJson_inputError_errorDirection_jobCode_underlying_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)backUpUserURL:(id)l outputUserURL:(id)rL completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  v16[0] = *MEMORY[0x1E6967588];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = [connection fp_hasOneOfEntitlements:v12 nonSandboxedAccess:0 logLevel:2];

  if (v13)
  {
    server = [(FPDXPCServicer *)self server];
    v15 = [objc_alloc(objc_msgSend(server "fpfsSQLBackupManagerClass"))];

    [v15 backUpWithCompletionHandler:handlerCopy];
  }

  else
  {
    v15 = FPNotPermittedError();
    handlerCopy[2](handlerCopy, 0, v15);
  }
}

- (void)restoreUserURL:(id)l fromBuild:(id)build restoreType:(id)type cleanupOnSuccess:(BOOL)success completionHandler:(id)handler
{
  successCopy = success;
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  buildCopy = build;
  typeCopy = type;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  v21[0] = *MEMORY[0x1E6967588];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [connection fp_hasOneOfEntitlements:v17 nonSandboxedAccess:0 logLevel:2];

  if (v18)
  {
    server = [(FPDXPCServicer *)self server];
    v20 = [objc_alloc(objc_msgSend(server "fpfsSQLRestoreManagerClass"))];

    [v20 restoreWithCompletionHandler:handlerCopy];
  }

  else
  {
    v20 = FPNotPermittedError();
    handlerCopy[2](handlerCopy, 0, v20);
  }
}

- (void)resolveConflictAtURL:(id)l completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v37 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v33;
  if (!v10)
  {
    v23 = FPInvalidParameterError();
LABEL_14:
    v27 = v23;
    v34(v11, v23);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v23 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    defaultBackend = [v19 defaultBackend];
    connection3 = [(FPDXPCServicer *)selfCopy2 connection];
    v22 = [FPDRequest requestForXPCConnection:connection3];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke_267;
    v30[3] = &unk_1E83BE1A8;
    v30[4] = selfCopy2;
    v31 = v8;
    [defaultBackend resolveConflictAtURL:v10 request:v22 completionHandler:v30];
  }

  else
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer resolveConflictAtURL:v10 completionHandler:?];
    }

    v32 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v28 = FPPopLogSectionForBlock();
      v29 = FPProviderNotFoundErrorForURL();
      *buf = 134218754;
      *&buf[4] = v28;
      v39 = 2112;
      v40 = selfCopy2;
      v41 = 2080;
      v42 = "[FPDXPCServicer resolveConflictAtURL:completionHandler:]";
      v43 = 2112;
      v44 = v29;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v26 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, v26);

    __fp_pop_log();
  }

LABEL_15:
}

void __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer resolveConflictAtURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke_267(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer resolveConflictAtURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions completionHandler:(id)handler
{
  versionsCopy = versions;
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __88__FPDXPCServicer_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v37 = v10;
  selfCopy2 = self;
  v12 = lCopy;
  v13 = v33;
  if (!v12)
  {
    v24 = FPInvalidParameterError();
LABEL_12:
    v27 = v24;
    v34(v13, v24);

    goto LABEL_13;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v15 = [connection fp_hasSandboxAccessToFile:v12 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v15 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v18 = [connection2 fp_hasOneOfEntitlements:v17 nonSandboxedAccess:0 logLevel:0];

    if ((v18 & 1) == 0)
    {
      v24 = FPNotPermittedError();
      goto LABEL_12;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v21 = [extensionManager domainForURL:v12 reason:0];

  if (v21)
  {
    defaultBackend = [v21 defaultBackend];
    v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __88__FPDXPCServicer_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler___block_invoke_268;
    v30[3] = &unk_1E83C0428;
    v30[4] = selfCopy2;
    v31 = v10;
    [defaultBackend listRemoteVersionsOfItemAtURL:v12 includeCachedVersions:versionsCopy request:v23 completionHandler:v30];
  }

  else
  {
    v32 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v28 = FPPopLogSectionForBlock();
      v29 = FPProviderNotFoundErrorForURL();
      *buf = 134219266;
      *&buf[4] = v28;
      v39 = 2112;
      v40 = selfCopy2;
      v41 = 2080;
      v42 = "[FPDXPCServicer listRemoteVersionsOfItemAtURL:includeCachedVersions:completionHandler:]";
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = 0;
      v47 = 2112;
      v48 = v29;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v26 = FPProviderNotFoundErrorForURL();
    (*(v10 + 2))(v10, 0, 0, v26);

    __fp_pop_log();
  }

LABEL_13:
}

void __88__FPDXPCServicer_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219266;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer listRemoteVersionsOfItemAtURL:includeCachedVersions:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __88__FPDXPCServicer_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler___block_invoke_268(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219266;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer listRemoteVersionsOfItemAtURL:includeCachedVersions:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)addDomain:(id)domain forProviderIdentifier:(id)identifier byImportingDirectoryAtURL:(id)l nonWrappedURL:(id)rL userAllowedDBDrop:(BOOL)drop knownFolders:(id)folders completionHandler:(id)handler
{
  dropCopy = drop;
  v182[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  foldersCopy = folders;
  handlerCopy = handler;
  v167[0] = MEMORY[0x1E69E9820];
  v167[1] = 3221225472;
  v168 = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke;
  v169 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v171 = v16;
  selfCopy2 = self;
  v18 = v167;
  v172 = 0;
  v141 = identifierCopy;
  v19 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:identifierCopy enumerateEntitlementRequired:1 error:&v172];
  v20 = v172;
  if (!v19)
  {
    v168(v18, v20);
LABEL_7:
    v145 = 0;
    goto LABEL_9;
  }

  if ([v19 invalidated])
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v22 = MEMORY[0x1E696AEC0];
    identifier = [v19 identifier];
    v24 = [v22 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v25 = FPProviderNotRegistered();
    v168(v18, v25);

    goto LABEL_7;
  }

  v145 = v19;
LABEL_9:

  if (!v145)
  {
    goto LABEL_86;
  }

  volumeUUID = [domainCopy volumeUUID];
  if (volumeUUID)
  {
    IsEnabled = FPFeatureFlagEbihilIsEnabled();

    if (IsEnabled)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
      volumeManager = [WeakRetained volumeManager];
      volumeUUID2 = [domainCopy volumeUUID];
      v166 = 0;
      v31 = [volumeManager libraryForVolume:volumeUUID2 createIfNeeded:1 error:&v166];
      v32 = v166;

      if (v31)
      {
        if ([v31 role] != 3)
        {
          goto LABEL_19;
        }

        domainsByID = [v145 domainsByID];
        identifier2 = [domainCopy identifier];
        v35 = [domainsByID objectForKeyedSubscript:identifier2];
        v36 = v35 == 0;

        if (!v36)
        {
          goto LABEL_19;
        }

        rootURL = [v31 rootURL];
        v161[0] = MEMORY[0x1E69E9820];
        v161[1] = 3221225472;
        v162 = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_270;
        v163 = &unk_1E83BE1A8;
        v164 = selfCopy2;
        v165 = v16;
        v37 = selfCopy2;
        v38 = v161;
        if (rootURL)
        {
          connection = [(FPDXPCServicer *)v37 connection];
          v40 = [connection fp_hasSandboxAccessToFile:rootURL logLevel:0];

          if (v40 & 1) != 0 || (-[FPDXPCServicer connection](v37, "connection"), v41 = objc_claimAutoreleasedReturnValue(), *buf = *MEMORY[0x1E6967560], [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v41, "fp_hasOneOfEntitlements:nonSandboxedAccess:logLevel:", v42, 0, 0), v42, v41, (v43))
          {

LABEL_19:
            goto LABEL_20;
          }

          v114 = FPNotPermittedWriteError();
        }

        else
        {
          v114 = FPInvalidParameterError();
        }

        v119 = v114;
        v162(v38, v114);
      }

      else
      {
        volumeUUID3 = [domainCopy volumeUUID];
        fp_UUID = [volumeUUID3 fp_UUID];
        v73 = [fp_UUID isEqualToString:*MEMORY[0x1E69675C0]];

        if (v73)
        {
          v74 = fp_current_or_default_log();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
          }
        }

        v172 = fpfs_adopt_log();
        v75 = fp_current_or_default_log();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          v118 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v118;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v174 = 2112;
          *v175 = 0;
          *&v175[8] = 2112;
          v176 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v75, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        (*(v16 + 2))(v16, 0, v32);
        __fp_pop_log();
      }

      goto LABEL_86;
    }
  }

LABEL_20:
  if ([domainCopy testingModes])
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v182[0] = *MEMORY[0x1E69675A8];
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:1];
    v46 = [connection2 fp_hasOneOfEntitlements:v45 nonSandboxedAccess:0 logLevel:2];

    if ((v46 & 1) == 0)
    {
      v172 = fpfs_adopt_log();
      v59 = fp_current_or_default_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v112 = FPPopLogSectionForBlock();
        v113 = FPNotPermittedError();
        *buf = 134219010;
        *&buf[4] = v112;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
        v174 = 2112;
        *v175 = 0;
        *&v175[8] = 2112;
        v176 = v113;
        _os_log_debug_impl(&dword_1CEFC7000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v60 = FPNotPermittedError();
      (*(v16 + 2))(v16, 0, v60);

      __fp_pop_log();
      goto LABEL_86;
    }
  }

  v47 = [lCopy url];
  startAccessingSecurityScopedResource = [v47 startAccessingSecurityScopedResource];

  if (!lCopy)
  {
    if (rLCopy)
    {
      v61 = MEMORY[0x1E696ABC0];
      v180 = *MEMORY[0x1E696A998];
      v181 = rLCopy;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
      v58 = [v61 errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:v62];

      if (([rLCopy isFileURL] & 1) == 0)
      {
        v86 = fp_current_or_default_log();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
        }

        v172 = fpfs_adopt_log();
        v69 = fp_current_or_default_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v120 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v120;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v174 = 2112;
          *v175 = 0;
          *&v175[8] = 2112;
          v176 = v58;
          _os_log_debug_impl(&dword_1CEFC7000, v69, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        goto LABEL_73;
      }

      identifier3 = [v145 identifier];
      v64 = [identifier3 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

      if ((v64 & 1) == 0)
      {
        v88 = fp_current_or_default_log();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
        }

        v172 = fpfs_adopt_log();
        v69 = fp_current_or_default_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v121 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v121;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v174 = 2112;
          *v175 = 0;
          *&v175[8] = 2112;
          v176 = v58;
          _os_log_debug_impl(&dword_1CEFC7000, v69, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        goto LABEL_73;
      }

      getpid();
      path = [rLCopy path];
      v66 = path;
      fileSystemRepresentation = [path fileSystemRepresentation];
      v67 = sandbox_check() == 0;

      if (!v67)
      {
        v68 = fp_current_or_default_log();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
        }

        v172 = fpfs_adopt_log();
        v69 = fp_current_or_default_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v129 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v129;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v174 = 2112;
          *v175 = 0;
          *&v175[8] = 2112;
          v176 = v58;
          _os_log_debug_impl(&dword_1CEFC7000, v69, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

LABEL_73:

        (*(v16 + 2))(v16, 0, v58);
        __fp_pop_log();

LABEL_85:
        goto LABEL_86;
      }

      v115 = rLCopy;

      v58 = v115;
    }

    else
    {
      v58 = 0;
    }

LABEL_49:
    if ([foldersCopy count])
    {
      v76 = fp_current_or_default_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
      }

      v172 = fpfs_adopt_log();
      v77 = fp_current_or_default_log();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v116 = FPPopLogSectionForBlock();
        v117 = FPNotSupportedError();
        *buf = 134219010;
        *&buf[4] = v116;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
        v174 = 2112;
        *v175 = 0;
        *&v175[8] = 2112;
        v176 = v117;
        _os_log_debug_impl(&dword_1CEFC7000, v77, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v78 = FPNotSupportedError();
      (*(v16 + 2))(v16, 0, v78);

      __fp_pop_log();
    }

    else
    {
      if (([v141 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"] & 1) != 0 || objc_msgSend(v141, "isEqualToString:", @"com.apple.SMBClientProvider.FileProvider"))
      {
        mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
        currentPersona = [mEMORY[0x1E69DF068] currentPersona];

        v153 = 0;
        v136 = [currentPersona copyCurrentPersonaContextWithError:&v153];
        v81 = v153;
        if (v81)
        {
          v82 = fp_current_or_default_log();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            [FPDServer migrateLegacyFPFSLocations];
          }
        }

        descriptor = [v145 descriptor];
        personaIdentifier = [descriptor personaIdentifier];
        v85 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier];
      }

      else
      {
        v136 = 0;
      }

      mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
      currentPersona2 = [mEMORY[0x1E69DF068]2 currentPersona];

      [domainCopy setIsEnterpriseDomain:{objc_msgSend(currentPersona2, "isEnterprisePersona")}];
      [domainCopy setIsDataSeparatedDomain:{objc_msgSend(currentPersona2, "isDataSeparatedPersona")}];
      userPersonaUniqueString = [currentPersona2 userPersonaUniqueString];
      [domainCopy setPersonaIdentifier:userPersonaUniqueString];

      personaIdentifier2 = [domainCopy personaIdentifier];

      if (personaIdentifier2 && ([domainCopy personaIdentifier], v92 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v145, "descriptor"), v93 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v93, "personaIdentifier"), v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v92, "isEqual:", v94), v94, v93, v92, (v95 & 1) == 0))
      {
        v106 = fp_current_or_default_log();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          v122 = objc_loadWeakRetained(&selfCopy2->_connection);
          v123 = v122;
          if (v122)
          {
            objc_msgSend_auditToken(v122);
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          v130 = FPExecutableNameForAuditToken();
          descriptor2 = [v145 descriptor];
          personaIdentifier3 = [descriptor2 personaIdentifier];
          personaIdentifier4 = [domainCopy personaIdentifier];
          *buf = 138412802;
          *&buf[4] = v130;
          *&buf[12] = 2112;
          *&buf[14] = personaIdentifier3;
          *&buf[22] = 2112;
          *&buf[24] = personaIdentifier4;
          _os_log_error_impl(&dword_1CEFC7000, v106, OS_LOG_TYPE_ERROR, "[ERROR] %@ called fileproviderd to add a domain for an extension with persona %@ while running in persona %@", buf, 0x20u);
        }

        v172 = fpfs_adopt_log();
        v107 = fp_current_or_default_log();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          v124 = FPPopLogSectionForBlock();
          personaIdentifier5 = [domainCopy personaIdentifier];
          descriptor3 = [v145 descriptor];
          personaIdentifier6 = [descriptor3 personaIdentifier];
          v128 = FPInvalidParameterErrorWithExpectation();
          *buf = 134219010;
          *&buf[4] = v124;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v174 = 2112;
          *v175 = 0;
          *&v175[8] = 2112;
          v176 = v128;
          _os_log_debug_impl(&dword_1CEFC7000, v107, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        personaIdentifier7 = [domainCopy personaIdentifier];
        descriptor4 = [v145 descriptor];
        personaIdentifier8 = [descriptor4 personaIdentifier];
        v111 = FPInvalidParameterErrorWithExpectation();
        (*(v16 + 2))(v16, 0, v111);

        __fp_pop_log();
      }

      else
      {
        v96 = fp_current_or_default_log();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v97 = [domainCopy description];
          fp_shortDescription = [v58 fp_shortDescription];
          personaIdentifier9 = [domainCopy personaIdentifier];
          isPersonalPersona = [currentPersona2 isPersonalPersona];
          isEnterprisePersona = [currentPersona2 isEnterprisePersona];
          isDefaultPersona = [currentPersona2 isDefaultPersona];
          isSystemPersona = [currentPersona2 isSystemPersona];
          userPersonaType = [currentPersona2 userPersonaType];
          *buf = 138414082;
          *&buf[4] = v97;
          *&buf[12] = 2112;
          *&buf[14] = fp_shortDescription;
          *&buf[22] = 2112;
          *&buf[24] = personaIdentifier9;
          v174 = 1024;
          *v175 = isPersonalPersona;
          *&v175[4] = 1024;
          *&v175[6] = isEnterprisePersona;
          LOWORD(v176) = 1024;
          *(&v176 + 2) = isDefaultPersona;
          HIWORD(v176) = 1024;
          v177 = isSystemPersona;
          v178 = 2048;
          v179 = userPersonaType;
          _os_log_impl(&dword_1CEFC7000, v96, OS_LOG_TYPE_INFO, "[INFO] Adding domain %@ at URL %@ with persona unique string:'%@', perso:%{BOOL}d ent:%{BOOL}d def:%{BOOL}d sys:%{BOOL}d type:%lu", buf, 0x42u);
        }

        v152 = v136;
        _FPRestorePersona();
        v104 = v136;

        v105 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v147[0] = MEMORY[0x1E69E9820];
        v147[1] = 3221225472;
        v147[2] = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_284;
        v147[3] = &unk_1E83C0478;
        v151 = startAccessingSecurityScopedResource;
        v148 = lCopy;
        v149 = selfCopy2;
        v150 = v16;
        [v145 addDomain:domainCopy byImportingDirectoryAtURL:v58 userAllowedDBDrop:dropCopy knownFolders:foldersCopy request:v105 completionHandler:v147];

        v136 = v104;
      }
    }

    goto LABEL_85;
  }

  v48 = [lCopy url];
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v155 = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_271;
  v156 = &unk_1E83C0450;
  v160 = startAccessingSecurityScopedResource;
  v49 = lCopy;
  v157 = v49;
  v158 = selfCopy2;
  v159 = v16;
  v50 = selfCopy2;
  v51 = v48;
  v52 = v154;
  if (v51)
  {
    connection3 = [(FPDXPCServicer *)v50 connection];
    v54 = [connection3 fp_hasSandboxAccessToFile:v51 logLevel:0];

    if (v54 & 1) != 0 || (-[FPDXPCServicer connection](v50, "connection"), v55 = objc_claimAutoreleasedReturnValue(), *buf = *MEMORY[0x1E6967560], [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v55, "fp_hasOneOfEntitlements:nonSandboxedAccess:logLevel:", v56, 0, 0), v56, v55, (v57))
    {

      v58 = [v49 url];
      goto LABEL_49;
    }

    v70 = FPNotPermittedWriteError();
  }

  else
  {
    v70 = FPInvalidParameterError();
  }

  v87 = v70;
  v155(v52, v70);

LABEL_86:
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_270(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_271(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) url];
    [v4 stopAccessingSecurityScopedResource];
  }

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 40);
    *buf = 134219010;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_284(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) == 1)
  {
    v7 = [*(a1 + 32) url];
    [v7 stopAccessingSecurityScopedResource];
  }

  if (!v6)
  {
    v8 = [*(a1 + 40) server];
    [v8 signalProviderChanges];
  }

  v12 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 40);
    *buf = 134219010;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2080;
    v18 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

- (void)removeDomainAndPreserveDataWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  fp_toProviderID = [dCopy fp_toProviderID];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke;
  v34 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v36 = v11;
  selfCopy2 = self;
  v13 = v32;
  v37 = 0;
  v14 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:fp_toProviderID enumerateEntitlementRequired:1 error:&v37];
  v15 = v37;
  if (v14)
  {
    if ([v14 invalidated])
    {
      modeCopy = mode;
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
      }

      v17 = MEMORY[0x1E696AEC0];
      identifier = [v14 identifier];
      v19 = [v17 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

      v20 = FPProviderNotRegistered();
      v33(v13, v20);

      v21 = 0;
      mode = modeCopy;
    }

    else
    {
      v21 = v14;
    }
  }

  else
  {
    v33(v13, v15);
    v21 = 0;
  }

  if (v21)
  {
    v22 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_285;
    v26[3] = &unk_1E83C04A0;
    v26[4] = selfCopy2;
    v30 = v11;
    v27 = v21;
    modeCopy2 = mode;
    v28 = dCopy;
    v29 = v22;
    v24 = v22;
    [(FPDXPCServicer *)selfCopy2 prepareRemovalOfDomainWithIdentifier:fp_toDomainIdentifier provider:v27 request:v24 completionHandler:v26];
  }
}

void __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_285(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v13 = fpfs_adopt_log();
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock();
      v10 = *(a1 + 32);
      *buf = 134219010;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2080;
      v19 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) fp_toDomainIdentifier];
    v7 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_286;
    v11[3] = &unk_1E83C0270;
    v11[4] = *(a1 + 32);
    v8 = *(a1 + 72);
    v12 = *(a1 + 64);
    [v5 removeDomain:v6 mode:v8 request:v7 completionHandler:v11];
  }
}

void __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_286(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v17 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2080;
      v23 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    if (v5)
    {
      v16 = 0;
      v9 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v16];
      v7 = v16;
    }

    else
    {
      v9 = 0;
      v7 = 0;
    }

    v10 = [*(a1 + 32) server];
    [v10 signalProviderChanges];

    v17 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 32);
      *buf = 134219010;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2080;
      v23 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }
}

- (void)removeDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FPDXPCServicer_removeDomainWithID_mode_completionHandler___block_invoke;
  v10[3] = &unk_1E83C04C8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(FPDXPCServicer *)self removeDomainAndPreserveDataWithID:d mode:mode completionHandler:v10];
}

void __60__FPDXPCServicer_removeDomainWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer removeDomainWithID:mode:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)removeDomain:(id)domain mode:(unint64_t)mode completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke;
  v32 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v34 = v10;
  selfCopy2 = self;
  v12 = v30;
  v35 = 0;
  v13 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:0 enumerateEntitlementRequired:1 error:&v35];
  v14 = v35;
  if (!v13)
  {
    v31(v12, v14);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  if ([v13 invalidated])
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696AEC0];
    identifier = [v13 identifier];
    v18 = [v16 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v19 = FPProviderNotRegistered();
    v31(v12, v19);

    goto LABEL_7;
  }

  v20 = v13;
LABEL_9:

  if (v20)
  {
    v21 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    identifier2 = [domainCopy identifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_287;
    v24[3] = &unk_1E83C04A0;
    v24[4] = selfCopy2;
    v28 = v10;
    v25 = v20;
    modeCopy = mode;
    v26 = domainCopy;
    v27 = v21;
    v23 = v21;
    [(FPDXPCServicer *)selfCopy2 prepareRemovalOfDomainWithIdentifier:identifier2 provider:v25 request:v23 completionHandler:v24];
  }
}

void __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_287(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v13 = fpfs_adopt_log();
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock();
      v10 = *(a1 + 32);
      *buf = 134219010;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2080;
      v19 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) identifier];
    v7 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_288;
    v11[3] = &unk_1E83C0270;
    v11[4] = *(a1 + 32);
    v8 = *(a1 + 72);
    v12 = *(a1 + 64);
    [v5 removeDomain:v6 mode:v8 request:v7 completionHandler:v11];
  }
}

void __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_288(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v17 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2080;
      v23 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    if (v5)
    {
      v16 = 0;
      v9 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v16];
      v7 = v16;
    }

    else
    {
      v9 = 0;
      v7 = 0;
    }

    v10 = [*(a1 + 32) server];
    [v10 signalProviderChanges];

    v17 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 32);
      *buf = 134219010;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2080;
      v23 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }
}

- (void)removeDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__FPDXPCServicer_removeDomain_completionHandler___block_invoke;
  v8[3] = &unk_1E83C04C8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FPDXPCServicer *)self removeDomain:domain mode:0 completionHandler:v8];
}

void __49__FPDXPCServicer_removeDomain_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer removeDomain:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)removeAllDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke;
  v23 = &unk_1E83BE1A8;
  selfCopy = self;
  v7 = handlerCopy;
  v25 = v7;
  selfCopy2 = self;
  v9 = v21;
  v26 = 0;
  v10 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:identifier enumerateEntitlementRequired:1 error:&v26];
  v11 = v26;
  if (!v10)
  {
    v22(v9, v11);
LABEL_7:
    v17 = 0;
    goto LABEL_9;
  }

  if ([v10 invalidated])
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v13 = MEMORY[0x1E696AEC0];
    identifier = [v10 identifier];
    v15 = [v13 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v16 = FPProviderNotRegistered();
    v22(v9, v16);

    goto LABEL_7;
  }

  v17 = v10;
LABEL_9:

  if (v17)
  {
    v18 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289;
    v19[3] = &unk_1E83BE1A8;
    v19[4] = selfCopy2;
    v20 = v7;
    [v17 removeAllDomainsForRequest:v18 completionHandler:v19];
  }
}

void __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer removeAllDomainsForProviderIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v9 = fpfs_adopt_log();
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = FPPopLogSectionForBlock();
      v8 = *(a1 + 32);
      *buf = 134218754;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2080;
      v16 = "[FPDXPCServicer removeAllDomainsForProviderIdentifier:completionHandler:]_block_invoke";
      v17 = 2112;
      v18 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    v5 = [*(a1 + 32) server];
    [v5 signalProviderChanges];

    v10 = fpfs_adopt_log();
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }
}

- (BOOL)_canBundleIDTriggerTTRForFailure:(id)failure
{
  failureCopy = failure;
  if (_canBundleIDTriggerTTRForFailure__onceToken != -1)
  {
    [FPDXPCServicer _canBundleIDTriggerTTRForFailure:];
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  updating = [extensionManager updating];

  if (updating)
  {
    LOBYTE(server2) = 0;
  }

  else
  {
    server2 = [(FPDXPCServicer *)self server];
    userIsLoggingOut = [server2 userIsLoggingOut];

    LOBYTE(server2) = 0;
    if (failureCopy && (userIsLoggingOut & 1) == 0)
    {
      LODWORD(server2) = [_canBundleIDTriggerTTRForFailure__expectedFailures containsObject:failureCopy] ^ 1;
    }
  }

  return server2;
}

void __51__FPDXPCServicer__canBundleIDTriggerTTRForFailure___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4C62910];
  v1 = _canBundleIDTriggerTTRForFailure__expectedFailures;
  _canBundleIDTriggerTTRForFailure__expectedFailures = v0;
}

- (void)getDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke;
  v30 = &unk_1E83BFA20;
  v31 = identifierCopy;
  selfCopy = self;
  v8 = handlerCopy;
  v33 = v8;
  selfCopy2 = self;
  v10 = v31;
  v11 = v28;
  v34 = 0;
  v12 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:v10 enumerateEntitlementRequired:1 error:&v34];
  v13 = v34;
  if (!v12)
  {
    v29(v11, v13);
LABEL_7:
    v19 = 0;
    goto LABEL_9;
  }

  if ([v12 invalidated])
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696AEC0];
    identifier = [v12 identifier];
    v17 = [v15 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v18 = FPProviderNotRegistered();
    v29(v11, v18);

    goto LABEL_7;
  }

  v19 = v12;
LABEL_9:

  if (v19)
  {
    v34 = fpfs_adopt_log();
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v24 = FPPopLogSectionForBlock();
      identifier2 = [v19 identifier];
      nsDomainsByID = [v19 nsDomainsByID];
      allValues = [nsDomainsByID allValues];
      *buf = 134219010;
      v36 = v24;
      v37 = 2112;
      v38 = selfCopy2;
      v39 = 2080;
      v40 = "[FPDXPCServicer getDomainsForProviderIdentifier:completionHandler:]";
      v41 = 2112;
      v42 = identifier2;
      v43 = 2112;
      v44 = allValues;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    identifier3 = [v19 identifier];
    nsDomainsByID2 = [v19 nsDomainsByID];
    allValues2 = [nsDomainsByID2 allValues];
    (*(v8 + 2))(v8, identifier3, allValues2, 0);

    __fp_pop_log();
  }
}

void __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke_cold_1(a1, v3);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v6 = [WeakRetained fp_bundleIdentifier];

  if (!*(a1 + 32) && [v3 fp_isFileProviderError:-2001] && objc_msgSend(*(a1 + 40), "_canBundleIDTriggerTTRForFailure:", v6))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A call from %@ to getDomainsForProviderIdentifier failed: %@", v6, v3];
    v8 = objc_opt_new();
    [v8 requestTapToRadarWithTitle:@"FileProvider API Issue: getDomainsForProviderIdentifier failed" description:v7 keywords:MEMORY[0x1E695E0F0] attachments:MEMORY[0x1E695E0F0] displayReason:@"a problem gathering domains occured" providerID:0];
  }

  v12 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 40);
    *buf = 134219266;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2080;
    v18 = "[FPDXPCServicer getDomainsForProviderIdentifier:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = 0;
    v23 = 2112;
    v24 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

- (void)setEnabled:(BOOL)enabled forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler
{
  enabledCopy = enabled;
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __86__FPDXPCServicer_setEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke;
  v28 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v30 = v12;
  selfCopy2 = self;
  v14 = v26;
  v31 = 0;
  v15 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerIdentifier enumerateEntitlementRequired:1 error:&v31];
  v16 = v31;
  if (v15)
  {
    if ([v15 invalidated])
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v15;
        _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
      }

      v18 = MEMORY[0x1E696AEC0];
      identifier = [v15 identifier];
      v20 = [v18 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

      v21 = FPProviderNotRegistered();
      v27(v14, v21);

      v22 = 0;
    }

    else
    {
      v22 = v15;
    }
  }

  else
  {
    v27(v14, v16);
    v22 = 0;
  }

  if (v22)
  {
    v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __86__FPDXPCServicer_setEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_311;
    v24[3] = &unk_1E83BE1A8;
    v24[4] = selfCopy2;
    v25 = v12;
    [v22 setEnabled:enabledCopy forDomainIdentifier:identifierCopy request:v23 completionHandler:v24];
  }
}

void __86__FPDXPCServicer_setEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer setEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __86__FPDXPCServicer_setEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_311(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) server];
  [v4 signalProviderChanges];

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer setEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)setHiddenByUser:(BOOL)user forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler
{
  userCopy = user;
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __91__FPDXPCServicer_setHiddenByUser_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke;
  v28 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v30 = v12;
  selfCopy2 = self;
  v14 = v26;
  v31 = 0;
  v15 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerIdentifier enumerateEntitlementRequired:1 error:&v31];
  v16 = v31;
  if (v15)
  {
    if ([v15 invalidated])
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v15;
        _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
      }

      v18 = MEMORY[0x1E696AEC0];
      identifier = [v15 identifier];
      v20 = [v18 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

      v21 = FPProviderNotRegistered();
      v27(v14, v21);

      v22 = 0;
    }

    else
    {
      v22 = v15;
    }
  }

  else
  {
    v27(v14, v16);
    v22 = 0;
  }

  if (v22)
  {
    v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __91__FPDXPCServicer_setHiddenByUser_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_312;
    v24[3] = &unk_1E83BE1A8;
    v24[4] = selfCopy2;
    v25 = v12;
    [v22 setHiddenByUser:userCopy forDomainIdentifier:identifierCopy request:v23 completionHandler:v24];
  }
}

void __91__FPDXPCServicer_setHiddenByUser_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer setHiddenByUser:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __91__FPDXPCServicer_setHiddenByUser_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_312(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) server];
  [v4 signalProviderChanges];

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer setHiddenByUser:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)setIndexingEnabled:(BOOL)enabled forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler
{
  enabledCopy = enabled;
  v54 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  providerIdentifierCopy = providerIdentifier;
  handlerCopy = handler;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke;
  v42 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v44 = v12;
  selfCopy2 = self;
  v14 = v40;
  v45 = 0;
  v15 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerIdentifierCopy enumerateEntitlementRequired:1 error:&v45];
  v16 = v45;
  if (!v15)
  {
    v41(v14, v16);
LABEL_7:
    v22 = 0;
    goto LABEL_9;
  }

  if ([v15 invalidated])
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v15;
      _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v18 = MEMORY[0x1E696AEC0];
    identifier = [v15 identifier];
    v20 = [v18 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v21 = FPProviderNotRegistered();
    v41(v14, v21);

    goto LABEL_7;
  }

  v22 = v15;
LABEL_9:

  if (v22)
  {
    v45 = 0;
    v23 = [v22 domainForIdentifier:identifierCopy reason:&v45];
    v24 = v23;
    if (v23)
    {
      indexer = [v23 indexer];
      v26 = indexer == 0;

      if (v26)
      {
        v39 = fpfs_adopt_log();
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v34 = FPPopLogSectionForBlock();
          v35 = FPNotSupportedError();
          *buf = 134218754;
          v47 = v34;
          v48 = 2112;
          v49 = selfCopy2;
          v50 = 2080;
          v51 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]";
          v52 = 2112;
          v53 = v35;
          _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v31 = FPNotSupportedError();
        (*(v12 + 2))(v12, v31);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v24 indexer];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_313;
        v37[3] = &unk_1E83BE1A8;
        v37[4] = selfCopy2;
        v38 = v12;
        [indexer2 setIndexingEnabled:enabledCopy completionHandler:v37];
      }
    }

    else
    {
      v39 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        v33 = FPProviderNotFoundError();
        *buf = 134218754;
        v47 = v32;
        v48 = 2112;
        v49 = selfCopy2;
        v50 = 2080;
        v51 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]";
        v52 = 2112;
        v53 = v33;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v29 = FPProviderNotFoundError();
      (*(v12 + 2))(v12, v29);

      __fp_pop_log();
    }
  }
}

void __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_313(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler
{
  datalessCopy = dataless;
  v49 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v39 = v10;
  selfCopy2 = self;
  v12 = v35;
  v40 = 0;
  v13 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v40];
  v14 = v40;
  if (!v13)
  {
    v36(v12, v14);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  if ([v13 invalidated])
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v13;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696AEC0];
    identifier = [v13 identifier];
    v18 = [v16 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v19 = FPProviderNotRegistered();
    v36(v12, v19);

    goto LABEL_7;
  }

  v20 = v13;
LABEL_9:

  if (v20)
  {
    v40 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager domainFromItemID:dCopy reason:&v40];

    if (v23)
    {
      defaultBackend = [v23 defaultBackend];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke_314;
      v32[3] = &unk_1E83BE1A8;
      v32[4] = selfCopy2;
      v33 = v10;
      [defaultBackend reimportItemsBelowItemWithID:dCopy markItemDataless:datalessCopy completionHandler:v32];
    }

    else
    {
      v34 = fpfs_adopt_log();
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v30 = FPProviderNotFoundError();
        *buf = 134218754;
        v42 = v28;
        v43 = 2112;
        v44 = selfCopy2;
        v45 = 2080;
        v46 = "[FPDXPCServicer reimportItemsBelowItemWithID:markItemDataless:completionHandler:]";
        v47 = 2112;
        v48 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      providerID3 = [dCopy providerID];
      v27 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v27);

      __fp_pop_log();
    }
  }
}

void __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer reimportItemsBelowItemWithID:markItemDataless:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke_314(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer reimportItemsBelowItemWithID:markItemDataless:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler
{
  v40[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v40[0] = *MEMORY[0x1E6967558];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke;
  v29 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v31 = v9;
  v10 = v8;
  v11 = v27;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    v26 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:&v26];

    if (v16)
    {
      defaultBackend = [v16 defaultBackend];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke_315;
      v23[3] = &unk_1E83BE1A8;
      v23[4] = self;
      v24 = v9;
      [defaultBackend forceUpdateBlockedProcessNamesFromDomain:domainCopy completionHandler:v23];
    }

    else
    {
      v25 = fpfs_adopt_log();
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = FPPopLogSectionForBlock();
        v22 = FPProviderNotFoundError();
        *buf = 134218754;
        v33 = v21;
        v34 = 2112;
        selfCopy2 = self;
        v36 = 2080;
        v37 = "[FPDXPCServicer forceUpdateBlockedProcessNamesFromDomain:completionHandler:]";
        v38 = 2112;
        v39 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v20 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, v20);

      __fp_pop_log();
    }
  }

  else
  {
    v18 = FPNotPermittedError();
    v28(v11, v18);
  }
}

void __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer forceUpdateBlockedProcessNamesFromDomain:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke_315(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer forceUpdateBlockedProcessNamesFromDomain:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)importProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v49[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v49[0] = *MEMORY[0x1E6967558];
  v49[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v38 = v10;
  v11 = v9;
  v12 = v34;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v33 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v33];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke_318;
        v30[3] = &unk_1E83C04F0;
        v30[4] = self;
        v31 = v10;
        [defaultBackend2 importProgressWithCompletionHandler:v30];
      }

      else
      {
        v32 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v28 = FPPopLogSectionForBlock();
          v29 = FPNotSupportedError();
          *buf = 134219010;
          v40 = v28;
          v41 = 2112;
          selfCopy3 = self;
          v43 = 2080;
          v44 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v29;
          _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v25 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v25);

        __fp_pop_log();
      }
    }

    else
    {
      v32 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = FPProviderNotFoundError();
        *buf = 134219010;
        v40 = v26;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]";
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v27;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v35(v12, v21);
  }
}

void __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)checkLocationEligibilityForDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, 0, v6);
}

- (void)stateForDomainWithID:(id)d completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke;
  v28 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v30 = v8;
  v9 = v26;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v12;
  *&buf[16] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:0];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke_320;
      v23[3] = &unk_1E83C0518;
      v23[4] = selfCopy2;
      v24 = v8;
      [defaultBackend stateWithCompletionHandler:v23];
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967210] code:12 userInfo:0];
      v25 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = FPPopLogSectionForBlock();
        *buf = 134219010;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        v32 = "[FPDXPCServicer stateForDomainWithID:completionHandler:]";
        v33 = 2048;
        v34 = 0;
        v35 = 2112;
        v36 = v20;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu, %@", buf, 0x34u);
      }

      (*(v8 + 2))(v8, 0, v20);
      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v27(v9, v19);
  }
}

void __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer stateForDomainWithID:completionHandler:]_block_invoke";
    v14 = 2048;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke_320(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v9 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = FPPopLogSectionForBlock();
    v8 = *(a1 + 32);
    *buf = 134219010;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2080;
    v15 = "[FPDXPCServicer stateForDomainWithID:completionHandler:]_block_invoke";
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)runFPCKForDomainWithID:(id)d domainRootURL:(id)l databaseBackupPath:(id)path options:(unint64_t)options reason:(unint64_t)reason launchType:(unint64_t)type contentBarrier:(int64_t)barrier completionHandler:(id)self0
{
  v84[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  pathCopy = path;
  handlerCopy = handler;
  v16 = *MEMORY[0x1E6967568];
  v84[0] = *MEMORY[0x1E6967558];
  v84[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v66 = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke;
  v67 = &unk_1E83BE1A8;
  selfCopy = self;
  v52 = handlerCopy;
  v69 = v52;
  v18 = v17;
  v19 = v65;
  connection = [(FPDXPCServicer *)self connection];
  v21 = [connection fp_hasOneOfEntitlements:v18];

  if (v21)
  {

    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] 🧹 FPCK launched from XPC", buf, 2u);
    }

    v23 = fp_current_or_default_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (type == 1)
    {
      if (v24)
      {
        [FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:];
      }
    }

    else if (type)
    {
      if (v24)
      {
        [FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:];
      }
    }

    else if (v24)
    {
      [FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:];
    }

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v28 = [extensionManager domainWithID:dCopy reason:0];

    if (v28)
    {
      server2 = [(FPDXPCServicer *)self server];
      v30 = [objc_msgSend(server2 "fpckTaskClass")];
      nsDomain = [v28 nsDomain];
      userInfo = [nsDomain userInfo];
      checkableURLs = [v28 checkableURLs];
      volume = [v28 volume];
      role = [volume role];
      nsDomain2 = [v28 nsDomain];
      personaIdentifier = [nsDomain2 personaIdentifier];
      reasonCopy = 128;
      if (reason)
      {
        reasonCopy = reason;
      }

      v42 = reasonCopy;
      isUsingFPFS = [v28 isUsingFPFS];
      provider = [v28 provider];
      descriptor = [provider descriptor];
      wantsBundleBitOnlyPackageDetection = [descriptor wantsBundleBitOnlyPackageDetection];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322;
      v54[3] = &unk_1E83C0568;
      v54[4] = self;
      v59 = v52;
      optionsCopy = options;
      v55 = v28;
      v56 = dCopy;
      v57 = lCopy;
      v58 = pathCopy;
      reasonCopy2 = reason;
      typeCopy = type;
      barrierCopy = barrier;
      LOBYTE(v39) = 1;
      BYTE1(v38) = wantsBundleBitOnlyPackageDetection;
      LOBYTE(v38) = isUsingFPFS;
      [v30 prepareFPCKRun:v56 domainUserInfo:userInfo domainRootURL:v57 databaseBackupPath:v58 urls:checkableURLs volumeRole:role personaIdentifier:personaIdentifier options:options reason:v42 fpfs:v38 iCDPackageDetection:type launchType:v39 runOnWorkQueue:v54 completionHandler:?];
    }

    else
    {
      v35 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967210] code:12 userInfo:0];
      v64 = fpfs_adopt_log();
      v36 = fp_current_or_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = FPPopLogSectionForBlock();
        *buf = 134219522;
        v71 = v37;
        v72 = 2112;
        selfCopy2 = self;
        v74 = 2080;
        v75 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]";
        v76 = 2112;
        v77 = 0;
        v78 = 2112;
        v79 = 0;
        v80 = 2112;
        v81 = 0;
        v82 = 2112;
        v83 = v35;
        _os_log_debug_impl(&dword_1CEFC7000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
      }

      (*(v52 + 2))(v52, 0, 0, 0, v35);
      __fp_pop_log();
    }
  }

  else
  {
    v25 = FPNotPermittedError();
    v66(v19, v25);
  }
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219522;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2;
  v48[3] = &unk_1E83BE068;
  v43 = v8;
  v49 = v43;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained setInvalidationHandler:v48];

  if (v9)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322_cold_1(v9);
    }

    v47 = fpfs_adopt_log();
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v26 = FPPopLogSectionForBlock();
      v27 = *(a1 + 32);
      *buf = 134219522;
      v51 = v26;
      v52 = 2112;
      v53 = v27;
      v54 = 2080;
      v55 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]_block_invoke";
      v56 = 2112;
      v57 = 0;
      v58 = 2112;
      v59 = 0;
      v60 = 2112;
      v61 = 0;
      v62 = 2112;
      v63 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    (*(*(a1 + 72) + 16))();
    __fp_pop_log();

    v13 = [MEMORY[0x1E696B0B8] currentConnection];
    [(FPCKOnDemandUpdateReceiver *)v13 invalidate];
  }

  else
  {
    v14 = *(a1 + 80);
    v15 = [_TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver alloc];
    v16 = (a1 + 40);
    v17 = [*(a1 + 40) defaultBackend];
    v37 = [(FPCKOnDemandUpdateReceiver *)v15 initWithDomainBackend:v17 persistUpdates:(v14 >> 8) & 1];

    v18 = [*(a1 + 32) server];
    v40 = [objc_msgSend(v18 "fpckTaskClass")];
    v36 = *(a1 + 48);
    v42 = [*(a1 + 40) nsDomain];
    v39 = [v42 userInfo];
    v34 = *(a1 + 64);
    v35 = *(a1 + 56);
    v38 = [*(a1 + 40) checkableURLs];
    v41 = [*(a1 + 40) volume];
    v33 = [v41 role];
    v19 = *(a1 + 88);
    if (!v19)
    {
      v19 = 128;
    }

    v31 = v19;
    v32 = *(a1 + 80);
    v30 = [*v16 isUsingFPFS];
    v20 = [*v16 provider];
    v21 = [v20 descriptor];
    v22 = [v21 wantsBundleBitOnlyPackageDetection];
    v24 = *(a1 + 96);
    v23 = *(a1 + 104);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_325;
    v44[3] = &unk_1E83C0540;
    v44[4] = *(a1 + 32);
    v25 = *(a1 + 72);
    v45 = v37;
    v46 = v25;
    v13 = v37;
    v29 = v23;
    v9 = 0;
    BYTE1(v28) = v22;
    LOBYTE(v28) = v30;
    [v40 scheduleFPCKRun:v36 domainUserInfo:v39 domainRootURL:v35 databaseBackupPath:v34 urls:v38 volumeRole:v33 options:v32 reason:v31 fpfs:v28 iCDPackageDetection:v24 launchType:v13 updateReceiver:0 shouldPause:v29 contentBarrier:v7 proxy:v44 completionHandler:?];
  }
}

uint64_t __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2_cold_1();
  }

  return [*(a1 + 32) invalidate];
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_325(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20 = fpfs_adopt_log();
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = FPPopLogSectionForBlock();
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) telemetryReport];
    *buf = 134219523;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2080;
    v26 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]_block_invoke";
    v27 = 2117;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v12;
    _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{sensitive}@, %@, %@, %@", buf, 0x48u);
  }

  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) telemetryReport];
  (*(v14 + 16))(v14, v9, v10, v15, v12);

  __fp_pop_log();
  v16 = [MEMORY[0x1E696B0B8] currentConnection];
  [v16 invalidate];
}

- (void)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to completionHandler:(id)handler
{
  dumpCopy = dump;
  v29[1] = *MEMORY[0x1E69E9840];
  atCopy = at;
  toCopy = to;
  handlerCopy = handler;
  v29[0] = *MEMORY[0x1E6967558];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v28 = v13;
  v14 = v12;
  v15 = v24;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    server = [(FPDXPCServicer *)self server];
    v14 = [objc_msgSend(server "fpckTaskClass")];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke_328;
    v22[3] = &unk_1E83BE1A8;
    v22[4] = self;
    v19 = &v23;
    v23 = v13;
    [v14 dumpDatabaseAt:atCopy fullDump:dumpCopy writeTo:toCopy completionHandler:v22];
  }

  else
  {
    v19 = &v28;
    v20 = FPNotPermittedError();
    v25(v15, v20);

    server = v14;
  }
}

void __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer dumpDatabaseAt:fullDump:writeTo:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke_328(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer dumpDatabaseAt:fullDump:writeTo:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)domain completionHandler:(id)handler
{
  v44[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v44[0] = *MEMORY[0x1E69675A0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __76__FPDXPCServicer_calculateNonPurgeableSpaceUsageOfDomain_completionHandler___block_invoke;
  v31 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v33 = v9;
  v10 = v8;
  v11 = v29;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:0];

    if (v16)
    {
      v27 = fpfs_adopt_log();
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v23 = FPPopLogSectionForBlock();
        v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "nonEvictableSpace")}];
        *buf = 134219010;
        v35 = v23;
        v36 = 2112;
        selfCopy3 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer calculateNonPurgeableSpaceUsageOfDomain:completionHandler:]";
        v40 = 2112;
        v41 = v24;
        v42 = 2112;
        v43 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
      }

      v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "nonEvictableSpace")}];
      (*(v9 + 2))(v9, v18, 0);

      __fp_pop_log();
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] No domain found with identifier %@", buf, 0xCu);
      }

      v28 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        v26 = FPDomainUnavailableError();
        *buf = 134219010;
        v35 = v25;
        v36 = 2112;
        selfCopy3 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer calculateNonPurgeableSpaceUsageOfDomain:completionHandler:]";
        v40 = 2112;
        v41 = 0;
        v42 = 2112;
        v43 = v26;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
      }

      v22 = FPDomainUnavailableError();
      (*(v9 + 2))(v9, 0, v22);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v30(v11, v19);
  }
}

void __76__FPDXPCServicer_calculateNonPurgeableSpaceUsageOfDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer calculateNonPurgeableSpaceUsageOfDomain:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)accumulatedSizeOfPinnedItemsInDomain:(id)domain completion:(id)completion
{
  v43[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  completionCopy = completion;
  v43[0] = *MEMORY[0x1E69675A0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __66__FPDXPCServicer_accumulatedSizeOfPinnedItemsInDomain_completion___block_invoke;
  v30 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = completionCopy;
  v32 = v9;
  v10 = v8;
  v11 = v28;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:0];

    if (v16)
    {
      v26 = fpfs_adopt_log();
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v22 = FPPopLogSectionForBlock();
        accumulatedSizeOfPinnedItems = [v16 accumulatedSizeOfPinnedItems];
        *buf = 134219010;
        v34 = v22;
        v35 = 2112;
        selfCopy3 = self;
        v37 = 2080;
        v38 = "[FPDXPCServicer accumulatedSizeOfPinnedItemsInDomain:completion:]";
        v39 = 2048;
        v40 = accumulatedSizeOfPinnedItems;
        v41 = 2112;
        v42 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu %@", buf, 0x34u);
      }

      (*(v9 + 2))(v9, [v16 accumulatedSizeOfPinnedItems], 0);
      __fp_pop_log();
    }

    else
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] No domain found with identifier %@", buf, 0xCu);
      }

      v27 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v24 = FPPopLogSectionForBlock();
        v25 = FPDomainUnavailableError();
        *buf = 134219010;
        v34 = v24;
        v35 = 2112;
        selfCopy3 = self;
        v37 = 2080;
        v38 = "[FPDXPCServicer accumulatedSizeOfPinnedItemsInDomain:completion:]";
        v39 = 2048;
        v40 = 0;
        v41 = 2112;
        v42 = v25;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu %@", buf, 0x34u);
      }

      v21 = FPDomainUnavailableError();
      (*(v9 + 2))(v9, 0, v21);

      __fp_pop_log();
    }
  }

  else
  {
    v18 = FPNotPermittedError();
    v29(v11, v18);
  }
}

void __66__FPDXPCServicer_accumulatedSizeOfPinnedItemsInDomain_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer accumulatedSizeOfPinnedItemsInDomain:completion:]_block_invoke";
    v14 = 2048;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)accumulatedSizeOfItemsInDomain:(id)domain completion:(id)completion
{
  v48[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  completionCopy = completion;
  v48[0] = *MEMORY[0x1E6967560];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __60__FPDXPCServicer_accumulatedSizeOfItemsInDomain_completion___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = completionCopy;
  v37 = v9;
  v10 = v8;
  v11 = v33;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:0];

    if (v16)
    {
      accumulatedSizeOfItems = [v16 accumulatedSizeOfItems];
      if (accumulatedSizeOfItems)
      {
        v30 = fpfs_adopt_log();
        v18 = fp_current_or_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v25 = FPPopLogSectionForBlock();
          *buf = 134219010;
          v39 = v25;
          v40 = 2112;
          selfCopy4 = self;
          v42 = 2080;
          v43 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]";
          v44 = 2112;
          v45 = accumulatedSizeOfItems;
          v46 = 2112;
          v47 = 0;
          _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
        }

        (*(v9 + 2))(v9, accumulatedSizeOfItems, 0);
        __fp_pop_log();
      }

      else
      {
        v32 = fpfs_adopt_log();
        v23 = fp_current_or_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v28 = FPPopLogSectionForBlock();
          v29 = FPNotSupportedError();
          *buf = 134219010;
          v39 = v28;
          v40 = 2112;
          selfCopy4 = self;
          v42 = 2080;
          v43 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]";
          v44 = 2112;
          v45 = 0;
          v46 = 2112;
          v47 = v29;
          _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
        }

        v24 = FPNotSupportedError();
        (*(v9 + 2))(v9, 0, v24);

        __fp_pop_log();
      }
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] No domain found with identifier %@", buf, 0xCu);
      }

      v31 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = FPDomainUnavailableError();
        *buf = 134219010;
        v39 = v26;
        v40 = 2112;
        selfCopy4 = self;
        v42 = 2080;
        v43 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]";
        v44 = 2112;
        v45 = 0;
        v46 = 2112;
        v47 = v27;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
      }

      v22 = FPDomainUnavailableError();
      (*(v9 + 2))(v9, 0, v22);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v34(v11, v19);
  }
}

void __60__FPDXPCServicer_accumulatedSizeOfItemsInDomain_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)setAlternateContentsURL:(id)l onDocumentURL:(id)rL completionHandler:(id)handler
{
  v56[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if (lCopy)
  {
    v5 = [lCopy url];
    if (![(FPDXPCServicer *)self clientHasSandboxAccessToFile:v5])
    {
      _isNonSandboxedConnection = [(FPDXPCServicer *)self _isNonSandboxedConnection];

      if (!_isNonSandboxedConnection)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  if ([(FPDXPCServicer *)self clientHasSandboxAccessToFile:rLCopy])
  {
    connection = [(FPDXPCServicer *)self connection];
    v56[0] = *MEMORY[0x1E6967548];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    if ([connection fp_hasOneOfEntitlements:v14])
    {

      if (lCopy)
      {
      }

      goto LABEL_14;
    }

    _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (!lCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];
  if (lCopy)
  {
LABEL_12:
  }

LABEL_13:
  if (!_isNonSandboxedConnection2)
  {
LABEL_19:
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:];
    }

    v47 = fpfs_adopt_log();
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v38 = FPPopLogSectionForBlock();
      v39 = FPNotPermittedWriteError();
      *buf = 134218754;
      v49 = v38;
      v50 = 2112;
      selfCopy3 = self;
      v52 = 2080;
      v53 = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]";
      v54 = 2112;
      v55 = v39;
      _os_log_debug_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v33 = FPNotPermittedWriteError();
    handlerCopy[2](handlerCopy, v33);

    __fp_pop_log();
    goto LABEL_33;
  }

LABEL_14:
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v18 = [extensionManager domainForURL:rLCopy reason:0];

  if (v18)
  {
    defaultBackend = [v18 defaultBackend];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(FPDXPCServicer *)v21 setAlternateContentsURL:v22 onDocumentURL:v23 completionHandler:v24, v25, v26, v27, v28];
      }

      v29 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      defaultBackend2 = [v18 defaultBackend];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke;
      v42[3] = &unk_1E83C0590;
      v43 = rLCopy;
      selfCopy2 = self;
      v46 = handlerCopy;
      v45 = lCopy;
      [defaultBackend2 setAlternateContentsURLWrapper:v45 forDocumentWithURL:v43 request:v29 completionHandler:v42];
    }

    else
    {
      v47 = fpfs_adopt_log();
      v36 = fp_current_or_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v40 = FPPopLogSectionForBlock();
        v41 = FPNotSupportedError();
        *buf = 134218754;
        v49 = v40;
        v50 = 2112;
        selfCopy3 = self;
        v52 = 2080;
        v53 = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]";
        v54 = 2112;
        v55 = v41;
        _os_log_debug_impl(&dword_1CEFC7000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v37 = FPNotSupportedError();
      handlerCopy[2](handlerCopy, v37);

      __fp_pop_log();
    }
  }

  else
  {
    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer setAlternateContentsURL:rLCopy onDocumentURL:? completionHandler:?];
    }

    v47 = fpfs_adopt_log();
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
    __fp_pop_log();
  }

LABEL_33:
}

void __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_1();
    }

    v17 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 40);
      *buf = 134218754;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2080;
      v23 = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v8 = [*(a1 + 40) server];
    v9 = [v8 extensionManager];
    v10 = [*(a1 + 48) url];
    [v9 setAlternateContentsURL:v10 forItemID:v5];

    v16 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }
}

- (void)fetchAlternateContentsURLForDocumentURL:(id)l completionHandler:(id)handler
{
  v38[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  if ([connection fp_hasSandboxAccessToFile:lCopy accessType:*MEMORY[0x1E6966DA8] logLevel:0])
  {
    connection2 = [(FPDXPCServicer *)self connection];
    v38[0] = *MEMORY[0x1E6967548];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    if ([connection2 fp_hasOneOfEntitlements:v10])
    {

LABEL_5:
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v14 = [extensionManager domainForURL:lCopy reason:0];

      if (v14)
      {
        defaultBackend = [v14 defaultBackend];
        v16 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __76__FPDXPCServicer_fetchAlternateContentsURLForDocumentURL_completionHandler___block_invoke;
        v25[3] = &unk_1E83BE6C0;
        v25[4] = self;
        v26 = handlerCopy;
        [defaultBackend itemIDForURL:lCopy requireProviderItemID:0 request:v16 completionHandler:v25];
      }

      else
      {
        v21 = fp_current_or_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [FPDXPCServicer fetchAlternateContentsURLForDocumentURL:lCopy completionHandler:?];
        }

        v27 = fpfs_adopt_log();
        v22 = fp_current_or_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:];
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0);
        __fp_pop_log();
      }

      goto LABEL_19;
    }

    _isNonSandboxedConnection = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection2)
    {
      goto LABEL_5;
    }
  }

  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:];
  }

  v27 = fpfs_adopt_log();
  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v23 = FPPopLogSectionForBlock();
    v24 = FPNotPermittedError();
    *buf = 134219010;
    v29 = v23;
    v30 = 2112;
    selfCopy = self;
    v32 = 2080;
    v33 = "[FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:]";
    v34 = 2112;
    v35 = 0;
    v36 = 2112;
    v37 = v24;
    _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v20 = FPNotPermittedError();
  (*(handlerCopy + 2))(handlerCopy, 0, v20);

  __fp_pop_log();
LABEL_19:
}

void __76__FPDXPCServicer_fetchAlternateContentsURLForDocumentURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v16 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2080;
      v23 = "[FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    v8 = [*(a1 + 32) server];
    v9 = [v8 extensionManager];
    v10 = [v9 alternateContentsURLForItemID:v5];

    v17 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 32);
      *buf = 134219010;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2080;
      v23 = "[FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }
}

- (void)didUpdateAlternateContentsDocumentForDocumentAtURL:(id)l completionHandler:(id)handler
{
  v43[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  if ([connection fp_hasSandboxAccessToFile:lCopy accessType:*MEMORY[0x1E6966DA8] logLevel:0])
  {
    connection2 = [(FPDXPCServicer *)self connection];
    v43[0] = *MEMORY[0x1E6967548];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    if ([connection2 fp_hasOneOfEntitlements:v10])
    {

LABEL_5:
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v14 = [extensionManager domainForURL:lCopy reason:0];

      if (v14)
      {
        v15 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        providerDomainID = [v14 providerDomainID];
        defaultBackend = [v14 defaultBackend];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke;
        v29[3] = &unk_1E83C05B8;
        v30 = lCopy;
        v31 = providerDomainID;
        selfCopy = self;
        v33 = handlerCopy;
        v18 = providerDomainID;
        [defaultBackend didUpdateAlternateContentsDocumentForDocumentWithURL:v30 request:v15 completionHandler:v29];
      }

      else
      {
        v34 = fpfs_adopt_log();
        v23 = fp_current_or_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v27 = FPPopLogSectionForBlock();
          v28 = FPProviderNotFoundErrorForURL();
          *buf = 134218754;
          v36 = v27;
          v37 = 2112;
          selfCopy3 = self;
          v39 = 2080;
          v40 = "[FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:]";
          v41 = 2112;
          v42 = v28;
          _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v24 = FPProviderNotFoundErrorForURL();
        (*(handlerCopy + 2))(handlerCopy, v24);

        __fp_pop_log();
      }

      goto LABEL_17;
    }

    _isNonSandboxedConnection = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection2)
    {
      goto LABEL_5;
    }
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:];
  }

  v34 = fpfs_adopt_log();
  v21 = fp_current_or_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v25 = FPPopLogSectionForBlock();
    v26 = FPNotPermittedError();
    *buf = 134218754;
    v36 = v25;
    v37 = 2112;
    selfCopy3 = self;
    v39 = 2080;
    v40 = "[FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:]";
    v41 = 2112;
    v42 = v26;
    _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v22 = FPNotPermittedError();
  (*(handlerCopy + 2))(handlerCopy, v22);

  __fp_pop_log();
LABEL_17:
}

void __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke_cold_1(a1, v3);
    }
  }

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 48);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log();
}

- (void)appHasNonUploadedFiles:(id)files completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x1E69E9840];
  filesCopy = files;
  handlerCopy = handler;
  v27[0] = *MEMORY[0x1E6967560];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke;
  v24 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v26 = v9;
  v10 = v8;
  v11 = v22;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainsForAppBundleIdentifier:filesCopy];

    if ([v16 count])
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke_333;
      v19[3] = &unk_1E83C05E0;
      v19[4] = self;
      v20 = v9;
      hasNonUploadedFiles(v16, v19);
    }

    else
    {
      v21 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock();
        [FPDXPCServicer appHasNonUploadedFiles:completionHandler:];
      }

      (*(v9 + 2))(v9, 0, 0);
      __fp_pop_log();
    }
  }

  else
  {
    v17 = FPNotPermittedError();
    v23(v11, v17);
  }
}

void __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = FPPopLogSectionForBlock();
    v8 = *(a1 + 32);
    v9 = FPNotPermittedError();
    *buf = 134219010;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2080;
    v16 = "[FPDXPCServicer appHasNonUploadedFiles:completionHandler:]_block_invoke";
    v17 = 1024;
    v18 = 0;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
  }

  v5 = *(a1 + 40);
  v6 = FPNotPermittedError();
  (*(v5 + 16))(v5, 0, v6);

  __fp_pop_log();
}

void __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke_333(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v9 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = FPPopLogSectionForBlock();
    v8 = *(a1 + 32);
    *buf = 134219010;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2080;
    v15 = "[FPDXPCServicer appHasNonUploadedFiles:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)dumpProviders:(id)providers dumper:(id)dumper auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  providersCopy = providers;
  dumperCopy = dumper;
  requestCopy = request;
  filterCopy = filter;
  handlerCopy = handler;
  if ([providersCopy count])
  {
    firstObject = [providersCopy firstObject];
    [providersCopy removeObjectAtIndex:0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __99__FPDXPCServicer_dumpProviders_dumper_auditToken_request_providerFilter_options_completionHandler___block_invoke;
    v24[3] = &unk_1E83C0608;
    v24[4] = self;
    v25 = providersCopy;
    v26 = dumperCopy;
    v20 = *&token->var0[4];
    v31 = *token->var0;
    v32 = v20;
    v27 = requestCopy;
    v28 = filterCopy;
    optionsCopy = options;
    v29 = handlerCopy;
    v21 = *&token->var0[4];
    v23[0] = *token->var0;
    v23[1] = v21;
    [firstObject dumpStateTo:v26 auditToken:v23 request:v27 providerFilter:v28 options:options completionHandler:v24];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __99__FPDXPCServicer_dumpProviders_dumper_auditToken_request_providerFilter_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = *(a1 + 104);
  v10[0] = *(a1 + 88);
  v10[1] = v8;
  return [v2 dumpProviders:v1 dumper:v3 auditToken:v10 request:v4 providerFilter:v7 options:v5 completionHandler:v6];
}

- (void)dumpStateTo:(id)to providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  v83[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  filterCopy = filter;
  handlerCopy = handler;
  v83[0] = *MEMORY[0x1E6967558];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v76 = __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke;
  v77 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v79 = v12;
  v13 = v11;
  v14 = v75;
  connection = [(FPDXPCServicer *)self connection];
  v16 = [connection fp_hasOneOfEntitlements:v13];

  if (v16)
  {

    if (toCopy)
    {
      connection2 = [(FPDXPCServicer *)self connection];
      v64 = [FPDRequest requestForXPCConnection:connection2];

      v18 = [objc_alloc(MEMORY[0x1E69672D0]) initWithFd:objc_msgSend(toCopy forceColor:{"fileDescriptor"), 1}];
      date = [MEMORY[0x1E695DF00] date];
      v20 = [date description];
      v21 = v20;
      uTF8String = [v20 UTF8String];
      v23 = [MEMORY[0x1E695DF00] now];
      [v23 timeIntervalSinceReferenceDate];
      [v18 write:{@"Date/Time:         %s, (%f)\n", uTF8String, v24}];

      v25 = FPOSVersion();
      v26 = v25;
      [v18 write:{@"OS Version:        %s\n", objc_msgSend(v25, "UTF8String")}];

      v27 = FPVersion();
      v28 = v27;
      [v18 write:{@"FP Version:        %s\n", objc_msgSend(v27, "UTF8String")}];

      [v18 write:{@"uid:               %u\n", geteuid()}];
      if (fpfs_is_internal_build())
      {
        [v18 write:@"\n"];
        v29 = FPSerialNumber([v18 write:@"== Internal Info ==\n"]);
        v30 = v29;
        [v18 write:{@"Serial Number:     %s\n", objc_msgSend(v29, "UTF8String")}];
      }

      [v18 write:@"\n\n"];
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      WeakRetained = objc_loadWeakRetained(&self->_server);
      extensionManager = [WeakRetained extensionManager];
      allProviders = [extensionManager allProviders];
      v35 = [allProviders mutableCopy];

      if ([v35 count])
      {
        v36 = 0;
        v37 = 1;
        while (1)
        {
          v38 = [v35 objectAtIndexedSubscript:v36];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            break;
          }

          v36 = v37++;
          if ([v35 count] <= v36)
          {
            goto LABEL_19;
          }
        }

        v44 = [v35 objectAtIndexedSubscript:v36];
        [v35 removeObjectAtIndex:v36];
        [v35 insertObject:v44 atIndex:0];
      }

LABEL_19:
      v45 = [filterCopy length] == 0;
      v46 = [v35 count];
      v47 = v46;
      if (v45)
      {
        [v18 write:{@"%ld providers\n", v46}];
      }

      else
      {
        fp_obfuscatedProviderDomainID = [filterCopy fp_obfuscatedProviderDomainID];
        [v18 write:{@"%ld providers, filtered by '%@'\n", v47, fp_obfuscatedProviderDomainID}];
      }

      fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
      v74 = 0;
      v50 = FPGetImportCookieForURL();
      v51 = 0;

      entries = [v50 entries];
      v53 = ([entries count] | v51) != 0;

      if (v53)
      {
        v54 = [v50 description];
        v55 = v54;
        if (v54)
        {
          [v18 write:{@"Import Cookie: %@\n", v54}];
        }

        else
        {
          localizedDescription = [v51 localizedDescription];
          [v18 write:{@"Import Cookie: %@\n", localizedDescription}];
        }
      }

      v57 = fp_current_or_default_log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      memset(buf, 0, sizeof(buf));
      connection3 = [(FPDXPCServicer *)self connection];
      v59 = connection3;
      if (connection3)
      {
        objc_msgSend_auditToken(connection3);
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v60 addObjectsFromArray:v35];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_374;
      v68[3] = &unk_1E83BF4F0;
      v69 = toCopy;
      selfCopy2 = self;
      v71 = v18;
      v72 = filterCopy;
      v73 = v12;
      v67[0] = *buf;
      v67[1] = *&buf[16];
      v61 = v18;
      [(FPDXPCServicer *)self dumpProviders:v60 dumper:v61 auditToken:v67 request:v64 providerFilter:v72 options:options completionHandler:v68];
    }

    else
    {
      v41 = fp_current_or_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      *&v67[0] = fpfs_adopt_log();
      v42 = fp_current_or_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v62 = FPPopLogSectionForBlock();
        v63 = FPInvalidParameterError();
        *buf = 134218754;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2080;
        *&buf[24] = "[FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:]";
        v81 = 2112;
        v82 = v63;
        _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v43 = FPInvalidParameterError();
      (*(v12 + 2))(v12, v43);

      __fp_pop_log();
    }
  }

  else
  {
    v40 = FPNotPermittedError();
    v76(v14, v40);
  }
}

void __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_374(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v5 = [WeakRetained operationEngine];
  [v5 dumpStateTo:*(a1 + 48)];

  v6 = objc_loadWeakRetained((*(a1 + 40) + 32));
  v7 = [v6 appMonitor];
  [v7 dumpStateTo:*(a1 + 48)];

  if (![*(a1 + 56) length])
  {
    v8 = objc_loadWeakRetained((*(a1 + 40) + 32));
    v9 = [v8 volumeManager];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_2;
    v30[3] = &unk_1E83BDF50;
    v31 = *(a1 + 48);
    [v9 enumerateLibrariesWithBlock:v30];

    *buf = 0;
    v10 = FPGetSharedDomainCachingPath();
    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 48);
      v13 = [v10 fp_prettyPath];
      [v12 write:{@"== Domains cache: %@ ==\n", v13}];

      v14 = [MEMORY[0x1E69673E8] readCacheFromDisk:1];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = [v14 allKeys];
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v39 count:16];
      if (v16)
      {
        v17 = *v27;
        do
        {
          v18 = 0;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(a1 + 48) write:{@"  + %@\n", *(*(&v26 + 1) + 8 * v18++)}];
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v39 count:16];
        }

        while (v16);
      }

      [*(a1 + 48) write:@"\n"];
    }
  }

  v19 = *(a1 + 48);
  v20 = +[FPDConfigurationStore defaultStore];
  v21 = [v20 getTrialConfigurationState];
  [v19 write:{@"== Trial configuration ==\n%@\n", v21}];

  v25 = fpfs_adopt_log();
  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = FPPopLogSectionForBlock();
    v24 = *(a1 + 40);
    *buf = 134218754;
    *&buf[4] = v23;
    v33 = 2112;
    v34 = v24;
    v35 = 2080;
    v36 = "[FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:]_block_invoke";
    v37 = 2112;
    v38 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
  __fp_pop_log();
}

uint64_t __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLibraryConfigured])
  {
    v4 = *(a1 + 32);
    v5 = [v3 root];
    v6 = [v5 fp_prettyPath];
    [v4 write:{@"== Volume: %@ ==\n", v6}];

    [FPDProvider dumpXattrsForSyncRootDirectoryOfVolume:v3 dumper:*(a1 + 32)];
    [FPDProvider dumpXattrsForSystemDirectoryOfVolume:v3 dumper:*(a1 + 32)];
  }

  return 1;
}

- (void)dumpPlistTelemetryForProviders:(id)providers result:(id)result providerFilter:(id)filter completionHandler:(id)handler
{
  providersCopy = providers;
  resultCopy = result;
  filterCopy = filter;
  handlerCopy = handler;
  if ([providersCopy count])
  {
    firstObject = [providersCopy firstObject];
    [providersCopy removeObjectAtIndex:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__FPDXPCServicer_dumpPlistTelemetryForProviders_result_providerFilter_completionHandler___block_invoke;
    v16[3] = &unk_1E83C0630;
    v17 = resultCopy;
    v18 = firstObject;
    selfCopy = self;
    v20 = providersCopy;
    v21 = filterCopy;
    v22 = handlerCopy;
    v15 = firstObject;
    [v15 fetchTelemetryReportWithProviderFilter:v21 alwaysFetchExpandedUsageStats:1 completionHandler:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, resultCopy, 0);
  }
}

void __89__FPDXPCServicer_dumpPlistTelemetryForProviders_result_providerFilter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  [v3 setObject:v5 forKeyedSubscript:v4];

  [*(a1 + 48) dumpPlistTelemetryForProviders:*(a1 + 56) result:*(a1 + 32) providerFilter:*(a1 + 64) completionHandler:*(a1 + 72)];
}

- (void)dumpTelemetryTo:(id)to providerFilter:(id)filter completionHandler:(id)handler
{
  v55[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  filterCopy = filter;
  handlerCopy = handler;
  v55[0] = *MEMORY[0x1E6967558];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v43 = __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke;
  v44 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v46 = v11;
  v12 = v10;
  v13 = v42;
  connection = [(FPDXPCServicer *)self connection];
  v15 = [connection fp_hasOneOfEntitlements:v12];

  if (v15)
  {

    if (toCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E69672D0]) initWithFd:objc_msgSend(toCopy forceColor:{"fileDescriptor"), 1}];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      extensionManager = [WeakRetained extensionManager];
      allProviders = [extensionManager allProviders];
      v20 = [allProviders mutableCopy];

      if ([v20 count])
      {
        v21 = 0;
        v22 = 1;
        while (1)
        {
          v23 = [v20 objectAtIndexedSubscript:{v21, filterCopy}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            break;
          }

          v21 = v22++;
          if ([v20 count] <= v21)
          {
            goto LABEL_15;
          }
        }

        v29 = [v20 objectAtIndexedSubscript:v21];
        [v20 removeObjectAtIndex:v21];
        [v20 insertObject:v29 atIndex:0];
      }

LABEL_15:
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v30 addObjectsFromArray:v20];
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke_391;
      v36[3] = &unk_1E83C0658;
      v37 = toCopy;
      v38 = v16;
      selfCopy2 = self;
      v40 = v11;
      v32 = v16;
      [(FPDXPCServicer *)self dumpPlistTelemetryForProviders:v30 result:v31 providerFilter:filterCopy completionHandler:v36];
    }

    else
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      v41 = fpfs_adopt_log();
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v33 = FPPopLogSectionForBlock();
        v34 = FPInvalidParameterError();
        *buf = 134218754;
        v48 = v33;
        v49 = 2112;
        selfCopy3 = self;
        v51 = 2080;
        v52 = "[FPDXPCServicer dumpTelemetryTo:providerFilter:completionHandler:]";
        v53 = 2112;
        v54 = v34;
        _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v28 = FPInvalidParameterError();
      (*(v11 + 2))(v11, v28);

      __fp_pop_log();
    }
  }

  else
  {
    v25 = FPNotPermittedError();
    v43(v13, v25);
  }
}

void __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer dumpTelemetryTo:providerFilter:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke_391(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:&v14];
  v8 = v14;
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  [*(a1 + 40) put:v9];
  v13 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 48);
    *buf = 134218754;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2080;
    v20 = "[FPDXPCServicer dumpTelemetryTo:providerFilter:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log();
}

- (void)getPersonaForProvider:(id)provider completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  selfCopy = self;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  extensionManager = [WeakRetained extensionManager];
  allProviders = [extensionManager allProviders];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = allProviders;
  v11 = 0;
  v12 = [v10 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [identifier description];
        v18 = [v17 isEqualToString:providerCopy];

        if (v18)
        {
          descriptor = [v15 descriptor];
          personaIdentifier = [descriptor personaIdentifier];

          v11 = personaIdentifier;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v12);
  }

  v25 = fpfs_adopt_log();
  v21 = fp_current_or_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = FPPopLogSectionForBlock();
    *buf = 134219010;
    v31 = v22;
    v32 = 2112;
    v33 = selfCopy;
    v34 = 2080;
    v35 = "[FPDXPCServicer getPersonaForProvider:completionHandler:]";
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  handlerCopy[2](handlerCopy, v11, 0);
  __fp_pop_log();
}

- (void)createDatabaseCopyOutputPathForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  if ([domainCopy isUsingFPFS])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = MEMORY[0x1E695DFF8];
    fp_secureTempDirectory = [MEMORY[0x1E695DFF8] fp_secureTempDirectory];
    path = [fp_secureTempDirectory path];
    providerDomainID = [domainCopy providerDomainID];
    v12 = [path stringByAppendingPathComponent:providerDomainID];
    v13 = [v8 fileURLWithPath:v12];

    v29 = 0;
    LOBYTE(fp_secureTempDirectory) = [defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v29];
    v14 = v29;
    if (fp_secureTempDirectory)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E695DF00] now];
      [v16 timeIntervalSince1970];
      v18 = [v15 stringWithFormat:@"database-%f", v17];

      v19 = [v18 stringByReplacingOccurrencesOfString:@"." withString:@"-"];

      v20 = [v19 stringByAppendingString:@".db"];

      v21 = [v13 URLByAppendingPathComponent:v20];

      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer createDatabaseCopyOutputPathForDomain:completionHandler:];
      }

      defaultBackend = [domainCopy defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke;
      v25[3] = &unk_1E83BE428;
      v26 = domainCopy;
      v28 = handlerCopy;
      v13 = v21;
      v27 = v13;
      [defaultBackend copyDatabaseToURL:v13 completionHandler:v25];
    }

    else
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer createDatabaseCopyOutputPathForDomain:completionHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_2(a1);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) path];
    (*(v6 + 16))(v6, v7, 0);
  }
}

- (void)copyDatabaseForFPCKStartingAtPath:(id)path completionHandler:(id)handler
{
  v76[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  v6 = *MEMORY[0x1E6967568];
  v76[0] = *MEMORY[0x1E6967558];
  v76[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v70 = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke;
  v71 = &unk_1E83BE1A8;
  selfCopy = self;
  v36 = handlerCopy;
  v73 = v36;
  v8 = v7;
  v9 = v69;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:v8];

  if (v11)
  {

    v12 = dispatch_group_create();
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x3032000000;
    v67[3] = __Block_byref_object_copy__10;
    v67[4] = __Block_byref_object_dispose__10;
    v68 = objc_opt_new();
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = __Block_byref_object_copy__10;
    v65[4] = __Block_byref_object_dispose__10;
    v66 = 0;
    if (pathCopy)
    {
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
      v16 = [extensionManager domainForURL:v15 reason:0];

      dispatch_group_enter(v12);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_405;
      v60[3] = &unk_1E83C0680;
      v61 = v12;
      v63 = v65;
      v64 = v67;
      v17 = v16;
      v62 = v17;
      [(FPDXPCServicer *)self createDatabaseCopyOutputPathForDomain:v17 completionHandler:v60];

      v18 = v61;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_server);
      extensionManager2 = [WeakRetained extensionManager];
      allProviders = [extensionManager2 allProviders];
      v23 = [allProviders mutableCopy];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v18 = v23;
      v24 = [v18 countByEnumeratingWithState:&v56 objects:v75 count:16];
      if (v24)
      {
        v38 = *v57;
        do
        {
          v25 = 0;
          v39 = v24;
          do
          {
            if (*v57 != v38)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v56 + 1) + 8 * v25);
            objc_sync_enter(v26);
            domainsByID = [v26 domainsByID];
            allValues = [domainsByID allValues];
            v41 = [allValues copy];
            v40 = v25;

            objc_sync_exit(v26);
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v29 = v41;
            v30 = [v29 countByEnumeratingWithState:&v52 objects:v74 count:16];
            if (v30)
            {
              v31 = *v53;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v53 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v52 + 1) + 8 * i);
                  dispatch_group_enter(v12);
                  v47[0] = MEMORY[0x1E69E9820];
                  v47[1] = 3221225472;
                  v47[2] = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_2;
                  v47[3] = &unk_1E83C0680;
                  v34 = v12;
                  v50 = v65;
                  v51 = v67;
                  v48 = v34;
                  v49 = v33;
                  [(FPDXPCServicer *)self createDatabaseCopyOutputPathForDomain:v33 completionHandler:v47];
                }

                v30 = [v29 countByEnumeratingWithState:&v52 objects:v74 count:16];
              }

              while (v30);
            }

            v25 = v40 + 1;
          }

          while (v40 + 1 != v39);
          v24 = [v18 countByEnumeratingWithState:&v56 objects:v75 count:16];
        }

        while (v24);
      }

      v17 = v18;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_3;
    block[3] = &unk_1E83C06A8;
    v45 = v67;
    v46 = v65;
    block[4] = self;
    v44 = v36;
    dispatch_group_notify(v12, queue, block);

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v67, 8);
  }

  else
  {
    v19 = FPNotPermittedError();
    v70(v9, v19);
  }
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer copyDatabaseForFPCKStartingAtPath:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_405(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v9 = [*(a1 + 40) rootURLs];
    v11 = [v9 firstObject];
    v12 = [v11 path];
    [v10 setValue:v13 forKey:v12];
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
  objc_sync_exit(v6);
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v9 = [*(a1 + 40) rootURLs];
    v11 = [v9 firstObject];
    v12 = [v11 path];
    [v10 setValue:v13 forKeyPath:v12];
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
  objc_sync_exit(v6);
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_3(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (![*(*(a1[6] + 8) + 40) count])
  {
    v2 = *(a1[7] + 8);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 40);
      *(v2 + 40) = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967210] code:21 userInfo:0];
      v7 = *(a1[7] + 8);
      v5 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  v15 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock();
    v12 = a1[4];
    v13 = [*(*(a1[6] + 8) + 40) copy];
    v14 = *(*(a1[7] + 8) + 40);
    *buf = 134219010;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2080;
    v21 = "[FPDXPCServicer copyDatabaseForFPCKStartingAtPath:completionHandler:]_block_invoke_3";
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v9 = a1[5];
  v10 = [*(*(a1[6] + 8) + 40) copy];
  (*(v9 + 16))(v9, v10, *(*(a1[7] + 8) + 40));

  __fp_pop_log();
}

- (void)waitForChangesOnItemsBelowItemWithID:(id)d completionHandler:(id)handler
{
  v54[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v54[0] = *MEMORY[0x1E6967558];
  v54[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke;
  v43 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v45 = v10;
  v11 = v9;
  v12 = v41;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v40 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    providerDomainID = [dCopy providerDomainID];
    v18 = [extensionManager domainWithID:providerDomainID reason:&v40];

    if (v18)
    {
      defaultBackend = [v18 defaultBackend];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        defaultBackend2 = [v18 defaultBackend];
        identifier = [dCopy identifier];
        v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke_408;
        v37[3] = &unk_1E83BE1A8;
        v37[4] = self;
        v38 = v10;
        [defaultBackend2 waitForChangesOnItemsBelowItemWithIdentifier:identifier request:v23 completionHandler:v37];
      }

      else
      {
        v39 = fpfs_adopt_log();
        v29 = fp_current_or_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v35 = FPPopLogSectionForBlock();
          v36 = FPNotSupportedError();
          *buf = 134218754;
          v47 = v35;
          v48 = 2112;
          selfCopy3 = self;
          v50 = 2080;
          v51 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]";
          v52 = 2112;
          v53 = v36;
          _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v30 = FPNotSupportedError();
        (*(v10 + 2))(v10, v30);

        __fp_pop_log();
      }
    }

    else
    {
      v39 = fpfs_adopt_log();
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        providerDomainID2 = [dCopy providerDomainID];
        fp_toProviderID = [providerDomainID2 fp_toProviderID];
        v34 = FPProviderNotFoundError();
        *buf = 134218754;
        v47 = v31;
        v48 = 2112;
        selfCopy3 = self;
        v50 = 2080;
        v51 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]";
        v52 = 2112;
        v53 = v34;
        _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      providerDomainID3 = [dCopy providerDomainID];
      fp_toProviderID2 = [providerDomainID3 fp_toProviderID];
      v28 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v28);

      __fp_pop_log();
    }
  }

  else
  {
    v24 = FPNotPermittedError();
    v42(v12, v24);
  }
}

void __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke_408(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)waitForStabilizationOfDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  v46[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = *MEMORY[0x1E69675D8];
  v46[0] = *MEMORY[0x1E6967558];
  v46[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v37 = v12;
  v13 = v11;
  v14 = v33;
  connection = [(FPDXPCServicer *)self connection];
  v16 = [connection fp_hasOneOfEntitlements:v13];

  if (v16)
  {

    v32 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v19 = [extensionManager domainWithID:dCopy reason:&v32];

    if (v19)
    {
      defaultBackend = [v19 defaultBackend];
      v21 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke_409;
      v29[3] = &unk_1E83BE1A8;
      v29[4] = self;
      v30 = v12;
      [defaultBackend waitForStabilizationForRequest:v21 mode:mode completionHandler:v29];
    }

    else
    {
      v31 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        fp_toProviderID = [dCopy fp_toProviderID];
        v28 = FPProviderNotFoundError();
        *buf = 134218754;
        v39 = v26;
        v40 = 2112;
        selfCopy2 = self;
        v42 = 2080;
        v43 = "[FPDXPCServicer waitForStabilizationOfDomainWithID:mode:completionHandler:]";
        v44 = 2112;
        v45 = v28;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      fp_toProviderID2 = [dCopy fp_toProviderID];
      v25 = FPProviderNotFoundError();
      (*(v12 + 2))(v12, v25);

      __fp_pop_log();
    }
  }

  else
  {
    v22 = FPNotPermittedError();
    v34(v14, v22);
  }
}

void __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer waitForStabilizationOfDomainWithID:mode:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke_409(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer waitForStabilizationOfDomainWithID:mode:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)spotlightReindexAllItemsForBundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E69675D8];
  v29[0] = *MEMORY[0x1E6967558];
  v29[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __88__FPDXPCServicer_spotlightReindexAllItemsForBundleID_protectionClass_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v28 = v13;
  v14 = v12;
  v15 = v24;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    WeakRetained = objc_loadWeakRetained(&self->_server);
    spotlightDaemonClient = [WeakRetained spotlightDaemonClient];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__FPDXPCServicer_spotlightReindexAllItemsForBundleID_protectionClass_completionHandler___block_invoke_410;
    v22[3] = &unk_1E83BF9B0;
    v23 = v13;
    [spotlightDaemonClient reindexAllItemsForBundleID:dCopy protectionClass:classCopy acknowledgementHandler:v22];

    v20 = v23;
  }

  else
  {
    v21 = FPNotPermittedError();
    v25(v15, v21);

    v20 = v28;
  }
}

void __88__FPDXPCServicer_spotlightReindexAllItemsForBundleID_protectionClass_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer spotlightReindexAllItemsForBundleID:protectionClass:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)spotlightReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  v32[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v14 = *MEMORY[0x1E69675D8];
  v32[0] = *MEMORY[0x1E6967558];
  v32[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = __98__FPDXPCServicer_spotlightReindexItemsWithIdentifiers_bundleID_protectionClass_completionHandler___block_invoke;
  v29 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v31 = v16;
  v17 = v15;
  v18 = v27;
  connection = [(FPDXPCServicer *)self connection];
  v20 = [connection fp_hasOneOfEntitlements:v17];

  if (v20)
  {

    WeakRetained = objc_loadWeakRetained(&self->_server);
    spotlightDaemonClient = [WeakRetained spotlightDaemonClient];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__FPDXPCServicer_spotlightReindexItemsWithIdentifiers_bundleID_protectionClass_completionHandler___block_invoke_411;
    v25[3] = &unk_1E83BF9B0;
    v26 = v16;
    [spotlightDaemonClient reindexItemsWithIdentifiers:identifiersCopy bundleID:dCopy protectionClass:classCopy acknowledgementHandler:v25];

    v23 = v26;
  }

  else
  {
    v24 = FPNotPermittedError();
    v28(v18, v24);

    v23 = v31;
  }
}

void __98__FPDXPCServicer_spotlightReindexItemsWithIdentifiers_bundleID_protectionClass_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer spotlightReindexItemsWithIdentifiers:bundleID:protectionClass:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)scheduleActionOperationWithInfo:(id)info completionHandler:(id)handler
{
  v28[3] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v27 = v8;
  WeakRetained = v23;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  v28[0] = *MEMORY[0x1E6967538];
  v28[1] = v12;
  v28[2] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer scheduleActionOperationWithInfo:completionHandler:];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    operationEngine = [WeakRetained operationEngine];
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v18 = [FPDRequest requestForXPCConnection:currentConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke_412;
    v21[3] = &unk_1E83C06D0;
    v21[4] = selfCopy2;
    v19 = &v22;
    v22 = v8;
    [operationEngine scheduleActionOperationWithInfo:infoCopy request:v18 completionHandler:v21];
  }

  else
  {
    v19 = &v27;
    v20 = FPNotPermittedError();
    v24(WeakRetained, v20);
  }
}

void __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer scheduleActionOperationWithInfo:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke_412(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer scheduleActionOperationWithInfo:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)fetchDaemonOperationIDsWithCompletionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __63__FPDXPCServicer_fetchDaemonOperationIDsWithCompletionHandler___block_invoke;
  v23 = &unk_1E83BE1A8;
  selfCopy = self;
  v5 = handlerCopy;
  v25 = v5;
  v6 = v21;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v9 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v9;
  *&buf[16] = *MEMORY[0x1E6967560];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v11 = [connection fp_hasOneOfEntitlements:v10];
  if (v11)
  {

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer fetchDaemonOperationIDsWithCompletionHandler:];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    operationEngine = [WeakRetained operationEngine];
    inFlightOperations = [operationEngine inFlightOperations];
    v16 = [inFlightOperations fp_map:&__block_literal_global_417];

    v20 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v27 = "[FPDXPCServicer fetchDaemonOperationIDsWithCompletionHandler:]";
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v5 + 2))(v5, v16, 0);
    __fp_pop_log();
  }

  else
  {
    v18 = FPNotPermittedError();
    v22(v6, v18);
  }
}

void __63__FPDXPCServicer_fetchDaemonOperationIDsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchDaemonOperationIDsWithCompletionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

id __63__FPDXPCServicer_fetchDaemonOperationIDsWithCompletionHandler___block_invoke_414(uint64_t a1, void *a2)
{
  v2 = [a2 info];
  v3 = [v2 operationID];

  return v3;
}

- (void)fetchDaemonOperationWithID:(id)d completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __63__FPDXPCServicer_fetchDaemonOperationWithID_completionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v30 = handlerCopy;
  v40 = v30;
  v8 = v36;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v11 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v11;
  *&buf[16] = *MEMORY[0x1E6967560];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v13 = [connection fp_hasOneOfEntitlements:v12];
  if (v13)
  {

    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer fetchDaemonOperationWithID:completionHandler:];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    operationEngine = [WeakRetained operationEngine];
    inFlightOperations = [operationEngine inFlightOperations];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = inFlightOperations;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v47 count:16];
    if (v19)
    {
      v20 = *v33;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          info = [v22 info];
          operationID = [info operationID];
          v25 = [operationID isEqualToString:dCopy];

          if (v25)
          {
            v19 = v22;
            info2 = [v19 info];
            goto LABEL_15;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v32 objects:v47 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    info2 = 0;
LABEL_15:

    v31 = fpfs_adopt_log();
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v42 = "[FPDXPCServicer fetchDaemonOperationWithID:completionHandler:]";
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = info2;
      _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v30 + 2))(v30, v19, info2, 0);
    __fp_pop_log();
  }

  else
  {
    v27 = FPNotPermittedError();
    v37(v8, v27);
  }
}

void __63__FPDXPCServicer_fetchDaemonOperationWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219266;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchDaemonOperationWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)startAccessingExtensionForProviderDomainID:(id)d handler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v28 = 0;
    v8 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:dCopy provider:0 enumerateEntitlementRequired:1 error:&v28];
    v9 = v28;
    if (v8)
    {
      v29 = 0;
      v10 = [v8 domainOrNil:&v29];
      v11 = v10;
      if (v10)
      {
        defaultBackend = [v10 defaultBackend];
        v13 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __69__FPDXPCServicer_startAccessingExtensionForProviderDomainID_handler___block_invoke;
        v24[3] = &unk_1E83C0718;
        v24[4] = self;
        v26 = handlerCopy;
        v25 = v8;
        [defaultBackend fetchVendorEndpointWithRequest:v13 completionHandler:v24];
      }

      else
      {
        v27 = fpfs_adopt_log();
        v17 = fp_current_or_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v22 = FPPopLogSectionForBlock();
          v23 = FPProviderNotFoundError();
          *buf = 134219522;
          v31 = v22;
          v32 = 2112;
          selfCopy3 = self;
          v34 = 2080;
          v35 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]";
          v36 = 2112;
          v37 = 0;
          v38 = 2112;
          v39 = 0;
          v40 = 2112;
          v41 = 0;
          v42 = 2112;
          v43 = v23;
          _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
        }

        v18 = FPProviderNotFoundError();
        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v18);

        __fp_pop_log();
      }
    }

    else
    {
      v29 = fpfs_adopt_log();
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v21 = FPPopLogSectionForBlock();
        *buf = 134219522;
        v31 = v21;
        v32 = 2112;
        selfCopy3 = self;
        v34 = 2080;
        v35 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]";
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = 0;
        v40 = 2112;
        v41 = 0;
        v42 = 2112;
        v43 = v9;
        _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v9);
      __fp_pop_log();
    }
  }

  else
  {
    v29 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = FPPopLogSectionForBlock();
      v20 = FPInvalidParameterError();
      *buf = 134219522;
      v31 = v19;
      v32 = 2112;
      selfCopy3 = self;
      v34 = 2080;
      v35 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]";
      v36 = 2112;
      v37 = 0;
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = v20;
      _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    v15 = FPInvalidParameterError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v15);

    __fp_pop_log();
  }
}

void __69__FPDXPCServicer_startAccessingExtensionForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 40) startExtendingLifetime];
    v18 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock();
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = [v13 providerDomainID];
      *buf = 134219522;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      v24 = 2080;
      v25 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]_block_invoke";
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v8 providerDomainID];
    (*(v9 + 16))(v9, v5, v8, v10, v6);

    __fp_pop_log();
  }

  else
  {
    v19 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = FPPopLogSectionForBlock();
      v17 = *(a1 + 32);
      *buf = 134219522;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2080;
      v25 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]_block_invoke";
      v26 = 2112;
      v27 = 0;
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }
}

- (void)startAccessingOperationServiceForProviderDomainID:(id)d handler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v27 = 0;
    v8 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:dCopy provider:0 enumerateEntitlementRequired:0 error:&v27];
    v9 = v27;
    v28 = 0;
    v10 = [v8 domainOrNil:&v28];
    v11 = v10;
    if (v8)
    {
      if (v10)
      {
        v12 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __76__FPDXPCServicer_startAccessingOperationServiceForProviderDomainID_handler___block_invoke;
        v23[3] = &unk_1E83C0740;
        v23[4] = self;
        v25 = handlerCopy;
        v24 = v8;
        [v11 fetchOperationServiceOrEndpointWithRequest:v12 completionHandler:v23];
      }

      else
      {
        v26 = fpfs_adopt_log();
        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v21 = FPPopLogSectionForBlock();
          v22 = FPProviderNotFoundError();
          *buf = 134219778;
          v30 = v21;
          v31 = 2112;
          selfCopy3 = self;
          v33 = 2080;
          v34 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]";
          v35 = 2112;
          v36 = 0;
          v37 = 2112;
          v38 = 0;
          v39 = 2112;
          v40 = 0;
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = v22;
          _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
        }

        v17 = FPProviderNotFoundError();
        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v17);

        __fp_pop_log();
      }
    }

    else
    {
      v26 = fpfs_adopt_log();
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = FPPopLogSectionForBlock();
        *buf = 134219778;
        v30 = v20;
        v31 = 2112;
        selfCopy3 = self;
        v33 = 2080;
        v34 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]";
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = 0;
        v39 = 2112;
        v40 = 0;
        v41 = 2112;
        v42 = 0;
        v43 = 2112;
        v44 = v9;
        _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v9);
      __fp_pop_log();
    }
  }

  else
  {
    v28 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = FPInvalidParameterError();
      *buf = 134219778;
      v30 = v18;
      v31 = 2112;
      selfCopy3 = self;
      v33 = 2080;
      v34 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]";
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = 0;
      v39 = 2112;
      v40 = 0;
      v41 = 2112;
      v42 = 0;
      v43 = 2112;
      v44 = v19;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    v14 = FPInvalidParameterError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v14);

    __fp_pop_log();
  }
}

void __76__FPDXPCServicer_startAccessingOperationServiceForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 | v8)
  {
    [*(a1 + 40) startExtendingLifetime];
    v21 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = FPPopLogSectionForBlock();
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = [v16 providerDomainID];
      *buf = 134219778;
      v24 = v15;
      v25 = 2112;
      v26 = v17;
      v27 = 2080;
      v28 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]_block_invoke";
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [v11 providerDomainID];
    (*(v12 + 16))(v12, v7, v8, v11, v13, v9);

    __fp_pop_log();
  }

  else
  {
    v22 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = FPPopLogSectionForBlock();
      v20 = *(a1 + 32);
      *buf = 134219778;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2080;
      v28 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]_block_invoke";
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }
}

- (void)startAccessingServiceForItemID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FPDXPCServicer_startAccessingServiceForItemID_completionHandler___block_invoke;
  v10[3] = &unk_1E83C0768;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(FPDXPCServicer *)self startAccessingServiceWithName:0 itemID:dCopy domain:0 connection:currentConnection enumerateEntitlementRequired:1 completionHandler:v10];
}

void __67__FPDXPCServicer_startAccessingServiceForItemID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19 = fpfs_adopt_log();
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = FPPopLogSectionForBlock();
    v18 = *(a1 + 32);
    *buf = 134219778;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2080;
    v25 = "[FPDXPCServicer startAccessingServiceForItemID:completionHandler:]_block_invoke";
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)startAccessingServiceWithName:(id)name itemURL:(id)l completionHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lCopy = l;
  handlerCopy = handler;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v62 = __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke;
  v63 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v65 = v11;
  selfCopy2 = self;
  v13 = lCopy;
  v14 = v61;
  if (!v13)
  {
    v34 = FPInvalidParameterError();
LABEL_19:
    v40 = v34;
    v62(v14, v34);

    goto LABEL_27;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v34 = FPNotPermittedWriteError();
      goto LABEL_19;
    }
  }

  v60 = 0;
  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v22 = [extensionManager domainForURL:v13 reason:&v60];

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if ([nameCopy hasPrefix:@"com.apple.CloudDocs"] && (objc_msgSend(v22, "provider"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "identifier"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "fp_isiCloudDriveIdentifier"), v24, v23, (v25 & 1) == 0))
  {
    v59 = fpfs_adopt_log();
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v45 = FPPopLogSectionForBlock();
      v46 = FPNotSupportedError();
      *buf = 134219778;
      *&buf[4] = v45;
      v68 = 2112;
      v69 = selfCopy2;
      v70 = 2080;
      v71 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]";
      v72 = 2112;
      v73 = 0;
      v74 = 2112;
      v75 = 0;
      v76 = 2112;
      v77 = 0;
      v78 = 2112;
      v79 = 0;
      v80 = 2112;
      v81 = v46;
      _os_log_debug_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    v42 = FPNotSupportedError();
    (*(v11 + 2))(v11, 0, 0, 0, 0, v42);

    __fp_pop_log();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    extensionStorageURLs = [v22 extensionStorageURLs];
    rootURLs = [v22 rootURLs];
    v28 = [extensionStorageURLs arrayByAddingObjectsFromArray:rootURLs];

    v29 = [v28 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v29)
    {
      v30 = *v56;
      while (2)
      {
        v31 = 0;
        do
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(v28);
          }

          if ([*(*(&v55 + 1) + 8 * v31) fp_relationshipToItemAtURL:v13] == 1)
          {
            v35 = MEMORY[0x1E69673A0];
            providerDomainID = [v22 providerDomainID];
            fp_toProviderID = [providerDomainID fp_toProviderID];
            identifier = [v22 identifier];
            v39 = [v35 rootItemIDWithProviderIdentifier:fp_toProviderID domainIdentifier:identifier];

            [(FPDXPCServicer *)selfCopy2 startAccessingServiceWithName:nameCopy itemID:v39 domain:v22 connection:currentConnection enumerateEntitlementRequired:0 completionHandler:v11];
            goto LABEL_26;
          }

          ++v31;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    if (v22)
    {
      v32 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      defaultBackend = [v22 defaultBackend];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke_425;
      v50[3] = &unk_1E83BE8F0;
      v50[4] = selfCopy2;
      v54 = v11;
      v51 = nameCopy;
      v52 = v22;
      v53 = currentConnection;
      [defaultBackend itemIDForURL:v13 requireProviderItemID:0 request:v32 completionHandler:v50];
    }

    else
    {
      v59 = fpfs_adopt_log();
      v43 = fp_current_or_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v47 = FPPopLogSectionForBlock();
        v48 = FPProviderNotFoundErrorForURLWithReason();
        *buf = 134219778;
        *&buf[4] = v47;
        v68 = 2112;
        v69 = selfCopy2;
        v70 = 2080;
        v71 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]";
        v72 = 2112;
        v73 = 0;
        v74 = 2112;
        v75 = 0;
        v76 = 2112;
        v77 = 0;
        v78 = 2112;
        v79 = 0;
        v80 = 2112;
        v81 = v48;
        _os_log_debug_impl(&dword_1CEFC7000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
      }

      v44 = FPProviderNotFoundErrorForURLWithReason();
      (*(v11 + 2))(v11, 0, 0, 0, 0, v44);

      __fp_pop_log();
    }
  }

LABEL_26:

LABEL_27:
}

void __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219778;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = 0;
    v22 = 2112;
    v23 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke_425(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock();
      v10 = *(a1 + 32);
      *buf = 134219778;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2080;
      v17 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]_block_invoke";
      v18 = 2112;
      v19 = 0;
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = 0;
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  else
  {
    [*(a1 + 32) startAccessingServiceWithName:*(a1 + 40) itemID:v5 domain:*(a1 + 48) connection:*(a1 + 56) enumerateEntitlementRequired:0 completionHandler:*(a1 + 64)];
  }
}

- (void)enumerateSearchResultForRequest:(id)request providerDomainID:(id)d completionHandler:(id)handler
{
  v64[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dCopy = d;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E6967598];
  v64[0] = *MEMORY[0x1E6967558];
  v64[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v49 = __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke;
  v50 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v52 = v13;
  v14 = v12;
  v15 = v48;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    v47 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v20 = [extensionManager domainWithID:dCopy reason:&v47];

    if (v20)
    {
      if ([v20 supportsStringSearchRequest])
      {
        defaultBackend = [v20 defaultBackend];
        if (defaultBackend)
        {
          v22 = objc_alloc_init(FPDXPCDomainServicerLifetimeExtender);
          [(FPDXPCDomainServicerLifetimeExtender *)v22 setRequestEffectivePID:[(FPDXPCServicer *)self pid]];
          dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"search enumerator for %@", dCopy];
          [(FPDXPCDomainServicerLifetimeExtender *)v22 setPrettyDescription:dCopy];

          session = [v20 session];
          objc_initWeak(location, session);

          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_430;
          v44[3] = &unk_1E83BE450;
          objc_copyWeak(&v45, location);
          [(FPDXPCDomainServicerLifetimeExtender *)v22 setStopBlock:v44];
          if (!v22)
          {
            __assert_rtn("[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]", "FPDXPCServicer.m", 3883, "extender");
          }

          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_2;
          v41[3] = &unk_1E83C0790;
          v41[4] = self;
          v43 = v13;
          v25 = v22;
          v42 = v25;
          [defaultBackend enumerateSearchResultForRequest:requestCopy lifetimeExtender:v25 completionHandler:v41];

          objc_destroyWeak(&v45);
          objc_destroyWeak(location);
        }

        else
        {
          v33 = fp_current_or_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:];
          }

          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = [v34 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
          v46 = fpfs_adopt_log();
          v35 = fp_current_or_default_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v40 = FPPopLogSectionForBlock();
            *location = 134219266;
            *&location[4] = v40;
            v54 = 2112;
            selfCopy4 = self;
            v56 = 2080;
            v57 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]";
            v58 = 2112;
            v59 = 0;
            v60 = 2112;
            v61 = 0;
            v62 = 2112;
            v63 = v25;
            _os_log_debug_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
          }

          (*(v13 + 2))(v13, 0, 0, v25);
          __fp_pop_log();
        }
      }

      else
      {
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:];
        }

        v46 = fpfs_adopt_log();
        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v38 = FPPopLogSectionForBlock();
          v39 = FPNotSupportedError();
          *location = 134219266;
          *&location[4] = v38;
          v54 = 2112;
          selfCopy4 = self;
          v56 = 2080;
          v57 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]";
          v58 = 2112;
          v59 = 0;
          v60 = 2112;
          v61 = 0;
          v62 = 2112;
          v63 = v39;
          _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
        }

        v32 = FPNotSupportedError();
        (*(v13 + 2))(v13, 0, 0, v32);

        __fp_pop_log();
      }
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:];
      }

      v46 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v36 = FPPopLogSectionForBlock();
        v37 = FPProviderNotFoundError();
        *location = 134219266;
        *&location[4] = v36;
        v54 = 2112;
        selfCopy4 = self;
        v56 = 2080;
        v57 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]";
        v58 = 2112;
        v59 = 0;
        v60 = 2112;
        v61 = 0;
        v62 = 2112;
        v63 = v37;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
      }

      v29 = FPProviderNotFoundError();
      (*(v13 + 2))(v13, 0, 0, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v26 = FPNotPermittedError();
    v49(v15, v26);
  }
}

void __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219266;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_430(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterLifetimeExtensionForObject:v3];
}

void __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v11 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = a1[4];
    v10 = a1[5];
    *buf = 134219266;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2080;
    v17 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]_block_invoke_2";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(a1[6] + 16))();
  __fp_pop_log();
}

- (void)_performWithCheckedEnumerationAttributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  v8 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
  if (([attributesCopy requireSandboxAccess] & 1) != 0 || (objc_msgSend(attributesCopy, "enumeratedURL"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _performWithCheckedEnumerationAttributes:completionHandler:];
    }

    v11 = 0;
  }

  else
  {
    enumeratedItemID = [attributesCopy enumeratedItemID];
    providerID = [enumeratedItemID providerID];
    v61[0] = 0;
    v19 = [(FPDXPCServicer *)self providerForIdentifier:providerID enumerateEntitlementRequired:1 error:v61];
    v11 = v61[0];

    if (v19)
    {
      v20 = 0;
      goto LABEL_15;
    }
  }

  searchQuery = [attributesCopy searchQuery];
  if (searchQuery)
  {

    goto LABEL_9;
  }

  enumeratedItemID2 = [attributesCopy enumeratedItemID];
  identifier = [enumeratedItemID2 identifier];
  v15 = [identifier isEqual:*MEMORY[0x1E6967298]];

  if (v15)
  {
LABEL_9:
    if (v11)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v11);
    }

    else
    {
      v16 = FPNotPermittedError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);

      v11 = 0;
    }

    goto LABEL_32;
  }

  v19 = 0;
  v20 = 1;
LABEL_15:
  enumeratedURL = [attributesCopy enumeratedURL];

  if (enumeratedURL)
  {
    connection = [(FPDXPCServicer *)self connection];
    enumeratedURL2 = [attributesCopy enumeratedURL];
    v24 = [connection fp_hasSandboxAccessToFile:enumeratedURL2 accessType:*MEMORY[0x1E6966DB8] logLevel:1];

    if (v24)
    {
      v47 = v19;
      v60 = 0;
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      enumeratedURL3 = [attributesCopy enumeratedURL];
      v28 = [extensionManager domainForURL:enumeratedURL3 reason:&v60];

      if (v28)
      {
        defaultBackend = [v28 defaultBackend];
        enumeratedURL4 = [attributesCopy enumeratedURL];
        v31 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_435;
        v49[3] = &unk_1E83C0248;
        v50 = attributesCopy;
        v53 = handlerCopy;
        v51 = v28;
        v52 = v8;
        [defaultBackend itemIDForURL:enumeratedURL4 requireProviderItemID:0 request:v31 completionHandler:v49];

        enumeratedURL5 = v50;
      }

      else
      {
        enumeratedURL5 = [attributesCopy enumeratedURL];
        v46 = FPProviderNotFoundErrorForURL();
        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v46);
      }
    }

    else
    {
      v42 = fp_current_or_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _performWithCheckedEnumerationAttributes:attributesCopy completionHandler:?];
      }

      v43 = FPNotPermittedError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v43);
    }
  }

  else
  {
    v48 = v19;
    v60 = 0;
    server2 = [(FPDXPCServicer *)self server];
    extensionManager2 = [server2 extensionManager];
    enumeratedItemID3 = [attributesCopy enumeratedItemID];
    v36 = [extensionManager2 domainFromItemID:enumeratedItemID3 reason:&v60];

    v37 = v36;
    if (v36)
    {
      v38 = v48;
      if (v20)
      {
        v39 = fp_current_or_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [FPDXPCServicer _performWithCheckedEnumerationAttributes:completionHandler:];
        }

        defaultBackend2 = [v37 defaultBackend];
        enumeratedItemID4 = [attributesCopy enumeratedItemID];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke;
        v54[3] = &unk_1E83C07B8;
        v55 = attributesCopy;
        v59 = handlerCopy;
        selfCopy = self;
        v57 = v37;
        v58 = v8;
        [defaultBackend2 URLForItemID:enumeratedItemID4 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v58 completionHandler:v54];
      }

      else
      {
        defaultBackend2 = [attributesCopy enumeratedItemID];
        (*(handlerCopy + 2))(handlerCopy, v37, v8, defaultBackend2, 0);
      }
    }

    else
    {
      defaultBackend2 = [attributesCopy enumeratedItemID];
      providerDomainID = [defaultBackend2 providerDomainID];
      v45 = FPProviderNotFoundError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v45);

      v38 = v48;
    }
  }

LABEL_32:
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 url];

  if (v7)
  {
    v8 = [*(a1 + 40) connection];
    v9 = [v6 url];
    v10 = [v8 fp_hasSandboxAccessToFile:v9 accessType:*MEMORY[0x1E6966DB8] logLevel:1];

    if (v10)
    {
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) enumeratedItemID];
      (*(v11 + 16))(v11, v13, v12, v14, 0);
    }

    else
    {
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_1(v6);
      }

      v17 = *(a1 + 64);
      v18 = FPNotPermittedError();
      (*(v17 + 16))(v17, 0, 0, 0, v18);
    }
  }

  else
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_435(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (!v8 || v5)
  {
    if (!v5)
    {
      v7 = [*(a1 + 32) enumeratedURL];
      v6 = FPItemNotFoundErrorAtURL();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchAndStartEnumeratingWithSettings:(id)settings observer:(id)observer completionHandler:(id)handler
{
  settingsCopy = settings;
  observerCopy = observer;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke;
  v14[3] = &unk_1E83C0808;
  v14[4] = self;
  v15 = settingsCopy;
  v16 = observerCopy;
  v17 = handlerCopy;
  v11 = observerCopy;
  v12 = settingsCopy;
  v13 = handlerCopy;
  [(FPDXPCServicer *)self _performWithCheckedEnumerationAttributes:v12 completionHandler:v14];
}

void __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v9 || v12)
  {
    v29 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = FPPopLogSectionForBlock();
      v23 = *(a1 + 32);
      *location = 134219266;
      *&location[4] = v22;
      v31 = 2112;
      v32 = v23;
      v33 = 2080;
      v34 = "[FPDXPCServicer fetchAndStartEnumeratingWithSettings:observer:completionHandler:]_block_invoke";
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = 0;
      v39 = 2112;
      v40 = v13;
      _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v14 = [*(a1 + 40) copy];
    [v14 setEnumeratedItemID:v11];
    v15 = [[WrappedFPXEnumeratorObserverProxy alloc] initWithTarget:*(a1 + 48)];
    v16 = objc_opt_new();
    [v16 setRequestEffectivePID:{objc_msgSend(*(a1 + 32), "pid")}];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerator of %@ for %@", v14, v10];
    [v16 setPrettyDescription:v17];

    v18 = [v9 session];
    objc_initWeak(location, v18);

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_441;
    v27[3] = &unk_1E83BE450;
    objc_copyWeak(&v28, location);
    [v16 setStopBlock:v27];
    if (!v16)
    {
      __assert_rtn("[FPDXPCServicer fetchAndStartEnumeratingWithSettings:observer:completionHandler:]_block_invoke_2", "FPDXPCServicer.m", 3999, "extender");
    }

    if ([v14 wantsDirectExtensionEnumeration])
    {
      [v9 extensionBackend];
    }

    else
    {
      [v9 defaultBackend];
    }
    v20 = ;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_3;
    v24[3] = &unk_1E83C07E0;
    v24[4] = *(a1 + 32);
    v26 = *(a1 + 56);
    v21 = v16;
    v25 = v21;
    [v20 enumerateWithSettings:v14 lifetimeExtender:v21 observer:v15 completionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }
}

void __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_441(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterLifetimeExtensionForObject:v3];
}

void __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v11 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = a1[4];
    v10 = a1[5];
    *buf = 134219266;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2080;
    v17 = "[FPDXPCServicer fetchAndStartEnumeratingWithSettings:observer:completionHandler:]_block_invoke_3";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(a1[6] + 16))();
  __fp_pop_log();
}

- (void)forceIndexingInForeground:(BOOL)foreground completionHandler:(id)handler
{
  foregroundCopy = foreground;
  v21[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v21[0] = *MEMORY[0x1E6967560];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__FPDXPCServicer_forceIndexingInForeground_completionHandler___block_invoke;
  v18 = &unk_1E83BE1A8;
  selfCopy = self;
  v20 = handlerCopy;
  v8 = v7;
  v9 = &v15;
  v10 = handlerCopy;
  v11 = [(FPDXPCServicer *)self connection:v15];
  v12 = [v11 fp_hasOneOfEntitlements:v8];

  if (v12)
  {

    v13 = [[FPDDomainIndexerSchedulerAssertion alloc] initWithPID:[(FPDXPCServicer *)self pid] forceForeground:foregroundCopy];
    (*&v10->_pid)(v10, v13, 0);

    v10 = v13;
  }

  else
  {
    v14 = FPNotPermittedError();
    v17(v9, v14);
  }
}

void __62__FPDXPCServicer_forceIndexingInForeground_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer forceIndexingInForeground:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)preventDiskImportSchedulerFromRunning:(BOOL)running completionHandler:(id)handler
{
  runningCopy = running;
  v45[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v45[0] = *MEMORY[0x1E6967560];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __74__FPDXPCServicer_preventDiskImportSchedulerFromRunning_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v35 = v8;
  v9 = v7;
  v10 = v31;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [&unk_1F4C62928 countByEnumeratingWithState:&v27 objects:v44 count:16];
    if (v13)
    {
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(&unk_1F4C62928);
          }

          v16 = [FPDSharedSystemScheduler schedulerWithLabel:*(*(&v27 + 1) + 8 * i)];
          v17 = v16;
          if (!v16)
          {
            v26 = fpfs_adopt_log();
            v20 = fp_current_or_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v23 = FPPopLogSectionForBlock();
              v21 = *MEMORY[0x1E696A250];
              v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
              *buf = 134218754;
              v37 = v23;
              v38 = 2112;
              selfCopy2 = self;
              v40 = 2080;
              v41 = "[FPDXPCServicer preventDiskImportSchedulerFromRunning:completionHandler:]";
              v42 = 2112;
              v43 = v24;
              _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
            }

            else
            {
              v21 = *MEMORY[0x1E696A250];
            }

            v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v21 code:4 userInfo:0];
            (*(v8 + 2))(v8, v22);

            __fp_pop_log();
            goto LABEL_17;
          }

          [v16 setPreventRunning:runningCopy];
        }

        v13 = [&unk_1F4C62928 countByEnumeratingWithState:&v27 objects:v44 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v25 = fpfs_adopt_log();
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer preventDiskImportSchedulerFromRunning:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();
  }

  else
  {
    v19 = FPNotPermittedError();
    v32(v10, v19);
  }

LABEL_17:
}

void __74__FPDXPCServicer_preventDiskImportSchedulerFromRunning_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer preventDiskImportSchedulerFromRunning:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)pauseIndexingFor:(id)for completionHandler:(id)handler
{
  v48[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v48[0] = *MEMORY[0x1E6967558];
  v48[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v39 = v10;
  v11 = v9;
  v12 = v35;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v34 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:forCopy reason:&v34];

    if (v17)
    {
      indexer = [v17 indexer];
      v19 = indexer == 0;

      if (v19)
      {
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer pauseIndexingFor:completionHandler:];
        }

        v33 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = FPPopLogSectionForBlock();
          v30 = FPNotSupportedError();
          *buf = 134218754;
          v41 = v29;
          v42 = 2112;
          selfCopy3 = self;
          v44 = 2080;
          v45 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]";
          v46 = 2112;
          v47 = v30;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, v27);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v17 indexer];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke_456;
        v31[3] = &unk_1E83BE1A8;
        v31[4] = self;
        v32 = v10;
        [indexer2 pauseIndexingWithCompletionHandler:v31];
      }
    }

    else
    {
      v22 = FPProviderNotFoundError();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseIndexingFor:completionHandler:];
      }

      v33 = fpfs_adopt_log();
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        *buf = 134218754;
        v41 = v28;
        v42 = 2112;
        selfCopy3 = self;
        v44 = 2080;
        v45 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]";
        v46 = 2112;
        v47 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v10 + 2))(v10, v22);
      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v36(v12, v21);
  }
}

void __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke_456(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)resumeIndexingFor:(id)for completionHandler:(id)handler
{
  v48[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v48[0] = *MEMORY[0x1E6967558];
  v48[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v39 = v10;
  v11 = v9;
  v12 = v35;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v34 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:forCopy reason:&v34];

    if (v17)
    {
      indexer = [v17 indexer];
      v19 = indexer == 0;

      if (v19)
      {
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer pauseIndexingFor:completionHandler:];
        }

        v33 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = FPPopLogSectionForBlock();
          v30 = FPNotSupportedError();
          *buf = 134218754;
          v41 = v29;
          v42 = 2112;
          selfCopy3 = self;
          v44 = 2080;
          v45 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]";
          v46 = 2112;
          v47 = v30;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, v27);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v17 indexer];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke_457;
        v31[3] = &unk_1E83BE1A8;
        v31[4] = self;
        v32 = v10;
        [indexer2 resumeIndexingWithCompletionHandler:v31];
      }
    }

    else
    {
      v22 = FPProviderNotFoundError();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseIndexingFor:completionHandler:];
      }

      v33 = fpfs_adopt_log();
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        *buf = 134218754;
        v41 = v28;
        v42 = 2112;
        selfCopy3 = self;
        v44 = 2080;
        v45 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]";
        v46 = 2112;
        v47 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v10 + 2))(v10, v22);
      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v36(v12, v21);
  }
}

void __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke_457(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)dumpIndexerInfoFor:(id)for withName:(id)name to:(id)to completionHandler:(id)handler
{
  v55[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  nameCopy = name;
  toCopy = to;
  handlerCopy = handler;
  v14 = *MEMORY[0x1E69675D8];
  v55[0] = *MEMORY[0x1E6967558];
  v55[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v43 = __67__FPDXPCServicer_dumpIndexerInfoFor_withName_to_completionHandler___block_invoke;
  v44 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v46 = v16;
  v17 = v15;
  v18 = v42;
  connection = [(FPDXPCServicer *)self connection];
  v20 = [connection fp_hasOneOfEntitlements:v17];

  if (v20)
  {

    v41 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager domainWithID:forCopy reason:&v41];

    if (v23)
    {
      indexer = [v23 indexer];
      v25 = indexer == 0;

      if (v25)
      {
        v32 = fp_current_or_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer pauseIndexingFor:completionHandler:];
        }

        v40 = fpfs_adopt_log();
        v33 = fp_current_or_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v36 = FPPopLogSectionForBlock();
          v37 = FPNotSupportedError();
          *buf = 134218754;
          v48 = v36;
          v49 = 2112;
          selfCopy3 = self;
          v51 = 2080;
          v52 = "[FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:]";
          v53 = 2112;
          v54 = v37;
          _os_log_debug_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v34 = FPNotSupportedError();
        (*(v16 + 2))(v16, v34);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v23 indexer];
        [indexer2 dumpStateTo:toCopy withName:nameCopy];

        v38 = fpfs_adopt_log();
        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:];
        }

        (*(v16 + 2))(v16, 0);
        __fp_pop_log();
      }
    }

    else
    {
      v29 = FPProviderNotFoundError();
      v30 = fp_current_or_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseIndexingFor:completionHandler:];
      }

      v39 = fpfs_adopt_log();
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v35 = FPPopLogSectionForBlock();
        *buf = 134218754;
        v48 = v35;
        v49 = 2112;
        selfCopy3 = self;
        v51 = 2080;
        v52 = "[FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:]";
        v53 = 2112;
        v54 = v29;
        _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v16 + 2))(v16, v29);
      __fp_pop_log();
    }
  }

  else
  {
    v28 = FPNotPermittedError();
    v43(v18, v28);
  }
}

void __67__FPDXPCServicer_dumpIndexerInfoFor_withName_to_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)signalReindexCSIdentifiersByProviderDomainID:(id)d indexReason:(int64_t)reason completionHandler:(id)handler
{
  v46[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v46[0] = *MEMORY[0x1E6967560];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v28 = handlerCopy;
  v40 = v28;
  v9 = v8;
  v10 = v36;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = dCopy;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v31 = 0;
          server = [(FPDXPCServicer *)self server];
          extensionManager = [server extensionManager];
          v20 = [extensionManager domainWithID:v17 reason:&v31];

          if (v20)
          {
            v21 = [v13 objectForKeyedSubscript:v17];
            if ([v21 count])
            {
              defaultBackend = [v20 defaultBackend];
              v23 = defaultBackend;
              if (defaultBackend)
              {
                v30[0] = MEMORY[0x1E69E9820];
                v30[1] = 3221225472;
                v30[2] = __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458;
                v30[3] = &unk_1E83BDFC8;
                v30[4] = v17;
                [defaultBackend reindexItemsWithIndexReason:reason identifiers:v21 completionHandler:v30];
              }

              else
              {
                v24 = fp_current_or_default_log();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v42 = v17;
                  _os_log_error_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_ERROR, "[ERROR] No indexer to reindex items in domain: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v23 = fp_current_or_default_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v42 = v17;
                _os_log_error_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_ERROR, "[ERROR] Tried to reindex empty array of identifiersin domain: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v21 = fp_current_or_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v42 = v17;
              v43 = 2048;
              v44 = v31;
              _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] Failed to reindex items in domain %@, reason %lu", buf, 0x16u);
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v14);
    }

    v31 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer signalReindexCSIdentifiersByProviderDomainID:indexReason:completionHandler:];
    }

    (*(v28 + 2))(v28, 0);
    __fp_pop_log();
  }

  else
  {
    v26 = FPNotPermittedError();
    v37(v10, v26);
  }
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer signalReindexCSIdentifiersByProviderDomainID:indexReason:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_1(v3);
    }
  }

  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_2(a1, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_test_setDocIDResolutionPolicy:(BOOL)policy completionHandler:(id)handler
{
  v21[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = *MEMORY[0x1E69675D8];
  v21[0] = *MEMORY[0x1E6967558];
  v21[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __67__FPDXPCServicer__test_setDocIDResolutionPolicy_completionHandler___block_invoke;
  v18 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v20 = v8;
  v9 = v7;
  v10 = v16;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    GSSetDocIDResolutionPolicy();
    v15 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_setDocIDResolutionPolicy:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();
  }

  else
  {
    v14 = FPNotPermittedError();
    v17(v10, v14);
  }
}

void __67__FPDXPCServicer__test_setDocIDResolutionPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_setDocIDResolutionPolicy:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_getNeedsIndexingStateForRootURL:(id)l completionHandler:(id)handler
{
  v49[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v49[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __74__FPDXPCServicer__test_getNeedsIndexingStateForRootURL_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v38 = v9;
  v10 = v8;
  v11 = v34;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v16 = [extensionManager domainForURL:lCopy reason:0];
    if (v16)
    {
      v32 = fpfs_adopt_log();
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        v25 = objc_alloc(MEMORY[0x1E696AD98]);
        indexer = [v16 indexer];
        state = [indexer state];
        v28 = [v25 initWithBool:{objc_msgSend(state, "needsIndexing")}];
        *buf = 134219010;
        v40 = v31;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer _test_getNeedsIndexingStateForRootURL:completionHandler:]";
        v45 = 2112;
        v46 = v28;
        v47 = 2112;
        v48 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v18 = objc_alloc(MEMORY[0x1E696AD98]);
      indexer2 = [v16 indexer];
      state2 = [indexer2 state];
      v21 = [v18 initWithBool:{objc_msgSend(state2, "needsIndexing")}];
      (*(v9 + 2))(v9, v21, 0);

      __fp_pop_log();
    }

    else
    {
      v33 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
        *buf = 134219010;
        v40 = v29;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer _test_getNeedsIndexingStateForRootURL:completionHandler:]";
        v45 = 2112;
        v46 = v30;
        v47 = 2112;
        v48 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
      (*(v9 + 2))(v9, v24, 0);

      __fp_pop_log();
    }
  }

  else
  {
    v22 = FPNotPermittedError();
    v35(v11, v22);
  }
}

void __74__FPDXPCServicer__test_getNeedsIndexingStateForRootURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = FPPopLogSectionForBlock();
    v8 = *(a1 + 32);
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
    *buf = 134219010;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_getNeedsIndexingStateForRootURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v5 = *(a1 + 40);
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
  (*(v5 + 16))(v5, v6, v3);

  __fp_pop_log();
}

- (void)_test_retrieveItemWithName:(id)name completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  v52[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __63__FPDXPCServicer__test_retrieveItemWithName_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v41 = v9;
  v10 = v8;
  v11 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v36 = 0;
    v16 = [extensionManager providerWithIdentifier:@"com.apple.FileProvider.TestingHarness.TestFileProvider" reason:&v36];
    v17 = v16;
    if (v16)
    {
      providedItemsURLs = [v16 providedItemsURLs];
      firstObject = [providedItemsURLs firstObject];
      v20 = [firstObject URLByAppendingPathComponent:nameCopy];

      v34 = 0;
      LOBYTE(firstObject) = [@"Test" writeToURL:v20 atomically:0 encoding:4 error:&v34];
      v21 = v34;
      if (firstObject)
      {
        v33 = v21;
        v22 = [MEMORY[0x1E6967408] wrapperWithURL:v20 readonly:0 error:&v33];
        v23 = v33;

        v35 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v32 = FPPopLogSectionForBlock();
          *buf = 134219010;
          v43 = v32;
          v44 = 2112;
          selfCopy4 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]";
          v48 = 2112;
          v49 = v22;
          v50 = 2112;
          v51 = v23;
          _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        (*(v9 + 2))(v9, v22, v23);
        __fp_pop_log();

        v21 = v23;
      }

      else
      {
        v35 = fpfs_adopt_log();
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          *buf = 134219010;
          v43 = v31;
          v44 = 2112;
          selfCopy4 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v21;
          _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        (*(v9 + 2))(v9, 0, v21);
        __fp_pop_log();
      }
    }

    else
    {
      v35 = fpfs_adopt_log();
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        v43 = v29;
        v44 = 2112;
        selfCopy4 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v27 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, 0, v27);

      __fp_pop_log();
    }
  }

  else
  {
    v25 = FPNotPermittedError();
    v38(v11, v25);
  }
}

void __63__FPDXPCServicer__test_retrieveItemWithName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_callFileProviderManagerAPIs:(id)is
{
  v36[1] = *MEMORY[0x1E69E9840];
  isCopy = is;
  v36[0] = *MEMORY[0x1E69675D8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __52__FPDXPCServicer__test_callFileProviderManagerAPIs___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v6 = isCopy;
  v27 = v6;
  v7 = v5;
  v8 = v23;
  connection = [(FPDXPCServicer *)self connection];
  v10 = [connection fp_hasOneOfEntitlements:v7];

  if (v10)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v22 = 0;
    v13 = [extensionManager providerWithIdentifier:@"com.apple.FileProvider.TestingHarness.TestFileProvider" reason:&v22];
    v14 = v13;
    if (v13)
    {
      asAppExtensionBackedProvider = [v13 asAppExtensionBackedProvider];
      [asAppExtensionBackedProvider _test_callFileProviderManagerAPIs:v6];
    }

    else
    {
      v21 = fpfs_adopt_log();
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = FPPopLogSectionForBlock();
        v20 = FPProviderNotFoundError();
        *buf = 134218754;
        v29 = v19;
        v30 = 2112;
        selfCopy2 = self;
        v32 = 2080;
        v33 = "[FPDXPCServicer _test_callFileProviderManagerAPIs:]";
        v34 = 2112;
        v35 = v20;
        _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v18 = FPProviderNotFoundError();
      (*(v6 + 2))(v6, v18);

      __fp_pop_log();
    }
  }

  else
  {
    v16 = FPNotPermittedError();
    v24(v8, v16);
  }
}

void __52__FPDXPCServicer__test_callFileProviderManagerAPIs___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_callFileProviderManagerAPIs:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_callRemoveTrashedItemsOlderThanDate:(id)date completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v29[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v28 = v9;
  v10 = v8;
  v11 = v24;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v16 = [extensionManager providerWithIdentifier:@"com.apple.FileProvider.LocalStorage" reason:0];
    if ([v16 isAppExtensionReachable])
    {
      asAppExtensionBackedProvider = [v16 asAppExtensionBackedProvider];
      v18 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465;
      v21[3] = &unk_1E83BE310;
      v21[4] = self;
      v22 = v9;
      [asAppExtensionBackedProvider removeTrashedItemsOlderThanDate:dateCopy request:v18 completionHandler:v21];
    }

    else
    {
      v23 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock();
        [FPDXPCServicer _test_callRemoveTrashedItemsOlderThanDate:completionHandler:];
      }

      (*(v9 + 2))(v9, 0);
      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v25(v11, v19);
  }
}

void __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_callRemoveTrashedItemsOlderThanDate:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465(uint64_t a1)
{
  v3 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_simulateInstallOfBundleID:(id)d completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v32[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __68__FPDXPCServicer__test_simulateInstallOfBundleID_completionHandler___block_invoke;
  v28 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v30 = v9;
  v10 = v8;
  v11 = v26;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    v14 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:dCopy];
    WeakRetained = objc_loadWeakRetained(&self->_server);
    appMonitor = [WeakRetained appMonitor];

    v17 = [appMonitor valueForKey:@"defaultProviderByAppBundleID"];
    bundleIdentifier = [v14 bundleIdentifier];
    v19 = [v17 objectForKeyedSubscript:bundleIdentifier];

    v20 = [objc_alloc(MEMORY[0x1E69672B0]) initWithAppProxy:v14 providerDomainID:v19];
    appRegistry = [appMonitor appRegistry];
    v31 = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [appRegistry addApps:v22];

    v25 = fpfs_adopt_log();
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_simulateInstallOfBundleID:completionHandler:];
    }

    (*(v9 + 2))(v9, 0);
    __fp_pop_log();
  }

  else
  {
    v24 = FPNotPermittedError();
    v27(v11, v24);
  }
}

void __68__FPDXPCServicer__test_simulateInstallOfBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_simulateInstallOfBundleID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_simulateUninstallOfBundleID:(id)d completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v27[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __70__FPDXPCServicer__test_simulateUninstallOfBundleID_completionHandler___block_invoke;
  v23 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v25 = v9;
  v10 = v8;
  v11 = v21;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    WeakRetained = objc_loadWeakRetained(&self->_server);
    appMonitor = [WeakRetained appMonitor];
    appRegistry = [appMonitor appRegistry];

    v26 = dCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [appRegistry removeAppsWithBundleIDs:v17];

    v20 = fpfs_adopt_log();
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_simulateUninstallOfBundleID:completionHandler:];
    }

    (*(v9 + 2))(v9, 0);
    __fp_pop_log();
  }

  else
  {
    v19 = FPNotPermittedError();
    v22(v11, v19);
  }
}

void __70__FPDXPCServicer__test_simulateUninstallOfBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_simulateUninstallOfBundleID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_getRootSupportDirURLForDomainURL:(id)l completionHandler:(id)handler
{
  v54[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v54[0] = *MEMORY[0x1E69675D8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke;
  v42 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v44 = v8;
  v9 = v7;
  v10 = v40;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v32 = [extensionManager domainForURL:lCopy reason:0];
    if (v32)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      coordinationRootURLs = [v32 coordinationRootURLs];
      v15 = [coordinationRootURLs countByEnumeratingWithState:&v36 objects:v53 count:16];
      if (v15)
      {
        v16 = *v37;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(coordinationRootURLs);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            lastPathComponent = [v18 lastPathComponent];
            v20 = [lastPathComponent isEqualToString:@"delete"];

            if (v20)
            {
              v35 = fpfs_adopt_log();
              v23 = fp_current_or_default_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v27 = FPPopLogSectionForBlock();
                uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
                v28URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
                v29URLByDeletingLastPathComponent = [v28URLByDeletingLastPathComponent URLByDeletingLastPathComponent];
                *buf = 134218754;
                v46 = v27;
                v47 = 2112;
                selfCopy2 = self;
                v49 = 2080;
                v50 = "[FPDXPCServicer _test_getRootSupportDirURLForDomainURL:completionHandler:]";
                v51 = 2112;
                v52 = v29URLByDeletingLastPathComponent;
                _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
              }

              uRLByDeletingLastPathComponent2 = [v18 URLByDeletingLastPathComponent];
              v24URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent2 URLByDeletingLastPathComponent];
              v25URLByDeletingLastPathComponent = [v24URLByDeletingLastPathComponent URLByDeletingLastPathComponent];
              (*(v8 + 2))(v8, v25URLByDeletingLastPathComponent);

              __fp_pop_log();
              goto LABEL_19;
            }
          }

          v15 = [coordinationRootURLs countByEnumeratingWithState:&v36 objects:v53 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

    v34 = fpfs_adopt_log();
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_getRootSupportDirURLForDomainURL:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();

LABEL_19:
  }

  else
  {
    v22 = FPNotPermittedError();
    v41(v10, v22);
  }
}

void __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_getDBOptions:(id)options completionHandler:(id)handler
{
  v44[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v44[0] = *MEMORY[0x1E6967558];
  v44[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke;
  v31 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v33 = v10;
  v11 = v9;
  v12 = v29;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v28 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:optionsCopy reason:&v28];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke_474;
      v25[3] = &unk_1E83C0830;
      v25[4] = self;
      v26 = v10;
      [defaultBackend getDBOptionsWithCompletionHandler:v25];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v27 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = FPPopLogSectionForBlock();
        v24 = FPProviderNotFoundError();
        *buf = 134219010;
        v35 = v23;
        v36 = 2112;
        selfCopy2 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer _test_getDBOptions:completionHandler:]";
        v40 = 1024;
        v41 = 0;
        v42 = 2112;
        v43 = v24;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
      }

      v22 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v22);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v30(v12, v19);
  }
}

void __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_getDBOptions:completionHandler:]_block_invoke";
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke_474(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v9 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = FPPopLogSectionForBlock();
    v8 = *(a1 + 32);
    *buf = 134219010;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2080;
    v15 = "[FPDXPCServicer _test_getDBOptions:completionHandler:]_block_invoke";
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %ld, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_getCountersArray:(id)array completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainWithID:arrayCopy reason:0];

  if (v10)
  {
    defaultBackend = [v10 defaultBackend];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__FPDXPCServicer__test_getCountersArray_completionHandler___block_invoke;
    v14[3] = &unk_1E83BE3D8;
    v14[4] = self;
    v15 = handlerCopy;
    [defaultBackend getCountersArrayWithCompletionHandler:v14];
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _test_getDBOptions:completionHandler:];
    }

    v16 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_getCountersArray:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    __fp_pop_log();
  }
}

void __59__FPDXPCServicer__test_getCountersArray_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v12 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = FPPopLogSectionForBlock();
      v9 = *(a1 + 32);
      *buf = 134219010;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2080;
      v18 = "[FPDXPCServicer _test_getCountersArray:completionHandler:]_block_invoke";
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    v12 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock();
      v11 = *(a1 + 32);
      *buf = 134219010;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2080;
      v18 = "[FPDXPCServicer _test_getCountersArray:completionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_resetCounters:(id)counters completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  countersCopy = counters;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainWithID:countersCopy reason:0];

  if (v10)
  {
    defaultBackend = [v10 defaultBackend];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__FPDXPCServicer__test_resetCounters_completionHandler___block_invoke;
    v14[3] = &unk_1E83BE1A8;
    v14[4] = self;
    v15 = handlerCopy;
    [defaultBackend resetCountersWithCompletionHandler:v14];
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _test_getDBOptions:completionHandler:];
    }

    v16 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_resetCounters:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
    __fp_pop_log();
  }
}

void __56__FPDXPCServicer__test_resetCounters_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_resetCounters:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_queryDiskImportSchedulerLabel:(id)label completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainWithID:labelCopy reason:0];

  if (v10)
  {
    defaultBackend = [v10 defaultBackend];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__FPDXPCServicer__test_queryDiskImportSchedulerLabel_completionHandler___block_invoke;
    v14[3] = &unk_1E83C0858;
    v14[4] = self;
    v15 = handlerCopy;
    [defaultBackend queryDiskImportSchedulerLabelWithCompletionHandler:v14];
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _test_getDBOptions:completionHandler:];
    }

    v16 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_queryDiskImportSchedulerLabel:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    __fp_pop_log();
  }
}

void __72__FPDXPCServicer__test_queryDiskImportSchedulerLabel_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_queryDiskImportSchedulerLabel:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_importItemsPendingReconciliationProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v49[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v49[0] = *MEMORY[0x1E6967558];
  v49[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v38 = v10;
  v11 = v9;
  v12 = v34;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v33 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v33];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke_478;
        v30[3] = &unk_1E83C04F0;
        v30[4] = self;
        v31 = v10;
        [defaultBackend2 importProgressForItemsPendingReconciliationWithCompletionHandler:v30];
      }

      else
      {
        v32 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v28 = FPPopLogSectionForBlock();
          v29 = FPNotSupportedError();
          *buf = 134219010;
          v40 = v28;
          v41 = 2112;
          selfCopy3 = self;
          v43 = 2080;
          v44 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v29;
          _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v25 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v25);

        __fp_pop_log();
      }
    }

    else
    {
      v32 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = FPProviderNotFoundError();
        *buf = 134219010;
        v40 = v26;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]";
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v27;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v35(v12, v21);
  }
}

void __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke_478(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_importItemsPendingScanningDiskProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v49[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v49[0] = *MEMORY[0x1E6967558];
  v49[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v38 = v10;
  v11 = v9;
  v12 = v34;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v33 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v33];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke_481;
        v30[3] = &unk_1E83C04F0;
        v30[4] = self;
        v31 = v10;
        [defaultBackend2 importProgressForItemsPendingScanningDiskWithCompletionHandler:v30];
      }

      else
      {
        v32 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v28 = FPPopLogSectionForBlock();
          v29 = FPNotSupportedError();
          *buf = 134219010;
          v40 = v28;
          v41 = 2112;
          selfCopy3 = self;
          v43 = 2080;
          v44 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v29;
          _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v25 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v25);

        __fp_pop_log();
      }
    }

    else
    {
      v32 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = FPProviderNotFoundError();
        *buf = 134219010;
        v40 = v26;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]";
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v27;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v35(v12, v21);
  }
}

void __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke_481(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_importItemsPendingScanningProviderProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v49[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v49[0] = *MEMORY[0x1E6967558];
  v49[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v38 = v10;
  v11 = v9;
  v12 = v34;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v33 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v33];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke_484;
        v30[3] = &unk_1E83C04F0;
        v30[4] = self;
        v31 = v10;
        [defaultBackend2 importProgressForItemsPendingScanningProviderWithCompletionHandler:v30];
      }

      else
      {
        v32 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v28 = FPPopLogSectionForBlock();
          v29 = FPNotSupportedError();
          *buf = 134219010;
          v40 = v28;
          v41 = 2112;
          selfCopy3 = self;
          v43 = 2080;
          v44 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v29;
          _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v25 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v25);

        __fp_pop_log();
      }
    }

    else
    {
      v32 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = FPProviderNotFoundError();
        *buf = 134219010;
        v40 = v26;
        v41 = 2112;
        selfCopy3 = self;
        v43 = 2080;
        v44 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]";
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v27;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v35(v12, v21);
  }
}

void __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke_484(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_disableDBQueryStatistics:(id)statistics completionHandler:(id)handler
{
  v42[2] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v42[0] = *MEMORY[0x1E6967558];
  v42[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke;
  v31 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v33 = v10;
  v11 = v9;
  v12 = v29;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v28 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:statisticsCopy reason:&v28];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke_485;
      v25[3] = &unk_1E83BE1A8;
      v25[4] = self;
      v26 = v10;
      [defaultBackend disableDBQueryStatisticsWithCompletionHandler:v25];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v27 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = FPPopLogSectionForBlock();
        v24 = FPProviderNotFoundError();
        *buf = 134218754;
        v35 = v23;
        v36 = 2112;
        selfCopy2 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer _test_disableDBQueryStatistics:completionHandler:]";
        v40 = 2112;
        v41 = v24;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v22 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v22);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v30(v12, v19);
  }
}

void __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_disableDBQueryStatistics:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke_485(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_disableDBQueryStatistics:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_resetDBQueryStatistics:(id)statistics completionHandler:(id)handler
{
  v42[2] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v42[0] = *MEMORY[0x1E6967558];
  v42[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke;
  v31 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v33 = v10;
  v11 = v9;
  v12 = v29;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v28 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:statisticsCopy reason:&v28];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke_486;
      v25[3] = &unk_1E83BE1A8;
      v25[4] = self;
      v26 = v10;
      [defaultBackend resetDBQueryStatisticsWithCompletionHandler:v25];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v27 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = FPPopLogSectionForBlock();
        v24 = FPProviderNotFoundError();
        *buf = 134218754;
        v35 = v23;
        v36 = 2112;
        selfCopy2 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer _test_resetDBQueryStatistics:completionHandler:]";
        v40 = 2112;
        v41 = v24;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v22 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v22);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v30(v12, v19);
  }
}

void __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_resetDBQueryStatistics:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke_486(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_resetDBQueryStatistics:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_getDBQueryStatistics:(id)statistics queryPlan:(BOOL)plan completionHandler:(id)handler
{
  planCopy = plan;
  v46[2] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  handlerCopy = handler;
  v10 = *MEMORY[0x1E69675D8];
  v46[0] = *MEMORY[0x1E6967558];
  v46[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __73__FPDXPCServicer__test_getDBQueryStatistics_queryPlan_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v35 = v12;
  v13 = v11;
  v14 = v31;
  connection = [(FPDXPCServicer *)self connection];
  v16 = [connection fp_hasOneOfEntitlements:v13];

  if (v16)
  {

    v30 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v19 = [extensionManager domainWithID:statisticsCopy reason:&v30];

    if (v19)
    {
      defaultBackend = [v19 defaultBackend];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __73__FPDXPCServicer__test_getDBQueryStatistics_queryPlan_completionHandler___block_invoke_487;
      v27[3] = &unk_1E83BE400;
      v27[4] = self;
      v28 = v12;
      [defaultBackend getDBQueryStatisticsWithQueryPlan:planCopy completionHandler:v27];
    }

    else
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v29 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        v26 = FPProviderNotFoundError();
        *buf = 134219010;
        v37 = v25;
        v38 = 2112;
        selfCopy2 = self;
        v40 = 2080;
        v41 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]";
        v42 = 2112;
        v43 = 0;
        v44 = 2112;
        v45 = v26;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = FPProviderNotFoundError();
      (*(v12 + 2))(v12, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v32(v14, v21);
  }
}

void __73__FPDXPCServicer__test_getDBQueryStatistics_queryPlan_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __73__FPDXPCServicer__test_getDBQueryStatistics_queryPlan_completionHandler___block_invoke_487(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v12 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = FPPopLogSectionForBlock();
      v9 = *(a1 + 32);
      *buf = 134219010;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2080;
      v18 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]_block_invoke";
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    v12 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock();
      v11 = *(a1 + 32);
      *buf = 134219010;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2080;
      v18 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_triggerDatabaseError:(id)error domain:(id)domain completionHandler:(id)handler
{
  v53[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domainCopy = domain;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E69675D8];
  v53[0] = *MEMORY[0x1E6967558];
  v53[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke;
  v42 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v44 = v13;
  v14 = v12;
  v15 = v40;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    v39 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v20 = [extensionManager domainWithID:domainCopy reason:&v39];

    if (v20)
    {
      defaultBackend = [v20 defaultBackend];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        defaultBackend2 = [v20 defaultBackend];
        connection2 = [(FPDXPCServicer *)self connection];
        v25 = [FPDRequest requestForXPCConnection:connection2];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke_490;
        v36[3] = &unk_1E83BE1A8;
        v36[4] = self;
        v37 = v13;
        [defaultBackend2 triggerDatabaseError:errorCopy request:v25 completionHandler:v36];
      }

      else
      {
        v38 = fpfs_adopt_log();
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v34 = FPPopLogSectionForBlock();
          v35 = FPNotSupportedError();
          *buf = 134218754;
          v46 = v34;
          v47 = 2112;
          selfCopy3 = self;
          v49 = 2080;
          v50 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]";
          v51 = 2112;
          v52 = v35;
          _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v31 = FPNotSupportedError();
        (*(v13 + 2))(v13, v31);

        __fp_pop_log();
      }
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v38 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        v33 = FPProviderNotFoundError();
        *buf = 134218754;
        v46 = v32;
        v47 = 2112;
        selfCopy3 = self;
        v49 = 2080;
        v50 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]";
        v51 = 2112;
        v52 = v33;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v29 = FPProviderNotFoundError();
      (*(v13 + 2))(v13, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v26 = FPNotPermittedError();
    v41(v15, v26);
  }
}

void __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke_490(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_purgerBarrierWithCompletionHandler:(id)handler
{
  v22[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = *MEMORY[0x1E69675D8];
  v22[0] = *MEMORY[0x1E6967558];
  v22[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke;
  v19 = &unk_1E83BE1A8;
  selfCopy = self;
  v7 = handlerCopy;
  v21 = v7;
  v8 = v6;
  v9 = v17;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:v8];

  if (v11)
  {

    server = [(FPDXPCServicer *)self server];
    v8 = [objc_msgSend(server "fpdPurgerClass")];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491;
    v15[3] = &unk_1E83BE310;
    v15[4] = self;
    v13 = &v16;
    v16 = v7;
    [v8 barrierWithCompletionHandler:v15];
  }

  else
  {
    v13 = &v21;
    v14 = FPNotPermittedError();
    v18(v9, v14);

    server = v8;
  }
}

void __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_purgerBarrierWithCompletionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491(uint64_t a1)
{
  v3 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_test_isDiskSpaceMonitorRunningForDomain:(id)domain completionHandler:(id)handler
{
  v47[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v47[0] = *MEMORY[0x1E6967558];
  v47[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __77__FPDXPCServicer__test_isDiskSpaceMonitorRunningForDomain_completionHandler___block_invoke;
  v34 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v36 = v10;
  v11 = v9;
  v12 = v32;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v31 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:domainCopy reason:&v31];

    if (v17)
    {
      v29 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v24 = FPPopLogSectionForBlock();
        volume = [v17 volume];
        isDiskSpaceMonitorRunning = [volume isDiskSpaceMonitorRunning];
        *buf = 134219010;
        v38 = v24;
        v39 = 2112;
        selfCopy3 = self;
        v41 = 2080;
        v42 = "[FPDXPCServicer _test_isDiskSpaceMonitorRunningForDomain:completionHandler:]";
        v43 = 1024;
        v44 = isDiskSpaceMonitorRunning;
        v45 = 2112;
        v46 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
      }

      volume2 = [v17 volume];
      (*(v10 + 2))(v10, [volume2 isDiskSpaceMonitorRunning], 0);

      __fp_pop_log();
    }

    else
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v30 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v27 = FPPopLogSectionForBlock();
        v28 = FPProviderNotFoundError();
        *buf = 134219010;
        v38 = v27;
        v39 = 2112;
        selfCopy3 = self;
        v41 = 2080;
        v42 = "[FPDXPCServicer _test_isDiskSpaceMonitorRunningForDomain:completionHandler:]";
        v43 = 1024;
        v44 = 0;
        v45 = 2112;
        v46 = v28;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v20 = FPNotPermittedError();
    v33(v12, v20);
  }
}

void __77__FPDXPCServicer__test_isDiskSpaceMonitorRunningForDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer _test_isDiskSpaceMonitorRunningForDomain:completionHandler:]_block_invoke";
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (id)getSyncPausedXattrForURL:(id)l
{
  lCopy = l;
  v4 = getxattr([lCopy fileSystemRepresentation], "com.apple.file-provider-sync_paused_bundle_id#PX", 0, 0, 0, 1);
  if (v4 < 0)
  {
    if (*__error() != 93)
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer getSyncPausedXattrForURL:];
      }
    }

    v8 = 0;
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      v6 = malloc_type_malloc(v4, 0xB150B3D4uLL);
      v7 = getxattr([lCopy fileSystemRepresentation], "com.apple.file-provider-sync_paused_bundle_id#PX", v6, v5, 0, 1);
      if (v7 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:v7 encoding:4];
      }

      free(v6);
    }

    else
    {
      v8 = &stru_1F4C2FFD0;
    }
  }

  return v8;
}

- (void)pauseSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v68 = __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke;
  v69 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v71 = v13;
  selfCopy2 = self;
  v15 = lCopy;
  v16 = v67;
  if (!v15)
  {
    v31 = FPInvalidParameterError();
LABEL_15:
    v35 = v31;
    v68(v16, v31);

    goto LABEL_32;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v18 = [connection fp_hasSandboxAccessToFile:v15 logLevel:0];

  if ((v18 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v21 = [connection2 fp_hasOneOfEntitlements:v20 nonSandboxedAccess:0 logLevel:0];

    if ((v21 & 1) == 0)
    {
      v31 = FPNotPermittedWriteError();
      goto LABEL_15;
    }
  }

  v22 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.pauseSync"];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
  [(FPDCoreAnalyticsReport *)v22 addValue:v23 forKey:@"behavior"];

  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  if ([fp_bundleIdentifier length])
  {
    connection3 = [(FPDXPCServicer *)selfCopy2 connection];
    v72 = *MEMORY[0x1E6967558];
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v28 = [connection3 fp_hasOneOfEntitlements:v27];

    if (v28)
    {
      if (dCopy)
      {
        v29 = dCopy;

        v30 = &unk_1F4C62A48;
        fp_bundleIdentifier = v29;
      }

      else
      {
        v30 = &unk_1F4C62A48;
      }
    }

    else
    {
      v30 = &unk_1F4C62A30;
    }

    [(FPDCoreAnalyticsReport *)v22 addValue:v30 forKey:@"debug"];
    [(FPDCoreAnalyticsReport *)v22 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
    v36 = [(FPDXPCServicer *)selfCopy2 getSyncPausedXattrForURL:v15];
    if (v36)
    {
      v37 = fp_current_or_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:];
      }

      [(FPDCoreAnalyticsReport *)v22 addValue:v36 forKey:@"alreadyPausedBundleID"];
      v38 = FPFileIsAlreadyPausedError_internal();
      v39 = FPTelemetryParsedError();
      [(FPDCoreAnalyticsReport *)v22 addValue:v39 forKey:@"error"];

      [(FPDCoreAnalyticsReport *)v22 sendReport];
      v66 = fpfs_adopt_log();
      v40 = fp_current_or_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v52 = FPPopLogSectionForBlock();
        v53 = FPFileIsAlreadyPausedError();
        *buf = 134218754;
        *&buf[4] = v52;
        v74 = 2112;
        v75 = selfCopy2;
        v76 = 2080;
        v77 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]";
        v78 = 2112;
        v79 = v53;
        _os_log_debug_impl(&dword_1CEFC7000, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v41 = FPFileIsAlreadyPausedError();
      (*(v13 + 2))(v13, v41);

      __fp_pop_log();
    }

    else
    {
      server = [(FPDXPCServicer *)selfCopy2 server];
      extensionManager = [server extensionManager];
      v59 = [extensionManager domainForURL:v15 reason:0];

      provider = [v59 provider];
      identifier = [provider identifier];
      [(FPDCoreAnalyticsReport *)v22 addValue:identifier forKey:@"provider"];

      defaultBackend = [v59 defaultBackend];
      LOBYTE(provider) = objc_opt_respondsToSelector();

      if (provider)
      {
        v58 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        defaultBackend2 = [v59 defaultBackend];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_517;
        v60[3] = &unk_1E83C08A8;
        v61 = v59;
        v62 = v22;
        v63 = selfCopy2;
        v65 = v13;
        v64 = fp_bundleIdentifier;
        [defaultBackend2 pauseSyncForItemAtURL:v15 bundleID:v64 behavior:behavior request:v58 completionHandler:v60];
      }

      else
      {
        v48 = FPNotSupportedError();
        v49 = FPTelemetryParsedError();
        [(FPDCoreAnalyticsReport *)v22 addValue:v49 forKey:@"error"];

        [(FPDCoreAnalyticsReport *)v22 sendReport];
        v66 = fpfs_adopt_log();
        v50 = fp_current_or_default_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v56 = FPPopLogSectionForBlock();
          v57 = FPNotSupportedError();
          *buf = 134218754;
          *&buf[4] = v56;
          v74 = 2112;
          v75 = selfCopy2;
          v76 = 2080;
          v77 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]";
          v78 = 2112;
          v79 = v57;
          _os_log_debug_impl(&dword_1CEFC7000, v50, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v51 = FPNotSupportedError();
        (*(v13 + 2))(v13, v51);

        __fp_pop_log();
      }
    }
  }

  else
  {
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:];
    }

    v66 = fpfs_adopt_log();
    v33 = fp_current_or_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v54 = FPPopLogSectionForBlock();
      v55 = FPNotSupportedError();
      *buf = 134218754;
      *&buf[4] = v54;
      v74 = 2112;
      v75 = selfCopy2;
      v76 = 2080;
      v77 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]";
      v78 = 2112;
      v79 = v55;
      _os_log_debug_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v34 = FPNotSupportedError();
    (*(v13 + 2))(v13, v34);

    __fp_pop_log();
  }

LABEL_32:
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_517(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83C0880;
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 64);
  v16 = v5;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    v4 = *MEMORY[0x1E696A250];
    if ([v3 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v9 = [*(a1 + 32) domain];
      v10 = [v9 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v10)
      {
        v12 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A278];
        v13 = [*(a1 + 32) localizedDescription];
        v32[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v11 = [v12 errorWithDomain:v4 code:512 userInfo:v14];

        goto LABEL_10;
      }
    }

    v11 = *(a1 + 32);
LABEL_10:
    v15 = *(a1 + 40);
    v16 = FPTelemetryParsedError();
    [v15 addValue:v16 forKey:@"error"];

    [*(a1 + 40) sendReport];
    v21 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 48);
      *buf = 134218754;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2080;
      v28 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke_2";
      v29 = 2112;
      v30 = v11;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
    __fp_pop_log();

    return;
  }

  [*(a1 + 40) addValue:@"success" forKey:@"error"];
  [*(a1 + 40) sendReport];
  v5 = [*(a1 + 48) server];
  v6 = [v5 extensionManager];
  v22 = *(a1 + 56);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v6 setPausedSyncItemID:v7 forBundleID:*(a1 + 64)];

  v20 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 72) + 16))();
  __fp_pop_log();
}

- (void)resumeSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler
{
  v75[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v64 = __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke;
  v65 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v67 = v12;
  selfCopy2 = self;
  v14 = lCopy;
  v15 = v63;
  if (!v14)
  {
    v30 = FPInvalidParameterError();
LABEL_10:
    v31 = v30;
    v64(v15, v30);

    goto LABEL_28;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v17 = [connection fp_hasSandboxAccessToFile:v14 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v17 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v20 = [connection2 fp_hasOneOfEntitlements:v19 nonSandboxedAccess:0 logLevel:0];

    if ((v20 & 1) == 0)
    {
      v30 = FPNotPermittedError();
      goto LABEL_10;
    }
  }

  v21 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.resumeSync"];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
  [(FPDCoreAnalyticsReport *)v21 addValue:v22 forKey:@"behavior"];

  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v75[0] = *MEMORY[0x1E6967558];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
  v27 = [connection3 fp_hasOneOfEntitlements:v26];

  if (v27)
  {
    if (dCopy)
    {
      v28 = dCopy;

      v29 = &unk_1F4C62A48;
      fp_bundleIdentifier = v28;
    }

    else
    {
      v29 = &unk_1F4C62A48;
    }
  }

  else
  {
    v29 = &unk_1F4C62A30;
  }

  [(FPDCoreAnalyticsReport *)v21 addValue:v29 forKey:@"debug"];
  [(FPDCoreAnalyticsReport *)v21 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
  v32 = [(FPDXPCServicer *)selfCopy2 getSyncPausedXattrForURL:v14];
  v33 = v32;
  if (v32 && ([v32 isEqualToString:fp_bundleIdentifier] & 1) != 0)
  {
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v54 = [extensionManager domainForURL:v14 reason:0];

    provider = [v54 provider];
    identifier = [provider identifier];
    [(FPDCoreAnalyticsReport *)v21 addValue:identifier forKey:@"provider"];

    defaultBackend = [v54 defaultBackend];
    LOBYTE(provider) = objc_opt_respondsToSelector();

    if (provider)
    {
      v39 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      defaultBackend2 = [v54 defaultBackend];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_529;
      v56[3] = &unk_1E83C08A8;
      v57 = v54;
      v58 = v21;
      v59 = selfCopy2;
      v61 = v12;
      v60 = fp_bundleIdentifier;
      [defaultBackend2 resumeSyncForItemAtURL:v14 bundleID:v60 behavior:behavior request:v39 completionHandler:v56];
    }

    else
    {
      v46 = FPNotSupportedError();
      v47 = FPTelemetryParsedError();
      [(FPDCoreAnalyticsReport *)v21 addValue:v47 forKey:@"error"];

      [(FPDCoreAnalyticsReport *)v21 sendReport];
      v62 = fpfs_adopt_log();
      v48 = fp_current_or_default_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v52 = FPPopLogSectionForBlock();
        v53 = FPNotSupportedError();
        *buf = 134218754;
        *&buf[4] = v52;
        v69 = 2112;
        v70 = selfCopy2;
        v71 = 2080;
        v72 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]";
        v73 = 2112;
        v74 = v53;
        _os_log_debug_impl(&dword_1CEFC7000, v48, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v49 = FPNotSupportedError();
      (*(v12 + 2))(v12, v49);

      __fp_pop_log();
    }
  }

  else
  {
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:];
    }

    v42 = FPFileNotPausedError_internal();
    v43 = FPTelemetryParsedError();
    [(FPDCoreAnalyticsReport *)v21 addValue:v43 forKey:@"error"];

    if (v33)
    {
      [(FPDCoreAnalyticsReport *)v21 addValue:v33 forKey:@"mismatchedPausedBundleID"];
    }

    [(FPDCoreAnalyticsReport *)v21 sendReport];
    v62 = fpfs_adopt_log();
    v44 = fp_current_or_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v50 = FPPopLogSectionForBlock();
      v51 = FPFileNotPausedError();
      *buf = 134218754;
      *&buf[4] = v50;
      v69 = 2112;
      v70 = selfCopy2;
      v71 = 2080;
      v72 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]";
      v73 = 2112;
      v74 = v51;
      _os_log_debug_impl(&dword_1CEFC7000, v44, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v45 = FPFileNotPausedError();
    (*(v12 + 2))(v12, v45);

    __fp_pop_log();
  }

LABEL_28:
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_529(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83C0880;
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 64);
  v16 = v5;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    v4 = *MEMORY[0x1E696A250];
    if ([v3 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v9 = [*(a1 + 32) domain];
      v10 = [v9 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v10)
      {
        v12 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A278];
        v13 = [*(a1 + 32) localizedDescription];
        v32[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v11 = [v12 errorWithDomain:v4 code:512 userInfo:v14];

        goto LABEL_10;
      }
    }

    v11 = *(a1 + 32);
LABEL_10:
    v15 = *(a1 + 40);
    v16 = FPTelemetryParsedError();
    [v15 addValue:v16 forKey:@"error"];

    [*(a1 + 40) sendReport];
    v21 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 48);
      *buf = 134218754;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2080;
      v28 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke_2";
      v29 = 2112;
      v30 = v11;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
    __fp_pop_log();

    return;
  }

  [*(a1 + 40) addValue:@"success" forKey:@"error"];
  [*(a1 + 40) sendReport];
  v5 = [*(a1 + 48) server];
  v6 = [v5 extensionManager];
  v22 = *(a1 + 56);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v6 removePausedSyncItemID:v7 forBundleID:*(a1 + 64)];

  v20 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 72) + 16))();
  __fp_pop_log();
}

- (void)fetchLatestVersionForItemAtURL:(id)l bundleID:(id)d completionHandler:(id)handler
{
  v67[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v52 = __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke;
  v53 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v55 = v11;
  selfCopy2 = self;
  v13 = lCopy;
  v14 = v51;
  if (!v13)
  {
    v28 = FPInvalidParameterError();
LABEL_10:
    v29 = v28;
    v52(v14, v28);

    goto LABEL_18;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v28 = FPNotPermittedError();
      goto LABEL_10;
    }
  }

  v20 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.fetchLatestVersion"];
  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v67[0] = *MEMORY[0x1E6967558];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
  v25 = [connection3 fp_hasOneOfEntitlements:v24];

  if (v25)
  {
    if (dCopy)
    {
      v26 = dCopy;

      v27 = &unk_1F4C62A48;
      fp_bundleIdentifier = v26;
    }

    else
    {
      v27 = &unk_1F4C62A48;
    }
  }

  else
  {
    v27 = &unk_1F4C62A30;
  }

  [(FPDCoreAnalyticsReport *)v20 addValue:v27 forKey:@"debug"];
  [(FPDCoreAnalyticsReport *)v20 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v32 = [extensionManager domainForURL:v13 reason:0];

  provider = [v32 provider];
  identifier = [provider identifier];
  [(FPDCoreAnalyticsReport *)v20 addValue:identifier forKey:@"provider"];

  v35 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
  defaultBackend = [v32 defaultBackend];
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    defaultBackend2 = [v32 defaultBackend];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke_535;
    v46[3] = &unk_1E83C08D0;
    v47 = v20;
    v48 = selfCopy2;
    v49 = v11;
    [defaultBackend2 fetchLatestVersionForURL:v13 request:v35 completionHandler:v46];
  }

  else
  {
    v39 = FPNotSupportedError();
    v40 = FPTelemetryParsedError();
    [(FPDCoreAnalyticsReport *)v20 addValue:v40 forKey:@"error"];

    [(FPDCoreAnalyticsReport *)v20 sendReport];
    v50 = fpfs_adopt_log();
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v43 = FPPopLogSectionForBlock();
      v44 = FPNotSupportedError();
      *buf = 134219266;
      *&buf[4] = v43;
      v57 = 2112;
      v58 = selfCopy2;
      v59 = 2080;
      v60 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]";
      v61 = 2112;
      v62 = 0;
      v63 = 2112;
      v64 = 0;
      v65 = 2112;
      v66 = v44;
      v45 = v44;
      _os_log_debug_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v42 = FPNotSupportedError();
    (*(v11 + 2))(v11, 0, 0, v42);

    __fp_pop_log();
  }

LABEL_18:
}

void __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219266;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke_535(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 domain];
    v12 = *MEMORY[0x1E696A250];
    if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v14 = [v10 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v15)
      {
        v17 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A278];
        v18 = [v10 localizedDescription];
        v42[0] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
        v16 = [v17 errorWithDomain:v12 code:512 userInfo:v19];

        goto LABEL_10;
      }
    }

    v16 = v10;
LABEL_10:
    v20 = *(a1 + 32);
    v21 = FPTelemetryParsedError();
    [v20 addValue:v21 forKey:@"error"];

    [*(a1 + 32) sendReport];
    v28 = fpfs_adopt_log();
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = FPPopLogSectionForBlock();
      v24 = *(a1 + 40);
      *buf = 134219266;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2080;
      v34 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]_block_invoke";
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = 0;
      v39 = 2112;
      v40 = v16;
      _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();

    goto LABEL_13;
  }

  [*(a1 + 32) addValue:@"success" forKey:@"error"];
  [*(a1 + 32) sendReport];
  v27 = fpfs_adopt_log();
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v25 = FPPopLogSectionForBlock();
    v26 = *(a1 + 40);
    *buf = 134219266;
    v30 = v25;
    v31 = 2112;
    v32 = v26;
    v33 = 2080;
    v34 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]_block_invoke";
    v35 = 2112;
    v36 = v7;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

LABEL_13:
}

- (void)uploadLocalVersionOfItemAtURL:(id)l bundleID:(id)d conflictResolutionPolicy:(int64_t)policy completionHandler:(id)handler
{
  v102[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v87 = __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke;
  v88 = &unk_1E83BE1A8;
  selfCopy = self;
  v80 = handlerCopy;
  v90 = v80;
  selfCopy2 = self;
  v13 = lCopy;
  v14 = v86;
  if (!v13)
  {
    v29 = FPInvalidParameterError();
LABEL_10:
    v30 = v29;
    v87(v14, v29);

    goto LABEL_40;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v29 = FPNotPermittedError();
      goto LABEL_10;
    }
  }

  v20 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.uploadLocalVersion"];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:policy];
  [(FPDCoreAnalyticsReport *)v20 addValue:v21 forKey:@"behavior"];

  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v102[0] = *MEMORY[0x1E6967558];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:1];
  v26 = [connection3 fp_hasOneOfEntitlements:v25];

  if (v26)
  {
    if (dCopy)
    {
      v27 = dCopy;

      v28 = &unk_1F4C62A48;
      fp_bundleIdentifier = v27;
    }

    else
    {
      v28 = &unk_1F4C62A48;
    }
  }

  else
  {
    v28 = &unk_1F4C62A30;
  }

  [(FPDCoreAnalyticsReport *)v20 addValue:v28 forKey:@"debug"];
  [(FPDCoreAnalyticsReport *)v20 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
  v31 = [(FPDXPCServicer *)selfCopy2 getSyncPausedXattrForURL:v13];
  v32 = v31;
  if (v31 && ([v31 isEqualToString:fp_bundleIdentifier] & 1) != 0)
  {
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v78 = [extensionManager domainForURL:v13 reason:0];

    provider = [v78 provider];
    identifier = [provider identifier];
    [(FPDCoreAnalyticsReport *)v20 addValue:identifier forKey:@"provider"];

    if (v78)
    {
      if (policy == 1 && ([v78 provider], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "descriptor"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "supportsFailingUploadOnConflict"), v38, v37, (v39 & 1) == 0))
      {
        v61 = fp_current_or_default_log();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:];
        }

        v62 = FPNotSupportedError();
        v63 = FPTelemetryParsedError();
        [(FPDCoreAnalyticsReport *)v20 addValue:v63 forKey:@"error"];

        [(FPDCoreAnalyticsReport *)v20 sendReport];
        v85 = fpfs_adopt_log();
        v64 = fp_current_or_default_log();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v72 = FPPopLogSectionForBlock();
          v73 = FPNotSupportedError();
          *buf = 134218754;
          *&buf[4] = v72;
          v96 = 2112;
          v97 = selfCopy2;
          v98 = 2080;
          v99 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
          v100 = 2112;
          v101 = v73;
          _os_log_debug_impl(&dword_1CEFC7000, v64, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v65 = FPNotSupportedError();
        (*(v80 + 2))(v80, v65);

        __fp_pop_log();
      }

      else
      {
        v76 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        defaultBackend = [v78 defaultBackend];
        v41 = objc_opt_respondsToSelector();

        if (v41)
        {
          defaultBackend2 = [v78 defaultBackend];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545;
          v81[3] = &unk_1E83BFA20;
          v82 = v20;
          v83 = selfCopy2;
          v84 = v80;
          [defaultBackend2 uploadLocalVersionOfItemAtURL:v13 conflictResolutionPolicy:policy request:v76 completionHandler:v81];
        }

        else
        {
          v57 = FPNotSupportedError();
          v58 = FPTelemetryParsedError();
          [(FPDCoreAnalyticsReport *)v20 addValue:v58 forKey:@"error"];

          [(FPDCoreAnalyticsReport *)v20 sendReport];
          v85 = fpfs_adopt_log();
          v59 = fp_current_or_default_log();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v70 = FPPopLogSectionForBlock();
            v71 = FPNotSupportedError();
            *buf = 134218754;
            *&buf[4] = v70;
            v96 = 2112;
            v97 = selfCopy2;
            v98 = 2080;
            v99 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
            v100 = 2112;
            v101 = v71;
            _os_log_debug_impl(&dword_1CEFC7000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
          }

          v60 = FPNotSupportedError();
          (*(v80 + 2))(v80, v60);

          __fp_pop_log();
        }
      }
    }

    else
    {
      v48 = FPProviderNotFoundErrorForURL();
      v49 = FPTelemetryParsedError();
      [(FPDCoreAnalyticsReport *)v20 addValue:v49 forKey:@"error"];

      [(FPDCoreAnalyticsReport *)v20 sendReport];
      v85 = fpfs_adopt_log();
      v50 = fp_current_or_default_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v75 = FPPopLogSectionForBlock();
        v74 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A998];
        v53 = *MEMORY[0x1E696A278];
        v93[0] = *MEMORY[0x1E696A998];
        v93[1] = v53;
        v94[0] = v13;
        v94[1] = @"Provider not found for URL.";
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
        v51 = *MEMORY[0x1E696A250];
        v68 = [v74 errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v77];
        *buf = 134218754;
        *&buf[4] = v75;
        v96 = 2112;
        v97 = selfCopy2;
        v98 = 2080;
        v99 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
        v100 = 2112;
        v69 = v68;
        v101 = v68;
        _os_log_debug_impl(&dword_1CEFC7000, v50, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      else
      {
        v51 = *MEMORY[0x1E696A250];
        v52 = *MEMORY[0x1E696A998];
        v53 = *MEMORY[0x1E696A278];
      }

      v54 = MEMORY[0x1E696ABC0];
      v91[0] = v52;
      v91[1] = v53;
      v92[0] = v13;
      v92[1] = @"Provider not found for URL.";
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
      v56 = [v54 errorWithDomain:v51 code:3328 userInfo:v55];
      (*(v80 + 2))(v80, v56);

      __fp_pop_log();
    }
  }

  else
  {
    v43 = fp_current_or_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:];
    }

    v44 = FPFileNotPausedError_internal();
    v45 = FPTelemetryParsedError();
    [(FPDCoreAnalyticsReport *)v20 addValue:v45 forKey:@"error"];

    if (v32)
    {
      [(FPDCoreAnalyticsReport *)v20 addValue:v32 forKey:@"mismatchedPausedBundleID"];
    }

    [(FPDCoreAnalyticsReport *)v20 sendReport];
    v85 = fpfs_adopt_log();
    v46 = fp_current_or_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v66 = FPPopLogSectionForBlock();
      v67 = FPFileNotPausedError();
      *buf = 134218754;
      *&buf[4] = v66;
      v96 = 2112;
      v97 = selfCopy2;
      v98 = 2080;
      v99 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
      v100 = 2112;
      v101 = v67;
      _os_log_debug_impl(&dword_1CEFC7000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v47 = FPFileNotPausedError();
    (*(v80 + 2))(v80, v47);

    __fp_pop_log();
  }

LABEL_40:
}

void __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = *MEMORY[0x1E696A250];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v8 = [v4 domain];
      v9 = [v8 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v9)
      {
        v11 = objc_opt_new();
        v12 = [v4 localizedDescription];
        [v11 setValue:v12 forKey:*MEMORY[0x1E696A278]];

        v13 = [v4 domain];
        if ([v13 isEqualToString:*MEMORY[0x1E6967190]])
        {
          v14 = [v4 code];

          if (v14 == -2015)
          {
            [v11 setValue:v4 forKey:*MEMORY[0x1E696AA08]];
          }
        }

        else
        {
        }

        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:512 userInfo:v11];

        goto LABEL_14;
      }
    }

    v10 = v4;
LABEL_14:
    v15 = *(a1 + 32);
    v16 = FPTelemetryParsedError();
    [v15 addValue:v16 forKey:@"error"];

    [*(a1 + 32) sendReport];
    v21 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 40);
      *buf = 134218754;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2080;
      v27 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v10;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();

    goto LABEL_17;
  }

  [*(a1 + 32) addValue:@"success" forKey:@"error"];
  [*(a1 + 32) sendReport];
  v20 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545_cold_1();
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

LABEL_17:
}

- (void)listPausedURLsWithBundleID:(id)d completionHandler:(id)handler
{
  v80[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  if (dCopy)
  {
    connection = [(FPDXPCServicer *)self connection];
    v80[0] = *MEMORY[0x1E6967558];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
    v9 = [connection fp_hasOneOfEntitlements:v8];

    if (v9)
    {
      v10 = dCopy;

      fp_bundleIdentifier = v10;
    }
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v33 = [extensionManager syncPausedFilesForBundleID:fp_bundleIdentifier];

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__10;
  v67 = __Block_byref_object_dispose__10;
  v68 = objc_opt_new();
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__10;
  v61 = __Block_byref_object_dispose__10;
  v62 = objc_opt_new();
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__10;
  v55 = __Block_byref_object_dispose__10;
  v56 = dispatch_group_create();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v33 allKeys];
  v34 = [obj countByEnumeratingWithState:&v47 objects:v79 count:16];
  if (v34)
  {
    v32 = *v48;
    do
    {
      v35 = 0;
      do
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [v33 objectForKeyedSubscript:*(*(&v47 + 1) + 8 * v35)];
        v46 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v43 objects:v78 count:16];
        if (v15)
        {
          v16 = *v44;
          do
          {
            v17 = 0;
            do
            {
              if (*v44 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v43 + 1) + 8 * v17);
              *buf = 0;
              server2 = [(FPDXPCServicer *)self server];
              extensionManager2 = [server2 extensionManager];
              v21 = [extensionManager2 domainFromItemID:v18 checkInvalidation:1 reason:buf];

              if (v21)
              {
                dispatch_group_enter(v52[5]);
                defaultBackend = [v21 defaultBackend];
                v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 3221225472;
                v38[2] = __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke;
                v38[3] = &unk_1E83C08F8;
                v40 = &v57;
                v41 = &v51;
                v38[4] = v18;
                v38[5] = self;
                v39 = fp_bundleIdentifier;
                v42 = &v63;
                [defaultBackend URLForItemID:v18 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v23 completionHandler:v38];
              }

              else
              {
                [v58[5] addObject:v18];
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v14 countByEnumeratingWithState:&v43 objects:v78 count:16];
          }

          while (v15);
        }

        ++v35;
      }

      while (v35 != v34);
      v34 = [obj countByEnumeratingWithState:&v47 objects:v79 count:16];
    }

    while (v34);
  }

  dispatch_group_wait(v52[5], 0xFFFFFFFFFFFFFFFFLL);
  server3 = [(FPDXPCServicer *)self server];
  extensionManager3 = [server3 extensionManager];
  [extensionManager3 removePausedSyncItemID:v58[5] forBundleID:fp_bundleIdentifier];

  v37 = fpfs_adopt_log();
  v26 = fp_current_or_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = FPPopLogSectionForBlock();
    v28 = v64[5];
    *buf = 134219010;
    *&buf[4] = v27;
    v70 = 2112;
    selfCopy = self;
    v72 = 2080;
    v73 = "[FPDXPCServicer listPausedURLsWithBundleID:completionHandler:]";
    v74 = 2112;
    v75 = v28;
    v76 = 2112;
    v77 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  handlerCopy[2](handlerCopy, v64[5], 0);
  __fp_pop_log();

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
}

void __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_2(a1, v5);
    }

    [*(*(a1[7] + 8) + 40) addObject:a1[4]];
    dispatch_group_leave(*(*(a1[8] + 8) + 40));
  }

  else
  {
    v8 = a1[5];
    v9 = [v6 url];
    v10 = [v8 getSyncPausedXattrForURL:v9];

    if (v10 && ([v10 isEqualToString:a1[6]] & 1) != 0)
    {
      v11 = *(*(a1[9] + 8) + 40);
      v12 = v7;
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_1();
      }

      v11 = *(*(a1[7] + 8) + 40);
      v12 = a1[4];
    }

    [v11 addObject:v12];
    dispatch_group_leave(*(*(a1[8] + 8) + 40));
  }
}

- (void)getNumberOfNonMaterializedFilesInDomain:(id)domain withCompletionHandler:(id)handler
{
  v51[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E6967558];
  v51[0] = *MEMORY[0x1E6967590];
  v51[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v40 = v10;
  v11 = v9;
  v12 = v36;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v35 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:domainCopy reason:&v35];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548;
        v30[3] = &unk_1E83C0920;
        v31 = v17;
        selfCopy2 = self;
        v33 = v10;
        [defaultBackend2 getNumberOfNonMaterializedFilesWithCompletionHandler:v30];
      }

      else
      {
        v34 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v28 = FPPopLogSectionForBlock();
          v29 = FPNotSupportedError();
          *buf = 134219010;
          v42 = v28;
          v43 = 2112;
          selfCopy4 = self;
          v45 = 2080;
          v46 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]";
          v47 = 2112;
          v48 = 0;
          v49 = 2112;
          v50 = v29;
          _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v25 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v25);

        __fp_pop_log();
      }
    }

    else
    {
      v34 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = FPProviderNotFoundError();
        *buf = 134219010;
        v42 = v26;
        v43 = 2112;
        selfCopy4 = self;
        v45 = 2080;
        v46 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]";
        v47 = 2112;
        v48 = 0;
        v49 = 2112;
        v50 = v27;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v37(v12, v21);
  }
}

void __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]_block_invoke";
    v14 = 2112;
    v15 = &unk_1F4C62A30;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548_cold_1();
    }
  }

  v13 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    *buf = 134219010;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2080;
    v19 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  (*(v8 + 16))(v8, v9, v5);

  __fp_pop_log();
}

- (void)_providerForIdentifier:enumerateEntitlementRequired:error:.cold.1()
{
  OUTLINED_FUNCTION_11();
  WeakRetained = objc_loadWeakRetained(v0);
  [WeakRetained processIdentifier];
  v2 = FPExecutableNameForProcessIdentifier();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)wakeUpForURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)wakeUpForURLFixed:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)extendBookmarkForItemID:consumerID:completionHandler:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_6();
  v3 = v0;
  _os_log_debug_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully generated bookmarkable string “%@” from %@.", v2, 0x16u);
}

void __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) connection];
  v6 = [v5 processIdentifier];
  v7 = [*v4 connection];
  [v7 processIdentifier];
  v8 = FPExecutableNameForProcessIdentifier();
  v9 = *MEMORY[0x1E6967540];
  v10 = *(a1 + 40);
  v11[0] = 67109890;
  v11[1] = v6;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  v16 = 2112;
  v17 = v10;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) does not have %@ entitlement to extend bookmark for %@", v11, 0x26u);
}

- (void)extendSandboxForFileURL:(const char *)a1 fromProviderID:toConsumerID:completionHandler:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)evictItemAtURL:(const char *)a1 evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v2 = [v1 fp_shortDescription];
  v3 = [v0 provider];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)evictItemAtURL:(void *)a1 evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.4(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v2 = [*(v0 + 32) providerDomainID];
  v3 = [*(v1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)providerDomainsCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v7 = NSStringFromSelector(v1);
  [v0 count];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)providerDomainForURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)providerDomainForURL:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)documentURLFromItemID:(void *)a1 creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:.cold.2(void *a1)
{
  v1 = [a1 connection];
  v2 = [v1 fp_bundleIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25();
  v1 = [*(v0 + 40) providerID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_forceIngestionForItemID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 description];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = [OUTLINED_FUNCTION_8(v0) itemID];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)extendBookmarkForFileURL:(void *)a1 toConsumerID:options:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_1()
{
  OUTLINED_FUNCTION_26();
  v1 = [*(v0 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  *v0 = 134219010;
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2080;
  *(v0 + 24) = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
  *(v0 + 32) = 2112;
  *(v0 + 34) = 0;
  *(v0 + 42) = 2112;
  *(v0 + 44) = 0;
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x34u);
}

- (void)itemForURL:(void *)a1 options:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)itemForURL:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)providerItemIDForURL:(void *)a1 completionHandler:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 provider];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] caller does not have access to provider %{public}@", v5, 0xCu);
}

- (void)providerItemIDForURL:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)providerItemIDForURL:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)trashItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)putBackURLForTrashedItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)setPutBackInfoOnItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 targetApplicationRecord];
  v8 = [v7 bundleIdentifier];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_1CEFC7000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] potential match %@", a1, 0xCu);
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateLastUsedDate:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateLastUsedDate:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)valuesForAttributes:(void *)a1 forItemAtURL:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)valuesForAttributes:forItemAtURL:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

void __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateBlockedProcessNamesForProvider:processNames:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)fetchPathComponentsForURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)triggerDiagnosticsFor:(void *)a1 triggeringError:uiOnly:useDiagnostic:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v4 + 24) = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_23(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);
}

- (void)checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v4 + 24) = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_23(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);
}

- (void)checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v4 + 24) = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_23(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);
}

- (void)resolveConflictAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setAlternateContentsURL:onDocumentURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v1 = [v0 fp_shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setAlternateContentsURL:(uint64_t)a3 onDocumentURL:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setAlternateContentsURL:(void *)a1 onDocumentURL:completionHandler:.cold.3(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setAlternateContentsURL:onDocumentURL:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  v3 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)fetchAlternateContentsURLForDocumentURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v1 = [v0 fp_scopeDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)fetchAlternateContentsURLForDocumentURL:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fetchAlternateContentsURLForDocumentURL:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v1 = [v0 fp_shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) fp_shortDescription];
  v5 = [*(a1 + 40) fp_obfuscatedProviderDomainID];
  v11 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)appHasNonUploadedFiles:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v3 + 24) = "[FPDXPCServicer appHasNonUploadedFiles:completionHandler:]";
  *(v3 + 32) = 1024;
  *(v3 + 34) = 0;
  *(v3 + 38) = v4;
  *(v3 + 40) = 0;
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x30u);
}

- (void)dumpStateTo:providerFilter:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dumpStateTo:providerFilter:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dumpStateTo:providerFilter:options:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createDatabaseCopyOutputPathForDomain:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) providerDomainID];
  v3 = [v2 fp_obfuscatedProviderDomainID];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)fetchDaemonOperationIDsWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enumerateSearchResultForRequest:providerDomainID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enumerateSearchResultForRequest:providerDomainID:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_performWithCheckedEnumerationAttributes:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_performWithCheckedEnumerationAttributes:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v1 = [a1 enumeratedURL];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_performWithCheckedEnumerationAttributes:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) enumeratedItemID];
  v3 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)preventDiskImportSchedulerFromRunning:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)pauseIndexingFor:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)dumpIndexerInfoFor:withName:to:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)signalReindexCSIdentifiersByProviderDomainID:indexReason:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] Did finish signaling reindex of items for domain: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_test_setDocIDResolutionPolicy:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  *v0 = 134218498;
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2080;
  *(v0 + 24) = "[FPDXPCServicer _test_setDocIDResolutionPolicy:completionHandler:]";
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_test_callRemoveTrashedItemsOlderThanDate:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_simulateInstallOfBundleID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_simulateUninstallOfBundleID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_getRootSupportDirURLForDomainURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_getCountersArray:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)_test_resetCounters:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_queryDiskImportSchedulerLabel:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

void __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)getSyncPausedXattrForURL:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)pauseSyncForItemAtURL:behavior:bundleID:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)resumeSyncForItemAtURL:behavior:bundleID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  OUTLINED_FUNCTION_11_1(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548_cold_1()
{
  OUTLINED_FUNCTION_25();
  v1 = [OUTLINED_FUNCTION_8(v0) providerDomainID];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end